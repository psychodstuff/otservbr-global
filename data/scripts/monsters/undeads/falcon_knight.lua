local mType = Game.createMonsterType("Falcon Knight")
local monster = {}

monster.description = "a falcon knight"
monster.experience = 4500
monster.outfit = {
	lookType = 1071,
	lookHead = 57,
	lookBody = 75,
	lookLegs = 38,
	lookFeet = 86,
	lookAddons = 1,
	lookMount = 0
}

monster.health = 9000
monster.maxHealth = 9000
monster.race = "blood"
monster.corpse = 33364
monster.speed = 220
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Mmmhaarrrgh!", yell = false}
}

monster.loot = {
	{id = 2671, chance = 70080, maxCount = 8},
	{id = "Soul Orb", chance = 35000},
	{id = "Great Mana Potion", chance = 33000, maxCount = 3},
	{id = "Great Health Potion", chance = 33000, maxCount = 3},
	{id = "Concentrated Demonic Blood", chance = 30000, maxCount = 4},
	{id = "Small Amethyst", chance = 24950, maxCount = 3},
	{id = "Assassin Star", chance = 24670, maxCount = 10},
	{id = "Small Diamond", chance = 15700, maxCount = 3},
	{id = "Small Ruby", chance = 15333, maxCount = 3},
	{id = "Small Emerald", chance = 15110, maxCount = 3},
	{id = "Onyx Arrow", chance = 14480, maxCount = 15},
	{id = "Small Topaz", chance = 4580, maxCount = 3},
	{id = "Titan Axe", chance = 3000},
	{id = 7633, chance = 3000},
	{id = "Spiked Squelcher", chance = 2200},
	{id = "Knight Armor", chance = 1980},
	{id = "Falcon Crest", chance = 1250},
	{id = "War Axe", chance = 1230},
	{id = "Violet Gem", chance = 1060},
	{id = "Damaged Armor Plates", chance = 990},
	{id = "Green Gem", chance = 880},
	{id = "Golden Armor", chance = 840},
	{id = "Mastermind Shield", chance = 620},
	{id = "Heavy Mace", chance = 460},
	{id = 2578, chance = 370},
	{id = 2136, chance = 100}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -400, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 18, minDamage = -400, maxDamage = -500, type = COMBAT_EARTHDAMAGE, effect = CONST_ME_GROUNDSHAKER, target = false},
	{name ="combat", interval = 2000, chance = 14, minDamage = -290, maxDamage = -360, type = COMBAT_HOLYDAMAGE, length = 5, spread = 3, effect = CONST_ME_BLOCKHIT, target = false}
}

monster.defenses = {
	defense = 86,
	armor = 86
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 30},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = -5},
	{type = COMBAT_DEATHDAMAGE , percent = 55}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
