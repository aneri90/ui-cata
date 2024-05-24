local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local data=addon.LibRoverData

data.basenodes.inns = {




	-----------------------------
	-----     CATACLYSM     -----
	-----------------------------
	
	["Abyssal Depths"]={
		{name="Darkbreak Cove",faction="A",npc="Barracks Officer Milson",npcid=42963,x=54.75,y=72.14},								-- VERIFY
		{name="Tenebrous Cavern",faction="H",npc="Innkeeper Nerius",npcid=43141,x=51.24,y=60.53},								-- VERIFY
	},
	["Deepholm"]={
		{name="Temple of Earth",faction="B",npc="Caretaker Nuunwa",npcid=45300,x=49.59,y=52.82},								-- VERIFY
	},
	["Gilneas"]={
		{name="Duskhaven",faction="A",npc="Willa Arnes",npcid=38791,x=36.80,y=65.72},
		{name="Stormglen Village",faction="A",npc="Willa Arnes",npcid=38792,x=60.12,y=91.64},
	},
	["Kelp'thar Forest"]={
				{name="The Briny Cutter",faction="A",npc="Erunak Stonespeaker",npcid=40697,x=45.2,y=23.4},						-- VERIFY
				{name="Legion's Fate",faction="H",npc="Erunak Stonespeaker",npcid=41794,x=39.6,y=30.8},							-- VERIFY
				{name="Deepmist Grotto",faction="B",npc="Erunak Stonespeaker",npcid=41341,x=63.8,y=59.8},						-- VERIFY
	},
	["Kezan"]={
		{name="KTC Headquarters",x=56.79,y=76.95},													-- Goblin new character default hearthstone location
	},
	["Mount Hyjal"]={
		{name="Nordrassil Inn",faction="B",npc="Sebelia",npcid=40843,x=63.09,y=24.10},
		{name="Shrine of Aviana",faction="B",npc="Isara Riverstride",npcid=50068,x=42.63,y=45.74},
		{name="Grove of Aessina",faction="B",npc="Salirn Moonbear",npcid=53779,x=18.67,y=37.27},
	},
	["Shimmering Expanse"]={
				{name="Silver Tide Hollow",faction="A",npc="Caretaker Movra",npcid=39878,x=49.05,y=41.95},						-- VERIFY								
				{name="Tranquil Wash",faction="A",npc="Anissa Matherly",npcid=42873,x=49.7,y=57.4},							-- VERIFY
				{name="Legion's Rest",faction="H",npc="Zun'ja",npcid=42908,x=51.67,y=62.58},								-- VERIFY
	},
	["The Lost Isles"]={
				{name="Shipwreck Shore",faction="H",npc="Grimy Greasefingers",npcid=36496,x=28.0,y=75.8},
				{name="Town-In-A-Box",faction="H",npc="Grimy Greasefingers",npcid=42473,x=45.0,y=65.4},
				{name="Warchief's Lookout",faction="H",npc="Grimy Greasefingers",npcid=42473,x=36.8,y=43.2},
	},
	["Twilight Highlands"]={
		{name="Thundermar",faction="A",npc="Naveen Tendernose",npcid=49591,x=48.48,y=29.06},
				{name="Highbank",faction="A",npc="Innkeeper Francis",npcid=49688,x=79.4,y=78.5},							-- VERIFY
				{name="Highbank",faction="A",npc="Innkeeper Teresa",npcid=49686,x=79.89,y=77.27},							-- VERIFY
				{name="Firebeard's Patrol",faction="A",npc="Innkeeper Corlin",npcid=49795,x=60.4,y=58.0},						-- VERIFY
				{name="Kirthaven",faction="A",npc="Vaughn Blusterbeard",npcid=49574,x=54.6,y=18.0},							-- VERIFY
				{name="Victor's Point",faction="A",npc="Ben Mora",npcid=49599,x=43.6,y=57.3},								-- VERIFY
				{name="Dragonmaw Port",faction="H",npc="Innkeeper Lutz",npcid=49498,x=75.8,y=52.6},							-- VERIFY
				{name="The Krazzworks",faction="H",npc="Innkeeper Geno",npcid=49783,x=75.4,y=16.6},							-- VERIFY
				{name="Bloodgulch",faction="H",npc="Innkeeper Turk",npcid=49762,x=53.2,y=42.8},								-- VERIFY
				{name="Crushblow",faction="H",npc="Innkeeper Krum",npcid=49747,x=45.2,y=76.4},								-- VERIFY
	},	
	["Uldum"]={
				{name="Ramkahen",faction="B",npc="Kazemde",npcid=48886,x=54.7,y=32.9},									-- VERIFY
				{name="Oasis of Vir'sar",faction="B",npc="Yasmin",npcid=49406,x=26.6,y=7.3},								-- VERIFY
				{name="Schnottz's Hostel",faction="B",npc="Arcane Guest Registry",npcid=49528,x=22.0,y=64.4},						-- VERIFY
	},	




	----------------------------
	-----     NORTHREND     ----
	----------------------------

	["Borean Tundra"]={
		{name="Valiance Keep",faction="A",npc="James Deacon",npcid=25245,x=58.29,y=68.05},
		{name="Fizzcrank Airstrip",faction="A",npc="\"Charlie\" Northtop",npcid=26596,x=57.12,y=18.72},
		{name="Warsong Hold",faction="H",npc="Williamson",npcid=25278,x=41.92,y=54.48},
		{name="Taunka'le Village",faction="H",npc="Pahu Frosthoof",npcid=26709,x=76.26,y=37.18},
		{name="Unu'pe",faction="B",npc="Caregiver Poallu",npcid=27187,x=78.39,y=49.28},
	},
	["Dalaran"]={
		{name="Dalaran",faction="B",npc="Amisi Azuregaze",npcid=28687,x=50.25,y=39.52,legion=false},					-- This is the universal innkeeper in Dalaran for our purpose
--		{name="Dalaran",faction="A",npc="Isirami Fairwind",npcid=32413,x=44.66,y=63.34},						-- Commented out, due to having the same "Dalaran" inn name
--		{name="Dalaran",faction="H",npc="Uda the Beast",npcid=31557,x=65.61,y=32.16},							-- Commented out, due to having the same "Dalaran" inn name
--		{name="Dalaran",faction="H",npc="Abohba",npcid=32418,x=67.38,y=35.35},
	},
	["Dragonblight"]={
		{name="Wintergarde Keep",faction="A",npc="Illusia Lune",npcid=27042,x=77.41,y=51.77},
		{name="Stars' Rest",faction="A",npc="Naohain",npcid=27052,x=28.89,y=56.09},
		{name="Venomspite",faction="H",npc="Mrs. Winterby",npcid=27027,x=76.87,y=63.13},
		{name="Agmar's Hammer",faction="H",npc="Barracks Master Harga",npcid=26985,x=38.19,y=46.65},
		{name="Moa'ki Harbor",faction="B",npc="Caregiver Mumik",npcid=27174,x=48.14,y=74.76},
		{name="Wyrmrest Temple",faction="B",npc="Demestrasz",npcid=27950,x=59.80,y=54.24},
	},
	["Grizzly Hills"]={
		{name="Amberpine Lodge",faction="A",npc="Jennifer Bell",npcid=27066,x=31.97,y=60.28},
		{name="Westfall Brigade Encampment",faction="A",npc="Quartermaster McCarty",npcid=26375,x=59.56,y=26.30},
		{name="Conquest Hold",faction="H",npc="Barracks Master Rhekku",npcid=27125,x=20.79,y=64.57},
		{name="Camp Oneqwah",faction="H",npc="Aiyan Coldwind",npcid=26680,x=65.42,y=46.89},
	},
	["Howling Fjord"]={
		{name="Valgarde",faction="A",npc="Innkeeper Hazel Lagras",npcid=23731,x=58.39,y=62.45},
		{name="Westguard Inn",faction="A",npc="Innkeeper Celeste Goodhutch",npcid=23937,x=30.86,y=41.45},
		{name="Fort Wildervar",faction="A",npc="Christina Daniels",npcid=24057,x=60.48,y=15.86},
		{name="Vengeance Landing Inn",faction="H",npc="Timothy Holland",npcid=24342,x=79.73,y=30.84},
		{name="New Agamand",faction="H",npc="Basil Osgood",npcid=24149,x=52.15,y=66.41},
		{name="Camp Winterhoof",faction="H",npc="Bori Wintertotem",npcid=24033,x=49.51,y=10.78},
		{name="Kamagua",faction="B",npc="Caregiver Iqniq",npcid=27148,x=25.39,y=59.85},
	},
	["Icecrown"]={
		{name="Silver Covenant Pavilion",faction="A",npc="Caris Sunlance",npcid=33970,x=76.19,y=19.66},
		{name="Sunreaver Pavilion",faction="H",npc="Jarin Dawnglow",npcid=33971,x=76.10,y=23.96},
		{name="The Shadow Vault",faction="B",npc="Initiate Brenners",npcid=30308,x=43.99,y=22.18},
	},
	["Sholazar Basin"]={
		{name="Nesingwary Base Camp",faction="B",npc="Purser Boulian",npcid=28038,x=26.75,y=59.27},
	},	
	["The Storm Peaks"]={
		{name="Frosthold",faction="A",npc="Gunda Boldhammer",npcid=29926,x=28.71,y=74.38},
		{name="Camp Tunka'lo",faction="H",npc="Wabada Whiteflower",npcid=29971,x=67.61,y=50.61},
		{name="Grom'arsh Crash-Site",faction="H",npc="Peon Gakra",npcid=29944,x=37.13,y=49.52},						-- VERIFY, NEED REPUTATION
		{name="K3",faction="B",npc="Smilin' Slirk Brassknob",npcid=29904,x=41.09,y=85.91},
		{name="Brunnhildar Village",faction="B",npc="Lodge-Matron Embla",npcid=30005,x=48.86,y=65.04},
		{name="Bouldercrag's Refuge",faction="B",npc="Magorn",npcid=29963,x=30.89,y=37.36},
	},	
	["Zul'Drak"]={
		{name="The Argent Stand",faction="B",npc="Marissa Everwatch",npcid=28791,x=40.83,y=66.26},
		{name="Zim'Torga",faction="B",npc="Pan'ya",npcid=29583,x=59.33,y=57.30},
	},
	



	---------------------------
	-----     OUTLAND     -----
	---------------------------

	["Blade's Edge Mountains"]={
		{name="Sylvanaar",faction="A",npc="Innkeeper Shaunessy",npcid=19495,x=35.80,y=63.88},
		{name="Toshley's Station",faction="A",npc="Fizit \"Doc\" Clocktok",npcid=21110,x=60.98,y=68.11},
		{name="Thunderlord Stronghold",faction="H",npc="Gholah",npcid=19470,x=53.37,y=55.42},
		{name="Mok'Nathal Village",faction="H",npc="Matron Varah",npcid=21088,x=76.09,y=60.31},
		{name="Evergrove",faction="B",npc="Innkeeper Aelerya",npcid=22922,x=62.87,y=38.29},
	},
	["Hellfire Peninsula"]={
		{name="Thrallmar",faction="H",npc="Floyd Pinkus",npcid=16602,x=56.71,y=37.47},
		{name="Falcon Watch",faction="H",npc="Innkeeper Bazil Olof'tazun",npcid=18905,x=26.88,y=59.53},
		{name="Honor Hold",faction="A",npc="Sid Limbardi",npcid=16826,x=54.22,y=63.60},
		{name="Temple of Telhamat",faction="A",npc="Caregiver Ophera Windfury",npcid=18906,x=23.35,y=36.36},
	},
	["Nagrand"]={
		{name="Telaar",faction="A",npc="Caregiver Isel",npcid=18914,x=54.22,y=76.10},
		{name="Garadar",faction="H",npc="Matron Tikkit",npcid=18913,x=56.73,y=34.51},							-- VERIFY, NEED REPUTATION
	},
	["Netherstorm"]={
		{name="Area 52",faction="B",npc="Innkeeper Remi Dodoso",npcid=19571,x=31.96,y=64.42},
		{name="The Stormspire",faction="B",npc="Eyonix",npcid=19531,x=43.36,y=36.14},
	},
	["Shadowmoon Valley"]={
		{name="Shadowmoon Village",faction="H",npc="Innkeeper Darg Bloodclaw",npcid=19319,x=30.24,y=27.74},
		{name="Altar of Sha'tar",faction="B",npc="Caretaker Aluuro",npcid=21746,x=61.12,y=28.24},								-- Aldor only
		{name="Sanctum of the Stars",faction="B",npc="Roldemar",npcid=21744,x=56.32,y=59.84},									-- Scryer only
		{name="Wildhammer Stronghold",faction="A",npc="Dreg Cloudsweeper",npcid=19352,x=37.06,y=58.27},
	},
	["Shattrath City"]={
		{name="Aldor Rise",faction="B",npc="Minalei",npcid=19046,x=28.31,y=49.42},										-- Aldor only (VERIFY NAME)
		{name="Scryer's Tier",faction="B",npc="Innkeeper Haelthol",npcid=19232,x=56.32,y=81.54},								-- Scryer only
	},
	["Terokkar Forest"]={
		{name="Allerian Stronghold",faction="A",npc="Innkeeper Biribi",npcid=19296,x=56.70,y=53.27},
		{name="Stonebreaker Hold",faction="H",npc="Innkeeper Grilka",npcid=18957,x=48.76,y=45.05},
	},	
	["Zangarmarsh"]={
		{name="Zabra'jin",faction="H",npc="Merajit",npcid=18245,x=30.66,y=50.93},
		{name="Cenarion Refuge",faction="B",npc="Innkeeper Coryth Stoktron",npcid=18907,x=78.49,y=62.93},
		{name="Orebor Harborage",faction="A",npc="Innkeeper Kerp",npcid=18908,x=41.85,y=26.22},
		{name="Telredor",faction="A",npc="Caregiver Abidaar",npcid=18251,x=67.17,y=49.32},
	},		




	------------------------------------
	-----     EASTERN KINGDOMS     -----
	------------------------------------
	
	["Arathi Highlands"]={
		{name="Refuge Pointe",faction="A",npc="Vikki Lonsav",npcid=2808,x=39.90,y=49.04},
		{name="Hammerfall",faction="H",npc="Innkeeper Adegwa",npcid=7731,x=68.96,y=33.24},
	},
	["Dun Morogh"]={
		--{name="Gnomeregan",faction="A",npc="Nevin Twistwrench",npcid=45966,x=25.7,y=31.9},					-- This sends you to a submap of Dun Morogh that isn't useful, and always slower. Should never be used.
		{name="Thunderbrew Distillery",faction="A",npc="Innkeeper Belm",npcid=1247,x=54.49,y=50.85},
	},
	["Badlands"]={
		{name="Dragon's Mouth",faction="A",npc="Ivan Zypher",npcid=48093,x=20.68,y=56.33},
		{name="New Kargath",faction="H",npc="Innkeeper Shul'kar",npcid=9356,x=18.32,y=42.65},
		{name="Fuselight-by-the-Sea",faction="B",npc="The Great Pisani",npcid=49934,x=90.05,y=37.51},
		{name="Fuselight",faction="B",npc="Sally Gearwell",npcid=48054,x=65.81,y=35.70},
	},
	["Duskwood"]={
		{name="Darkshire",faction="A",npc="Innkeeper Trelayne",npcid=6790,x=73.87,y=44.41},
	},
	["Eastern Plaguelands"]={
		{name="Light's Hope Chapel",faction="B",npc="Jessica Chambers",npcid=16256,x=75.64,y=52.40},
	},
	["Elwynn Forest"]={
		{name="Northshire Valley",x=48.10,y=42.12},													-- Human new character default hearthstone location
		{name="Lion's Pride Inn",faction="A",npc="Innkeeper Farley",npcid=295,x=43.77,y=65.80},
	},
	["Eversong Woods"]={
		{name="Sunstrider Isle",x=37.97,y=21.08},													-- Blood Elf new character default hearthstone location
		{name="Falconwing Inn",faction="H",npc="Innkeeper Delaniel",npcid=15433,x=48.16,y=47.66},
		{name="Fairbreeze Village",faction="H",npc="Thersa Windsong",npcid=8393,x=43.67,y=71.31},
	},
	["Ghostlands"]={
		{name="Tranquillien",faction="H",npc="Innkeeper Kalarin",npcid=16542,x=48.91,y=32.42},
	},
	["Hillsbrad Foothills"]={
		{name="Tarren Mill",faction="H",npc="Innkeeper Shay",npcid=2388,x=57.95,y=47.29},
		{name="The Sludge Fields",faction="H",npc="Innkeeper Hershberg",npcid=49394,x=35.91,y=61.09},
		{name="Eastpoint Tower",faction="H",npc="Innkeeper Durgens",npcid=49430,x=59.76,y=64.93},
	},
	["Isle of Quel'Danas"]={
		{name="Sun's Reach Harbor",faction="B",npc="Caregiver Inaara",npcid=25036,x=51.18,y=33.88},
	},
	["Ironforge"]={
		{name="The Commons",faction="A",npc="Innkeeper Firebrew",npcid=5111,x=18.15,y=51.45},
	},
	["Loch Modan"]={
		{name="Stoutlager Inn",faction="A",npc="Innkeeper Hearthstove",npcid=6734,x=35.53,y=48.40},
		{name="The Farstrider Lodge",faction="A",npc="Vyrin Swiftwind",npcid=1156,x=81.91,y=64.62},
	},
	["Northern Stranglethorn"]={
		{name="Fort Livingston",faction="A",npc="Livingston Marshal",npcid=44019,x=53.21,y=66.93},
		{name="Grom'gol Base Camp",faction="H",npc="Innkeeper Thulbek",npcid=5814,x=37.37,y=51.87},
	},
	["Redridge Mountains"]={
		{name="Lakeshire",faction="A",npc="Innkeeper Brianna",npcid=6727,x=26.39,y=41.42},
	},
	["Searing Gorge"]={
		{name="Iron Summit",faction="B",npc="Velma Rockslide",npcid=47942,x=39.00,y=66.07},
	},
	["Silvermoon City"]={
		--{name="Silvermoon City",faction="H",npc="Innkeeper Jovia",npcid=17630,x=67.85,y=72.90},								-- Commented out, due to having the same "Silvermoon City" inn name
		{name="Silvermoon City",faction="H",npc="Innkeeper Velandra",npcid=16618,x=79.47,y=58.21},
	},
	["Silverpine Forest"]={
		{name="The Sepulcher",faction="H",npc="Innkeeper Velandra",npcid=6739,x=46.42,y=42.70},
		{name="Forsaken Rear Guard",faction="H",npc="Commander Hickley",npcid=45496,x=44.35,y=20.33},
	},
	["Stormwind City"]={
		{name="Trade District",faction="A",npc="Innkeeper Allison",npcid=6740,x=60.39,y=75.28},
		{name="Old District",faction="A",npc="Maegan Tillman",npcid=44237,x=75.69,y=54.10},
		{name="Dwarven District",faction="A",npc="Thaegra Tillstone",npcid=44235,x=64.94,y=31.94},
	},
	["Swamp of Sorrows"]={
		{name="Stonard",faction="H",npc="Innkeeper Karakul",npcid=6930,x=46.95,y=56.90},
		{name="Bogpaddle",faction="B",npc="Cap'n Geech",npcid=47334,x=71.68,y=13.84},
		{name="The Harborage",faction="A",npc="Verad",npcid=47367,x=29.02,y=32.37},
	},
	["The Cape of Stranglethorn"]={
		{name="Booty Bay",faction="B",npc="Innkeeper Skindle",npcid=6807,x=40.88,y=73.77},
		{name="Hardwrench Hideaway",faction="H",npc="Innkeeper Draxle",npcid=44190,x=35.08,y=27.19},
	},
	["The Hinterlands"]={
		{name="Stormfeather Outpost",faction="A",npc="Innkeeper Keirnan",npcid=43699,x=66.17,y=44.35},
		{name="Wildhammer Keep",faction="A",npc="Innkeeper Thulfram",npcid=7744,x=14.14,y=44.67},
		{name="Revantusk Village",faction="H",npc="Lard",npcid=14731,x=78.14,y=81.38},
		{name="Hiri'watha Research Station",faction="H",npc="Bitsy",npcid=43739,x=31.80,y=57.99},
	},
	["Tirisfal Glades"]={
		{name="The Deathknell Graves",x=29.36,y=70.96},													-- Undead new character default hearthstone location
		{name="Brill",faction="H",npc="Innkeeper Renee",npcid=5688,x=60.87,y=51.50},
		{name="The Bulwark",faction="H",npc="Provisioner Elda",npcid=46271,x=83.08,y=72.00},
	},
	["Undercity"]={
		{name="Undercity",faction="H",npc="Innkeeper Norman",npcid=6741,x=67.72,y=37.90},
	},	
	["Western Plaguelands"]={
		{name="Andorhal",faction="H",npc="Roman Garner",npcid=47857,x=48.33,y=63.81},
		{name="Chillwind Camp",faction="A",npc="Mother Matterly",npcid=46269,x=43.34,y=84.63},
	},
	["Westfall"]={
		{name="Sentinel Hill",faction="A",npc="Innkeeper Heather",npcid=8931,x=52.86,y=53.71},
	},	
	["Wetlands"]={
		{name="Deepwater Tavern",faction="A",npc="Innkeeper Helbrek",npcid=1464,x=10.74,y=60.87},
		{name="Greenwarden's Grove",faction="A",npc="Innkeeper Larisal",npcid=43993,x=58.26,y=39.05},
		{name="Sundown Marsh",faction="A",npc="Innkeeper Daughny",npcid=44006,x=25.68,y=26.07},
	},




	----------------------------
	-----     KALIMDOR     -----
	----------------------------
	
	["Ashenvale"]={
		{name="Astranaar",faction="A",npc="Innkeeper Kimlya",npcid=6738,x=36.99,y=49.22},
		{name="Splintertree Post",faction="H",npc="Innkeeper Kaylisk",npcid=12196,x=73.99,y=60.65},
		{name="Silverwind Refuge",faction="H",npc="Innkeeper Chin'toka",npcid=43633,x=50.43,y=67.15},
		{name="Zoram'gar Outpost",faction="H",npc="Innkeeper Duras",npcid=43606,x=12.99,y=34.16},
		{name="Hellscream's Watch",faction="H",npc="Innkeeper Linkasa",npcid=43624,x=38.60,y=42.19},
	},
	["Azuremyst Isle"]={
		{name="Ammen Vale",x=84.29,y=43.02},														-- Draenei new character default hearthstone location
		{name="Azure Watch",faction="A",npc="Caregiver Chellan",npcid=16553,x=48.37,y=49.20},
	},
	["Bloodmyst Isle"]={
		{name="Blood Watch",faction="A",npc="Caregiver Topher Loaal",npcid=17553,x=55.85,y=59.81},
	},
	["Darkshore"]={
		{name="Lor'danel",faction="A",npc="Innkeeper Kyteran",npcid=43420,x=50.96,y=18.55},
	},
	["Darnassus"]={
		{name="Craftsmen's Terrace",faction="A",npc="Innkeeper Saelienne",npcid=6735,x=62.53,y=32.78},
	},
	["Desolace"]={
		{name="Nijel's Point",faction="A",npc="Innkeeper Lyshaerya",npcid=11103,x=66.37,y=6.69},
		{name="Shadowprey Village",faction="H",npc="Innkeeper Sikewa",npcid=11106,x=24.09,y=68.21},
		{name="Karnum's Glade",faction="B",npc="Innkeeper Dessina",npcid=43872,x=56.71,y=50.01},
	},
	["Durotar"]={
		{name="Valley of Trials",x=43.29,y=68.85},													-- Orc new character default hearthstone location
		{name="Razor Hill",faction="H",npc="Innkeeper Grosk",npcid=6928,x=51.51,y=41.64},
	},
	["Dustwallow Marsh"]={
		{name="Theramore Isle",faction="A",npc="Innkeeper Janene",npcid=6272,x=66.42,y=45.32},
		{name="Mudsprocket",faction="B",npc="Axle",npcid=23995,x=41.91,y=73.85},
		{name="Brackenwall Village",faction="H",npc="\"Little\" Logok",npcid=24208,x=36.89,y=32.35},
	},
	["Felwood"]={
		{name="Talonbranch Glade",faction="A",npc="Denmother Ulrica",npcid=47931,x=61.84,y=26.77},
		{name="Wildheart Point",faction="B",npc="Innkeeper Teenycaugh",npcid=48599,x=43.95,y=61.91},
		{name="Whisperwind Grove",faction="B",npc="Innkeeper Wylaria",npcid=48215,x=45.04,y=29.28},
	},
	["Feralas"]={
		{name="Dreamer's Rest",faction="A",npc="Andoril",npcid=40968,x=51.06,y=17.94},
		{name="Feathermoon Stronghold",faction="A",npc="Innkeeper Shyria",npcid=44391,x=46.23,y=45.22},
		{name="Camp Mojache Longhouse",faction="H",npc="Innkeeper Greul",npcid=7737,x=74.80,y=45.18},
		{name="Camp Ataya",faction="H",npc="Adene Treetotem",npcid=40467,x=41.42,y=15.76},
		{name="Stonemaul Hold",faction="H",npc="Chonk",npcid=44376,x=51.89,y=47.44},
	},
	["Mulgore"]={
		{name="Camp Narache",x=44.87,y=77.16},														-- Tauren new character default hearthstone location
		{name="Bloodhoof Village",faction="H",npc="Innkeeper Kauth",npcid=6747,x=46.82,y=60.46},
	},
	["The Barrens"]={
		{name="The Crossroads",faction="H",npc="Innkeeper Boorand Plainswind",npcid=3934,x=49.55,y=57.88},
		{name="Grol'dom Farm",faction="H",npc="Innkeeper Kerntis",npcid=43946,x=56.24,y=39.98},
		{name="Nozzlepot's Outpost",faction="H",npc="Innkeeper Kritzle",npcid=43945,x=62.53,y=16.58},
		{name="Ratchet",faction="B",npc="Innkeeper Wiley",npcid=6791,x=67.30,y=74.66},
	},
	["Orgrimmar"]={
		{name="Valley of Strength",faction="H",npc="Innkeeper Gryshka",npcid=6929,x=53.63,y=78.77},
		{name="Valley of Honor",faction="H",npc="Innkeeper Nufa",npcid=46642,x=70.51,y=49.17},
		{name="Orgrimmar",faction="H",npc="Miwana",npcid=44785,x=38.87,y=48.64},
		{name="Goblin Slums",faction="H",npc="Tinza Silvermug",npcid=45563,x=39.62,y=81.18},
		{name="Valley of Spirits",faction="H",npc="Sijambi",npcid=45086,x=32.84,y=64.86},
	},
	["Silithus"]={
		{name="Cenarion Hold",faction="B",npc="Calandrath",npcid=15174,x=55.53,y=36.77},
	},
	["Southern Barrens"]={
		{name="Honor's Stand",faction="A",npc="Logistics Officer Renaldo",npcid=44219,x=39.06,y=11.05},
		{name="Northwatch Hold",faction="A",npc="Keep Watcher Kerry",npcid=44268,x=65.58,y=46.56},
		{name="Fort Triumph",faction="A", npc="Logistics Officer Salista",npcid=44267,x=49.04,y=68.55},
		{name="Camp Una'fe",faction="H",npc="Byula",npcid=7714,x=44.25,y=33.58},
		{name="Hunter's Hill",faction="H",npc="Innkeeper Hurnahet",npcid=44270,x=39.24,y=20.02},
		{name="Desolation Hold",faction="H",npc="Innkeeper Lhakadd",npcid=44276,x=40.70,y=69.24},
	},
	["Stonetalon Mountains"]={
		{name="Fallowmere Inn",faction="A",npc="Alithia Fallowmere",npcid=40898,x=58.98,y=56.36},
		{name="Northwatch Expedition Base Camp Inn",faction="A",npc="Lyanath",npcid=41286,x=71.06,y=79.07},
		{name="Thal'darah Overlook",faction="A",npc="Valos Shadowrest",npcid=41491,x=39.43,y=32.82},
		{name="Farwatcher's Glen",faction="A",npc="Innkeeper Bernice",npcid=44177,x=31.57,y=60.57},
		{name="Krom'gar Fortress",faction="H",npc="Felonius Stark",npcid=41892,x=66.48,y=64.24},
		{name="Sun Rock Retreat",faction="H",npc="Innkeeper Jayka",npcid=7731,x=50.41,y=63.83},
	},
	["Tanaris"]={
		{name="Gadgetzan",faction="B",npc="Innkeeper Fizzgrimble",npcid=7733,x=52.58,y=27.00},
		{name="Bootlegger Outpost",faction="B",npc="Carmen Ibanozzle",npcid=38714,x=55.66,y=60.98},
	},
	["Teldrassil"]={
		{name="Shadowglen",x=44.87,y=77.16},														-- Night Elf new character default hearthstone location
		{name="Dolanaar",faction="A",npc="Innkeeper Keldamyr",npcid=6736,x=55.37,y=52.23},
	},	
	["The Exodar"]={
		{name="The Exodar",faction="A",npc="Caregiver Breel",npcid=16739,x=59.59,y=19.40},
	},	
	["Thousand Needles"]={
		{name="Speedbarge Bar",faction="B",npc="Daisy",npcid=40832,x=76.47,y=74.80},
	},
	["Thunder Bluff"]={
		{name="Thunder Bluff",faction="H",npc="Innkeeper Pala",npcid=6746,x=45.81,y=64.71},
	},
	["Un'Goro Crater"]={
		{name="Marshal's Stand",faction="B",npc="Innkeeper Dreedle",npcid=38488,x=55.38,y=62.26},
	},
	["Winterspring"]={
		{name="Everlook",faction="B",npc="Innkeeper Vizzie",npcid=11118,x=59.86,y=51.19},
	},		
}