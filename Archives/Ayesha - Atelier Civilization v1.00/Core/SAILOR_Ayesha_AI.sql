--=============================================
-- Ilmeria / AI
--=============================================
-----------------------------------------------	
-- AiListTypes
-----------------------------------------------	
INSERT INTO AiListTypes	
		(ListType)
VALUES	('SAILOR_AYESHA_Civics'),
		('SAILOR_AYESHA_Techs'),
		('SAILOR_AYESHA_Buildings'),
		('SAILOR_AYESHA_Districts'),
		('SAILOR_AYESHA_Improvements'),
		('SAILOR_AYESHA_PseudoYields'),
		('SAILOR_AYESHA_Yields'),
		('SAILOR_AYESHA_Units'),
		('SAILOR_AYESHA_Settle'),
		('SAILOR_AYESHA_Alliances'),
		('SAILOR_AYESHA_Diploaction'),
		('SAILOR_AYESHA_Discussions'),
		('SAILOR_AYESHA_Resolutions');

-----------------------------------------------	
-- AiLists
-----------------------------------------------	
INSERT INTO AiLists	
		(ListType,							AgendaType,							System)
VALUES	('SAILOR_AYESHA_Civics',			'TRAIT_AGENDA_SAILOR_AYESHA',		'Civics'),
		('SAILOR_AYESHA_Techs',				'TRAIT_AGENDA_SAILOR_AYESHA',		'Technologies'),
		('SAILOR_AYESHA_Buildings',			'TRAIT_AGENDA_SAILOR_AYESHA',		'Buildings'),
		('SAILOR_AYESHA_Districts',			'TRAIT_AGENDA_SAILOR_AYESHA',		'Districts'),
		('SAILOR_AYESHA_Improvements',		'TRAIT_AGENDA_SAILOR_AYESHA',		'Improvements'),
		('SAILOR_AYESHA_PseudoYields',		'TRAIT_AGENDA_SAILOR_AYESHA',		'PseudoYields'),
		('SAILOR_AYESHA_Yields',			'TRAIT_AGENDA_SAILOR_AYESHA',		'Yields'),
		('SAILOR_AYESHA_Units',				'TRAIT_AGENDA_SAILOR_AYESHA',		'Units'),
		('SAILOR_AYESHA_Settle',			'TRAIT_AGENDA_SAILOR_AYESHA',		'Settle'),
		('SAILOR_AYESHA_Alliances',			'TRAIT_AGENDA_SAILOR_AYESHA',		'Alliances'),
		('SAILOR_AYESHA_Diploaction',		'TRAIT_AGENDA_SAILOR_AYESHA',		'DiplomaticActions'),
		('SAILOR_AYESHA_Discussions',		'TRAIT_AGENDA_SAILOR_AYESHA',		'Discussions'),
		('SAILOR_AYESHA_Resolutions',		'TRAIT_AGENDA_SAILOR_AYESHA',		'Resolutions');

-----------------------------------------------	
-- AiFavoredItems
-----------------------------------------------
INSERT INTO AiFavoredItems	
		(ListType,							Favored,	Item,								Value)
VALUES	
-- YIELDS
		('SAILOR_AYESHA_Yields',			1,			'YIELD_CULTURE',					0),		
-- PSEUDOYIELDS
		('SAILOR_AYESHA_PseudoYields',		1,			'PSEUDOYIELD_GPP_SCIENTIST',		25),
		('SAILOR_AYESHA_PseudoYields',		1,			'PSEUDOYIELD_GPP_ENGINEER',			25),
		('SAILOR_AYESHA_PseudoYields',		1,			'PSEUDOYIELD_GPP_MERCHANT',			25),
		('SAILOR_AYESHA_PseudoYields',		1,			'PSEUDOYIELD_SPACE_RACE',			0),
		('SAILOR_AYESHA_PseudoYields',		1,			'PSEUDOYIELD_TECHNOLOGY',			0),
-- UNITS
		('SAILOR_AYESHA_Units',				1,			'UNIT_SAILOR_ATLEER_UU',			0),
		('SAILOR_AYESHA_Units',				1,			'UNIT_ARCHAEOLOGIST',				50),
-- BUILDINGS & DISTRICTS
		('SAILOR_AYESHA_Districts',			1,			'DISTRICT_THEATER',					25),
		('SAILOR_AYESHA_Buildings',			1,			'BUILDING_MUSEUM_ARTIFACT',			50),			
-- IMPROVEMENTS
		('SAILOR_AYESHA_Improvements',		1,			'IMPROVEMENT_SAILOR_ATLEER_UI',		50),
-- WONDERS
		('SAILOR_AYESHA_Buildings',			1,			'BUILDING_TERRACOTTA_ARMY',			50),
		('SAILOR_AYESHA_Buildings',			1,			'BUILDING_GREAT_LIBRARY',			0),
-- CIVICS & TECHS
		('SAILOR_AYESHA_Civics',			1,			'CIVIC_CRAFTSMANSHIP',				0), 
		('SAILOR_AYESHA_Civics',			1,			'CIVIC_RECORDED_HISTORY',			0), 
		('SAILOR_AYESHA_Civics',			1,			'CIVIC_NATURAL_HISTORY',			0), 
		('SAILOR_AYESHA_Civics',			1,			'CIVIC_HUMANISM',					0), 
		('SAILOR_AYESHA_Techs',				1,			'TECH_CONSTRUCTION',				0), 
		('SAILOR_AYESHA_Techs',				1,			'TECH_CHEMISTRY',					0),
-- ALLIANCES
		('SAILOR_AYESHA_Alliances',			1,			'ALLIANCE_CULTURE',					0),
-- DIPLOACTION
		('SAILOR_AYESHA_Diploaction',		1,			'DIPLOACTION_ALLIANCE_CULTURAL',	0),
		('SAILOR_AYESHA_Diploaction',		1,			'DIPLOACTION_MAKE_PEACE',			0),
-- DISCUSSIONS
		('SAILOR_AYESHA_Discussions',		0,			'WC_EMERGENCY_MILITARY',			0),
		('SAILOR_AYESHA_Discussions',		1,			'WC_EMERGENCY_CITY_STATE',			0),
		('SAILOR_AYESHA_Discussions',		0,			'WC_EMERGENCY_NOBEL_PRIZE_PHYSICS',	0),
		('SAILOR_AYESHA_Discussions',		1,			'WC_EMERGENCY_CLIMATE_ACCORDS',		0),
		('SAILOR_AYESHA_Discussions',		1,			'WC_EMERGENCY_WORLD_FAIR',			0),
		('SAILOR_AYESHA_Discussions',		0,			'WC_EMERGENCY_SPACE_STATION',		0),
		('SAILOR_AYESHA_Discussions',		0,			'WC_EMERGENCY_RELIGIOUS',			0),
		('SAILOR_AYESHA_Discussions',		0,			'WC_EMERGENCY_BACKSTAB',			0),
		('SAILOR_AYESHA_Discussions',		1,			'WC_EMERGENCY_REQUEST_AID',			0),
		('SAILOR_AYESHA_Discussions',		0,			'WC_EMERGENCY_NUCLEAR',				0),
		('SAILOR_AYESHA_Discussions',		1,			'WC_EMERGENCY_WORLD_GAMES',			0),
-- RESOLUTIONS
		('SAILOR_AYESHA_Resolutions',		1,			'WC_RES_LUXURY',					0),
		('SAILOR_AYESHA_Resolutions',		1,			'WC_RES_PATRONAGE',					0);
-- SETTLE
INSERT INTO AiFavoredItems
		(ListType,					Item,				Favored,	StringVal,					Value)
VALUES  ('SAILOR_AYESHA_Settle',	'Resource Class',	1,			'RESOURCECLASS_BONUS',		50),
		('SAILOR_AYESHA_Settle',	'Resource Class',	1,			'RESOURCECLASS_STRATEGIC',	50),
		('SAILOR_AYESHA_Settle',	'Resource Class',	1,			'RESOURCECLASS_LUXURY',		50);