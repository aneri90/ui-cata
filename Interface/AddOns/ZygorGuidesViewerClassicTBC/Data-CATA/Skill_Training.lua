local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

ZygorGuidesViewer.Skills.SkillTraining = {
	DEATHKNIGHT = {
		[55] = {
			{53341, 55000, }, -- Rune of Cinderglacier
			{53343, 55000, }, -- Rune of Razorice
		},
		[56] = {
			{46584, 5600, }, -- Raise Dead
			{49998, 5600, rank=1}, -- Death Strike Rank 1
			{50842, 5600, }, -- Pestilence
		},
		[57] = {
			{47528, 5700, }, -- Mind Freeze
			{48263, 5700, }, -- Frost Presence
			{53342, 5700, }, -- Rune of Spellshattering
			{54447, 5700, }, -- Rune of Spellbreaking
		},
		[58] = {
			{45524, 5800, }, -- Chains of Ice
			{48721, 5800, rank=1}, -- Blood Boil Rank 1
		},
		[59] = {
			{47476, 5900, }, -- Strangulate
			{49926, 5900, req=45902, rank=2}, -- Blood Strike Rank 2
			{55258, 5900, talent=55050, rank=2}, -- Heart Strike Rank 2
		},
		[60] = {
			{51325, 300, talent=49158, rank=2}, -- Corpse Explosion Rank 2
			{49917, 5800, req=45462, rank=2}, -- Plague Strike Rank 2
			{43265, 6000, rank=1}, -- Death and Decay Rank 1
			{53331, 6000, }, -- Rune of Lichbane
			{51416, 6200, talent=49143, rank=2}, -- Frost Strike Rank 2
		},
		[61] = {
			{49020, 61000, rank=1}, -- Obliterate Rank 1
			{49896, 61000, req=45477, rank=2}, -- Icy Touch Rank 2
		},
		[62] = {
			{49892, 59000, req=47541, rank=2}, -- Death Coil Rank 2
			{48792, 62000, }, -- Icebound Fortitude
		},
		[63] = {
			{53323, 63000, }, -- Rune of Swordshattering
			{49999, 65000, req=49998, rank=2}, -- Death Strike Rank 2
			{54446, 68000, }, -- Rune of Swordbreaking
		},
		[64] = {
			{55259, 3200, req=55258, rank=3}, -- Heart Strike Rank 3
			{45529, 64000, }, -- Blood Tap
			{49927, 64000, req=49926, rank=3}, -- Blood Strike Rank 3
		},
		[65] = {
			{51417, 3250, req=51416, rank=3}, -- Frost Strike Rank 3
			{49918, 65000, req=49917, rank=3}, -- Plague Strike Rank 3
			{56222, 65000, }, -- Dark Command
			{57330, 65000, rank=1}, -- Horn of Winter Rank 1
		},
		[66] = {
			{48743, 66000, }, -- Death Pact
			{49939, 66000, req=48721, rank=2}, -- Blood Boil Rank 2
		},
		[67] = {
			{55265, 18000, talent=55090, rank=2}, -- Scourge Strike Rank 2
			{49903, 67000, req=49896, rank=3}, -- Icy Touch Rank 3
			{51423, 67000, req=49020, rank=2}, -- Obliterate Rank 2
			{56815, 67000, }, -- Rune Strike
			{49936, 68000, req=43265, rank=2}, -- Death and Decay Rank 2
		},
		[68] = {
			{48707, 68000, }, -- Anti-Magic Shell
			{49893, 68000, req=49892, rank=3}, -- Death Coil Rank 3
		},
		[69] = {
			{55260, 3450, req=55259, rank=4}, -- Heart Strike Rank 4
			{49928, 69000, req=49927, rank=4}, -- Blood Strike Rank 4
		},
		[70] = {
			{51409, 3182, talent=49184, rank=2}, -- Howling Blast Rank 2
			{51326, 18000, req=51325, rank=3}, -- Corpse Explosion Rank 3
			{51418, 18000, req=51417, rank=4}, -- Frost Strike Rank 4
			{45463, 63000, req=49999, rank=3}, -- Death Strike Rank 3
			{48265, 360000, }, -- Unholy Presence
			{49919, 360000, req=49918, rank=4}, -- Plague Strike Rank 4
			{53344, 360000, }, -- Rune of the Fallen Crusader
		},
		[72] = {
			{49940, 360000, req=49939, rank=3}, -- Blood Boil Rank 3
			{61999, 360000, }, -- Raise Ally
			{62158, 360000, }, -- Rune of the Stoneskin Gargoyle
			{70164, 360000, }, -- Rune of the Nerubian Carapace
		},
		[73] = {
			{55270, 18000, req=55265, rank=3}, -- Scourge Strike Rank 3
			{49904, 360000, req=49903, rank=4}, -- Icy Touch Rank 4
			{49937, 360000, req=49936, rank=3}, -- Death and Decay Rank 3
			{51424, 360000, req=51423, rank=3}, -- Obliterate Rank 3
		},
		[74] = {
			{55261, 18000, req=55260, rank=5}, -- Heart Strike Rank 5
			{49929, 360000, req=49928, rank=5}, -- Blood Strike Rank 5
		},
		[75] = {
			{51327, 18000, req=51326, rank=4}, -- Corpse Explosion Rank 4
			{51410, 18000, req=51409, rank=3}, -- Howling Blast Rank 3
			{51419, 18000, req=51418, rank=5}, -- Frost Strike Rank 5
			{47568, 360000, }, -- Empower Rune Weapon
			{49920, 360000, req=49919, rank=5}, -- Plague Strike Rank 5
			{49923, 360000, req=45463, rank=4}, -- Death Strike Rank 4
			{57623, 360000, req=57330, rank=2}, -- Horn of Winter Rank 2
		},
		[76] = {
			{49894, 360000, req=49893, rank=4}, -- Death Coil Rank 4
		},
		[78] = {
			{49909, 360000, req=49904, rank=5}, -- Icy Touch Rank 5
			{49941, 360000, req=49940, rank=4}, -- Blood Boil Rank 4
		},
		[79] = {
			{55271, 18000, req=55270, rank=4}, -- Scourge Strike Rank 4
			{51425, 360000, req=51424, rank=4}, -- Obliterate Rank 4
		},
		[80] = {
			{51328, 18000, req=51327, rank=5}, -- Corpse Explosion Rank 5
			{51411, 18000, req=51410, rank=4}, -- Howling Blast Rank 4
			{55262, 18000, req=55261, rank=6}, -- Heart Strike Rank 6
			{55268, 18000, req=51419, rank=6}, -- Frost Strike Rank 6
			{42650, 360000, }, -- Army of the Dead
			{49895, 360000, req=49894, rank=5}, -- Death Coil Rank 5
			{49921, 360000, req=49920, rank=6}, -- Plague Strike Rank 6
			{49924, 360000, req=49923, rank=5}, -- Death Strike Rank 5
			{49930, 360000, req=49929, rank=6}, -- Blood Strike Rank 6
			{49938, 360000, req=49937, rank=4}, -- Death and Decay Rank 4
		},
	},


	DRUID = {
		[0] = {
			{198, 1000, }, -- One-Handed Maces
			{199, 1000, }, -- Two-Handed Maces
			{227, 1000, }, -- Staves
			{1180, 1000, }, -- Daggers
			{15590, 1000, }, -- Fist Weapons
		},
		[1] = {
			{1126, 10, rank=1}, -- Mark of the Wild Rank 1
		},
		[4] = {
			{774, 100, rank=1}, -- Rejuvenation Rank 1
			{8921, 100, rank=1}, -- Moonfire Rank 1
		},
		[6] = {
			{467, 100, rank=1}, -- Thorns Rank 1
			{5177, 100, req=5176, rank=2}, -- Wrath Rank 2
		},
		[8] = {
			{339, 200, rank=1}, -- Entangling Roots Rank 1
			{5186, 200, req=5185, rank=2}, -- Healing Touch Rank 2
		},
		[10] = {
			{99, 300, rank=1}, -- Demoralizing Roar Rank 1
			{1058, 300, req=774, rank=2}, -- Rejuvenation Rank 2
			{5232, 300, req=1126, rank=2}, -- Mark of the Wild Rank 2
			{8924, 300, req=8921, rank=2}, -- Moonfire Rank 2
			{16689, 300, req=339, rank=1}, -- Nature's Grasp Rank 1
		},
		[12] = {
			{5229, 800, }, -- Enrage
			{8936, 800, rank=1}, -- Regrowth Rank 1
			{50769, 800, rank=1}, -- Revive Rank 1
		},
		[14] = {
			{782, 900, req=467, rank=2}, -- Thorns Rank 2
			{5178, 900, req=5177, rank=3}, -- Wrath Rank 3
			{5187, 900, req=5186, rank=3}, -- Healing Touch Rank 3
			{5211, 900, rank=1}, -- Bash Rank 1
		},
		[16] = {
			{1066, 900, }, -- Aquatic Form Shapeshift
			{779, 1800, rank=1}, -- Swipe (Bear) Rank 1
			{1430, 1800, req=1058, rank=3}, -- Rejuvenation Rank 3
			{8925, 1800, req=8924, rank=3}, -- Moonfire Rank 3
			{783, 6000, }, -- Travel Form Shapeshift
		},
		[18] = {
			{16810, 95, req=16689, rank=2}, -- Nature's Grasp Rank 2
			{770, 1900, }, -- Faerie Fire
			{1062, 1900, req=339, rank=2}, -- Entangling Roots Rank 2
			{2637, 1900, rank=1}, -- Hibernate Rank 1
			{6808, 1900, req=6807, rank=2}, -- Maul Rank 2
			{8938, 1900, req=8936, rank=2}, -- Regrowth Rank 2
			{16857, 1900, }, -- Faerie Fire (Feral)
		},
		[20] = {
			{768, 2000, }, -- Cat Form Shapeshift
			{1079, 2000, rank=1}, -- Rip Rank 1
			{1082, 2000, rank=1}, -- Claw Rank 1
			{1735, 2000, req=99, rank=2}, -- Demoralizing Roar Rank 2
			{2912, 2000, rank=1}, -- Starfire Rank 1
			{5188, 2000, req=5187, rank=4}, -- Healing Touch Rank 4
			{5215, 2000, }, -- Prowl
			{6756, 2000, req=5232, rank=3}, -- Mark of the Wild Rank 3
			{20484, 2000, rank=1}, -- Rebirth Rank 1
			{200, 10000, }, -- Polearms
		},
		[22] = {
			{2090, 3000, req=1430, rank=4}, -- Rejuvenation Rank 4
			{2908, 3000, rank=1}, -- Soothe Animal Rank 1
			{5179, 3000, req=5178, rank=4}, -- Wrath Rank 4
			{5221, 3000, rank=1}, -- Shred Rank 1
			{8926, 3000, req=8925, rank=4}, -- Moonfire Rank 4
		},
		[24] = {
			{780, 4000, req=779, rank=2}, -- Swipe (Bear) Rank 2
			{1075, 4000, req=782, rank=3}, -- Thorns Rank 3
			{1822, 4000, rank=1}, -- Rake Rank 1
			{2782, 4000, }, -- Remove Curse
			{5217, 4000, rank=1}, -- Tiger's Fury Rank 1
			{8939, 4000, req=8938, rank=3}, -- Regrowth Rank 3
			{50768, 4000, req=50769, rank=2}, -- Revive Rank 2
		},
		[26] = {
			{1850, 4500, rank=1}, -- Dash Rank 1
			{2893, 4500, }, -- Abolish Poison
			{5189, 4500, req=5188, rank=5}, -- Healing Touch Rank 5
			{6809, 4500, req=6808, rank=3}, -- Maul Rank 3
			{8949, 4500, req=2912, rank=2}, -- Starfire Rank 2
		},
		[28] = {
			{16811, 250, req=16810, rank=3}, -- Nature's Grasp Rank 3
			{2091, 5000, req=2090, rank=5}, -- Rejuvenation Rank 5
			{3029, 5000, req=1082, rank=2}, -- Claw Rank 2
			{5195, 5000, req=1062, rank=3}, -- Entangling Roots Rank 3
			{5209, 5000, }, -- Challenging Roar
			{8927, 5000, req=8926, rank=5}, -- Moonfire Rank 5
			{8998, 5000, rank=1}, -- Cower Rank 1
			{9492, 5000, req=1079, rank=2}, -- Rip Rank 2
		},
		[30] = {
			{24974, 300, talent=5570, rank=2}, -- Insect Swarm Rank 2
			{740, 6000, rank=1}, -- Tranquility Rank 1
			{5180, 6000, req=5179, rank=5}, -- Wrath Rank 5
			{5234, 6000, req=6756, rank=4}, -- Mark of the Wild Rank 4
			{6798, 6000, req=5211, rank=2}, -- Bash Rank 2
			{6800, 6000, req=5221, rank=2}, -- Shred Rank 2
			{8940, 6000, req=8939, rank=4}, -- Regrowth Rank 4
			{20739, 6000, req=20484, rank=2}, -- Rebirth Rank 2
		},
		[32] = {
			{5225, 8000, }, -- Track Humanoids
			{6778, 8000, req=5189, rank=6}, -- Healing Touch Rank 6
			{6785, 8000, rank=1}, -- Ravage Rank 1
			{9490, 8000, req=1735, rank=3}, -- Demoralizing Roar Rank 3
			{22568, 8000, rank=1}, -- Ferocious Bite Rank 1
		},
		[34] = {
			{769, 10000, req=780, rank=3}, -- Swipe (Bear) Rank 3
			{1823, 10000, req=1822, rank=2}, -- Rake Rank 2
			{3627, 10000, req=2091, rank=6}, -- Rejuvenation Rank 6
			{8914, 10000, req=1075, rank=4}, -- Thorns Rank 4
			{8928, 10000, req=8927, rank=6}, -- Moonfire Rank 6
			{8950, 10000, req=8949, rank=3}, -- Starfire Rank 3
			{8972, 10000, req=6809, rank=4}, -- Maul Rank 4
		},
		[36] = {
			{6793, 11000, req=5217, rank=2}, -- Tiger's Fury Rank 2
			{8941, 11000, req=8940, rank=5}, -- Regrowth Rank 5
			{9005, 11000, rank=1}, -- Pounce Rank 1
			{9493, 11000, req=9492, rank=3}, -- Rip Rank 3
			{22842, 11000, }, -- Frenzied Regeneration
			{50767, 11000, req=50768, rank=3}, -- Revive Rank 3
		},
		[38] = {
			{16812, 600, req=16811, rank=4}, -- Nature's Grasp Rank 4
			{5196, 12000, req=5195, rank=4}, -- Entangling Roots Rank 4
			{5201, 12000, req=3029, rank=3}, -- Claw Rank 3
			{6780, 12000, req=5180, rank=6}, -- Wrath Rank 6
			{8903, 12000, req=6778, rank=7}, -- Healing Touch Rank 7
			{8955, 12000, req=2908, rank=2}, -- Soothe Animal Rank 2
			{8992, 12000, req=6800, rank=3}, -- Shred Rank 3
			{18657, 12000, req=2637, rank=2}, -- Hibernate Rank 2
		},
		[40] = {
			{24975, 700, req=24974, rank=3}, -- Insect Swarm Rank 3
			{62600, 4500, }, -- Savage Defense Passive
			{8907, 14000, req=5234, rank=5}, -- Mark of the Wild Rank 5
			{8910, 14000, req=3627, rank=7}, -- Rejuvenation Rank 7
			{8918, 14000, req=740, rank=2}, -- Tranquility Rank 2
			{8929, 14000, req=8928, rank=7}, -- Moonfire Rank 7
			{9000, 14000, req=8998, rank=2}, -- Cower Rank 2
			{9634, 14000, req=5487}, -- Dire Bear Form Shapeshift
			{16914, 14000, rank=1}, -- Hurricane Rank 1
			{20719, 14000, }, -- Feline Grace Passive
			{20742, 14000, req=20739, rank=3}, -- Rebirth Rank 3
			{22827, 14000, req=22568, rank=2}, -- Ferocious Bite Rank 2
			{29166, 14000, }, -- Innervate
		},
		[42] = {
			{6787, 16000, req=6785, rank=2}, -- Ravage Rank 2
			{8951, 16000, req=8950, rank=4}, -- Starfire Rank 4
			{9745, 16000, req=8972, rank=5}, -- Maul Rank 5
			{9747, 16000, req=9490, rank=4}, -- Demoralizing Roar Rank 4
			{9750, 16000, req=8941, rank=6}, -- Regrowth Rank 6
		},
		[44] = {
			{1824, 18000, req=1823, rank=3}, -- Rake Rank 3
			{9752, 18000, req=9493, rank=4}, -- Rip Rank 4
			{9754, 18000, req=769, rank=4}, -- Swipe (Bear) Rank 4
			{9756, 18000, req=8914, rank=5}, -- Thorns Rank 5
			{9758, 18000, req=8903, rank=8}, -- Healing Touch Rank 8
			{22812, 18000, }, -- Barkskin
		},
		[46] = {
			{8905, 20000, req=6780, rank=7}, -- Wrath Rank 7
			{8983, 20000, req=6798, rank=3}, -- Bash Rank 3
			{9821, 20000, req=1850, rank=2}, -- Dash Rank 2
			{9823, 20000, req=9005, rank=2}, -- Pounce Rank 2
			{9829, 20000, req=8992, rank=4}, -- Shred Rank 4
			{9833, 20000, req=8929, rank=8}, -- Moonfire Rank 8
			{9839, 20000, req=8910, rank=8}, -- Rejuvenation Rank 8
		},
		[48] = {
			{16813, 1100, req=16812, rank=5}, -- Nature's Grasp Rank 5
			{9845, 22000, req=6793, rank=3}, -- Tiger's Fury Rank 3
			{9849, 22000, req=5201, rank=4}, -- Claw Rank 4
			{9852, 22000, req=5196, rank=5}, -- Entangling Roots Rank 5
			{9856, 22000, req=9750, rank=7}, -- Regrowth Rank 7
			{22828, 22000, req=22827, rank=3}, -- Ferocious Bite Rank 3
			{50766, 22000, req=50767, rank=4}, -- Revive Rank 4
		},
		[50] = {
			{24976, 1150, req=24975, rank=4}, -- Insect Swarm Rank 4
			{9862, 23000, req=8918, rank=3}, -- Tranquility Rank 3
			{9866, 23000, req=6787, rank=3}, -- Ravage Rank 3
			{9875, 23000, req=8951, rank=5}, -- Starfire Rank 5
			{9880, 23000, req=9745, rank=6}, -- Maul Rank 6
			{9884, 23000, req=8907, rank=6}, -- Mark of the Wild Rank 6
			{9888, 23000, req=9758, rank=9}, -- Healing Touch Rank 9
			{17401, 23000, req=16914, rank=2}, -- Hurricane Rank 2
			{20747, 23000, req=20742, rank=4}, -- Rebirth Rank 4
			{21849, 23000, rank=1}, -- Gift of the Wild Rank 1
		},
		[52] = {
			{9834, 26000, req=9833, rank=9}, -- Moonfire Rank 9
			{9840, 26000, req=9839, rank=9}, -- Rejuvenation Rank 9
			{9892, 26000, req=9000, rank=3}, -- Cower Rank 3
			{9894, 26000, req=9752, rank=5}, -- Rip Rank 5
			{9898, 26000, req=9747, rank=5}, -- Demoralizing Roar Rank 5
		},
		[54] = {
			{9830, 28000, req=9829, rank=5}, -- Shred Rank 5
			{9857, 28000, req=9856, rank=8}, -- Regrowth Rank 8
			{9901, 28000, req=8955, rank=3}, -- Soothe Animal Rank 3
			{9904, 28000, req=1824, rank=4}, -- Rake Rank 4
			{9908, 28000, req=9754, rank=5}, -- Swipe (Bear) Rank 5
			{9910, 28000, req=9756, rank=6}, -- Thorns Rank 6
			{9912, 28000, req=8905, rank=8}, -- Wrath Rank 8
		},
		[56] = {
			{9827, 30000, req=9823, rank=3}, -- Pounce Rank 3
			{9889, 30000, req=9888, rank=10}, -- Healing Touch Rank 10
			{22829, 30000, req=22828, rank=4}, -- Ferocious Bite Rank 4
		},
		[58] = {
			{17329, 1600, req=16813, rank=6}, -- Nature's Grasp Rank 6
			{33982, 1700, talent=33917, rank=2}, -- Mangle (Cat) Rank 2
			{33986, 1700, talent=33917, rank=2}, -- Mangle (Bear) Rank 2
			{9835, 32000, req=9834, rank=10}, -- Moonfire Rank 10
			{9841, 32000, req=9840, rank=10}, -- Rejuvenation Rank 10
			{9850, 32000, req=9849, rank=5}, -- Claw Rank 5
			{9853, 32000, req=9852, rank=6}, -- Entangling Roots Rank 6
			{9867, 32000, req=9866, rank=4}, -- Ravage Rank 4
			{9876, 32000, req=9875, rank=6}, -- Starfire Rank 6
			{9881, 32000, req=9880, rank=7}, -- Maul Rank 7
			{18658, 32000, req=18657, rank=3}, -- Hibernate Rank 3
		},
		[60] = {
			{53223, 600, talent=50516, rank=2}, -- Typhoon Rank 2
			{24977, 1700, req=24976, rank=5}, -- Insect Swarm Rank 5
			{31018, 30000, req=22829, rank=5}, -- Ferocious Bite Rank 5
			{9846, 34000, req=9845, rank=4}, -- Tiger's Fury Rank 4
			{9858, 34000, req=9857, rank=9}, -- Regrowth Rank 9
			{9863, 34000, req=9862, rank=4}, -- Tranquility Rank 4
			{9885, 34000, req=9884, rank=7}, -- Mark of the Wild Rank 7
			{9896, 34000, req=9894, rank=6}, -- Rip Rank 6
			{17402, 34000, req=17401, rank=3}, -- Hurricane Rank 3
			{20748, 34000, req=20747, rank=5}, -- Rebirth Rank 5
			{21850, 34000, req=21849, rank=2}, -- Gift of the Wild Rank 2
			{25297, 34000, req=9889, rank=11}, -- Healing Touch Rank 11
			{25298, 34000, req=9876, rank=7}, -- Starfire Rank 7
			{25299, 34000, req=9841, rank=11}, -- Rejuvenation Rank 11
			{31709, 34000, req=9892, rank=4}, -- Cower Rank 4
			{50765, 34000, req=50766, rank=5}, -- Revive Rank 5
		},
		[61] = {
			{26984, 39000, req=9912, rank=9}, -- Wrath Rank 9
			{27001, 39000, req=9830, rank=6}, -- Shred Rank 6
		},
		[62] = {
			{22570, 43000, rank=1}, -- Maim Rank 1
			{26978, 43000, req=25297, rank=12}, -- Healing Touch Rank 12
			{26998, 43000, req=9898, rank=6}, -- Demoralizing Roar Rank 6
		},
		[63] = {
			{24248, 48000, req=31018, rank=6}, -- Ferocious Bite Rank 6
			{26981, 48000, req=25299, rank=12}, -- Rejuvenation Rank 12
			{26987, 48000, req=9835, rank=11}, -- Moonfire Rank 11
		},
		[64] = {
			{26992, 53000, req=9910, rank=7}, -- Thorns Rank 7
			{26997, 53000, req=9908, rank=6}, -- Swipe (Bear) Rank 6
			{27003, 53000, req=9904, rank=5}, -- Rake Rank 5
			{33763, 53000, rank=1}, -- Lifebloom Rank 1
		},
		[65] = {
			{26980, 59000, req=9858, rank=10}, -- Regrowth Rank 10
			{33357, 59000, req=9821, rank=3}, -- Dash Rank 3
		},
		[66] = {
			{27005, 66000, req=9867, rank=5}, -- Ravage Rank 5
			{27006, 66000, req=9827, rank=4}, -- Pounce Rank 4
			{33745, 66000, rank=1}, -- Lacerate Rank 1
		},
		[67] = {
			{26986, 73000, req=25298, rank=8}, -- Starfire Rank 8
			{26996, 73000, req=9881, rank=8}, -- Maul Rank 8
			{27000, 73000, req=9850, rank=6}, -- Claw Rank 6
			{27008, 73000, req=9896, rank=7}, -- Rip Rank 7
		},
		[68] = {
			{27009, 1700, req=17329, rank=7}, -- Nature's Grasp Rank 7
			{33983, 1700, req=33982, rank=3}, -- Mangle (Cat) Rank 3
			{33987, 1900, req=33986, rank=3}, -- Mangle (Bear) Rank 3
			{26989, 81000, req=9853, rank=7}, -- Entangling Roots Rank 7
		},
		[69] = {
			{26979, 90000, req=26978, rank=13}, -- Healing Touch Rank 13
			{26982, 90000, req=26981, rank=13}, -- Rejuvenation Rank 13
			{26985, 90000, req=26984, rank=10}, -- Wrath Rank 10
			{26994, 90000, req=20748, rank=6}, -- Rebirth Rank 6
			{27004, 90000, req=31709, rank=5}, -- Cower Rank 5
			{50764, 90000, req=50765, rank=6}, -- Revive Rank 6
		},
		[70] = {
			{53225, 1700, req=53223, rank=3}, -- Typhoon Rank 3
			{53248, 1700, talent=48438, rank=2}, -- Wild Growth Rank 2
			{27013, 2500, req=24977, rank=6}, -- Insect Swarm Rank 6
			{53199, 10000, talent=48505, rank=2}, -- Starfall Rank 2
			{26983, 100000, req=9863, rank=5}, -- Tranquility Rank 5
			{26988, 100000, req=26987, rank=12}, -- Moonfire Rank 12
			{26990, 100000, req=9885, rank=8}, -- Mark of the Wild Rank 8
			{26991, 100000, req=21850, rank=3}, -- Gift of the Wild Rank 3
			{26995, 100000, req=9901, rank=4}, -- Soothe Animal Rank 4
			{27002, 100000, req=27001, rank=7}, -- Shred Rank 7
			{27012, 100000, req=17402, rank=4}, -- Hurricane Rank 4
			{33786, 100000, }, -- Cyclone
		},
		[71] = {
			{40120, 200000, req=33943}, -- Swift Flight Form Shapeshift
			{48442, 200000, req=26980, rank=11}, -- Regrowth Rank 11
			{48559, 200000, req=26998, rank=7}, -- Demoralizing Roar Rank 7
			{49799, 200000, req=27008, rank=8}, -- Rip Rank 8
			{50212, 200000, req=9846, rank=5}, -- Tiger's Fury Rank 5
			{62078, 200000, rank=1}, -- Swipe (Cat) Rank 1
		},
		[72] = {
			{48450, 200000, req=33763, rank=2}, -- Lifebloom Rank 2
			{48464, 200000, req=26986, rank=9}, -- Starfire Rank 9
			{48561, 200000, req=26997, rank=7}, -- Swipe (Bear) Rank 7
			{48573, 200000, req=27003, rank=6}, -- Rake Rank 6
			{48576, 200000, req=24248, rank=7}, -- Ferocious Bite Rank 7
		},
		[73] = {
			{48479, 200000, req=26996, rank=9}, -- Maul Rank 9
			{48567, 200000, req=33745, rank=2}, -- Lacerate Rank 2
			{48569, 200000, req=27000, rank=7}, -- Claw Rank 7
			{48578, 200000, req=27005, rank=6}, -- Ravage Rank 6
		},
		[74] = {
			{48377, 200000, req=26979, rank=14}, -- Healing Touch Rank 14
			{48459, 200000, req=26985, rank=11}, -- Wrath Rank 11
			{49802, 200000, req=22570, rank=2}, -- Maim Rank 2
			{53307, 200000, req=26992, rank=8}, -- Thorns Rank 8
		},
		[75] = {
			{48563, 10000, req=33987, rank=4}, -- Mangle (Bear) Rank 4
			{48565, 10000, req=33983, rank=4}, -- Mangle (Cat) Rank 4
			{53200, 10000, req=53199, rank=3}, -- Starfall Rank 3
			{53226, 10000, req=53225, rank=4}, -- Typhoon Rank 4
			{53249, 10000, req=53248, rank=3}, -- Wild Growth Rank 3
			{48440, 200000, req=26982, rank=14}, -- Rejuvenation Rank 14
			{48446, 200000, req=26983, rank=6}, -- Tranquility Rank 6
			{48462, 200000, req=26988, rank=13}, -- Moonfire Rank 13
			{48571, 200000, req=27002, rank=8}, -- Shred Rank 8
			{52610, 200000, rank=1}, -- Savage Roar Rank 1
		},
		[76] = {
			{48575, 200000, req=27004, rank=6}, -- Cower Rank 6
		},
		[77] = {
			{48443, 200000, req=48442, rank=12}, -- Regrowth Rank 12
			{48560, 200000, req=48559, rank=8}, -- Demoralizing Roar Rank 8
			{48562, 200000, req=48561, rank=8}, -- Swipe (Bear) Rank 8
			{49803, 200000, req=27006, rank=5}, -- Pounce Rank 5
		},
		[78] = {
			{48465, 200000, req=48464, rank=10}, -- Starfire Rank 10
			{48574, 200000, req=48573, rank=7}, -- Rake Rank 7
			{48577, 200000, req=48576, rank=8}, -- Ferocious Bite Rank 8
			{53308, 200000, req=26989, rank=8}, -- Entangling Roots Rank 8
			{53312, 200000, req=27009, rank=8}, -- Nature's Grasp Rank 8
		},
		[79] = {
			{48378, 200000, req=48377, rank=15}, -- Healing Touch Rank 15
			{48461, 200000, req=48459, rank=12}, -- Wrath Rank 12
			{48477, 200000, req=26994, rank=7}, -- Rebirth Rank 7
			{48480, 200000, req=48479, rank=10}, -- Maul Rank 10
			{48570, 200000, req=48569, rank=8}, -- Claw Rank 8
			{48579, 200000, req=48578, rank=7}, -- Ravage Rank 7
			{50213, 200000, req=50212, rank=6}, -- Tiger's Fury Rank 6
		},
		[80] = {
			{48564, 10000, req=48563, rank=5}, -- Mangle (Bear) Rank 5
			{48566, 10000, req=48565, rank=5}, -- Mangle (Cat) Rank 5
			{53201, 10000, req=53200, rank=4}, -- Starfall Rank 4
			{53251, 10000, req=53249, rank=4}, -- Wild Growth Rank 4
			{61384, 10000, req=53226, rank=5}, -- Typhoon Rank 5
			{48441, 200000, req=48440, rank=15}, -- Rejuvenation Rank 15
			{48447, 200000, req=48446, rank=7}, -- Tranquility Rank 7
			{48451, 200000, req=48450, rank=3}, -- Lifebloom Rank 3
			{48463, 200000, req=48462, rank=14}, -- Moonfire Rank 14
			{48467, 200000, req=27012, rank=5}, -- Hurricane Rank 5
			{48468, 200000, req=27013, rank=7}, -- Insect Swarm Rank 7
			{48469, 200000, req=26990, rank=9}, -- Mark of the Wild Rank 9
			{48470, 200000, req=26991, rank=4}, -- Gift of the Wild Rank 4
			{48568, 200000, req=48567, rank=3}, -- Lacerate Rank 3
			{48572, 200000, req=48571, rank=9}, -- Shred Rank 9
			{49800, 200000, req=49799, rank=9}, -- Rip Rank 9
			{50464, 200000, rank=1}, -- Nourish Rank 1
			{50763, 200000, req=50764, rank=7}, -- Revive Rank 7
		},
	},


	HUNTER = {
		[0] = {
			{196, 1000, }, -- One-Handed Axes
			{197, 1000, }, -- Two-Handed Axes
			{201, 1000, }, -- One-Handed Swords
			{202, 1000, }, -- Two-Handed Swords
			{227, 1000, }, -- Staves
			{264, 1000, }, -- Bows
			{266, 1000, }, -- Guns
			{1180, 1000, }, -- Daggers
			{5011, 1000, }, -- Crossbows
			{15590, 1000, }, -- Fist Weapons
		},
		[2] = {
			{1494, 10, }, -- Track Beasts
		},
		[4] = {
			{1978, 100, rank=1}, -- Serpent Sting Rank 1
			{13163, 100, }, -- Aspect of the Monkey
		},
		[6] = {
			{1130, 100, rank=1}, -- Hunter's Mark Rank 1
			{3044, 100, rank=1}, -- Arcane Shot Rank 1
		},
		[8] = {
			{5116, 200, }, -- Concussive Shot
			{14260, 200, req=2973, rank=2}, -- Raptor Strike Rank 2
			{3127, 200, }, -- Parry Passive
		},
		[10] = {
			{13165, 400, rank=1}, -- Aspect of the Hawk Rank 1
			{13549, 400, req=1978, rank=2}, -- Serpent Sting Rank 2
			{19883, 400, }, -- Track Humanoids
		},
		[12] = {
			{136, 600, rank=1}, -- Mend Pet Rank 1
			{2974, 600, }, -- Wing Clip
			{14281, 600, req=3044, rank=2}, -- Arcane Shot Rank 2
			{20736, 600, rank=1}, -- Distracting Shot Rank 1
		},
		[14] = {
			{1002, 1200, }, -- Eyes of the Beast
			{1513, 1200, rank=1}, -- Scare Beast Rank 1
			{6197, 1200, }, -- Eagle Eye
		},
		[16] = {
			{1495, 1800, rank=1}, -- Mongoose Bite Rank 1
			{13795, 1800, rank=1}, -- Immolation Trap Rank 1
			{14261, 1800, req=14260, rank=3}, -- Raptor Strike Rank 3
			{5118, 2200, }, -- Aspect of the Cheetah
		},
		[18] = {
			{2643, 2000, rank=1}, -- Multi-Shot Rank 1
			{13550, 2000, req=13549, rank=3}, -- Serpent Sting Rank 3
			{14318, 2000, req=13165, rank=2}, -- Aspect of the Hawk Rank 2
			{19884, 2000, }, -- Track Undead
		},
		[20] = {
			{674, 2200, }, -- Dual Wield Passive
			{781, 2200, }, -- Disengage
			{1499, 2200, rank=1}, -- Freezing Trap Rank 1
			{3111, 2200, req=136, rank=2}, -- Mend Pet Rank 2
			{14282, 2200, req=14281, rank=3}, -- Arcane Shot Rank 3
			{200, 10000, }, -- Polearms
			{34074, 100000, }, -- Aspect of the Viper
		},
		[22] = {
			{3043, 6000, }, -- Scorpid Sting
			{14323, 6000, req=1130, rank=2}, -- Hunter's Mark Rank 2
		},
		[24] = {
			{1462, 7000, }, -- Beast Lore
			{14262, 7000, req=14261, rank=4}, -- Raptor Strike Rank 4
			{19885, 7000, }, -- Track Hidden
		},
		[26] = {
			{3045, 7000, }, -- Rapid Fire
			{13551, 7000, req=13550, rank=4}, -- Serpent Sting Rank 4
			{14302, 7000, req=13795, rank=2}, -- Immolation Trap Rank 2
			{19880, 7000, }, -- Track Elementals
		},
		[28] = {
			{20900, 400, talent=19434, rank=2}, -- Aimed Shot Rank 2
			{3661, 8000, req=3111, rank=3}, -- Mend Pet Rank 3
			{13809, 8000, }, -- Frost Trap
			{14283, 8000, req=14282, rank=4}, -- Arcane Shot Rank 4
			{14319, 8000, req=14318, rank=3}, -- Aspect of the Hawk Rank 3
		},
		[30] = {
			{5384, 8000, }, -- Feign Death
			{13161, 8000, }, -- Aspect of the Beast
			{14269, 8000, req=1495, rank=2}, -- Mongoose Bite Rank 2
			{14288, 8000, req=2643, rank=2}, -- Multi-Shot Rank 2
			{14326, 8000, req=1513, rank=2}, -- Scare Beast Rank 2
		},
		[32] = {
			{1543, 10000, }, -- Flare
			{14263, 10000, req=14262, rank=5}, -- Raptor Strike Rank 5
			{19878, 10000, }, -- Track Demons
		},
		[34] = {
			{13552, 12000, req=13551, rank=5}, -- Serpent Sting Rank 5
			{13813, 12000, rank=1}, -- Explosive Trap Rank 1
		},
		[36] = {
			{20901, 700, req=20900, rank=3}, -- Aimed Shot Rank 3
			{3034, 14000, }, -- Viper Sting
			{3662, 14000, req=3661, rank=4}, -- Mend Pet Rank 4
			{14284, 14000, req=14283, rank=5}, -- Arcane Shot Rank 5
			{14303, 14000, req=14302, rank=3}, -- Immolation Trap Rank 3
		},
		[38] = {
			{14320, 16000, req=14319, rank=4}, -- Aspect of the Hawk Rank 4
		},
		[40] = {
			{8737, 12000, }, -- Mail
			{1510, 18000, rank=1}, -- Volley Rank 1
			{13159, 18000, }, -- Aspect of the Pack
			{14264, 18000, req=14263, rank=6}, -- Raptor Strike Rank 6
			{14310, 18000, req=1499, rank=2}, -- Freezing Trap Rank 2
			{14324, 18000, req=14323, rank=3}, -- Hunter's Mark Rank 3
			{19882, 18000, }, -- Track Giants
		},
		[42] = {
			{20909, 1200, talent=19306, rank=2}, -- Counterattack Rank 2
			{13553, 24000, req=13552, rank=6}, -- Serpent Sting Rank 6
			{14289, 24000, req=14288, rank=3}, -- Multi-Shot Rank 3
		},
		[44] = {
			{20902, 1300, req=20901, rank=4}, -- Aimed Shot Rank 4
			{13542, 26000, req=3662, rank=5}, -- Mend Pet Rank 5
			{14270, 26000, req=14269, rank=3}, -- Mongoose Bite Rank 3
			{14285, 26000, req=14284, rank=6}, -- Arcane Shot Rank 6
			{14316, 26000, req=13813, rank=2}, -- Explosive Trap Rank 2
		},
		[46] = {
			{14304, 28000, req=14303, rank=4}, -- Immolation Trap Rank 4
			{14327, 28000, req=14326, rank=3}, -- Scare Beast Rank 3
			{20043, 28000, rank=1}, -- Aspect of the Wild Rank 1
		},
		[48] = {
			{14265, 32000, req=14264, rank=7}, -- Raptor Strike Rank 7
			{14321, 32000, req=14320, rank=5}, -- Aspect of the Hawk Rank 5
		},
		[50] = {
			{24132, 1800, talent=19386, rank=2}, -- Wyvern Sting Rank 2
			{13554, 36000, req=13553, rank=7}, -- Serpent Sting Rank 7
			{14294, 36000, req=1510, rank=2}, -- Volley Rank 2
			{19879, 36000, }, -- Track Dragonkin
			{56641, 36000, rank=1}, -- Steady Shot Rank 1
		},
		[52] = {
			{20903, 2000, req=20902, rank=5}, -- Aimed Shot Rank 5
			{13543, 40000, req=13542, rank=6}, -- Mend Pet Rank 6
			{14286, 40000, req=14285, rank=7}, -- Arcane Shot Rank 7
		},
		[54] = {
			{20910, 2100, req=20909, rank=3}, -- Counterattack Rank 3
			{14290, 42000, req=14289, rank=4}, -- Multi-Shot Rank 4
			{14317, 42000, req=14316, rank=3}, -- Explosive Trap Rank 3
		},
		[56] = {
			{14266, 46000, req=14265, rank=8}, -- Raptor Strike Rank 8
			{14305, 46000, req=14304, rank=5}, -- Immolation Trap Rank 5
			{20190, 46000, req=20043, rank=2}, -- Aspect of the Wild Rank 2
		},
		[57] = {
			{63668, 1800, talent=3674, rank=2}, -- Black Arrow Rank 2
		},
		[58] = {
			{13555, 48000, req=13554, rank=8}, -- Serpent Sting Rank 8
			{14271, 48000, req=14270, rank=4}, -- Mongoose Bite Rank 4
			{14295, 48000, req=14294, rank=3}, -- Volley Rank 3
			{14322, 48000, req=14321, rank=6}, -- Aspect of the Hawk Rank 6
			{14325, 48000, req=14324, rank=4}, -- Hunter's Mark Rank 4
		},
		[60] = {
			{19263, 2200, }, -- Deterrence
			{20904, 2500, req=20903, rank=6}, -- Aimed Shot Rank 6
			{24133, 2500, req=24132, rank=3}, -- Wyvern Sting Rank 3
			{13544, 50000, req=13543, rank=7}, -- Mend Pet Rank 7
			{14287, 50000, req=14286, rank=8}, -- Arcane Shot Rank 8
			{14311, 50000, req=14310, rank=3}, -- Freezing Trap Rank 3
			{19801, 50000, }, -- Tranquilizing Shot
			{25294, 50000, req=14290, rank=5}, -- Multi-Shot Rank 5
			{25295, 50000, req=13555, rank=9}, -- Serpent Sting Rank 9
			{25296, 50000, req=14322, rank=7}, -- Aspect of the Hawk Rank 7
		},
		[61] = {
			{27025, 68000, req=14317, rank=4}, -- Explosive Trap Rank 4
		},
		[62] = {
			{34120, 77000, req=56641, rank=2}, -- Steady Shot Rank 2
		},
		[63] = {
			{63669, 7000, req=63668, rank=3}, -- Black Arrow Rank 3
			{27014, 87000, req=14266, rank=9}, -- Raptor Strike Rank 9
		},
		[65] = {
			{27023, 110000, req=14305, rank=6}, -- Immolation Trap Rank 6
		},
		[66] = {
			{27067, 2500, req=20910, rank=4}, -- Counterattack Rank 4
			{34026, 120000, }, -- Kill Command
		},
		[67] = {
			{27016, 140000, req=25295, rank=10}, -- Serpent Sting Rank 10
			{27021, 140000, req=25294, rank=6}, -- Multi-Shot Rank 6
			{27022, 140000, req=14295, rank=4}, -- Volley Rank 4
		},
		[68] = {
			{27044, 150000, req=25296, rank=8}, -- Aspect of the Hawk Rank 8
			{27045, 150000, req=20190, rank=3}, -- Aspect of the Wild Rank 3
			{27046, 150000, req=13544, rank=8}, -- Mend Pet Rank 8
			{34600, 150000, }, -- Snake Trap
		},
		[69] = {
			{63670, 10000, req=63669, rank=4}, -- Black Arrow Rank 4
			{27019, 170000, req=14287, rank=9}, -- Arcane Shot Rank 9
		},
		[70] = {
			{60051, 400, talent=53301, rank=2}, -- Explosive Shot Rank 2
			{27065, 2700, req=20904, rank=7}, -- Aimed Shot Rank 7
			{27068, 2700, req=24133, rank=4}, -- Wyvern Sting Rank 4
			{34477, 190000, }, -- Misdirection
			{36916, 190000, req=14271, rank=5}, -- Mongoose Bite Rank 5
		},
		[71] = {
			{48995, 300000, req=27014, rank=10}, -- Raptor Strike Rank 10
			{49051, 300000, req=34120, rank=3}, -- Steady Shot Rank 3
			{49066, 300000, req=27025, rank=5}, -- Explosive Trap Rank 5
			{53351, 300000, rank=1}, -- Kill Shot Rank 1
		},
		[72] = {
			{48998, 10000, req=27067, rank=5}, -- Counterattack Rank 5
			{49055, 300000, req=27023, rank=7}, -- Immolation Trap Rank 7
		},
		[73] = {
			{49000, 300000, req=27016, rank=11}, -- Serpent Sting Rank 11
			{49044, 300000, req=27019, rank=10}, -- Arcane Shot Rank 10
		},
		[74] = {
			{48989, 300000, req=27046, rank=9}, -- Mend Pet Rank 9
			{49047, 300000, req=27021, rank=7}, -- Multi-Shot Rank 7
			{58431, 300000, req=27022, rank=5}, -- Volley Rank 5
			{61846, 300000, rank=1}, -- Aspect of the Dragonhawk Rank 1
		},
		[75] = {
			{60052, 400, req=60051, rank=3}, -- Explosive Shot Rank 3
			{49049, 10000, req=27065, rank=8}, -- Aimed Shot Rank 8
			{53271, 10000, }, -- Master's Call
			{63671, 10000, req=63670, rank=5}, -- Black Arrow Rank 5
			{49011, 100000, req=27068, rank=5}, -- Wyvern Sting Rank 5
			{61005, 300000, req=53351, rank=2}, -- Kill Shot Rank 2
		},
		[76] = {
			{53338, 10000, req=14325, rank=5}, -- Hunter's Mark Rank 5
			{49071, 300000, req=27045, rank=4}, -- Aspect of the Wild Rank 4
		},
		[77] = {
			{48996, 300000, req=48995, rank=11}, -- Raptor Strike Rank 11
			{49052, 300000, req=49051, rank=4}, -- Steady Shot Rank 4
			{49067, 300000, req=49066, rank=6}, -- Explosive Trap Rank 6
		},
		[78] = {
			{48999, 15000, req=48998, rank=6}, -- Counterattack Rank 6
			{49056, 300000, req=49055, rank=8}, -- Immolation Trap Rank 8
		},
		[79] = {
			{49001, 300000, req=49000, rank=12}, -- Serpent Sting Rank 12
			{49045, 300000, req=49044, rank=11}, -- Arcane Shot Rank 11
		},
		[80] = {
			{49050, 10000, req=49049, rank=9}, -- Aimed Shot Rank 9
			{63672, 10000, req=63671, rank=6}, -- Black Arrow Rank 6
			{49012, 100000, req=49011, rank=6}, -- Wyvern Sting Rank 6
			{60053, 100000, req=60052, rank=4}, -- Explosive Shot Rank 4
			{60192, 100000, rank=1}, -- Freezing Arrow Rank 1
			{48990, 300000, req=48989, rank=10}, -- Mend Pet Rank 10
			{49048, 300000, req=49047, rank=8}, -- Multi-Shot Rank 8
			{53339, 300000, req=36916, rank=6}, -- Mongoose Bite Rank 6
			{58434, 300000, req=58431, rank=6}, -- Volley Rank 6
			{61006, 300000, req=61005, rank=3}, -- Kill Shot Rank 3
			{61847, 300000, req=61846, rank=2}, -- Aspect of the Dragonhawk Rank 2
			{62757, 300000, }, -- Call Stabled Pet
		},
	},


	MAGE = {
		[0] = {
			{201, 1000}, -- One-Handed Swords
			{227, 1000}, -- Staves
			{1180, 1000}, -- Daggers
		},
		[1] = {
			{1459, 10, rank=1}, -- Arcane Intellect Rank 1
		},
		[4] = {
			{116, 100, rank=1}, -- Frostbolt Rank 1
			{5504, 100, rank=1}, -- Conjure Water Rank 1
		},
		[6] = {
			{143, 100, req=133, rank=2}, -- Fireball Rank 2
			{587, 100, rank=1}, -- Conjure Food Rank 1
			{2136, 100, rank=1}, -- Fire Blast Rank 1
		},
		[8] = {
			{118, 200, rank=1}, -- Polymorph Rank 1
			{205, 200, req=116, rank=2}, -- Frostbolt Rank 2
			{5143, 200, rank=1}, -- Arcane Missiles Rank 1
		},
		[10] = {
			{122, 400, rank=1}, -- Frost Nova Rank 1
			{5505, 400, req=5504, rank=2}, -- Conjure Water Rank 2
			{7300, 400, req=168, rank=2}, -- Frost Armor Rank 2
		},
		[12] = {
			{130, 600}, -- Slow Fall
			{145, 600, req=143, rank=3}, -- Fireball Rank 3
			{597, 600, req=587, rank=2}, -- Conjure Food Rank 2
			{604, 600, rank=1}, -- Dampen Magic Rank 1
		},
		[14] = {
			{837, 900, req=205, rank=3}, -- Frostbolt Rank 3
			{1449, 900, rank=1}, -- Arcane Explosion Rank 1
			{1460, 900, req=1459, rank=2}, -- Arcane Intellect Rank 2
			{2137, 900, req=2136, rank=2}, -- Fire Blast Rank 2
		},
		[16] = {
			{2120, 1500, rank=1}, -- Flamestrike Rank 1
			{5144, 1500, req=5143, rank=2}, -- Arcane Missiles Rank 2
		},
		[18] = {
			{475, 1800}, -- Remove Curse
			{1008, 1800, rank=1}, -- Amplify Magic Rank 1
			{3140, 1800, req=145, rank=4}, -- Fireball Rank 4
		},
		[20] = {
			{10, 2000, rank=1}, -- Blizzard Rank 1
			{1953, 2000}, -- Blink
			{12051, 2000}, -- Evocation
			{1463, 2000, rank=1}, -- Mana Shield Rank 1
			{5506, 2000, req=5505, rank=3}, -- Conjure Water Rank 3
			{7301, 2000, req=7300, rank=3}, -- Frost Armor Rank 3
			{543, 2000, rank=1}, -- Fire Ward Rank 1
			{7322, 2000, req=837, rank=4}, -- Frostbolt Rank 4
			{12824, 2000, req=118, rank=2}, -- Polymorph Rank 2
			{3561, 2000, faction="Alliance"}, -- Teleport: Stormwind --, npc=2485
			{32271, 1900, faction="Alliance"}, -- Teleport: Exodar --, npc=16755
			{3562, 2000, faction="Alliance"}, -- Teleport: Ironforge --, npc=2489
			{3563, 2000, faction="Horde"}, -- Teleport: Undercity --, npc=2492
			{32272, 2000, faction="Horde"}, -- Teleport: Silvermoon --, npc=16654
			{3567, 2000, faction="Horde"}, -- Teleport: Orgrimmar --, npc=5958
		},
		[22] = {
			{990, 3000, req=597, rank=3}, -- Conjure Food Rank 3
			{2138, 3000, req=2137, rank=3}, -- Fire Blast Rank 3
			{2948, 3000, rank=1}, -- Scorch Rank 1
			{6143, 3000, rank=1}, -- Frost Ward Rank 1
			{8437, 3000, req=1449, rank=2}, -- Arcane Explosion Rank 2
		},
		[24] = {
			{12505, 200, talent=11366, rank=2}, -- Pyroblast Rank 2
			{2121, 4000, req=2120, rank=2}, -- Flamestrike Rank 2
			{2139, 4000}, -- Counterspell
			{5145, 4000, req=5144, rank=3}, -- Arcane Missiles Rank 3
			{8400, 4000, req=3140, rank=5}, -- Fireball Rank 5
			{8450, 4000, req=604, rank=2}, -- Dampen Magic Rank 2
		},
		[26] = {
			{120, 5000, rank=1}, -- Cone of Cold Rank 1
			{865, 5000, req=122, optional=true, rank=2}, -- Frost Nova Rank 2
			{8406, 5000, req=7322, rank=5}, -- Frostbolt Rank 5
		},
		[28] = {
			{759, 7000, rank=1}, -- Conjure Mana Gem Rank 1
			{1461, 7000, req=1460, rank=3}, -- Arcane Intellect Rank 3
			{6141, 7000, req=10, rank=2}, -- Blizzard Rank 2
			{8444, 7000, req=2948, rank=2}, -- Scorch Rank 2
			{8494, 7000, req=1463, rank=2}, -- Mana Shield Rank 2
		},
		[30] = {
			{8455, 8000, req=1008, rank=2}, -- Amplify Magic Rank 2
			{8438, 8000, req=8437, rank=3}, -- Arcane Explosion Rank 3
			{6127, 8000, req=5506, rank=4}, -- Conjure Water Rank 4
			{8412, 8000, req=2138, rank=4}, -- Fire Blast Rank 4
			{8457, 8000, req=543, rank=2}, -- Fire Ward Rank 2
			{8401, 8000, req=8400, rank=6}, -- Fireball Rank 6
			{7302, 8000, rank=1}, -- Ice Armor Rank 1
			{45438, 8000}, -- Ice Block
			{12522, 400, req=12505, rank=3}, -- Pyroblast Rank 3
			{3565, 8000, faction="Alliance"}, -- Teleport: Darnassus --, npc=4165
			{3566, 8000, faction="Horde"}, -- Teleport: Thunder Bluff --, npc=5957
		},
		[32] = {
			{8416, 10000, req=5145, rank=4}, -- Arcane Missiles Rank 4
			{6129, 10000, req=990, rank=4}, -- Conjure Food Rank 4
			{8422, 10000, req=2121, rank=3}, -- Flamestrike Rank 3
			{8461, 10000, req=6143, rank=2}, -- Frost Ward Rank 2
			{8407, 10000, req=8406, rank=6}, -- Frostbolt Rank 6
		},
		[34] = {
			{8492, 12000, req=120, rank=2}, -- Cone of Cold Rank 2
			{6117, 13000, rank=1}, -- Mage Armor Rank 1
			{8445, 12000, req=8444, rank=3}, -- Scorch Rank 3
		},
		[35] = {
			{49361, 15000, faction="Horde"}, -- Portal: Stonard --, npc=27705
			{49360, 15000, faction="Alliance"}, -- Portal: Theramore --, npc=27703
			{49358, 2000, faction="Horde"}, -- Teleport: Stonard --, npc=27705
			{49359, 2000, faction="Alliance"}, -- Teleport: Theramore --, npc=27703
		},
		[36] = {
			{13018, 650, talent=11113, rank=2}, -- Blast Wave Rank 2
			{8427, 13000, req=6141, rank=3}, -- Blizzard Rank 3
			{8451, 13000, req=8450, rank=3}, -- Dampen Magic Rank 3
			{8402, 13000, req=8401, rank=7}, -- Fireball Rank 7
			{8495, 13000, req=8494, rank=3}, -- Mana Shield Rank 3
			{12523, 650, req=12522, rank=4}, -- Pyroblast Rank 4
		},
		[38] = {
			{8439, 14000, req=8438, rank=4}, -- Arcane Explosion Rank 4
			{3552, 14000, req=759, rank=2}, -- Conjure Mana Gem Rank 2
			{8413, 14000, req=8412, rank=5}, -- Fire Blast Rank 5
			{8408, 14000, req=8407, rank=7}, -- Frostbolt Rank 7
		},
		[40] = {
			{8417, 15000, req=8416, rank=5}, -- Arcane Missiles Rank 5
			{10138, 15000, req=6127, rank=5}, -- Conjure Water Rank 5
			{8458, 15000, req=8457, rank=3}, -- Fire Ward Rank 3
			{8423, 15000, req=8422, rank=4}, -- Flamestrike Rank 4
			{6131, 15000, req=865, optional=true, rank=3}, -- Frost Nova Rank 3
			{7320, 15000, req=7302, rank=2}, -- Ice Armor Rank 2
			{12825, 15000, req=12824, rank=3}, -- Polymorph Rank 3
			{32266, 14250, faction="Alliance"}, -- Portal: Exodar --, npc=16755
			{10059, 15000, faction="Alliance"}, -- Portal: Stormwind --, npc=2485
			{11416, 15000, faction="Alliance"}, -- Portal: Ironforge --, npc=2489
			{11417, 15000, faction="Horde"}, -- Portal: Orgrimmar --, npc=5958
			{11418, 15000, faction="Horde"}, -- Portal: Undercity --, npc=2492
			{32267, 15000, faction="Horde"}, -- Portal: Silvermoon --, npc=16654
			{8446, 15000, req=8445, rank=4}, -- Scorch Rank 4
		},
		[42] = {
			{10169, 18000, req=8455, rank=3}, -- Amplify Magic Rank 3
			{10156, 18000, req=1461, rank=4}, -- Arcane Intellect Rank 4
			{10159, 18000, req=8492, rank=3}, -- Cone of Cold Rank 3
			{10144, 18000, req=6129, rank=5}, -- Conjure Food Rank 5
			{10148, 18000, req=8402, rank=8}, -- Fireball Rank 8
			{8462, 18000, req=8461, rank=3}, -- Frost Ward Rank 3
			{12524, 900, req=12523, rank=5}, -- Pyroblast Rank 5
		},
		[44] = {
			{13019, 1150, req=13018, rank=3}, -- Blast Wave Rank 3
			{10185, 23000, req=8427, rank=4}, -- Blizzard Rank 4
			{10191, 23000, req=8495, rank=4}, -- Mana Shield Rank 4
			{10179, 23000, req=8408, rank=8}, -- Frostbolt Rank 8
		},
		[46] = {
			{10201, 26000, req=8439, rank=5}, -- Arcane Explosion Rank 5
			{13031, 1300, talent=11426, rank=2}, -- Ice Barrier Rank 2
			{10197, 26000, req=8413, rank=6}, -- Fire Blast Rank 6
			{22782, 28000, req=6117, rank=2}, -- Mage Armor Rank 2
			{10205, 26000, req=8446, rank=5}, -- Scorch Rank 5
		},
		[48] = {
			{10211, 28000, req=8417, rank=6}, -- Arcane Missiles Rank 6
			{10053, 28000, req=3552, rank=3}, -- Conjure Mana Gem Rank 3
			{10173, 28000, req=8451, rank=4}, -- Dampen Magic Rank 4
			{10149, 28000, req=10148, rank=9}, -- Fireball Rank 9
			{10215, 28000, req=8423, rank=5}, -- Flamestrike Rank 5
			{12525, 1400, req=12524, rank=6}, -- Pyroblast Rank 6
		},
		[50] = {
			{10160, 32000, req=10159, rank=4}, -- Cone of Cold Rank 4
			{10139, 32000, req=10138, rank=6}, -- Conjure Water Rank 6
			{10223, 32000, req=8458, rank=4}, -- Fire Ward Rank 4
			{10180, 32000, req=10179, rank=9}, -- Frostbolt Rank 9
			{10219, 32000, req=7320, rank=3}, -- Ice Armor Rank 3
			{11419, 32000, faction="Alliance"}, -- Portal: Darnassus --, npc=4165
			{11420, 32000, faction="Horde"}, -- Portal: Thunder Bluff --, npc=5957
		},
		[52] = {
			{13020, 1750, req=13019, rank=4}, -- Blast Wave Rank 4
			{10186, 35000, req=10185, rank=5}, -- Blizzard Rank 5
			{10145, 35000, req=10144, rank=6}, -- Conjure Food Rank 6
			{10177, 35000, req=8462, rank=4}, -- Frost Ward Rank 4
			{13032, 1750, req=13031, rank=3}, -- Ice Barrier Rank 3
			{10192, 35000, req=10191, rank=5}, -- Mana Shield Rank 5
			{10206, 35000, req=10205, rank=6}, -- Scorch Rank 6
		},
		[54] = {
			{10170, 36000, req=10169, rank=4}, -- Amplify Magic Rank 4
			{10202, 36000, req=10201, rank=6}, -- Arcane Explosion Rank 6
			{10199, 36000, req=10197, rank=7}, -- Fire Blast Rank 7
			{10150, 36000, req=10149, rank=10}, -- Fireball Rank 10
			{10230, 36000, req=6131, optional=true, rank=4}, -- Frost Nova Rank 4
			{12526, 1800, req=12525, rank=7}, -- Pyroblast Rank 7
		},
		[56] = {
			{23028, 38000, rank=1}, -- Arcane Brilliance Rank 1
			{10157, 38000, req=10156, rank=5}, -- Arcane Intellect Rank 5
			{10212, 38000, req=10211, rank=7}, -- Arcane Missiles Rank 7
			{33041, 1900, talent=31661, rank=2}, -- Dragon's Breath Rank 2
			{10216, 38000, req=10215, rank=6}, -- Flamestrike Rank 6
			{10181, 38000, req=10180, rank=10}, -- Frostbolt Rank 10
		},
		[58] = {
			{10161, 40000, req=10160, rank=5}, -- Cone of Cold Rank 5
			{10054, 40000, req=10053, rank=4}, -- Conjure Mana Gem Rank 4
			{13033, 2000, req=13032, rank=4}, -- Ice Barrier Rank 4
			{22783, 40000, req=22782, rank=3}, -- Mage Armor Rank 3
			{10207, 40000, req=10206, rank=7}, -- Scorch Rank 7
		},
		[60] = {
			{25345, 42000, req=10212, rank=8}, -- Arcane Missiles Rank 8
			{13021, 2100, req=13020, rank=5}, -- Blast Wave Rank 5
			{10187, 42000, req=10186, rank=6}, -- Blizzard Rank 6
			{28612, 42000, req=10145, rank=7}, -- Conjure Food Rank 7
			{10140, 42000, req=10139, rank=7}, -- Conjure Water Rank 7
			{10174, 42000, req=10173, rank=5}, -- Dampen Magic Rank 5
			{10225, 42000, req=10223, rank=5}, -- Fire Ward Rank 5
			{10151, 42000, req=10150, rank=11}, -- Fireball Rank 11
			{28609, 42000, req=10177, rank=5}, -- Frost Ward Rank 5
			{25304, 42000, req=10181, rank=11}, -- Frostbolt Rank 11
			{10220, 42000, req=10219, rank=4}, -- Ice Armor Rank 4
			{10193, 42000, req=10192, rank=6}, -- Mana Shield Rank 6
			{12826, 42000, req=12825, rank=4}, -- Polymorph Rank 4
			{18809, 2100, req=12526, rank=8}, -- Pyroblast Rank 8
			{33690, 20000, faction="Alliance"}, -- Teleport: Shattrath --, npc=20791
			{35715, 20000, faction="Horde"}, -- Teleport: Shattrath --, npc=20791
		},
		[61] = {
			{27078, 46000, req=10199, rank=8}, -- Fire Blast Rank 8
		},
		[62] = {
			{27080, 51000, req=10202, rank=7}, -- Arcane Explosion Rank 7
			{25306, 42000, req=10151, rank=12}, -- Fireball Rank 12
			{30482, 51000, rank=1}, -- Molten Armor Rank 1
		},
		[63] = {
			{27130, 57000, req=10170, rank=5}, -- Amplify Magic Rank 5
			{27075, 57000, req=25345, rank=9}, -- Arcane Missiles Rank 9
			{27071, 57000, req=25304, rank=12}, -- Frostbolt Rank 12
		},
		[64] = {
			{30451, 63000, rank=1}, -- Arcane Blast Rank 1
			{33042, 2200, req=33041, rank=3}, -- Dragon's Breath Rank 3
			{27134, 2500, req=13033, rank=5}, -- Ice Barrier Rank 5
			{27086, 63000, req=10216, rank=7}, -- Flamestrike Rank 7
		},
		[65] = {
			{27133, 10500, req=13021, rank=6}, -- Blast Wave Rank 6
			{27087, 70000, req=10161, rank=6}, -- Cone of Cold Rank 6
			{37420, 70000, req=10140, rank=8}, -- Conjure Water Rank 8
			{33691, 150000, faction="Alliance"}, -- Portal: Shattrath --, npc=20791
			{35717, 150000, faction="Horde"}, -- Portal: Shattrath --, npc=20791
			{27073, 70000, req=10207, rank=8}, -- Scorch Rank 8
		},
		[66] = {
			{30455, 78000, rank=1}, -- Ice Lance Rank 1
			{27070, 78000, req=25306, rank=13}, -- Fireball Rank 13
			{27132, 10500, req=18809, rank=9}, -- Pyroblast Rank 9
		},
		[67] = {
			{33944, 87000, req=10174, rank=6}, -- Dampen Magic Rank 6
			{27088, 87000, req=10230, optional=true, rank=5}, -- Frost Nova Rank 5
		},
		[68] = {
			{27085, 96000, req=10187, rank=7}, -- Blizzard Rank 7
			{27101, 96000, req=10054, rank=5}, -- Conjure Mana Gem Rank 5
			{66, 96000}, -- Invisibility
			{27131, 96000, req=10193, rank=7}, -- Mana Shield Rank 7
		},
		[69] = {
			{33946, 110000, req=27130, rank=6}, -- Amplify Magic Rank 6
			{38699, 87000, req=27075, rank=10}, -- Arcane Missiles Rank 10
			{27128, 110000, req=10225, rank=6}, -- Fire Ward Rank 6
			{27072, 110000, req=27071, rank=13}, -- Frostbolt Rank 13
			{27124, 110000, req=10220, rank=5}, -- Ice Armor Rank 5
			{27125, 110000, req=22783, rank=4}, -- Mage Armor Rank 4
		},
		[70] = {
			{44780, 10000, talent=44425, rank=2}, -- Arcane Barrage Rank 2
			{27127, 100000, req=23028, rank=2}, -- Arcane Brilliance Rank 2
			{27082, 120000, req=27080, rank=8}, -- Arcane Explosion Rank 8
			{27126, 120000, req=10157, rank=6}, -- Arcane Intellect Rank 6
			{38704, 100000, req=38699, rank=11}, -- Arcane Missiles Rank 11
			{33933, 12500, req=27133, rank=7}, -- Blast Wave Rank 7
			{33717, 150000, req=28612, rank=8}, -- Conjure Food Rank 8
			{27090, 150000, req=37420, rank=9}, -- Conjure Water Rank 9
			{33043, 2500, req=33042, rank=4}, -- Dragon's Breath Rank 4
			{27079, 120000, req=27078, rank=9}, -- Fire Blast Rank 9
			{38692, 150000, req=27070, rank=14}, -- Fireball Rank 14
			{32796, 120000, req=28609, rank=6}, -- Frost Ward Rank 6
			{38697, 150000, req=27072, rank=14}, -- Frostbolt Rank 14
			{33405, 10500, req=27134, rank=6}, -- Ice Barrier Rank 6
			{55359, 5000, talent=44457, rank=2}, -- Living Bomb Rank 2
			{33938, 10500, req=27132, rank=10}, -- Pyroblast Rank 10
			{43987, 120000, rank=1}, -- Ritual of Refreshment Rank 1
			{27074, 120000, req=27073, rank=9}, -- Scorch Rank 9
			{30449, 120000, }, -- Spellsteal
		},
		[71] = {
			{42894, 150000, req=30451, rank=2}, -- Arcane Blast Rank 2
			{43023, 150000, req=27125, rank=5}, -- Mage Armor Rank 5
			{43045, 150000, req=30482, rank=2}, -- Molten Armor Rank 2
			{53140, 100000}, -- Teleport: Dalaran --, npc=29156
		},
		[72] = {
			{42930, 150000, req=27087, rank=7}, -- Cone of Cold Rank 7
			{42925, 150000, req=27086, rank=8}, -- Flamestrike Rank 8
			{42913, 150000, req=30455, rank=2}, -- Ice Lance Rank 2
		},
		[73] = {
			{43019, 150000, req=27131, rank=8}, -- Mana Shield Rank 8
			{42890, 7500, req=33938, rank=11}, -- Pyroblast Rank 11
			{42858, 150000, req=27074, rank=10}, -- Scorch Rank 10
		},
		[74] = {
			{42939, 150000, req=27085, rank=8}, -- Blizzard Rank 8
			{42872, 150000, req=27079, rank=10}, -- Fire Blast Rank 10
			{42832, 150000, req=38692, rank=15}, -- Fireball Rank 15
			{53142, 100000, }, -- Portal: Dalaran --, npc=29156
		},
		[75] = {
			{42843, 150000, req=38704, rank=12}, -- Arcane Missiles Rank 12
			{42944, 7500, req=33933, rank=8}, -- Blast Wave Rank 8
			{42955, 150000, rank=1}, -- Conjure Refreshment Rank 1
			{42949, 7500, req=33043, rank=5}, -- Dragon's Breath Rank 5
			{42917, 150000, req=27088, optional=true, rank=6}, -- Frost Nova Rank 6
			{42841, 150000, req=38697, rank=15}, -- Frostbolt Rank 15
			{44614, 150000, rank=1}, -- Frostfire Bolt Rank 1
			{43038, 7500, req=33405, rank=7}, -- Ice Barrier Rank 7
		},
		[76] = {
			{42896, 150000, req=42894, rank=3}, -- Arcane Blast Rank 3
			{42920, 150000, req=27082, rank=9}, -- Arcane Explosion Rank 9
			{43015, 150000, req=33944, rank=7}, -- Dampen Magic Rank 7
		},
		[77] = {
			{43017, 150000, req=33946, rank=7}, -- Amplify Magic Rank 7
			{42985, 150000, req=27101, rank=6}, -- Conjure Mana Gem Rank 6
			{42891, 7500, req=42890, rank=12}, -- Pyroblast Rank 12
		},
		[78] = {
			{43010, 150000, req=27128, rank=7}, -- Fire Ward Rank 7
			{42833, 150000, req=42832, rank=16}, -- Fireball Rank 16
			{42914, 150000, req=42913, rank=3}, -- Ice Lance Rank 3
			{42859, 150000, req=42858, rank=11}, -- Scorch Rank 11
		},
		[79] = {
			{42846, 150000, req=42843, rank=13}, -- Arcane Missiles Rank 13
			{42931, 150000, req=42930, rank=8}, -- Cone of Cold Rank 8
			{42926, 150000, req=42925, rank=9}, -- Flamestrike Rank 9
			{43012, 150000, req=32796, rank=7}, -- Frost Ward Rank 7
			{42842, 150000, req=42841, rank=16}, -- Frostbolt Rank 16
			{43008, 150000, req=27124, rank=6}, -- Ice Armor Rank 6
			{43024, 150000, req=43023, rank=6}, -- Mage Armor Rank 6
			{43020, 150000, req=43019, rank=9}, -- Mana Shield Rank 9
			{43046, 150000, req=43045, rank=3}, -- Molten Armor Rank 3
		},
		[80] = {
			{44781, 15000, req=44780, rank=3}, -- Arcane Barrage Rank 3
			{42897, 150000, req=42896, rank=4}, -- Arcane Blast Rank 4
			{43002, 150000, req=27127, rank=3}, -- Arcane Brilliance Rank 3
			{42995, 150000, req=27126, rank=7}, -- Arcane Intellect Rank 7
			{42921, 150000, req=42920, rank=10}, -- Arcane Explosion Rank 10
			{42945, 7500, req=42944, rank=9}, -- Blast Wave Rank 9
			{42940, 150000, req=42939, rank=9}, -- Blizzard Rank 9
			{42956, 150000, req=42955, rank=2}, -- Conjure Refreshment Rank 2
			{42950, 7500, req=42949, rank=6}, -- Dragon's Breath Rank 6
			{42873, 150000, req=42872, rank=11}, -- Fire Blast Rank 11
			{47610, 150000, req=44614, rank=2}, -- Frostfire Bolt Rank 2
			{43039, 7500, req=43038, rank=8}, -- Ice Barrier Rank 8
			{55360, 7500, req=55359, rank=3}, -- Living Bomb Rank 3
			{55342, 150000}, -- Mirror Image
			{58659, 150000, req=43987, rank=2}, -- Ritual of Refreshment Rank 2
		},
	},


	PALADIN = {
		[0] = {
			{196, 1000, }, -- One-Handed Axes
			{197, 1000, }, -- Two-Handed Axes
			{198, 1000, }, -- One-Handed Maces
			{199, 1000, }, -- Two-Handed Maces
			{201, 1000, }, -- One-Handed Swords
			{202, 1000, }, -- Two-Handed Swords
		},
		[1] = {
			{465, 10, rank=1}, -- Devotion Aura Rank 1
		},
		[4] = {
			{19740, 100, rank=1}, -- Blessing of Might Rank 1
			{20271, 100, }, -- Judgement of Light
		},
		[6] = {
			{498, 100, }, -- Divine Protection
			{639, 100, req=635, rank=2}, -- Holy Light Rank 2
		},
		[8] = {
			{853, 100, rank=1}, -- Hammer of Justice Rank 1
			{1152, 100, }, -- Purify
		},
		[10] = {
			{633, 300, rank=1}, -- Lay on Hands Rank 1
			{1022, 300, rank=1}, -- Hand of Protection Rank 1
			{10290, 300, req=465, rank=2}, -- Devotion Aura Rank 2
		},
		[12] = {
			{3127, 800, }, -- Parry Passive
			{19834, 1000, req=19740, rank=2}, -- Blessing of Might Rank 2
			{53408, 1000, }, -- Judgement of Wisdom
		},
		[14] = {
			{647, 2000, req=639, rank=3}, -- Holy Light Rank 3
			{19742, 2000, rank=1}, -- Blessing of Wisdom Rank 1
			{31789, 4000, }, -- Righteous Defense
		},
		[16] = {
			{7294, 3000, rank=1}, -- Retribution Aura Rank 1
			{25780, 3000, }, -- Righteous Fury
			{62124, 3000, }, -- Hand of Reckoning
		},
		[18] = {
			{1044, 3500, }, -- Hand of Freedom
		},
		[20] = {
			{643, 4000, req=10290, rank=3}, -- Devotion Aura Rank 3
			{879, 4000, rank=1}, -- Exorcism Rank 1
			{5502, 4000, }, -- Sense Undead
			{19750, 4000, rank=1}, -- Flash of Light Rank 1
			{20217, 4000, }, -- Blessing of Kings
			{26573, 4000, rank=1}, -- Consecration Rank 1
			{200, 10000, }, -- Polearms
			{13819, 3500, faction="Alliance"}, -- Summon Warhorse
			{34769, 3500, faction="Horde"}, -- Summon Warhorse
		},
		[22] = {
			{1026, 4000, req=647, rank=4}, -- Holy Light Rank 4
			{19746, 4000, }, -- Concentration Aura
			{19835, 4000, req=19834, rank=3}, -- Blessing of Might Rank 3
			{20164, 4000, }, -- Seal of Justice
		},
		[24] = {
			{5588, 5000, req=853, rank=2}, -- Hammer of Justice Rank 2
			{5599, 5000, req=1022, rank=2}, -- Hand of Protection Rank 2
			{10322, 5000, req=7328, rank=2}, -- Redemption Rank 2
			{19850, 5000, req=19742, rank=2}, -- Blessing of Wisdom Rank 2
			{10326, 34000, }, -- Turn Evil
		},
		[26] = {
			{1038, 6000, }, -- Hand of Salvation
			{10298, 6000, req=7294, rank=2}, -- Retribution Aura Rank 2
			{19939, 6000, req=19750, rank=2}, -- Flash of Light Rank 2
		},
		[28] = {
			{5614, 9000, req=879, rank=2}, -- Exorcism Rank 2
			{19876, 9000, rank=1}, -- Shadow Resistance Aura Rank 1
			{53407, 9000, }, -- Judgement of Justice
		},
		[30] = {
			{20116, 200, req=26573, rank=2}, -- Consecration Rank 2
			{1042, 11000, req=1026, rank=5}, -- Holy Light Rank 5
			{2800, 11000, req=633, rank=2}, -- Lay on Hands Rank 2
			{10291, 11000, req=643, rank=4}, -- Devotion Aura Rank 4
			{19752, 11000, }, -- Divine Intervention
			{20165, 11000, }, -- Seal of Light
		},
		[32] = {
			{19836, 12000, req=19835, rank=4}, -- Blessing of Might Rank 4
			{19888, 12000, rank=1}, -- Frost Resistance Aura Rank 1
		},
		[34] = {
			{642, 13000, }, -- Divine Shield
			{19852, 13000, req=19850, rank=3}, -- Blessing of Wisdom Rank 3
			{19940, 13000, req=19939, rank=3}, -- Flash of Light Rank 3
		},
		[36] = {
			{5615, 14000, req=5614, rank=3}, -- Exorcism Rank 3
			{10299, 14000, req=10298, rank=3}, -- Retribution Aura Rank 3
			{10324, 14000, req=10322, rank=3}, -- Redemption Rank 3
			{19891, 14000, rank=1}, -- Fire Resistance Aura Rank 1
		},
		[38] = {
			{3472, 16000, req=1042, rank=6}, -- Holy Light Rank 6
			{10278, 16000, req=5599, rank=3}, -- Hand of Protection Rank 3
			{20166, 16000, }, -- Seal of Wisdom
		},
		[40] = {
			{20922, 1000, req=20116, rank=3}, -- Consecration Rank 3
			{8737, 12000, }, -- Mail
			{750, 20000, }, -- Plate Mail
			{1032, 20000, req=10291, rank=5}, -- Devotion Aura Rank 5
			{5589, 20000, req=5588, rank=3}, -- Hammer of Justice Rank 3
			{19895, 20000, req=19876, rank=2}, -- Shadow Resistance Aura Rank 2
			{23214, 20000, req=13819, faction="Alliance"}, -- Charger
			{34767, 20000, req=34769, faction="Horde"}, -- Summon Charger Summon
		},
		[42] = {
			{4987, 21000, }, -- Cleanse
			{19837, 21000, req=19836, rank=5}, -- Blessing of Might Rank 5
			{19941, 21000, req=19940, rank=4}, -- Flash of Light Rank 4
		},
		[44] = {
			{10312, 22000, req=5615, rank=4}, -- Exorcism Rank 4
			{19853, 22000, req=19852, rank=4}, -- Blessing of Wisdom Rank 4
			{19897, 22000, req=19888, rank=2}, -- Frost Resistance Aura Rank 2
			{24275, 22000, rank=1}, -- Hammer of Wrath Rank 1
		},
		[46] = {
			{6940, 24000, }, -- Hand of Sacrifice
			{10300, 24000, req=10299, rank=4}, -- Retribution Aura Rank 4
			{10328, 24000, req=3472, rank=7}, -- Holy Light Rank 7
		},
		[48] = {
			{20929, 1300, talent=20473, rank=2}, -- Holy Shock Rank 2
			{19899, 26000, req=19891, rank=2}, -- Fire Resistance Aura Rank 2
			{20772, 26000, req=10324, rank=4}, -- Redemption Rank 4
		},
		[50] = {
			{20923, 1400, req=20922, rank=4}, -- Consecration Rank 4
			{20927, 1400, talent=20925, rank=2}, -- Holy Shield Rank 2
			{2812, 28000, rank=1}, -- Holy Wrath Rank 1
			{10292, 28000, req=1032, rank=6}, -- Devotion Aura Rank 6
			{10310, 28000, req=2800, rank=3}, -- Lay on Hands Rank 3
			{19942, 28000, req=19941, rank=5}, -- Flash of Light Rank 5
		},
		[52] = {
			{10313, 34000, req=10312, rank=5}, -- Exorcism Rank 5
			{19838, 34000, req=19837, rank=6}, -- Blessing of Might Rank 6
			{19896, 34000, req=19895, rank=3}, -- Shadow Resistance Aura Rank 3
			{24274, 34000, req=24275, rank=2}, -- Hammer of Wrath Rank 2
			{25782, 46000, req=19838, rank=1}, -- Greater Blessing of Might Rank 1
		},
		[54] = {
			{10308, 40000, req=5589, rank=4}, -- Hammer of Justice Rank 4
			{10329, 40000, req=10328, rank=8}, -- Holy Light Rank 8
			{19854, 40000, req=19853, rank=5}, -- Blessing of Wisdom Rank 5
			{25894, 46000, req=19854, rank=1}, -- Greater Blessing of Wisdom Rank 1
		},
		[56] = {
			{20930, 2100, req=20929, rank=3}, -- Holy Shock Rank 3
			{10301, 42000, req=10300, rank=5}, -- Retribution Aura Rank 5
			{19898, 42000, req=19897, rank=3}, -- Frost Resistance Aura Rank 3
		},
		[58] = {
			{19943, 44000, req=19942, rank=6}, -- Flash of Light Rank 6
		},
		[60] = {
			{20924, 2300, req=20923, rank=5}, -- Consecration Rank 5
			{20928, 2300, req=20927, rank=3}, -- Holy Shield Rank 3
			{25898, 2300, }, -- Greater Blessing of Kings
			{25899, 2300, talent=20911}, -- Greater Blessing of Sanctuary
			{32699, 2300, talent=31935, rank=2}, -- Avenger's Shield Rank 2
			{10293, 46000, req=10292, rank=7}, -- Devotion Aura Rank 7
			{10314, 46000, req=10313, rank=6}, -- Exorcism Rank 6
			{10318, 46000, req=2812, rank=2}, -- Holy Wrath Rank 2
			{19900, 46000, req=19899, rank=3}, -- Fire Resistance Aura Rank 3
			{20773, 46000, req=20772, rank=5}, -- Redemption Rank 5
			{24239, 46000, req=24274, rank=3}, -- Hammer of Wrath Rank 3
			{25292, 46000, req=10329, rank=9}, -- Holy Light Rank 9
			{25916, 46000, req=25782, rank=2}, -- Greater Blessing of Might Rank 2
			{25918, 46000, req=25894, rank=2}, -- Greater Blessing of Wisdom Rank 2
			{25290, 50000, req=19854, rank=6}, -- Blessing of Wisdom Rank 6
			{25291, 50000, req=19838, rank=7}, -- Blessing of Might Rank 7
		},
		[62] = {
			{27135, 55000, req=25292, rank=10}, -- Holy Light Rank 10
			{32223, 55000, }, -- Crusader Aura
		},
		[63] = {
			{27151, 61000, req=19896, rank=4}, -- Shadow Resistance Aura Rank 4
		},
		[64] = {
			{27174, 3350, req=20930, rank=4}, -- Holy Shock Rank 4
			{31801, 67000, faction="Alliance"}, -- Seal of Vengeance
		},
		[65] = {
			{27142, 75000, req=25290, rank=7}, -- Blessing of Wisdom Rank 7
			{27143, 75000, req=25918, rank=3}, -- Greater Blessing of Wisdom Rank 3
		},
		[66] = {
			{27137, 83000, req=19943, rank=7}, -- Flash of Light Rank 7
			{27150, 83000, req=10301, rank=6}, -- Retribution Aura Rank 6
			{53736, 100000, faction="Horde"}, -- Seal of Corruption
		},
		[68] = {
			{27138, 100000, req=10314, rank=7}, -- Exorcism Rank 7
			{27152, 100000, req=19898, rank=4}, -- Frost Resistance Aura Rank 4
			{27180, 100000, req=24239, rank=4}, -- Hammer of Wrath Rank 4
		},
		[69] = {
			{27139, 110000, req=10318, rank=3}, -- Holy Wrath Rank 3
			{27154, 110000, req=10310, rank=4}, -- Lay on Hands Rank 4
		},
		[70] = {
			{27179, 2300, req=20928, rank=4}, -- Holy Shield Rank 4
			{32700, 2300, req=32699, rank=3}, -- Avenger's Shield Rank 3
			{33072, 6500, req=27174, rank=5}, -- Holy Shock Rank 5
			{27141, 46000, req=25916, rank=3}, -- Greater Blessing of Might Rank 3
			{27140, 50000, req=25291, rank=8}, -- Blessing of Might Rank 8
			{27136, 130000, req=27135, rank=11}, -- Holy Light Rank 11
			{27149, 130000, req=10293, rank=8}, -- Devotion Aura Rank 8
			{27153, 130000, req=19900, rank=4}, -- Fire Resistance Aura Rank 4
			{27173, 130000, req=20924, rank=6}, -- Consecration Rank 6
			{31884, 130000, }, -- Avenging Wrath
		},
		[71] = {
			{54428, 100000, }, -- Divine Plea
			{48935, 200000, req=27142, rank=8}, -- Blessing of Wisdom Rank 8
			{48937, 200000, req=27143, rank=4}, -- Greater Blessing of Wisdom Rank 4
		},
		[72] = {
			{48816, 200000, req=27139, rank=4}, -- Holy Wrath Rank 4
			{48949, 200000, req=20773, rank=6}, -- Redemption Rank 6
		},
		[73] = {
			{48800, 200000, req=27138, rank=8}, -- Exorcism Rank 8
			{48931, 200000, req=27140, rank=9}, -- Blessing of Might Rank 9
			{48933, 200000, req=27141, rank=4}, -- Greater Blessing of Might Rank 4
		},
		[74] = {
			{48784, 200000, req=27137, rank=8}, -- Flash of Light Rank 8
			{48805, 200000, req=27180, rank=5}, -- Hammer of Wrath Rank 5
			{48941, 200000, req=27149, rank=9}, -- Devotion Aura Rank 9
		},
		[75] = {
			{48824, 10000, req=33072, rank=6}, -- Holy Shock Rank 6
			{48826, 10000, req=32700, rank=4}, -- Avenger's Shield Rank 4
			{48951, 10000, req=27179, rank=5}, -- Holy Shield Rank 5
			{48781, 200000, req=27136, rank=12}, -- Holy Light Rank 12
			{48818, 200000, req=27173, rank=7}, -- Consecration Rank 7
			{53600, 200000, rank=1}, -- Shield of Righteousness Rank 1
		},
		[76] = {
			{48943, 200000, req=27151, rank=5}, -- Shadow Resistance Aura Rank 5
			{54043, 200000, req=27150, rank=7}, -- Retribution Aura Rank 7
		},
		[77] = {
			{48936, 200000, req=48935, rank=9}, -- Blessing of Wisdom Rank 9
			{48938, 200000, req=48937, rank=5}, -- Greater Blessing of Wisdom Rank 5
			{48945, 200000, req=27152, rank=5}, -- Frost Resistance Aura Rank 5
		},
		[78] = {
			{48788, 200000, req=27154, rank=5}, -- Lay on Hands Rank 5
			{48817, 200000, req=48816, rank=5}, -- Holy Wrath Rank 5
			{48947, 200000, req=27153, rank=5}, -- Fire Resistance Aura Rank 5
		},
		[79] = {
			{48785, 200000, req=48784, rank=9}, -- Flash of Light Rank 9
			{48801, 200000, req=48800, rank=9}, -- Exorcism Rank 9
			{48932, 200000, req=48931, rank=10}, -- Blessing of Might Rank 10
			{48934, 200000, req=48933, rank=5}, -- Greater Blessing of Might Rank 5
			{48942, 200000, req=48941, rank=10}, -- Devotion Aura Rank 10
			{48950, 200000, req=48949, rank=7}, -- Redemption Rank 7
		},
		[80] = {
			{48825, 10000, req=48824, rank=7}, -- Holy Shock Rank 7
			{48827, 10000, req=48826, rank=5}, -- Avenger's Shield Rank 5
			{48952, 10000, req=48951, rank=6}, -- Holy Shield Rank 6
			{53601, 100000, rank=1}, -- Sacred Shield Rank 1
			{48782, 200000, req=48781, rank=13}, -- Holy Light Rank 13
			{48806, 200000, req=48805, rank=6}, -- Hammer of Wrath Rank 6
			{48819, 200000, req=48818, rank=8}, -- Consecration Rank 8
			{61411, 200000, req=53600, rank=2}, -- Shield of Righteousness Rank 2
		},
	},


	PRIEST = {
		[0] = {
			{198, 1000, }, -- One-Handed Maces
			{227, 1000, }, -- Staves
			{1180, 1000, }, -- Daggers
		},
		[1] = {
			{1243, 10, rank=1}, -- Power Word: Fortitude Rank 1
		},
		[4] = {
			{589, 100, rank=1}, -- Shadow Word: Pain Rank 1
			{2052, 100, req=2050, rank=2}, -- Lesser Heal Rank 2
		},
		[6] = {
			{17, 100, rank=1}, -- Power Word: Shield Rank 1
			{591, 100, req=585, rank=2}, -- Smite Rank 2
		},
		[8] = {
			{139, 200, rank=1}, -- Renew Rank 1
			{586, 200, }, -- Fade
		},
		[10] = {
			{594, 300, req=589, rank=2}, -- Shadow Word: Pain Rank 2
			{2006, 300, rank=1}, -- Resurrection Rank 1
			{2053, 300, req=2052, rank=3}, -- Lesser Heal Rank 3
			{8092, 300, rank=1}, -- Mind Blast Rank 1
		},
		[12] = {
			{588, 800, rank=1}, -- Inner Fire Rank 1
			{592, 800, req=17, rank=2}, -- Power Word: Shield Rank 2
			{1244, 800, req=1243, rank=2}, -- Power Word: Fortitude Rank 2
		},
		[14] = {
			{528, 1200, }, -- Cure Disease
			{598, 1200, req=591, rank=3}, -- Smite Rank 3
			{6074, 1200, req=139, rank=2}, -- Renew Rank 2
			{8122, 1200, rank=1}, -- Psychic Scream Rank 1
		},
		[16] = {
			{2054, 1600, rank=1}, -- Heal Rank 1
			{8102, 1600, req=8092, rank=2}, -- Mind Blast Rank 2
		},
		[18] = {
			{527, 2000, rank=1}, -- Dispel Magic Rank 1
			{600, 2000, req=592, rank=3}, -- Power Word: Shield Rank 3
			{970, 2000, req=594, rank=3}, -- Shadow Word: Pain Rank 3
		},
		[20] = {
			{2944, 100, rank=1}, -- Devouring Plague Rank 1
			{6346, 800, }, -- Fear Ward
			{453, 3000, }, -- Mind Soothe
			{2061, 3000, rank=1}, -- Flash Heal Rank 1
			{6075, 3000, req=6074, rank=3}, -- Renew Rank 3
			{7128, 3000, req=588, rank=2}, -- Inner Fire Rank 2
			{9484, 3000, rank=1}, -- Shackle Undead Rank 1
			{14914, 3000, rank=1}, -- Holy Fire Rank 1
			{15237, 3000, rank=1}, -- Holy Nova Rank 1
		},
		[22] = {
			{984, 4000, req=598, rank=4}, -- Smite Rank 4
			{2010, 4000, req=2006, rank=2}, -- Resurrection Rank 2
			{2055, 4000, req=2054, rank=2}, -- Heal Rank 2
			{2096, 4000, rank=1}, -- Mind Vision Rank 1
			{8103, 4000, req=8102, rank=3}, -- Mind Blast Rank 3
		},
		[24] = {
			{1245, 5000, req=1244, rank=3}, -- Power Word: Fortitude Rank 3
			{3747, 5000, req=600, rank=4}, -- Power Word: Shield Rank 4
			{8129, 5000, }, -- Mana Burn
			{15262, 5000, req=14914, rank=2}, -- Holy Fire Rank 2
		},
		[26] = {
			{19238, 300, talent=19236, rank=2}, -- Desperate Prayer Rank 2
			{992, 6000, req=970, rank=4}, -- Shadow Word: Pain Rank 4
			{6076, 6000, req=6075, rank=4}, -- Renew Rank 4
			{9472, 6000, req=2061, rank=2}, -- Flash Heal Rank 2
		},
		[28] = {
			{15430, 400, req=15237, rank=2}, -- Holy Nova Rank 2
			{17311, 400, talent=15407, rank=2}, -- Mind Flay Rank 2
			{19276, 400, req=2944, rank=2}, -- Devouring Plague Rank 2
			{6063, 8000, req=2055, rank=3}, -- Heal Rank 3
			{8104, 8000, req=8103, rank=4}, -- Mind Blast Rank 4
			{8124, 8000, req=8122, rank=2}, -- Psychic Scream Rank 2
		},
		[30] = {
			{14752, 600, rank=1}, -- Divine Spirit Rank 1
			{596, 10000, rank=1}, -- Prayer of Healing Rank 1
			{602, 10000, req=7128, rank=3}, -- Inner Fire Rank 3
			{605, 10000, }, -- Mind Control
			{976, 10000, rank=1}, -- Shadow Protection Rank 1
			{1004, 10000, req=984, rank=5}, -- Smite Rank 5
			{6065, 10000, req=3747, rank=5}, -- Power Word: Shield Rank 5
			{15263, 10000, req=15262, rank=3}, -- Holy Fire Rank 3
		},
		[32] = {
			{552, 11000, }, -- Abolish Disease
			{6077, 11000, req=6076, rank=5}, -- Renew Rank 5
			{9473, 11000, req=9472, rank=3}, -- Flash Heal Rank 3
		},
		[34] = {
			{19240, 600, req=19238, rank=3}, -- Desperate Prayer Rank 3
			{1706, 12000, }, -- Levitate
			{2767, 12000, req=992, rank=5}, -- Shadow Word: Pain Rank 5
			{6064, 12000, req=6063, rank=4}, -- Heal Rank 4
			{8105, 12000, req=8104, rank=5}, -- Mind Blast Rank 5
			{10880, 12000, req=2010, rank=3}, -- Resurrection Rank 3
		},
		[36] = {
			{15431, 700, req=15430, rank=3}, -- Holy Nova Rank 3
			{17312, 700, req=17311, rank=3}, -- Mind Flay Rank 3
			{19277, 700, req=19276, rank=3}, -- Devouring Plague Rank 3
			{988, 14000, req=527, rank=2}, -- Dispel Magic Rank 2
			{2791, 14000, req=1245, rank=4}, -- Power Word: Fortitude Rank 4
			{6066, 14000, req=6065, rank=6}, -- Power Word: Shield Rank 6
			{15264, 14000, req=15263, rank=4}, -- Holy Fire Rank 4
		},
		[38] = {
			{6060, 16000, req=1004, rank=6}, -- Smite Rank 6
			{6078, 16000, req=6077, rank=6}, -- Renew Rank 6
			{9474, 16000, req=9473, rank=4}, -- Flash Heal Rank 4
		},
		[40] = {
			{14818, 900, req=14752, rank=2}, -- Divine Spirit Rank 2
			{996, 18000, req=596, rank=2}, -- Prayer of Healing Rank 2
			{1006, 18000, req=602, rank=4}, -- Inner Fire Rank 4
			{2060, 18000, rank=1}, -- Greater Heal Rank 1
			{8106, 18000, req=8105, rank=6}, -- Mind Blast Rank 6
			{9485, 18000, req=9484, rank=2}, -- Shackle Undead Rank 2
		},
		[42] = {
			{19241, 1100, req=19240, rank=4}, -- Desperate Prayer Rank 4
			{10888, 22000, req=8124, rank=3}, -- Psychic Scream Rank 3
			{10892, 22000, req=2767, rank=6}, -- Shadow Word: Pain Rank 6
			{10898, 22000, req=6066, rank=7}, -- Power Word: Shield Rank 7
			{10957, 22000, req=976, rank=2}, -- Shadow Protection Rank 2
			{15265, 22000, req=15264, rank=5}, -- Holy Fire Rank 5
		},
		[44] = {
			{17313, 1200, req=17312, rank=4}, -- Mind Flay Rank 4
			{19278, 1200, req=19277, rank=4}, -- Devouring Plague Rank 4
			{27799, 1200, req=15431, rank=4}, -- Holy Nova Rank 4
			{10909, 24000, req=2096, rank=2}, -- Mind Vision Rank 2
			{10915, 24000, req=9474, rank=5}, -- Flash Heal Rank 5
			{10927, 24000, req=6078, rank=7}, -- Renew Rank 7
		},
		[46] = {
			{10881, 26000, req=10880, rank=4}, -- Resurrection Rank 4
			{10933, 26000, req=6060, rank=7}, -- Smite Rank 7
			{10945, 26000, req=8106, rank=7}, -- Mind Blast Rank 7
			{10963, 26000, req=2060, rank=2}, -- Greater Heal Rank 2
		},
		[48] = {
			{10899, 28000, req=10898, rank=8}, -- Power Word: Shield Rank 8
			{10937, 28000, req=2791, rank=5}, -- Power Word: Fortitude Rank 5
			{15266, 28000, req=15265, rank=6}, -- Holy Fire Rank 6
			{21562, 28000, rank=1}, -- Prayer of Fortitude Rank 1
		},
		[50] = {
			{27870, 1200, talent=724, rank=2}, -- Lightwell Rank 2
			{14819, 1500, req=14818, rank=3}, -- Divine Spirit Rank 3
			{19242, 1500, req=19241, rank=5}, -- Desperate Prayer Rank 5
			{10893, 30000, req=10892, rank=7}, -- Shadow Word: Pain Rank 7
			{10916, 30000, req=10915, rank=6}, -- Flash Heal Rank 6
			{10928, 30000, req=10927, rank=8}, -- Renew Rank 8
			{10951, 30000, req=1006, rank=5}, -- Inner Fire Rank 5
			{10960, 30000, req=996, rank=3}, -- Prayer of Healing Rank 3
		},
		[52] = {
			{17314, 1900, req=17313, rank=5}, -- Mind Flay Rank 5
			{19279, 1900, req=19278, rank=5}, -- Devouring Plague Rank 5
			{27800, 1900, req=27799, rank=5}, -- Holy Nova Rank 5
			{10946, 38000, req=10945, rank=8}, -- Mind Blast Rank 8
			{10964, 38000, req=10963, rank=3}, -- Greater Heal Rank 3
		},
		[54] = {
			{10900, 40000, req=10899, rank=9}, -- Power Word: Shield Rank 9
			{10934, 40000, req=10933, rank=8}, -- Smite Rank 8
			{15267, 40000, req=15266, rank=7}, -- Holy Fire Rank 7
		},
		[56] = {
			{34863, 2100, talent=34861, rank=2}, -- Circle of Healing Rank 2
			{10890, 42000, req=10888, rank=4}, -- Psychic Scream Rank 4
			{10917, 42000, req=10916, rank=7}, -- Flash Heal Rank 7
			{10929, 42000, req=10928, rank=9}, -- Renew Rank 9
			{10958, 42000, req=10957, rank=3}, -- Shadow Protection Rank 3
			{27683, 42000, rank=1}, -- Prayer of Shadow Protection Rank 1
		},
		[58] = {
			{19243, 2200, req=19242, rank=6}, -- Desperate Prayer Rank 6
			{10894, 44000, req=10893, rank=8}, -- Shadow Word: Pain Rank 8
			{10947, 44000, req=10946, rank=9}, -- Mind Blast Rank 9
			{10965, 44000, req=10964, rank=4}, -- Greater Heal Rank 4
			{20770, 44000, req=10881, rank=5}, -- Resurrection Rank 5
		},
		[60] = {
			{27871, 1500, req=27870, rank=3}, -- Lightwell Rank 3
			{18807, 2300, req=17314, rank=6}, -- Mind Flay Rank 6
			{19280, 2300, req=19279, rank=6}, -- Devouring Plague Rank 6
			{27681, 2300, req=14752, rank=1}, -- Prayer of Spirit Rank 1
			{27801, 2300, req=27800, rank=6}, -- Holy Nova Rank 6
			{27841, 2300, req=14819, rank=4}, -- Divine Spirit Rank 4
			{34864, 2300, req=34863, rank=3}, -- Circle of Healing Rank 3
			{34916, 2300, talent=34914, rank=2}, -- Vampiric Touch Rank 2
			{25315, 6500, req=10929, rank=10}, -- Renew Rank 10
			{25316, 6500, req=10961, rank=5}, -- Prayer of Healing Rank 5
			{10901, 46000, req=10900, rank=10}, -- Power Word: Shield Rank 10
			{10938, 46000, req=10937, rank=6}, -- Power Word: Fortitude Rank 6
			{10952, 46000, req=10951, rank=6}, -- Inner Fire Rank 6
			{10955, 46000, req=9485, rank=3}, -- Shackle Undead Rank 3
			{10961, 46000, req=10960, rank=4}, -- Prayer of Healing Rank 4
			{15261, 46000, req=15267, rank=8}, -- Holy Fire Rank 8
			{21564, 46000, req=21562, rank=2}, -- Prayer of Fortitude Rank 2
			{25314, 65000, req=10965, rank=5}, -- Greater Heal Rank 5
		},
		[61] = {
			{25233, 53000, req=10917, rank=8}, -- Flash Heal Rank 8
			{25363, 53000, req=10934, rank=9}, -- Smite Rank 9
		},
		[62] = {
			{32379, 59000, rank=1}, -- Shadow Word: Death Rank 1
		},
		[63] = {
			{25210, 65000, req=25314, rank=6}, -- Greater Heal Rank 6
			{25372, 65000, req=10947, rank=10}, -- Mind Blast Rank 10
		},
		[64] = {
			{32546, 72000, rank=1}, -- Binding Heal Rank 1
		},
		[65] = {
			{34865, 2300, req=34864, rank=4}, -- Circle of Healing Rank 4
			{25217, 80000, req=10901, rank=11}, -- Power Word: Shield Rank 11
			{25221, 80000, req=25315, rank=11}, -- Renew Rank 11
			{25367, 80000, req=10894, rank=9}, -- Shadow Word: Pain Rank 9
		},
		[66] = {
			{25437, 6500, req=19243, rank=7}, -- Desperate Prayer Rank 7
			{25384, 65000, req=15261, rank=9}, -- Holy Fire Rank 9
			{34433, 89000, }, -- Shadowfiend
		},
		[67] = {
			{25235, 99000, req=25233, rank=9}, -- Flash Heal Rank 9
		},
		[68] = {
			{25331, 3250, req=27801, rank=7}, -- Holy Nova Rank 7
			{25387, 6500, req=18807, rank=7}, -- Mind Flay Rank 7
			{25467, 6500, req=19280, rank=7}, -- Devouring Plague Rank 7
			{25213, 110000, req=25210, rank=7}, -- Greater Heal Rank 7
			{25308, 110000, req=25316, rank=6}, -- Prayer of Healing Rank 6
			{25433, 110000, req=10958, rank=4}, -- Shadow Protection Rank 4
			{25435, 110000, req=20770, rank=6}, -- Resurrection Rank 6
			{33076, 110000, rank=1}, -- Prayer of Mending Rank 1
		},
		[69] = {
			{25364, 65000, req=25363, rank=10}, -- Smite Rank 10
			{25375, 65000, req=25372, rank=11}, -- Mind Blast Rank 11
			{25431, 65000, req=10952, rank=7}, -- Inner Fire Rank 7
		},
		[70] = {
			{28275, 1500, req=27871, rank=4}, -- Lightwell Rank 4
			{25312, 2300, req=27841, rank=5}, -- Divine Spirit Rank 5
			{34866, 2300, req=34865, rank=5}, -- Circle of Healing Rank 5
			{34917, 2300, req=34916, rank=3}, -- Vampiric Touch Rank 3
			{32999, 3400, req=27681, rank=2}, -- Prayer of Spirit Rank 2
			{53005, 5000, talent=47540, rank=2}, -- Penance Rank 2
			{25389, 65000, req=10938, rank=7}, -- Power Word: Fortitude Rank 7
			{25392, 100000, req=21564, rank=3}, -- Prayer of Fortitude Rank 3
			{39374, 100000, req=27683, rank=2}, -- Prayer of Shadow Protection Rank 2
			{32375, 110000, }, -- Mass Dispel
			{32996, 110000, req=32379, rank=2}, -- Shadow Word: Death Rank 2
			{25218, 140000, req=25217, rank=12}, -- Power Word: Shield Rank 12
			{25222, 140000, req=25221, rank=12}, -- Renew Rank 12
			{25368, 140000, req=25367, rank=10}, -- Shadow Word: Pain Rank 10
		},
		[71] = {
			{48040, 180000, req=25431, rank=8}, -- Inner Fire Rank 8
		},
		[72] = {
			{48119, 180000, req=32546, rank=2}, -- Binding Heal Rank 2
			{48134, 180000, req=25384, rank=10}, -- Holy Fire Rank 10
		},
		[73] = {
			{48172, 3250, req=25437, rank=8}, -- Desperate Prayer Rank 8
			{48062, 180000, req=25213, rank=8}, -- Greater Heal Rank 8
			{48070, 180000, req=25235, rank=10}, -- Flash Heal Rank 10
			{48299, 180000, req=25467, rank=8}, -- Devouring Plague Rank 8
		},
		[74] = {
			{48155, 9000, req=25387, rank=8}, -- Mind Flay Rank 8
			{48112, 100000, req=33076, rank=2}, -- Prayer of Mending Rank 2
			{48122, 180000, req=25364, rank=11}, -- Smite Rank 11
			{48126, 180000, req=25375, rank=12}, -- Mind Blast Rank 12
		},
		[75] = {
			{48086, 9000, req=28275, rank=5}, -- Lightwell Rank 5
			{48088, 9000, req=34866, rank=6}, -- Circle of Healing Rank 6
			{48159, 9000, req=34917, rank=4}, -- Vampiric Touch Rank 4
			{53006, 9000, req=53005, rank=3}, -- Penance Rank 3
			{48045, 10000, rank=1}, -- Mind Sear Rank 1
			{48065, 180000, req=25218, rank=13}, -- Power Word: Shield Rank 13
			{48067, 180000, req=25222, rank=13}, -- Renew Rank 13
			{48077, 180000, req=25331, rank=8}, -- Holy Nova Rank 8
			{48124, 180000, req=25368, rank=11}, -- Shadow Word: Pain Rank 11
			{48157, 180000, req=32996, rank=3}, -- Shadow Word: Death Rank 3
		},
		[76] = {
			{48072, 180000, req=25308, rank=7}, -- Prayer of Healing Rank 7
			{48169, 180000, req=25433, rank=5}, -- Shadow Protection Rank 5
		},
		[77] = {
			{48168, 180000, req=48040, rank=9}, -- Inner Fire Rank 9
			{48170, 180000, req=39374, rank=3}, -- Prayer of Shadow Protection Rank 3
		},
		[78] = {
			{48063, 180000, req=48062, rank=9}, -- Greater Heal Rank 9
			{48120, 180000, req=48119, rank=3}, -- Binding Heal Rank 3
			{48135, 180000, req=48134, rank=11}, -- Holy Fire Rank 11
			{48171, 180000, req=25435, rank=7}, -- Resurrection Rank 7
		},
		[79] = {
			{48071, 180000, req=48070, rank=11}, -- Flash Heal Rank 11
			{48113, 180000, req=48112, rank=3}, -- Prayer of Mending Rank 3
			{48123, 180000, req=48122, rank=12}, -- Smite Rank 12
			{48127, 180000, req=48126, rank=13}, -- Mind Blast Rank 13
			{48300, 180000, req=48299, rank=9}, -- Devouring Plague Rank 9
		},
		[80] = {
			{48073, 9000, req=25312, rank=6}, -- Divine Spirit Rank 6
			{48074, 9000, req=32999, rank=3}, -- Prayer of Spirit Rank 3
			{48087, 9000, req=48086, rank=6}, -- Lightwell Rank 6
			{48089, 9000, req=48088, rank=7}, -- Circle of Healing Rank 7
			{48156, 9000, req=48155, rank=9}, -- Mind Flay Rank 9
			{48160, 9000, req=48159, rank=5}, -- Vampiric Touch Rank 5
			{48173, 9000, req=48172, rank=9}, -- Desperate Prayer Rank 9
			{53007, 9000, req=53006, rank=4}, -- Penance Rank 4
			{64901, 65000, }, -- Hymn of Hope
			{53023, 100000, req=48045, rank=2}, -- Mind Sear Rank 2
			{48066, 180000, req=48065, rank=14}, -- Power Word: Shield Rank 14
			{48068, 180000, req=48067, rank=14}, -- Renew Rank 14
			{48078, 180000, req=48077, rank=9}, -- Holy Nova Rank 9
			{48125, 180000, req=48124, rank=12}, -- Shadow Word: Pain Rank 12
			{48158, 180000, req=48157, rank=4}, -- Shadow Word: Death Rank 4
			{48161, 180000, req=25389, rank=8}, -- Power Word: Fortitude Rank 8
			{48162, 180000, req=25392, rank=4}, -- Prayer of Fortitude Rank 4
			{64843, 180000, rank=1}, -- Divine Hymn Rank 1
		},
	},


	ROGUE = {
		[0] = {
			{196, 1000, }, -- One-Handed Axes
			{198, 1000, }, -- One-Handed Maces
			{201, 1000, }, -- One-Handed Swords
			{264, 1000, }, -- Bows
			{266, 1000, }, -- Guns
			{1180, 1000, }, -- Daggers
			{5011, 1000, }, -- Crossbows
			{15590, 1000, }, -- Fist Weapons
		},
		[1] = {
			{1784, 10, }, -- Stealth
		},
		[4] = {
			{53, 100, rank=1}, -- Backstab Rank 1
			{921, 100, }, -- Pick Pocket
		},
		[6] = {
			{1757, 100, req=1752, rank=2}, -- Sinister Strike Rank 2
			{1776, 100, }, -- Gouge
		},
		[8] = {
			{5277, 200, rank=1}, -- Evasion Rank 1
			{6760, 200, req=2098, rank=2}, -- Eviscerate Rank 2
		},
		[10] = {
			{674, 300, }, -- Dual Wield Passive
			{2983, 300, rank=1}, -- Sprint Rank 1
			{5171, 300, rank=1}, -- Slice and Dice Rank 1
			{6770, 300, rank=1}, -- Sap Rank 1
		},
		[12] = {
			{1766, 800, }, -- Kick
			{2589, 800, req=53, rank=2}, -- Backstab Rank 2
			{3127, 800, }, -- Parry Passive
		},
		[14] = {
			{703, 1200, rank=1}, -- Garrote Rank 1
			{1758, 1200, req=1757, rank=3}, -- Sinister Strike Rank 3
			{8647, 1200, }, -- Expose Armor
		},
		[16] = {
			{1804, 1800, }, -- Pick Lock
			{1966, 1800, rank=1}, -- Feint Rank 1
			{6761, 1800, req=6760, rank=3}, -- Eviscerate Rank 3
		},
		[18] = {
			{8676, 2900, rank=1}, -- Ambush Rank 1
		},
		[20] = {
			{1943, 3000, rank=1}, -- Rupture Rank 1
			{2590, 3000, req=2589, rank=3}, -- Backstab Rank 3
			{51722, 3000, }, -- Dismantle
		},
		[22] = {
			{1725, 4000, }, -- Distract
			{1759, 4000, req=1758, rank=4}, -- Sinister Strike Rank 4
			{1856, 4000, rank=1}, -- Vanish Rank 1
			{8631, 4000, req=703, rank=2}, -- Garrote Rank 2
		},
		[24] = {
			{2836, 5000, }, -- Detect Traps Passive
			{6762, 5000, req=6761, rank=4}, -- Eviscerate Rank 4
		},
		[26] = {
			{1833, 6000, }, -- Cheap Shot
			{8724, 6000, req=8676, rank=2}, -- Ambush Rank 2
		},
		[28] = {
			{2070, 8000, req=6770, rank=2}, -- Sap Rank 2
			{2591, 8000, req=2590, rank=4}, -- Backstab Rank 4
			{6768, 8000, req=1966, rank=2}, -- Feint Rank 2
			{8639, 8000, req=1943, rank=2}, -- Rupture Rank 2
		},
		[30] = {
			{408, 10000, rank=1}, -- Kidney Shot Rank 1
			{1760, 10000, req=1759, rank=5}, -- Sinister Strike Rank 5
			{1842, 10000, }, -- Disarm Trap
			{8632, 10000, req=8631, rank=3}, -- Garrote Rank 3
		},
		[32] = {
			{8623, 12000, req=6762, rank=5}, -- Eviscerate Rank 5
		},
		[34] = {
			{2094, 14000, }, -- Blind
			{8696, 14000, req=2983, rank=2}, -- Sprint Rank 2
			{8725, 14000, req=8724, rank=3}, -- Ambush Rank 3
		},
		[36] = {
			{8640, 16000, req=8639, rank=3}, -- Rupture Rank 3
			{8721, 16000, req=2591, rank=5}, -- Backstab Rank 5
		},
		[38] = {
			{8621, 18000, req=1760, rank=6}, -- Sinister Strike Rank 6
			{8633, 18000, req=8632, rank=4}, -- Garrote Rank 4
		},
		[40] = {
			{1860, 20000, }, -- Safe Fall Passive
			{8624, 20000, req=8623, rank=6}, -- Eviscerate Rank 6
			{8637, 20000, req=6768, rank=3}, -- Feint Rank 3
		},
		[42] = {
			{1857, 27000, req=1856, rank=2}, -- Vanish Rank 2
			{6774, 27000, req=5171, rank=2}, -- Slice and Dice Rank 2
			{11267, 27000, req=8725, rank=4}, -- Ambush Rank 4
		},
		[44] = {
			{11273, 29000, req=8640, rank=4}, -- Rupture Rank 4
			{11279, 29000, req=8721, rank=6}, -- Backstab Rank 6
		},
		[46] = {
			{17347, 7750, talent=16511, rank=2}, -- Hemorrhage Rank 2
			{11289, 31000, req=8633, rank=5}, -- Garrote Rank 5
			{11293, 31000, req=8621, rank=7}, -- Sinister Strike Rank 7
		},
		[48] = {
			{11297, 33000, req=2070, rank=3}, -- Sap Rank 3
			{11299, 33000, req=8624, rank=7}, -- Eviscerate Rank 7
		},
		[50] = {
			{34411, 5500, talent=1329, rank=2}, -- Mutilate Rank 2
			{8643, 35000, req=408, rank=2}, -- Kidney Shot Rank 2
			{11268, 35000, req=11267, rank=5}, -- Ambush Rank 5
			{26669, 35000, req=5277, rank=2}, -- Evasion Rank 2
		},
		[52] = {
			{11274, 46000, req=11273, rank=5}, -- Rupture Rank 5
			{11280, 46000, req=11279, rank=7}, -- Backstab Rank 7
			{11303, 46000, req=8637, rank=4}, -- Feint Rank 4
		},
		[54] = {
			{11290, 48000, req=11289, rank=6}, -- Garrote Rank 6
			{11294, 48000, req=11293, rank=8}, -- Sinister Strike Rank 8
		},
		[56] = {
			{11300, 50000, req=11299, rank=8}, -- Eviscerate Rank 8
		},
		[58] = {
			{17348, 13000, req=17347, rank=3}, -- Hemorrhage Rank 3
			{11269, 52000, req=11268, rank=6}, -- Ambush Rank 6
			{11305, 52000, req=8696, rank=3}, -- Sprint Rank 3
		},
		[60] = {
			{34412, 6500, req=34411, rank=3}, -- Mutilate Rank 3
			{25302, 50000, req=11303, rank=5}, -- Feint Rank 5
			{11275, 54000, req=11274, rank=6}, -- Rupture Rank 6
			{11281, 54000, req=11280, rank=8}, -- Backstab Rank 8
			{25300, 54000, req=11281, rank=9}, -- Backstab Rank 9
			{31016, 65000, req=11300, rank=9}, -- Eviscerate Rank 9
		},
		[61] = {
			{26839, 50000, req=11290, rank=7}, -- Garrote Rank 7
		},
		[62] = {
			{26861, 50000, req=11294, rank=9}, -- Sinister Strike Rank 9
			{26889, 59000, req=1857, rank=3}, -- Vanish Rank 3
			{32645, 59000, rank=1}, -- Envenom Rank 1
		},
		[64] = {
			{26679, 72000, rank=1}, -- Deadly Throw Rank 1
			{27448, 72000, req=25302, rank=6}, -- Feint Rank 6
			{26865, 140000, req=31016, rank=10}, -- Eviscerate Rank 10
		},
		[66] = {
			{27441, 80000, req=11269, rank=7}, -- Ambush Rank 7
			{31224, 89000, }, -- Cloak of Shadows
		},
		[68] = {
			{26863, 110000, req=25300, rank=10}, -- Backstab Rank 10
			{26867, 120000, req=11275, rank=7}, -- Rupture Rank 7
		},
		[69] = {
			{32684, 120000, req=32645, rank=2}, -- Envenom Rank 2
		},
		[70] = {
			{26864, 2700, req=17348, rank=4}, -- Hemorrhage Rank 4
			{34413, 7500, req=34412, rank=4}, -- Mutilate Rank 4
			{48673, 100000, req=26679, rank=2}, -- Deadly Throw Rank 2
			{5938, 140000, }, -- Shiv
			{26862, 140000, req=26861, rank=10}, -- Sinister Strike Rank 10
			{26884, 140000, req=26839, rank=8}, -- Garrote Rank 8
			{48689, 140000, req=27441, rank=8}, -- Ambush Rank 8
		},
		[71] = {
			{51724, 300000, req=11297, rank=4}, -- Sap Rank 4
		},
		[72] = {
			{48658, 300000, req=27448, rank=7}, -- Feint Rank 7
		},
		[73] = {
			{48667, 300000, req=26865, rank=11}, -- Eviscerate Rank 11
		},
		[74] = {
			{48656, 300000, req=26863, rank=11}, -- Backstab Rank 11
			{48671, 300000, req=26867, rank=8}, -- Rupture Rank 8
			{57992, 300000, req=32684, rank=3}, -- Envenom Rank 3
		},
		[75] = {
			{48663, 15000, req=34413, rank=5}, -- Mutilate Rank 5
			{48675, 300000, req=26884, rank=9}, -- Garrote Rank 9
			{48690, 300000, req=48689, rank=9}, -- Ambush Rank 9
			{57934, 300000, }, -- Tricks of the Trade
		},
		[76] = {
			{48637, 300000, req=26862, rank=11}, -- Sinister Strike Rank 11
			{48674, 300000, req=48673, rank=3}, -- Deadly Throw Rank 3
		},
		[78] = {
			{48659, 300000, req=48658, rank=8}, -- Feint Rank 8
		},
		[79] = {
			{48668, 300000, req=48667, rank=12}, -- Eviscerate Rank 12
			{48672, 300000, req=48671, rank=9}, -- Rupture Rank 9
		},
		[80] = {
			{48660, 15000, req=26864, rank=5}, -- Hemorrhage Rank 5
			{48666, 15000, req=48663, rank=6}, -- Mutilate Rank 6
			{48638, 300000, req=48637, rank=12}, -- Sinister Strike Rank 12
			{48657, 300000, req=48656, rank=12}, -- Backstab Rank 12
			{48676, 300000, req=48675, rank=10}, -- Garrote Rank 10
			{48691, 300000, req=48690, rank=10}, -- Ambush Rank 10
			{51723, 300000, }, -- Fan of Knives
			{57993, 300000, req=57992, rank=4}, -- Envenom Rank 4
		},
	},


	SHAMAN = {
		[0] = {
			{196, 1000, }, -- One-Handed Axes
			{197, 1000, }, -- Two-Handed Axes
			{198, 1000, }, -- One-Handed Maces
			{199, 1000, }, -- Two-Handed Maces
			{227, 1000, }, -- Staves
			{1180, 1000, }, -- Daggers
			{15590, 1000, }, -- Fist Weapons
		},
		[1] = {
			{8017, 10, rank=1}, -- Rockbiter Weapon Rank 1
		},
		[4] = {
			{8042, 100, rank=1}, -- Earth Shock Rank 1
		},
		[6] = {
			{332, 100, req=331, rank=2}, -- Healing Wave Rank 2
			{2484, 100, }, -- Earthbind Totem
		},
		[8] = {
			{324, 100, rank=1}, -- Lightning Shield Rank 1
			{529, 100, req=403, rank=2}, -- Lightning Bolt Rank 2
			{5730, 100, rank=1}, -- Stoneclaw Totem Rank 1
			{8018, 100, req=8017, rank=2}, -- Rockbiter Weapon Rank 2
			{8044, 100, req=8042, rank=2}, -- Earth Shock Rank 2
		},
		[10] = {
			{8024, 400, rank=1}, -- Flametongue Weapon Rank 1
			{8050, 400, rank=1}, -- Flame Shock Rank 1
			{8075, 400, rank=1}, -- Strength of Earth Totem Rank 1
		},
		[12] = {
			{370, 800, rank=1}, -- Purge Rank 1
			{547, 800, req=332, rank=3}, -- Healing Wave Rank 3
			{1535, 800, rank=1}, -- Fire Nova Rank 1
			{2008, 800, rank=1}, -- Ancestral Spirit Rank 1
		},
		[14] = {
			{548, 900, req=529, rank=3}, -- Lightning Bolt Rank 3
			{8045, 900, req=8044, rank=3}, -- Earth Shock Rank 3
			{8154, 900, req=8071, rank=2}, -- Stoneskin Totem Rank 2
		},
		[16] = {
			{325, 1800, req=324, rank=2}, -- Lightning Shield Rank 2
			{526, 1800, }, -- Cure Toxins
			{8019, 1800, req=8018, rank=3}, -- Rockbiter Weapon Rank 3
			{2645, 2200, }, -- Ghost Wolf
			{57994, 2500, }, -- Wind Shear
		},
		[18] = {
			{913, 2000, req=547, rank=4}, -- Healing Wave Rank 4
			{6390, 2000, req=5730, rank=2}, -- Stoneclaw Totem Rank 2
			{8027, 2000, req=8024, rank=2}, -- Flametongue Weapon Rank 2
			{8052, 2000, req=8050, rank=2}, -- Flame Shock Rank 2
			{8143, 2000, }, -- Tremor Totem
		},
		[20] = {
			{915, 2200, req=548, rank=4}, -- Lightning Bolt Rank 4
			{6363, 2200, req=3599, rank=2}, -- Searing Totem Rank 2
			{8004, 2200, rank=1}, -- Lesser Healing Wave Rank 1
			{8033, 2200, rank=1}, -- Frostbrand Weapon Rank 1
			{8056, 2200, rank=1}, -- Frost Shock Rank 1
			{52127, 2200, rank=1}, -- Water Shield Rank 1
		},
		[22] = {
			{131, 3000, }, -- Water Breathing
			{8498, 3000, req=1535, rank=2}, -- Fire Nova Rank 2
		},
		[24] = {
			{905, 3500, req=325, rank=3}, -- Lightning Shield Rank 3
			{939, 3500, req=913, rank=5}, -- Healing Wave Rank 5
			{8046, 3500, req=8045, rank=4}, -- Earth Shock Rank 4
			{8155, 3500, req=8154, rank=3}, -- Stoneskin Totem Rank 3
			{8160, 3500, req=8075, rank=2}, -- Strength of Earth Totem Rank 2
			{8181, 3500, rank=1}, -- Frost Resistance Totem Rank 1
			{10399, 3500, req=8019, rank=4}, -- Rockbiter Weapon Rank 4
			{20609, 3500, req=2008, rank=2}, -- Ancestral Spirit Rank 2
		},
		[26] = {
			{943, 4000, req=915, rank=5}, -- Lightning Bolt Rank 5
			{5675, 4000, rank=1}, -- Mana Spring Totem Rank 1
			{6196, 4000, }, -- Far Sight
			{8030, 4000, req=8027, rank=3}, -- Flametongue Weapon Rank 3
			{8190, 4000, rank=1}, -- Magma Totem Rank 1
		},
		[28] = {
			{546, 6000, }, -- Water Walking
			{6391, 6000, req=6390, rank=3}, -- Stoneclaw Totem Rank 3
			{8008, 6000, req=8004, rank=2}, -- Lesser Healing Wave Rank 2
			{8038, 6000, req=8033, rank=2}, -- Frostbrand Weapon Rank 2
			{8053, 6000, req=8052, rank=3}, -- Flame Shock Rank 3
			{8184, 6000, rank=1}, -- Fire Resistance Totem Rank 1
			{8227, 6000, rank=1}, -- Flametongue Totem Rank 1
			{52129, 6000, req=52127, rank=2}, -- Water Shield Rank 2
		},
		[30] = {
			{556, 7000, }, -- Astral Recall
			{6364, 7000, req=6363, rank=3}, -- Searing Totem Rank 3
			{6375, 7000, req=5394, rank=2}, -- Healing Stream Totem Rank 2
			{8177, 7000, }, -- Grounding Totem
			{8232, 7000, rank=1}, -- Windfury Weapon Rank 1
			{10595, 7000, rank=1}, -- Nature Resistance Totem Rank 1
			{20608, 7000, }, -- Reincarnation Passive
			{36936, 7000, }, -- Totemic Recall
			{51730, 7000, rank=1}, -- Earthliving Weapon Rank 1
		},
		[32] = {
			{421, 8000, rank=1}, -- Chain Lightning Rank 1
			{945, 8000, req=905, rank=4}, -- Lightning Shield Rank 4
			{959, 8000, req=939, rank=6}, -- Healing Wave Rank 6
			{6041, 8000, req=943, rank=6}, -- Lightning Bolt Rank 6
			{8012, 8000, req=370, rank=2}, -- Purge Rank 2
			{8499, 8000, req=8498, rank=3}, -- Fire Nova Rank 3
			{8512, 8000, }, -- Windfury Totem
		},
		[34] = {
			{6495, 9000, }, -- Sentry Totem
			{8058, 9000, req=8056, rank=2}, -- Frost Shock Rank 2
			{10406, 9000, req=8155, rank=4}, -- Stoneskin Totem Rank 4
			{52131, 9000, req=52129, rank=3}, -- Water Shield Rank 3
		},
		[36] = {
			{8010, 10000, req=8008, rank=3}, -- Lesser Healing Wave Rank 3
			{10412, 10000, req=8046, rank=5}, -- Earth Shock Rank 5
			{10495, 10000, req=5675, rank=2}, -- Mana Spring Totem Rank 2
			{10585, 10000, req=8190, rank=2}, -- Magma Totem Rank 2
			{16339, 10000, req=8030, rank=4}, -- Flametongue Weapon Rank 4
			{20610, 10000, req=20609, rank=3}, -- Ancestral Spirit Rank 3
		},
		[38] = {
			{6392, 11000, req=6391, rank=4}, -- Stoneclaw Totem Rank 4
			{8161, 11000, req=8160, rank=3}, -- Strength of Earth Totem Rank 3
			{8170, 11000, }, -- Cleansing Totem
			{8249, 11000, req=8227, rank=2}, -- Flametongue Totem Rank 2
			{10391, 11000, req=6041, rank=7}, -- Lightning Bolt Rank 7
			{10456, 11000, req=8038, rank=3}, -- Frostbrand Weapon Rank 3
			{10478, 11000, req=8181, rank=2}, -- Frost Resistance Totem Rank 2
		},
		[40] = {
			{930, 12000, req=421, rank=2}, -- Chain Lightning Rank 2
			{1064, 12000, rank=1}, -- Chain Heal Rank 1
			{6365, 12000, req=6364, rank=4}, -- Searing Totem Rank 4
			{6377, 12000, req=6375, rank=3}, -- Healing Stream Totem Rank 3
			{8005, 12000, req=959, rank=7}, -- Healing Wave Rank 7
			{8134, 12000, req=945, rank=5}, -- Lightning Shield Rank 5
			{8235, 12000, req=8232, rank=2}, -- Windfury Weapon Rank 2
			{8737, 12000, }, -- Mail
			{10447, 12000, req=8053, rank=4}, -- Flame Shock Rank 4
			{51988, 12000, req=51730, rank=2}, -- Earthliving Weapon Rank 2
		},
		[41] = {
			{52134, 12000, req=52131, rank=4}, -- Water Shield Rank 4
		},
		[42] = {
			{10537, 16000, req=8184, rank=2}, -- Fire Resistance Totem Rank 2
			{11314, 16000, req=8499, rank=4}, -- Fire Nova Rank 4
		},
		[44] = {
			{10392, 18000, req=10391, rank=8}, -- Lightning Bolt Rank 8
			{10407, 18000, req=10406, rank=5}, -- Stoneskin Totem Rank 5
			{10466, 18000, req=8010, rank=4}, -- Lesser Healing Wave Rank 4
			{10600, 18000, req=10595, rank=2}, -- Nature Resistance Totem Rank 2
		},
		[46] = {
			{10472, 20000, req=8058, rank=3}, -- Frost Shock Rank 3
			{10496, 20000, req=10495, rank=3}, -- Mana Spring Totem Rank 3
			{10586, 20000, req=10585, rank=3}, -- Magma Totem Rank 3
			{10622, 20000, req=1064, rank=2}, -- Chain Heal Rank 2
			{16341, 20000, req=16339, rank=5}, -- Flametongue Weapon Rank 5
		},
		[48] = {
			{2860, 22000, req=930, rank=3}, -- Chain Lightning Rank 3
			{10395, 22000, req=8005, rank=8}, -- Healing Wave Rank 8
			{10413, 22000, req=10412, rank=6}, -- Earth Shock Rank 6
			{10427, 22000, req=6392, rank=5}, -- Stoneclaw Totem Rank 5
			{10431, 22000, req=8134, rank=6}, -- Lightning Shield Rank 6
			{10526, 22000, req=8249, rank=3}, -- Flametongue Totem Rank 3
			{16355, 22000, req=10456, rank=4}, -- Frostbrand Weapon Rank 4
			{20776, 22000, req=20610, rank=4}, -- Ancestral Spirit Rank 4
			{52136, 22000, req=52134, rank=5}, -- Water Shield Rank 5
		},
		[50] = {
			{10437, 24000, req=6365, rank=5}, -- Searing Totem Rank 5
			{10462, 24000, req=6377, rank=4}, -- Healing Stream Totem Rank 4
			{10486, 24000, req=8235, rank=3}, -- Windfury Weapon Rank 3
			{15207, 24000, req=10392, rank=9}, -- Lightning Bolt Rank 9
			{51991, 24000, req=51988, rank=3}, -- Earthliving Weapon Rank 3
		},
		[52] = {
			{10442, 27000, req=8161, rank=4}, -- Strength of Earth Totem Rank 4
			{10448, 27000, req=10447, rank=5}, -- Flame Shock Rank 5
			{10467, 27000, req=10466, rank=5}, -- Lesser Healing Wave Rank 5
			{11315, 27000, req=11314, rank=5}, -- Fire Nova Rank 5
		},
		[54] = {
			{10408, 29000, req=10407, rank=6}, -- Stoneskin Totem Rank 6
			{10479, 29000, req=10478, rank=3}, -- Frost Resistance Totem Rank 3
			{10623, 29000, req=10622, rank=3}, -- Chain Heal Rank 3
		},
		[55] = {
			{52138, 29000, req=52136, rank=6}, -- Water Shield Rank 6
		},
		[56] = {
			{10396, 30000, req=10395, rank=9}, -- Healing Wave Rank 9
			{10432, 30000, req=10431, rank=7}, -- Lightning Shield Rank 7
			{10497, 30000, req=10496, rank=4}, -- Mana Spring Totem Rank 4
			{10587, 30000, req=10586, rank=4}, -- Magma Totem Rank 4
			{10605, 30000, req=2860, rank=4}, -- Chain Lightning Rank 4
			{15208, 30000, req=15207, rank=10}, -- Lightning Bolt Rank 10
			{16342, 30000, req=16341, rank=6}, -- Flametongue Weapon Rank 6
		},
		[58] = {
			{10428, 32000, req=10427, rank=6}, -- Stoneclaw Totem Rank 6
			{10473, 32000, req=10472, rank=4}, -- Frost Shock Rank 4
			{10538, 32000, req=10537, rank=3}, -- Fire Resistance Totem Rank 3
			{16356, 32000, req=16355, rank=5}, -- Frostbrand Weapon Rank 5
			{16387, 32000, req=10526, rank=4}, -- Flametongue Totem Rank 4
		},
		[60] = {
			{32593, 1700, talent=974, rank=2}, -- Earth Shield Rank 2
			{57720, 3400, talent=30706, rank=2}, -- Totem of Wrath Rank 2
			{25357, 6500, req=10396, rank=10}, -- Healing Wave Rank 10
			{10414, 34000, req=10413, rank=7}, -- Earth Shock Rank 7
			{10438, 34000, req=10437, rank=6}, -- Searing Totem Rank 6
			{10463, 34000, req=10462, rank=5}, -- Healing Stream Totem Rank 5
			{10468, 34000, req=10467, rank=6}, -- Lesser Healing Wave Rank 6
			{10601, 34000, req=10600, rank=3}, -- Nature Resistance Totem Rank 3
			{16362, 34000, req=10486, rank=4}, -- Windfury Weapon Rank 4
			{20777, 34000, req=20776, rank=5}, -- Ancestral Spirit Rank 5
			{25361, 34000, req=10442, rank=5}, -- Strength of Earth Totem Rank 5
			{51992, 34000, req=51991, rank=4}, -- Earthliving Weapon Rank 4
			{29228, 65000, req=10448, rank=6}, -- Flame Shock Rank 6
		},
		[61] = {
			{25422, 34000, req=10623, rank=4}, -- Chain Heal Rank 4
			{25546, 34000, req=11315, rank=6}, -- Fire Nova Rank 6
		},
		[62] = {
			{24398, 38000, req=52138, rank=7}, -- Water Shield Rank 7
			{25448, 38000, req=15208, rank=11}, -- Lightning Bolt Rank 11
		},
		[63] = {
			{25391, 42000, req=25357, rank=11}, -- Healing Wave Rank 11
			{25439, 42000, req=10605, rank=5}, -- Chain Lightning Rank 5
			{25469, 42000, req=10432, rank=8}, -- Lightning Shield Rank 8
			{25508, 42000, req=10408, rank=7}, -- Stoneskin Totem Rank 7
		},
		[64] = {
			{3738, 47000, }, -- Wrath of Air Totem
			{25489, 47000, req=16342, rank=7}, -- Flametongue Weapon Rank 7
		},
		[65] = {
			{25528, 52000, req=25361, rank=6}, -- Strength of Earth Totem Rank 6
			{25552, 52000, req=10587, rank=5}, -- Magma Totem Rank 5
			{25570, 52000, req=10497, rank=5}, -- Mana Spring Totem Rank 5
		},
		[66] = {
			{2062, 58000, }, -- Earth Elemental Totem
			{25420, 58000, req=10468, rank=7}, -- Lesser Healing Wave Rank 7
			{25500, 58000, req=16356, rank=6}, -- Frostbrand Weapon Rank 6
		},
		[67] = {
			{25449, 64000, req=25448, rank=12}, -- Lightning Bolt Rank 12
			{25525, 64000, req=10428, rank=7}, -- Stoneclaw Totem Rank 7
			{25557, 64000, req=16387, rank=5}, -- Flametongue Totem Rank 5
			{25560, 64000, req=10479, rank=4}, -- Frost Resistance Totem Rank 4
		},
		[68] = {
			{2894, 71000, }, -- Fire Elemental Totem
			{25423, 71000, req=25422, rank=5}, -- Chain Heal Rank 5
			{25464, 71000, req=10473, rank=5}, -- Frost Shock Rank 5
			{25505, 71000, req=16362, rank=5}, -- Windfury Weapon Rank 5
			{25563, 71000, req=10538, rank=4}, -- Fire Resistance Totem Rank 4
		},
		[69] = {
			{25454, 79000, req=10414, rank=8}, -- Earth Shock Rank 8
			{25533, 79000, req=10438, rank=7}, -- Searing Totem Rank 7
			{25567, 79000, req=10463, rank=6}, -- Healing Stream Totem Rank 6
			{25574, 79000, req=10601, rank=4}, -- Nature Resistance Totem Rank 4
			{25590, 79000, req=20777, rank=6}, -- Ancestral Spirit Rank 6
			{33736, 79000, req=24398, rank=8}, -- Water Shield Rank 8
		},
		[70] = {
			{32594, 2500, req=32593, rank=3}, -- Earth Shield Rank 3
			{57721, 5200, req=57720, rank=3}, -- Totem of Wrath Rank 3
			{61299, 9000, talent=61295, rank=2}, -- Riptide Rank 2
			{51993, 71000, req=51992, rank=5}, -- Earthliving Weapon Rank 5
			{2825, 88000, faction="Horde"}, -- Bloodlust
			{25396, 88000, req=25391, rank=12}, -- Healing Wave Rank 12
			{25442, 88000, req=25439, rank=6}, -- Chain Lightning Rank 6
			{25457, 88000, req=29228, rank=7}, -- Flame Shock Rank 7
			{25472, 88000, req=25469, rank=9}, -- Lightning Shield Rank 9
			{25509, 88000, req=25508, rank=8}, -- Stoneskin Totem Rank 8
			{25547, 88000, req=25546, rank=7}, -- Fire Nova Rank 7
			{32182, 88000, faction="Alliance"}, -- Heroism
			{59156, 88000, talent=51490, rank=2}, -- Thunderstorm Rank 2
		},
		[71] = {
			{58580, 180000, req=25525, rank=8}, -- Stoneclaw Totem Rank 8
			{58649, 180000, req=25557, rank=6}, -- Flametongue Totem Rank 6
			{58699, 180000, req=25533, rank=8}, -- Searing Totem Rank 8
			{58755, 180000, req=25567, rank=7}, -- Healing Stream Totem Rank 7
			{58771, 180000, req=25570, rank=6}, -- Mana Spring Totem Rank 6
			{58785, 180000, req=25489, rank=8}, -- Flametongue Weapon Rank 8
			{58794, 180000, req=25500, rank=7}, -- Frostbrand Weapon Rank 7
			{58801, 180000, req=25505, rank=6}, -- Windfury Weapon Rank 6
		},
		[72] = {
			{49275, 180000, req=25420, rank=8}, -- Lesser Healing Wave Rank 8
		},
		[73] = {
			{49235, 180000, req=25464, rank=6}, -- Frost Shock Rank 6
			{49237, 180000, req=25449, rank=13}, -- Lightning Bolt Rank 13
			{58731, 180000, req=25552, rank=6}, -- Magma Totem Rank 6
			{58751, 180000, req=25509, rank=9}, -- Stoneskin Totem Rank 9
		},
		[74] = {
			{49230, 180000, req=25454, rank=9}, -- Earth Shock Rank 9
			{49270, 180000, req=25442, rank=7}, -- Chain Lightning Rank 7
			{55458, 180000, req=25423, rank=6}, -- Chain Heal Rank 6
		},
		[75] = {
			{49283, 9000, req=32594, rank=4}, -- Earth Shield Rank 4
			{61300, 9000, req=61299, rank=3}, -- Riptide Rank 3
			{49232, 180000, req=25457, rank=8}, -- Flame Shock Rank 8
			{49272, 180000, req=25396, rank=13}, -- Healing Wave Rank 13
			{49280, 180000, req=25472, rank=10}, -- Lightning Shield Rank 10
			{51505, 180000, rank=1}, -- Lava Burst Rank 1
			{57622, 180000, req=25528, rank=7}, -- Strength of Earth Totem Rank 7
			{58581, 180000, req=58580, rank=9}, -- Stoneclaw Totem Rank 9
			{58652, 180000, req=58649, rank=7}, -- Flametongue Totem Rank 7
			{58703, 180000, req=58699, rank=9}, -- Searing Totem Rank 9
			{58737, 180000, req=25563, rank=5}, -- Fire Resistance Totem Rank 5
			{58741, 180000, req=25560, rank=5}, -- Frost Resistance Totem Rank 5
			{58746, 180000, req=25574, rank=5}, -- Nature Resistance Totem Rank 5
			{59158, 180000, req=59156, rank=3}, -- Thunderstorm Rank 3
			{61649, 180000, req=25547, rank=8}, -- Fire Nova Rank 8
		},
		[76] = {
			{57960, 180000, req=33736, rank=9}, -- Water Shield Rank 9
			{58756, 180000, req=58755, rank=8}, -- Healing Stream Totem Rank 8
			{58773, 180000, req=58771, rank=7}, -- Mana Spring Totem Rank 7
			{58789, 180000, req=58785, rank=9}, -- Flametongue Weapon Rank 9
			{58795, 180000, req=58794, rank=8}, -- Frostbrand Weapon Rank 8
			{58803, 180000, req=58801, rank=7}, -- Windfury Weapon Rank 7
		},
		[77] = {
			{49276, 180000, req=49275, rank=9}, -- Lesser Healing Wave Rank 9
		},
		[78] = {
			{49236, 180000, req=49235, rank=7}, -- Frost Shock Rank 7
			{58582, 180000, req=58581, rank=10}, -- Stoneclaw Totem Rank 10
			{58734, 180000, req=58731, rank=7}, -- Magma Totem Rank 7
			{58753, 180000, req=58751, rank=10}, -- Stoneskin Totem Rank 10
		},
		[79] = {
			{49231, 180000, req=49230, rank=10}, -- Earth Shock Rank 10
			{49238, 180000, req=49237, rank=14}, -- Lightning Bolt Rank 14
		},
		[80] = {
			{49284, 9000, req=49283, rank=5}, -- Earth Shield Rank 5
			{61301, 9000, req=61300, rank=4}, -- Riptide Rank 4
			{57722, 10000, req=57721, rank=4}, -- Totem of Wrath Rank 4
			{49233, 180000, req=49232, rank=9}, -- Flame Shock Rank 9
			{49271, 180000, req=49270, rank=8}, -- Chain Lightning Rank 8
			{49273, 180000, req=49272, rank=14}, -- Healing Wave Rank 14
			{49277, 180000, req=25590, rank=7}, -- Ancestral Spirit Rank 7
			{49281, 180000, req=49280, rank=11}, -- Lightning Shield Rank 11
			{51514, 180000, }, -- Hex
			{51994, 180000, req=51993, rank=6}, -- Earthliving Weapon Rank 6
			{55459, 180000, req=55458, rank=7}, -- Chain Heal Rank 7
			{58643, 180000, req=57622, rank=8}, -- Strength of Earth Totem Rank 8
			{58656, 180000, req=58652, rank=8}, -- Flametongue Totem Rank 8
			{58704, 180000, req=58703, rank=10}, -- Searing Totem Rank 10
			{58739, 180000, req=58737, rank=6}, -- Fire Resistance Totem Rank 6
			{58745, 180000, req=58741, rank=6}, -- Frost Resistance Totem Rank 6
			{58749, 180000, req=58746, rank=6}, -- Nature Resistance Totem Rank 6
			{58757, 180000, req=58756, rank=9}, -- Healing Stream Totem Rank 9
			{58774, 180000, req=58773, rank=8}, -- Mana Spring Totem Rank 8
			{58790, 180000, req=58789, rank=10}, -- Flametongue Weapon Rank 10
			{58796, 180000, req=58795, rank=9}, -- Frostbrand Weapon Rank 9
			{58804, 180000, req=58803, rank=8}, -- Windfury Weapon Rank 8
			{59159, 180000, req=59158, rank=4}, -- Thunderstorm Rank 4
			{60043, 180000, req=51505, rank=2}, -- Lava Burst Rank 2
			{61657, 180000, req=61649, rank=9}, -- Fire Nova Rank 9
		},
	},


	WARLOCK = {
		[0] = {
			{201, 1000, }, -- One-Handed Swords
			{227, 1000, }, -- Staves
			{1180, 1000, }, -- Daggers
		},
		[1] = {
			{688, 100, }, -- Summon Imp Summon
		},
		[3] = {
			{348, 10, rank=1}, -- Immolate Rank 1
		},
		[4] = {
			{172, 100, rank=1}, -- Corruption Rank 1
			{702, 100, rank=1}, -- Curse of Weakness Rank 1
		},
		[6] = {
			{695, 100, req=686, rank=2}, -- Shadow Bolt Rank 2
			{1454, 100, rank=1}, -- Life Tap Rank 1
		},
		[8] = {
			{980, 200, rank=1}, -- Curse of Agony Rank 1
			{5782, 200, rank=1}, -- Fear Rank 1
		},
		[10] = {
			{696, 300, req=687, rank=2}, -- Demon Skin Rank 2
			{707, 300, req=348, rank=2}, -- Immolate Rank 2
			{1120, 300, rank=1}, -- Drain Soul Rank 1
			{6201, 300, rank=1}, -- Create Healthstone Rank 1
		},
		[12] = {
			{705, 600, req=695, rank=3}, -- Shadow Bolt Rank 3
			{755, 600, rank=1}, -- Health Funnel Rank 1
			{1108, 600, req=702, rank=2}, -- Curse of Weakness Rank 2
		},
		[14] = {
			{689, 900, rank=1}, -- Drain Life Rank 1
			{6222, 900, req=172, rank=2}, -- Corruption Rank 2
		},
		[16] = {
			{1455, 1200, req=1454, rank=2}, -- Life Tap Rank 2
			{5697, 1200, }, -- Unending Breath
		},
		[18] = {
			{693, 1500, rank=1}, -- Create Soulstone Rank 1
			{1014, 1500, req=980, rank=2}, -- Curse of Agony Rank 2
			{5676, 1500, rank=1}, -- Searing Pain Rank 1
		},
		[20] = {
			{698, 2000, }, -- Ritual of Summoning
			{706, 2000, rank=1}, -- Demon Armor Rank 1
			{1088, 2000, req=705, rank=4}, -- Shadow Bolt Rank 4
			{1094, 2000, req=707, rank=3}, -- Immolate Rank 3
			{3698, 2000, req=755, rank=2}, -- Health Funnel Rank 2
			{5740, 2000, rank=1}, -- Rain of Fire Rank 1
			{5784, 3500, }, -- Summon Felsteed
		},
		[22] = {
			{126, 2500, }, -- Eye of Kilrogg Summon
			{699, 2500, req=689, rank=2}, -- Drain Life Rank 2
			{6202, 2500, req=6201, rank=2}, -- Create Healthstone Rank 2
			{6205, 2500, req=1108, rank=3}, -- Curse of Weakness Rank 3
		},
		[24] = {
			{18867, 150, talent=17877, rank=2}, -- Shadowburn Rank 2
			{5138, 3000, }, -- Drain Mana
			{5500, 3000, }, -- Sense Demons
			{6223, 3000, req=6222, rank=3}, -- Corruption Rank 3
			{8288, 3000, req=1120, rank=2}, -- Drain Soul Rank 2
		},
		[26] = {
			{132, 4000, }, -- Detect Invisibility
			{1456, 4000, req=1455, rank=3}, -- Life Tap Rank 3
			{1714, 4000, rank=1}, -- Curse of Tongues Rank 1
			{17919, 4000, req=5676, rank=2}, -- Searing Pain Rank 2
		},
		[28] = {
			{710, 5000, rank=1}, -- Banish Rank 1
			{1106, 5000, req=1088, rank=5}, -- Shadow Bolt Rank 5
			{3699, 5000, req=3698, rank=3}, -- Health Funnel Rank 3
			{6217, 5000, req=1014, rank=3}, -- Curse of Agony Rank 3
			{6366, 5000, rank=1}, -- Create Firestone Rank 1
		},
		[30] = {
			{709, 6000, req=699, rank=3}, -- Drain Life Rank 3
			{1086, 6000, req=706, rank=2}, -- Demon Armor Rank 2
			{1098, 6000, rank=1}, -- Subjugate Demon Rank 1
			{1949, 6000, rank=1}, -- Hellfire Rank 1
			{2941, 6000, req=1094, rank=4}, -- Immolate Rank 4
			{20752, 6000, req=693, rank=2}, -- Create Soulstone Rank 2
		},
		[32] = {
			{18868, 350, req=18867, rank=3}, -- Shadowburn Rank 3
			{1490, 7000, rank=1}, -- Curse of the Elements Rank 1
			{6213, 7000, req=5782, rank=2}, -- Fear Rank 2
			{6229, 7000, rank=1}, -- Shadow Ward Rank 1
			{7646, 7000, req=6205, rank=4}, -- Curse of Weakness Rank 4
		},
		[34] = {
			{5699, 8000, req=6202, rank=3}, -- Create Healthstone Rank 3
			{6219, 8000, req=5740, rank=2}, -- Rain of Fire Rank 2
			{7648, 8000, req=6223, rank=4}, -- Corruption Rank 4
			{17920, 8000, req=17919, rank=3}, -- Searing Pain Rank 3
		},
		[36] = {
			{2362, 9000, rank=1}, -- Create Spellstone Rank 1
			{3700, 9000, req=3699, rank=4}, -- Health Funnel Rank 4
			{7641, 9000, req=1106, rank=6}, -- Shadow Bolt Rank 6
			{11687, 9000, req=1456, rank=4}, -- Life Tap Rank 4
			{17951, 9000, req=6366, rank=2}, -- Create Firestone Rank 2
		},
		[38] = {
			{7651, 10000, req=709, rank=4}, -- Drain Life Rank 4
			{8289, 10000, req=8288, rank=3}, -- Drain Soul Rank 3
			{11711, 10000, req=6217, rank=4}, -- Curse of Agony Rank 4
		},
		[40] = {
			{18869, 550, req=18868, rank=4}, -- Shadowburn Rank 4
			{5484, 11000, rank=1}, -- Howl of Terror Rank 1
			{11665, 11000, req=2941, rank=5}, -- Immolate Rank 5
			{11733, 11000, req=1086, rank=3}, -- Demon Armor Rank 3
			{20755, 11000, req=20752, rank=3}, -- Create Soulstone Rank 3
			{23161, 20000, req=1710}, -- Dreadsteed
		},
		[42] = {
			{6789, 11000, rank=1}, -- Death Coil Rank 1
			{11683, 11000, req=1949, rank=2}, -- Hellfire Rank 2
			{11707, 11000, req=7646, rank=5}, -- Curse of Weakness Rank 5
			{11739, 11000, req=6229, rank=2}, -- Shadow Ward Rank 2
			{17921, 11000, req=17920, rank=4}, -- Searing Pain Rank 4
		},
		[44] = {
			{11659, 12000, req=7641, rank=7}, -- Shadow Bolt Rank 7
			{11671, 12000, req=7648, rank=5}, -- Corruption Rank 5
			{11693, 12000, req=3700, rank=5}, -- Health Funnel Rank 5
			{11725, 12000, req=1098, rank=2}, -- Subjugate Demon Rank 2
		},
		[46] = {
			{11677, 13000, req=6219, rank=3}, -- Rain of Fire Rank 3
			{11688, 13000, req=11687, rank=5}, -- Life Tap Rank 5
			{11699, 13000, req=7651, rank=5}, -- Drain Life Rank 5
			{11721, 13000, req=1490, rank=2}, -- Curse of the Elements Rank 2
			{11729, 13000, req=5699, rank=4}, -- Create Healthstone Rank 4
			{17952, 13000, req=17951, rank=3}, -- Create Firestone Rank 3
		},
		[48] = {
			{18870, 700, req=18869, rank=5}, -- Shadowburn Rank 5
			{6353, 14000, rank=1}, -- Soul Fire Rank 1
			{11712, 14000, req=11711, rank=5}, -- Curse of Agony Rank 5
			{17727, 14000, req=2362, rank=2}, -- Create Spellstone Rank 2
			{18647, 14000, req=710, rank=2}, -- Banish Rank 2
		},
		[50] = {
			{18937, 750, talent=18220, rank=2}, -- Dark Pact Rank 2
			{11667, 15000, req=11665, rank=6}, -- Immolate Rank 6
			{11719, 15000, req=1714, rank=2}, -- Curse of Tongues Rank 2
			{11734, 15000, req=11733, rank=4}, -- Demon Armor Rank 4
			{17922, 15000, req=17921, rank=5}, -- Searing Pain Rank 5
			{17925, 15000, req=6789, rank=2}, -- Death Coil Rank 2
			{20756, 15000, req=20755, rank=4}, -- Create Soulstone Rank 4
		},
		[52] = {
			{11660, 18000, req=11659, rank=8}, -- Shadow Bolt Rank 8
			{11675, 18000, req=8289, rank=4}, -- Drain Soul Rank 4
			{11694, 18000, req=11693, rank=6}, -- Health Funnel Rank 6
			{11708, 18000, req=11707, rank=6}, -- Curse of Weakness Rank 6
			{11740, 18000, req=11739, rank=3}, -- Shadow Ward Rank 3
		},
		[54] = {
			{11672, 20000, req=11671, rank=6}, -- Corruption Rank 6
			{11684, 20000, req=11683, rank=3}, -- Hellfire Rank 3
			{11700, 20000, req=11699, rank=6}, -- Drain Life Rank 6
			{17928, 20000, req=5484, rank=2}, -- Howl of Terror Rank 2
		},
		[56] = {
			{18871, 1100, req=18870, rank=6}, -- Shadowburn Rank 6
			{6215, 22000, req=6213, rank=3}, -- Fear Rank 3
			{11689, 22000, req=11688, rank=6}, -- Life Tap Rank 6
			{17924, 22000, req=6353, rank=2}, -- Soul Fire Rank 2
			{17953, 22000, req=17952, rank=4}, -- Create Firestone Rank 4
		},
		[58] = {
			{11678, 24000, req=11677, rank=4}, -- Rain of Fire Rank 4
			{11713, 24000, req=11712, rank=6}, -- Curse of Agony Rank 6
			{11726, 24000, req=11725, rank=3}, -- Subjugate Demon Rank 3
			{11730, 24000, req=11729, rank=5}, -- Create Healthstone Rank 5
			{17923, 24000, req=17922, rank=6}, -- Searing Pain Rank 6
			{17926, 24000, req=17925, rank=3}, -- Death Coil Rank 3
		},
		[60] = {
			{18938, 1300, req=18937, rank=3}, -- Dark Pact Rank 3
			{30404, 2500, talent=30108, rank=2}, -- Unstable Affliction Rank 2
			{30413, 2500, talent=30283, rank=2}, -- Shadowfury Rank 2
			{603, 26000, rank=1}, -- Curse of Doom Rank 1
			{11661, 26000, req=11660, rank=9}, -- Shadow Bolt Rank 9
			{11668, 26000, req=11667, rank=7}, -- Immolate Rank 7
			{11695, 26000, req=11694, rank=7}, -- Health Funnel Rank 7
			{11722, 26000, req=11721, rank=3}, -- Curse of the Elements Rank 3
			{11735, 26000, req=11734, rank=5}, -- Demon Armor Rank 5
			{17728, 26000, req=17727, rank=3}, -- Create Spellstone Rank 3
			{20757, 26000, req=20756, rank=5}, -- Create Soulstone Rank 5
			{25309, 26000, req=11668, rank=8}, -- Immolate Rank 8
			{25311, 26000, req=11672, rank=7}, -- Corruption Rank 7
			{28610, 34000, req=11740, rank=4}, -- Shadow Ward Rank 4
		},
		[61] = {
			{27224, 30000, req=11708, rank=7}, -- Curse of Weakness Rank 7
		},
		[62] = {
			{25307, 26000, req=11661, rank=10}, -- Shadow Bolt Rank 10
			{27219, 30000, req=11700, rank=7}, -- Drain Life Rank 7
			{28176, 34000, rank=1}, -- Fel Armor Rank 1
		},
		[63] = {
			{27263, 1300, req=18871, rank=7}, -- Shadowburn Rank 7
		},
		[64] = {
			{27211, 42000, req=17924, rank=3}, -- Soul Fire Rank 3
			{29722, 42000, rank=1}, -- Incinerate Rank 1
		},
		[65] = {
			{27210, 46000, req=17923, rank=7}, -- Searing Pain Rank 7
			{27216, 46000, req=25311, rank=8}, -- Corruption Rank 8
		},
		[66] = {
			{27250, 51000, req=17953, rank=5}, -- Create Firestone Rank 5
			{28172, 51000, req=17728, rank=4}, -- Create Spellstone Rank 4
			{29858, 51000, }, -- Soulshatter
		},
		[67] = {
			{27217, 57000, req=11675, rank=5}, -- Drain Soul Rank 5
			{27218, 57000, req=11713, rank=7}, -- Curse of Agony Rank 7
			{27259, 57000, req=11695, rank=8}, -- Health Funnel Rank 8
		},
		[68] = {
			{27222, 56700, req=11689, rank=7}, -- Life Tap Rank 7
			{27213, 63000, req=11684, rank=4}, -- Hellfire Rank 4
			{27223, 63000, req=17926, rank=4}, -- Death Coil Rank 4
			{27230, 63000, req=11730, rank=6}, -- Create Healthstone Rank 6
			{29893, 63000, rank=1}, -- Ritual of Souls Rank 1
		},
		[69] = {
			{27209, 70000, req=25307, rank=11}, -- Shadow Bolt Rank 11
			{27212, 70000, req=11678, rank=5}, -- Rain of Fire Rank 5
			{27215, 70000, req=25309, rank=9}, -- Immolate Rank 9
			{27220, 70000, req=27219, rank=8}, -- Drain Life Rank 8
			{27228, 70000, req=11722, rank=4}, -- Curse of the Elements Rank 4
			{28189, 70000, req=28176, rank=2}, -- Fel Armor Rank 2
			{30909, 70000, req=27224, rank=8}, -- Curse of Weakness Rank 8
		},
		[70] = {
			{27265, 1300, req=18938, rank=4}, -- Dark Pact Rank 4
			{30405, 2500, req=30404, rank=3}, -- Unstable Affliction Rank 3
			{30414, 2500, req=30413, rank=3}, -- Shadowfury Rank 3
			{59161, 2500, talent=48181, rank=2}, -- Haunt Rank 2
			{59170, 2500, talent=50796, rank=2}, -- Chaos Bolt Rank 2
			{30546, 3900, req=27263, rank=8}, -- Shadowburn Rank 8
			{27238, 78000, req=20757, rank=6}, -- Create Soulstone Rank 6
			{27243, 78000, rank=1}, -- Seed of Corruption Rank 1
			{27260, 78000, req=11735, rank=6}, -- Demon Armor Rank 6
			{30459, 78000, req=27210, rank=8}, -- Searing Pain Rank 8
			{30545, 78000, req=27211, rank=4}, -- Soul Fire Rank 4
			{30910, 78000, req=603, rank=2}, -- Curse of Doom Rank 2
			{32231, 78000, req=29722, rank=2}, -- Incinerate Rank 2
		},
		[71] = {
			{47812, 160000, req=27216, rank=9}, -- Corruption Rank 9
			{50511, 160000, req=30909, rank=9}, -- Curse of Weakness Rank 9
		},
		[72] = {
			{61191, 70000, req=11726, rank=4}, -- Subjugate Demon Rank 4
			{47819, 160000, req=27212, rank=6}, -- Rain of Fire Rank 6
			{47886, 160000, req=28172, rank=5}, -- Create Spellstone Rank 5
			{47890, 160000, req=28610, rank=5}, -- Shadow Ward Rank 5
		},
		[73] = {
			{47859, 160000, req=27223, rank=5}, -- Death Coil Rank 5
			{47863, 160000, req=27218, rank=8}, -- Curse of Agony Rank 8
			{47871, 160000, req=27230, rank=7}, -- Create Healthstone Rank 7
		},
		[74] = {
			{47837, 100000, req=32231, rank=3}, -- Incinerate Rank 3
			{47808, 160000, req=27209, rank=12}, -- Shadow Bolt Rank 12
			{47814, 160000, req=30459, rank=9}, -- Searing Pain Rank 9
			{47892, 160000, req=28189, rank=3}, -- Fel Armor Rank 3
			{60219, 160000, req=27250, rank=6}, -- Create Firestone Rank 6
		},
		[75] = {
			{47826, 8000, req=30546, rank=9}, -- Shadowburn Rank 9
			{47841, 8000, req=30405, rank=4}, -- Unstable Affliction Rank 4
			{47846, 8000, req=30414, rank=4}, -- Shadowfury Rank 4
			{59163, 8000, req=59161, rank=3}, -- Haunt Rank 3
			{59171, 8000, req=59170, rank=3}, -- Chaos Bolt Rank 3
			{47897, 10000, rank=1}, -- Shadowflame Rank 1
			{47810, 160000, req=27215, rank=10}, -- Immolate Rank 10
			{47824, 160000, req=30545, rank=5}, -- Soul Fire Rank 5
			{47835, 160000, req=27243, rank=2}, -- Seed of Corruption Rank 2
		},
		[76] = {
			{47793, 160000, req=27260, rank=7}, -- Demon Armor Rank 7
			{47856, 160000, req=27259, rank=9}, -- Health Funnel Rank 9
			{47884, 160000, req=27238, rank=7}, -- Create Soulstone Rank 7
		},
		[77] = {
			{47813, 160000, req=47812, rank=10}, -- Corruption Rank 10
			{47855, 160000, req=27217, rank=6}, -- Drain Soul Rank 6
		},
		[78] = {
			{47823, 160000, req=27213, rank=5}, -- Hellfire Rank 5
			{47857, 160000, req=27220, rank=9}, -- Drain Life Rank 9
			{47860, 160000, req=47859, rank=6}, -- Death Coil Rank 6
			{47865, 160000, req=27228, rank=5}, -- Curse of the Elements Rank 5
			{47888, 160000, req=47886, rank=6}, -- Create Spellstone Rank 6
			{47891, 160000, req=47890, rank=6}, -- Shadow Ward Rank 6
		},
		[79] = {
			{47809, 160000, req=47808, rank=13}, -- Shadow Bolt Rank 13
			{47815, 160000, req=47814, rank=10}, -- Searing Pain Rank 10
			{47820, 160000, req=47819, rank=7}, -- Rain of Fire Rank 7
			{47864, 160000, req=47863, rank=9}, -- Curse of Agony Rank 9
			{47878, 160000, req=47871, rank=8}, -- Create Healthstone Rank 8
			{47893, 160000, req=47892, rank=4}, -- Fel Armor Rank 4
		},
		[80] = {
			{47827, 8000, req=47826, rank=10}, -- Shadowburn Rank 10
			{47843, 8000, req=47841, rank=5}, -- Unstable Affliction Rank 5
			{47847, 8000, req=47846, rank=5}, -- Shadowfury Rank 5
			{59164, 8000, req=59163, rank=4}, -- Haunt Rank 4
			{59172, 8000, req=59171, rank=4}, -- Chaos Bolt Rank 4
			{61290, 10000, req=47897, rank=2}, -- Shadowflame Rank 2
			{47838, 100000, req=47837, rank=4}, -- Incinerate Rank 4
			{47811, 160000, req=47810, rank=11}, -- Immolate Rank 11
			{47825, 160000, req=47824, rank=6}, -- Soul Fire Rank 6
			{47836, 160000, req=47835, rank=3}, -- Seed of Corruption Rank 3
			{47867, 160000, req=30910, rank=3}, -- Curse of Doom Rank 3
			{47889, 160000, req=47793, rank=8}, -- Demon Armor Rank 8
			{48018, 160000, }, -- Demonic Circle: Summon
			{48020, 160000, }, -- Demonic Circle: Teleport
			{57946, 160000, req=27222, rank=8}, -- Life Tap Rank 8
			{58887, 160000, req=29893, rank=2}, -- Ritual of Souls Rank 2
			{59092, 160000, req=27265, rank=5}, -- Dark Pact Rank 5
			{60220, 160000, req=60219, rank=7}, -- Create Firestone Rank 7
		},
	},


	WARRIOR = {
		[0] = {
			{196, 1000, }, -- One-Handed Axes
			{197, 1000, }, -- Two-Handed Axes
			{198, 1000, }, -- One-Handed Maces
			{199, 1000, }, -- Two-Handed Maces
			{201, 1000, }, -- One-Handed Swords
			{202, 1000, }, -- Two-Handed Swords
			{227, 1000, }, -- Staves
			{264, 1000, }, -- Bows
			{266, 1000, }, -- Guns
			{1180, 1000, }, -- Daggers
			{5011, 1000, }, -- Crossbows
			{15590, 1000, }, -- Fist Weapons
		},
		[1] = {
			{6673, 10, rank=1}, -- Battle Shout Rank 1
		},
		[4] = {
			{100, 100, rank=1}, -- Charge Rank 1
			{772, 100, rank=1}, -- Rend Rank 1
		},
		[6] = {
			{6343, 100, rank=1}, -- Thunder Clap Rank 1
			{34428, 58000, }, -- Victory Rush
		},
		[8] = {
			{284, 200, req=78, rank=2}, -- Heroic Strike Rank 2
			{1715, 200, }, -- Hamstring
		},
		[10] = {
			{674, 300, }, -- Dual Wield Passive
			{2687, 600, }, -- Bloodrage
			{6546, 600, req=772, rank=2}, -- Rend Rank 2
		},
		[12] = {
			{3127, 800, }, -- Parry Passive
			{72, 1000, }, -- Shield Bash
			{5242, 1000, req=6673, rank=2}, -- Battle Shout Rank 2
			{7384, 1000, }, -- Overpower
		},
		[14] = {
			{1160, 1500, rank=1}, -- Demoralizing Shout Rank 1
			{6572, 1500, rank=1}, -- Revenge Rank 1
		},
		[16] = {
			{285, 2000, req=284, rank=3}, -- Heroic Strike Rank 3
			{694, 2000, }, -- Mocking Blow
			{2565, 2000, }, -- Shield Block
		},
		[18] = {
			{676, 3000, }, -- Disarm
			{8198, 3000, req=6343, rank=2}, -- Thunder Clap Rank 2
		},
		[20] = {
			{845, 4000, rank=1}, -- Cleave Rank 1
			{6547, 4000, req=6546, rank=3}, -- Rend Rank 3
			{12678, 4000, }, -- Stance Mastery Passive
			{20230, 4000, }, -- Retaliation
			{200, 10000, }, -- Polearms
		},
		[22] = {
			{5246, 6000, }, -- Intimidating Shout
			{6192, 6000, req=5242, rank=3}, -- Battle Shout Rank 3
		},
		[24] = {
			{1608, 8000, req=285, rank=4}, -- Heroic Strike Rank 4
			{5308, 8000, rank=1}, -- Execute Rank 1
			{6190, 8000, req=1160, rank=2}, -- Demoralizing Shout Rank 2
			{6574, 8000, req=6572, rank=2}, -- Revenge Rank 2
		},
		[26] = {
			{1161, 10000, }, -- Challenging Shout
			{6178, 10000, req=100, rank=2}, -- Charge Rank 2
		},
		[28] = {
			{871, 11000, }, -- Shield Wall
			{8204, 11000, req=8198, rank=3}, -- Thunder Clap Rank 3
		},
		[30] = {
			{1464, 12000, rank=1}, -- Slam Rank 1
			{6548, 12000, req=6547, rank=4}, -- Rend Rank 4
			{7369, 12000, req=845, rank=2}, -- Cleave Rank 2
			{20252, 12000, }, -- Intercept
		},
		[32] = {
			{11549, 14000, req=6192, rank=4}, -- Battle Shout Rank 4
			{11564, 14000, req=1608, rank=5}, -- Heroic Strike Rank 5
			{18499, 14000, }, -- Berserker Rage
			{20658, 14000, req=5308, rank=2}, -- Execute Rank 2
		},
		[34] = {
			{7379, 16000, req=6574, rank=3}, -- Revenge Rank 3
			{11554, 16000, req=6190, rank=3}, -- Demoralizing Shout Rank 3
		},
		[36] = {
			{1680, 18000, }, -- Whirlwind
		},
		[38] = {
			{6552, 20000, }, -- Pummel
			{8205, 20000, req=8204, rank=4}, -- Thunder Clap Rank 4
			{8820, 20000, req=1464, rank=2}, -- Slam Rank 2
		},
		[40] = {
			{8737, 12000, }, -- Mail
			{750, 20000, }, -- Plate Mail
			{11565, 22000, req=11564, rank=6}, -- Heroic Strike Rank 6
			{11572, 22000, req=6548, rank=5}, -- Rend Rank 5
			{11608, 22000, req=7369, rank=3}, -- Cleave Rank 3
			{20660, 22000, req=20658, rank=3}, -- Execute Rank 3
			{23922, 22000, rank=1}, -- Shield Slam Rank 1
		},
		[42] = {
			{11550, 32000, req=11549, rank=5}, -- Battle Shout Rank 5
		},
		[44] = {
			{11555, 34000, req=11554, rank=4}, -- Demoralizing Shout Rank 4
			{11600, 34000, req=7379, rank=4}, -- Revenge Rank 4
		},
		[46] = {
			{11578, 36000, req=6178, rank=3}, -- Charge Rank 3
			{11604, 36000, req=8820, rank=3}, -- Slam Rank 3
		},
		[48] = {
			{21551, 2000, talent=12294, rank=2}, -- Mortal Strike Rank 2
			{23923, 2000, req=23922, rank=2}, -- Shield Slam Rank 2
			{11566, 40000, req=11565, rank=7}, -- Heroic Strike Rank 7
			{11580, 40000, req=8205, rank=5}, -- Thunder Clap Rank 5
			{20661, 40000, req=20660, rank=4}, -- Execute Rank 4
		},
		[50] = {
			{1719, 42000, }, -- Recklessness
			{11573, 42000, req=11572, rank=6}, -- Rend Rank 6
			{11609, 42000, req=11608, rank=4}, -- Cleave Rank 4
		},
		[52] = {
			{11551, 54000, req=11550, rank=6}, -- Battle Shout Rank 6
		},
		[54] = {
			{21552, 2800, req=21551, rank=3}, -- Mortal Strike Rank 3
			{23924, 2800, req=23923, rank=3}, -- Shield Slam Rank 3
			{11556, 56000, req=11555, rank=5}, -- Demoralizing Shout Rank 5
			{11601, 56000, req=11600, rank=5}, -- Revenge Rank 5
			{11605, 56000, req=11604, rank=4}, -- Slam Rank 4
		},
		[56] = {
			{11567, 58000, req=11566, rank=8}, -- Heroic Strike Rank 8
			{20662, 58000, req=20661, rank=5}, -- Execute Rank 5
		},
		[58] = {
			{11581, 60000, req=11580, rank=6}, -- Thunder Clap Rank 6
		},
		[60] = {
			{21553, 3100, req=21552, rank=4}, -- Mortal Strike Rank 4
			{23925, 3100, req=23924, rank=4}, -- Shield Slam Rank 4
			{30016, 3100, talent=20243, rank=2}, -- Devastate Rank 2
			{25288, 56000, req=11601, rank=6}, -- Revenge Rank 6
			{25286, 60000, req=11567, rank=9}, -- Heroic Strike Rank 9
			{11574, 62000, req=11573, rank=7}, -- Rend Rank 7
			{20569, 62000, req=11609, rank=5}, -- Cleave Rank 5
			{25289, 65000, req=11551, rank=7}, -- Battle Shout Rank 7
		},
		[61] = {
			{25241, 65000, req=11605, rank=5}, -- Slam Rank 5
		},
		[62] = {
			{25202, 65000, req=11556, rank=6}, -- Demoralizing Shout Rank 6
		},
		[63] = {
			{25269, 65000, req=25288, rank=7}, -- Revenge Rank 7
		},
		[64] = {
			{23920, 65000, }, -- Spell Reflection
		},
		[65] = {
			{25234, 65000, req=20662, rank=6}, -- Execute Rank 6
		},
		[66] = {
			{25248, 3250, req=21553, rank=5}, -- Mortal Strike Rank 5
			{25258, 3250, req=23925, rank=5}, -- Shield Slam Rank 5
			{29707, 65000, req=25286, rank=10}, -- Heroic Strike Rank 10
		},
		[67] = {
			{25264, 65000, req=11581, rank=7}, -- Thunder Clap Rank 7
		},
		[68] = {
			{469, 65000, rank=1}, -- Commanding Shout Rank 1
			{25208, 65000, req=11574, rank=8}, -- Rend Rank 8
			{25231, 65000, req=20569, rank=6}, -- Cleave Rank 6
		},
		[69] = {
			{2048, 65000, req=25289, rank=8}, -- Battle Shout Rank 8
			{25242, 65000, req=25241, rank=6}, -- Slam Rank 6
		},
		[70] = {
			{30022, 3250, req=30016, rank=3}, -- Devastate Rank 3
			{30330, 3250, req=25248, rank=6}, -- Mortal Strike Rank 6
			{30356, 3250, req=25258, rank=6}, -- Shield Slam Rank 6
			{3411, 65000, }, -- Intervene
			{25203, 65000, req=25202, rank=7}, -- Demoralizing Shout Rank 7
			{25236, 65000, req=25234, rank=7}, -- Execute Rank 7
			{30357, 65000, req=25269, rank=8}, -- Revenge Rank 8
			{30324, 100000, req=29707, rank=11}, -- Heroic Strike Rank 11
		},
		[71] = {
			{46845, 260000, req=25208, rank=9}, -- Rend Rank 9
			{64382, 260000, }, -- Shattering Throw
		},
		[72] = {
			{47449, 260000, req=30324, rank=12}, -- Heroic Strike Rank 12
			{47519, 260000, req=25231, rank=7}, -- Cleave Rank 7
		},
		[73] = {
			{47470, 260000, req=25236, rank=8}, -- Execute Rank 8
			{47501, 260000, req=25264, rank=8}, -- Thunder Clap Rank 8
		},
		[74] = {
			{47439, 100000, req=469, rank=2}, -- Commanding Shout Rank 2
			{47474, 260000, req=25242, rank=7}, -- Slam Rank 7
		},
		[75] = {
			{47497, 5000, req=30022, rank=4}, -- Devastate Rank 4
			{47485, 13000, req=30330, rank=7}, -- Mortal Strike Rank 7
			{55694, 100000, }, -- Enraged Regeneration
			{47487, 260000, req=30356, rank=7}, -- Shield Slam Rank 7
		},
		[76] = {
			{47450, 260000, req=47449, rank=13}, -- Heroic Strike Rank 13
			{47465, 260000, req=46845, rank=10}, -- Rend Rank 10
		},
		[77] = {
			{47520, 260000, req=47519, rank=8}, -- Cleave Rank 8
		},
		[78] = {
			{47436, 260000, req=2048, rank=9}, -- Battle Shout Rank 9
			{47502, 260000, req=47501, rank=9}, -- Thunder Clap Rank 9
		},
		[79] = {
			{47437, 260000, req=25203, rank=8}, -- Demoralizing Shout Rank 8
			{47475, 260000, req=47474, rank=8}, -- Slam Rank 8
		},
		[80] = {
			{47498, 5000, req=47497, rank=5}, -- Devastate Rank 5
			{47486, 13000, req=47485, rank=8}, -- Mortal Strike Rank 8
			{57755, 100000, }, -- Heroic Throw
			{47440, 260000, req=47439, rank=3}, -- Commanding Shout Rank 3
			{47471, 260000, req=47470, rank=9}, -- Execute Rank 9
			{47488, 260000, req=47487, rank=8}, -- Shield Slam Rank 8
			{57823, 260000, req=30357, rank=9}, -- Revenge Rank 9
		},
	}
}