local ItemScore = ZGV.ItemScore

ItemScore.rules = {
	["DEATHKNIGHT"] = {
		[1] = {
			name = "Blood",
			itemtypes={ TH_POLE=1,TH_AXE=1,TH_MACE=1,TH_SWORD=1, RELIC=1, PLATE=1 },
			stats = { DPS=10, STRENGTH=1.5, ATTACK_POWER=.5, STAMINA=2, PARRY=1, DODGE=1, MASTERY=2, HASTE=1, HIT=6, EXPERTISE=5,  },
			caps = { HIT=8, EXPERTISE=6.5 },
		},
		[2] = {
			name = "Frost",
			itemtypes={ TH_POLE=1,TH_AXE=1,TH_MACE=1,TH_SWORD=1, AXE=2,MACE=2,SWORD=2, RELIC=1, PLATE=1 },
			stats = { DPS=10, STRENGTH=1.5, ATTACK_POWER=.5, HIT=1, EXPERTISE=.5, MASTERY=.7, HASTE=1.15, CRIT=1,  },
			caps = { HIT=8 },
		},
		[3] = {
			name = "Unholy",
			itemtypes={ TH_POLE=1,TH_AXE=1,TH_MACE=1,TH_SWORD=1, RELIC=1, PLATE=1 },
			stats = { DPS=10, STRENGTH=1.5, ATTACK_POWER=.5, HIT=.75, HASTE=1.15, CRIT=1, MASTERY=.5, EXPERTISE=.5, },
		},
	},
	["DRUID"] = {
		[1] = {
			name = "Balance",
			itemtypes={ DAGGER=1,MACE=1,MISCWEAP=1, TH_STAFF=1, RELIC=1, LEATHER=1 },
			stats = { INTELLECT=10, SPELL_POWER=10, HIT=5, SPIRIT=5, HASTE=4, MASTERY=2, CRIT=1,  },
			caps = { HIT=8 },
		},
		[2] = {
			name = "Feral",
			itemtypes={ TH_POLE=1,TH_STAFF=1,TH_MACE=1, RELIC=1, LEATHER=1 },
			stats = { AGILITY=10, MASTERY=7, CRIT=1, HIT=6, EXPERTISE=5, HASTE=4,  },
			caps = { HIT=8 },
		},
		[3] = {
			name = "Restoration",
			itemtypes={ DAGGER=1,MACE=1,MISCWEAP=1, TH_STAFF=1, RELIC=1, LEATHER=1 },
			stats = { INTELLECT=10, SPELL_POWER=9, MASTERY=7, HASTE=8, CRIT=5, SPIRIT=6,  },
		},
		[4] = {
			name = "Guardian",
			itemtypes={ TH_POLE=1,TH_STAFF=1,TH_MACE=1, RELIC=1, LEATHER=1 },
			stats = { AGILITY=10, STAMINA=9, DODGE=8, Armor=0.05, HIT=1, EXPERTISE=1, MASTERY=3,  },
			caps = { HIT=8 },
		},
	},
	["HUNTER"] = {  -- all 3 identical
		[1] = {
			name = "Beastmastery",
			itemtypes={ TH_POLE=1,TH_STAFF=1,TH_AXE=1,TH_SWORD=1, DAGGER=2,FIST=2,AXE=2,SWORD=2, BOW=1,CROSSBOW=1,GUN=1, LEATHER=-40,MAIL=40 },
			stats = { DPS=10, AGILITY=1.5, HIT=9, ATTACK_POWER=.5, CRIT=.8, MASTERY=.6, HASTE=.5,  },
			caps = { HIT=8 },
		},
		[2] = {
			name = "Marksmanship",
			itemtypes={ TH_POLE=1,TH_STAFF=1,TH_AXE=1,TH_SWORD=1, DAGGER=2,FIST=2,AXE=2,SWORD=2, BOW=1,CROSSBOW=1,GUN=1, LEATHER=-40,MAIL=40 },
			stats = { DPS=10, AGILITY=1.5, HIT=9, ATTACK_POWER=.5, CRIT=.8, MASTERY=6, HASTE=.5,  },
			caps = { HIT=8 },
		},
		[3] = {
			name = "Survival",
			itemtypes={ TH_POLE=1,TH_STAFF=1,TH_AXE=1,TH_SWORD=1, DAGGER=2,FIST=2,AXE=2,SWORD=2, BOW=1,CROSSBOW=1,GUN=1, LEATHER=-40,MAIL=40 },
			stats = { DPS=10, AGILITY=1.5, HIT=9, ATTACK_POWER=.5, CRIT=.8, MASTERY=.6, HASTE=.5,  },
			caps = { HIT=8 },
		},
	},	
	
	["MAGE"] = {
		[1] = {
			name="Arcane",
			itemtypes={ DAGGER=1,SWORD=1,TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=1, HIT=1, CRIT=.2, HASTE=1, MASTERY=.7,  },
			caps = { HIT=17 },
		},
		[2] = {
			name="Fire",
			itemtypes={ DAGGER=1,SWORD=1,TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=1, HIT=1, CRIT=.8, HASTE=1, MASTERY=.2,  },
			caps = { HIT=17 },
		},
		[3] = {
			name="Frost",
			itemtypes={ DAGGER=1,SWORD=1,TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=1, HIT=1, CRIT=1, HASTE=.5, MASTERY=.2,  },
			caps = { HIT=17 },
		},
	},
	["PALADIN"] = {
		[1] = {
			name = "Holy",
			itemtypes={ AXE=1,MACE=1,SWORD=1, SHIELD=1, MISCARM=1, RELIC=1, MAIL=-40,PLATE=40 },
			stats = { INTELLECT=1, SPELL_POWER=.9, HASTE=.8, CRIT=.3, SPIRIT=.7, MASTERY=.5,  },
			caps = { HIT=8 },
		},
		[2] = {
			name = "Protection",
			itemtypes={ AXE=1,MACE=1,SWORD=1, SHIELD=1, RELIC=1, MAIL=-40,PLATE=40 },
			stats = { DPS=10, STRENGTH=.5, STAMINA=1, MASTERY=1.5, DODGE=.5, PARRY=.5, HIT=7, EXPERTISE=6, ARMOR=0.05 },
			caps = { HIT=8 },
		},
		[3] = {
			name = "Retribution",
			itemtypes={ TH_POLE=1,TH_AXE=1,TH_MACE=1,TH_SWORD=1, RELIC=1, MAIL=-40,PLATE=40 },
			stats = { DPS=10, STRENGTH=1.5, HIT=10, EXPERTISE=10, MASTERY=.8, CRIT=.6, HASTE=.4, },
			caps = { HIT=8 },
		},
	},
	["PRIEST"] = {
		[1] = {
			name = "Discipline",
			itemtypes={ DAGGER=1,MACE=1,TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=1, SPELL_POWER=1, SPIRIT=.9, HASTE=.7, MASTERY=.5, CRIT=.2,  },
			caps = { HIT=17 },
		},
		[2] = {
			name = "Holy",
			itemtypes={ DAGGER=1,MACE=1,TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=1, SPELL_POWER=1, SPIRIT=.9, HASTE=.7, MASTERY=.5, CRIT=.2,  },
			caps = { HIT=17 },
		},
		[3] = {
			name = "Shadow",
			itemtypes={ DAGGER=1,MACE=1,TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=1, SPELL_POWER=1, HIT=.8, SPIRIT=.8, HASTE=.7, CRIT=.2, MASTERY=.5,  },
			caps = { HIT=17 },
		},
	},
	["ROGUE"] = {
		[1] = {
			name = "Assassination",
			itemtypes={ DAGGER=2, BOW=1,CROSSBOW=1,GUN=1,THROWN=1, LEATHER=1 },
			stats = { DPS=10, AGILITY=10, MASTERY=1, HIT=2, EXPERTISE=.3, HASTE=.7, CRIT=.5,  },
			caps = { HIT=17 },
		},
		[2] = {
			name = "Combat",
			itemtypes={ DAGGER=2,FIST=2,AXE=2,MACE=2,SWORD=2, BOW=1,CROSSBOW=1,GUN=1,THROWN=1, LEATHER=1 },
			stats = { DAMAGE=10, DPS=10, AGILITY=1.5, HIT=2, EXPERTISE=2, MASTERY=.5, HASTE=1, CRIT=.2,  },
			caps = { HIT=17 },
		},
		[3] = {
			name = "Subtlety",
			itemtypes={ DAGGER=2,FIST=2,AXE=2,MACE=2,SWORD=2, BOW=1,CROSSBOW=1,GUN=1,THROWN=1, LEATHER=1 },
			stats = { DPS=10, AGILITY=1.5, HIT=2, HASTE=1, EXPERTISE=2, CRIT=.7, MASTERY=.5,  },
			caps = { HIT=17 },
		},
	},
	["SHAMAN"] = {
		[1] = {
			name = "Elemental",
			itemtypes={ DAGGER=1,FIST=1,AXE=1,MACE=1,TH_STAFF=1,MISCARM=1,SHIELD=1, LEATHER=-40,MAIL=40, RELIC=1 },
			stats = { INTELLECT=1, SPELL_POWER=1, SPIRIT=.8, HIT=.8, HASTE=.7, MASTERY=.5, CRIT=.4,  },
			caps = { HIT=17 },
		},
		[2] = {
			name = "Enhancement",
			itemtypes={ DAGGER=2,FIST=2,AXE=2,MACE=2,TH_STAFF=1,TH_AXE=1,TH_MACE=1,MISCARM=1, LEATHER=-40,MAIL=40, RELIC=1 }, --dual from 10?
			stats = { DPS=10, AGILITY=1.5, HIT=1, EXPERTISE=1, MASTERY=.8, CRIT=.7,HASTE=.4, },
			caps = { HIT=17 },
		},
		[3] = {
			name = "Restoration",
			itemtypes={ DAGGER=1,FIST=1,AXE=1,MACE=1,TH_STAFF=1,MISCARM=1,SHIELD=1, LEATHER=-40,MAIL=40, RELIC=1 },
			stats = { INTELLECT=1, SPELL_POWER=.9, SPIRIT=.2, HASTE=.8, CRIT=.6, MASTERY=.5,  },
			caps = { HIT=17 },
		},
	},
	["WARLOCK"] = {
		[1] = {
			name = "Affliction",
			itemtypes={ SWORD=1,DAGGER=1,TH_STAFF=1,WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=1, SPELL_POWER=.9, HIT=1, CRIT=.7, MASTERY=.6, HASTE=.8,   },
			caps = { HIT=17 },
		},
		[2] = {
			name = "Demonology",
			itemtypes={ SWORD=1,DAGGER=1,TH_STAFF=1,WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=1, SPELL_POWER=.9, HIT=2, MASTERY=.7, HASTE=.8, CRIT=.5,  },
			caps = { HIT=17 },
		},
		[3] = {
			name = "Destruction",
			itemtypes={ SWORD=1,DAGGER=1,TH_STAFF=1,WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT=1, SPELL_POWER=.9, HIT=2, HASTE=.7, CRIT=.6, MASTERY=.5,   },
			caps = { HIT=17 },
		},
	},
	["WARRIOR"] = {
		[1] = {
			name = "Arms",
			itemtypes={ TH_POLE=1,TH_STAFF=1,TH_AXE=1,TH_MACE=1,TH_SWORD=1, BOW=1,CROSSBOW=1,GUN=1,THROWN=1, MAIL=-40,PLATE=40 },
			stats = { DPS=10, STRENGTH=1.5, HIT=5, CRIT=.8, EXPERTISE=7, MASTERY=.6, HASTE=.5, AGILITY=.5, ATTACK_POWER=.4,  },
			caps = { HIT=8 },
		},
		[2] = {
			name = "Fury",
			itemtypes={ TH_AXE=69,TH_MACE=69,TH_SWORD=69, DAGGER=-69,FIST=-69,AXE=-69,MACE=-69,SWORD=-69, BOW=1,CROSSBOW=1,GUN=1,THROWN=1, MAIL=-40,PLATE=40 },  -- duals...
			stats = { DPS=10, STRENGTH=1.5, HIT=5, CRIT=.8, EXPERTISE=7, MASTERY=2, HASTE=.5, AGILITY=.5, ATTACK_POWER=.4, },
			caps = { HIT=8 },
		},
		[3] = {
			name = "Prot",
			itemtypes={ DAGGER=1,FIST=1,AXE=1,MACE=1,SWORD=1, BOW=1,CROSSBOW=1,GUN=1,THROWN=1, MAIL=-40,PLATE=40, SHIELD=1 },
			stats = { DPS=10, STRENGTH=1.5, MASTERY=2, DODGE=1, PARRY=1, STAMINA=3, EXPERTISE=6, HIT=5, CRIT=.5, HASTE=.2  },
			caps = { HIT=8 },
		},
	},
}

