-- CreateTable
CREATE TABLE "Abilities" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,
    "generationId" INTEGER NOT NULL,
    "isMainSeries" BOOLEAN,

    CONSTRAINT "Abilities_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AbilityChangelog" (
    "id" SERIAL NOT NULL,
    "abilityId" INTEGER NOT NULL,
    "changedInVersionGroupId" INTEGER NOT NULL,

    CONSTRAINT "AbilityChangelog_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AbilityChangelogProse" (
    "id" SERIAL NOT NULL,
    "abilityChangelogId" INTEGER NOT NULL,
    "localLanguageId" INTEGER NOT NULL,
    "effect" TEXT NOT NULL,

    CONSTRAINT "AbilityChangelogProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AbilityFlavorText" (
    "id" SERIAL NOT NULL,
    "abilityId" INTEGER,
    "versionGroupId" INTEGER,
    "languageId" INTEGER,
    "flavorText" TEXT,

    CONSTRAINT "AbilityFlavorText_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AbilityNames" (
    "id" SERIAL NOT NULL,
    "abilityId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "AbilityNames_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AbilityProse" (
    "id" SERIAL NOT NULL,
    "abilityId" INTEGER,
    "localLanguageId" INTEGER,
    "shortEffect" TEXT,
    "effect" TEXT,

    CONSTRAINT "AbilityProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Berries" (
    "id" SERIAL NOT NULL,
    "itemId" INTEGER,
    "firmnessId" INTEGER,
    "naturalGiftPower" TEXT,
    "naturalGiftTypeId" INTEGER,
    "size" TEXT,
    "maxHarvest" TEXT,
    "growthTime" TEXT,
    "soilDryness" TEXT,
    "smoothness" TEXT,

    CONSTRAINT "Berries_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BerryFirmness" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,

    CONSTRAINT "BerryFirmness_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BerryFirmnessNames" (
    "id" SERIAL NOT NULL,
    "berryFirmnessId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "BerryFirmnessNames_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BerryFlavors" (
    "id" SERIAL NOT NULL,
    "berryId" INTEGER,
    "contestTypeId" INTEGER,
    "flavor" TEXT,

    CONSTRAINT "BerryFlavors_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CharacteristicText" (
    "id" SERIAL NOT NULL,
    "characteristicId" INTEGER,
    "localLanguageId" INTEGER,
    "message" TEXT,

    CONSTRAINT "CharacteristicText_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Characteristics" (
    "id" SERIAL NOT NULL,
    "statId" INTEGER,
    "geneMod5" TEXT,

    CONSTRAINT "Characteristics_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContestCombos" (
    "id" SERIAL NOT NULL,
    "firstMoveId" INTEGER,
    "secondMoveId" INTEGER,

    CONSTRAINT "ContestCombos_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContestEffectProse" (
    "id" SERIAL NOT NULL,
    "contestEffectId" INTEGER,
    "localLanguageId" INTEGER,
    "flavorText" TEXT,
    "effect" TEXT,

    CONSTRAINT "ContestEffectProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContestEffects" (
    "id" SERIAL NOT NULL,
    "appeal" TEXT,
    "jam" TEXT,

    CONSTRAINT "ContestEffects_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContestTypeNames" (
    "id" SERIAL NOT NULL,
    "contestTypeId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,
    "flavor" TEXT,
    "color" TEXT,

    CONSTRAINT "ContestTypeNames_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ContestTypes" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,

    CONSTRAINT "ContestTypes_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EggGroupProse" (
    "id" SERIAL NOT NULL,
    "eggGroupId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "EggGroupProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EggGroups" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,

    CONSTRAINT "EggGroups_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EncounterConditionProse" (
    "id" SERIAL NOT NULL,
    "encounterConditionId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "EncounterConditionProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EncounterConditionValueMap" (
    "id" SERIAL NOT NULL,
    "encounterId" INTEGER,
    "encounterConditionValueId" INTEGER,

    CONSTRAINT "EncounterConditionValueMap_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EncounterConditionValueProse" (
    "id" SERIAL NOT NULL,
    "encounterConditionValueId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "EncounterConditionValueProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EncounterConditionValues" (
    "id" SERIAL NOT NULL,
    "encounterConditionId" INTEGER,
    "identifier" TEXT,
    "isDefault" BOOLEAN,

    CONSTRAINT "EncounterConditionValues_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EncounterConditions" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,

    CONSTRAINT "EncounterConditions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EncounterMethodProse" (
    "id" SERIAL NOT NULL,
    "encounterMethodId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "EncounterMethodProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EncounterMethods" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,
    "order" TEXT,

    CONSTRAINT "EncounterMethods_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EncounterSlots" (
    "id" SERIAL NOT NULL,
    "versionGroupId" INTEGER,
    "encounterMethodId" INTEGER,
    "slot" TEXT,
    "rarity" TEXT,

    CONSTRAINT "EncounterSlots_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Encounters" (
    "id" SERIAL NOT NULL,
    "versionId" INTEGER,
    "locationAreaId" INTEGER,
    "encounterSlotId" INTEGER,
    "pokemonId" INTEGER,
    "minLevel" TEXT,
    "maxLevel" TEXT,

    CONSTRAINT "Encounters_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EvolutionChains" (
    "id" SERIAL NOT NULL,
    "babyTriggerItemId" INTEGER,

    CONSTRAINT "EvolutionChains_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EvolutionTriggerProse" (
    "id" SERIAL NOT NULL,
    "evolutionTriggerId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "EvolutionTriggerProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EvolutionTriggers" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,

    CONSTRAINT "EvolutionTriggers_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Experience" (
    "id" SERIAL NOT NULL,
    "growthRateId" INTEGER,
    "level" TEXT,
    "experience" TEXT,

    CONSTRAINT "Experience_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Genders" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,

    CONSTRAINT "Genders_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "GenerationNames" (
    "id" SERIAL NOT NULL,
    "generationId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "GenerationNames_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Generations" (
    "id" SERIAL NOT NULL,
    "mainRegionId" INTEGER,
    "identifier" TEXT,

    CONSTRAINT "Generations_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "GrowthRateProse" (
    "id" SERIAL NOT NULL,
    "growthRateId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "GrowthRateProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "GrowthRates" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,
    "formula" TEXT,

    CONSTRAINT "GrowthRates_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ItemCategories" (
    "id" SERIAL NOT NULL,
    "pocketId" INTEGER,
    "identifier" TEXT,

    CONSTRAINT "ItemCategories_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ItemCategoryProse" (
    "id" SERIAL NOT NULL,
    "itemCategoryId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "ItemCategoryProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ItemFlagMap" (
    "id" SERIAL NOT NULL,
    "itemId" INTEGER,
    "itemFlagId" INTEGER,

    CONSTRAINT "ItemFlagMap_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ItemFlagProse" (
    "id" SERIAL NOT NULL,
    "itemFlagId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,
    "description" TEXT,

    CONSTRAINT "ItemFlagProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ItemFlags" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,

    CONSTRAINT "ItemFlags_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ItemFlavorText" (
    "id" SERIAL NOT NULL,
    "itemId" INTEGER,
    "versionGroupId" INTEGER,
    "languageId" INTEGER,
    "flavorText" TEXT,

    CONSTRAINT "ItemFlavorText_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ItemFlingEffectProse" (
    "id" SERIAL NOT NULL,
    "itemFlingEffectId" INTEGER,
    "localLanguageId" INTEGER,
    "effect" TEXT,

    CONSTRAINT "ItemFlingEffectProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ItemFlingEffects" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,

    CONSTRAINT "ItemFlingEffects_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ItemGameIndices" (
    "id" SERIAL NOT NULL,
    "itemId" INTEGER,
    "generationId" INTEGER,
    "gameIndex" TEXT,

    CONSTRAINT "ItemGameIndices_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ItemNames" (
    "id" SERIAL NOT NULL,
    "itemId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "ItemNames_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ItemPocketNames" (
    "id" SERIAL NOT NULL,
    "itemPocketId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "ItemPocketNames_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ItemPockets" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,

    CONSTRAINT "ItemPockets_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ItemProse" (
    "id" SERIAL NOT NULL,
    "itemId" INTEGER,
    "localLanguageId" INTEGER,
    "shortEffect" TEXT,
    "effect" TEXT,

    CONSTRAINT "ItemProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Items" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,
    "categoryId" INTEGER,
    "cost" TEXT,
    "flingPower" TEXT,
    "flingEffectId" INTEGER,

    CONSTRAINT "Items_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "LanguageNames" (
    "id" SERIAL NOT NULL,
    "languageId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "LanguageNames_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Languages" (
    "id" SERIAL NOT NULL,
    "iso639" TEXT,
    "iso3166" TEXT,
    "identifier" TEXT,
    "official" TEXT,
    "order" TEXT,

    CONSTRAINT "Languages_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "LocationAreaEncounterRates" (
    "id" SERIAL NOT NULL,
    "locationAreaId" INTEGER,
    "encounterMethodId" INTEGER,
    "versionId" INTEGER,
    "rate" TEXT,

    CONSTRAINT "LocationAreaEncounterRates_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "LocationAreaProse" (
    "id" SERIAL NOT NULL,
    "locationAreaId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "LocationAreaProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "LocationAreas" (
    "id" SERIAL NOT NULL,
    "locationId" INTEGER,
    "gameIndex" TEXT,
    "identifier" TEXT,

    CONSTRAINT "LocationAreas_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "LocationGameIndices" (
    "id" SERIAL NOT NULL,
    "locationId" INTEGER,
    "generationId" INTEGER,
    "gameIndex" TEXT,

    CONSTRAINT "LocationGameIndices_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "LocationNames" (
    "id" SERIAL NOT NULL,
    "locationId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,
    "subtitle" TEXT,

    CONSTRAINT "LocationNames_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Locations" (
    "id" SERIAL NOT NULL,
    "regionId" INTEGER,
    "identifier" TEXT,

    CONSTRAINT "Locations_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Machines" (
    "id" SERIAL NOT NULL,
    "machineNumber" TEXT,
    "versionGroupId" INTEGER,
    "itemId" INTEGER,
    "moveId" INTEGER,

    CONSTRAINT "Machines_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MoveBattleStyleProse" (
    "id" SERIAL NOT NULL,
    "moveBattleStyleId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "MoveBattleStyleProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MoveBattleStyles" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,

    CONSTRAINT "MoveBattleStyles_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MoveChangelog" (
    "id" SERIAL NOT NULL,
    "moveId" INTEGER,
    "changedInVersionGroupId" INTEGER,
    "typeId" INTEGER,
    "power" TEXT,
    "pp" TEXT,
    "accuracy" TEXT,
    "priority" TEXT,
    "targetId" INTEGER,
    "effectId" INTEGER,
    "effectChance" TEXT,

    CONSTRAINT "MoveChangelog_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MoveDamageClassProse" (
    "id" SERIAL NOT NULL,
    "moveDamageClassId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,
    "description" TEXT,

    CONSTRAINT "MoveDamageClassProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MoveDamageClasses" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,

    CONSTRAINT "MoveDamageClasses_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MoveEffectChangelog" (
    "id" SERIAL NOT NULL,
    "effectId" INTEGER,
    "changedInVersionGroupId" INTEGER,

    CONSTRAINT "MoveEffectChangelog_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MoveEffectChangelogProse" (
    "id" SERIAL NOT NULL,
    "moveEffectChangelogId" INTEGER,
    "localLanguageId" INTEGER,
    "effect" TEXT,

    CONSTRAINT "MoveEffectChangelogProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MoveEffectProse" (
    "id" SERIAL NOT NULL,
    "moveEffectId" INTEGER,
    "localLanguageId" INTEGER,
    "shortEffect" TEXT,
    "effect" TEXT,

    CONSTRAINT "MoveEffectProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MoveEffects" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "MoveEffects_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MoveFlagMap" (
    "id" SERIAL NOT NULL,
    "moveId" INTEGER,
    "moveFlagId" INTEGER,

    CONSTRAINT "MoveFlagMap_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MoveFlagProse" (
    "id" SERIAL NOT NULL,
    "moveFlagId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,
    "description" TEXT,

    CONSTRAINT "MoveFlagProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MoveFlags" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,

    CONSTRAINT "MoveFlags_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MoveFlavorText" (
    "id" SERIAL NOT NULL,
    "moveId" INTEGER,
    "versionGroupId" INTEGER,
    "languageId" INTEGER,
    "flavorText" TEXT,

    CONSTRAINT "MoveFlavorText_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MoveMeta" (
    "id" SERIAL NOT NULL,
    "moveId" INTEGER,
    "metaCategoryId" INTEGER,
    "metaAilmentId" INTEGER,
    "minHits" TEXT,
    "maxHits" TEXT,
    "minTurns" TEXT,
    "maxTurns" TEXT,
    "drain" TEXT,
    "healing" TEXT,
    "critRate" TEXT,
    "ailmentChance" TEXT,
    "flinchChance" TEXT,
    "statChance" TEXT,

    CONSTRAINT "MoveMeta_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MoveMetaAilmentNames" (
    "id" SERIAL NOT NULL,
    "moveMetaAilmentId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "MoveMetaAilmentNames_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MoveMetaAilments" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,

    CONSTRAINT "MoveMetaAilments_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MoveMetaCategories" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,

    CONSTRAINT "MoveMetaCategories_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MoveMetaCategoryProse" (
    "id" SERIAL NOT NULL,
    "moveMetaCategoryId" INTEGER,
    "localLanguageId" INTEGER,
    "description" TEXT,

    CONSTRAINT "MoveMetaCategoryProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MoveMetaStatChanges" (
    "id" SERIAL NOT NULL,
    "moveId" INTEGER,
    "statId" INTEGER,
    "change" TEXT,

    CONSTRAINT "MoveMetaStatChanges_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MoveNames" (
    "id" SERIAL NOT NULL,
    "moveId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "MoveNames_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MoveTargetProse" (
    "id" SERIAL NOT NULL,
    "moveTargetId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,
    "description" TEXT,

    CONSTRAINT "MoveTargetProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "MoveTargets" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,

    CONSTRAINT "MoveTargets_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Moves" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,
    "generationId" INTEGER,
    "typeId" INTEGER,
    "power" TEXT,
    "pp" TEXT,
    "accuracy" TEXT,
    "priority" TEXT,
    "targetId" INTEGER,
    "damageClassId" INTEGER,
    "effectId" INTEGER,
    "effectChance" TEXT,
    "contestTypeId" INTEGER,
    "contestEffectId" INTEGER,
    "superContestEffectId" INTEGER,

    CONSTRAINT "Moves_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "NatureBattleStylePreferences" (
    "id" SERIAL NOT NULL,
    "natureId" INTEGER,
    "moveBattleStyleId" INTEGER,
    "lowHpPreference" TEXT,
    "highHpPreference" TEXT,

    CONSTRAINT "NatureBattleStylePreferences_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "NatureNames" (
    "id" SERIAL NOT NULL,
    "natureId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "NatureNames_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "NaturePokeathlonStats" (
    "id" SERIAL NOT NULL,
    "natureId" INTEGER,
    "pokeathlonStatId" INTEGER,
    "maxChange" TEXT,

    CONSTRAINT "NaturePokeathlonStats_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Natures" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,
    "decreasedStatId" INTEGER,
    "increasedStatId" INTEGER,
    "hatesFlavorId" INTEGER,
    "likesFlavorId" INTEGER,
    "gameIndex" TEXT,

    CONSTRAINT "Natures_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PalPark" (
    "id" SERIAL NOT NULL,
    "speciesId" INTEGER,
    "areaId" INTEGER,
    "baseScore" TEXT,
    "rate" TEXT,

    CONSTRAINT "PalPark_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PalParkAreaNames" (
    "id" SERIAL NOT NULL,
    "palParkAreaId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "PalParkAreaNames_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PalParkAreas" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,

    CONSTRAINT "PalParkAreas_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokeathlonStatNames" (
    "id" SERIAL NOT NULL,
    "pokeathlonStatId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "PokeathlonStatNames_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokeathlonStats" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,

    CONSTRAINT "PokeathlonStats_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokedexProse" (
    "id" SERIAL NOT NULL,
    "pokedexId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,
    "description" TEXT,

    CONSTRAINT "PokedexProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokedexVersionGroups" (
    "id" SERIAL NOT NULL,
    "pokedexId" INTEGER,
    "versionGroupId" INTEGER,

    CONSTRAINT "PokedexVersionGroups_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Pokedexes" (
    "id" SERIAL NOT NULL,
    "regionId" INTEGER,
    "identifier" TEXT,
    "isMainSeries" BOOLEAN,

    CONSTRAINT "Pokedexes_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Pokemon" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,
    "speciesId" INTEGER,
    "height" TEXT,
    "weight" TEXT,
    "baseExperience" TEXT,
    "order" TEXT,
    "isDefault" BOOLEAN,

    CONSTRAINT "Pokemon_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokemonAbilities" (
    "id" SERIAL NOT NULL,
    "pokemonId" INTEGER,
    "abilityId" INTEGER,
    "isHidden" BOOLEAN,
    "slot" TEXT,

    CONSTRAINT "PokemonAbilities_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokemonColorNames" (
    "id" SERIAL NOT NULL,
    "pokemonColorId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "PokemonColorNames_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokemonColors" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,

    CONSTRAINT "PokemonColors_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokemonDexNumbers" (
    "id" SERIAL NOT NULL,
    "speciesId" INTEGER,
    "pokedexId" INTEGER,
    "pokedexNumber" TEXT,

    CONSTRAINT "PokemonDexNumbers_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokemonEggGroups" (
    "id" SERIAL NOT NULL,
    "speciesId" INTEGER,
    "eggGroupId" INTEGER,

    CONSTRAINT "PokemonEggGroups_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokemonEvolution" (
    "id" SERIAL NOT NULL,
    "evolvedSpeciesId" INTEGER,
    "evolutionTriggerId" INTEGER,
    "triggerItemId" INTEGER,
    "minimumLevel" TEXT,
    "genderId" INTEGER,
    "locationId" INTEGER,
    "heldItemId" INTEGER,
    "timeOfDay" TEXT,
    "knownMoveId" INTEGER,
    "knownMoveTypeId" INTEGER,
    "minimumHappiness" TEXT,
    "minimumBeauty" TEXT,
    "minimumAffection" TEXT,
    "relativePhysicalStats" TEXT,
    "partySpeciesId" INTEGER,
    "partyTypeId" INTEGER,
    "tradeSpeciesId" INTEGER,
    "needsOverworldRain" TEXT,
    "turnUpsideDown" TEXT,

    CONSTRAINT "PokemonEvolution_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokemonFormGenerations" (
    "id" SERIAL NOT NULL,
    "pokemonFormId" INTEGER,
    "generationId" INTEGER,
    "gameIndex" TEXT,

    CONSTRAINT "PokemonFormGenerations_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokemonFormNames" (
    "id" SERIAL NOT NULL,
    "pokemonFormId" INTEGER,
    "localLanguageId" INTEGER,
    "formName" TEXT,
    "pokemonName" TEXT,

    CONSTRAINT "PokemonFormNames_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokemonFormPokeathlonStats" (
    "id" SERIAL NOT NULL,
    "pokemonFormId" INTEGER,
    "pokeathlonStatId" INTEGER,
    "minimumStat" TEXT,
    "baseStat" TEXT,
    "maximumStat" TEXT,

    CONSTRAINT "PokemonFormPokeathlonStats_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokemonForms" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,
    "formIdentifier" TEXT,
    "pokemonId" INTEGER,
    "introducedInVersionGroupId" INTEGER,
    "isDefault" BOOLEAN,
    "isBattleOnly" BOOLEAN,
    "isMega" BOOLEAN,
    "formOrder" TEXT,
    "order" TEXT,

    CONSTRAINT "PokemonForms_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokemonGameIndices" (
    "id" SERIAL NOT NULL,
    "pokemonId" INTEGER,
    "versionId" INTEGER,
    "gameIndex" TEXT,

    CONSTRAINT "PokemonGameIndices_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokemonHabitatNames" (
    "id" SERIAL NOT NULL,
    "pokemonHabitatId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "PokemonHabitatNames_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokemonHabitats" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,

    CONSTRAINT "PokemonHabitats_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokemonItems" (
    "id" SERIAL NOT NULL,
    "pokemonId" INTEGER,
    "versionId" INTEGER,
    "itemId" INTEGER,
    "rarity" TEXT,

    CONSTRAINT "PokemonItems_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokemonMoveMethodProse" (
    "id" SERIAL NOT NULL,
    "pokemonMoveMethodId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,
    "description" TEXT,

    CONSTRAINT "PokemonMoveMethodProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokemonMoveMethods" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,

    CONSTRAINT "PokemonMoveMethods_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokemonMoves" (
    "id" SERIAL NOT NULL,
    "pokemonId" INTEGER,
    "versionGroupId" INTEGER,
    "moveId" INTEGER,
    "pokemonMoveMethodId" INTEGER,
    "level" TEXT,
    "order" TEXT,

    CONSTRAINT "PokemonMoves_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokemonShapeProse" (
    "id" SERIAL NOT NULL,
    "pokemonShapeId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,
    "awesomeName" TEXT,
    "description" TEXT,

    CONSTRAINT "PokemonShapeProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokemonShapes" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,

    CONSTRAINT "PokemonShapes_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokemonSpecies" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,
    "generationId" INTEGER,
    "evolvesFromSpeciesId" INTEGER,
    "evolutionChainId" INTEGER,
    "colorId" INTEGER,
    "shapeId" INTEGER,
    "habitatId" INTEGER,
    "genderRate" TEXT,
    "captureRate" TEXT,
    "baseHappiness" TEXT,
    "isBaby" BOOLEAN,
    "hatchCounter" TEXT,
    "hasGenderDifferences" TEXT,
    "growthRateId" INTEGER,
    "formsSwitchable" TEXT,
    "isLegendary" BOOLEAN,
    "isMythical" BOOLEAN,
    "order" TEXT,
    "conquestOrder" TEXT,

    CONSTRAINT "PokemonSpecies_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokemonSpeciesFlavorText" (
    "id" SERIAL NOT NULL,
    "speciesId" INTEGER,
    "versionId" INTEGER,
    "languageId" INTEGER,
    "flavorText" TEXT,

    CONSTRAINT "PokemonSpeciesFlavorText_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokemonSpeciesNames" (
    "id" SERIAL NOT NULL,
    "pokemonSpeciesId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,
    "genus" TEXT,

    CONSTRAINT "PokemonSpeciesNames_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokemonSpeciesProse" (
    "id" SERIAL NOT NULL,
    "pokemonSpeciesId" INTEGER,
    "localLanguageId" INTEGER,
    "formDescription" TEXT,

    CONSTRAINT "PokemonSpeciesProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokemonStats" (
    "id" SERIAL NOT NULL,
    "pokemonId" INTEGER,
    "statId" INTEGER,
    "baseStat" TEXT,
    "effort" TEXT,

    CONSTRAINT "PokemonStats_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PokemonTypes" (
    "id" SERIAL NOT NULL,
    "pokemonId" INTEGER,
    "typeId" INTEGER,
    "slot" TEXT,

    CONSTRAINT "PokemonTypes_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "RegionNames" (
    "id" SERIAL NOT NULL,
    "regionId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "RegionNames_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Regions" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,

    CONSTRAINT "Regions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "StatNames" (
    "id" SERIAL NOT NULL,
    "statId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "StatNames_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Stats" (
    "id" SERIAL NOT NULL,
    "damageClassId" INTEGER,
    "identifier" TEXT,
    "isBattleOnly" BOOLEAN,
    "gameIndex" TEXT,

    CONSTRAINT "Stats_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SuperContestCombos" (
    "id" SERIAL NOT NULL,
    "firstMoveId" INTEGER,
    "secondMoveId" INTEGER,

    CONSTRAINT "SuperContestCombos_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SuperContestEffectProse" (
    "id" SERIAL NOT NULL,
    "superContestEffectId" INTEGER,
    "localLanguageId" INTEGER,
    "flavorText" TEXT,

    CONSTRAINT "SuperContestEffectProse_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SuperContestEffects" (
    "id" SERIAL NOT NULL,
    "appeal" TEXT,

    CONSTRAINT "SuperContestEffects_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TypeEfficacy" (
    "id" SERIAL NOT NULL,
    "damageTypeId" INTEGER,
    "targetTypeId" INTEGER,
    "damageFactor" TEXT,

    CONSTRAINT "TypeEfficacy_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TypeGameIndices" (
    "id" SERIAL NOT NULL,
    "typeId" INTEGER,
    "generationId" INTEGER,
    "gameIndex" TEXT,

    CONSTRAINT "TypeGameIndices_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TypeNames" (
    "id" SERIAL NOT NULL,
    "typeId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "TypeNames_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Types" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,
    "generationId" INTEGER,
    "damageClassId" INTEGER,

    CONSTRAINT "Types_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "VersionGroupPokemonMoveMethods" (
    "id" SERIAL NOT NULL,
    "versionGroupId" INTEGER,
    "pokemonMoveMethodId" INTEGER,

    CONSTRAINT "VersionGroupPokemonMoveMethods_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "VersionGroupRegions" (
    "id" SERIAL NOT NULL,
    "versionGroupId" INTEGER,
    "regionId" INTEGER,

    CONSTRAINT "VersionGroupRegions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "VersionGroups" (
    "id" SERIAL NOT NULL,
    "identifier" TEXT,
    "generationId" INTEGER,
    "order" TEXT,

    CONSTRAINT "VersionGroups_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "VersionNames" (
    "id" SERIAL NOT NULL,
    "versionId" INTEGER,
    "localLanguageId" INTEGER,
    "name" TEXT,

    CONSTRAINT "VersionNames_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Versions" (
    "id" SERIAL NOT NULL,
    "versionGroupId" INTEGER,
    "identifier" TEXT,

    CONSTRAINT "Versions_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "PokemonSpecies_evolvesFromSpeciesId_key" ON "PokemonSpecies"("evolvesFromSpeciesId");

-- AddForeignKey
ALTER TABLE "Abilities" ADD CONSTRAINT "Abilities_generationId_fkey" FOREIGN KEY ("generationId") REFERENCES "Generations"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AbilityChangelog" ADD CONSTRAINT "AbilityChangelog_abilityId_fkey" FOREIGN KEY ("abilityId") REFERENCES "Abilities"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AbilityChangelog" ADD CONSTRAINT "AbilityChangelog_changedInVersionGroupId_fkey" FOREIGN KEY ("changedInVersionGroupId") REFERENCES "VersionGroups"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AbilityChangelogProse" ADD CONSTRAINT "AbilityChangelogProse_abilityChangelogId_fkey" FOREIGN KEY ("abilityChangelogId") REFERENCES "AbilityChangelog"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AbilityChangelogProse" ADD CONSTRAINT "AbilityChangelogProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AbilityFlavorText" ADD CONSTRAINT "AbilityFlavorText_abilityId_fkey" FOREIGN KEY ("abilityId") REFERENCES "Abilities"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AbilityFlavorText" ADD CONSTRAINT "AbilityFlavorText_versionGroupId_fkey" FOREIGN KEY ("versionGroupId") REFERENCES "VersionGroups"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AbilityFlavorText" ADD CONSTRAINT "AbilityFlavorText_languageId_fkey" FOREIGN KEY ("languageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AbilityNames" ADD CONSTRAINT "AbilityNames_abilityId_fkey" FOREIGN KEY ("abilityId") REFERENCES "Abilities"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AbilityNames" ADD CONSTRAINT "AbilityNames_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AbilityProse" ADD CONSTRAINT "AbilityProse_abilityId_fkey" FOREIGN KEY ("abilityId") REFERENCES "Abilities"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AbilityProse" ADD CONSTRAINT "AbilityProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Berries" ADD CONSTRAINT "Berries_itemId_fkey" FOREIGN KEY ("itemId") REFERENCES "Items"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Berries" ADD CONSTRAINT "Berries_firmnessId_fkey" FOREIGN KEY ("firmnessId") REFERENCES "BerryFirmness"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Berries" ADD CONSTRAINT "Berries_naturalGiftTypeId_fkey" FOREIGN KEY ("naturalGiftTypeId") REFERENCES "Types"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BerryFirmnessNames" ADD CONSTRAINT "BerryFirmnessNames_berryFirmnessId_fkey" FOREIGN KEY ("berryFirmnessId") REFERENCES "BerryFirmness"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BerryFirmnessNames" ADD CONSTRAINT "BerryFirmnessNames_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BerryFlavors" ADD CONSTRAINT "BerryFlavors_berryId_fkey" FOREIGN KEY ("berryId") REFERENCES "Berries"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BerryFlavors" ADD CONSTRAINT "BerryFlavors_contestTypeId_fkey" FOREIGN KEY ("contestTypeId") REFERENCES "ContestTypes"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CharacteristicText" ADD CONSTRAINT "CharacteristicText_characteristicId_fkey" FOREIGN KEY ("characteristicId") REFERENCES "Characteristics"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CharacteristicText" ADD CONSTRAINT "CharacteristicText_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Characteristics" ADD CONSTRAINT "Characteristics_statId_fkey" FOREIGN KEY ("statId") REFERENCES "Stats"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestCombos" ADD CONSTRAINT "ContestCombos_firstMoveId_fkey" FOREIGN KEY ("firstMoveId") REFERENCES "Moves"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestCombos" ADD CONSTRAINT "ContestCombos_secondMoveId_fkey" FOREIGN KEY ("secondMoveId") REFERENCES "Moves"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestEffectProse" ADD CONSTRAINT "ContestEffectProse_contestEffectId_fkey" FOREIGN KEY ("contestEffectId") REFERENCES "ContestEffects"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestEffectProse" ADD CONSTRAINT "ContestEffectProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTypeNames" ADD CONSTRAINT "ContestTypeNames_contestTypeId_fkey" FOREIGN KEY ("contestTypeId") REFERENCES "ContestTypes"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContestTypeNames" ADD CONSTRAINT "ContestTypeNames_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EggGroupProse" ADD CONSTRAINT "EggGroupProse_eggGroupId_fkey" FOREIGN KEY ("eggGroupId") REFERENCES "EggGroups"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EggGroupProse" ADD CONSTRAINT "EggGroupProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EncounterConditionProse" ADD CONSTRAINT "EncounterConditionProse_encounterConditionId_fkey" FOREIGN KEY ("encounterConditionId") REFERENCES "EncounterConditions"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EncounterConditionProse" ADD CONSTRAINT "EncounterConditionProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EncounterConditionValueMap" ADD CONSTRAINT "EncounterConditionValueMap_encounterId_fkey" FOREIGN KEY ("encounterId") REFERENCES "Encounters"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EncounterConditionValueMap" ADD CONSTRAINT "EncounterConditionValueMap_encounterConditionValueId_fkey" FOREIGN KEY ("encounterConditionValueId") REFERENCES "EncounterConditionValues"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EncounterConditionValueProse" ADD CONSTRAINT "EncounterConditionValueProse_encounterConditionValueId_fkey" FOREIGN KEY ("encounterConditionValueId") REFERENCES "EncounterConditionValues"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EncounterConditionValueProse" ADD CONSTRAINT "EncounterConditionValueProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EncounterConditionValues" ADD CONSTRAINT "EncounterConditionValues_encounterConditionId_fkey" FOREIGN KEY ("encounterConditionId") REFERENCES "EncounterConditions"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EncounterMethodProse" ADD CONSTRAINT "EncounterMethodProse_encounterMethodId_fkey" FOREIGN KEY ("encounterMethodId") REFERENCES "EncounterMethods"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EncounterMethodProse" ADD CONSTRAINT "EncounterMethodProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EncounterSlots" ADD CONSTRAINT "EncounterSlots_versionGroupId_fkey" FOREIGN KEY ("versionGroupId") REFERENCES "VersionGroups"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EncounterSlots" ADD CONSTRAINT "EncounterSlots_encounterMethodId_fkey" FOREIGN KEY ("encounterMethodId") REFERENCES "EncounterMethods"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Encounters" ADD CONSTRAINT "Encounters_versionId_fkey" FOREIGN KEY ("versionId") REFERENCES "Versions"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Encounters" ADD CONSTRAINT "Encounters_locationAreaId_fkey" FOREIGN KEY ("locationAreaId") REFERENCES "LocationAreas"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Encounters" ADD CONSTRAINT "Encounters_encounterSlotId_fkey" FOREIGN KEY ("encounterSlotId") REFERENCES "EncounterSlots"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Encounters" ADD CONSTRAINT "Encounters_pokemonId_fkey" FOREIGN KEY ("pokemonId") REFERENCES "Pokemon"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EvolutionChains" ADD CONSTRAINT "EvolutionChains_babyTriggerItemId_fkey" FOREIGN KEY ("babyTriggerItemId") REFERENCES "Items"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EvolutionTriggerProse" ADD CONSTRAINT "EvolutionTriggerProse_evolutionTriggerId_fkey" FOREIGN KEY ("evolutionTriggerId") REFERENCES "EvolutionTriggers"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EvolutionTriggerProse" ADD CONSTRAINT "EvolutionTriggerProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Experience" ADD CONSTRAINT "Experience_growthRateId_fkey" FOREIGN KEY ("growthRateId") REFERENCES "GrowthRates"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "GenerationNames" ADD CONSTRAINT "GenerationNames_generationId_fkey" FOREIGN KEY ("generationId") REFERENCES "Generations"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "GenerationNames" ADD CONSTRAINT "GenerationNames_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Generations" ADD CONSTRAINT "Generations_mainRegionId_fkey" FOREIGN KEY ("mainRegionId") REFERENCES "Regions"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "GrowthRateProse" ADD CONSTRAINT "GrowthRateProse_growthRateId_fkey" FOREIGN KEY ("growthRateId") REFERENCES "GrowthRates"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "GrowthRateProse" ADD CONSTRAINT "GrowthRateProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ItemCategories" ADD CONSTRAINT "ItemCategories_pocketId_fkey" FOREIGN KEY ("pocketId") REFERENCES "ItemPockets"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ItemCategoryProse" ADD CONSTRAINT "ItemCategoryProse_itemCategoryId_fkey" FOREIGN KEY ("itemCategoryId") REFERENCES "ItemCategories"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ItemCategoryProse" ADD CONSTRAINT "ItemCategoryProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ItemFlagMap" ADD CONSTRAINT "ItemFlagMap_itemId_fkey" FOREIGN KEY ("itemId") REFERENCES "Items"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ItemFlagMap" ADD CONSTRAINT "ItemFlagMap_itemFlagId_fkey" FOREIGN KEY ("itemFlagId") REFERENCES "ItemFlags"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ItemFlagProse" ADD CONSTRAINT "ItemFlagProse_itemFlagId_fkey" FOREIGN KEY ("itemFlagId") REFERENCES "ItemFlags"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ItemFlagProse" ADD CONSTRAINT "ItemFlagProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ItemFlavorText" ADD CONSTRAINT "ItemFlavorText_itemId_fkey" FOREIGN KEY ("itemId") REFERENCES "Items"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ItemFlavorText" ADD CONSTRAINT "ItemFlavorText_versionGroupId_fkey" FOREIGN KEY ("versionGroupId") REFERENCES "VersionGroups"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ItemFlavorText" ADD CONSTRAINT "ItemFlavorText_languageId_fkey" FOREIGN KEY ("languageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ItemFlingEffectProse" ADD CONSTRAINT "ItemFlingEffectProse_itemFlingEffectId_fkey" FOREIGN KEY ("itemFlingEffectId") REFERENCES "ItemFlingEffects"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ItemFlingEffectProse" ADD CONSTRAINT "ItemFlingEffectProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ItemGameIndices" ADD CONSTRAINT "ItemGameIndices_itemId_fkey" FOREIGN KEY ("itemId") REFERENCES "Items"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ItemGameIndices" ADD CONSTRAINT "ItemGameIndices_generationId_fkey" FOREIGN KEY ("generationId") REFERENCES "Generations"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ItemNames" ADD CONSTRAINT "ItemNames_itemId_fkey" FOREIGN KEY ("itemId") REFERENCES "Items"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ItemNames" ADD CONSTRAINT "ItemNames_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ItemPocketNames" ADD CONSTRAINT "ItemPocketNames_itemPocketId_fkey" FOREIGN KEY ("itemPocketId") REFERENCES "ItemPockets"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ItemPocketNames" ADD CONSTRAINT "ItemPocketNames_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ItemProse" ADD CONSTRAINT "ItemProse_itemId_fkey" FOREIGN KEY ("itemId") REFERENCES "Items"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ItemProse" ADD CONSTRAINT "ItemProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Items" ADD CONSTRAINT "Items_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES "ItemCategories"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Items" ADD CONSTRAINT "Items_flingEffectId_fkey" FOREIGN KEY ("flingEffectId") REFERENCES "MoveEffects"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "LanguageNames" ADD CONSTRAINT "LanguageNames_languageId_fkey" FOREIGN KEY ("languageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "LanguageNames" ADD CONSTRAINT "LanguageNames_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "LocationAreaEncounterRates" ADD CONSTRAINT "LocationAreaEncounterRates_locationAreaId_fkey" FOREIGN KEY ("locationAreaId") REFERENCES "LocationAreas"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "LocationAreaEncounterRates" ADD CONSTRAINT "LocationAreaEncounterRates_encounterMethodId_fkey" FOREIGN KEY ("encounterMethodId") REFERENCES "EncounterMethods"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "LocationAreaEncounterRates" ADD CONSTRAINT "LocationAreaEncounterRates_versionId_fkey" FOREIGN KEY ("versionId") REFERENCES "Versions"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "LocationAreaProse" ADD CONSTRAINT "LocationAreaProse_locationAreaId_fkey" FOREIGN KEY ("locationAreaId") REFERENCES "LocationAreas"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "LocationAreaProse" ADD CONSTRAINT "LocationAreaProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "LocationAreas" ADD CONSTRAINT "LocationAreas_locationId_fkey" FOREIGN KEY ("locationId") REFERENCES "Locations"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "LocationGameIndices" ADD CONSTRAINT "LocationGameIndices_locationId_fkey" FOREIGN KEY ("locationId") REFERENCES "Locations"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "LocationGameIndices" ADD CONSTRAINT "LocationGameIndices_generationId_fkey" FOREIGN KEY ("generationId") REFERENCES "Generations"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "LocationNames" ADD CONSTRAINT "LocationNames_locationId_fkey" FOREIGN KEY ("locationId") REFERENCES "Locations"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "LocationNames" ADD CONSTRAINT "LocationNames_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Locations" ADD CONSTRAINT "Locations_regionId_fkey" FOREIGN KEY ("regionId") REFERENCES "Regions"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Machines" ADD CONSTRAINT "Machines_versionGroupId_fkey" FOREIGN KEY ("versionGroupId") REFERENCES "VersionGroups"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Machines" ADD CONSTRAINT "Machines_itemId_fkey" FOREIGN KEY ("itemId") REFERENCES "Items"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Machines" ADD CONSTRAINT "Machines_moveId_fkey" FOREIGN KEY ("moveId") REFERENCES "Moves"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveBattleStyleProse" ADD CONSTRAINT "MoveBattleStyleProse_moveBattleStyleId_fkey" FOREIGN KEY ("moveBattleStyleId") REFERENCES "MoveBattleStyles"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveBattleStyleProse" ADD CONSTRAINT "MoveBattleStyleProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveChangelog" ADD CONSTRAINT "MoveChangelog_moveId_fkey" FOREIGN KEY ("moveId") REFERENCES "Moves"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveChangelog" ADD CONSTRAINT "MoveChangelog_changedInVersionGroupId_fkey" FOREIGN KEY ("changedInVersionGroupId") REFERENCES "VersionGroups"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveChangelog" ADD CONSTRAINT "MoveChangelog_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES "Types"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveChangelog" ADD CONSTRAINT "MoveChangelog_targetId_fkey" FOREIGN KEY ("targetId") REFERENCES "MoveTargets"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveChangelog" ADD CONSTRAINT "MoveChangelog_effectId_fkey" FOREIGN KEY ("effectId") REFERENCES "MoveEffects"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveDamageClassProse" ADD CONSTRAINT "MoveDamageClassProse_moveDamageClassId_fkey" FOREIGN KEY ("moveDamageClassId") REFERENCES "MoveDamageClasses"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveDamageClassProse" ADD CONSTRAINT "MoveDamageClassProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveEffectChangelog" ADD CONSTRAINT "MoveEffectChangelog_effectId_fkey" FOREIGN KEY ("effectId") REFERENCES "MoveEffects"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveEffectChangelog" ADD CONSTRAINT "MoveEffectChangelog_changedInVersionGroupId_fkey" FOREIGN KEY ("changedInVersionGroupId") REFERENCES "VersionGroups"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveEffectChangelogProse" ADD CONSTRAINT "MoveEffectChangelogProse_moveEffectChangelogId_fkey" FOREIGN KEY ("moveEffectChangelogId") REFERENCES "MoveEffectChangelog"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveEffectChangelogProse" ADD CONSTRAINT "MoveEffectChangelogProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveEffectProse" ADD CONSTRAINT "MoveEffectProse_moveEffectId_fkey" FOREIGN KEY ("moveEffectId") REFERENCES "MoveEffects"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveEffectProse" ADD CONSTRAINT "MoveEffectProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveFlagMap" ADD CONSTRAINT "MoveFlagMap_moveId_fkey" FOREIGN KEY ("moveId") REFERENCES "Moves"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveFlagMap" ADD CONSTRAINT "MoveFlagMap_moveFlagId_fkey" FOREIGN KEY ("moveFlagId") REFERENCES "MoveFlags"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveFlagProse" ADD CONSTRAINT "MoveFlagProse_moveFlagId_fkey" FOREIGN KEY ("moveFlagId") REFERENCES "MoveFlags"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveFlagProse" ADD CONSTRAINT "MoveFlagProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveFlavorText" ADD CONSTRAINT "MoveFlavorText_moveId_fkey" FOREIGN KEY ("moveId") REFERENCES "Moves"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveFlavorText" ADD CONSTRAINT "MoveFlavorText_versionGroupId_fkey" FOREIGN KEY ("versionGroupId") REFERENCES "VersionGroups"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveFlavorText" ADD CONSTRAINT "MoveFlavorText_languageId_fkey" FOREIGN KEY ("languageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveMeta" ADD CONSTRAINT "MoveMeta_moveId_fkey" FOREIGN KEY ("moveId") REFERENCES "Moves"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveMeta" ADD CONSTRAINT "MoveMeta_metaCategoryId_fkey" FOREIGN KEY ("metaCategoryId") REFERENCES "MoveMetaCategories"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveMeta" ADD CONSTRAINT "MoveMeta_metaAilmentId_fkey" FOREIGN KEY ("metaAilmentId") REFERENCES "MoveMetaAilments"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveMetaAilmentNames" ADD CONSTRAINT "MoveMetaAilmentNames_moveMetaAilmentId_fkey" FOREIGN KEY ("moveMetaAilmentId") REFERENCES "MoveMetaAilments"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveMetaAilmentNames" ADD CONSTRAINT "MoveMetaAilmentNames_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveMetaCategoryProse" ADD CONSTRAINT "MoveMetaCategoryProse_moveMetaCategoryId_fkey" FOREIGN KEY ("moveMetaCategoryId") REFERENCES "MoveMetaCategories"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveMetaCategoryProse" ADD CONSTRAINT "MoveMetaCategoryProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveMetaStatChanges" ADD CONSTRAINT "MoveMetaStatChanges_moveId_fkey" FOREIGN KEY ("moveId") REFERENCES "Moves"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveMetaStatChanges" ADD CONSTRAINT "MoveMetaStatChanges_statId_fkey" FOREIGN KEY ("statId") REFERENCES "Stats"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveNames" ADD CONSTRAINT "MoveNames_moveId_fkey" FOREIGN KEY ("moveId") REFERENCES "Moves"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveNames" ADD CONSTRAINT "MoveNames_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveTargetProse" ADD CONSTRAINT "MoveTargetProse_moveTargetId_fkey" FOREIGN KEY ("moveTargetId") REFERENCES "MoveTargets"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MoveTargetProse" ADD CONSTRAINT "MoveTargetProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Moves" ADD CONSTRAINT "Moves_generationId_fkey" FOREIGN KEY ("generationId") REFERENCES "Generations"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Moves" ADD CONSTRAINT "Moves_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES "Types"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Moves" ADD CONSTRAINT "Moves_targetId_fkey" FOREIGN KEY ("targetId") REFERENCES "MoveTargets"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Moves" ADD CONSTRAINT "Moves_damageClassId_fkey" FOREIGN KEY ("damageClassId") REFERENCES "MoveDamageClasses"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Moves" ADD CONSTRAINT "Moves_effectId_fkey" FOREIGN KEY ("effectId") REFERENCES "MoveEffects"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Moves" ADD CONSTRAINT "Moves_contestTypeId_fkey" FOREIGN KEY ("contestTypeId") REFERENCES "ContestTypes"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Moves" ADD CONSTRAINT "Moves_contestEffectId_fkey" FOREIGN KEY ("contestEffectId") REFERENCES "ContestEffects"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Moves" ADD CONSTRAINT "Moves_superContestEffectId_fkey" FOREIGN KEY ("superContestEffectId") REFERENCES "SuperContestEffects"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "NatureBattleStylePreferences" ADD CONSTRAINT "NatureBattleStylePreferences_natureId_fkey" FOREIGN KEY ("natureId") REFERENCES "Natures"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "NatureBattleStylePreferences" ADD CONSTRAINT "NatureBattleStylePreferences_moveBattleStyleId_fkey" FOREIGN KEY ("moveBattleStyleId") REFERENCES "MoveBattleStyles"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "NatureNames" ADD CONSTRAINT "NatureNames_natureId_fkey" FOREIGN KEY ("natureId") REFERENCES "Natures"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "NatureNames" ADD CONSTRAINT "NatureNames_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "NaturePokeathlonStats" ADD CONSTRAINT "NaturePokeathlonStats_natureId_fkey" FOREIGN KEY ("natureId") REFERENCES "Natures"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "NaturePokeathlonStats" ADD CONSTRAINT "NaturePokeathlonStats_pokeathlonStatId_fkey" FOREIGN KEY ("pokeathlonStatId") REFERENCES "PokeathlonStats"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Natures" ADD CONSTRAINT "Natures_decreasedStatId_fkey" FOREIGN KEY ("decreasedStatId") REFERENCES "Stats"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Natures" ADD CONSTRAINT "Natures_increasedStatId_fkey" FOREIGN KEY ("increasedStatId") REFERENCES "Stats"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Natures" ADD CONSTRAINT "Natures_hatesFlavorId_fkey" FOREIGN KEY ("hatesFlavorId") REFERENCES "ContestTypes"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Natures" ADD CONSTRAINT "Natures_likesFlavorId_fkey" FOREIGN KEY ("likesFlavorId") REFERENCES "ContestTypes"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PalPark" ADD CONSTRAINT "PalPark_speciesId_fkey" FOREIGN KEY ("speciesId") REFERENCES "PokemonSpecies"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PalPark" ADD CONSTRAINT "PalPark_areaId_fkey" FOREIGN KEY ("areaId") REFERENCES "PalParkAreas"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PalParkAreaNames" ADD CONSTRAINT "PalParkAreaNames_palParkAreaId_fkey" FOREIGN KEY ("palParkAreaId") REFERENCES "PalParkAreas"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PalParkAreaNames" ADD CONSTRAINT "PalParkAreaNames_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokeathlonStatNames" ADD CONSTRAINT "PokeathlonStatNames_pokeathlonStatId_fkey" FOREIGN KEY ("pokeathlonStatId") REFERENCES "PokeathlonStats"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokeathlonStatNames" ADD CONSTRAINT "PokeathlonStatNames_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokedexProse" ADD CONSTRAINT "PokedexProse_pokedexId_fkey" FOREIGN KEY ("pokedexId") REFERENCES "Pokedexes"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokedexProse" ADD CONSTRAINT "PokedexProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokedexVersionGroups" ADD CONSTRAINT "PokedexVersionGroups_pokedexId_fkey" FOREIGN KEY ("pokedexId") REFERENCES "Pokedexes"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokedexVersionGroups" ADD CONSTRAINT "PokedexVersionGroups_versionGroupId_fkey" FOREIGN KEY ("versionGroupId") REFERENCES "VersionGroups"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Pokedexes" ADD CONSTRAINT "Pokedexes_regionId_fkey" FOREIGN KEY ("regionId") REFERENCES "Regions"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Pokemon" ADD CONSTRAINT "Pokemon_speciesId_fkey" FOREIGN KEY ("speciesId") REFERENCES "PokemonSpecies"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonAbilities" ADD CONSTRAINT "PokemonAbilities_pokemonId_fkey" FOREIGN KEY ("pokemonId") REFERENCES "Pokemon"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonAbilities" ADD CONSTRAINT "PokemonAbilities_abilityId_fkey" FOREIGN KEY ("abilityId") REFERENCES "Abilities"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonColorNames" ADD CONSTRAINT "PokemonColorNames_pokemonColorId_fkey" FOREIGN KEY ("pokemonColorId") REFERENCES "PokemonColors"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonColorNames" ADD CONSTRAINT "PokemonColorNames_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonDexNumbers" ADD CONSTRAINT "PokemonDexNumbers_speciesId_fkey" FOREIGN KEY ("speciesId") REFERENCES "PokemonSpecies"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonDexNumbers" ADD CONSTRAINT "PokemonDexNumbers_pokedexId_fkey" FOREIGN KEY ("pokedexId") REFERENCES "Pokedexes"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonEggGroups" ADD CONSTRAINT "PokemonEggGroups_speciesId_fkey" FOREIGN KEY ("speciesId") REFERENCES "PokemonSpecies"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonEggGroups" ADD CONSTRAINT "PokemonEggGroups_eggGroupId_fkey" FOREIGN KEY ("eggGroupId") REFERENCES "EggGroups"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonEvolution" ADD CONSTRAINT "PokemonEvolution_evolvedSpeciesId_fkey" FOREIGN KEY ("evolvedSpeciesId") REFERENCES "PokemonSpecies"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonEvolution" ADD CONSTRAINT "PokemonEvolution_evolutionTriggerId_fkey" FOREIGN KEY ("evolutionTriggerId") REFERENCES "EvolutionTriggers"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonEvolution" ADD CONSTRAINT "PokemonEvolution_triggerItemId_fkey" FOREIGN KEY ("triggerItemId") REFERENCES "Items"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonEvolution" ADD CONSTRAINT "PokemonEvolution_genderId_fkey" FOREIGN KEY ("genderId") REFERENCES "Genders"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonEvolution" ADD CONSTRAINT "PokemonEvolution_locationId_fkey" FOREIGN KEY ("locationId") REFERENCES "Locations"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonEvolution" ADD CONSTRAINT "PokemonEvolution_heldItemId_fkey" FOREIGN KEY ("heldItemId") REFERENCES "Items"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonEvolution" ADD CONSTRAINT "PokemonEvolution_knownMoveId_fkey" FOREIGN KEY ("knownMoveId") REFERENCES "Moves"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonEvolution" ADD CONSTRAINT "PokemonEvolution_knownMoveTypeId_fkey" FOREIGN KEY ("knownMoveTypeId") REFERENCES "Types"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonEvolution" ADD CONSTRAINT "PokemonEvolution_partySpeciesId_fkey" FOREIGN KEY ("partySpeciesId") REFERENCES "PokemonSpecies"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonEvolution" ADD CONSTRAINT "PokemonEvolution_partyTypeId_fkey" FOREIGN KEY ("partyTypeId") REFERENCES "Types"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonEvolution" ADD CONSTRAINT "PokemonEvolution_tradeSpeciesId_fkey" FOREIGN KEY ("tradeSpeciesId") REFERENCES "PokemonSpecies"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonFormGenerations" ADD CONSTRAINT "PokemonFormGenerations_pokemonFormId_fkey" FOREIGN KEY ("pokemonFormId") REFERENCES "PokemonForms"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonFormGenerations" ADD CONSTRAINT "PokemonFormGenerations_generationId_fkey" FOREIGN KEY ("generationId") REFERENCES "Generations"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonFormNames" ADD CONSTRAINT "PokemonFormNames_pokemonFormId_fkey" FOREIGN KEY ("pokemonFormId") REFERENCES "PokemonForms"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonFormNames" ADD CONSTRAINT "PokemonFormNames_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonFormPokeathlonStats" ADD CONSTRAINT "PokemonFormPokeathlonStats_pokemonFormId_fkey" FOREIGN KEY ("pokemonFormId") REFERENCES "PokemonForms"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonFormPokeathlonStats" ADD CONSTRAINT "PokemonFormPokeathlonStats_pokeathlonStatId_fkey" FOREIGN KEY ("pokeathlonStatId") REFERENCES "PokeathlonStats"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonForms" ADD CONSTRAINT "PokemonForms_pokemonId_fkey" FOREIGN KEY ("pokemonId") REFERENCES "Pokemon"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonForms" ADD CONSTRAINT "PokemonForms_introducedInVersionGroupId_fkey" FOREIGN KEY ("introducedInVersionGroupId") REFERENCES "VersionGroups"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonGameIndices" ADD CONSTRAINT "PokemonGameIndices_pokemonId_fkey" FOREIGN KEY ("pokemonId") REFERENCES "Pokemon"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonGameIndices" ADD CONSTRAINT "PokemonGameIndices_versionId_fkey" FOREIGN KEY ("versionId") REFERENCES "Versions"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonHabitatNames" ADD CONSTRAINT "PokemonHabitatNames_pokemonHabitatId_fkey" FOREIGN KEY ("pokemonHabitatId") REFERENCES "PokemonHabitats"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonHabitatNames" ADD CONSTRAINT "PokemonHabitatNames_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonItems" ADD CONSTRAINT "PokemonItems_pokemonId_fkey" FOREIGN KEY ("pokemonId") REFERENCES "Pokemon"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonItems" ADD CONSTRAINT "PokemonItems_versionId_fkey" FOREIGN KEY ("versionId") REFERENCES "Versions"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonItems" ADD CONSTRAINT "PokemonItems_itemId_fkey" FOREIGN KEY ("itemId") REFERENCES "Items"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonMoveMethodProse" ADD CONSTRAINT "PokemonMoveMethodProse_pokemonMoveMethodId_fkey" FOREIGN KEY ("pokemonMoveMethodId") REFERENCES "PokemonMoveMethods"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonMoveMethodProse" ADD CONSTRAINT "PokemonMoveMethodProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonMoves" ADD CONSTRAINT "PokemonMoves_pokemonId_fkey" FOREIGN KEY ("pokemonId") REFERENCES "Pokemon"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonMoves" ADD CONSTRAINT "PokemonMoves_versionGroupId_fkey" FOREIGN KEY ("versionGroupId") REFERENCES "VersionGroups"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonMoves" ADD CONSTRAINT "PokemonMoves_moveId_fkey" FOREIGN KEY ("moveId") REFERENCES "Moves"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonMoves" ADD CONSTRAINT "PokemonMoves_pokemonMoveMethodId_fkey" FOREIGN KEY ("pokemonMoveMethodId") REFERENCES "PokemonMoveMethods"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonShapeProse" ADD CONSTRAINT "PokemonShapeProse_pokemonShapeId_fkey" FOREIGN KEY ("pokemonShapeId") REFERENCES "PokemonShapes"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonShapeProse" ADD CONSTRAINT "PokemonShapeProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonSpecies" ADD CONSTRAINT "PokemonSpecies_generationId_fkey" FOREIGN KEY ("generationId") REFERENCES "Generations"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonSpecies" ADD CONSTRAINT "PokemonSpecies_evolvesFromSpeciesId_fkey" FOREIGN KEY ("evolvesFromSpeciesId") REFERENCES "PokemonSpecies"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonSpecies" ADD CONSTRAINT "PokemonSpecies_evolutionChainId_fkey" FOREIGN KEY ("evolutionChainId") REFERENCES "EvolutionChains"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonSpecies" ADD CONSTRAINT "PokemonSpecies_colorId_fkey" FOREIGN KEY ("colorId") REFERENCES "PokemonColors"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonSpecies" ADD CONSTRAINT "PokemonSpecies_shapeId_fkey" FOREIGN KEY ("shapeId") REFERENCES "PokemonShapes"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonSpecies" ADD CONSTRAINT "PokemonSpecies_habitatId_fkey" FOREIGN KEY ("habitatId") REFERENCES "PokemonHabitats"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonSpecies" ADD CONSTRAINT "PokemonSpecies_growthRateId_fkey" FOREIGN KEY ("growthRateId") REFERENCES "GrowthRates"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonSpeciesFlavorText" ADD CONSTRAINT "PokemonSpeciesFlavorText_speciesId_fkey" FOREIGN KEY ("speciesId") REFERENCES "PokemonSpecies"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonSpeciesFlavorText" ADD CONSTRAINT "PokemonSpeciesFlavorText_versionId_fkey" FOREIGN KEY ("versionId") REFERENCES "Versions"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonSpeciesFlavorText" ADD CONSTRAINT "PokemonSpeciesFlavorText_languageId_fkey" FOREIGN KEY ("languageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonSpeciesNames" ADD CONSTRAINT "PokemonSpeciesNames_pokemonSpeciesId_fkey" FOREIGN KEY ("pokemonSpeciesId") REFERENCES "PokemonSpecies"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonSpeciesNames" ADD CONSTRAINT "PokemonSpeciesNames_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonSpeciesProse" ADD CONSTRAINT "PokemonSpeciesProse_pokemonSpeciesId_fkey" FOREIGN KEY ("pokemonSpeciesId") REFERENCES "PokemonSpecies"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonSpeciesProse" ADD CONSTRAINT "PokemonSpeciesProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonStats" ADD CONSTRAINT "PokemonStats_pokemonId_fkey" FOREIGN KEY ("pokemonId") REFERENCES "Pokemon"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonStats" ADD CONSTRAINT "PokemonStats_statId_fkey" FOREIGN KEY ("statId") REFERENCES "Stats"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonTypes" ADD CONSTRAINT "PokemonTypes_pokemonId_fkey" FOREIGN KEY ("pokemonId") REFERENCES "Pokemon"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PokemonTypes" ADD CONSTRAINT "PokemonTypes_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES "Types"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RegionNames" ADD CONSTRAINT "RegionNames_regionId_fkey" FOREIGN KEY ("regionId") REFERENCES "Regions"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RegionNames" ADD CONSTRAINT "RegionNames_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "StatNames" ADD CONSTRAINT "StatNames_statId_fkey" FOREIGN KEY ("statId") REFERENCES "Stats"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "StatNames" ADD CONSTRAINT "StatNames_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Stats" ADD CONSTRAINT "Stats_damageClassId_fkey" FOREIGN KEY ("damageClassId") REFERENCES "MoveDamageClasses"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SuperContestCombos" ADD CONSTRAINT "SuperContestCombos_firstMoveId_fkey" FOREIGN KEY ("firstMoveId") REFERENCES "Moves"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SuperContestCombos" ADD CONSTRAINT "SuperContestCombos_secondMoveId_fkey" FOREIGN KEY ("secondMoveId") REFERENCES "Moves"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SuperContestEffectProse" ADD CONSTRAINT "SuperContestEffectProse_superContestEffectId_fkey" FOREIGN KEY ("superContestEffectId") REFERENCES "SuperContestEffects"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SuperContestEffectProse" ADD CONSTRAINT "SuperContestEffectProse_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TypeEfficacy" ADD CONSTRAINT "TypeEfficacy_damageTypeId_fkey" FOREIGN KEY ("damageTypeId") REFERENCES "Types"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TypeEfficacy" ADD CONSTRAINT "TypeEfficacy_targetTypeId_fkey" FOREIGN KEY ("targetTypeId") REFERENCES "Types"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TypeGameIndices" ADD CONSTRAINT "TypeGameIndices_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES "Types"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TypeGameIndices" ADD CONSTRAINT "TypeGameIndices_generationId_fkey" FOREIGN KEY ("generationId") REFERENCES "Generations"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TypeNames" ADD CONSTRAINT "TypeNames_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES "Types"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TypeNames" ADD CONSTRAINT "TypeNames_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Types" ADD CONSTRAINT "Types_generationId_fkey" FOREIGN KEY ("generationId") REFERENCES "Generations"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Types" ADD CONSTRAINT "Types_damageClassId_fkey" FOREIGN KEY ("damageClassId") REFERENCES "MoveDamageClasses"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VersionGroupPokemonMoveMethods" ADD CONSTRAINT "VersionGroupPokemonMoveMethods_versionGroupId_fkey" FOREIGN KEY ("versionGroupId") REFERENCES "VersionGroups"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VersionGroupPokemonMoveMethods" ADD CONSTRAINT "VersionGroupPokemonMoveMethods_pokemonMoveMethodId_fkey" FOREIGN KEY ("pokemonMoveMethodId") REFERENCES "PokemonMoveMethods"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VersionGroupRegions" ADD CONSTRAINT "VersionGroupRegions_versionGroupId_fkey" FOREIGN KEY ("versionGroupId") REFERENCES "VersionGroups"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VersionGroupRegions" ADD CONSTRAINT "VersionGroupRegions_regionId_fkey" FOREIGN KEY ("regionId") REFERENCES "Regions"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VersionGroups" ADD CONSTRAINT "VersionGroups_generationId_fkey" FOREIGN KEY ("generationId") REFERENCES "Generations"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VersionNames" ADD CONSTRAINT "VersionNames_versionId_fkey" FOREIGN KEY ("versionId") REFERENCES "Versions"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VersionNames" ADD CONSTRAINT "VersionNames_localLanguageId_fkey" FOREIGN KEY ("localLanguageId") REFERENCES "Languages"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Versions" ADD CONSTRAINT "Versions_versionGroupId_fkey" FOREIGN KEY ("versionGroupId") REFERENCES "VersionGroups"("id") ON DELETE CASCADE ON UPDATE CASCADE;
