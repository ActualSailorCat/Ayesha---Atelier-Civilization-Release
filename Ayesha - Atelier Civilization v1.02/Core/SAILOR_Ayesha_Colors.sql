-----------------------------------------------
-- PlayerColors
-----------------------------------------------
INSERT INTO Colors
        (Type,                          Color)
VALUES  ('COLOR_SAILOR_AYESHA_PRIMARY',	'49,49,33,255'),
        ('COLOR_SAILOR_AYESHA_SECONDARY','159,198,95,255');

-----------------------------------------------
-- PlayerColors
-----------------------------------------------
INSERT INTO PlayerColors (
		Type,
		Usage, 
		PrimaryColor, 
		SecondaryColor, 
		Alt1PrimaryColor, 
		Alt1SecondaryColor, 
		Alt2PrimaryColor, 
		Alt2SecondaryColor, 
		Alt3PrimaryColor, 
		Alt3SecondaryColor)
SELECT	'LEADER_SAILOR_AYESHA',
		'Unique',
		'COLOR_SAILOR_AYESHA_PRIMARY',
		'COLOR_SAILOR_AYESHA_SECONDARY',
		'COLOR_SAILOR_AYESHA_SECONDARY',
		'COLOR_SAILOR_AYESHA_PRIMARY',
		Alt1PrimaryColor AS Alt2PrimaryColor,
		Alt1SecondaryColor AS Alt2SecondaryColor,
		PrimaryColor AS Alt3PrimaryColor,
		SecondaryColor AS Alt3SecondaryColor
FROM PlayerColors WHERE Type = 'LEADER_SAILOR_TOTORI';