local name,ZGV = ...

-- #GLOBALS ZygorGuidesViewer

local GuideMenu = ZGV.GuideMenu

GuideMenu.Featured={}

table.insert(GuideMenu.Featured,{
title="Cataclysm", group="cata",

{"section", text=[[LEVELING]]},
{"banner", image=ZGV.IMAGESDIR.."CataLeveling",showcaseonly=true},

	{"content", text=[[Create a New Playable Race]]},
	{"text", text=[[Choose a Worgen as Alliance or Goblin as Horde to begin your adventures.]]},
	{"columns",
	{"item", text="**Worgen (1-13)**", guide="Zygor's Alliance Leveling Guides\\Eastern Kingdoms (1-60)\\Worgen (1-13)",faction="A"},
	{"item", text="**Goblin (1-12)**", guide="Zygor's Horde Leveling Guides\\Kalimdor (1-60)\\Goblin (1-12)",faction="H"},
	}, --columnsend

	{"content", text=[[Go to Cataclysm zones and Level to 85]]},
	{"text", text=[[Once you've reached level 80 you're ready to go to Cataclysm zones.]]},
	{"columns",
	{"item", text="**Mount Hyjal (80-82)**", guide="Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Mount Hyjal (80-82)",faction="A"},
	{"item", text="**Mount Hyjal (80-82)**", guide="Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Mount Hyjal (80-82)",faction="H"},
	{"item", text="**Vashj'ir (80-82)**", guide="Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Vashj'ir (80-82)",faction="A"},
	{"item", text="**Vashj'ir (80-82)**", guide="Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Vashj'ir (80-82)",faction="H"},
	{"item", text="**Deepholm (82-83)**", guide="Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Deepholm (82-83)",faction="A"},
	{"item", text="**Deepholm (82-83)**", guide="Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Deepholm (82-83)",faction="H"},
	{"item", text="**Uldum (83-84)**", guide="Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Uldum (83-84)",faction="A"},
	{"item", text="**Uldum (83-84)**", guide="Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Uldum (83-84)",faction="H"},
	{"item", text="**Twilight Highlands (84-85)**", guide="Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Twilight Highlands (84-85)",faction="A"},
	{"item", text="**Twilight Highlands (84-85)**", guide="Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Twilight Highlands (84-85)",faction="H"},
	}, --columnsend



{"section", text=[[DUNGEONS]]},
{"banner", image=ZGV.IMAGESDIR.."CataDungeons",showcaseonly=true},

	{"content", text=[[Dungeon Boss Strategy Guides]]},
	{"text", text=[[These guides will walk you through defeating the bosses in the Cataclysm dungeons.]]},
	{"columns",
	{"item", text="**Blackrock Caverns**", guide="Dungeon Guides\\Cataclysm Dungeons\\Blackrock Caverns"},
	{"item", text="**End Time**", guide="Dungeon Guides\\Cataclysm Dungeons\\End Time"},
	{"item", text="**Grim Batol**", guide="Dungeon Guides\\Cataclysm Dungeons\\Grim Batol"},
	{"item", text="**Halls of Origination**", guide="Dungeon Guides\\Cataclysm Dungeons\\Halls of Origination"},
	{"item", text="**Hour of Twilight**", guide="Dungeon Guides\\Cataclysm Dungeons\\Hour of Twilight"},
	{"item", text="**Lost City of the Tol'vir**", guide="Dungeon Guides\\Cataclysm Dungeons\\Lost City of the Tol'vir"},
	{"item", text="**The Stonecore**", guide="Dungeon Guides\\Cataclysm Dungeons\\The Stonecore"},
	{"item", text="**Throne of the Tides**", guide="Dungeon Guides\\Cataclysm Dungeons\\Throne of the Tides"},
	{"item", text="**Vortex Pinnacle**", guide="Dungeon Guides\\Cataclysm Dungeons\\Vortex Pinnacle"},
	}, --columnsend

	{"content", text=[[Raid Boss Strategy Guides]]},
	{"text", text=[[These guides will walk you through defeating the bosses in the Cataclysm raids.]]},
	{"columns",
	{"item", text="**Throne of the Four Winds**", guide="Dungeon Guides\\Cataclysm Raids\\Throne of the Four Winds"},
	{"item", text="**The Bastion of Twilight**", guide="Dungeon Guides\\Cataclysm Raids\\The Bastion of Twilight"},
	{"item", text="**Blackwing Descent**", guide="Dungeon Guides\\Cataclysm Raids\\Blackwing Descent"},
	}, --columnsend

--{"section", text=[[DAILIES]]},
--{"banner", image=ZGV.IMAGESDIR.."WOTLKDailies",showcaseonly=true},

	--{"content", text=[[Daily Quest Guides]]},

	--{"item", text="**Dalaran Fishing Dailies**", guide="Dailies Guides\\Wrath of the Lich King\\Dalaran Fishing Dailies"},
	--{"item", text="**Dalaran Cooking Dailies**", guide="Dailies Guides\\Wrath of the Lich King\\Dalaran Cooking Dailies"},
	--{"item", text="**Frenzyheart Tribe Dailies**", guide="Dailies Guides\\Wrath of the Lich King\\The Oracles/Frenzyheart Dailies\\Frenzyheart Tribe Dailies"},
	--{"item", text="**Jewelcrafting Dailies**", guide="Dailies Guides\\Wrath of the Lich King\\Jewelcrafting Dailies"},
	--{"item", text="**The Kalu'ak Dailies**", guide="Dailies Guides\\Wrath of the Lich King\\The Kalu'ak Dailies"},
	--{"item", text="**The Oracles Dailies**", guide="Dailies Guides\\Wrath of the Lich King\\The Oracles/Frenzyheart Dailies\\The Oracles Dailies"},
	--{"item", text="**The Sons of Hodir Dailies**", guide="Dailies Guides\\Wrath of the Lich King\\The Sons of Hodir\\The Sons of Hodir Dailies"},
	--{"item", text="**Wyrmrest Accord Dailies**", guide="Dailies Guides\\Wrath of the Lich King\\Wyrmrest Accord Dailies"},


{"section", text=[[PROFESSIONS]]},
{"banner", image=ZGV.IMAGESDIR.."CataProfessions",showcaseonly=true},

	{"content", text=[[Profession Leveling Guides]]},
	{"text", text=[[These guides will walk you through leveling up your professions to the new max skill level of 525.]]},
	{"columns",
	{"item", text=[[**Alchemy (1-525)**]], guide="Profession Guides\\Alchemy\\Alchemy (1-525)"},
	{"item", text=[[**Archaeology 1-525**]], guide="Profession Guides\\Archaeology\\Archaeology (1-525)"},
	{"item", text=[[**Blacksmithing (1-525)**]], guide="Profession Guides\\Blacksmithing\\Blacksmithing (1-525)"},
	{"item", text=[[**Cooking (1-525)**]], guide="Profession Guides\\Cooking\\Cooking (1-525)"},
	{"item", text=[[**Cooking + Fishing (1-525)**]], guide="Profession Guides\\Cooking\\Cooking + Fishing (1-525)"},
	{"item", text=[[**Enchanting (1-525)**]], guide="Profession Guides\\Enchanting\\Enchanting (1-525)"},
	{"item", text=[[**Engineering (1-525)**]], guide="Profession Guides\\Engineering\\Engineering (1-525)"},
	{"item", text=[[**First Aid (1-525)**]], guide="Profession Guides\\First Aid\\First Aid (1-525)"},
	{"item", text=[[**Fishing (1-525)**]], guide="Profession Guides\\Fishing\\Fishing (1-525)"},
	{"item", text=[[**Herbalism (1-525)**]], guide="Profession Guides\\Herbalism\\Herbalism (1-525)"},
	{"item", text=[[**Inscription (1-525)**]], guide="Profession Guides\\Inscription\\Inscription (1-525)"},
	{"item", text=[[**Jewelcrafting (1-525)**]], guide="Profession Guides\\Jewelcrafting\\Jewelcrafting (1-525)"},
	{"item", text=[[**Leatherworking (1-525)**]], guide="Profession Guides\\Leatherworking\\Leatherworking (1-525)"},
	{"item", text=[[**Mining (1-525)**]], guide="Profession Guides\\Mining\\Mining (1-525)"},
	{"item", text=[[**Skinning (1-525)**]], guide="Profession Guides\\Skinning\\Skinning (1-525)"},
	{"item", text=[[**Tailoring (1-525)**]], guide="Profession Guides\\Tailoring\\Tailoring (1-525)"},
	}, --columnsend

	{"content", text=[[Fishing Farming Guides]]},
	{"columns",
	{"item", text=[[**Albino Cavefish**]], guide="Profession Guides\\Fishing\\Farming Guides\\Albino Cavefish"},
	{"item", text=[[**Algaefin Rockfish**]], guide="Profession Guides\\Fishing\\Farming Guides\\Algaefin Rockfish"},
	{"item", text=[[**Striped Lurker**]], guide="Profession Guides\\Fishing\\Farming Guides\\Striped Lurker"},
	{"item", text=[[**Blackbelly Mudfish**]], guide="Profession Guides\\Fishing\\Farming Guides\\Blackbelly Mudfish"},
	{"item", text=[[**Sharptooth**]], guide="Profession Guides\\Fishing\\Farming Guides\\Sharptooth"},
	{"item", text=[[**Mountain Trout**]], guide="Profession Guides\\Fishing\\Farming Guides\\Mountain Trout"},
	{"item", text=[[**Lavascale Catfish**]], guide="Profession Guides\\Fishing\\Farming Guides\\Lavascale Catfish"},
	{"item", text=[[**Fathom Eel**]], guide="Profession Guides\\Fishing\\Farming Guides\\Fathom Eel"},
	{"item", text=[[**Deepsea Sagefish**]], guide="Profession Guides\\Fishing\\Farming Guides\\Deepsea Sagefish"},
	{"item", text=[[**Highland Guppy**]], guide="Profession Guides\\Fishing\\Farming Guides\\Highland Guppy"},
	}, --columnsend

	{"content", text=[[Herbalism Farming Guides]]},
	{"columns",
	{"item", text=[[**Azshara's Veil**]], guide="Profession Guides\\Herbalism\\Farming Guides\\Azshara's Veil"},
	{"item", text=[[**Cinderbloom**]], guide="Profession Guides\\Herbalism\\Farming Guides\\Cinderbloom"},
	{"item", text=[[**Heartblossom**]], guide="Profession Guides\\Herbalism\\Farming Guides\\Heartblossom"},
	{"item", text=[[**Stormvine**]], guide="Profession Guides\\Herbalism\\Farming Guides\\Stormvine"},
	{"item", text=[[**Twilight Jasmine**]], guide="Profession Guides\\Herbalism\\Farming Guides\\Twilight Jasmine"},
	{"item", text=[[**Whiptail**]], guide="Profession Guides\\Herbalism\\Farming Guides\\Whiptail"},
	}, --columnsend

	{"content", text=[[Mining Farming Guides]]},
	{"columns",
	{"item", text=[[**Elementium**]], guide="Profession Guides\\Mining\\Farming Guides\\Elementium"},
	{"item", text=[[**Obsidium**]], guide="Profession Guides\\Mining\\Farming Guides\\Obsidium"},
	{"item", text=[[**Pyrite**]], guide="Profession Guides\\Mining\\Farming Guides\\Pyrite"},
	}, --columnsend

	{"content", text=[[Skinning Farming Guides]]},
	{"columns",
	{"item", text=[[**Blackened Dragonscale**]], guide="Profession Guides\\Skinning\\Farming Guides\\Blackened Dragonscale"},
	{"item", text=[[**Savage Leather**]], guide="Profession Guides\\Skinning\\Farming Guides\\Savage Leather"},
	{"item", text=[[**Deepsea Scale**]], guide="Profession Guides\\Skinning\\Farming Guides\\Deepsea Scale"},
	}, --columnsend

	{"content", text=[[Cooking Farming Guides]]},
	{"columns",
	{"item", text=[[**Giant Turtle Tongue**]], guide="Profession Guides\\Cooking\\Farming Guides\\Giant Turtle Tongue"},
	{"item", text=[[**Snake Eye**]], guide="Profession Guides\\Cooking\\Farming Guides\\Snake Eye"},
	{"item", text=[[**Crocolisk Tail**]], guide="Profession Guides\\Cooking\\Farming Guides\\Crocolisk Tail"},
	{"item", text=[[**Dragon Flank**]], guide="Profession Guides\\Cooking\\Farming Guides\\Dragon Flank"},
	{"item", text=[[**Basilisk Liver**]], guide="Profession Guides\\Cooking\\Farming Guides\\Basilisk Liver"},
	}, --columnsend

	{"content", text=[[Enchanting Farming Guides]]},
	{"columns",
	{"item", text=[[**Hypnotic Dust**]], guide="Profession Guides\\Enchanting\\Farming Guides\\Hypnotic Dust"},
	{"item", text=[[**Lesser Celestial Essence**]], guide="Profession Guides\\Enchanting\\Farming Guides\\Lesser Celestial Essence"},
	{"item", text=[[**Greater Celestial Essence**]], guide="Profession Guides\\Enchanting\\Farming Guides\\Greater Celestial Essence"},
	{"item", text=[[**Maelstrom Crystal**]], guide="Profession Guides\\Enchanting\\Farming Guides\\Maelstrom Crystal"},
	{"item", text=[[**Heavenly Shard**]], guide="Profession Guides\\Enchanting\\Farming Guides\\Heavenly Shard"},
	}, --columnsend

	{"content", text=[[Elements Farming Guides]]},
	{"columns",
	{"item", text=[[**Volatile Life**]], guide="Professions\\Elements\\Farming Guides\\Volatile Life"},
	{"item", text=[[**Volatile Fire**]], guide="Professions\\Elements\\Farming Guides\\Volatile Fire"},
	{"item", text=[[**Volatile Earth**]], guide="Professions\\Elements\\Farming Guides\\Volatile Earth"},
	{"item", text=[[**Volatile Water**]], guide="Professions\\Elements\\Farming Guides\\Volatile Water"},
	{"item", text=[[**Volatile Air**]], guide="Professions\\Elements\\Farming Guides\\Volatile Air"},
	}, --columnsend

	{"content", text=[[Tailoring Farming Guides]]},
	{"columns",
	{"item", text=[[**Embersilk Cloth**]], guide="Profession Guides\\Tailoring\\Farming Guides\\Embersilk Cloth"},
	}, --columnsend

	{"content", text=[[Inscription Farming Guides]]},
	{"columns",
	{"item", text=[[**Ashen Pigment**]], guide="Profession Guides\\Inscription\\Farming Guides\\Ashen Pigment"},
	{"item", text=[[**Burning Embers**]], guide="Profession Guides\\Inscription\\Farming Guides\\Burning Embers"},
	}, --columnsend

	{"content", text=[[Jewelcrafting Farming Guides]]},
	{"columns",
	{"item", text=[[**Carnelian**]], guide="Profession Guides\\Jewelcrafting\\Farming Guides\\Carnelian"},
	{"item", text=[[**Nightstone**]], guide="Profession Guides\\Jewelcrafting\\Farming Guides\\Nightstone"},
	{"item", text=[[**Hessonite**]], guide="Profession Guides\\Jewelcrafting\\Farming Guides\\Hessonite"},
	{"item", text=[[**Zephyrite**]], guide="Profession Guides\\Jewelcrafting\\Farming Guides\\Zephyrite"},
	{"item", text=[[**Alicite**]], guide="Profession Guides\\Jewelcrafting\\Farming Guides\\Alicite"},
	{"item", text=[[**Jasper**]], guide="Profession Guides\\Jewelcrafting\\Farming Guides\\Jasper"},
	{"item", text=[[**Inferno Ruby**]], guide="Profession Guides\\Jewelcrafting\\Farming Guides\\Inferno Ruby"},
	{"item", text=[[**Dream Emerald**]], guide="Profession Guides\\Jewelcrafting\\Farming Guides\\Dream Emerald"},
	{"item", text=[[**Demonseye**]], guide="Profession Guides\\Jewelcrafting\\Farming Guides\\Demonseye"},
	{"item", text=[[**Amberjewel**]], guide="Profession Guides\\Jewelcrafting\\Farming Guides\\Amberjewel"},
	{"item", text=[[**Ocean Sapphire**]], guide="Profession Guides\\Jewelcrafting\\Farming Guides\\Ocean Sapphire"},
	{"item", text=[[**Ember Topaz**]], guide="Profession Guides\\Jewelcrafting\\Farming Guides\\Ember Topaz"},
	}, --columnsend


})

















table.insert(GuideMenu.Featured,{
	title="Wrath of the Lich King - Phase 5", group="wotlk",
{"section", text=[[DUNGEONS]]},
        {"banner", image=ZGV.IMAGESDIR.."Ruby-Sanctum",showcaseonly=true},

	{"content", text=[[Attack the Ruby Santum and challenge Halion, the Herald of Deathwing]]},
	{"columns",
	{"item", text=[[**Ruby Santum**]], guide="Dungeon Guides\\Northrend Raids\\The Ruby Sanctum"},
	}, --columnsend
}) 

table.insert(GuideMenu.Featured,{
	title="Wrath of the Lich King - Phase 4", group="patch_343",
{"section", text=[[DUNGEONS]]},
        {"banner", image=ZGV.IMAGESDIR.."LKP4Dungeons",showcaseonly=true},
	{"columns",
	{"item", text=[[**Forge of Souls**]], guide="Dungeon Guides\\Northrend Dungeons\\Forge of Souls"},
	{"item", text=[[**Forge of Souls Quests**]], guide="Dungeon Guides\\Northrend Dungeons\\Forge of Souls Quests"},
	{"item", text=[[**Pit of Saron**]], guide="Dungeon Guides\\Northrend Dungeons\\Pit of Saron"},
	{"item", text=[[**Pit of Saron Quests**]], guide="Dungeon Guides\\Northrend Dungeons\\Pit of Saron Quests"},
	{"item", text=[[**Halls of Reflection**]], guide="Dungeon Guides\\Northrend Dungeons\\Halls of Reflection"},
	{"item", text=[[**Halls of Reflection Quests**]], guide="Dungeon Guides\\Northrend Dungeons\\Halls of Reflection Quests"},
	{"item", text=[[**Icecrown Citadel (10)**]], guide="Dungeon Guides\\Northrend Raids\\Icecrown Citadel (10)"},
	{"item", text=[[**Icecrown Citadel (25)**]], guide="Dungeon Guides\\Northrend Raids\\Icecrown Citadel (25)"},
	}, --columnsend
}) 

table.insert(GuideMenu.Featured,{
title="Wrath of the Lich King", group="wotlk",

{"section", text=[[LEVELING]]},
	{"banner", image=ZGV.IMAGESDIR.."WOTLKLeveling",showcaseonly=true},

	{"content", text=[[Complete Your Starter Guide or Boosted Character Guide]]},
	{"text", text=[[If you are creating a new character in WotLK, use the appropriate starter or boosted guide for your character.]]},
	{"columns",
	{"item", text="**Death Knight Starter (55-58)**", guide="Leveling Guides\\Starter Guides (1-12) & Death Knight (55-58)\\Death Knight Starter (55-58)"},
	}, --columnsend

	{"content", text=[[Go to Northrend and Level to 80]]},
	{"text", text=[[Once you've reached level 69 you're ready to go to Northrend. We recommend going at 69 and not 68 so you won't encounter much grinding (if at all). If you choose to go earlier you can, just know you may have to grind more or run dungeons.]]},
	{"item", text="**Howling Fjord (69-71)**", guide="Leveling Guides\\Northrend (69-80)\\Howling Fjord (69-71)"},
	{"item", text="**Borean Tundera (70-71)**", guide="Leveling Guides\\Northrend (69-80)\\Borean Tundra (70-71)",faction="A"},
	{"item", text="**Borean Tundera (70-72)**", guide="Leveling Guides\\Northrend (69-80)\\Borean Tundra (70-72)",faction="H"},
	{"item", text="**Dragonblight (71-73)**", guide="Leveling Guides\\Northrend (69-80)\\Dragonblight (71-73)",faction="A"},
	{"item", text="**Dragonblight (72-74)**", guide="Leveling Guides\\Northrend (69-80)\\Dragonblight (72-74)",faction="H"},
	{"item", text="**Grizzly Hills (73-74)**", guide="Leveling Guides\\Northrend (69-80)\\Grizzly Hills (73-74)",faction="A"},
	{"item", text="**Grizzly Hills (74-75)**", guide="Leveling Guides\\Northrend (69-80)\\Grizzly Hills (74-75)",faction="H"},
	{"item", text="**Zul'Drak (74-76)**", guide="Leveling Guides\\Northrend (69-80)\\Zul'Drak (74-76)",faction="A"},
	{"item", text="**Zul'Drak (75-76)**", guide="Leveling Guides\\Northrend (69-80)\\Zul'Drak (75-76)",faction="H"},
	{"item", text="**Sholazar Basin (76-77)**", guide="Leveling Guides\\Northrend (69-80)\\Sholazar Basin (76-77)"},
	{"item", text="**The Storm Peaks (77-78)**", guide="Leveling Guides\\Northrend (69-80)\\The Storm Peaks (77-78)",faction="A"},
	{"item", text="**The Storm Peaks (77-79)**", guide="Leveling Guides\\Northrend (69-80)\\The Storm Peaks (77-79)",faction="H"},
	{"item", text="**Icecrown (78-80)**", guide="Leveling Guides\\Northrend (69-80)\\Icecrown (78-80)",faction="A"},
	{"item", text="**Icecrown (79-80)**", guide="Leveling Guides\\Northrend (69-80)\\Icecrown (79-80)",faction="H"},



	{"section", text=[[DUNGEONS]]},
	{"banner", image=ZGV.IMAGESDIR.."WOTLKDungeons",showcaseonly=true},

	{"content", text=[[Dungeon Boss Strategy Guides]]},
	{"text", text=[[These guides will walk you through defeating the bosses in the Northrend dungeons.]]},
	{"item", text="**Ahn'kahet: The Old Kingdom (73-75)**", guide="Dungeon Guides\\Wrath of the Lich King\\Ahn'kahet: The Old Kingdom (73-75)"},
	{"item", text="**Azjol-Nerub (72-74)**", guide="Dungeon Guides\\Wrath of the Lich King\\Azjol-Nerub (72-74)"},
	{"item", text="**The Culling of Stratholme (78-80)**", guide="Dungeon Guides\\Wrath of the Lich King\\The Culling of Stratholme (78-80)"},
	{"item", text="**Drak'Tharon Keep (74-76)**", guide="Dungeon Guides\\Wrath of the Lich King\\Drak'Tharon Keep (74-76)"},
	{"item", text="**Gundrak (76-78)**", guide="Dungeon Guides\\Wrath of the Lich King\\Gundrak (76-78)"},
	{"item", text="**The Nexus (69-73)**", guide="Dungeon Guides\\Wrath of the Lich King\\The Nexus (69-73)"},
	{"item", text="**The Oculus (79-80)**", guide="Dungeon Guides\\Wrath of the Lich King\\The Oculus (79-80)"},
	{"item", text="**Violet Hold (75-77)**", guide="Dungeon Guides\\Wrath of the Lich King\\Violet Hold (75-77)"},
	{"item", text="**Utgarde Keep (69-72)**", guide="Dungeon Guides\\Wrath of the Lich King\\Utgarde Keep (69-72)"},
	{"item", text="**Utgarde Pinnacle (79-80)**", guide="Dungeon Guides\\Wrath of the Lich King\\Utgarde Pinnacle (79-80)"},

	{"content", text=[[Dungeon Quest Guides (BETA)]]},
	{"text", text=[[These guides will walk you through completing the Northrend dungeon quests. Note that these guides are still works in progress.]]},
	{"item", text="**Ahn'kahet: The Old Kingdom Quests**", guide="Dungeon Guides\\Wrath of the Lich King\\Ahn'kahet: The Old Kingdom Quests"},
	{"item", text="**Azjol-Nerub Quests**", guide="Dungeon Guides\\Wrath of the Lich King\\Azjol-Nerub Quests"},
	{"item", text="**The Culling of Stratholme Quests**", guide="Dungeon Guides\\Wrath of the Lich King\\The Culling of Stratholme Quests"},
	{"item", text="**Drak'Tharon Keep Quests**", guide="Dungeon Guides\\Wrath of the Lich King\\Drak'Tharon Keep Quests"},
	{"item", text="**Gundrak Quests**", guide="Dungeon Guides\\Wrath of the Lich King\\Gundrak Quests"},
	{"item", text="**Halls of Lightning Quests**", guide="Dungeon Guides\\Wrath of the Lich King\\Halls of Lightning Quests"},
	{"item", text="**The Nexus Quests**", guide="Dungeon Guides\\Wrath of the Lich King\\The Nexus Quests"},
	{"item", text="**The Oculus Quests**", guide="Dungeon Guides\\Wrath of the Lich King\\The Oculus Quests"},
	{"item", text="**Utgarde Keep Quests**", guide="Dungeon Guides\\Wrath of the Lich King\\Utgarde Keep Quests"},
	{"item", text="**Utgarde Pinnacle Quests**", guide="Dungeon Guides\\Wrath of the Lich King\\Utgarde Pinnacle Quests"},
	{"item", text="**The Violet Hold Quests**", guide="Dungeon Guides\\Wrath of the Lich King\\The Violet Hold Quests"},

	{"section", text=[[DAILIES]]},
	{"banner", image=ZGV.IMAGESDIR.."WOTLKDailies",showcaseonly=true},

	{"content", text=[[Daily Quest Guides]]},

	{"item", text="**Dalaran Fishing Dailies**", guide="Dailies Guides\\Wrath of the Lich King\\Dalaran Fishing Dailies"},
	{"item", text="**Dalaran Cooking Dailies**", guide="Dailies Guides\\Wrath of the Lich King\\Dalaran Cooking Dailies"},
	{"item", text="**Frenzyheart Tribe Dailies**", guide="Dailies Guides\\Wrath of the Lich King\\The Oracles/Frenzyheart Dailies\\Frenzyheart Tribe Dailies"},
	{"item", text="**Jewelcrafting Dailies**", guide="Dailies Guides\\Wrath of the Lich King\\Jewelcrafting Dailies"},
	{"item", text="**The Kalu'ak Dailies**", guide="Dailies Guides\\Wrath of the Lich King\\The Kalu'ak Dailies"},
	{"item", text="**The Oracles Dailies**", guide="Dailies Guides\\Wrath of the Lich King\\The Oracles/Frenzyheart Dailies\\The Oracles Dailies"},
	{"item", text="**The Sons of Hodir Dailies**", guide="Dailies Guides\\Wrath of the Lich King\\The Sons of Hodir\\The Sons of Hodir Dailies"},
	{"item", text="**Wyrmrest Accord Dailies**", guide="Dailies Guides\\Wrath of the Lich King\\Wyrmrest Accord Dailies"},


	{"section", text=[[PROFESSIONS]]},
	{"banner", image=ZGV.IMAGESDIR.."WOTLKProfessions",showcaseonly=true},

	{"content", text=[[Profession Leveling Guides]]},
	{"text", text=[[These guides will walk you through leveling up your professions to the new max skill level of 450.]]},
	{"item", text=[[**Inscription (1-450)**]], guide="PROFESSIONS\\Inscription\\Inscription (1-450)"},
	{"item", text=[[**Alchemy (1-450)**]], guide="PROFESSIONS\\Alchemy\\Alchemy (1-450)"},
	{"item", text=[[**Blacksmithing (1-450)**]], guide="PROFESSIONS\\Blacksmithing\\Blacksmithing (1-450)"},
	{"item", text=[[**Cooking (1-450)**]], guide="PROFESSIONS\\Cooking\\Cooking (1-450)"},
	{"item", text=[[**Enchanting (1-450)**]], guide="PROFESSIONS\\Enchanting\\Enchanting (1-450)"},
	{"item", text=[[**Engineering (1-450)**]], guide="PROFESSIONS\\Engineering\\Engineering (1-450)"},
	{"item", text=[[**First Aid (1-450)**]], guide="PROFESSIONS\\First Aid\\First Aid (1-450)"},
	{"item", text=[[**Herbalism (1-450)**]], guide="PROFESSIONS\\Herbalism\\Herbalism (1-450)"},
	{"item", text=[[**Jewelcrafting (1-450)**]], guide="PROFESSIONS\\Jewelcrafting\\Jewelcrafting (1-450)"},
	{"item", text=[[**Leatherworking (1-450)**]], guide="PROFESSIONS\\Leatherworking\\Leatherworking (1-450)"},
	{"item", text=[[**Mining (1-450)**]], guide="PROFESSIONS\\Mining\\Mining (1-450)"},
	{"item", text=[[**Skinning (1-450)**]], guide="PROFESSIONS\\Skinning\\Skinning (1-450)"},
	{"item", text=[[**Tailoring (1-450)**]], guide="PROFESSIONS\\Tailoring\\Tailoring (1-450)"},

	{"content", text=[[Fishing Farming Guides]]},
	{"columns",
	{"item", text=[[**Barrelhead Goby**]], guide="PROFESSIONS\\Fishing\\Farming Guides\\Barrelhead Goby"},
	{"item", text=[[**Bonescale Snapper**]], guide="PROFESSIONS\\Fishing\\Farming Guides\\Bonescale Snapper"},
	{"item", text=[[**Borean Man O' War**]], guide="PROFESSIONS\\Fishing\\Farming Guides\\Borean Man O' War"},
	{"item", text=[[**Deep Sea Monsterbelly**]], guide="PROFESSIONS\\Fishing\\Farming Guides\\Deep Sea Monsterbelly"},
	{"item", text=[[**Dragonfin Angelfish**]], guide="PROFESSIONS\\Fishing\\Farming Guides\\Dragonfin Angelfish"},
	{"item", text=[[**Fangtooth Herring**]], guide="PROFESSIONS\\Fishing\\Farming Guides\\Fangtooth Herring"},
	{"item", text=[[**Glacial Salmon**]], guide="PROFESSIONS\\Fishing\\Farming Guides\\Glacial Salmon"},
	{"item", text=[[**Glassfin Minnow**]], guide="PROFESSIONS\\Fishing\\Farming Guides\\Glassfin Minnow"},
	{"item", text=[[**Imperial Manta Ray**]], guide="PROFESSIONS\\Fishing\\Farming Guides\\Imperial Manta Ray"},
	{"item", text=[[**Magic Eater*]], guide="PROFESSIONS\\Fishing\\Farming Guides\\Magic Eater"},
	{"item", text=[[**Moonglow Cuttlefish*]], guide="PROFESSIONS\\Fishing\\Farming Guides\\Moonglow Cuttlefish"},
	{"item", text=[[**Musselback Sculpin*]], guide="PROFESSIONS\\Fishing\\Farming Guides\\Musselback Sculpin"},
	{"item", text=[[**Nettlefish*]], guide="PROFESSIONS\\Fishing\\Farming Guides\\Nettlefish"},
	{"item", text=[[**Rockfin Grouper*]], guide="PROFESSIONS\\Fishing\\Farming Guides\\Rockfin Grouper"},
	{"item", text=[[**Sewer Carp*]], guide="PROFESSIONS\\Fishing\\Farming Guides\\Sewer Carp"},
	}, --columnsend

	{"content", text=[[Herbalism Farming Guides]]},
	{"columns",
	{"item", text=[[**Adder's Tongue*]], guide="PROFESSIONS\\Herbalism\\Farming Guides\\Adder's Tongue"},
	{"item", text=[[**Deadnettle*]], guide="PROFESSIONS\\Herbalism\\Farming Guides\\Deadnettle"},
	{"item", text=[[**Goldclover*]], guide="PROFESSIONS\\Herbalism\\Farming Guides\\Goldclover"},
	{"item", text=[[**Icethorn*]], guide="PROFESSIONS\\Herbalism\\Farming Guides\\Icethorn"},
	{"item", text=[[**Lichbloom*]], guide="PROFESSIONS\\Herbalism\\Farming Guides\\Lichbloom"},
	{"item", text=[[**Talandra's Rose*]], guide="PROFESSIONS\\Herbalism\\Farming Guides\\Talandra's Rose"},
	{"item", text=[[**Tiger Lily*]], guide="PROFESSIONS\\Herbalism\\Farming Guides\\Tiger Lily"},
	}, --columnsend

	{"content", text=[[Mining Farming Guides]]},
	{"columns",
	{"item", text=[[**Cobalt Ore*]], guide="PROFESSIONS\\Mining\\Farming Guides\\Cobalt Ore"},
	{"item", text=[[**Saronite Ore*]], guide="PROFESSIONS\\Mining\\Farming Guides\\Saronite Ore"},
	{"item", text=[[**Titanium Ore*]], guide="PROFESSIONS\\Mining\\Farming Guides\\Titanium Ore"},
	}, --columnsend

	{"content", text=[[Skinning and Tailoring Farming Guides]]},
	{"columns",
	{"item", text=[[**Borean Leather*]], guide="PROFESSIONS\\Skinning\\Farming Guides\\Borean Leather"},
	{"item", text=[[**Frostweave Cloth*]], guide="PROFESSIONS\\Tailoring\\Farming Guides\\Frostweave Cloth"},
	}, --columnsend

	{"content", text=[[Cooking Farming Guides]]},
	{"columns",
	{"item", text=[[**Chilled Meat*]], guide="PROFESSIONS\\Cooking\\Farming Guides\\Chilled Meat"},
	{"item", text=[[**Chunk o' Mammoth*]], guide="PROFESSIONS\\Cooking\\Farming Guides\\Chunk o' Mammoth"},
	{"item", text=[[**Northern Egg*]], guide="PROFESSIONS\\Cooking\\Farming Guides\\Northern Egg"},
	{"item", text=[[**Rhino Meat*]], guide="PROFESSIONS\\Cooking\\Farming Guides\\Rhino Meat"},
	{"item", text=[[**Shoveltusk Flank*]], guide="PROFESSIONS\\Cooking\\Farming Guides\\Shoveltusk Flank"},
	{"item", text=[[**Succulent Clam Meat*]], guide="PROFESSIONS\\Cooking\\Farming Guides\\Succulent Clam Meat"},
	{"item", text=[[**Worg Haunch*]], guide="PROFESSIONS\\Cooking\\Farming Guides\\Worg Haunch"},
	{"item", text=[[**Worm Meat*]], guide="PROFESSIONS\\Cooking\\Farming Guides\\Worm Meat"},
	}, --columnsend

	{"content", text=[[Elements Farming Guides]]},
	{"columns",
	{"item", text=[[**Crystallized Air*]], guide="PROFESSIONS\\Elements\\Farming Guides\\Crystallized Air"},
	{"item", text=[[**Crystallized Earth*]], guide="PROFESSIONS\\Elements\\Farming Guides\\Crystallized Earth"},
	{"item", text=[[**Crystallized Fire*]], guide="PROFESSIONS\\Elements\\Farming Guides\\Crystallized Fire"},
	{"item", text=[[**Crystallized Life*]], guide="PROFESSIONS\\Elements\\Farming Guides\\Crystallized Life"},
	{"item", text=[[**Crystallized Shadow*]], guide="PROFESSIONS\\Elements\\Farming Guides\\Crystallized Shadow"},
	{"item", text=[[**Crystallized Water*]], guide="PROFESSIONS\\Elements\\Farming Guides\\Crystallized Water"},
	}, --columnsend


})

table.insert(GuideMenu.Featured,{
	title="The Burning Crusade", group="tbc",

	{"section", text=[[LEVELING]]},
	{"banner", image=ZGV.IMAGESDIR.."TBCLeveling",showcaseonly=true},

	{"content", text=[[Complete Your Starter or Boosted Character guide]]},
	{"text", text=[[If you are creating a new character in TBC, use the appropriate starter or boosted guide for your character.]]},
	{"columns",
	{"item", text="**Human Starter (1-11)**", guide="LEVELING\\Starter Guides (1-11)\\Human Starter (1-11)",faction="A"},
	{"item", text="**Dwarf & Gnome (1-11)**", guide="LEVELING\\Starter Guides (1-11)\\Dwarf & Gnome Starter (1-11)",faction="A"},
	{"item", text="**Night Elf Starter (1-11)**", guide="LEVELING\\Starter Guides (1-11)\\Night Elf Starter (1-11)",faction="A"},
	{"item", text="**Draenei Starter (1-11)**", guide="LEVELING\\Starter Guides (1-11)\\Draenei Starter (1-11)",faction="A"},
	{"item", text="**Durotar (1-12) [Orc & Troll Starter]**", guide="LEVELING\\Starter Guides (1-12)\\Durotar (1-12) [Orc & Troll Starter]", faction="H"},
	{"item", text="**Mulgore (1-12) [Tauren Starter]**", guide="LEVELING\\Starter Guides (1-12)\\Mulgore (1-12) [Tauren Starter]", faction="H"},
	{"item", text="**Tirisfal Glades (1-12) [Undead Starter]**", guide="LEVELING\\Starter Guides (1-12)\\Tirisfal Glades (1-12) [Undead Starter]", faction="H"},
	{"item", text="**Eversong Woods (1-13) [Blood Elf Starter]**", guide="LEVELING\\Starter Guides (1-12)\\Eversong Woods (1-13) [Blood Elf Starter]", faction="H"},
	{"item", text=[[**Ghostlands**]], guide="LEVELING\\Extra Zones\\Ghostlands", faction="H"},
	}, --columnsend

	{"columns",
	{"item", text=[[**Boosted Hunter Intro**]], guide="LEVELING\\Boosted Characters\\Boosted Hunter Intro"},
	{"item", text=[[**Boosted Warrior Intro**]], guide="LEVELING\\Boosted Characters\\Boosted Warrior Intro"},
	{"item", text=[[**Boosted Paladin Intro**]], guide="LEVELING\\Boosted Characters\\Boosted Paladin Intro"},
	{"item", text=[[**Boosted Rogue Intro**]], guide="LEVELING\\Boosted Characters\\Boosted Rogue Intro"},
	{"item", text=[[**Boosted Priest Intro**]], guide="LEVELING\\Boosted Characters\\Boosted Priest Intro"},
	{"item", text=[[**Boosted Mage Intro**]], guide="LEVELING\\Boosted Characters\\Boosted Mage Intro"},
	{"item", text=[[**Boosted Warlock Intro**]], guide="LEVELING\\Boosted Characters\\Boosted Warlock Intro"},
	{"item", text=[[**Boosted Druid Intro**]], guide="LEVELING\\Boosted Characters\\Boosted Druid Intro"},
	{"item", text=[[**Boosted Shaman Intro**]], guide="LEVELING\\Boosted Characters\\Boosted Shaman Intro"},
	}, --columnsend

	{"content", text=[[OPTIONAL: Complete Your Class Quests]]},
	{"text", text=[[These are class specific quests that open up at certain levels. We suggest running this guide in a tab alongside the leveling guides.]]},
	{"columns",
	{"item", text=[[**Druid Class Quests**]], guide="LEVELING\\Class Quests\\Druid Class Quests"},
	{"item", text=[[**Priest Class Quests**]], guide="LEVELING\\Class Quests\\Priest Class Quests"},
	{"item", text=[[**Warrior Class Quests**]], guide="LEVELING\\Class Quests\\Warrior Class Quests"},
	{"item", text=[[**Hunter Class Quests**]], guide="LEVELING\\Class Quests\\Hunter Class Quests"},
	{"item", text=[[**Rogue Class Quests**]], guide="LEVELING\\Class Quests\\Rogue Class Quests"},
	{"item", text=[[**Mage Class Quests**]], guide="LEVELING\\Class Quests\\Mage Class Quests"},
	{"item", text=[[**Paladin Class Quests**]], guide="LEVELING\\Class Quests\\Paladin Class Quests"},
	{"item", text=[[**Warlock Class Quests**]], guide="LEVELING\\Class Quests\\Warlock Class Quests"},
	}, --columnsend

	{"content", text=[[Reach Level 58 or Higher]]},
	{"text", text=[[Use the main leveling guides to reach level 58 or higher in order to go to Outland.]]},
	{"guideslist", filters={guidepath="LEVELING\\Classic (12-58)"},columns=4},

	{"content", text=[[Reach Level 70]]},
	{"text", text=[[Journey to Outland using the guides below and reach the max level of 70.]]},
	{"columns",
	{"item", text=[[**Hellfire Peninsula (58-62)**]], guide="LEVELING\\The Burning Crusade (58-70)\\Hellfire Peninsula (58-62)"},
	{"item", text=[[**Zangarmarsh (62-63)**]], guide="LEVELING\\The Burning Crusade (58-70)\\Zangarmarsh (62-63)"},
	{"item", text=[[**Terokkar Forest (63-65)**]], guide="LEVELING\\The Burning Crusade (58-70)\\Terokkar Forest (63-65)"},
	{"item", text=[[**Nagrand (65-67)**]], guide="LEVELING\\The Burning Crusade (58-70)\\Nagrand (65-67)"},
	{"item", text=[[**Blade's Edge Mountains (67-68)**]], guide="LEVELING\\The Burning Crusade (58-70)\\Blade's Edge Mountains (67-68)"},
	{"item", text=[[**Netherstorm (68-70)**]], guide="LEVELING\\The Burning Crusade (58-70)\\Netherstorm (68-70)"},
	{"item", text=[[**Shadowmoon Valley (70-70)**]], guide="LEVELING\\The Burning Crusade (58-70)\\Shadowmoon Valley (70-70)"},
	}, --columnsend

	{"content", text=[[Optional: Complete TBC Group Quests]]},
	{"text", text=[[The following guides cover group quests which are generally too difficult to solo so you'll most likely need to join a group to complete them. You can do these if you need extra quests to help you level.]]},
	{"columns",

	{"item", text=[[**Hellfire Peninsula Group Quests**]], guide="LEVELING\\The Burning Crusade (58-70)\\Hellfire Peninsula Group Quests"},
	{"item", text=[[**Zangarmarsh Group Quests**]], guide="LEVELING\\The Burning Crusade (58-70)\\Zangarmarsh Group Quests"},
	{"item", text=[[**Terokkar Forest Group Quests**]], guide="LEVELING\\The Burning Crusade (58-70)\\Terokkar Forest Group Quests"},
	{"item", text=[[**Nagrand Group Quests**]], guide="LEVELING\\The Burning Crusade (58-70)\\Nagrand Group Quests"},
	{"item", text=[[**Blade's Edge Mountains Group Quests**]], guide="LEVELING\\The Burning Crusade (58-70)\\Blade's Edge Mountains Group Quests"},
	{"item", text=[[**Netherstorm Group Quests**]], guide="LEVELING\\The Burning Crusade (58-70)\\Netherstorm Group Quests"},

	}, --columnsend

	{"section", text=[[DUNGEONS]]},
	{"banner", image=ZGV.IMAGESDIR.."TBCDungeons",showcaseonly=true},

	{"content", text=[[Dungeon Boss Strategy Guides]]},
	{"text", text=[[These guides will walk you through defeating the bosses in the Outland dungeons.]]},
	{"columns",
	{"item", text=[[**Hellfire Ramparts (60-70)**]], guide="DUNGEONS\\The Burning Crusade\\Hellfire Ramparts (60-70)"},
	{"item", text=[[**The Blood Furnace (61-70)**]], guide="DUNGEONS\\The Burning Crusade\\The Blood Furnace (61-70)"},
	{"item", text=[[**The Slave Pens (62-70)**]], guide="DUNGEONS\\The Burning Crusade\\The Slave Pens (62-70)"},
	{"item", text=[[**The Underbog (63-70)**]], guide="DUNGEONS\\The Burning Crusade\\The Underbog (63-70)"},
	{"item", text=[[**Mana-Tombs (64-70)**]], guide="DUNGEONS\\The Burning Crusade\\Mana-Tombs (64-70)"},
	{"item", text=[[**Auchenai Crypts (65-70)**]], guide="DUNGEONS\\The Burning Crusade\\Auchenai Crypts (65-70)"},
	{"item", text=[[**Sethekk Halls (67-70)**]], guide="DUNGEONS\\The Burning Crusade\\Sethekk Halls (67-70)"},
	{"item", text=[[**Old Hillsbrad Foothills (66-70)**]], guide="DUNGEONS\\The Burning Crusade\\Old Hillsbrad Foothills (66-70)"},
	{"item", text=[[**The Black Morass (68-70)**]], guide="DUNGEONS\\The Burning Crusade\\The Black Morass (68-70)"},
	{"item", text=[[**The Mechanar (70)**]], guide="DUNGEONS\\The Burning Crusade\\The Mechanar (70)"},
	{"item", text=[[**The Shattered Halls (70)**]], guide="DUNGEONS\\The Burning Crusade\\The Shattered Halls (70)"},
	{"item", text=[[**The Steamvault (70)**]], guide="DUNGEONS\\The Burning Crusade\\The Steamvault (70)"},
	}, --columnsend

	{"content", text=[[Dungeon Quest Guides]]},
	{"text", text=[[These guides will walk you through completing the Outland dungeon quests. Note that these guides are still works in progress.]]},
	{"columns",
	{"item", text=[[**Hellfire Ramparts Quests**]], guide="DUNGEONS\\The Burning Crusade\\Hellfire Ramparts Quests"},
	{"item", text=[[**The Slave Pens Quests**]], guide="DUNGEONS\\The Burning Crusade\\The Slave Pens Quests"},
	{"item", text=[[**The Underbog Quests**]], guide="DUNGEONS\\The Burning Crusade\\The Underbog Quests"},
	{"item", text=[[**Mana-Tombs Quests**]], guide="DUNGEONS\\The Burning Crusade\\Mana-Tombs Quests"},
	{"item", text=[[**Auchenai Crypts Quests**]], guide="DUNGEONS\\The Burning Crusade\\Auchenai Crypts Quests"},
	{"item", text=[[**Sethekk Halls Quests**]], guide="DUNGEONS\\The Burning Crusade\\Sethekk Halls Quests"},
	{"item", text=[[**Old Hillsbrad Foothills Quests**]], guide="DUNGEONS\\The Burning Crusade\\Old Hillsbrad Foothills Quests"},
	{"item", text=[[**The Black Morass Quests**]], guide="DUNGEONS\\The Burning Crusade\\The Black Morass Quests"},
	{"item", text=[[**The Mechanar Quests**]], guide="DUNGEONS\\The Burning Crusade\\The Mechanar Quests"},
	{"item", text=[[**The Steamvault Quests**]], guide="DUNGEONS\\The Burning Crusade\\The Steamvault Quests"},
	{"item", text=[[**Shadow Labyrinth Quests**]], guide="DUNGEONS\\The Burning Crusade\\Shadow Labyrinth Quests"},
	{"item", text=[[**The Arcatraz Quests**]], guide="DUNGEONS\\The Burning Crusade\\The Arcatraz Quests"},
	{"item", text=[[**The Botanica Quests**]], guide="DUNGEONS\\The Burning Crusade\\The Botanica Quests"},
	{"item", text=[[**The Cipher of Damnation**]], guide="DUNGEONS\\The Burning Crusade\\The Cipher of Damnation"},
	}, --columnsend

	{"content", text=[[Dungeon Attunement Guides]]},
	{"text", text=[[These guides will walk you through becoming attuned with the following dungeons.]]},
	{"columns",
	{"item", text=[[**Karazhan Attunement**]], guide="DUNGEONS\\The Burning Crusade\\Karazhan Attunement"},
	{"item", text=[[**Hellfire Citadel Attunement**]], guide="DUNGEONS\\The Burning Crusade\\Hellfire Citadel Attunement"},
	{"item", text=[[**Serpentshrine Cavern Attunement**]], guide="DUNGEONS\\The Burning Crusade\\Serpentshrine Cavern Attunement"},
	{"item", text=[[**Tempest Keep Attunement**]], guide="DUNGEONS\\The Burning Crusade\\Tempest Keep Attunement"},
	}, --columnsend

	{"section", text=[[DAILIES]]},
	{"banner", image=ZGV.IMAGESDIR.."TBCDailies",showcaseonly=true},

	{"content", text=[[Daily Quest Guides]]},
	{"columns",
	{"item", text=[[**Ogri'la Daily Quests**]], guide="DAILIES\\The Burning Crusade\\Ogri'la\\Ogri'la Daily Quests"},
	{"item", text=[[**Sha'tari Skyguard Daily Quests**]], guide="DAILIES\\The Burning Crusade\\Sha'tari Skyguard\\Sha'tari Skyguard Daily Quests"},
	{"item", text=[[**Sha'tari Skyguard Terokk Farming**]], guide="DAILIES\\The Burning Crusade\\Sha'tari Skyguard\\Sha'tari Skyguard Terokk Farming"},
	}, --columnsend

	{"section", text=[[REPUTATIONS]]},
	{"banner", image=ZGV.IMAGESDIR.."TBCReputations",showcaseonly=true},

	{"content", text=[[Reputation Guides]]},
	{"text", text=[[These guides will walk you through reaching Exalted with various Outland factions.]]},
	{"columns",
	{"item", text=[[**Honor Hold**]], guide="REPUTATIONS\\The Burning Crusade\\Honor Hold",faction="A"},
	{"item", text=[[**Cenarion Expedition**]], guide="REPUTATIONS\\The Burning Crusade\\Cenarion Expedition"},
	{"item", text=[[**Lower City**]], guide="REPUTATIONS\\The Burning Crusade\\Lower City"},
	{"item", text=[[**The Scryers**]], guide="REPUTATIONS\\The Burning Crusade\\The Scryers"},
	{"item", text=[[**The Aldor**]], guide="REPUTATIONS\\The Burning Crusade\\The Aldor"},
	{"item", text=[[**Ogri'la**]], guide="REPUTATIONS\\The Burning Crusade\\Ogri'la"},
	{"item", text=[[**Sha'tari Skyguard**]], guide="REPUTATIONS\\The Burning Crusade\\Sha'tari Skyguard"},


	}, --columnsend

})


