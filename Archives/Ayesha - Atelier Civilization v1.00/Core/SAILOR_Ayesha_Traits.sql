--=============================================
-- AYESHA / Traits
--=============================================
-----------------------------------------------	
-- Types
-----------------------------------------------	
INSERT INTO Types 
		(Type,								Kind)
VALUES	('TRAIT_LEADER_SAILOR_AYESHA_UA',	'KIND_TRAIT'),
		('ABILITY_SAILOR_AYESHA_UA_APOC',	'KIND_ABILITY');

-----------------------------------------------	
-- TypeTags
-----------------------------------------------	
INSERT INTO TypeTags
				(Type,								Tag)
SELECT DISTINCT	'ABILITY_SAILOR_AYESHA_UA_APOC',	Tag
FROM TypeTags WHERE Type IN (SELECT UnitType FROM Units WHERE PromotionClass IS NOT NULL
AND (TraitType IS NULL OR TraitType = 'TRAIT_CIVILIZATION_UNIT_SAILOR_ATLEER_UU')
AND ReligiousStrength = 0);

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,						Name, Description, Inactive, Permanent)
VALUES	('ABILITY_SAILOR_AYESHA_UA_APOC',		NULL, NULL,		   1,		 1);


-----------------------------------------------
-- Traits
-----------------------------------------------
INSERT INTO Traits
		(TraitType,									Name,												Description)
VALUES	('TRAIT_LEADER_SAILOR_AYESHA_UA',			'LOC_TRAIT_LEADER_SAILOR_AYESHA_UA_NAME',			'LOC_TRAIT_LEADER_SAILOR_AYESHA_UA_DESCRIPTION');

-----------------------------------------------
-- LeaderTraits
-----------------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,						TraitType)
VALUES	('LEADER_SAILOR_AYESHA',			'TRAIT_LEADER_SAILOR_AYESHA_UA');

-----------------------------------------------			
-- TraitModifiers		
-----------------------------------------------	
INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_LEADER_SAILOR_AYESHA_UA',	'SAILOR_AYESHA_UA_ANTIQUITIES'),
		('TRAIT_LEADER_SAILOR_AYESHA_UA',	'SAILOR_AYESHA_UA_GRANT_APOC');

-----------------------------------------------	
-- UnitAbilityModifiers
-----------------------------------------------	
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,					ModifierId)
VALUES	('ABILITY_SAILOR_AYESHA_UA_APOC',	'SAILOR_AYESHA_UA_APOC_MOD');


-----------------------------------------------
-- Modifiers
-----------------------------------------------
INSERT INTO Modifiers
		(ModifierId,						ModifierType,										SubjectRequirementSetId)
VALUES	('SAILOR_AYESHA_UA_ANTIQUITIES',	'MODIFIER_PLAYER_GRANT_FREE_RESOURCE_VISIBILITY',	NULL),
		('SAILOR_AYESHA_UA_APOC_MOD',		'MODIFIER_PLAYER_UNIT_ADJUST_HEAL_PER_TURN',		'SAILOR_AYESHA_UA_REQUIRES_RESOURCE_ON_TILE'),
		('SAILOR_AYESHA_UA_GRANT_APOC',		'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				NULL);		

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,						Name,				Value)
VALUES	('SAILOR_AYESHA_UA_ANTIQUITIES',	'ResourceType',		'RESOURCE_ANTIQUITY_SITE'),
		('SAILOR_AYESHA_UA_APOC_MOD',		'Amount',			10),
		('SAILOR_AYESHA_UA_APOC_MOD',		'Type',				'ALL'),
		('SAILOR_AYESHA_UA_GRANT_APOC',		'AbilityType',		'ABILITY_SAILOR_AYESHA_UA_APOC');

-----------------------------------------------		
-- RequirementSets
-----------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType)
VALUES	('SAILOR_AYESHA_UA_REQUIRES_RESOURCE_ON_TILE',		'REQUIREMENTSET_TEST_ANY');

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,										RequirementId)
SELECT DISTINCT	'SAILOR_AYESHA_UA_REQUIRES_RESOURCE_ON_TILE',	'SAILOR_AYESHA_UA_REQUIRES_'||ResourceClassType
FROM Resources WHERE ResourceClassType IS NOT NULL;

-----------------------------------------------
-- Requirements
-----------------------------------------------
INSERT INTO Requirements
		(RequirementId,												RequirementType)
SELECT DISTINCT	'SAILOR_AYESHA_UA_REQUIRES_'||ResourceClassType,	'REQUIREMENT_PLOT_RESOURCE_CLASS_TYPE_MATCHES'
FROM Resources WHERE ResourceClassType IS NOT NULL;

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
INSERT INTO RequirementArguments 
		(RequirementId,												Name,					Value) 
SELECT DISTINCT 'SAILOR_AYESHA_UA_REQUIRES_'||ResourceClassType,	'ResourceClassType',	ResourceClassType
FROM Resources WHERE ResourceClassType IS NOT NULL;