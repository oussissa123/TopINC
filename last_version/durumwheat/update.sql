UPDATE durum12wheat P0 SET inc = public.up(P0.inc, 'DWC0'), inc_id = P0.id  FROM fertilization P1, tillering_begins P2, isAtGrowingStage P3, isPerformedOn P4 WHERE P0.durum_wheat$0=P3.isAtGrowingStage$0 AND P0.durum_wheat$0=P4.isPerformedOn$1 AND P1.fertilization$0=P4.isPerformedOn$0 AND P2.tillering_begins$0=P3.isAtGrowingStage$1 AND P3.isAtGrowingStage$0=P4.isPerformedOn$1; 
UPDATE fertilization P1 SET inc = public.up(P1.inc, 'DWC0'), inc_id = P1.id  FROM  durum12wheat P0, tillering_begins P2, isAtGrowingStage P3, isPerformedOn P4 WHERE P0.durum_wheat$0=P3.isAtGrowingStage$0 AND P0.durum_wheat$0=P4.isPerformedOn$1 AND P1.fertilization$0=P4.isPerformedOn$0 AND P2.tillering_begins$0=P3.isAtGrowingStage$1 AND P3.isAtGrowingStage$0=P4.isPerformedOn$1;
UPDATE tillering_begins P2 SET inc = public.up(P2.inc, 'DWC0'), inc_id = P2.id  FROM fertilization P1, durum12wheat P0, isAtGrowingStage P3, isPerformedOn P4 WHERE P0.durum_wheat$0=P3.isAtGrowingStage$0 AND P0.durum_wheat$0=P4.isPerformedOn$1 AND P1.fertilization$0=P4.isPerformedOn$0 AND P2.tillering_begins$0=P3.isAtGrowingStage$1 AND P3.isAtGrowingStage$0=P4.isPerformedOn$1;
UPDATE isAtGrowingStage P3 SET inc = public.up(P3.inc, 'DWC0'), inc_id = P3.id  FROM fertilization P1, tillering_begins P2, durum12wheat P0,isPerformedOn P4 WHERE P0.durum_wheat$0=P3.isAtGrowingStage$0 AND P0.durum_wheat$0=P4.isPerformedOn$1 AND P1.fertilization$0=P4.isPerformedOn$0 AND P2.tillering_begins$0=P3.isAtGrowingStage$1 AND P3.isAtGrowingStage$0=P4.isPerformedOn$1;
UPDATE isPerformedOn P4 SET inc = public.up(P4.inc, 'DWC0'), inc_id = P4.id  FROM fertilization P1, tillering_begins P2, durum12wheat P0, isAtGrowingStage P3 WHERE P0.durum_wheat$0=P3.isAtGrowingStage$0 AND P0.durum_wheat$0=P4.isPerformedOn$1 AND P1.fertilization$0=P4.isPerformedOn$0 AND P2.tillering_begins$0=P3.isAtGrowingStage$1 AND P3.isAtGrowingStage$0=P4.isPerformedOn$1;

UPDATE soil P0 SET inc = public.up(P0.inc, 'DWC1'), inc_id = P0.id  FROM sorghum P1, hasPrecedent P2 WHERE soil$0=P2.hasPrecedent$0 AND P1.sorghum$0=P2.hasPrecedent$1; 
UPDATE sorghum P1 SET inc = public.up(P1.inc, 'DWC1'), inc_id = P1.id  FROM soil P0, hasPrecedent P2 WHERE P0.soil$0=P2.hasPrecedent$0 AND P1.sorghum$0=P2.hasPrecedent$1;
UPDATE hasPrecedent P2 SET inc = public.up(P2.inc, 'DWC1'), inc_id = P2.id  FROM sorghum P1, soil P0 WHERE P0.soil$0=P2.hasPrecedent$0 AND P1.sorghum$0=P2.hasPrecedent$1;


UPDATE maize P0 SET inc = public.up(P0.inc, 'DWC2'), inc_id = P0.id FROM soil P1, hasPrecedent P2 WHERE P0.maize$0=P2.hasPrecedent$1 AND P1.soil$0=P2.hasPrecedent$0;  
UPDATE soil P1 SET inc = public.up(P1.inc, 'DWC2'), inc_id = P1.id FROM maize P0, hasPrecedent P2 WHERE P0.maize$0=P2.hasPrecedent$1 AND P1.soil$0=P2.hasPrecedent$0;
UPDATE hasPrecedent P2 SET inc = public.up(P2.inc, 'DWC2'), inc_id = P2.id FROM soil P1, maize P0 WHERE P0.maize$0=P2.hasPrecedent$1 AND P1.soil$0=P2.hasPrecedent$0; 
 
UPDATE mycotoXin_risk P0 SET inc = public.up(P0.inc, 'DWC3'), inc_id = P0.id  FROM  mycotoXin_risk P1, variety P2, hasRisk P3, hasRisk P4, isDiff P5 
	WHERE P0.mycotoXin_risk$0=P3.hasRisk$1 AND P0.mycotoXin_risk$0=P5.isDiff$0 AND 
		P1.mycotoXin_risk$0=P4.hasRisk$1 AND P1.mycotoXin_risk$0=P5.isDiff$1 AND 
		P2.variety$0=P3.hasRisk$0 AND P2.variety$0=P4.hasRisk$0 AND P3.hasRisk$0=P4.hasRisk$0 AND 
		P3.hasRisk$1=P5.isDiff$0 AND P4.hasRisk$1=P5.isDiff$1; 
UPDATE mycotoXin_risk P1 SET inc = public.up(P1.inc, 'DWC3'), inc_id = P1.id  FROM  mycotoXin_risk P0, variety P2, hasRisk P3, hasRisk P4, isDiff P5
        WHERE P0.mycotoXin_risk$0=P3.hasRisk$1 AND P0.mycotoXin_risk$0=P5.isDiff$0 AND
                P1.mycotoXin_risk$0=P4.hasRisk$1 AND P1.mycotoXin_risk$0=P5.isDiff$1 AND
                P2.variety$0=P3.hasRisk$0 AND P2.variety$0=P4.hasRisk$0 AND P3.hasRisk$0=P4.hasRisk$0 AND
                P3.hasRisk$1=P5.isDiff$0 AND P4.hasRisk$1=P5.isDiff$1;
UPDATE variety P2 SET inc = public.up(P2.inc, 'DWC3'), inc_id = P2.id  FROM  mycotoXin_risk P0, mycotoXin_risk P1, hasRisk P3, hasRisk P4, isDiff P5
        WHERE P0.mycotoXin_risk$0=P3.hasRisk$1 AND P0.mycotoXin_risk$0=P5.isDiff$0 AND
                P1.mycotoXin_risk$0=P4.hasRisk$1 AND P1.mycotoXin_risk$0=P5.isDiff$1 AND
                P2.variety$0=P3.hasRisk$0 AND P2.variety$0=P4.hasRisk$0 AND P3.hasRisk$0=P4.hasRisk$0 AND
                P3.hasRisk$1=P5.isDiff$0 AND P4.hasRisk$1=P5.isDiff$1;
UPDATE hasRisk P3 SET inc = public.up(P3.inc, 'DWC3'), inc_id = P3.id  FROM  mycotoXin_risk P0, mycotoXin_risk P1, variety P2, hasRisk P4, isDiff P5
        WHERE P0.mycotoXin_risk$0=P3.hasRisk$1 AND P0.mycotoXin_risk$0=P5.isDiff$0 AND
                P1.mycotoXin_risk$0=P4.hasRisk$1 AND P1.mycotoXin_risk$0=P5.isDiff$1 AND
                P2.variety$0=P3.hasRisk$0 AND P2.variety$0=P4.hasRisk$0 AND P3.hasRisk$0=P4.hasRisk$0 AND
                P3.hasRisk$1=P5.isDiff$0 AND P4.hasRisk$1=P5.isDiff$1;
UPDATE hasRisk P4 SET inc = public.up(P4.inc, 'DWC3'), inc_id = P4.id  FROM  mycotoXin_risk P0, mycotoXin_risk P1, variety P2, hasRisk P3, isDiff P5
        WHERE P0.mycotoXin_risk$0=P3.hasRisk$1 AND P0.mycotoXin_risk$0=P5.isDiff$0 AND
                P1.mycotoXin_risk$0=P4.hasRisk$1 AND P1.mycotoXin_risk$0=P5.isDiff$1 AND
                P2.variety$0=P3.hasRisk$0 AND P2.variety$0=P4.hasRisk$0 AND P3.hasRisk$0=P4.hasRisk$0 AND
                P3.hasRisk$1=P5.isDiff$0 AND P4.hasRisk$1=P5.isDiff$1;
UPDATE isDiff P5 SET inc = public.up(P5.inc, 'DWC3'), inc_id = P5.id  FROM  mycotoXin_risk P0, mycotoXin_risk P1, variety P2, hasRisk P3, hasRisk P4
        WHERE P0.mycotoXin_risk$0=P3.hasRisk$1 AND P0.mycotoXin_risk$0=P5.isDiff$0 AND
                P1.mycotoXin_risk$0=P4.hasRisk$1 AND P1.mycotoXin_risk$0=P5.isDiff$1 AND
                P2.variety$0=P3.hasRisk$0 AND P2.variety$0=P4.hasRisk$0 AND P3.hasRisk$0=P4.hasRisk$0 AND
                P3.hasRisk$1=P5.isDiff$0 AND P4.hasRisk$1=P5.isDiff$1;


UPDATE durum12wheat P0 SET inc = public.up(P0.inc, 'DWC4'), inc_id = P0.id  FROM insect_control P1, applyTraitmentOn P2 
	WHERE P0.durum_wheat$0 = 'durum_w1' AND P1.insect_control$0=P2.applyTraitmentOn$0
		 AND P2.applyTraitmentOn$1 = 'durum_w1';  
UPDATE insect_control P1 SET inc = public.up(P1.inc, 'DWC4'), inc_id = P1.id  FROM durum12wheat P0, applyTraitmentOn P2
        WHERE P0.durum_wheat$0 = 'durum_w1' AND P1.insect_control$0=P2.applyTraitmentOn$0
                 AND P2.applyTraitmentOn$1 = 'durum_w1';
UPDATE applyTraitmentOn P2 SET inc = public.up(P2.inc, 'DWC4'), inc_id = P2.id  FROM durum12wheat P0, insect_control P1
        WHERE P0.durum_wheat$0 = 'durum_w1' AND P1.insect_control$0=P2.applyTraitmentOn$0
                 AND P2.applyTraitmentOn$1 = 'durum_w1';




UPDATE breeder P0 SET inc = public.up(P0.inc, 'DWC5'), inc_id = P0.id  FROM breeder P1, variety P2, isBreededBy P3, isBreededBy P4, isDiff P5 
	WHERE P0.breeder$0=P4.isBreededBy$1 AND P0.breeder$0=P5.isDiff$0 AND P1.breeder$0=P3.isBreededBy$1 
		AND P1.breeder$0=P5.isDiff$1 AND P2.variety$0=P3.isBreededBy$0 AND P2.variety$0=P4.isBreededBy$0 
		AND P3.isBreededBy$0=P4.isBreededBy$0 AND P3.isBreededBy$1=P5.isDiff$1 AND P4.isBreededBy$1=P5.isDiff$0;  
UPDATE breeder P1 SET inc = public.up(P1.inc, 'DWC5'), inc_id = P1.id  FROM breeder P0, variety P2, isBreededBy P3, isBreededBy P4, isDiff P5
        WHERE P0.breeder$0=P4.isBreededBy$1 AND P0.breeder$0=P5.isDiff$0 AND P1.breeder$0=P3.isBreededBy$1
                AND P1.breeder$0=P5.isDiff$1 AND P2.variety$0=P3.isBreededBy$0 AND P2.variety$0=P4.isBreededBy$0
                AND P3.isBreededBy$0=P4.isBreededBy$0 AND P3.isBreededBy$1=P5.isDiff$1 AND P4.isBreededBy$1=P5.isDiff$0;
UPDATE variety P2  SET inc = public.up(P2.inc, 'DWC5'), inc_id = P2.id  FROM breeder P0, breeder P1, isBreededBy P3, isBreededBy P4, isDiff P5
        WHERE P0.breeder$0=P4.isBreededBy$1 AND P0.breeder$0=P5.isDiff$0 AND P1.breeder$0=P3.isBreededBy$1
                AND P1.breeder$0=P5.isDiff$1 AND P2.variety$0=P3.isBreededBy$0 AND P2.variety$0=P4.isBreededBy$0
                AND P3.isBreededBy$0=P4.isBreededBy$0 AND P3.isBreededBy$1=P5.isDiff$1 AND P4.isBreededBy$1=P5.isDiff$0;
UPDATE isBreededBy P3  SET inc = public.up(P3.inc, 'DWC5'), inc_id = P3.id  FROM breeder P0, breeder P1, variety P2, isBreededBy P4, isDiff P5
        WHERE P0.breeder$0=P4.isBreededBy$1 AND P0.breeder$0=P5.isDiff$0 AND P1.breeder$0=P3.isBreededBy$1
                AND P1.breeder$0=P5.isDiff$1 AND P2.variety$0=P3.isBreededBy$0 AND P2.variety$0=P4.isBreededBy$0
                AND P3.isBreededBy$0=P4.isBreededBy$0 AND P3.isBreededBy$1=P5.isDiff$1 AND P4.isBreededBy$1=P5.isDiff$0;
UPDATE isBreededBy P4  SET inc = public.up(P4.inc, 'DWC5'), inc_id = P4.id  FROM breeder P0, breeder P1, variety P2, isBreededBy P3, isDiff P5
        WHERE P0.breeder$0=P4.isBreededBy$1 AND P0.breeder$0=P5.isDiff$0 AND P1.breeder$0=P3.isBreededBy$1
                AND P1.breeder$0=P5.isDiff$1 AND P2.variety$0=P3.isBreededBy$0 AND P2.variety$0=P4.isBreededBy$0
                AND P3.isBreededBy$0=P4.isBreededBy$0 AND P3.isBreededBy$1=P5.isDiff$1 AND P4.isBreededBy$1=P5.isDiff$0;
UPDATE isDiff P5 SET inc = public.up(P5.inc, 'DWC5'), inc_id = P5.id  FROM breeder P0, breeder P1, variety P2, isBreededBy P3, isBreededBy P4
        WHERE P0.breeder$0=P4.isBreededBy$1 AND P0.breeder$0=P5.isDiff$0 AND P1.breeder$0=P3.isBreededBy$1
                AND P1.breeder$0=P5.isDiff$1 AND P2.variety$0=P3.isBreededBy$0 AND P2.variety$0=P4.isBreededBy$0
                AND P3.isBreededBy$0=P4.isBreededBy$0 AND P3.isBreededBy$1=P5.isDiff$1 AND P4.isBreededBy$1=P5.isDiff$0;


UPDATE fertilization P0  SET inc = public.up(P0.inc, 'DWC6'), inc_id = P0.id  FROM fertilizer P1, fertilizer P2, isDiff P3, useFertilizer P4, useFertilizer P5 
	WHERE P0.fertilization$0=P4.useFertilizer$0 AND P0.fertilization$0=P5.useFertilizer$0 AND P1.fertilizer$0=P3.isDiff$1 AND 
		P1.fertilizer$0=P5.useFertilizer$1 AND P2.fertilizer$0=P3.isDiff$0 AND P2.fertilizer$0=P4.useFertilizer$1 AND 
		P3.isDiff$0=P4.useFertilizer$1 AND P3.isDiff$1=P5.useFertilizer$1 AND P4.useFertilizer$0=P5.useFertilizer$0;  
UPDATE fertilizer P1 SET inc = public.up(P1.inc, 'DWC6'), inc_id = P1.id  FROM fertilization P0, fertilizer P2, isDiff P3, useFertilizer P4, useFertilizer P5
        WHERE P0.fertilization$0=P4.useFertilizer$0 AND P0.fertilization$0=P5.useFertilizer$0 AND P1.fertilizer$0=P3.isDiff$1 AND
                P1.fertilizer$0=P5.useFertilizer$1 AND P2.fertilizer$0=P3.isDiff$0 AND P2.fertilizer$0=P4.useFertilizer$1 AND
                P3.isDiff$0=P4.useFertilizer$1 AND P3.isDiff$1=P5.useFertilizer$1 AND P4.useFertilizer$0=P5.useFertilizer$0;
UPDATE fertilizer P2 SET inc = public.up(P2.inc, 'DWC6'), inc_id = P2.id  FROM fertilization P0, fertilizer P1, isDiff P3, useFertilizer P4, useFertilizer P5
        WHERE P0.fertilization$0=P4.useFertilizer$0 AND P0.fertilization$0=P5.useFertilizer$0 AND P1.fertilizer$0=P3.isDiff$1 AND
                P1.fertilizer$0=P5.useFertilizer$1 AND P2.fertilizer$0=P3.isDiff$0 AND P2.fertilizer$0=P4.useFertilizer$1 AND
                P3.isDiff$0=P4.useFertilizer$1 AND P3.isDiff$1=P5.useFertilizer$1 AND P4.useFertilizer$0=P5.useFertilizer$0;
UPDATE isDiff P3 SET inc = public.up(P3.inc, 'DWC6'), inc_id = P3.id  FROM fertilization P0, fertilizer P1, fertilizer P2, useFertilizer P4, useFertilizer P5
        WHERE P0.fertilization$0=P4.useFertilizer$0 AND P0.fertilization$0=P5.useFertilizer$0 AND P1.fertilizer$0=P3.isDiff$1 AND
                P1.fertilizer$0=P5.useFertilizer$1 AND P2.fertilizer$0=P3.isDiff$0 AND P2.fertilizer$0=P4.useFertilizer$1 AND
                P3.isDiff$0=P4.useFertilizer$1 AND P3.isDiff$1=P5.useFertilizer$1 AND P4.useFertilizer$0=P5.useFertilizer$0;
UPDATE useFertilizer P4 SET inc = public.up(P4.inc, 'DWC6'), inc_id = P4.id  FROM fertilization P0, fertilizer P1, fertilizer P2, isDiff P3, useFertilizer P5
        WHERE P0.fertilization$0=P4.useFertilizer$0 AND P0.fertilization$0=P5.useFertilizer$0 AND P1.fertilizer$0=P3.isDiff$1 AND
                P1.fertilizer$0=P5.useFertilizer$1 AND P2.fertilizer$0=P3.isDiff$0 AND P2.fertilizer$0=P4.useFertilizer$1 AND
                P3.isDiff$0=P4.useFertilizer$1 AND P3.isDiff$1=P5.useFertilizer$1 AND P4.useFertilizer$0=P5.useFertilizer$0;
UPDATE useFertilizer P5 SET inc = public.up(P5.inc, 'DWC6'), inc_id = P5.id  FROM fertilization P0, fertilizer P1, fertilizer P2, isDiff P3, useFertilizer P4
        WHERE P0.fertilization$0=P4.useFertilizer$0 AND P0.fertilization$0=P5.useFertilizer$0 AND P1.fertilizer$0=P3.isDiff$1 AND
                P1.fertilizer$0=P5.useFertilizer$1 AND P2.fertilizer$0=P3.isDiff$0 AND P2.fertilizer$0=P4.useFertilizer$1 AND
                P3.isDiff$0=P4.useFertilizer$1 AND P3.isDiff$1=P5.useFertilizer$1 AND P4.useFertilizer$0=P5.useFertilizer$0;


UPDATE quality_class P0  SET inc = public.up(P0.inc, 'DWC7'), inc_id = P0.id  FROM quality_class P1, technical_quality P2, hasTechnicalQualityClass P3, 
	hasTechnicalQualityClass P4, isDiff P5 
	WHERE P0.quality_class$0=P4.hasTechnicalQualityClass$1 AND P0.quality_class$0=P5.isDiff$1 AND P1.quality_class$0=P3.hasTechnicalQualityClass$1 
		AND P1.quality_class$0=P5.isDiff$0 AND P2.technical_quality$0=P3.hasTechnicalQualityClass$0 AND 
		P2.technical_quality$0=P4.hasTechnicalQualityClass$0 AND P3.hasTechnicalQualityClass$0=P4.hasTechnicalQualityClass$0 AND 
		P3.hasTechnicalQualityClass$1=P5.isDiff$0 AND P4.hasTechnicalQualityClass$1=P5.isDiff$1;  
UPDATE quality_class P1  SET inc = public.up(P1.inc, 'DWC7'), inc_id = P1.id  FROM quality_class P0, technical_quality P2, hasTechnicalQualityClass P3,hasTechnicalQualityClass P4, isDiff P5
        WHERE P0.quality_class$0=P4.hasTechnicalQualityClass$1 AND P0.quality_class$0=P5.isDiff$1 AND P1.quality_class$0=P3.hasTechnicalQualityClass$1
                AND P1.quality_class$0=P5.isDiff$0 AND P2.technical_quality$0=P3.hasTechnicalQualityClass$0 AND
                P2.technical_quality$0=P4.hasTechnicalQualityClass$0 AND P3.hasTechnicalQualityClass$0=P4.hasTechnicalQualityClass$0 AND
                P3.hasTechnicalQualityClass$1=P5.isDiff$0 AND P4.hasTechnicalQualityClass$1=P5.isDiff$1;
UPDATE technical_quality P2  SET inc = public.up(P2.inc, 'DWC7'), inc_id = P2.id  FROM quality_class P0, quality_class P1, hasTechnicalQualityClass P3,
        hasTechnicalQualityClass P4, isDiff P5
        WHERE P0.quality_class$0=P4.hasTechnicalQualityClass$1 AND P0.quality_class$0=P5.isDiff$1 AND P1.quality_class$0=P3.hasTechnicalQualityClass$1
                AND P1.quality_class$0=P5.isDiff$0 AND P2.technical_quality$0=P3.hasTechnicalQualityClass$0 AND
                P2.technical_quality$0=P4.hasTechnicalQualityClass$0 AND P3.hasTechnicalQualityClass$0=P4.hasTechnicalQualityClass$0 AND
                P3.hasTechnicalQualityClass$1=P5.isDiff$0 AND P4.hasTechnicalQualityClass$1=P5.isDiff$1;
UPDATE hasTechnicalQualityClass P3  SET inc = public.up(P3.inc, 'DWC7'), inc_id = P3.id  FROM quality_class P0, quality_class P1, technical_quality P2, hasTechnicalQualityClass P4, isDiff P5
        WHERE P0.quality_class$0=P4.hasTechnicalQualityClass$1 AND P0.quality_class$0=P5.isDiff$1 AND P1.quality_class$0=P3.hasTechnicalQualityClass$1
                AND P1.quality_class$0=P5.isDiff$0 AND P2.technical_quality$0=P3.hasTechnicalQualityClass$0 AND
                P2.technical_quality$0=P4.hasTechnicalQualityClass$0 AND P3.hasTechnicalQualityClass$0=P4.hasTechnicalQualityClass$0 AND
                P3.hasTechnicalQualityClass$1=P5.isDiff$0 AND P4.hasTechnicalQualityClass$1=P5.isDiff$1;
UPDATE hasTechnicalQualityClass P4  SET inc = public.up(P4.inc, 'DWC7'), inc_id = P4.id  FROM quality_class P0, quality_class P1, technical_quality P2, hasTechnicalQualityClass P3, isDiff P5
        WHERE P0.quality_class$0=P4.hasTechnicalQualityClass$1 AND P0.quality_class$0=P5.isDiff$1 AND P1.quality_class$0=P3.hasTechnicalQualityClass$1
                AND P1.quality_class$0=P5.isDiff$0 AND P2.technical_quality$0=P3.hasTechnicalQualityClass$0 AND
                P2.technical_quality$0=P4.hasTechnicalQualityClass$0 AND P3.hasTechnicalQualityClass$0=P4.hasTechnicalQualityClass$0 AND
                P3.hasTechnicalQualityClass$1=P5.isDiff$0 AND P4.hasTechnicalQualityClass$1=P5.isDiff$1;
UPDATE isDiff P5  SET inc = public.up(P5.inc, 'DWC7'), inc_id = P5.id  FROM quality_class P0, quality_class P1, technical_quality P2, hasTechnicalQualityClass P3,
        hasTechnicalQualityClass P4
        WHERE P0.quality_class$0=P4.hasTechnicalQualityClass$1 AND P0.quality_class$0=P5.isDiff$1 AND P1.quality_class$0=P3.hasTechnicalQualityClass$1
                AND P1.quality_class$0=P5.isDiff$0 AND P2.technical_quality$0=P3.hasTechnicalQualityClass$0 AND
                P2.technical_quality$0=P4.hasTechnicalQualityClass$0 AND P3.hasTechnicalQualityClass$0=P4.hasTechnicalQualityClass$0 AND
                P3.hasTechnicalQualityClass$1=P5.isDiff$0 AND P4.hasTechnicalQualityClass$1=P5.isDiff$1;

UPDATE durum12wheat P0 SET inc = public.up(P0.inc, 'DWC8'), inc_id = P0.id  FROM tiller_begins_fertilization P1, isPerformedOn P2 
	WHERE P0.durum_wheat$0 = 'durum_w2' AND P1.tiller_begins_fertilization$0=P2.isPerformedOn$0 AND P2.isPerformedOn$1 = 'durum_w2';  
UPDATE tiller_begins_fertilization P1 SET inc = public.up(P1.inc, 'DWC8'), inc_id = P1.id  FROM durum12wheat P0,  isPerformedOn P2
        WHERE P0.durum_wheat$0 = 'durum_w2' AND P1.tiller_begins_fertilization$0=P2.isPerformedOn$0 AND P2.isPerformedOn$1 = 'durum_w2';
UPDATE isPerformedOn P2 SET inc = public.up(P2.inc, 'DWC8'), inc_id = P2.id  FROM durum12wheat P0, tiller_begins_fertilization P1
        WHERE P0.durum_wheat$0 = 'durum_w2' AND P1.tiller_begins_fertilization$0=P2.isPerformedOn$0 AND P2.isPerformedOn$1 = 'durum_w2';


UPDATE dose P0 SET inc = public.up(P0.inc, 'DWC9'), inc_id = P0.id FROM value P1, value P2, hasValue P3, hasValue P4, isDiff P5 
	WHERE P0.dose$0 = 'd1' AND P1.value$0=P3.hasValue$1 AND P1.value$0=P5.isDiff$0 AND P2.value$0=P4.hasValue$1 AND 
	P2.value$0=P5.isDiff$1 AND P3.hasValue$0 = 'd1' AND P3.hasValue$1=P5.isDiff$0 AND P4.hasValue$0 = 'd1' AND P4.hasValue$1=P5.isDiff$1;  
UPDATE value P1 SET inc = public.up(P1.inc, 'DWC9'), inc_id = P1.id FROM dose P0, value P2, hasValue P3, hasValue P4, isDiff P5
        WHERE P0.dose$0 = 'd1' AND P1.value$0=P3.hasValue$1 AND P1.value$0=P5.isDiff$0 AND P2.value$0=P4.hasValue$1 AND
        P2.value$0=P5.isDiff$1 AND P3.hasValue$0 = 'd1' AND P3.hasValue$1=P5.isDiff$0 AND P4.hasValue$0 = 'd1' AND P4.hasValue$1=P5.isDiff$1;
UPDATE value P2 SET inc = public.up(P2.inc, 'DWC9'), inc_id = P2.id FROM dose P0, value P1, hasValue P3, hasValue P4, isDiff P5
        WHERE P0.dose$0 = 'd1' AND P1.value$0=P3.hasValue$1 AND P1.value$0=P5.isDiff$0 AND P2.value$0=P4.hasValue$1 AND
        P2.value$0=P5.isDiff$1 AND P3.hasValue$0 = 'd1' AND P3.hasValue$1=P5.isDiff$0 AND P4.hasValue$0 = 'd1' AND P4.hasValue$1=P5.isDiff$1;
UPDATE hasValue P3 SET inc = public.up(P3.inc, 'DWC9'), inc_id = P3.id FROM dose P0, value P1, value P2, hasValue P4, isDiff P5
        WHERE P0.dose$0 = 'd1' AND P1.value$0=P3.hasValue$1 AND P1.value$0=P5.isDiff$0 AND P2.value$0=P4.hasValue$1 AND
        P2.value$0=P5.isDiff$1 AND P3.hasValue$0 = 'd1' AND P3.hasValue$1=P5.isDiff$0 AND P4.hasValue$0 = 'd1' AND P4.hasValue$1=P5.isDiff$1;
UPDATE hasValue P4 SET inc = public.up(P4.inc, 'DWC9'), inc_id = P4.id FROM dose P0, value P1, value P2, hasValue P3, isDiff P5
        WHERE P0.dose$0 = 'd1' AND P1.value$0=P3.hasValue$1 AND P1.value$0=P5.isDiff$0 AND P2.value$0=P4.hasValue$1 AND
        P2.value$0=P5.isDiff$1 AND P3.hasValue$0 = 'd1' AND P3.hasValue$1=P5.isDiff$0 AND P4.hasValue$0 = 'd1' AND P4.hasValue$1=P5.isDiff$1;
UPDATE isDiff P5 SET inc = public.up(P5.inc, 'DWC9'), inc_id = P5.id FROM dose P0, value P1, value P2, hasValue P3, hasValue P4
        WHERE P0.dose$0 = 'd1' AND P1.value$0=P3.hasValue$1 AND P1.value$0=P5.isDiff$0 AND P2.value$0=P4.hasValue$1 AND
        P2.value$0=P5.isDiff$1 AND P3.hasValue$0 = 'd1' AND P3.hasValue$1=P5.isDiff$0 AND P4.hasValue$0 = 'd1' AND P4.hasValue$1=P5.isDiff$1;




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

