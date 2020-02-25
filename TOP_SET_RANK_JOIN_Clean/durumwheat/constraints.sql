UPDATE durum12wheat P0 SET inc = public.up(P0.inc, 'DWC10'), inc_id = P0.id FROM  durum12wheat P1, soil P2, isCultivatedOn P3, isCultivatedOn P4, isDiff P5 WHERE P0.durum_wheat$0=P4.isCultivatedOn$0 AND P0.durum_wheat$0=P5.isDiff$1 AND P1.durum_wheat$0=P3.isCultivatedOn$0 AND 
P1.durum_wheat$0=P5.isDiff$0 AND P2.soil$0=P3.isCultivatedOn$1 AND P2.soil$0=P4.isCultivatedOn$1 AND P3.isCultivatedOn$0=P5.isDiff$0 AND P3.isCultivatedOn$1=P4.isCultivatedOn$1 AND P4.isCultivatedOn$0=P5.isDiff$1;
UPDATE durum12wheat P1 SET inc = public.up(P1.inc, 'DWC10'), inc_id = P1.id FROM durum12wheat P0, soil P2, isCultivatedOn P3, isCultivatedOn P4, isDiff P5
        WHERE P0.durum_wheat$0=P4.isCultivatedOn$0 AND P0.durum_wheat$0=P5.isDiff$1 AND P1.durum_wheat$0=P3.isCultivatedOn$0 AND
                P1.durum_wheat$0=P5.isDiff$0 AND P2.soil$0=P3.isCultivatedOn$1 AND P2.soil$0=P4.isCultivatedOn$1 AND P3.isCultivatedOn$0=P5.isDiff$0 
	AND P3.isCultivatedOn$1=P4.isCultivatedOn$1 AND P4.isCultivatedOn$0=P5.isDiff$1;
UPDATE soil P2 SET inc = public.up(P2.inc, 'DWC10'), inc_id = P2.id FROM durum12wheat P0, durum12wheat P1, isCultivatedOn P3, isCultivatedOn P4, isDiff P5
        WHERE P0.durum_wheat$0=P4.isCultivatedOn$0 AND P0.durum_wheat$0=P5.isDiff$1 AND P1.durum_wheat$0=P3.isCultivatedOn$0 AND
                P1.durum_wheat$0=P5.isDiff$0 AND P2.soil$0=P3.isCultivatedOn$1 AND P2.soil$0=P4.isCultivatedOn$1 AND P3.isCultivatedOn$0=P5.isDiff$0
                AND P3.isCultivatedOn$1=P4.isCultivatedOn$1 AND P4.isCultivatedOn$0=P5.isDiff$1;
UPDATE isCultivatedOn P3 SET inc = public.up(P3.inc, 'DWC10'), inc_id = P3.id FROM durum12wheat P0, durum12wheat P1, soil P2, isCultivatedOn P4, isDiff P5
        WHERE P0.durum_wheat$0=P4.isCultivatedOn$0 AND P0.durum_wheat$0=P5.isDiff$1 AND P1.durum_wheat$0=P3.isCultivatedOn$0 AND
                P1.durum_wheat$0=P5.isDiff$0 AND P2.soil$0=P3.isCultivatedOn$1 AND P2.soil$0=P4.isCultivatedOn$1 AND P3.isCultivatedOn$0=P5.isDiff$0
                AND P3.isCultivatedOn$1=P4.isCultivatedOn$1 AND P4.isCultivatedOn$0=P5.isDiff$1;
UPDATE isCultivatedOn P4 SET inc = public.up(P4.inc, 'DWC10'), inc_id = P4.id FROM durum12wheat P0, durum12wheat P1, soil P2, isCultivatedOn P3, isDiff P5
        WHERE P0.durum_wheat$0=P4.isCultivatedOn$0 AND P0.durum_wheat$0=P5.isDiff$1 AND P1.durum_wheat$0=P3.isCultivatedOn$0 AND
                P1.durum_wheat$0=P5.isDiff$0 AND P2.soil$0=P3.isCultivatedOn$1 AND P2.soil$0=P4.isCultivatedOn$1 AND P3.isCultivatedOn$0=P5.isDiff$0
                AND P3.isCultivatedOn$1=P4.isCultivatedOn$1 AND P4.isCultivatedOn$0=P5.isDiff$1;
UPDATE isDiff P5  SET inc = public.up(P5.inc, 'DWC10'), inc_id = P5.id FROM durum12wheat P0, durum12wheat P1, soil P2, isCultivatedOn P3, isCultivatedOn P4
        WHERE P0.durum_wheat$0=P4.isCultivatedOn$0 AND P0.durum_wheat$0=P5.isDiff$1 AND P1.durum_wheat$0=P3.isCultivatedOn$0 AND
                P1.durum_wheat$0=P5.isDiff$0 AND P2.soil$0=P3.isCultivatedOn$1 AND P2.soil$0=P4.isCultivatedOn$1 AND P3.isCultivatedOn$0=P5.isDiff$0
                AND P3.isCultivatedOn$1=P4.isCultivatedOn$1 AND P4.isCultivatedOn$0=P5.isDiff$1;


UPDATE gramineae P0 SET inc = public.up(P0.inc, 'DWC11'), inc_id = P0.id FROM intermediate_intercropping P1, leguminosae P2, useCulture P3, useCulture P4 
	WHERE P0.gramineae$0=P3.useCulture$1 AND P1.intermediate_intercropping$0=P3.useCulture$0 AND 
		P1.intermediate_intercropping$0=P4.useCulture$0 AND P2.leguminosae$0=P4.useCulture$1 AND P3.useCulture$0=P4.useCulture$0;  
UPDATE intermediate_intercropping P1 SET inc = public.up(P1.inc, 'DWC11'), inc_id = P1.id FROM gramineae P0, leguminosae P2, useCulture P3, useCulture P4
        WHERE P0.gramineae$0=P3.useCulture$1 AND P1.intermediate_intercropping$0=P3.useCulture$0 AND
                P1.intermediate_intercropping$0=P4.useCulture$0 AND P2.leguminosae$0=P4.useCulture$1 AND P3.useCulture$0=P4.useCulture$0;
UPDATE leguminosae P2 SET inc = public.up(P2.inc, 'DWC11'), inc_id = P2.id FROM gramineae P0, intermediate_intercropping P1, useCulture P3, useCulture P4
        WHERE P0.gramineae$0=P3.useCulture$1 AND P1.intermediate_intercropping$0=P3.useCulture$0 AND
                P1.intermediate_intercropping$0=P4.useCulture$0 AND P2.leguminosae$0=P4.useCulture$1 AND P3.useCulture$0=P4.useCulture$0;
UPDATE useCulture P3 SET inc = public.up(P3.inc, 'DWC11'), inc_id = P3.id FROM gramineae P0, intermediate_intercropping P1, leguminosae P2, useCulture P4
        WHERE P0.gramineae$0=P3.useCulture$1 AND P1.intermediate_intercropping$0=P3.useCulture$0 AND
                P1.intermediate_intercropping$0=P4.useCulture$0 AND P2.leguminosae$0=P4.useCulture$1 AND P3.useCulture$0=P4.useCulture$0;
UPDATE useCulture P4 SET inc = public.up(P4.inc, 'DWC11'), inc_id = P4.id FROM gramineae P0, intermediate_intercropping P1, leguminosae P2, useCulture P3
        WHERE P0.gramineae$0=P3.useCulture$1 AND P1.intermediate_intercropping$0=P3.useCulture$0 AND
                P1.intermediate_intercropping$0=P4.useCulture$0 AND P2.leguminosae$0=P4.useCulture$1 AND P3.useCulture$0=P4.useCulture$0;


UPDATE crucifers P0 SET inc = public.up(P0.inc, 'DWC12'), inc_id = P0.id FROM gramineae P1, intermediate_intercropping P2, useCulture P3, useCulture P4 
	WHERE P0.crucifers$0=P4.useCulture$1 AND P1.gramineae$0=P3.useCulture$1 AND P2.intermediate_intercropping$0=P3.useCulture$0 
		AND P2.intermediate_intercropping$0=P4.useCulture$0 AND P3.useCulture$0=P4.useCulture$0;  
UPDATE  gramineae P1 SET inc = public.up(P1.inc, 'DWC12'), inc_id = P1.id FROM crucifers P0, intermediate_intercropping P2, useCulture P3, useCulture P4
        WHERE P0.crucifers$0=P4.useCulture$1 AND P1.gramineae$0=P3.useCulture$1 AND P2.intermediate_intercropping$0=P3.useCulture$0
                AND P2.intermediate_intercropping$0=P4.useCulture$0 AND P3.useCulture$0=P4.useCulture$0;
UPDATE useCulture P3 SET inc = public.up(P3.inc, 'DWC12'), inc_id = P3.id FROM crucifers P0, gramineae P1, intermediate_intercropping P2, useCulture P4
        WHERE P0.crucifers$0=P4.useCulture$1 AND P1.gramineae$0=P3.useCulture$1 AND P2.intermediate_intercropping$0=P3.useCulture$0
                AND P2.intermediate_intercropping$0=P4.useCulture$0 AND P3.useCulture$0=P4.useCulture$0;
UPDATE useCulture P4 SET inc = public.up(P4.inc, 'DWC12'), inc_id = P4.id FROM crucifers P0, gramineae P1, intermediate_intercropping P2, useCulture P3
        WHERE P0.crucifers$0=P4.useCulture$1 AND P1.gramineae$0=P3.useCulture$1 AND P2.intermediate_intercropping$0=P3.useCulture$0
                AND P2.intermediate_intercropping$0=P4.useCulture$0 AND P3.useCulture$0=P4.useCulture$0;

UPDATE seeding_and_sowing P0 SET inc = public.up(P0.inc, 'DWC13'), inc_id = P0.id FROM seeding_and_sowing P1, soil P2, isAppliedOn P3, isAppliedOn P4, isDiff P5 
	WHERE P0.seeding_and_sowing$0=P4.isAppliedOn$0 AND P0.seeding_and_sowing$0=P5.isDiff$0 AND P1.seeding_and_sowing$0=P3.isAppliedOn$0 
		AND P1.seeding_and_sowing$0=P5.isDiff$1 AND P2.soil$0=P3.isAppliedOn$1 AND P2.soil$0=P4.isAppliedOn$1 AND P3.isAppliedOn$0=P5.isDiff$1 
		AND P3.isAppliedOn$1=P4.isAppliedOn$1 AND P4.isAppliedOn$0=P5.isDiff$0;  
UPDATE seeding_and_sowing P1 SET inc = public.up(P1.inc, 'DWC13'), inc_id = P1.id FROM seeding_and_sowing P0, soil P2, isAppliedOn P3, isAppliedOn P4, isDiff P5
        WHERE P0.seeding_and_sowing$0=P4.isAppliedOn$0 AND P0.seeding_and_sowing$0=P5.isDiff$0 AND P1.seeding_and_sowing$0=P3.isAppliedOn$0
                AND P1.seeding_and_sowing$0=P5.isDiff$1 AND P2.soil$0=P3.isAppliedOn$1 AND P2.soil$0=P4.isAppliedOn$1 AND P3.isAppliedOn$0=P5.isDiff$1
                AND P3.isAppliedOn$1=P4.isAppliedOn$1 AND P4.isAppliedOn$0=P5.isDiff$0;
UPDATE soil P2 SET inc = public.up(P2.inc, 'DWC13'), inc_id = P2.id FROM seeding_and_sowing P0, seeding_and_sowing P1, isAppliedOn P3, isAppliedOn P4, isDiff P5
        WHERE P0.seeding_and_sowing$0=P4.isAppliedOn$0 AND P0.seeding_and_sowing$0=P5.isDiff$0 AND P1.seeding_and_sowing$0=P3.isAppliedOn$0
                AND P1.seeding_and_sowing$0=P5.isDiff$1 AND P2.soil$0=P3.isAppliedOn$1 AND P2.soil$0=P4.isAppliedOn$1 AND P3.isAppliedOn$0=P5.isDiff$1
                AND P3.isAppliedOn$1=P4.isAppliedOn$1 AND P4.isAppliedOn$0=P5.isDiff$0;
UPDATE isAppliedOn P3 SET inc = public.up(P3.inc, 'DWC13'), inc_id = P3.id FROM seeding_and_sowing P0, seeding_and_sowing P1, soil P2, isAppliedOn P4, isDiff P5
        WHERE P0.seeding_and_sowing$0=P4.isAppliedOn$0 AND P0.seeding_and_sowing$0=P5.isDiff$0 AND P1.seeding_and_sowing$0=P3.isAppliedOn$0
                AND P1.seeding_and_sowing$0=P5.isDiff$1 AND P2.soil$0=P3.isAppliedOn$1 AND P2.soil$0=P4.isAppliedOn$1 AND P3.isAppliedOn$0=P5.isDiff$1
                AND P3.isAppliedOn$1=P4.isAppliedOn$1 AND P4.isAppliedOn$0=P5.isDiff$0;
UPDATE isAppliedOn P4 SET inc = public.up(P4.inc, 'DWC13'), inc_id = P4.id FROM seeding_and_sowing P0, seeding_and_sowing P1, soil P2, isAppliedOn P3,  isDiff P5
        WHERE P0.seeding_and_sowing$0=P4.isAppliedOn$0 AND P0.seeding_and_sowing$0=P5.isDiff$0 AND P1.seeding_and_sowing$0=P3.isAppliedOn$0
                AND P1.seeding_and_sowing$0=P5.isDiff$1 AND P2.soil$0=P3.isAppliedOn$1 AND P2.soil$0=P4.isAppliedOn$1 AND P3.isAppliedOn$0=P5.isDiff$1
                AND P3.isAppliedOn$1=P4.isAppliedOn$1 AND P4.isAppliedOn$0=P5.isDiff$0;
UPDATE isDiff P5 SET inc = public.up(P5.inc, 'DWC13'), inc_id = P5.id FROM seeding_and_sowing P0, seeding_and_sowing P1, soil P2, isAppliedOn P3, isAppliedOn P4
        WHERE P0.seeding_and_sowing$0=P4.isAppliedOn$0 AND P0.seeding_and_sowing$0=P5.isDiff$0 AND P1.seeding_and_sowing$0=P3.isAppliedOn$0
                AND P1.seeding_and_sowing$0=P5.isDiff$1 AND P2.soil$0=P3.isAppliedOn$1 AND P2.soil$0=P4.isAppliedOn$1 AND P3.isAppliedOn$0=P5.isDiff$1
                AND P3.isAppliedOn$1=P4.isAppliedOn$1 AND P4.isAppliedOn$0=P5.isDiff$0;

UPDATE maize P0 SET inc = public.up(P0.inc, 'DWC14'), inc_id = P0.id  FROM  soil P1, hasPrecedent P2 
	WHERE P0.maize$0=P2.hasPrecedent$1 AND P1.soil$0 = 'soil1' AND P2.hasPrecedent$0 = 'soil1' ; 
UPDATE soil P1 SET inc = public.up(P1.inc, 'DWC14'), inc_id = P1.id FROM maize P0, hasPrecedent P2
        WHERE P0.maize$0=P2.hasPrecedent$1 AND P1.soil$0 = 'soil1' AND P2.hasPrecedent$0 = 'soil1' ;
UPDATE hasPrecedent P2 SET inc = public.up(P2.inc, 'DWC14'), inc_id = P2.id FROM maize P0, soil P1
        WHERE P0.maize$0=P2.hasPrecedent$1 AND P1.soil$0 = 'soil1' AND P2.hasPrecedent$0 = 'soil1' ;


UPDATE field_preparation P0 SET inc = public.up(P0.inc, 'DWC15'), inc_id = P0.id FROM  harrowing P1, harrowing P2, isDiff P3, useHarrowingProcess P4, useHarrowingProcess P5 
	WHERE P0.field_preparation$0=P4.useHarrowingProcess$0 AND P0.field_preparation$0=P5.useHarrowingProcess$0 AND P1.harrowing$0=P3.isDiff$1 
		AND P1.harrowing$0=P4.useHarrowingProcess$1 AND P2.harrowing$0=P3.isDiff$0 AND P2.harrowing$0=P5.useHarrowingProcess$1 AND 
		P3.isDiff$0=P5.useHarrowingProcess$1 AND P3.isDiff$1=P4.useHarrowingProcess$1 AND P4.useHarrowingProcess$0=P5.useHarrowingProcess$0;  
UPDATE harrowing P1 SET inc = public.up(P1.inc, 'DWC15'), inc_id = P1.id FROM field_preparation P0, harrowing P2, isDiff P3, useHarrowingProcess P4, useHarrowingProcess P5
        WHERE P0.field_preparation$0=P4.useHarrowingProcess$0 AND P0.field_preparation$0=P5.useHarrowingProcess$0 AND P1.harrowing$0=P3.isDiff$1
                AND P1.harrowing$0=P4.useHarrowingProcess$1 AND P2.harrowing$0=P3.isDiff$0 AND P2.harrowing$0=P5.useHarrowingProcess$1 AND
                P3.isDiff$0=P5.useHarrowingProcess$1 AND P3.isDiff$1=P4.useHarrowingProcess$1 AND P4.useHarrowingProcess$0=P5.useHarrowingProcess$0;
UPDATE harrowing P2 SET inc = public.up(P2.inc, 'DWC15'), inc_id = P2.id FROM field_preparation P0, harrowing P1, isDiff P3, useHarrowingProcess P4, useHarrowingProcess P5
        WHERE P0.field_preparation$0=P4.useHarrowingProcess$0 AND P0.field_preparation$0=P5.useHarrowingProcess$0 AND P1.harrowing$0=P3.isDiff$1
                AND P1.harrowing$0=P4.useHarrowingProcess$1 AND P2.harrowing$0=P3.isDiff$0 AND P2.harrowing$0=P5.useHarrowingProcess$1 AND
                P3.isDiff$0=P5.useHarrowingProcess$1 AND P3.isDiff$1=P4.useHarrowingProcess$1 AND P4.useHarrowingProcess$0=P5.useHarrowingProcess$0;
UPDATE isDiff P3 SET inc = public.up(P3.inc, 'DWC15'), inc_id = P3.id FROM field_preparation P0, harrowing P1, harrowing P2, useHarrowingProcess P4, useHarrowingProcess P5
        WHERE P0.field_preparation$0=P4.useHarrowingProcess$0 AND P0.field_preparation$0=P5.useHarrowingProcess$0 AND P1.harrowing$0=P3.isDiff$1
                AND P1.harrowing$0=P4.useHarrowingProcess$1 AND P2.harrowing$0=P3.isDiff$0 AND P2.harrowing$0=P5.useHarrowingProcess$1 AND
                P3.isDiff$0=P5.useHarrowingProcess$1 AND P3.isDiff$1=P4.useHarrowingProcess$1 AND P4.useHarrowingProcess$0=P5.useHarrowingProcess$0;
UPDATE useHarrowingProcess P4 SET inc = public.up(P4.inc, 'DWC15'), inc_id = P4.id FROM field_preparation P0, harrowing P1, harrowing P2, isDiff P3, useHarrowingProcess P5
        WHERE P0.field_preparation$0=P4.useHarrowingProcess$0 AND P0.field_preparation$0=P5.useHarrowingProcess$0 AND P1.harrowing$0=P3.isDiff$1
                AND P1.harrowing$0=P4.useHarrowingProcess$1 AND P2.harrowing$0=P3.isDiff$0 AND P2.harrowing$0=P5.useHarrowingProcess$1 AND
                P3.isDiff$0=P5.useHarrowingProcess$1 AND P3.isDiff$1=P4.useHarrowingProcess$1 AND P4.useHarrowingProcess$0=P5.useHarrowingProcess$0;
UPDATE useHarrowingProcess P5 SET inc = public.up(P5.inc, 'DWC15'), inc_id = P5.id FROM field_preparation P0, harrowing P1, harrowing P2, isDiff P3, useHarrowingProcess P4
        WHERE P0.field_preparation$0=P4.useHarrowingProcess$0 AND P0.field_preparation$0=P5.useHarrowingProcess$0 AND P1.harrowing$0=P3.isDiff$1
                AND P1.harrowing$0=P4.useHarrowingProcess$1 AND P2.harrowing$0=P3.isDiff$0 AND P2.harrowing$0=P5.useHarrowingProcess$1 AND
                P3.isDiff$0=P5.useHarrowingProcess$1 AND P3.isDiff$1=P4.useHarrowingProcess$1 AND P4.useHarrowingProcess$0=P5.useHarrowingProcess$0;


UPDATE isDiff P5 SET inc = public.up(P5.inc, 'DWC16'), inc_id = P5.id  FROM resistance P0, score P1, score P2, hasResistanceScore P3, hasResistanceScore P4 
	WHERE P0.resistance$0=P3.hasResistanceScore$0 AND P0.resistance$0=P4.hasResistanceScore$0 AND P1.score$0=P3.hasResistanceScore$1 
	AND P1.score$0=P5.isDiff$1 AND P2.score$0=P4.hasResistanceScore$1 AND P2.score$0=P5.isDiff$0 AND P3.hasResistanceScore$0=P4.hasResistanceScore$0 
	AND P3.hasResistanceScore$1=P5.isDiff$1 AND P4.hasResistanceScore$1=P5.isDiff$0;  
UPDATE hasResistanceScore P4 SET inc = public.up(P4.inc, 'DWC16'), inc_id = P4.id  FROM resistance P0, score P1, score P2, hasResistanceScore P3, isDiff P5
        WHERE P0.resistance$0=P3.hasResistanceScore$0 AND P0.resistance$0=P4.hasResistanceScore$0 AND P1.score$0=P3.hasResistanceScore$1
        AND P1.score$0=P5.isDiff$1 AND P2.score$0=P4.hasResistanceScore$1 AND P2.score$0=P5.isDiff$0 AND P3.hasResistanceScore$0=P4.hasResistanceScore$0
        AND P3.hasResistanceScore$1=P5.isDiff$1 AND P4.hasResistanceScore$1=P5.isDiff$0;
UPDATE hasResistanceScore P3 SET inc = public.up(P3.inc, 'DWC16'), inc_id = P3.id  FROM resistance P0, score P1, score P2, hasResistanceScore P4, isDiff P5
        WHERE P0.resistance$0=P3.hasResistanceScore$0 AND P0.resistance$0=P4.hasResistanceScore$0 AND P1.score$0=P3.hasResistanceScore$1
        AND P1.score$0=P5.isDiff$1 AND P2.score$0=P4.hasResistanceScore$1 AND P2.score$0=P5.isDiff$0 AND P3.hasResistanceScore$0=P4.hasResistanceScore$0
        AND P3.hasResistanceScore$1=P5.isDiff$1 AND P4.hasResistanceScore$1=P5.isDiff$0;
UPDATE score P2 SET inc = public.up(P2.inc, 'DWC16'), inc_id = P2.id  FROM resistance P0, score P1, hasResistanceScore P3, hasResistanceScore P4, isDiff P5
        WHERE P0.resistance$0=P3.hasResistanceScore$0 AND P0.resistance$0=P4.hasResistanceScore$0 AND P1.score$0=P3.hasResistanceScore$1
        AND P1.score$0=P5.isDiff$1 AND P2.score$0=P4.hasResistanceScore$1 AND P2.score$0=P5.isDiff$0 AND P3.hasResistanceScore$0=P4.hasResistanceScore$0
        AND P3.hasResistanceScore$1=P5.isDiff$1 AND P4.hasResistanceScore$1=P5.isDiff$0;
UPDATE score P1 SET inc = public.up(P1.inc, 'DWC16'), inc_id = P1.id  FROM resistance P0, score P2, hasResistanceScore P3, hasResistanceScore P4, isDiff P5
        WHERE P0.resistance$0=P3.hasResistanceScore$0 AND P0.resistance$0=P4.hasResistanceScore$0 AND P1.score$0=P3.hasResistanceScore$1
        AND P1.score$0=P5.isDiff$1 AND P2.score$0=P4.hasResistanceScore$1 AND P2.score$0=P5.isDiff$0 AND P3.hasResistanceScore$0=P4.hasResistanceScore$0
        AND P3.hasResistanceScore$1=P5.isDiff$1 AND P4.hasResistanceScore$1=P5.isDiff$0;
UPDATE resistance P0 SET inc = public.up(P0.inc, 'DWC16'), inc_id = P0.id  FROM score P1, score P2, hasResistanceScore P3, hasResistanceScore P4, isDiff P5
        WHERE P0.resistance$0=P3.hasResistanceScore$0 AND P0.resistance$0=P4.hasResistanceScore$0 AND P1.score$0=P3.hasResistanceScore$1
        AND P1.score$0=P5.isDiff$1 AND P2.score$0=P4.hasResistanceScore$1 AND P2.score$0=P5.isDiff$0 AND P3.hasResistanceScore$0=P4.hasResistanceScore$0
        AND P3.hasResistanceScore$1=P5.isDiff$1 AND P4.hasResistanceScore$1=P5.isDiff$0;


UPDATE crucifers P0 SET inc = public.up(P0.inc, 'DWC17'), inc_id = P0.id FROM  gramineae P1, intermediate_intercropping P2, leguminosae P3, useCulture P4, useCulture P5, useCulture P6 
	WHERE P0.crucifers$0=P6.useCulture$1 AND P1.gramineae$0=P4.useCulture$1 AND P2.intermediate_intercropping$0=P4.useCulture$0 AND 
		P2.intermediate_intercropping$0=P5.useCulture$0 AND P2.intermediate_intercropping$0=P6.useCulture$0 AND P3.leguminosae$0=P5.useCulture$1 
		AND P4.useCulture$0=P5.useCulture$0 AND P4.useCulture$0=P6.useCulture$0 AND P5.useCulture$0=P6.useCulture$0;  
UPDATE gramineae P1 SET inc = public.up(P1.inc, 'DWC17'), inc_id = P1.id FROM crucifers P0, intermediate_intercropping P2, leguminosae P3, useCulture P4, useCulture P5, useCulture P6
        WHERE P0.crucifers$0=P6.useCulture$1 AND P1.gramineae$0=P4.useCulture$1 AND P2.intermediate_intercropping$0=P4.useCulture$0 AND
                P2.intermediate_intercropping$0=P5.useCulture$0 AND P2.intermediate_intercropping$0=P6.useCulture$0 AND P3.leguminosae$0=P5.useCulture$1
                AND P4.useCulture$0=P5.useCulture$0 AND P4.useCulture$0=P6.useCulture$0 AND P5.useCulture$0=P6.useCulture$0;
UPDATE intermediate_intercropping P2 SET inc = public.up(P2.inc, 'DWC17'), inc_id = P2.id FROM crucifers P0, gramineae P1, leguminosae P3, useCulture P4, useCulture P5, useCulture P6
        WHERE P0.crucifers$0=P6.useCulture$1 AND P1.gramineae$0=P4.useCulture$1 AND P2.intermediate_intercropping$0=P4.useCulture$0 AND
                P2.intermediate_intercropping$0=P5.useCulture$0 AND P2.intermediate_intercropping$0=P6.useCulture$0 AND P3.leguminosae$0=P5.useCulture$1
                AND P4.useCulture$0=P5.useCulture$0 AND P4.useCulture$0=P6.useCulture$0 AND P5.useCulture$0=P6.useCulture$0;
UPDATE leguminosae P3 SET inc = public.up(P3.inc, 'DWC17'), inc_id = P3.id FROM crucifers P0, gramineae P1, intermediate_intercropping P2, useCulture P4, useCulture P5, useCulture P6
        WHERE P0.crucifers$0=P6.useCulture$1 AND P1.gramineae$0=P4.useCulture$1 AND P2.intermediate_intercropping$0=P4.useCulture$0 AND
                P2.intermediate_intercropping$0=P5.useCulture$0 AND P2.intermediate_intercropping$0=P6.useCulture$0 AND P3.leguminosae$0=P5.useCulture$1
                AND P4.useCulture$0=P5.useCulture$0 AND P4.useCulture$0=P6.useCulture$0 AND P5.useCulture$0=P6.useCulture$0;
UPDATE useCulture P4 SET inc = public.up(P4.inc, 'DWC17'), inc_id = P4.id FROM crucifers P0, gramineae P1, intermediate_intercropping P2, leguminosae P3,  useCulture P5, useCulture P6
        WHERE P0.crucifers$0=P6.useCulture$1 AND P1.gramineae$0=P4.useCulture$1 AND P2.intermediate_intercropping$0=P4.useCulture$0 AND
                P2.intermediate_intercropping$0=P5.useCulture$0 AND P2.intermediate_intercropping$0=P6.useCulture$0 AND P3.leguminosae$0=P5.useCulture$1
                AND P4.useCulture$0=P5.useCulture$0 AND P4.useCulture$0=P6.useCulture$0 AND P5.useCulture$0=P6.useCulture$0;
UPDATE useCulture P5 SET inc = public.up(P5.inc, 'DWC17'), inc_id = P5.id FROM crucifers P0, gramineae P1, intermediate_intercropping P2, leguminosae P3, useCulture P4, useCulture P6
        WHERE P0.crucifers$0=P6.useCulture$1 AND P1.gramineae$0=P4.useCulture$1 AND P2.intermediate_intercropping$0=P4.useCulture$0 AND
                P2.intermediate_intercropping$0=P5.useCulture$0 AND P2.intermediate_intercropping$0=P6.useCulture$0 AND P3.leguminosae$0=P5.useCulture$1
                AND P4.useCulture$0=P5.useCulture$0 AND P4.useCulture$0=P6.useCulture$0 AND P5.useCulture$0=P6.useCulture$0;
UPDATE useCulture P6 SET inc = public.up(P6.inc, 'DWC17'), inc_id = P6.id FROM crucifers P0, gramineae P1, intermediate_intercropping P2, leguminosae P3, useCulture P4, useCulture P5
        WHERE P0.crucifers$0=P6.useCulture$1 AND P1.gramineae$0=P4.useCulture$1 AND P2.intermediate_intercropping$0=P4.useCulture$0 AND
                P2.intermediate_intercropping$0=P5.useCulture$0 AND P2.intermediate_intercropping$0=P6.useCulture$0 AND P3.leguminosae$0=P5.useCulture$1
                AND P4.useCulture$0=P5.useCulture$0 AND P4.useCulture$0=P6.useCulture$0 AND P5.useCulture$0=P6.useCulture$0;

