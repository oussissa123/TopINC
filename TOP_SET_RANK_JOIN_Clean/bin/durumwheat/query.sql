SELECT * FROM hasPrecedent, maize, field12residue, soil WHERE hasPrecedent.hasPrecedent$0 = soil.soil$0 AND hasPrecedent.hasPrecedent$1 = maize.maize$0 -- total size = 12
SELECT * FROM hasPrecedent, isCultivatedOn, durum12wheat, soil WHERE hasPrecedent.hasPrecedent$0 = isCultivatedOn.isCultivatedOn$1 AND durum12wheat.durum_wheat$0 = isCultivatedOn.isCultivatedOn$0 AND isCultivatedOn.isCultivatedOn$1 = soil.soil$0 --15