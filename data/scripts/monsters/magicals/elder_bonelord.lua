local mType = Game.createMonsterType("Elder Bonelord")
local monster = {}

monster.description = "an elder bonelord"
monster.experience = 280
monster.outfit = {
	lookType = 108,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 500
monster.maxHealth = 500
monster.race = "blood"
monster.corpse = 6037
monster.speed = 170
monster.summonCost = 0
monster.maxSummons = 6

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 0,
	healthHidden = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.summons = {
	{name = "Gazer", chance = 10, interval = 2000},
	{name = "Crypt Shambler", chance = 15, interval = 2000}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Let me take a look at you!", yell = false},
	{text = "Inferior creatures, bow before my power!", yell = false},
	{text = "659978 54764!", yell = false},
	{text = "653768764!", yell = false}
}

monster.loot = {
	{id = "gold coin", chance = 99290, maxCount = 86},
	{id = "elder bonelord tentacle", chance = 20040},
	{id = "small flask of eyedrops", chance = 9720},
	{id = "sniper arrow", chance = 8780, maxCount = 5},
	{id = "two handed sword", chance = 2980},
	{id = "steel shield", chance = 2040},
	{id = 2175, chance = 1030},
	{id = "strong mana potion", chance = 830},
	{id = "giant eye", chance = 460},
	{id = "bonelord shield", chance = 90},
	{id = "bonelord helmet", chance = 90}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -55, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 5, minDamage = -45, maxDamage = -60, type = COMBAT_ENERGYDAMAGE, range = 7, shootEffect = CONST_ANI_ENERGY, target = false},
	{name ="combat", interval = 2000, chance = 5, minDamage = -40, maxDamage = -80, type = COMBAT_FIREDAMAGE, range = 7, shootEffect = CONST_ANI_FIRE, target = false},
	{name ="combat", interval = 2000, chance = 10, minDamage = -45, maxDamage = -90, type = COMBAT_DEATHDAMAGE, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_SMALLCLOUDS, target = false},
	{name ="combat", interval = 2000, chance = 10, minDamage = -20, maxDamage = -40, type = COMBAT_EARTHDAMAGE, range = 7, shootEffect = CONST_ANI_POISON, target = false},
	{name ="combat", interval = 2000, chance = 5, minDamage = -45, maxDamage = -85, type = COMBAT_LIFEDRAIN, range = 7, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2000, chance = 5, minDamage = 0, maxDamage = -40, type = COMBAT_MANADRAIN, range = 7, target = false},
	{name ="speed", interval = 2000, chance = 10, speedChange = -600, duration = 20000}
}

monster.defenses = {
	defense = 13,
	armor = 13
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 20},
	{type = COMBAT_EARTHDAMAGE, percent = 100},
	{type = COMBAT_FIREDAMAGE, percent = -10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 30},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 30}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
