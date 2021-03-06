/* Restore Flirtatious and Curmudgeon by SailorCat */

INSERT INTO Types
		(Type,									Kind)
VALUES	('TRAIT_AGENDA_SAILOR_FLIRTATIOUS',		'KIND_TRAIT'),
		('TRAIT_AGENDA_SAILOR_CURMUDGEON',		'KIND_TRAIT');

INSERT INTO Traits
		(TraitType,								Name,			Description)
VALUES	('TRAIT_AGENDA_SAILOR_FLIRTATIOUS',		'Placeholder',	'Placeholder'),
		('TRAIT_AGENDA_SAILOR_CURMUDGEON',		'Placeholder',	'Placeholder');

INSERT INTO Agendas
		(AgendaType,							Name,										Description)
VALUES	('AGENDA_SAILOR_FLIRTATIOUS',			'LOC_AGENDA_SAILOR_FLIRTATIOUS_NAME',		'LOC_AGENDA_SAILOR_FLIRTATIOUS_DESCRIPTION'),
		('AGENDA_SAILOR_CURMUDGEON',			'LOC_AGENDA_SAILOR_CURMUDGEON_NAME',		'LOC_AGENDA_SAILOR_CURMUDGEON_DESCRIPTION');

INSERT INTO RandomAgendas
		(AgendaType,							GameLimit)
VALUES	('AGENDA_SAILOR_FLIRTATIOUS',			3);

INSERT INTO RandomAgendas
		(AgendaType)
VALUES	('AGENDA_SAILOR_CURMUDGEON');

INSERT INTO AgendaPreferredLeaders
		(AgendaType,					LeaderType,						PercentageChance)
VALUES	('AGENDA_SAILOR_FLIRTATIOUS',	'LEADER_CATHERINE_DE_MEDICI',	10),
		('AGENDA_SAILOR_FLIRTATIOUS',	'LEADER_CHANDRAGUPTA',			10),
		('AGENDA_SAILOR_FLIRTATIOUS',	'LEADER_CLEOPATRA',				30),
		('AGENDA_SAILOR_FLIRTATIOUS',	'LEADER_GILGAMESH',				15),
		('AGENDA_SAILOR_FLIRTATIOUS',	'LEADER_PETER_GREAT',			15),
		('AGENDA_SAILOR_FLIRTATIOUS',	'LEADER_PHILIP_II',				15);

INSERT INTO AgendaPreferredLeaders
		(AgendaType,					LeaderType,						PercentageChance)
SELECT	'AGENDA_SAILOR_FLIRTATIOUS',	'LEADER_GITARJA',				15
WHERE EXISTS (SELECT LeaderType FROM Leaders WHERE LeaderType = 'LEADER_GITARJA');

INSERT INTO AgendaPreferredLeaders
		(AgendaType,					LeaderType,						PercentageChance)
SELECT	'AGENDA_SAILOR_FLIRTATIOUS',	'LEADER_ALEXANDER',				15
WHERE EXISTS (SELECT LeaderType FROM Leaders WHERE LeaderType = 'LEADER_ALEXANDER');

/* Begin Expac 2 */
INSERT INTO AgendaPreferredLeaders
		(AgendaType,					LeaderType,						PercentageChance)
SELECT	'AGENDA_SAILOR_FLIRTATIOUS',	'LEADER_ELEANOR_ENGLAND',		15
WHERE EXISTS (SELECT LeaderType FROM Leaders WHERE LeaderType = 'LEADER_ELEANOR_ENGLAND');

INSERT INTO AgendaPreferredLeaders
		(AgendaType,					LeaderType,						PercentageChance)
SELECT	'AGENDA_SAILOR_FLIRTATIOUS',	'LEADER_ELEANOR_FRANCE',		15
WHERE EXISTS (SELECT LeaderType FROM Leaders WHERE LeaderType = 'LEADER_ELEANOR_FRANCE');
/* End Expac 2 */

INSERT INTO AgendaTraits
		(AgendaType,					TraitType)
VALUES	('AGENDA_SAILOR_FLIRTATIOUS',	'TRAIT_AGENDA_SAILOR_FLIRTATIOUS'),
		('AGENDA_SAILOR_CURMUDGEON',	'TRAIT_AGENDA_SAILOR_CURMUDGEON');

INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_AGENDA_SAILOR_FLIRTATIOUS',	'AGENDA_SAILOR_FLIRTATIOUS_POSITIVE'),
		('TRAIT_AGENDA_SAILOR_FLIRTATIOUS',	'AGENDA_SAILOR_FLIRTATIOUS_NEGATIVE'),
		('TRAIT_AGENDA_SAILOR_CURMUDGEON',	'AGENDA_SAILOR_CURMUDGEON_POSITIVE'),
		('TRAIT_AGENDA_SAILOR_CURMUDGEON',	'AGENDA_SAILOR_CURMUDGEON_NEGATIVE');

INSERT INTO Modifiers
		(ModifierId,								ModifierType,									SubjectRequirementSetId)
VALUES	('AGENDA_SAILOR_FLIRTATIOUS_POSITIVE',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'SAILOR_REQUIRES_OPPOSITE_SEX'),
		('AGENDA_SAILOR_FLIRTATIOUS_NEGATIVE',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'SAILOR_REQUIRES_SAME_SEX'),
		('AGENDA_SAILOR_CURMUDGEON_POSITIVE',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'SAILOR_REQUIRES_SAME_SEX'),
		('AGENDA_SAILOR_CURMUDGEON_NEGATIVE',		'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'SAILOR_REQUIRES_OPPOSITE_SEX');

INSERT INTO ModifierArguments
		(ModifierId,							Name,							Value)
VALUES	-- Flirtatious
		('AGENDA_SAILOR_FLIRTATIOUS_POSITIVE',	'InitialValue',					6),
		('AGENDA_SAILOR_FLIRTATIOUS_POSITIVE',	'StatementKey',					'LOC_DIPLO_KUDO_LEADER_ANY_REASON_AGENDA_SAILOR_FLIRTATIOUS_POSITIVE'),
		('AGENDA_SAILOR_FLIRTATIOUS_POSITIVE',	'HiddenAgenda',					1),
		('AGENDA_SAILOR_FLIRTATIOUS_POSITIVE',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_DESCRIPTION_SAILOR_FLIRTATIOUS_POSITIVE'),

		('AGENDA_SAILOR_FLIRTATIOUS_NEGATIVE',	'InitialValue',					6),
		('AGENDA_SAILOR_FLIRTATIOUS_NEGATIVE',	'StatementKey',					'LOC_DIPLO_KUDO_LEADER_ANY_REASON_AGENDA_SAILOR_FLIRTATIOUS_NEGATIVE'),
		('AGENDA_SAILOR_FLIRTATIOUS_NEGATIVE',	'HiddenAgenda',					1),
		('AGENDA_SAILOR_FLIRTATIOUS_NEGATIVE',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_DESCRIPTION_SAILOR_FLIRTATIOUS_NEGATIVE'),
		-- Curmudgeon
		('AGENDA_SAILOR_CURMUDGEON_POSITIVE',	'InitialValue',					6),
		('AGENDA_SAILOR_CURMUDGEON_POSITIVE',	'StatementKey',					'LOC_DIPLO_KUDO_LEADER_ANY_REASON_AGENDA_SAILOR_CURMUDGEON_POSITIVE'),
		('AGENDA_SAILOR_CURMUDGEON_POSITIVE',	'HiddenAgenda',					1),
		('AGENDA_SAILOR_CURMUDGEON_POSITIVE',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_DESCRIPTION_SAILOR_CURMUDGEON_POSITIVE'),

		('AGENDA_SAILOR_CURMUDGEON_NEGATIVE',	'InitialValue',					6),
		('AGENDA_SAILOR_CURMUDGEON_NEGATIVE',	'StatementKey',					'LOC_DIPLO_KUDO_LEADER_ANY_REASON_AGENDA_SAILOR_CURMUDGEON_NEGATIVE'),
		('AGENDA_SAILOR_CURMUDGEON_NEGATIVE',	'HiddenAgenda',					1),
		('AGENDA_SAILOR_CURMUDGEON_NEGATIVE',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_DESCRIPTION_SAILOR_CURMUDGEON_NEGATIVE');

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('SAILOR_REQUIRES_OPPOSITE_SEX',		'REQUIREMENTSET_TEST_ALL'),
		('SAILOR_REQUIRES_SAME_SEX',			'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('SAILOR_REQUIRES_OPPOSITE_SEX',		'REQUIRES_OPPOSITE_SEX'),
		('SAILOR_REQUIRES_OPPOSITE_SEX',		'REQUIRES_MET_30_TURNS_AGO'),
		('SAILOR_REQUIRES_SAME_SEX',			'REQUIRES_SAME_SEX'),
		('SAILOR_REQUIRES_SAME_SEX',			'REQUIRES_MET_30_TURNS_AGO');

INSERT INTO ModifierStrings
		(ModifierId,									Context,			Text)
VALUES	('AGENDA_SAILOR_FLIRTATIOUS_POSITIVE',			'Sample',			'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_SAILOR_FLIRTATIOUS_NEGATIVE',			'Sample',			'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_SAILOR_CURMUDGEON_POSITIVE',			'Sample',			'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('AGENDA_SAILOR_CURMUDGEON_NEGATIVE',			'Sample',			'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');
