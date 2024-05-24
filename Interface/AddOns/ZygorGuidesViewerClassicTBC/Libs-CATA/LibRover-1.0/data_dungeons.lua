local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local data=addon.LibRoverData

data.basenodes.DungeonEntrances = {

--------------------------------------
---   DUNGEON ENTRANCES & EXITS    ---
--------------------------------------
	-- {autotype:portal_dungeon} gives the nice "enter dungeon"/"exit dungeon" mechanics.

	-- RAGEFIRE CHASM
	"Orgrimmar 70.28,48.62 -x- Ragefire Chasm 62.41,7.88 {autotype:portal_dungeon}",

	-- DEADMINES
	"Westfall 38.24,77.50 -x- The Deadmines 26.48,13.39 {autotype:portal_dungeon}",

	-- SHADOWFANG KEEP
	"Silverpine Forest 44.75,67.79 -x- Shadowfang Keep 69.46,60.97 {autotype:portal_dungeon}",

	-- WAILING CAVERNS
	"The Barrens 42.08,66.63 -x- Wailing Caverns 45.80,59.68 {autotype:portal_dungeon}",

	-- BLACKFATHOM DEEPS
	"Ashenvale 16.52,11.03 -x- Blackfathom Deeps 44.29,10.66 {autotype:portal_dungeon}",

	-- THE STOCKADE
	"Stormwind City 50.42,66.31 -x- The Stockade 50.07,68.09 {autotype:portal_dungeon}",

	-- GNOMEREGAN
	"Dun Morogh 25.28,36.92 -x- Gnomeregan 64.33,28.96 {autotype:portal_dungeon}",

	-- SCARLET MONASTERY: GRAVEYARD
	"Tirisfal Glades 84.87,30.59 -x- Scarlet Monastery/0 83.85,82.91 {autotype:portal_dungeon}",

	-- SCARLET MONASTERY: LIBRARY
	"Tirisfal Glades 85.31,32.21 -x- Scarlet Monastery/1 13.85,25.15 {autotype:portal_dungeon}",

	-- SCARLET MONASTERY: ARMORY
	"Tirisfal Glades 85.64,31.68 -x- Scarlet Monastery/2 60.26,98.17 {autotype:portal_dungeon}",

	-- SCARLET MONASTERY: CATHEDRAL
	"Tirisfal Glades 85.34,30.55 -x- Scarlet Monastery/3 60.40,91.31 {autotype:portal_dungeon}",

	-- RAZORFEN KRAUL
	"Southern Barrens 40.72,94.39 -x- Razorfen Kraul 69.89,82.97 {autotype:portal_dungeon}",

	-- MARAUDON: EARTHSONG FALLS
	"Desolace 29.28,61.12 -x- Maraudon 62.16,28.18 {style:portal_dungeon}",

	-- MARAUDON: THE WICKED GROTTO
	"Desolace 30.25,54.56 -x- Maraudon 78.48,68.45 {autotype:portal_dungeon}",

	-- MARAUDON: FOULSPORE CAVERN
	"Desolace 35.95,64.31 -x- Maraudon 62.16,28.18 {autotype:portal_dungeon}",

	-- ULDAMAN
	"Badlands 34.30,10.19 -x- Uldaman 67.03,72.71 {autotype:portal_dungeon}",

	-- DIRE MAUL: WARPWOOD QUARTER
	"Feralas 65.84,30.22 -x- Dire Maul/4 6.71,38.29 {autotype:portal_dungeon}",

	-- DIRE MAUL: CAPITAL GARDENS
	"Feralas 60.31,31.30 -x- Dire Maul/1 93.42,75.90 {autotype:portal_dungeon}",

	-- DIRE MAUL: GORDOK COMMONS
	"Feralas 62.51,24.89 -x- Dire Maul 71.13,93.54 {autotype:portal_dungeon}",

	-- SCHOLOMANCE
	"Western Plaguelands 69.03,72.88 -x- Scholomance 39.08,59.47 {autotype:portal_dungeon}",

	-- STRATHOLME: MAIN GATE
	"Eastern Plaguelands 27.61,11.63 -to- Stratholme/1 68.02,88.46 <subtype:portaldungeon>",
	"Stratholme/1 68.02,88.46 -to- Eastern Plaguelands 27.61,11.63 <subtype:portaldungeon> {cost:300}",

	-- STRATHOLME: SERVICE ENTRACE
	"Eastern Plaguelands 43.82,17.42 -to- Stratholme/1 67.74,86.29 <subtype:portaldungeon>",
	"Stratholme/1 67.74,86.29 -to- Eastern Plaguelands 43.82,17.42 <subtype:portaldungeon> {cost:300}",

	-- BLACKROCK DEPTHS
	"Searing Gorge 26.99,72.56 -x- Blackrock Depths 34.70,77.80 {autotype:portal_dungeon}",

	-- LOWER BLACKROCK SPIRE
	"Burning Steppes 24.34,25.63 -x- Blackrock Spire/3 26.77,38.23 {autotype:portal_dungeon}",

	-- UPPER BLACKROCK SPIRE
	"Burning Steppes 24.34,25.63 -x- Blackrock Spire/3 26.77,38.23 {autotype:portal_dungeon}",

	-- ZUL'FARRAK
	"Tanaris 39.22,21.27 -x- Zul'Farrak 56.60,90.95 {autotype:portal_dungeon}",

	-- RAZORFEN DOWNS
	"Thousand Needles 47.65,23.65 -x- Razorfen Downs 23.79,18.80 {autotype:portal_dungeon}",

	-- BLACKROCK CAVERNS
	"Burning Steppes 27.40,27.86 -x- Blackrock Caverns 32.02,70.10 {autotype:portal_dungeon}",

	-- ZUL'FARRAK
	"Tanaris 39.21,21.27 -x- Zul'Farrak 56.60,90.95 {autotype:portal_dungeon}",

	-- HELLFIRE RAMPARTS
	"Hellfire Peninsula 47.59,53.59 -x- Hellfire Ramparts 50.06,70.37 {autotype:portal_dungeon}",

	-- THE BLOOD FURNACE
	"Hellfire Peninsula 45.95,51.87 -x- The Blood Furnace 47.75,90.56 {autotype:portal_dungeon}",

	-- THE SLAVE PENS
	"Zangarmarsh 48.95,35.70 -x- The Slave Pens 19.95,13.37 {autotype:portal_dungeon}",

	-- THE UNDERBOG
	"Zangarmarsh 54.28,34.40 -x- The Underbog 29.68,67.88 {autotype:portal_dungeon}",

	-- MANA-TOMBS
	"Terokkar Forest 39.64,57.63 -x- Mana-Tombs 33.52,17.29 {autotype:portal_dungeon}",

	-- AUCHENAI CRYPTS
	"Terokkar Forest 34.30,65.61 -x- Auchenai Crypts 44.12,75.10 {autotype:portal_dungeon}",

	-- OLD HILLSBRAD FOOTHILLS
	"Tanaris 55.37,53.37 -x- Old Hillsbrad Foothills 23.23,24.80 {autotype:portal_dungeon}",

	-- SETHEKK HALLS
	"Terokkar Forest 44.95,65.61 -x- Sethekk Halls 73.35,36.47 {autotype:portal_dungeon}",

	-- SHADOW LABYRINTH
	"Terokkar Forest 39.63,73.60 -x- Shadow Labyrinth 22.01,12.45 {autotype:portal_dungeon}",

	-- THE STEAMVAULT
	"Zangarmarsh 50.29,33.33 -x- The Steamvault 17.59,29.76 {autotype:portal_dungeon}",

	-- THE SHATTERED HALLS
	"Hellfire Peninsula 47.48,52.02 -x- The Shattered Halls 61.14,92.81 {autotype:portal_dungeon}",

	-- THE BOTANICA
	"Netherstorm 71.76,54.93 -x- The Botanica 89.59,41.09 {autotype:portal_dungeon}",

	-- THE MECHANAR
	"Netherstorm 70.62,69.78 -x- The Mechanar 49.41,83.51 {autotype:portal_dungeon}",

	-- THE BLACK MORASS
	"Tanaris 56.95,62.37 -x- The Black Morass 52.06,0.15 {autotype:portal_dungeon}",

	-- MAGISTERS' TERRACE
	"Isle of Quel'Danas 61.28,30.92 -x- Magisters' Terrace/1 42.53,90.01 {autotype:portal_dungeon}",

	-- THE ARCATRAZ
	"Netherstorm 74.49,57.68 -x- The Arcatraz 41.26,81.70 {autotype:portal_dungeon}",

	-- UTGARDE KEEP
	"Howling Fjord 57.28,46.73 -x- Utgarde Keep 69.27,73.00 {autotype:portal_dungeon}",

	-- THE NEXUS
	"Borean Tundra 27.50,25.98 -x- The Nexus 36.20,88.0 {autotype:portal_dungeon}",

	-- AZJOL NERUB
	"Dragonblight 25.96,50.90 -x- Azjol-Nerub 9.44,93.32 {autotype:portal_dungeon}",

	-- THE OLD KINGDOM
	"Dragonblight 28.47,51.72 -x- Ahn'kahet: The Old Kingdom 88.99,79.12 {autotype:portal_dungeon}",

	-- DRAK'THARON KEEP
	"Zul'Drak 28.52,86.93 -x- Drak'Tharon Keep 29.38,80.96 {autotype:portal_dungeon}",

	-- VIOLET HOLD
	"Dalaran 68.60,70.39 -x- The Violet Hold 46.15,98.03 {autotype:portal_dungeon}",

	-- GUNDRAK
	"Zul'Drak 76.12,20.95 -x- Gundrak 58.99,30.92 {autotype:portal_dungeon}",

	-- HALLS OF STONE
	"The Storm Peaks 39.50,26.92 -x- Halls of Stone 34.4,36.2 {autotype:portal_dungeon}",

	-- CULLING OF STRATHOLME
	"Tanaris 61.00,62.10 -x- The Culling of Stratholme 87.51,71.21 {autotype:portal_dungeon}",

	-- THE OCULUS
	"Borean Tundra 27.50,25.98 -x- The Oculus 61.30,47.58 {autotype:portal_dungeon}",

	-- HALLS OF LIGHTNING
	"The Storm Peaks 45.38,21.37 -x- Halls of Lightning 7.38,53.81 {autotype:portal_dungeon}",

	-- UTGARDE PINNACLE
	"Howling Fjord 57.26,46.66 -x- Utgarde Pinnacle 44.49,16.12 {autotype:portal_dungeon}",

	-- TRIAL OF THE CHAMPION
	"Icecrown 74.17,20.52 -x- Trial of the Champion 51.18,30.24 {autotype:portal_dungeon}",

	-- FORGE OF SOULS
	"Icecrown 54.92,89.76 -x- The Forge of Souls 66.05,88.89 {autotype:portal_dungeon}",

	-- PIT OF SARON
	"Icecrown 54.78,91.80 -x- Pit of Saron 40.91,80.52 {autotype:portal_dungeon}",

	-- HALLS OF REFLECTION
	"Icecrown 55.46,90.88 -x- Halls of Reflection 47.33,80.81 {autotype:portal_dungeon}",
	"Pit of Saron 32.30,6.81 -x- Halls of Reflection 47.33,80.81 {autotype:portal_dungeon}",

	-- THRONE OF THE TIDES
	"Abyssal Depths 69.49,24.99 -x- Throne of the Tides 49.85,88.23 {autotype:portal_dungeon}",

	-- BLACKROCK CAVERNS
	"Burning Steppes 27.43,27.87 -x- Blackrock Caverns 32.02,70.10 {autotype:portal_dungeon}",

	-- THE STONECORE
	"Deepholm 47.70,52.95 -x- The Stonecore 54.27,93.90 {autotype:portal_dungeon}",

	-- THE VORTEX PINNACLE
	"Uldum 76.81,84.55 -x- The Vortex Pinnacle 54.12,16.81 {autotype:portal_dungeon}",

	-- GRIM BATOL
	"Twilight Highlands 19.14,53.84 -x- Grim Batol 12.15,55.67 {autotype:portal_dungeon}",

	-- HALLS OF ORIGINATION
	"Uldum 69.09,52.97 -x- Halls of Origination 49.91,93.73 {autotype:portal_dungeon}",

	-- LOST CITY OF THE TOL'VIR
	"Uldum 60.55,64.32 -x- Lost City of the Tol'vir 31.78,16.78 {autotype:portal_dungeon}",

	-- ZUL'GURUB
	"Northern Stranglethorn 72.18,32.91 -x- Zul'Gurub 30.23,48.85 {autotype:portal_dungeon}",

	-- ZUL'AMAN
	"Ghostlands 82.28,64.3 -x- Zul'Aman 7.32,52.97 {autotype:portal_dungeon}",

	-- END TIME
	"Tanaris 60.93,52.36 -x- End Time 80.73,44.20 {autotype:portal_dungeon}",

	-- WELL OF ETERNITY
	"Tanaris 54.56,58.74 -x- Well of Eternity 27.82,63.37 {autotype:portal_dungeon}",

	-- HOUR OF TWILIGHT
	"Tanaris 62.77,52.42 -x- Hour of Twilight 48.51,19.72 {autotype:portal_dungeon}",


	--------------------
	---   KALIMDOR   ---
	--------------------

	----------------------------
	---   EASTERN KINGDOMS   ---
	----------------------------

	-------------------
	---   OUTLAND   ---
	-------------------

	---------------------
	---   NORTHREND   ---
	---------------------


-----------------------------------
---   RAID ENTRANCES & EXITS    ---
-----------------------------------

	--------------------
	---   KALIMDOR   ---
	--------------------			
	
	----------------------------
	---   EASTERN KINGDOMS   ---
	----------------------------

	---------------------
	---   NORTHREND   ---
	---------------------

}








data.basenodes.DungeonFloors = {
	-- Dungeons

		--Kalimdor
			--["Maraudon"] = { --
				--"Maraudon/1 15.53,56.75 -x- Maraudon/2 28.99,4.84",
			--},
			--["Blackfathom Deeps"] = {
				--"Blackfathom Deeps/1 61.51,71.88 -x- Blackfathom Deeps/2 39.21,31.65",
				--"Blackfathom Deeps/2 47.24,79.12 -x- Blackfathom Deeps/3 43.60,61.06",
			--},
			--["Dire Maul"] = { -- Can't move between wings so limits the borders.
				--"Dire Maul/2 39.22,34.98 -x- Dire Maul/3 56.27,24.42",
				--"Dire Maul/2 31.69,72.04 -x- Dire Maul/3 48.30,74.24",
				--"Dire Maul/2 20.79,19.09 -x- Dire Maul/3 44.12,13.38",
				--"Dire Maul/2 29.47,42.67 -x- Dire Maul/4 75.94,39.95",
				--"Dire Maul/5 46.43,63.58 -x- Dire Maul/6 61.27,82.67",
			--},
			--["Ahn'Qiraj"] = {
				--"Ahn'Qiraj/1 34.6,45.0 -x- Ahn'Qiraj/3 66.4,46.3",
				--"Ahn'Qiraj/1 33.0,52.4 -x- Ahn'Qiraj/3 50.5,73.0",
				--"Ahn'Qiraj/2 49.2,63.3 -x- Ahn'Qiraj/3 47.5,29.3",
			--},

		--Eastern Kingdom
			--["The Deadmines"] = {
				-- TODO there are teleporters in DM that could/should be added. Only useful if you die and need to get back to where you were.
				--"The Deadmines/1 65.48,60.02 -x- The Deadmines/2 16.97,88.45",
			--},
			--["Uldaman"] = {
				--"Uldaman/1 46.08,9.57 -x- Uldaman/2 64.77,43.35",
			--},
			--["Shadowfang Keep"] = {
				--"Shadowfang Keep/1 38.18,39.14 -x- Shadowfang Keep/2 60.03,13.01",
				--"Shadowfang Keep/1 14.78,88.35 -x- Shadowfang Keep/2 27.49,87.84",
				--"Shadowfang Keep/1 34.01,70.58 -x- Shadowfang Keep/7 23.69,75.12",
				--"Shadowfang Keep/7 45.49,25.23 -to- Shadowfang Keep/3 44.44,61.70",
				--"Shadowfang Keep/3 60.72,31.88 -to- Shadowfang Keep/7 47.37,19.47",
				--"Shadowfang Keep/3 45.86,92.67 -x- Shadowfang Keep/4 48.93,77.89",
				--"Shadowfang Keep/4 34.60,55.37 -x- Shadowfang Keep/5 48.94,77.32",
				--"Shadowfang Keep/5 56.86,44.93 -to- Shadowfang Keep/4 54.68,54.74",
				--"Shadowfang Keep/5 34.62,57.88 -x- Shadowfang Keep/6 48.75,90.71",
			--},
			--["Stratholme"] = {
			--},
			--["Scholomance"] = {
				--"Scholomance/1 81.8,23.9 -x- Scholomance/2 76.0,26.5",
				--"Scholomance/2 57.5,92.2 -x- Scholomance/3 49.7,19.2",
				--"Scholomance/3 49.8,24.0 -x- Scholomance/4 49.6,28.2",
			--},
			--["Scarlet Monastery"] = {
				--"Scarlet Monastery/1 48.4,88.5 -x- Scarlet Monastery/2 49.1,11.2",
			--},
			--["Scarlet Halls"] = {
				--"Scarlet Halls/1 55.5,13.8 -x- Scarlet Halls/2 47.8,91.1",
			--},
			--["Gnomeregan"] = {
				--"Gnomeregan/1 57.67,50.98 -to- Gnomeregan/2 81.36,46.02",
				--"Gnomeregan/1 47.05,86.94 -x- Gnomeregan/2 75.38,74.06",
				--"Gnomeregan/1 34.33,61.78 -x- Gnomeregan/2 61.73,61.55",
				--"Gnomeregan/2 35.21,88.08 -x- Gnomeregan/3 38.60,50.33",
				--"Gnomeregan/3 48.26,71.95 -x- Gnomeregan/4 71.25,77.54",
			--},
			--["Blackrock Spire"]= {
				--"Blackrock Spire/1 66.1,51.1 -x- Blackrock Spire/3 66.0,49.2",
				--"Blackrock Spire/3 58.4,47.7 -x- Blackrock Spire/1 56.7,48.3",
				--"Blackrock Spire/2 64.8,70.9 -x- Blackrock Spire/1 59.8,70.2",
				--"Blackrock Spire/2 59.5,59.3 -x- Blackrock Spire/1 59.4,63.9",
				--"Blackrock Spire/2 53.2,52.8 -x- Blackrock Spire/3 57.0,51.2",
				--"Blackrock Spire/3 49.9,74.1 -x- Blackrock Spire/2 51.1,74.2",
				--"Blackrock Spire/3 46.5,65.8 -x- Blackrock Spire/4 45.1,59.5",
				--"Blackrock Spire/4 47.2,42.7 -x- Blackrock Spire/3 55.1,37.6",
				--"Blackrock Spire/4 37.2,34.2 -x- Blackrock Spire/5 37.1,32.1",
				--"Blackrock Spire/5 33.3,13.3 -x- Blackrock Spire/6 30.4,18.7",
				--"Blackrock Spire/6 29.0,41.4 -x- Blackrock Spire/7 28.4,36.1", -- bfa alpha, cannot find map for floor 7, on live it is... somewhere, but not within BRS
				--"Blackrock Spire/7 30.7,42.7 -to- Blackrock Spire/6 30.6,41.6", --cliff
				--"Blackrock Spire/7 36.4,43.3 -to- Blackrock Spire/6 36.1,41.3",
			--},
			--["Blackrock Caverns"] = {
				--"Blackrock Caverns/1 52.05,20.12 -to- Blackrock Caverns/2 29.97,17.32",
				--"Blackrock Caverns/1 49.93,12.98 -x- Blackrock Caverns/2 29.37,13.13",
			--},

		--Northrend
			["The Oculus"] = {
				"The Oculus/0 38.30,50.22 -x- The Oculus/0 47.70,68.62 <subtype:portalclick> {mode:PORTAL}",
				---142 Flying
				--144 Lower Platforms
				--145 Upper Platforms
				--146 Top Platform
			},

			["Utgarde Keep"] = {
				"Utgarde Keep/0 49.30,84.03 -x- Utgarde Keep/1 34.10,64.50",
				"Utgarde Keep/1 52.88,23.80 -x- Utgarde Keep/2 33.07,40.67",
			},

			["Utgarde Pinnacle"] = {
				"Utgarde Pinnacle/1 39.96,77.32 -x- Utgarde Pinnacle/0 30.98,74.99",
				"Utgarde Pinnacle/0 45.74,83.44 -x- Utgarde Pinnacle/1 53.95,78.83",
				"Utgarde Pinnacle/1 57.67,34.37 -x- Utgarde Pinnacle/0 54.35,18.00",
				"Utgarde Pinnacle/0 50.12,44.22 -x- Utgarde Pinnacle/1 53.80,53.65",
			},

			["Halls of Lightning"] = {
				"Halls of Lightning/0 89.12,53.65 -x- Halls of Lightning/1 57.78,20.93",
			},

			["Azjol-Nerub"] = {
				"Azjol-Nerub/2 41.19,39.55 -x- Azjol-Nerub/1 40.05,30.12",
				"Azjol-Nerub/1 49.49,59.20 -to- Azjol-Nerub/0 22.55,52.67",--Jump down the hole
				--Exit Azjol-Nerub/0 88.52,76.04 -to- Dragonblight/0 28.43,47.00
			},

			["Drak'Tharon Keep"] = {
				"Drak'Tharon Keep/0 64.93,71.71 -x- Drak'Tharon Keep/1 50.30,71.71",
			},

			["The Culling of Stratholme"] = {
				"The Culling of Stratholme/0 47.39,32.38 -x- The Culling of Stratholme/1 50.53,96.01",
			},

			["Ulduar"] = {
				"Ulduar/4 48.47,10.56 -x- Ulduar/5 36.96,77.32",
				"Ulduar/5 37.34,9.69 -x- Ulduar/3 51.21,84.03",
				"Ulduar/3 27.07,34.61 -x- Ulduar/2 43.45,78.08",
				"Ulduar/3 31.13,74.96 -x- Ulduar/1 32.69,51.54",

				-- Ulduar teleporters
					--"Ulduar/4 50.98,85.54 <name:Expedition Base Camp>	<subtype:teleportnamed>	@uld10",
					--"Ulduar/4 49.24,47.34 <name:Formation Grounds>		<subtype:teleportnamed>	@uld11",
					--"Ulduar/4 48.54,28.08 <name:Colossal Forge>		<subtype:teleportnamed>	@uld12",
					--"Ulduar/4 48.51,11.06 <name:Scrapyard>			<subtype:teleportnamed>	@uld13",
					--"Ulduar/5 37.32,00.52 <name:Antechamber of Ulduar>	<subtype:teleportnamed>	@uld20",
					--"Ulduar/5 37.10,76.41 <name:Shattered Walkway>		<subtype:teleportnamed>	@uld21",
					--"Ulduar/3 51.02,54.02 <name:Conservatory of Life>	<subtype:teleportnamed>	@uld30",
					--"Ulduar/1 66.60,59.98 <name:Prison of Yogg-Saron>	<subtype:teleportnamed>	@uld40",
					--"Ulduar/2 43.65,62.19 <name:Spark of Imagination>	<subtype:teleportnamed>	@uld50",

				--"@uld10 -x- @uld11 {mode:PORTAL}",
				--"@uld10 -x- @uld12 {mode:PORTAL}", "@uld11 -x- @uld12 {mode:PORTAL}",
				--"@uld10 -x- @uld13 {mode:PORTAL}", "@uld11 -x- @uld13 {mode:PORTAL}", "@uld12 -x- @uld13 {mode:PORTAL}",
				--"@uld10 -x- @uld20 {mode:PORTAL}", "@uld11 -x- @uld20 {mode:PORTAL}", "@uld12 -x- @uld20 {mode:PORTAL}", "@uld13 -x- @uld20 {mode:PORTAL}",
				--"@uld10 -x- @uld21 {mode:PORTAL}", "@uld11 -x- @uld21 {mode:PORTAL}", "@uld12 -x- @uld21 {mode:PORTAL}", "@uld13 -x- @uld21 {mode:PORTAL}", "@uld20 -x- @uld21 {mode:PORTAL}",
				--"@uld10 -x- @uld30 {mode:PORTAL}", "@uld11 -x- @uld30 {mode:PORTAL}", "@uld12 -x- @uld30 {mode:PORTAL}", "@uld13 -x- @uld30 {mode:PORTAL}", "@uld20 -x- @uld30 {mode:PORTAL}", "@uld21 -x- @uld30 {mode:PORTAL}",
				--"@uld10 -x- @uld40 {mode:PORTAL}", "@uld11 -x- @uld40 {mode:PORTAL}", "@uld12 -x- @uld40 {mode:PORTAL}", "@uld13 -x- @uld40 {mode:PORTAL}", "@uld20 -x- @uld40 {mode:PORTAL}", "@uld21 -x- @uld40 {mode:PORTAL}", "@uld30 -x- @uld40 {mode:PORTAL}",
				--"@uld10 -x- @uld50 {mode:PORTAL}", "@uld11 -x- @uld50 {mode:PORTAL}", "@uld12 -x- @uld50 {mode:PORTAL}", "@uld13 -x- @uld50 {mode:PORTAL}", "@uld20 -x- @uld50 {mode:PORTAL}", "@uld21 -x- @uld50 {mode:PORTAL}", "@uld30 -x- @uld50 {mode:PORTAL}", "@uld40 -x- @uld50 {mode:PORTAL}",
			},

			--["Trial of the Crusader"] = {
				--"Trial of the Crusader/1 51.4,52.4 -to- Trial of the Crusader/2 52.5,73.5",
			--},

			["Icecrown Citadel"] = {
				"Icecrown Citadel/1 39.07,85.75 -x- Icecrown Citadel/2 45.60,84.81",
				"Icecrown Citadel/2 45.62,73.77 -x- Icecrown Citadel/3 51.33,83.92",
				"Icecrown Citadel/3 51.85,19.20 -x- Icecrown Citadel/5 51.85,83.82",
				"Icecrown Citadel/4 36.48,89.98 -x- Icecrown Citadel/5 76.71,91.90",
				"Icecrown Citadel/4 50.50,33.31 -x- Icecrown Citadel/5 85.91,53.55",
				"Icecrown Citadel/5 60.68,17.31 -x- Icecrown Citadel/6 78.82,31.45",
				"Icecrown Citadel/5 43.44,16.66 -x- Icecrown Citadel/6 23.19,30.52",
				"Icecrown Citadel/5 52.35,53.69 -x- Icecrown Citadel/7 49.85,39.13",
				"Icecrown Citadel/6 50.65,69.26 -to- Icecrown Citadel/5 51.82,32.29",

				-- ICC teleporters
					"Icecrown Citadel/1 38.98,17.17   <name:Light's Hammer>		<subtype:teleportnamed>	@icc10",
					"Icecrown Citadel/1 38.98,71.11   <name:Oratory of the Damned>	<subtype:teleportnamed>	@icc11",
					"Icecrown Citadel/2 45.60,80.43   <name:Rampart of Skulls>	<subtype:teleportnamed>	@icc20",
					"Icecrown Citadel/3 51.50,76.26   <name:Deathbringer's Rise>	<subtype:teleportnamed>	@icc30",
					"Icecrown Citadel/4 26.11,33.30   <name:Sindragosa's Lair>	<subtype:teleportnamed>	@icc40",
					"Icecrown Citadel/5 51.87,74.32   <name:Upper Spire>		<subtype:teleportnamed>	@icc50",

				"@icc10 -x- @icc11 {mode:PORTAL}",
				"@icc10 -x- @icc20 {mode:PORTAL}", "@icc11 -x- @icc20 {mode:PORTAL}",
				"@icc10 -x- @icc30 {mode:PORTAL}", "@icc11 -x- @icc30 {mode:PORTAL}", "@icc20 -x- @icc30 {mode:PORTAL}",
				"@icc10 -x- @icc40 {mode:PORTAL}", "@icc11 -x- @icc40 {mode:PORTAL}", "@icc20 -x- @icc40 {mode:PORTAL}", "@icc30 -x- @icc40 {mode:PORTAL}",
				"@icc10 -x- @icc50 {mode:PORTAL}", "@icc11 -x- @icc50 {mode:PORTAL}", "@icc20 -x- @icc50 {mode:PORTAL}", "@icc30 -x- @icc50 {mode:PORTAL}", "@icc40 -x- @icc50 {mode:PORTAL}",
			},

	--Raids

		-- Old world
			["Karazhan"] = {
				"Karazhan/0 38.3,78.6 -x- Karazhan/1 29.1,80.8",
				"Karazhan/1 38.6,14.1 -x- Karazhan/2 39.8,81.7",
				"Karazhan/0 53.1,64.1 -x- Karazhan/2 52.5,91.3",
				"Karazhan/2 67.0,42.4 -x- Karazhan/3 67.9,42.9",
				"Karazhan/0 37.6,12.8 -x- Karazhan/3 47.2,29.1",
				"Karazhan/3 23.5,49.2 -x- Karazhan/4 45.4,83.7",
				"Karazhan/4 67.9,26.5 -x- Karazhan/5 41.4,13.3",
				"Karazhan/5 64.9,69.2 -x- Karazhan/6 73.2,65.3",
				"Karazhan/7 51.8,58.3 -x- Karazhan/8 61.5,19.2",
				"Karazhan/8 31.0,66.3 -x- Karazhan/9 30.9,59.9",
				"Karazhan/9 37.1,23.1 -x- Karazhan/10 64.0,26.8",
				"Karazhan/9 58.8,56.0 -x- Karazhan/11 47.0,56.0",
				"Karazhan/11 25.9,61.3 -x- Karazhan/12 53.8,78.5",
				"Karazhan/11 39.6,18.8 -x- Karazhan/13 20.6,81.3",
				"Karazhan/13 83.2,57.1 -x- Karazhan/14 82.3,69.8",
				"Karazhan/14 83.2,75.5 -x- Karazhan/15 71.9,70.5",
				"Karazhan/15 66.2,79.3 -x- Karazhan/16 50.9,91.1",
			},
			--["Blackwing Lair"] = {
				--"Blackwing Lair/1 45.4,27.7 -x- Blackwing Lair/2 49.7,36.0",
				--"Blackwing Lair/1 37.6,11.2 -x- Blackwing Lair/2 44.0,22.9",
				--"Blackwing Lair/2 49.4,80.3 -x- Blackwing Lair/3 57.0,87.2",
				--"Blackwing Lair/3 31.0,37.5 -x- Blackwing Lair/4 22.0,60.9",
			--},
			--["Blackrock Depths"] = {
				--"Blackrock Depths/1 40.7,67.1 -x- Blackrock Depths/2 41.8,92.4",
				--"Blackrock Depths/1 67.0,26.3 -x- Blackrock Depths/2 64.9,57.1",
				--"Blackrock Depths/1 59.8,30.9 -x- Blackrock Depths/2 59.9,60.1",
				--"Blackrock Depths/1 58.7,34.4 -x- Blackrock Depths/2 58.9,64.7",
				--"Blackrock Depths/1 55.0,35.6 -x- Blackrock Depths/2 54.2,65.6",
				--"Blackrock Depths/1 56.9,51.3 -x- Blackrock Depths/2 56.4,77.5",
				--"Blackrock Depths/1 57.3,57.1 -x- Blackrock Depths/2 56.9,85.7",
				--"Blackrock Depths/1 54.8,62.9 -x- Blackrock Depths/2 55.2,89.9",
				--"Blackrock Depths/1 45.4,63.1 -x- Blackrock Depths/2 44.6,90.0",
				--"Blackrock Depths/1 45.0,64.3 -x- Blackrock Depths/2 44.5,91.1",
				--"Blackrock Depths/1 46.6,52.5 -x- Blackrock Depths/2 47.5,81.1",
				--"Blackrock Depths/1 42.5,46.3 -x- Blackrock Depths/2 42.3,73.6",
				--"Blackrock Depths/1 41.6,39.1 -x- Blackrock Depths/2 41.4,68.1",
				--"Blackrock Depths/1 53.0,31.8 -x- Blackrock Depths/2 53.0,61.5",
				--"Blackrock Depths/1 54.0,27.0 -x- Blackrock Depths/2 53.2,55.6",
			--},

		--Outlands
			--["The Steamvault"]={
				--"The Steamvault/1 49.85,29.26 -x- The Steamvault/2 51.23,28.93",
				--"The Steamvault/1 51.38,27.47 -to- The Steamvault/2 51.48,29.20",
				--"The Steamvault/1 48.01,77.81 -x- The Steamvault/2 46.24,79.55",
				--"The Steamvault/1 36.64,73.70 -to- The Steamvault/2 35.59,72.57",
			--},
			--["The Mechanar"]={
				--"The Mechanar/1 41.73,22.82 -x- The Mechanar/2 41.77,31.54",
			--},
			--["The Arcatraz"]={
				--"The Arcatraz/1 65.11,35.34 -x- The Arcatraz/2 89.26,43.76",
				--"The Arcatraz/2 36.51,57.12 -x- The Arcatraz/3 26.97,88.52",
			--},
			--["Sethekk Halls"]={
				--"Sethekk Halls/1 48.71,95.13 -x- Sethekk Halls/2 53.33,94.35",
				--"Sethekk Halls/2 44.61,27.42 -to- Sethekk Halls/1 51.57,27.55",
			--},
			--["Auchenai Crypts"]={
				--"Auchenai Crypts/1 44.67,17.68 -x- Auchenai Crypts/2 22.77,12.22",
			--},
			--["Black Temple"]={
				--"Black Temple/2 29.58,19.61 -x- Black Temple/1 28.02,74.29",
				--"Black Temple/1 63.09,45.70 -x- Black Temple/3 24.31,50.07",
				--"Black Temple/3 58.48,91.11 -x- Black Temple/5 66.89,68.26",
				--"Black Temple/3 26.28,21.71 -x- Black Temple/6 8.40,59.62",
				--"Black Temple/6 67.17,51.10 -x- Black Temple/7 69.01,16.15",
				--"Black Temple/7 46.72,35.00 -x- Black Temple/8 52.69,20.84",
				--"Black Temple/3 61.32,34.65 -x- Black Temple/4 64.35,39.46",
			--},
			--["Magisters' Terrace"]={
				--"Magisters' Terrace/2 82.88,44.83 -x- Magisters' Terrace/1 83.15,55.44",
			--},
}

--[[
-- translate the flooring zone-folders from names to numbers
	local TEMP={}
	for zone,zonedata in pairs(data.basenodes.DungeonFloors) do
		if type(zone)~="number" then
			local id=data.MapIDsByName[zone]
			if type(id)=="table" then id=id[1] end
			if not id then error("Map "..zone.." has no ID!") end
			zone=id
		end
		TEMP[zone]=zonedata
	end
	data.basenodes.DungeonFloors=TEMP
--]]