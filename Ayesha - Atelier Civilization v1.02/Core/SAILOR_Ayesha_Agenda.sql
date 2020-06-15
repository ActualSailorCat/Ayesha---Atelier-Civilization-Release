--=============================================
-- AYESHA / Agenda
--=============================================
-----------------------------------------------	
-- Types
-----------------------------------------------	
INSERT INTO Types
		(Type,							Kind)
VALUES	('TRAIT_AGENDA_SAILOR_AYESHA',	'KIND_TRAIT');

-----------------------------------------------	
-- Agendas
-----------------------------------------------	
INSERT INTO Agendas
		(AgendaType,				Name,								Description)
VALUES	('AGENDA_SAILOR_AYESHA',	'LOC_AGENDA_SAILOR_AYESHA_NAME',	'LOC_AGENDA_SAILOR_AYESHA_DESCRIPTION');

-----------------------------------------------	
-- Traits
-----------------------------------------------	
INSERT INTO Traits
		(TraitType,						Name,					Description)
VALUES	('TRAIT_AGENDA_SAILOR_AYESHA',	'LOC_PLACEHOLDER',		'LOC_PLACEHOLDER');

-----------------------------------------------	
-- AgendaTraits
-----------------------------------------------	
INSERT INTO AgendaTraits
		(AgendaType,					TraitType)
VALUES	('AGENDA_SAILOR_AYESHA',		'TRAIT_AGENDA_SAILOR_AYESHA');

-----------------------------------------------	
-- TraitModifiers
-----------------------------------------------	
INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_AGENDA_SAILOR_AYESHA',		'AGENDA_SAILOR_AYESHA_APOTHECARY');

-----------------------------------------------	
-- Modifiers
-----------------------------------------------	
INSERT INTO Modifiers	
		(ModifierId,							ModifierType,										OwnerRequirementSetId,		SubjectRequirementSetId)
VALUES	('AGENDA_SAILOR_AYESHA_APOTHECARY',		'MODIFIER_PLAYER_DIPLOMACY_AGENDA_EXPLOITATIVE',	'ON_TURN_STARTED',			'PLAYER_IS_MAJOR_CIV_KNOWN_10_TURNS');

-----------------------------------------------	
-- ModifierArguments
-----------------------------------------------	
INSERT INTO ModifierArguments
		(ModifierId,							Name,								Value)
VALUES	('AGENDA_SAILOR_AYESHA_APOTHECARY',		'HighScoreThreshold',				15),
		('AGENDA_SAILOR_AYESHA_APOTHECARY',		'IncrementValue',					0),
		('AGENDA_SAILOR_AYESHA_APOTHECARY',		'InitialValue',						0),
		('AGENDA_SAILOR_AYESHA_APOTHECARY',		'LowScoreThreshold',				-15),
		('AGENDA_SAILOR_AYESHA_APOTHECARY',		'MaxDiploModifierMagnitude',		10),
		('AGENDA_SAILOR_AYESHA_APOTHECARY',		'NationalParkConstructionValue',	0),
		('AGENDA_SAILOR_AYESHA_APOTHECARY',		'PlotFeatureRemovalValue',			1),
		('AGENDA_SAILOR_AYESHA_APOTHECARY',		'SimpleModifierDescription',		'LOC_DIPLO_MODIFIER_DESCRIPTION_EXPLOITATION'),
		('AGENDA_SAILOR_AYESHA_APOTHECARY',		'StatementKey',						'LOC_DIPLO_KUDO_LEADER_ANY_REASON_AGENDA_EXPLOITATION'),
		('AGENDA_SAILOR_AYESHA_APOTHECARY',		'TileImprovementHighThreshold',		75),
		('AGENDA_SAILOR_AYESHA_APOTHECARY',		'TileImprovementLowThreshold',		35),
		('AGENDA_SAILOR_AYESHA_APOTHECARY',		'TileImprovementPreferenceValue',	9);

-----------------------------------------------	
-- HistoricalAgendas
-----------------------------------------------	
INSERT INTO HistoricalAgendas
		(LeaderType,				AgendaType)
VALUES	('LEADER_SAILOR_AYESHA',	'AGENDA_SAILOR_AYESHA');

-----------------------------------------------	
-- ExclusiveAgendas
-----------------------------------------------	
INSERT INTO ExclusiveAgendas
		(AgendaOne,					AgendaTwo)
VALUES	('AGENDA_SAILOR_AYESHA',	'AGENDA_EXPLOITATIVE');

-----------------------------------------------	
-- ModifierStrings
-----------------------------------------------	
INSERT INTO ModifierStrings
		(ModifierId,						Context,		Text)
VALUES	('AGENDA_SAILOR_AYESHA_APOTHECARY',	'Sample',		'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');