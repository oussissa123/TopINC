SET search_path to public;

CREATE OR REPLACE FUNCTION metadata(schema text) returns text as 
$$
declare
tuples int;
relations int;
rel text;
temp int;
incons int;
query text;
col int;
al bigint;
valu bigint;
ress int;
Begin
	tuples := 0;
	relations := 0;
	incons := 0;
	col := 0;
	al = 0;
	FOR rel in execute format ('select table_name from information_schema.tables where table_schema = ''%s''', schema) LOOP
		relations := relations + 1;
		FOR temp in Execute 'SELECT count(*) FROM ' || schema || '.' || rel LOOP
			tuples := tuples + temp;
		END LOOP;
		FOR temp in Execute 'SELECT count(*) FROM ' || schema || '.' || rel || ' WHERE inc_id <> ''''' LOOP
			incons := incons + temp;
		END LOOP;
		
		FOR valu in Execute 'SELECT vioset FROM ' || schema || '.' || rel || ' WHERE inc_id <> ''''' LOOP
			al:= al | valu; 
		END LOOP;
		
		query := 'SELECT count(*) from information_schema.columns where table_schema = ''' || schema ||''' and table_name='''|| rel ||''' and column_name <> ''inc'' and column_name <> ''id'' and column_name <> ''inc_id''';
		
		FOR temp in Execute query LOOP
			col := col + temp;
		END LOOP;

	END LOOP;
	SELECT public.numberbitInt(al) into ress; 
	RETURN 'Relation: '||relations||' Tuples: '||tuples || ' inconsistency: '||incons|| ' Mean Column Size: '||col||' Violated constraints:'||ress;
end;
$$
language plpgsql;


CREATE OR REPLACE FUNCTION clean(schema text) returns void as 
$$
declare
rel text;
Begin

	FOR rel in execute format ('SELECT table_name FROM information_schema.tables WHERE table_schema = ''%s''', schema) LOOP
--		EXECUTE 'ALTER TABLE '|| rel || ' ADD COLUMN IF NOT EXISTS inc text default ''''';
		EXECUTE 'ALTER TABLE '|| rel || ' ADD COLUMN IF NOT EXISTS inc_id text default ''''';
		EXECUTE 'SELECT public.add_id('''||rel||''')';
		EXECUTE 'ALTER TABLE '||schema||'.'||rel||' ADD COLUMN IF NOT EXISTS vioset bigint default 0';
		EXECUTE 'UPDATE '||schema||'.'||rel||' set vioset = 0, inc_id = ''''';
		EXECUTE 'CREATE INDEX ON '||schema||'.'||rel||'(vioset)';
	END LOOP; 
--	EXECUTE 'SELECT public.setToLong_schema('''||schema||''')';
end;
$$
language plpgsql;

CREATE OR REPLACE FUNCTION numberbitInt(value bigint) returns bigint as 
$$
declare
res bigint;
temp bigint;
i int;
b boolean;
Begin
	SELECT (1<<0) INTO temp;
	res:=0;
	i := 1;
	WHILE (temp <= value) LOOP
		SELECT (temp&value) <> 0 INTO b;
		IF b THEN
			res:= res + 1;
		END IF;
		SELECT (1::bigint)<<i INTO  temp;
		i:=i+1;
		--raise notice '%s', i;
	END LOOP;
	RETURN res;
end;
$$
language plpgsql;


CREATE OR REPLACE FUNCTION bitNumber(value bigint) returns bigint as 
$$
declare
res bigint;
temp bigint;
Begin
	res:=0;
	temp:= value;
	WHILE (temp<>0) LOOP
		IF temp%2=1 THEN
			res:= res + 1;
		END IF;
		temp := temp/2;
	END LOOP;
	RETURN res;
end;
$$
language plpgsql;




CREATE OR REPLACE FUNCTION vcs(schema text) returns text as 
$$
declare
rel text;
res text;
val text;
result text;
Begin
	res := '';
	FOR rel in EXECUTE format ('SELECT table_name FROM information_schema.tables WHERE table_schema = ''%s''', schema) LOOP
		FOR val in EXECUTE format ('SELECT inc FROM %s.%s WHERE inc <> ''''', schema,rel) LOOP
			FOR result in EXECUTE format ('SELECT public.up(''%s'', ''%s'')', val, res) LOOP
				res := result; 
			END LOOP;  
		END LOOP;
	END LOOP;
	
	Return res; 
END;
$$
language plpgsql;



--


CREATE OR REPLACE FUNCTION to_indexe(schema text) returns void as 
$$
declare
rel text;
Begin
	FOR rel in execute format ('SELECT table_name FROM information_schema.tables WHERE table_schema = ''%s''', schema) LOOP
		EXECUTE 'CREATE INDEX ON '||rel||'(inc)';
		EXECUTE 'CREATE INDEX ON '||rel||'(inc_id)';
	END LOOP; 
end;
$$
language plpgsql;



CREATE OR REPLACE FUNCTION SETSEM(VARIADIC param text []) returns bigint as
$$
 SELECT count(distinct id)  FROM unnest($1) as e, regexp_split_to_table(e, '( )*,( )*') as id WHERE id <> '';
$$
LANGUAGE 'sql';



CREATE OR REPLACE FUNCTION BAGSEM(VARIADIC param text []) returns bigint as
$$
 SELECT count(id)  FROM unnest($1) as e, regexp_split_to_table(e, '( )*,( )*') as id WHERE id <> '';
$$
LANGUAGE 'sql';


CREATE OR REPLACE FUNCTION up(VARIADIC param text []) returns text as
$$
declare
res text;
c text;
begin
	res := '';
	FOR c in SELECT distinct id  FROM unnest($1) as e, regexp_split_to_table(e, '( )*,( )*') as id WHERE id <> '' order by id LOOP
		IF res = '' THEN
			res := c;
		ELSE
			res := res || ', ' || c;
		END IF;
	END LOOP;
	
	RETURN res;
end;
$$
LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION unio(last text, new text) returns text as
$$
declare
res text;
c text;
ab text;
begin
	res := '';
	ab := last || ', ' || new;
	FOR c in EXECUTE format ('SELECT distinct id  FROM regexp_split_to_table(''%s'', ''( )*,( )*'') as id WHERE id <> ''''', ab) LOOP
		IF res = '' THEN
			res := c;
		ELSE
			res := res || ', ' || c;
		END IF;
	END LOOP;
	
	RETURN res;
end;
$$
LANGUAGE plpgsql;

DROP aggregate IF EXISTS upg(text);
CREATE AGGREGATE upg (text)
(
    sfunc = unio,
    stype = text,
    initcond = ''
);



CREATE OR REPLACE FUNCTION or_bin(last bigint, new bigint) returns bigint as
$$
	SELECT last|new;
$$
LANGUAGE sql;

DROP aggregate IF EXISTS or_agg(bigint);
CREATE AGGREGATE or_agg(bigint)
(
    sfunc = or_bin,
    stype = bigint,
    initcond = 0
);


DROP aggregate IF EXISTS set_bin(bigint);
CREATE AGGREGATE set_bin(bigint)
(
    sfunc = or_bin,
    stype = bigint,
    initcond = 0,
    finalfunc = numberbitInt
);


CREATE OR REPLACE FUNCTION bag_func(last bigint, new bigint) returns bigint as
$$
SELECT last + numberbitInt(new);
$$
LANGUAGE sql;

--------
CREATE OR REPLACE FUNCTION bag_func1(VARIADIC param bigint []) returns bigint as
$$
declare
temp bigint;
res bigint;
b boolean;
b_ boolean;
i int;
value bigint;
begin
	temp := 1;
	res:=0;
	i := 1;
	b_:=true;
	WHILE (b_) LOOP
		b_ = false;
		FOR value in SELECT e  FROM unnest($1) as e LOOP
			IF value >= temp THEN
				b_:= true;
			END IF;
			SELECT  (temp&value) <> 0  INTO b;
			IF b THEN
				res:= res + 1;
			END IF;
		END LOOP;
		SELECT (1::bigint)<<i INTO  temp;
		i:=i+1;
		--raise notice '%s', i;
	END LOOP;
	RETURN res;
end;
$$
LANGUAGE plpgsql;

--------- ######
CREATE OR REPLACE FUNCTION bag_func2(VARIADIC param bigint []) returns bigint as
$$
declare
res bigint;
value bigint;
val bigint;
begin
	res:=0;
	FOR value in SELECT e  FROM unnest($1) as e LOOP
		val := value;
		WHILE (val <> 0) LOOP
			IF (val%2=1) THEN
				res := res + 1;
			END IF;
			val :=	val/2;		
		END LOOP;
	END LOOP;
	RETURN res;
end;
$$
LANGUAGE plpgsql;



DROP aggregate IF EXISTS bag_bin(bigint);
CREATE AGGREGATE bag_bin(bigint)
(
    sfunc = bag_func,
    stype = bigint,
    initcond = 0
);


CREATE OR REPLACE FUNCTION finalUpdate() returns void as
$$
declare
rel text;
begin
	FOR rel in SELECT distinct (regexp_split_to_array(id, ':'))[1] as tab FROM test.tab3 LOOP
		EXECUTE format ('UPDATE %s as t_ set inc = tt.poly, inc_id = t_.id FROM test.tab3 as tt WHERE tt.id = t_.id ', rel); 
	END LOOP; 
end;
$$
LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION finalUpdate_() returns void as
$$
declare
rel text;
begin
	FOR rel in SELECT distinct (regexp_split_to_array(id, ':'))[1] as tab FROM test.tab1 LOOP
		EXECUTE format ('UPDATE %s as t_ set vioset = tt.set, inc_id = t_.id FROM test.tab1 as tt WHERE tt.id = t_.id ', rel); 
	END LOOP; 
end;
$$
LANGUAGE plpgsql;



CREATE OR REPLACE FUNCTION uset(value text) returns text as
$$
declare
res text;
c text;
begin
	res := '';
	FOR c in EXECUTE format ('SELECT id FROM (SELECT distinct id  FROM regexp_split_to_table(''%s'', ''( )*,( )*'') as id) r WHERE id <> '''' ORDER BY id', value) LOOP
		IF res = '' THEN
			res := c;
		ELSE
			res := res || ', ' || c;
		END IF;
	END LOOP;
	
	RETURN res;
end;
$$
LANGUAGE plpgsql;


DROP aggregate IF EXISTS upgs(text);
CREATE AGGREGATE upgs (text)
(
    sfunc = unio,
    stype = text,
    finalfunc = uset,
    initcond = ''
);



CREATE OR REPLACE FUNCTION setToLong(value text) returns bigint as
$$
declare
res bigint;
val bigint;
c int;
begin
	res := 0;
	FOR c in EXECUTE format ('SELECT (regexp_split_to_array(id, ''CH''))[2]::int FROM (SELECT distinct id  FROM regexp_split_to_table(''%s'', ''( )*,( )*'') as id) r WHERE id <> ''''', value) LOOP
		SELECT POWER(2, c) INTO val;
		res = res + val;
	END LOOP;
	RETURN res;
end;
$$
LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION setToLong_schema(schema text) returns void as 
$$
declare
rel text;
Begin
	FOR rel in execute format ('SELECT table_name FROM information_schema.tables WHERE table_schema = ''%s''', schema) LOOP
		EXECUTE 'ALTER TABLE '||schema||'.'||rel||' ADD COLUMN IF NOT EXISTS vioset bigint';
		EXECUTE 'UPDATE '||schema||'.'||rel||' SET vioset = public.setToLong(inc)';
		EXECUTE 'CREATE INDEX ON '||schema||'.'||rel||'(vioset)';
	END LOOP; 
end;
$$
language plpgsql;



CREATE OR REPLACE FUNCTION add_id(tab text) RETURNS VOID AS

$$
declare 
i int;
prov text;
Begin
	Execute Format('ALTER TABLE %I add column temp text unique default public.uuid_generate_v4() ', tab);
	Execute Format('ALTER TABLE %I add column IF NOT EXISTS id text', tab);
	i = 0;
	for prov in execute 'SELECT temp FROM ' || tab
	loop
		Execute Format('UPDATE %I SET id = ''%s:%s'' WHERE temp = ''%s''', tab, tab, i, prov);
		i = i+1;
	end loop;
	Execute Format('ALTER TABLE %I DROP column temp', tab);
end;
$$
Language plpgsql;

