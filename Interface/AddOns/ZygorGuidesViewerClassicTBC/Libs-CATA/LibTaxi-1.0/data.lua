local name,addon = ...
local data={}
addon.LibTaxiData = data
data.taxipoints = {



--------------------
---   KALIMDOR   ---
--------------------
[1414]={
	["Dustwallow Marsh"]={
		{name="Brackenwall Village",faction="H",npc="Shardi",npcid=11899,x=35.56,y=31.88},
		{name="Mudsprocket",faction="B",npc="Dyslix Silvergrub",npcid=40358,x=42.86,y=72.36},
		{name="Theramore",faction="A",npc="Baldruc",npcid=4321,x=67.48,y=51.30},
	},
	["Southern Barrens"]={
		{name="Desolation Hold",faction="H",npc="Crador",npcid=39330,x=41.19,y=70.63},
		{name="Fort Triumph",faction="A",npc="Steve Stevenson",npcid=39211,x=49.20,y=67.80},
		{name="Honor's Stand",faction="A",npc="John Johnson",npcid=39210,x=38.93,y=10.88},
		{name="Hunter's Hill",faction="H",npc="Unega",npcid=39340,x=39.78,y=20.26},
		{name="Northwatch Hold",faction="A",npc="Bill Williamson",npcid=39212,x=66.38,y=47.13},
		{name="Vendetta Point",faction="H",npc="Lognah",npcid=52060,x=41.55,y=47.60},
	},
	["The Barrens"]={
		{name="Nozzlepot's Outpost",faction="H",npc="Gazrix",npcid=40558,x=62.31,y=17.11},
		{name="Ratchet",faction="B",npc="Bragok",npcid=16227,x=69.12,y=70.70},
		{name="The Crossroads",faction="H",npc="Devrak",npcid=3615,x=48.70,y=58.66},
	},
	["Ashenvale"]={
		{name="Astranaar",faction="A",npc="Daelyshia",npcid=4267,x=34.41,y=47.99},
		{name="Blackfathom Camp",faction="A",npc="Solais",npcid=34374,x=18.14,y=20.59},
		{name="Forest Song",faction="A",npc="Suralais Farwind",npcid=22935,x=85.09,y=43.45},
		{name="Hellscream's Watch",faction="H",npc="Thraka",npcid=34429,x=38.11,y=42.25},
		{name="Silverwind Refuge",faction="H",npc="Wind Tamer Shoshok",npcid=34943,x=49.29,y=65.25},
		{name="Splintertree Post",faction="H",npc="Vhulgra",npcid=12616,x=73.25,y=61.59},
		{name="Stardust Spire",faction="A",npc="Myre Moonglide",npcid=34378,x=35.02,y=72.07},
		{name="The Mor'Shan Ramparts",faction="H",npc="Gort Goreflight",npcid=34927,x=41.98,y=15.88},
		{name="Zoram'gar Outpost",faction="H",npc="Andruk",npcid=11901,x=11.22,y=34.38},
	},
	["The Exodar"]={
		{name="The Exodar",faction="A",npc="Stephanos",npcid=17555,x=54.37,y=36.76},
	},
	["Azuremyst Isle"]={
		{name="Azure Watch",faction="A",npc="Zaldaan",npcid=43991,x=49.71,y=49.12},
	},
	["Bloodmyst Isle"]={
		{name="Blood Watch",faction="A",npc="Laando",npcid=17554,x=57.68,y=53.87},
	},
	["Felwood"]={
		{name="Emerald Sanctuary",faction="B",npc="Gorrim",npcid=22931,x=51.53,y=80.88},
		{name="Talonbranch Glade",faction="A",npc="Mishellena",npcid=12578,x=60.52,y=25.29},
		{name="Whisperwind Grove",faction="B",npc="Hanah Southsong",npcid=43073,x=43.59,y=28.70},
		{name="Irontree Clearing",faction="H",npc="Dirzak Pryocrank",npcid=19712,x=56.36,y=8.64},
		{name="Wildheart Point",faction="B",npc="Chyella Hushglade",npcid=43079,x=44.29,y=61.87},
	},
	["Moonglade"]={
		{name="Moonglade",faction="A",npc="Sindrayl",npcid=10897,x=48.10,y=67.34},
		{name="Moonglade",faction="H",npc="Faustron",npcid=12740,x=32.09,y=66.61},
	},
	["Winterspring"]={
		{name="Everlook",faction="A",npc="Maethrya",npcid=11138,x=60.99,y=48.61},
		{name="Everlook",faction="H",npc="Yugrek",npcid=11139,x=58.84,y=48.26},
	},
	["Stonetalon Mountains"]={
		{name="Farwatcher's Glen",faction="A",npc="Ceyora",npcid=35138,x=32.02,y=61.84},
		{name="Mirkfallon Post",faction="A",npc="Fiora Moonsoar",npcid=41240,x=48.64,y=51.52},
		{name="Northwatch Expedition Base Camp",faction="A",npc="Kaluna Songflight",npcid=35136,x=70.92,y=80.58},
		{name="Thal'darah Overlook",faction="A",npc="Teloren",npcid=4407,x=40.12,y=31.96},
		{name="Windshear Hold",faction="A",npc="Allana Swiftglide",npcid=35137,x=58.80,y=54.28},
		{name="Cliffwalker Post",faction="H",npc="Orna Skywatcher",npcid=35141,x=45.11,y=30.89},
		{name="Krom'gar Fortress",faction="H",npc="Kormal the Swift",npcid=35140,x=66.52,y=62.75},
		{name="Sun Rock Retreat",faction="H",npc="Tharm",npcid=4312,x=48.47,y=61.93},
		{name="The Sludgewerks",faction="H",npc="Flok",npcid=41246,x=53.87,y=40.12},
	},
	["Desolace"]={
		{name="Ethel Rethor",faction="B",npc="Korrah's Hippogryph",npcid=35562,x=39.08,y=26.93},
		{name="Furien's Post",faction="H",npc="Narimar",npcid=35315,x=44.27,y=29.67},
		{name="Karnum's Glade",faction="B",npc="Lastrea Greengale",npcid=35478,x=57.72,y=49.75},
		{name="Nijel's Point",faction="A",npc="Baritanas Skyriver",npcid=6706,x=64.66,y=10.54},
		{name="Shadowprey Village",faction="H",npc="Thalon",npcid=6726,x=21.60,y=74.13},
		{name="Thargad's Camp",faction="A",npc="Moira Steelwing",npcid=35481,x=36.76,y=71.68},
		{name="Thunk's Abode",faction="B",npc="Thunk's Wyvern",npcid=35556,x=70.67,y=32.89},
	},
	["Feralas"]={
		{name="Camp Ataya",faction="H",npc="Tono",npcid=40473,x=41.53,y=15.45},
		{name="Camp Mojache",faction="H",npc="Shyn",npcid=39898,x=75.45,y=44.36},
		{name="Dreamer's Rest",faction="A",npc="Selor",npcid=40966,x=50.21,y=16.72},
		{name="Feathermoon",faction="A",npc="Irela Moonfeather",npcid=41383,x=46.77,y=45.35},
		{name="Shadebough",faction="A",npc="Seyala Nightwisp",npcid=40367,x=77.25,y=56.78},
		{name="Stonemaul Hold",faction="H",npc="Mergek",npcid=41605,x=51.00,y=48.43},
		{name="Tower of Estulan",faction="A",npc=" Aryenda",npcid=41580,x=57.08,y=53.95},
	},
	["Thousand Needles"]={
		{name="Fizzle & Pozzik's Speedbarge",faction="H",npc="Zazzix Boomride",npcid=16640,x=79.19,y=71.89},
		{name="Fizzle & Pozzik's Speedbarge",faction="A",npc="Tilly Topspin",npcid=16384,x=79.15,y=71.95},
	},
	["Tanaris"]={
		{name="Bootlegger Outpost",faction="B",npc="Slick Dropdip",npcid=41214,x=55.88,y=60.60},
		{name="Dawnrise Expedition",faction="H",npc="Raina Sunglide",npcid=41215,x=33.30,y=77.36},
		{name="Gadgetzan",faction="A",npc="Bera Stonehammer",npcid=7823,x=51.35,y=29.49},
		{name="Gadgetzan",faction="H",npc="Bulkrek Ragefist",npcid=7824,x=52.04,y=27.61},
		{name="Gunstan's Dig",faction="A",npc="Thurda",npcid=40827,x=40.05,y=77.54},
	},
	["Un'Goro Crater"]={
		{name="Marshal's Stand",faction="B",npc="Gryfe",npcid=10583,x=55.98,y=64.17},
		{name="Mossy Pile",faction="B",npc="Flizzy Coilspanner",npcid=39175,x=44.11,y=40.28},
	},
	["Silithus"]={
		{name="Cenarion Hold",faction="A",npc="Cloud Skydancer",npcid=15177,x=54.40,y=32.73},
		{name="Cenarion Hold",faction="H",npc="Runk Windtamer",npcid=15178,x=52.77,y=34.63},
	},
	["Uldum"]={
		{name="Oasis of Vir'sar",faction="B",npc="Jock Lindsey",npcid=48274,x=26.61,y=8.37},
		{name="Ramkahen",faction="B",npc="Kurzel",npcid=48275,x=56.20,y=33.60},
		{name="Schnottz's Landing",faction="B",npc="Evax Oilspark",npcid=48273,x=22.29,y=64.93},
	},
	["Orgrimmar"]={
		{name="Orgrimmar",faction="H",npc="Doras",npcid=3310,x=49.66,y=59.22},
	},
	["Thunder Bluff"]={
		{name="Thunder Bluff",faction="H",npc="Tal",npcid=2995,x=47.04,y=49.59},
	},
	["Azshara"]={
		{name="Bilgewater Harbor",faction="H",npc="Kroum",npcid=8610,x=52.92,y=49.85},
		{name="Northern Rocketway Terminus",faction="H",npc="Blitz Blastospazz",npcid=43328,x=66.50,y=21.01},
		{name="Southern Rocketway Terminus",faction="H",npc="Friz Groundspin",npcid=37005,x=51.49,y=74.28},
		{name="Valormok",faction="H",npc="Kroum",npcid=36728,x=14.35,y=65.03},
	},
	["Durotar"]={
		{name="Razor Hill",faction="H",npc="Burok",npcid=41140,x=53.09,y=43.58},
		{name="Sin'jin Village",faction="H",npc="Handler Marnlek",npcid=41142,x=55.38,y=73.31},
	},
	["Teldrassil"]={
		{name="Dolanaar",faction="A",npc="Fidelio",npcid=40553,x=55.47,y=50.42},
		{name="Rut'theran Village",faction="A",npc="Vesprystus",npcid=3838,x=55.41,y=88.42},
	},
	["Darnassus"]={
		{name="Darnassus",faction="A",npc="Leora",npcid=40552,x=36.61,y=47.83},
	},
	["Darkshore"]={
		{name="Grove of the Ancients",faction="A",npc="Delanea",npcid=33253,x=44.40,y=75.46},
		{name="Lor'danel",faction="A",npc="Teldira Moonfeather",npcid=3841,x=51.72,y=17.65},
	},
	["Mount Hyjal"]={
		{name="Gates of Sothann",faction="B",npc="Althera",npcid=43549,x=71.62,y=75.34},
		{name="Grove of Aessina",faction="B",npc="Elizil Wintermoth",npcid=41860,x=19.60,y=36.38},
		{name="Nordrassil",faction="B",npc="Fayran Elthas",npcid=41861,x=62.13,y=21.59},
		{name="Sanctuary of Malorne",faction="B",npc="Ranela Featherglen",npcid=54393,x=27.75,y=63.64},
		{name="Shrine of Aviana",faction="B",npc="Dinorae Swiftfeather",npcid=50084,x=41.18,y=42.59},
	},
},



----------------------------
---   EASTERN KINGDOMS   ---
----------------------------
[1415]={
	["Gilneas"]={
		{name="Forsaken Forward Command",faction="H",npc="Bat Handler Doomair",npcid=45479,x=57.26,y=17.81},
	},
	["Eastern Plaguelands"]={
		{name="Acherus: The Ebon Hold",faction="B",npc="Grimwing",npcid=29480,x=83.97,y=50.60},							-- Death Knight Only				VERIFY COORDS
		{name="Light's Hope Chapel",faction="H",npc="Georgia",npcid=12636,x=75.81,y=53.29},
		{name="Light's Hope Chapel",faction="A",npc="Khaelyn Steelwing",npcid=12617,x=75.85,y=53.41},
		{name="Eastwall Tower",faction="B",npc="Richard Trueflight",npcid=44230,x=61.64,y=43.84},
		{name="Northpass Tower",faction="B",npc="Grayson Ironwing",npcid=28621,x=51.35,y=21.31},
		{name="Light's Shield Tower",faction="B",npc="Devon Manning",npcid=44231,x=52.76,y=53.57},
		{name="Crown Guard Tower",faction="B",npc="Janice Myers",npcid=44232,x=34.90,y=67.89},
		{name="Plaguewood Tower",faction="B",npc="William Kielar Jr.",npcid=44233,x=18.46,y=27.37},
		{name="Thondroril River",faction="B",npc="Frax Bucketdrop",npcid=37888,x=10.09,y=65.67},
	},
	["Silverpine Forest"]={
		{name="The Forsaken Front",faction="H",npc="Steven Stutzka",npcid=46552,x=50.87,y=63.62},
		{name="The Sepulcher",faction="H",npc="Karos Razok",npcid=2226,x=45.41,y=42.48},
		{name="Forsaken Rear Guard",faction="H",npc="Franny Mertz",npcid=50463,x=45.93,y=21.88},
		{name="Forsaken High Command",faction="H",npc="Bat Handler Maggotbreath",npcid=44825,x=57.91,y=8.71},
	},
	["Eversong Woods"]={
		{name="Fairbreeze Village",faction="H",npc="Skymaster Brightdawn",npcid=44036,x=43.95,y=69.98},
		{name="Falconwing Square",faction="H",npc="Skymaster Skyles",npcid=44244,x=46.25,y=46.80},
		{name="Silvermoon City",faction="H",npc="Skymistress Gloaming",npcid=16192,x=54.38,y=50.73},
	},
	["Ghostlands"]={
		{name="Tranquillien",faction="H",npc="Skymaster Sunwing",npcid=16189,x=45.42,y=30.53},
		{name="Zul'Aman",faction="B",npc="Kiz Coilspanner",npcid=24851,x=74.73,y=67.13},							-- Missing in Cata beta
	},
	["Isle of Quel'Danas"]={
		{name="Shattered Sun Staging Area",faction="B",npc="Ohura",npcid=26560,x=48.36,y=25.08},
	},
	["Undercity"]={
		{name="Undercity",faction="H",npc="Michael Garrett",npcid=4551,x=63.25,y=48.54},
	},
	["Western Plaguelands"]={
		{name="The Menders' Stead",faction="B",npc="Marge Heffman",npcid=46011,x=50.51,y=52.23},
		{name="Andorhal",faction="H",npc="Rhonda Molver",npcid=46004,x=46.53,y=64.71},
		{name="Hearthglen",faction="B",npc="William Henderson",npcid=47875,x=44.66,y=18.47},
		{name="Chillwind Camp",faction="A",npc="Bibilfaz Featherwhistle",npcid=12596,x=42.92,y=85.06},
		{name="Andorhal",faction="A",npc="Ginny Goodwin",npcid=46006,x=39.40,y=69.58},
	},
	["Tirisfal Glades"]={
		{name="Brill",faction="H",npc="Anette Williams",npcid=43124,x=58.84,y=51.93},
		{name="The Bulwark",faction="H",npc="Timothy Cunningham",npcid=37915,x=83.57,y=69.95},
	},
	["Hillsbrad Foothills"]={
		{name="Eastpoint Tower",faction="H",npc="Darren Longfellow",npcid=47661,x=59.62,y=63.25},
		{name="Ruins of Southshore",faction="H",npc="Darla Harris",npcid=47644,x=49.02,y=66.21},
		{name="Southpoint Gate",faction="H",npc="Pamela Stutzka",npcid=47655,x=29.13,y=64.42},							-- Missing in Cata beta
		{name="Strahnbrad",faction="H",npc="Phillip Harding",npcid=47665,x=58.23,y=26.48},
		{name="Tarren Mill",faction="H",npc="Zarise",npcid=2389,x=56.06,y=46.09},
	},
	["Arathi Highlands"]={
		{name="Galen's Fall",faction="H",npc="Rhoda Bowers",npcid=43104,x=13.31,y=34.82},
		{name="Hammerfall",faction="H",npc="Urda",npcid=2851,x=68.16,y=33.39},
		{name="Refuge Pointe",faction="A",npc="Cedrik Prose",npcid=2835,x=39.89,y=47.35},
	},
	["Twilight Highlands"]={
		{name="Firebeard's Patrol",faction="A",npc="Farstad Stonegrip",npcid=47147,x=60.42,y=57.67},
		{name="Highbank",faction="A",npc="Glenn Arbuckle",npcid=47119,x=81.65,y=77.13},
		{name="Kirthaven",faction="A",npc="Shaina Talonheart",npcid=47155,x=56.78,y=15.11},
		{name="Thundermar",faction="A",npc="Doran Talonheart",npcid=47154,x=48.54,y=28.10},
		{name="Victor's Point",faction="A",npc="Desmond Chadsworth",npcid=47118,x=43.85,y=57.23},
		{name="Bloodgulch",faction="H",npc="Bramok Gorewing",npcid=47156,x=54.13,y=42.22},
		{name="Crushblow",faction="H",npc="Tokrog",npcid=47116,x=45.77,y=76.21},
		{name="Dragonmaw Port",faction="H",npc="Gorthul",npcid=47174,x=73.80,y=52.79},
		{name="The Gullet",faction="H",npc="San'shigo",npcid=47133,x=36.86,y=38.12},
		{name="The Krazzworks",faction="H",npc="Harpo Boltknuckle",npcid=47061,x=75.30,y=17.81},
		{name="Vermillion Redoubt",faction="B",npc="Aquinastrasz",npcid=47121,x=28.53,y=24.95},
	},
	["Ironforge"]={
		{name="Ironforge",faction="A",npc="Gryth Thurden",npcid=1573,x=55.50,y=47.74},
	},
	["Blasted Lands"]={
		{name="Dreadmaul Hold",faction="H",npc="Preda",npcid=43121,x=43.71,y=14.39},
		{name="Nethergarde Keep",faction="A",npc="Alexandra Constantine",npcid=8609,x=61.25,y=21.58},
		{name="Sunveil Excursion",faction="H",npc="Salena",npcid=43114,x=50.92,y=72.88},
		{name="Surwich",faction="A",npc="Graham McAllister",npcid=43107,x=47.13,y=89.36},
	},
	["Swamp of Sorrows"]={
		{name="Bogpaddle",faction="B",npc="Skeezie",npcid=43086,x=72.02,y=12.04},
		{name="Marshtide Watch",faction="A",npc="Paola Baldwin",npcid=43087,x=70.05,y=38.57},
		{name="Stonard",faction="H",npc="Breyk",npcid=6026,x=47.78,y=55.22},
		{name="The Harborage",faction="A",npc="Yedrin",npcid=43088,x=30.78,y=34.60},
	},
	["Duskwood"]={
		{name="Darkshire",faction="A",npc="Felicia Maline",npcid=2409,x=77.49,y=44.29},
		{name="Raven Hill",faction="A",npc="John Shelby",npcid=43697,x=21.08,y=56.45},
	},
	["Northern Stranglethorn"]={
		{name="Bambala",faction="H",npc="Raskha",npcid=43052,x=62.40,y=39.24},
		{name="Fort Livingston",faction="A",npc="Robert Rhodes",npcid=43042,x=52.64,y=66.10},
		{name="Grom'gol",faction="H",npc="Thysta",npcid=1387,x=39.01,y=51.25},
		{name="Rebel Camp",faction="A",npc="James Stillair",npcid=43045,x=47.86,y=11.85},
	},
	["The Cape of Stranglethorn"]={
		{name="Booty Bay",faction="A",npc="Gyll",npcid=2859,x=41.67,y=74.54},
		{name="Booty Bay",faction="H",npc="Gringer",npcid=2858,x=40.60,y=73.42},
		{name="Explorers' League Digsite",faction="A",npc="Colin Swifthammer",npcid=43043,x=55.74,y=41.22},
		{name="Hardwrench Hideaway",faction="H",npc="Hizzle",npcid=43053,x=35.14,y=29.39},
	},
	["Westfall"]={
		{name="Sentinel Hill",faction="A",npc="Thor",npcid=523,x=56.64,y=49.44},
		{name="Moonbrook",faction="A",npc="Tina Skyden",npcid=42426,x=42.09,y=63.28},
		{name="Furlbrow's Pumpkin Farm",faction="A",npc="Hoboair",npcid=42406,x=49.79,y=18.69},
	},
	["Elwynn Forest"]={
		{name="Goldshire",faction="A",npc="Bartlett the Brave",npcid=42983,x=41.71,y=64.64},
		{name="Eastvale Logging Camp",faction="A",npc="Goss the Swift",npcid=43000,x=81.83,y=66.56},
	},
	["Stormwind City"]={
		{name="Stormwind",faction="A",npc="Dungar Longdrink",npcid=352,x=70.94,y=72.47},
	},
	["Redridge Mountains"]={
		{name="Camp Everstill",faction="A",npc="Arlen Marsters",npcid=43371,x=52.92,y=54.64},
		{name="Lakeshire",faction="A",npc="Ariena Stormfeather",npcid=931,x=29.42,y=53.76},
		{name="Shalewind Canyon",faction="A",npc="Nora Baldwin",npcid=43072,x=77.97,y=65.91},
	},
	["Burning Steppes"]={
		{name="Chiselgrip",faction="B",npc="Grimly Singefeather",npcid=48321,x=46.15,y=41.79},
		{name="Flame Crest",faction="H",npc="Vahgruk",npcid=13177,x=54.16,y=24.23},
		{name="Flamestar Post",faction="B",npc="Hans Oreflight",npcid=48318,x=17.79,y=52.77},
		{name="Morgan's Vigil",faction="A",npc="Borgus Stoutarm",npcid=2299,x=72.09,y=65.70},
	},
	["Searing Gorge"]={
		{name="Iron Summit",faction="B",npc="Doug Deepdown",npcid=47927,x=41.06,y=68.79},
		{name="Thorium Point",faction="A",npc="Lanie Reed",npcid=2941,x=37.94,y=30.86},
		{name="Thorium Point",faction="H",npc="Grisha",npcid=3305,x=34.84,y=30.88},
	},
	["Badlands"]={
		{name="Bloodwatcher Point",faction="H",npc="Selara",npcid=44408,x=52.40,y=50.74},
		{name="Dragon's Mouth",faction="A",npc="Jake Badlands",npcid=44410,x=21.71,y=57.80},
		{name="Dustwind Dig",faction="A",npc="Nancy Skybrew",npcid=44409,x=48.99,y=36.20},
		{name="Fuselight",faction="B",npc="Mixi Sweetride",npcid=44407,x=64.33,y=35.03},
		{name="New Kargath",faction="H",npc="Gorrik",npcid=2861,x=17.19,y=40.01},
	},
	["The Hinterlands"]={
		{name="Aerie Peak",faction="A",npc="Guthrum Thunderfist",npcid=8018,x=11.07,y=46.15},
		{name="Hiri'watha Research Station",faction="H",npc="Kellen Kuhn",npcid=43573,x=32.45,y=58.08},
		{name="Revantusk Village",faction="H",npc="Gorkas",npcid=4314,x=81.71,y=81.75},
		{name="Stormfeather Outpost",faction="A",npc="Brock Rockbeard",npcid=43570,x=65.77,y=44.87},
	},
	["Loch Modan"]={
		{name="Farstrider Lodge",faction="A",npc="Eeryven Grayer",npcid=41332,x=81.88,y=64.07},
		{name="Thelsamar",faction="A",npc="Thorgrum Borrelson",npcid=1572,x=33.94,y=50.95},
	},
	["Dun Morogh"]={
		{name="Gol'Bolar Quarry",faction="A",npc="Dominic Galebeard",npcid=43702,x=75.87,y=54.44},
		{name="Kharanos",faction="A",npc="Brolan Galebeard",npcid=43701,x=53.80,y=52.76},
	},
	["Wetlands"]={
		{name="Dun Modr",faction="A",npc="Caleb Baelor",npcid=41325,x=49.91,y=18.44},
		{name="Greenwarden's Grove",faction="A",npc="Halana",npcid=41322,x=56.29,y=41.83},
		{name="Menethil Harbor",faction="A",npc="Shellei Brondir",npcid=1571,x=9.39,y=59.50},
		{name="Slabchisel's Survey",faction="A",npc="Elgin Baelor",npcid=41321,x=56.88,y=71.09},
		{name="Whelgar's Retreat",faction="A",npc="Damon Baelor",npcid=41323,x=38.81,y=38.97},
	},

	["Kelp'thar Forest"]={
		{name="Smuggler's Scar",faction="B",npc="Swift Seahorse",npcid=40852,x=56.20,y=31.10,taxioperator="seahorse"},						
		{name="Sandy Beach",faction="A",npc="Swift Seahorse",npcid=43287,x=42.40,y=66.16,taxioperator="seahorse"},						-- Connects to Sandy Beach small island in Shimmering Expanse
		{name="Sandy Beach",faction="H",npc="Swift Seahorse",npcid=43216,x=49.27,y=87.89,taxioperator="seahorse"},						-- Connects to Sandy Beach small island in Shimmering Expanse
	},
	["Shimmering Expanse"]={
		{name="Sandy Beach",faction="A",npc="Francis Greene",npcid=43290,x=57.04,y=17.05},
		{name="Silver Tide Hollow",faction="B",npc="Swift Seahorse",npcid=40851,x=49.57,y=41.28,taxioperator="seahorse"},
		{name="Tranquil Wash",faction="A",npc="Swift Seahorse",npcid=40867,x=48.53,y=57.44,taxioperator="seahorse"},
		{name="Voldrin's Hold",faction="A",npc="Swift Seahorse",npcid=43289,x=57.11,y=75.18,taxioperator="seahorse"},
		{name="Sandy Beach",faction="H",npc="Briglar",npcid=43220,x=61.02,y=28.43},
		{name="Legion's Rest",faction="H",npc="Swift Seahorse",npcid=40871,x=50.71,y=63.45,taxioperator="seahorse"},
		{name="Stygian Bounty",faction="H",npc="Swift Seahorse",npcid=43225,x=49.48,y=65.56,taxioperator="seahorse"},
		{name="Stygian Bounty",faction="H",npc="Brogdul",npcid=43225,x=50.23,y=65.49},
	},
	["Abyssal Depths"]={
		{name="Darkbreak Cove",faction="A",npc="Swift Seahorse",npcid=40866,x=56.90,y=75.52,taxioperator="seahorse"},
		{name="Tenebrous Cavern",faction="H",npc="Swift Seahorse",npcid=40873,x=53.87,y=59.62,taxioperator="seahorse"},
	},
	["Vashj'ir"]={
		{name="Voldrin's Hold",faction="A",npc="Salty McTavish",npcid=43295,x=69.48,y=75.32},
	},
},



-------------------
---   OUTLAND   ---
-------------------
[1945]={
	["Hellfire Peninsula"]={
		{name="Falcon Watch",faction="H",npc="Innalia",npcid=18942,x=27.80,y=59.98},
		{name="Honor Hold",faction="A",npc="Flightmaster Krill Bitterhue",npcid=16822,x=54.68,y=62.35},
		{name="Shatter Point",faction="A",npc="Runetog Wildhammer",npcid=20234,x=78.42,y=34.90},
		{name="Spinebreaker Ridge",faction="H",npc="Amilya Airheart",npcid=19558,x=61.65,y=81.20},
		{name="Temple of Telhamat",faction="A",npc="Kuma",npcid=18785,x=25.19,y=37.23},
		{name="Hellfire Peninsula, The Dark Portal",faction="A",npc="Amish Wildhammer",npcid=18931,x=87.36,y=52.42},
		{name="Hellfire Peninsula, The Dark Portal",faction="H",npc="Vlagga Freyfeather",npcid=18930,x=87.36,y=48.16},
		{name="Thrallmar",faction="H",npc="Barley",npcid=16587,x=56.29,y=36.24},
	},
	["Zangarmarsh"]={
		{name="Orebor Harborage",faction="A",npc="Halu",npcid=22485,x=41.28,y=29.00},
		{name="Swamprat Post",faction="H",npc="Gur'zil",npcid=20762,x=84.77,y=55.11},
		{name="Telredor",faction="A",npc="Munci",npcid=18788,x=67.83,y=51.46},
		{name="Zabra'jin",faction="H",npc="Du'ga",npcid=18791,x=33.07,y=51.07},
	},
	["Terokkar Forest"]={
		{name="Allerian Stronghold",faction="A",npc="Furnan Skysoar",npcid=18809,x=59.45,y=55.43},
		{name="Stonebreaker Hold",faction="H",npc="Kerna",npcid=18807,x=49.20,y=43.42},
	},
	["Shadowmoon Valley"]={
		{name="Altar of Sha'tar",faction="B",npc="Maddix",npcid=19581,x=63.33,y=30.40},
		{name="Sanctum of the Stars",faction="B",npc="Alieshor",npcid=21766,x=56.32,y=57.80},
		{name="Shadowmoon Village",faction="H",npc="Drek'Gol",npcid=19317,x=30.35,y=29.18},
		{name="Wildhammer Stronghold",faction="A",npc="Brubeck Stormfoot",npcid=18939,x=37.61,y=55.45},
	},
	["Nagrand"]={
		{name="Garadar",faction="H",npc="Gursha",npcid=18808,x=57.19,y=35.25},
		{name="Telaar",faction="A",npc="Furgu",npcid=18789,x=54.17,y=75.06},
	},
	["Blade's Edge Mountains"]={
		{name="Evergrove",faction="B",npc="Fhyn Leafshadow",npcid=22216,x=61.68,y=39.61},
		{name="Sylvanaar",faction="A",npc="Amerun Leafshade",npcid=18937,x=37.82,y=61.40},
		{name="Thunderlord Stronghold",faction="H",npc="Unoke Tenderhoof",npcid=18953,x=52.05,y=54.12},
		{name="Toshley's Station",faction="A",npc="Rip Pedalslam",npcid=21107,x=61.15,y=70.44},
	},
	["Netherstorm"]={
		{name="Area 52",faction="B",npc="Krexcil",npcid=18938,x=33.77,y=63.79},
		{name="Cosmowrench",faction="B",npc="Harpax",npcid=20515,x=65.20,y=66.81},
		{name="The Stormspire",faction="B",npc="Grennik",npcid=19583,x=45.31,y=34.87},
	},
	["Shattrath City"]={
		{name="Shattrath",faction="B",npc="Nutral",npcid=18940,x=64.07,y=41.11},
	}
},




---------------------
---   NORTHREND   ---
---------------------
[113]={
	["Borean Tundra"]={
		{name="Valiance Keep",faction="A",npc="Tomas Riverwell",npcid=26879,x=58.93,y=68.39},
		{name="Warsong Hold",faction="H",npc="Turida Coldwind",npcid=25288,x=40.36,y=51.40},
		{name="Transitus Shield",faction="B",npc="Warmage Adami",npcid=27046,x=33.10,y=34.42},
		{name="Amber Ledge",faction="B",npc="Surristrasz",npcid=24795,x=45.33,y=34.52},
		{name="Bor'gorok Outpost",faction="H",npc="Kimbiza",npcid=26848,x=49.65,y=11.05},
		{name="Fizzcrank Airstrip",faction="A",npc="Kara Thricestar",npcid=26602,x=56.54,y=20.01},
		{name="Unu'pe",faction="B",npc="Bilko Driftspark",npcid=28195,x=78.54,y=51.53},
		{name="Taunka'le Village",faction="H",npc="Omu Spiritbreeze",npcid=26847,x=77.76,y=37.77},
	},
	["Dragonblight"]={
		{name="Stars' Rest",faction="A",npc="Palena Silvercloud",npcid=26881,x=29.18,y=55.33},
		{name="Agmar's Hammer",faction="H",npc="Narzun Skybreaker",npcid=26566,x=37.52,y=45.76},
		{name="Fordragon Hold",faction="A",npc="Derek Rammel",npcid=26877,x=39.52,y=25.91},
		{name="Kor'kron Vanguard",faction="H",npc="Numo Spiritbreeze",npcid=26850,x=43.85,y=16.94},
		{name="Wyrmrest Temple",faction="B",npc="Nethestrasz",npcid=26851,x=60.32,y=51.55},
		{name="Wintergarde Keep",faction="A",npc="Rodney Wells",npcid=26878,x=77.06,y=49.81},
		{name="Venomspite",faction="H",npc="Junter Weiss",npcid=26845,x=76.48,y=62.21},
		{name="Moa'ki",faction="B",npc="Cid Flounderfix",npcid=28196,x=48.51,y=74.39},
	},
	["Crystalsong Forest"]={
		{name="Windrunner's Overlook",faction="A",npc="Galendror Whitewing",npcid=30271,x=72.16,y=80.96},
		{name="Sunreaver's Command",faction="H",npc="Skymaster Baeric",npcid=30269,x=78.53,y=50.42},
	},
	["Grizzly Hills"]={
		{name="Amberpine Lodge",faction="A",npc="Vana Grey",npcid=26880,x=31.31,y=59.11},
		{name="Conquest Hold",faction="H",npc="Kragh",npcid=26852,x=22.00,y=64.43},
		{name="Camp Oneqwah",faction="H",npc="Makki Wintergale",npcid=26853,x=64.96,y=46.93},
		{name="Westfall Brigade",faction="A",npc="Samuel Clearbook",npcid=26876,x=59.89,y=26.69},
	},
	["Howling Fjord"]={
		{name="Camp Winterhoof",faction="H",npc="Celea Frozenmane",npcid=24032,x=49.56,y=11.59},
		{name="Fort Wildervar",faction="A",npc="James Ormsby",npcid=24061,x=60.06,y=16.11},
		{name="Vengeance Landing",faction="H",npc="Adeline Chambers",npcid=27344,x=79.04,y=29.71},
		{name="Valgarde Port",faction="A",npc="Pricilla Winterwind",npcid=23736,x=59.79,y=63.24},
		{name="New Agamand",faction="H",npc="Tobias Sarkhoff",npcid=24155,x=52.01,y=67.38},
		{name="Kamagua",faction="B",npc="Kip Trawlskip",npcid=28197,x=24.66,y=57.77},
		{name="Westguard Keep",faction="A",npc="Greer Orehammer",npcid=23859,x=31.26,y=43.98},
		{name="Apothecary Camp",faction="H",npc="Lilleth Radescu",npcid=26844,x=25.98,y=25.07},
	},
	["Zul'Drak"]={
		{name="Light's Breach",faction="B",npc="Danica Saint",npcid=28618,x=32.18,y=74.39},
		{name="Ebon Watch",faction="B",npc="Baneflight",npcid=28615,x=14.00,y=73.59},
		{name="The Argent Stand",faction="B",npc=" Gurric",npcid=28623,x=41.55,y=64.43},
		{name="Zim'Torga",faction="B",npc="Maaka",npcid=28624,x=60.04,y=56.71},
		{name="Gundrak",faction="B",npc="Rafae",npcid=30569,x=70.47,y=23.29},
	},
	["The Storm Peaks"]={
		{name="K3",faction="B",npc="Skizzle Slickslide",npcid=29721,x=40.75,y=84.55},
		{name="Frosthold",faction="A",npc="Faldorf Bitterchill",npcid=29750,x=29.50,y=74.33},
		{name="Grom'arsh Crash-Site",faction="H",npc="Kabarg Windtamer",npcid=29757,x=36.19,y=49.39},
		{name="Dun Niffelem",faction="B",npc="Halvdan",npcid=32571,x=62.63,y=60.92},
		{name="Camp Tunka'lo",faction="H",npc="Hyeyoung Parka",npcid=29762,x=65.41,y=50.61},
		{name="Ulduar",faction="B",npc="Shavalius the Fancy",npcid=29951,x=44.49,y=28.19},
		{name="Bouldercrag's Refuge",faction="B",npc="Breck Rockbrow",npcid=29950,x=30.64,y=36.33},
	},
	["Icecrown"]={
		{name="Argent Tournament Grounds",faction="B",npc="Helidan Lightwing",npcid=33849,x=72.59,y=22.61},
		{name="The Shadow Vault",faction="B",npc="Morlia Doomwing",npcid=30314,x=43.75,y=24.37},
		{name="Death's Rise",faction="B",npc="Dreadwind",npcid=31078,x=19.33,y=47.77},
		{name="Crusaders' Pinnacle",faction="B",npc="Penumbrius",npcid=31069,x=79.41,y=72.37},
		{name="The Argent Vanguard",faction="B",npc="Aedan Moran",npcid=30433,x=87.80,y=78.07},
	},
	["Sholazar Basin"]={
		{name="River's Heart",faction="B",npc="Marvin Wobblesprocket",npcid=28574,x=50.13,y=61.36},
		{name="Nesingwary Base Camp",faction="B",npc="The Spirit of Gnomeregan",npcid=28037,x=25.22,y=58.53},
	},
	["Wintergrasp"]={
		{name="Warsong Camp",faction="H",npc="Herzo Safeflight",npcid=30870,x=21.62,y=34.95},
		{name="Valiance Landing Camp",faction="A",npc="Arzo Safeflight",npcid=30869,x=71.98,y=30.95},
	},
	["Dalaran"]={
		{name="Dalaran",faction="B",npc="Aludane Whitecloud",npcid=28674,x=72.18,y=45.78},
	}
}
}





-- NOTE: If two taxis have the same name but different factions then a factions field must be added in here. See Serpent's Spine.
-- If not then one of the taxis will be marked with the wrong faction so will not properly get neighbors that it should.
-- This data is regenerated when performing a Taxi Connections Dump. Any weird data edits may be lost. 





data.flightcost  = {
--------------------
---   KALIMDOR   ---
--------------------
	[1414] = {
		{
			nodeID = 94,
			name = "The Exodar",
			neighbors = {
				[93] = 89, -- Blood Watch, Bloodmyst Isle
				[27] = 101, -- Rut'theran Village, Teldrassil
				[624] = 40, -- Azure Watch, Azuremyst Isle
			},
		},
		{
			nodeID = 93,
			name = "Blood Watch, Bloodmyst Isle",
			neighbors = {
				[94] = 101, -- The Exodar
			},
		},
		{
			nodeID = 624,
			name = "Azure Watch, Azuremyst Isle",
			neighbors = {
				[94] = 41, -- The Exodar
			},
		},
		{
			nodeID = 38,
			name = "Shadowprey Village, Desolace",
			neighbors = {
				[22] = 178, -- Thunder Bluff, Mulgore
				[42] = 196, -- Camp Mojache, Feralas
				[29] = 199, -- Sun Rock Retreat, Stonetalon Mountains
				[368] = 83, -- Karnum's Glade, Desolace
				[366] = 77, -- Furien's Post, Desolace
				[370] = 91, -- Ethel Rethor, Desolace
				[568] = 71, -- Camp Ataya, Feralas
				[363] = 172, -- Malaka'jin, Stonetalon Mountains
			},
		},
		{
			nodeID = 457,
			name = "Darnassus, Teldrassil",
			neighbors = {
				[27] = 109, -- Rut'theran Village, Teldrassil
				[456] = 62, -- Dolanaar, Teldrassil
			},
		},
		{
			nodeID = 367,
			name = "Thargad's Camp, Desolace",
			neighbors = {
				[41] = 126, -- Feathermoon, Feralas
				[565] = 54, -- Dreamer's Rest, Feralas
				[370] = 63, -- Ethel Rethor, Desolace
				[37] = 102, -- Nijel's Point, Desolace
				[33] = 158, -- Thal'darah Overlook, Stonetalon Mountains
				[368] = 56, -- Karnum's Glade, Desolace
			},
		},
		{
			nodeID = 568,
			name = "Camp Ataya, Feralas",
			neighbors = {
				[38] = 68, -- Shadowprey Village, Desolace
				[569] = 78, -- Stonemaul Hold, Feralas
			},
		},
		{
			nodeID = 370,
			name = "Ethel Rethor, Desolace",
			neighbors = {
				[37] = 66, -- Nijel's Point, Desolace
				[368] = 39, -- Karnum's Glade, Desolace
				[38] = 80, -- Shadowprey Village, Desolace
				[366] = 17, -- Furien's Post, Desolace
				[369] = 52, -- Thunk's Abode, Desolace
				[367] = 52, -- Thargad's Camp, Desolace
			},
		},
		{
			nodeID = 366,
			name = "Furien's Post, Desolace",
			neighbors = {
				[368] = 38, -- Karnum's Glade, Desolace
				[38] = 68, -- Shadowprey Village, Desolace
				[370] = 10, -- Ethel Rethor, Desolace
				[42] = 249, -- Camp Mojache, Feralas
				[29] = 107, -- Sun Rock Retreat, Stonetalon Mountains
			},
		},
		{
			nodeID = 41,
			name = "Feathermoon, Feralas",
			neighbors = {
				[37] = 227, -- Nijel's Point, Desolace
				[73] = 118, -- Cenarion Hold, Silithus
				[565] = 55, -- Dreamer's Rest, Feralas
				[367] = 147, -- Thargad's Camp, Desolace
				[365] = 204, -- Farwatcher's Glen, Stonetalon Mountains
				[31] = 92, -- Shadebough, Feralas
				[26] = 495, -- Lor'danel, Darkshore
				[567] = 31, -- Tower of Estulan, Feralas
			},
		},
		{
			nodeID = 365,
			name = "Farwatcher's Glen, Stonetalon Mountains",
			neighbors = {
				[41] = 219, -- Feathermoon, Feralas
				[541] = 44, -- Mirkfallon Post, Stonetalon Mountains
				[364] = 115, -- Northwatch Expedition Base Camp, Stonetalon Mountains
				[37] = 63, -- Nijel's Point, Desolace
				[33] = 53, -- Thal'darah Overlook, Stonetalon Mountains
				[361] = 76, -- Windshear Hold, Stonetalon Mountains
			},
		},
		{
			nodeID = 565,
			name = "Dreamer's Rest, Feralas",
			neighbors = {
				[41] = 56, -- Feathermoon, Feralas
				[367] = 68, -- Thargad's Camp, Desolace
			},
		},
		{
			nodeID = 569,
			name = "Stonemaul Hold, Feralas",
			neighbors = {
				[72] = 106, -- Cenarion Hold, Silithus
				[568] = 66, -- Camp Ataya, Feralas
				[42] = 70, -- Camp Mojache, Feralas
			},
		},
		{
			nodeID = 368,
			name = "Karnum's Glade, Desolace",
			neighbors = {
				[38] = 83, -- Shadowprey Village, Desolace
				[366] = 39, -- Furien's Post, Desolace
				[370] = 40, -- Ethel Rethor, Desolace
				[369] = 29, -- Thunk's Abode, Desolace
				[29] = 91, -- Sun Rock Retreat, Stonetalon Mountains
				[367] = 49, -- Thargad's Camp, Desolace
				[37] = 56, -- Nijel's Point, Desolace
				[33] = 121, -- Thal'darah Overlook, Stonetalon Mountains
			},
		},
		{
			nodeID = 33,
			name = "Thal'darah Overlook, Stonetalon Mountains",
			neighbors = {
				[338] = 127, -- Blackfathom Camp, Ashenvale
				[541] = 41, -- Mirkfallon Post, Stonetalon Mountains
				[339] = 168, -- Grove of the Ancients, Darkshore
				[364] = 101, -- Northwatch Expedition Base Camp, Stonetalon Mountains
				[367] = 143, -- Thargad's Camp, Desolace
				[37] = 109, -- Nijel's Point, Desolace
				[28] = 171, -- Astranaar, Ashenvale
				[365] = 63, -- Farwatcher's Glen, Stonetalon Mountains
				[26] = 253, -- Lor'danel, Darkshore
				[351] = 87, -- Stardust Spire, Ashenvale
				[368] = 121, -- Karnum's Glade, Desolace
				[361] = 83, -- Windshear Hold, Stonetalon Mountains
			},
		},
		{
			nodeID = 567,
			name = "Tower of Estulan, Feralas",
			neighbors = {
				[41] = 34, -- Feathermoon, Feralas
				[31] = 61, -- Shadebough, Feralas
			},
		},
		{
			nodeID = 37,
			name = "Nijel's Point, Desolace",
			neighbors = {
				[32] = 308, -- Theramore, Dustwallow Marsh
				[41] = 232, -- Feathermoon, Feralas
				[367] = 81, -- Thargad's Camp, Desolace
				[365] = 52, -- Farwatcher's Glen, Stonetalon Mountains
				[364] = 81, -- Northwatch Expedition Base Camp, Stonetalon Mountains
				[351] = 105, -- Stardust Spire, Ashenvale
				[33] = 101, -- Thal'darah Overlook, Stonetalon Mountains
				[26] = 337, -- Lor'danel, Darkshore
				[370] = 49, -- Ethel Rethor, Desolace
				[368] = 50, -- Karnum's Glade, Desolace
				[369] = 31, -- Thunk's Abode, Desolace
				[361] = 73, -- Windshear Fortress, Stonetalon Mountains
			},
		},
		{
			nodeID = 360,
			name = "Cliffwalker Post, Stonetalon Mountains",
			neighbors = {
				[350] = 62, -- Hellscream's Watch, Ashenvale
				[540] = 21, -- The Sludgewerks, Stonetalon Mountains
				[29] = 43, -- Sun Rock Retreat, Stonetalon Mountains
				[58] = 50, -- Zoram'gar Outpost, Ashenvale
				[363] = 63, -- Malaka'jin, Stonetalon Mountains
				[362] = 44, -- Krom'gar Fortress, Stonetalon Mountains
			},
		},
		{
			nodeID = 369,
			name = "Thunk's Abode, Desolace",
			neighbors = {
				[368] = 56, -- Karnum's Glade, Desolace
				[370] = 63, -- Ethel Rethor, Desolace
				[22] = 46, -- Thunder Bluff, Mulgore
				[37] = 33, -- Nijel's Point, Desolace
			},
		},
		{
			nodeID = 29,
			name = "Sun Rock Retreat, Stonetalon Mountains",
			neighbors = {
				[38] = 143, -- Shadowprey Village, Desolace
				[25] = 150, -- The Crossroads, The Barrens
				[22] = 175, -- Thunder Bluff, Mulgore
				[58] = 121, -- Zoram'gar Outpost, Ashenvale
				[368] = 108, -- Karnum's Glade, Desolace
				[366] = 102, -- Furien's Post, Desolace
				[360] = 49, -- Cliffwalker Post, Stonetalon Mountains
				[350] = 110, -- Hellscream's Watch, Ashenvale
				[540] = 42, -- The Sludgewerks, Stonetalon Mountains
				[363] = 67, -- Malaka'jin, Stonetalon Mountains
				[362] = 43, -- Krom'gar Fortress, Stonetalon Mountains
			},
		},
		{
			nodeID = 58,
			name = "Zoram'gar Outpost, Ashenvale",
			neighbors = {
				[61] = 172, -- Splintertree Post, Ashenvale
				[25] = 235, -- The Crossroads, The Barrens
				[166] = 122, -- Emerald Sanctuary, Felwood
				[29] = 121, -- Sun Rock Retreat, Stonetalon Mountains
				[22] = 247, -- Thunder Bluff, Mulgore
				[360] = 73, -- Cliffwalker Post, Stonetalon Mountains
				[350] = 82, -- Hellscream's Watch, Ashenvale
			},
		},
		{
			nodeID = 541,
			name = "Mirkfallon Post, Stonetalon Mountains",
			neighbors = {
				[365] = 53, -- Farwatcher's Glen, Stonetalon Mountains
				[33] = 39, -- Thal'darah Overlook, Stonetalon Mountains
				[361] = 28, -- Windshear Fortress, Stonetalon Mountains
			},
		},
		{
			nodeID = 27,
			name = "Rut'theran Village, Teldrassil",
			neighbors = {
				[26] = 61, -- Lor'danel, Darkshore
				[94] = 100, -- The Exodar
				[457] = 111, -- Darnassus, Teldrassil
			},
		},
		{
			nodeID = 456,
			name = "Dolanaar, Teldrassil",
			neighbors = {
				[457] = 61, -- Darnassus, Teldrassil
			},
		},
		{
			nodeID = 72,
			name = "Cenarion Hold, Silithus",
			faction = "H",
			neighbors = {
				[42] = 130, -- Camp Mojache, Feralas
				[40] = 241, -- Gadgetzan, Tanaris
				[569] = 106, -- Stonemaul Hold, Feralas
				[386] = 77, -- Mossy Pile, Un'Goro Crater
				[79] = 120, -- Marshal's Stand, Un'Goro Crater
				[653] = 64, -- Oasis of Vir'sar, Uldum
			},
		},
		{
			nodeID = 73,
			name = "Cenarion Hold, Silithus",
			faction = "A",
			neighbors = {
				[39] = 188, -- Gadgetzan, Tanaris
				[41] = 120, -- Feathermoon, Feralas
				[386] = 72, -- Mossy Pile, Un'Goro Crater
				[79] = 113, -- Marshal's Stand, Un'Goro Crater
				[653] = 65, -- Oasis of Vir'sar, Uldum
			},
		},
		{
			nodeID = 540,
			name = "The Sludgewerks, Stonetalon Mountains",
			neighbors = {
				[360] = 31, -- Cliffwalker Post, Stonetalon Mountains
				[29] = 37, -- Sun Rock Retreat, Stonetalon Mountains
				[362] = 44, -- Krom'gar Fortress, Stonetalon Mountains
			},
		},
		{
			nodeID = 338,
			name = "Blackfathom Camp, Ashenvale",
			neighbors = {
				[339] = 69, -- Grove of the Ancients, Darkshore
				[166] = 110, -- Emerald Sanctuary, Felwood
				[28] = 60, -- Astranaar, Ashenvale
				[33] = 137, -- Thal'darah Overlook, Stonetalon Mountains
			},
		},
		{
			nodeID = 361,
			name = "Windshear Hold, Stonetalon Mountains",
			neighbors = {
				[351] = 57, -- Stardust Spire, Ashenvale
				[541] = 31, -- Mirkfallon Post, Stonetalon Mountains
				[364] = 58, -- Northwatch Expedition Base Camp, Stonetalon Mountains
				[37] = 62, -- Nijel's Point, Desolace
				[365] = 92, -- Farwatcher's Glen, Stonetalon Mountains
				[33] = 65, -- Thal'darah Overlook, Stonetalon Mountains
			},
		},
		{
			nodeID = 42,
			name = "Camp Mojache, Feralas",
			neighbors = {
				[22] = 259, -- Thunder Bluff, Mulgore
				[25] = 264, -- The Crossroads, The Barrens
				[38] = 200, -- Shadowprey Village, Desolace
				[72] = 130, -- Cenarion Hold, Silithus
				[40] = 201, -- Gadgetzan, Tanaris
				[569] = 66, -- Stonemaul Hold, Feralas
				[366] = 256, -- Furien's Post, Desolace
				[391] = 104, -- Desolation Hold, Southern Barrens
				[30] = 43, -- Westreach Summit, Thousand Needles
			},
		},
		{
			nodeID = 339,
			name = "Grove of the Ancients, Darkshore",
			neighbors = {
				[26] = 92, -- Lor'danel, Darkshore
				[338] = 65, -- Blackfathom Camp, Ashenvale
				[28] = 85, -- Astranaar, Ashenvale
				[33] = 162, -- Thal'darah Overlook, Stonetalon Mountains
				[595] = 58, -- Wildheart Point, Felwood
				[166] = 82, -- Emerald Sanctuary, Felwood
				[65] = 136, -- Talonbranch Glade, Felwood
			},
		},
		{
			nodeID = 31,
			name = "Shadebough, Feralas",
			neighbors = {
				[513] = 177, -- Fizzle & Pozzik's Speedbarge, Thousand Needles
				[179] = 134, -- Mudsprocket, Dustwallow Marsh
				[41] = 84, -- Feathermoon, Feralas
				[39] = 215, -- Gadgetzan, Tanaris
				[32] = 207, -- Theramore, Dustwallow Marsh
				[567] = 60, -- Tower of Estulan, Feralas
			},
		},
		{
			nodeID = 22,
			name = "Thunder Bluff, Mulgore",
			neighbors = {
				[29] = 181, -- Sun Rock Retreat, Stonetalon Mountains
				[38] = 159, -- Shadowprey Village, Desolace
				[25] = 103, -- The Crossroads, The Barrens
				[42] = 252, -- Camp Mojache, Feralas
				[55] = 238, -- Brackenwall Village, Dustwallow Marsh
				[40] = 290, -- Gadgetzan, Tanaris
				[58] = 264, -- Zoram'gar Outpost, Ashenvale
				[23] = 208, -- Orgrimmar, Durotar
				[44] = 316, -- Bilgewater Harbor, Azshara
				[30] = 210, -- Westreach Summit, Thousand Needles
				[369] = 66, -- Thunk's Abode, Desolace
				[363] = 54, -- Malaka'jin, Stonetalon Mountains
				[402] = 51, -- Bloodhoof Village, Mulgore
				[390] = 66, -- Hunter's Hill, Southern Barrens
				[77] = 85, -- Vendetta Point, The Barrens1
			},
		},
		{
			nodeID = 362,
			name = "Krom'gar Fortress, Stonetalon Mountains",
			neighbors = {
				[360] = 70, -- Cliffwalker Post, Stonetalon Mountains
				[540] = 47, -- The Sludgewerks, Stonetalon Mountains
				[356] = 77, -- Silverwind Refuge, Ashenvale
				[354] = 137, -- The Mor'Shan Ramparts, Ashenvale
				[29] = 46, -- Sun Rock Retreat, Stonetalon Mountains
				[363] = 68, -- Malaka'jin, Stonetalon Mountains
			},
		},
		{
			nodeID = 363,
			name = "Malaka'jin, Stonetalon Mountains",
			neighbors = {
				[38] = 164, -- Shadowprey Village, Desolace
				[360] = 111, -- Cliffwalker Post, Stonetalon Mountains
				[25] = 86, -- The Crossroads, The Barrens
				[29] = 74, -- Sun Rock Retreat, Stonetalon Mountains
				[22] = 47, -- Thunder Bluff, Mulgore
				[362] = 69, -- Krom'gar Fortress, Stonetalon Mountains
			},
		},
		{
			nodeID = 364,
			name = "Northwatch Expedition Base Camp, Stonetalon Mountains",
			neighbors = {
				[351] = 83, -- Stardust Spire, Ashenvale
				[361] = 61, -- Windshear Fortress, Stonetalon Mountains
				[37] = 67, -- Nijel's Point, Desolace
				[365] = 121, -- Farwatcher's Glen, Stonetalon Mountains
				[33] = 114, -- Thal'darah Overlook, Stonetalon Mountains
				[387] = 51, -- Honor's Stand, Southern Barrens
			},
		},
		{
			nodeID = 28,
			name = "Astranaar, Ashenvale",
			neighbors = {
				[167] = 135, -- Forest Song, Ashenvale
				[32] = 388, -- Theramore, Dustwallow Marsh
				[80] = 193, -- Ratchet, The Barrens
				[166] = 78, -- Emerald Sanctuary, Felwood
				[338] = 52, -- Blackfathom Camp, Ashenvale
				[339] = 88, -- Grove of the Ancients, Darkshore
				[33] = 176, -- Thal'darah Overlook, Stonetalon Mountains
				[26] = 205, -- Lor'danel, Darkshore
				[351] = 43, -- Stardust Spire, Ashenvale
			},
		},
		{
			nodeID = 351,
			name = "Stardust Spire, Ashenvale",
			neighbors = {
				[28] = 39, -- Astranaar, Ashenvale
				[37] = 94, -- Nijel's Point, Desolace
				[33] = 95, -- Thal'darah Overlook, Stonetalon Mountains
				[387] = 103, -- Honor's Stand, Southern Barrens
				[364] = 65, -- Northwatch Expedition Base Camp, Stonetalon Mountains
				[361] = 64, -- Windshear Hold, Stonetalon Mountains
			},
		},
		{
			nodeID = 26,
			name = "Lor'danel, Darkshore",
			neighbors = {
				[41] = 495, -- Feathermoon, Feralas
				[65] = 96, -- Talonbranch Glade, Felwood
				[33] = 267, -- Thal'darah Overlook, Stonetalon Mountains
				[32] = 502, -- Theramore, Dustwallow Marsh
				[49] = 92, -- Moonglade
				[339] = 93, -- Grove of the Ancients, Darkshore
				[37] = 348, -- Nijel's Point, Desolace
				[28] = 225, -- Astranaar, Ashenvale
				[27] = 61, -- Rut'theran Village, Teldrassil
			},
		},
		{
			nodeID = 402,
			name = "Bloodhoof Village, Mulgore",
			neighbors = {
				[22] = 50, -- Thunder Bluff, Mulgore
			},
		},
		{
			nodeID = 350,
			name = "Hellscream's Watch, Ashenvale",
			neighbors = {
				[166] = 91, -- Emerald Sanctuary, Felwood
				[61] = 106, -- Splintertree Post, Ashenvale
				[360] = 85, -- Cliffwalker Post, Stonetalon Mountains
				[354] = 120, -- The Mor'Shan Ramparts, Ashenvale
				[29] = 113, -- Sun Rock Retreat, Stonetalon Mountains
				[58] = 60, -- Zoram'gar Outpost, Ashenvale
				[356] = 47, -- Silverwind Refuge, Ashenvale
			},
		},
		{
			nodeID = 594,
			name = "Whisperwind Grove, Felwood",
			neighbors = {
				[597] = 41, -- Irontree Clearing, Felwood
				[166] = 90, -- Emerald Sanctuary, Felwood
				[595] = 60, -- Wildheart Point, Felwood
				[65] = 59, -- Talonbranch Glade, Felwood
			},
		},
		{
			nodeID = 595,
			name = "Wildheart Point, Felwood",
			neighbors = {
				[166] = 35, -- Emerald Sanctuary, Felwood
				[594] = 68, -- Whisperwind Grove, Felwood
				[339] = 52, -- Grove of the Ancients, Darkshore
			},
		},
		{
			nodeID = 30,
			name = "Westreach Summit, Thousand Needles",
			neighbors = {
				[179] = 83, -- Mudsprocket, Dustwallow Marsh
				[55] = 97, -- Brackenwall Village, Dustwallow Marsh
				[391] = 100, -- Desolation Hold, Southern Barrens
				[40] = 153, -- Gadgetzan, Tanaris
				[25] = 186, -- The Crossroads, The Barrens
				[513] = 118, -- Fizzle & Pozzik's Speedbarge, Thousand Needles
				[42] = 50, -- Camp Mojache, Feralas
				[22] = 215, -- Thunder Bluff, Mulgore
				[77] = 122, -- Vendetta Point, The Barrens
			},
		},
		{
			nodeID = 386,
			name = "Mossy Pile, Un'Goro Crater",
			neighbors = {
				[40] = 98, -- Gadgetzan, Tanaris
				[72] = 84, -- Cenarion Hold, Silithus
				[79] = 29, -- Marshal's Stand, Un'Goro Crater
				[39] = 97, -- Gadgetzan, Tanaris
				[73] = 83, -- Cenarion Hold, Silithus
			},
		},
		{
			nodeID = 356,
			name = "Silverwind Refuge, Ashenvale",
			neighbors = {
				[61] = 64, -- Splintertree Post, Ashenvale
				[350] = 43, -- Hellscream's Watch, Ashenvale
				[354] = 70, -- The Mor'Shan Ramparts, Ashenvale
				[362] = 77, -- Krom'gar Fortress, Stonetalon Mountains
			},
		},
		{
			nodeID = 166,
			name = "Emerald Sanctuary, Felwood",
			neighbors = {
				[58] = 114, -- Zoram'gar Outpost, Ashenvale
				[28] = 80, -- Astranaar, Ashenvale
				[61] = 83, -- Splintertree Post, Ashenvale
				[167] = 103, -- Forest Song, Ashenvale
				[65] = 128, -- Talonbranch Glade, Felwood
				[350] = 70, -- Hellscream's Watch, Ashenvale
				[594] = 97, -- Whisperwind Grove, Felwood
				[595] = 43, -- Wildheart Point, Felwood
				[338] = 96, -- Blackfathom Camp, Ashenvale
				[339] = 77, -- Grove of the Ancients, Darkshore
			},
		},
		{
			nodeID = 387,
			name = "Honor's Stand, Southern Barrens",
			neighbors = {
				[364] = 58, -- Northwatch Expedition Base Camp, Stonetalon Mountains
				[351] = 112, -- Stardust Spire, Ashenvale
				[389] = 103, -- Fort Triumph, Southern Barrens
				[80] = 85, -- Ratchet, The Barrens
				[388] = 100, -- Northwatch Hold, Southern Barrens
			},
		},
		{
			nodeID = 79,
			name = "Marshal's Stand, Un'Goro Crater",
			neighbors = {
				[40] = 93, -- Gadgetzan, Tanaris
				[72] = 126, -- Cenarion Hold, Silithus
				[386] = 38, -- Mossy Pile, Un'Goro Crater
				[39] = 91, -- Gadgetzan, Tanaris
				[73] = 121, -- Cenarion Hold, Silithus
			},
		},
		{
			nodeID = 390,
			name = "Hunter's Hill, Southern Barrens",
			neighbors = {
				[391] = 93, -- Desolation Hold, Southern Barrens
				[25] = 43, -- The Crossroads, The Barrens
				[22] = 66, -- Thunder Bluff, Mulgore
				[77] = 49, -- Vendetta Point, The Barrens
			},
		},
		{
			nodeID = 597,
			name = "Irontree Clearing, Felwood",
			neighbors = {
				[53] = 123, -- Everlook, Winterspring
				[69] = 76, -- Moonglade
				[594] = 41, -- Whisperwind Grove, Felwood
			},
		},
		{
			nodeID = 391,
			name = "Desolation Hold, Southern Barrens",
			neighbors = {
				[179] = 76, -- Mudsprocket, Dustwallow Marsh
				[55] = 47, -- Brackenwall Village, Dustwallow Marsh
				[30] = 101, -- Westreach Summit, Thousand Needles
				[42] = 97, -- Camp Mojache, Feralas
				[390] = 98, -- Hunter's Hill, Southern Barrens
				[77] = 48, -- Vendetta Point, The Barrens
			},
		},
		{
			nodeID = 65,
			name = "Talonbranch Glade, Felwood",
			neighbors = {
				[166] = 129, -- Emerald Sanctuary, Felwood
				[52] = 107, -- Everlook, Winterspring
				[49] = 67, -- Moonglade
				[339] = 121, -- Grove of the Ancients, Darkshore
				[26] = 115, -- Lor'danel, Darkshore
				[594] = 51, -- Whisperwind Grove, Felwood
			},
		},
		{
			nodeID = 69,
			name = "Moonglade",
			faction = "H",
			neighbors = {
				[53] = 141, -- Everlook, Winterspring
				[597] = 73, -- Irontree Clearing, Felwood
				[559] = 135, -- Nordrassil, Hyjal
			},
		},
		{
			nodeID = 49,
			name = "Moonglade",
			faction = "A",
			neighbors = {
				[52] = 119, -- Everlook, Winterspring
				[26] = 86, -- Lor'danel, Darkshore
				[559] = 140, -- Nordrassil, Hyjal
				[65] = 61, -- Talonbranch Glade, Felwood
			},
		},
		{
			nodeID = 62,
			name = "Nighthaven, Moonglade",
			faction = "A",
			neighbors = {
				[27] = 151, -- Rut'theran Village, Teldrassil
			},
		},
		{
			nodeID = 63,
			name = "Nighthaven, Moonglade",
			faction = "H",
			neighbors = {
				[22] = 400, -- Thunder Bluff, Mulgore
			},
		},
		{
			nodeID = 354,
			name = "The Mor'Shan Ramparts, Ashenvale",
			neighbors = {
				[458] = 58, -- Nozzlepot's Outpost, The Barrens
				[23] = 102, -- Orgrimmar, Durotar
				[61] = 46, -- Splintertree Post, Ashenvale
				[350] = 93, -- Hellscream's Watch, Ashenvale
				[25] = 65, -- The Crossroads, The Barrens
				[356] = 70, -- Silverwind Refuge, Ashenvale
				[362] = 143, -- Krom'gar Fortress, Stonetalon Mountains
			},
		},
		{
			nodeID = 389,
			name = "Fort Triumph, Southern Barrens",
			neighbors = {
				[179] = 66, -- Mudsprocket, Dustwallow Marsh
				[387] = 103, -- Honor's Stand, Southern Barrens
				[388] = 76, -- Northwatch Hold, Southern Barrens
			},
		},
		{
			nodeID = 531,
			name = "Dawnrise Expedition, Tanaris",
			neighbors = {
				[40] = 94, -- Gadgetzan, Tanaris
				[539] = 62, -- Bootlegger Outpost, Tanaris
				[652] = 72, -- Ramkahen, Uldum
			},
		},
		{
			nodeID = 61,
			name = "Splintertree Post, Ashenvale",
			neighbors = {
				[25] = 160, -- The Crossroads, The Barrens
				[58] = 167, -- Zoram'gar Outpost, Ashenvale
				[23] = 96, -- Orgrimmar, Durotar
				[166] = 85, -- Emerald Sanctuary, Felwood
				[683] = 71, -- Valormok, Azshara
				[44] = 158, -- Bilgewater Harbor, Azshara
				[350] = 82, -- Hellscream's Watch, Ashenvale
				[354] = 54, -- The Mor'Shan Ramparts, Ashenvale
				[356] = 58, -- Silverwind Refuge, Ashenvale
			},
		},
		{
			nodeID = 25,
			name = "The Crossroads, The Barrens",
			neighbors = {
				[29] = 151, -- Sun Rock Retreat, Stonetalon Mountains
				[80] = 52, -- Ratchet, The Barrens
				[55] = 163, -- Brackenwall Village, Dustwallow Marsh
				[42] = 252, -- Camp Mojache, Feralas
				[61] = 162, -- Splintertree Post, Ashenvale
				[22] = 107, -- Thunder Bluff, Mulgore
				[40] = 303, -- Gadgetzan, Tanaris
				[58] = 231, -- Zoram'gar Outpost, Ashenvale
				[23] = 117, -- Orgrimmar, Durotar
				[458] = 67, -- Nozzlepot's Outpost, The Barrens
				[44] = 228, -- Bilgewater Harbor, Azshara
				[30] = 188, -- Westreach Summit, Thousand Needles
				[354] = 63, -- The Mor'Shan Ramparts, Ashenvale
				[363] = 115, -- Malaka'jin, Stonetalon Mountains
				[390] = 49, -- Hunter's Hill, Southern Barrens
				[77] = 70, -- Vendetta Point, The Barrens
			},
		},
		{
			nodeID = 77,
			name = "Vendetta Point, The Barrens",
			neighbors = {
				[22] = 117, -- Thunder Bluff, Mulgore
				[390] = 56, -- Hunter's Hill, Southern Barrens
				[30] = 128, -- Westreach Summit, Thousand Needles
				[25] = 77, -- The Crossroads, The Barrens
				[55] = 62, -- Brackenwall Village, Dustwallow Marsh
				[391] = 45, -- Desolation Hold, Southern Barrens
			},
		},
		{
			nodeID = 55,
			name = "Brackenwall Village, Dustwallow Marsh",
			neighbors = {
				[22] = 224, -- Thunder Bluff, Mulgore
				[179] = 62, -- Mudsprocket, Dustwallow Marsh
				[80] = 90, -- Ratchet, The Barrens
				[25] = 162, -- The Crossroads, The Barrens
				[40] = 205, -- Gadgetzan, Tanaris
				[23] = 217, -- Orgrimmar, Durotar
				[391] = 56, -- Desolation Hold, Southern Barrens
				[30] = 111, -- Westreach Summit, Thousand Needles
				[77] = 60, -- Vendetta Point, The Barrens
			},
		},
		{
			nodeID = 532,
			name = "Gunstan's Dig, Tanaris",
			neighbors = {
				[39] = 87, -- Gadgetzan, Tanaris
				[539] = 50, -- Bootlegger Outpost, Tanaris
				[652] = 86, -- Ramkahen, Uldum
			},
		},
		{
			nodeID = 167,
			name = "Forest Song, Ashenvale",
			neighbors = {
				[28] = 142, -- Astranaar, Ashenvale
				[166] = 110, -- Emerald Sanctuary, Felwood
				[616] = 82, -- Gates of Sothann, Hyjal
			},
		},
		{
			nodeID = 179,
			name = "Mudsprocket, Dustwallow Marsh",
			neighbors = {
				[32] = 53, -- Theramore, Dustwallow Marsh
				[55] = 63, -- Brackenwall Village, Dustwallow Marsh
				[513] = 60, -- Fizzle & Pozzik's Speedbarge, Thousand Needles
				[513] = 60, -- Fizzle & Pozzik's Speedbarge, Thousand Needles
				[391] = 88, -- Desolation Hold, Southern Barrens
				[30] = 100, -- Westreach Summit, Thousand Needles
				[389] = 66, -- Fort Triumph, Southern Barrens
				[31] = 144, -- Shadebough, Feralas
			},
		},
		{
			nodeID = 458,
			name = "Nozzlepot's Outpost, The Barrens",
			neighbors = {
				[25] = 65, -- The Crossroads, The Barrens
				[354] = 58, -- The Mor'Shan Ramparts, Ashenvale
			},
		},
		{
			nodeID = 388,
			name = "Northwatch Hold, Southern Barrens",
			neighbors = {
				[387] = 104, -- Honor's Stand, Southern Barrens
				[389] = 78, -- Fort Triumph, Southern Barrens
				[32] = 73, -- Theramore, Dustwallow Marsh
				[80] = 46, -- Ratchet, The Barrens
			},
		},
		{
			nodeID = 39,
			name = "Gadgetzan, Tanaris",
			faction = "A",
			neighbors = {
				[532] = 89, -- Gunstan's Dig, Tanaris
				[73] = 198, -- Cenarion Hold, Silithus
				[79] = 96, -- Marshal's Stand, Un'Goro Crater
				[32] = 154, -- Theramore, Dustwallow Marsh
				[31] = 214, -- Shadebough, Feralas
				[80] = 247, -- Ratchet, The Barrens
				[386] = 105, -- Mossy Pile, Un'Goro Crater
				[539] = 54, -- Bootlegger Outpost, Tanaris
				[513] = 49, -- Fizzle & Pozzik's Speedbarge, Thousand Needles
			},
		},
		{
			nodeID = 80,
			name = "Ratchet, The Barrens",
			neighbors = {
				[32] = 105, -- Theramore, Dustwallow Marsh
				[25] = 68, -- The Crossroads, The Barrens
				[28] = 197, -- Astranaar, Ashenvale
				[55] = 101, -- Brackenwall Village, Dustwallow Marsh
				[40] = 241, -- Gadgetzan, Tanaris
				[23] = 104, -- Orgrimmar, Durotar
				[39] = 245, -- Gadgetzan, Tanaris
				[387] = 90, -- Honor's Stand, Southern Barrens
				[388] = 55, -- Northwatch Hold, Southern Barrens
			},
		},
		{
			nodeID = 40,
			name = "Gadgetzan, Tanaris",
			faction = "H",
			neighbors = {
				[55] = 194, -- Brackenwall Village, Dustwallow Marsh
				[42] = 199, -- Camp Mojache, Feralas
				[22] = 308, -- Thunder Bluff, Mulgore
				[25] = 300, -- The Crossroads, The Barrens
				[23] = 350, -- Orgrimmar, Durotar
				[80] = 243, -- Ratchet, The Barrens
				[72] = 233, -- Cenarion Hold, Silithus
				[531] = 98, -- Dawnrise Expedition, Tanaris
				[30] = 167, -- Westreach Summit, Thousand Needles
				[539] = 57, -- Bootlegger Outpost, Tanaris
				[79] = 100, -- Marshal's Stand, Un'Goro Crater
				[386] = 102, -- Mossy Pile, Un'Goro Crater
				[513] = 50, -- Fizzle & Pozzik's Speedbarge, Thousand Needles
			},
		},
		{
			nodeID = 513,
			name = "Fizzle & Pozzik's Speedbarge, Thousand Needles",
			faction = "H",
			neighbors = {
				[179] = 72, -- Mudsprocket, Dustwallow Marsh
				[40] = 39, -- Gadgetzan, Tanaris
				[30] = 132, -- Westreach Summit, Thousand Needles
			},
		},
		{
			nodeID = 513, --move this y coord by 1 to seperate horde and alliance
			name = "Fizzle & Pozzik's Speedbarge, Thousand Needles",
			faction = "A",
			neighbors = {
				[179] = 72, -- Mudsprocket, Dustwallow Marsh
				[39] = 43, -- Gadgetzan, Tanaris
				[31] = 180, -- Shadebough, Feralas
			},
		},
		{
			nodeID = 539,
			name = "Bootlegger Outpost, Tanaris",
			neighbors = {
				[531] = 64, -- Dawnrise Expedition, Tanaris
				[40] = 61, -- Gadgetzan, Tanaris
				[39] = 60, -- Gadgetzan, Tanaris
				[532] = 51, -- Gunstan's Dig, Tanaris
			},
		},
		{
			nodeID = 683,
			name = "Valormok, Azshara",
			neighbors = {
				[23] = 76, -- Orgrimmar, Durotar
				[44] = 86, -- Bilgewater Harbor, Azshara
				[61] = 80, -- Splintertree Post, Ashenvale
				[616] = 72, -- Gates of Sothann, Hyjal
			},
		},
		{
			nodeID = 23,
			name = "Orgrimmar, Durotar",
			neighbors = {
				[53] = 240, -- Everlook, Winterspring
				[22] = 225, -- Thunder Bluff, Mulgore
				[80] = 108, -- Ratchet, The Barrens
				[61] = 93, -- Splintertree Post, Ashenvale
				[55] = 228, -- Brackenwall Village, Dustwallow Marsh
				[40] = 417, -- Gadgetzan, Tanaris
				[537] = 55, -- Razor Hill, Durotar
				[25] = 108, -- The Crossroads, The Barrens
				[44] = 114, -- Bilgewater Harbor, Azshara
				[354] = 99, -- The Mor'Shan Ramparts, Ashenvale
				[613] = 93, -- Southern Rocketway, Azshara
				[616] = 117, -- Gates of Sothann, Hyjal
				[683] = 82, -- Valormok, Azshara
			},
		},
		{
			nodeID = 652, --Uldum
			name = "Ramkahen, Uldum",
			neighbors = {
				[532] = 80, -- Gunstan's Dig, Tanaris
				[653] = 83, -- Oasis of Vir'sar, Uldum
				[674] = 94, -- Schnottz's Landing, Uldum
				[531] = 68, --Dawnrise Expedition, Tanaris
			},
		},
		{
			nodeID = 653,
			name = "Oasis of Vir'sar, Uldum",
			neighbors = {
				[652] = 122, -- Ramkahen, Uldum
				[674] = 128, -- Schnottz's Landing, Uldum
				[73] = 102, -- Cenarion Hold, Silithus
				[72] = 108, -- Cenarion Hold, Silithus
			},
		},
		{
			nodeID = 674,
			name = "Schnottz's Landing, Uldum",
			neighbors = {
				[652] = 89, -- Ramkahen, Uldum
				[653] = 88, -- Oasis of Vir'sar, Uldum
			},
		},
		{
			nodeID = 559, -- Mount Hyjal
			name = "Nordrassil, Hyjal",
			neighbors = {
				[49] = 116, -- Moonglade
				[69] = 132, -- Moonglade
				[52] = 128, -- Everlook, Winterspring
				[53] = 123, -- Everlook, Winterspring
				[557] = 47, -- Shrine of Aviana, Hyjal
				[558] = 77, -- Grove of Aessina, Hyjal
			},
		},
		{
			nodeID = 557,
			name = "Shrine of Aviana, Hyjal",
			neighbors = {
				[559] = 46, -- Nordrassil, Hyjal
				[558] = 37, -- Grove of Aessina, Hyjal
				[616] = 61, -- Gates of Sothann, Hyjal
				[781] = 65, -- Sanctuary of Malorne, Hyjal
			},
		},
		{
			nodeID = 558,
			name = "Grove of Aessina, Hyjal",
			neighbors = {
				[559] = 81, -- Nordrassil, Hyjal
				[557] = 45, -- Shrine of Aviana, Hyjal
			},
		},
		{
			nodeID = 616,
			name = "Gates of Sothann, Hyjal",
			neighbors = {
				[557] =45 , -- Shrine of Aviana, Hyjal
				[167] = 42, -- Forest Song, Ashenvale
				[23] = 74, -- Orgrimmar, Durotar
				[683] = 37, -- Valormok, Azshara
			},
		},
		{
			nodeID = 781,
			name = "Sanctuary of Malorne, Hyjal	",
			neighbors = {
				[557] = 31, -- Shrine of Aviana, Hyjal
			},
		},
		{
			nodeID = 53, --Winterspring
			name = "Everlook, Winterspring",
			faction = "H",
			neighbors = {
				[69] = 134, -- Moonglade
				[23] = 243, -- Orgrimmar, Durotar
				[44] = 148, -- Bilgewater Harbor, Azshara
				[597] = 122, -- Irontree Clearing, Felwood
				[559] = 126, -- Nordrassil, Hyjal
			},
		},
		{
			nodeID = 52,
			name = "Everlook, Winterspring",
			faction = "A",
			neighbors = {
				[559] = 130, -- Nordrassil, Hyjal
				[49] = 110, -- Moonglade
				[65] = 107, -- Talonbranch Glade, Felwood
			},
		},
		{
			nodeID = 32, --
			name = "Theramore, Dustwallow Marsh",
			neighbors = {
				[28] = 369, -- Astranaar, Ashenvale
				[179] = 63, -- Mudsprocket, Dustwallow Marsh
				[37] = 334, -- Nijel's Point, Desolace
				[80] = 116, -- Ratchet, The Barrens
				[26] = 500, -- Lor'danel, Darkshore
				[39] = 157, -- Gadgetzan, Tanaris
				[388] = 81, -- Northwatch Hold, Southern Barrens
				[31] = 201, -- Shadebough, Feralas
			},
		},
		{
			nodeID = 537,
			name = "Razor Hill, Durotar",
			neighbors = {
				[536] = 36, -- Sen'jin Village, Durotar
				[23] = 60, -- Orgrimmar, Durotar
			},
		},
		{
			nodeID = 536,
			name = "Sen'jin Village, Durotar",
			neighbors = {
				[537] = 36, -- Razor Hill, Durotar
			},
		},
		{
			nodeID = 613,
			name = "Southern Rocketway, Azshara",
			neighbors = {
				[23] = 88, -- Orgrimmar, Durotar
				[44] = 39, -- Bilgewater Harbor, Azshara
			},
		},
		{
			nodeID = 44,
			name = "Bilgewater Harbor, Azshara",
			neighbors = {
				[614] = 53, -- Northern Rocketway, Azshara
				[613] = 33, -- Southern Rocketway, Azshara
				[683] = 83, -- Valormok, Azshara
				[25] = 234, -- The Crossroads, The Barrens
				[23] = 98, -- Orgrimmar, Durotar
				[61] = 149, -- Splintertree Post, Ashenvale
				[22] = 304, -- Thunder Bluff, Mulgore
				[53] = 150, -- Everlook, Winterspring
			},
		},
		{
			nodeID = 614,
			name = "Northern Rocketway, Azshara",
			neighbors = {
				[44] = 50, -- Bilgewater Harbor, Azshara
			},
		},
	},


----------------------------
---   EASTERN KINGDOMS   ---
----------------------------
	[1415] = {
		{
			nodeID = 523, --Vashj'ir
			name = "Tranquil Wash, Vashj'ir",
			taxioperator = "seahorse",
			neighbors = {
				[522] = 44, -- Silver Tide Hollow, Vashj'ir
				[524] = 69, -- Darkbreak Cove, Vashj'ir
				[611] = 60, -- Voldrin's Hold, Vashj'ir
			},
		},
		{
			nodeID = 524,
			name = "Darkbreak Cove, Vashj'ir",
			taxioperator = "seahorse",
			neighbors = {
				[611] = 80, -- Voldrin's Hold, Vashj'ir
				[523] = 63, -- Tranquil Wash, Vashj'ir
			},
		},
		{
			nodeID = 522,
			name = "Silver Tide Hollow, Vashj'ir",
			taxioperator = "seahorse",
			neighbors = {
				[607] = 58, -- Sandy Beach, Vashj'ir
				[521] = 72, -- Smuggler's Scar, Vashj'ir
				[523] = 44, -- Tranquil Wash, Vashj'ir
				[609] = 36, -- Sandy Beach, Vashj'ir
				[521] = 72, -- Smuggler's Scar, Vashj'ir
				[525] = 49, -- Legion's Rest, Vashj'ir
			},
		},
		{
			nodeID = 607,
			name = "Sandy Beach, Vashj'ir", --seahorse
			faction = "A",
			taxioperator = "seahorse",
			neighbors = {
				[522] = 61, -- Silver Tide Hollow, Vashj'ir
				[521] = 31, -- Smuggler's Scar, Vashj'ir
			},
		},
		{
			nodeID = 521,
			name = "Smuggler's Scar, Vashj'ir",
			neighbors = {
				[607] = 34, -- Sandy Beach, Vashj'ir
				[522] = 84, -- Silver Tide Hollow, Vashj'ir
			},
		},
		{
			nodeID = 611,
			name = "Voldrin's Hold, Vashj'ir", -- seahorse
			taxioperator = "seahorse",
			neighbors = {
				[523] = 46, -- Tranquil Wash, Vashj'ir
				[524] = 81, -- Darkbreak Cove, Vashj'ir
			},
		},
		{
			nodeID = 606,
			name = "Sandy Beach, Vashj'ir", -- flightpath
			faction = "A",
			neighbors = {
				[6] =  189, -- Ironforge, Dun Morogh
				[605] = 68, -- Voldrin's Hold, Vashj'ir
			},
		},
		{
			nodeID = 605,
			name = "Voldrin's Hold, Vashj'ir", -- flightpath
			neighbors = {
				[606] = 70, -- Sandy Beach, Vashj'ir
			},
		},
		{
			nodeID = 526,
			name = "Tenebrous Cavern, Vashj'ir",
			taxioperator = "seahorse",
			neighbors = {
				[525] = 78, -- Legion's Rest, Vashj'ir
				[612] = 73, -- Stygian Bounty, Vashj'ir
			},
		},
		{
			nodeID = 525,
			name = "Legion's Rest, Vashj'ir",
			taxioperator = "seahorse",
			neighbors = {
				[522] = 50, -- Silver Tide Hollow, Vashj'ir
				[612] = 28, -- Stygian Bounty, Vashj'ir
				[526]  = 72, -- Tenebrous Cavern, Vashj'ir
			},
		},
		{
			nodeID = 612,
			name = "Stygian Bounty, Vashj'ir", -- Seahorse
			taxioperator = "seahorse",
			neighbors = {
				[525] = 33, -- Legion's Rest, Vashj'ir
				[526]  = 77, -- Tenebrous Cavern, Vashj'ir
			},
		},
		{
			nodeID = 610,
			name = "Stygian Bounty, Vashj'ir", -- Flight
			faction = "H",
			neighbors = {
				[608] = 50, -- Sandy Beach, Vashj'ir
			},
		},
		{
			nodeID = 608,
			name = "Sandy Beach, Vashj'ir", --Flight
			faction = "H",
			neighbors = {
				[610] = 46, -- Stygian Bounty, Vashj'ir
				[11] = 358, -- Undercity, Tirisfal
			},
		},
		{
			nodeID = 609,
			name = "Sandy Beach, Vashj'ir", --Seahorse
			faction = "H",
			taxioperator = "seahorse",
			neighbors = {
				[522] = 44, -- Silver Tide Hollow, Vashj'ir
				[521] = 40, -- Smuggler's Scar, Vashj'ir
			},
		},
		{
			nodeID = 521,
			name = "Smuggler's Scar, Vashj'ir",
			taxioperator = "seahorse",
			neighbors = {
				[609] = 43, -- Sandy Beach, Vashj'ir
				[522] = 84, -- Silver Tide Hollow, Vashj'ir
			},
		},

		{
			nodeID = 10, --
			name = "The Sepulcher, Silverpine Forest",
			neighbors = {
				[11] = 122, -- Undercity, Tirisfal
				[13] = 97, -- Tarren Mill, Hillsbrad
				[654] = 25, -- The Forsaken Front, Silverpine Forest
				[681] = 51, -- Forsaken Rear Guard, Silverpine Forest
				[645] = 54, -- Forsaken High Command, Silverpine Forest
			},
		},
		{
			nodeID = 583,
			name = "Moonbrook, Westfall",
			neighbors = {
				[4] = 27, -- Sentinel Hill, Westfall
			},
		},
		{
			nodeID = 654,
			name = "The Forsaken Front, Silverpine Forest",
			neighbors = {
				[10] = 36, -- The Sepulcher, Silverpine Forest
				[668] = 38, -- Southpoint Gate, Hillsbrad
			},
		},
		{
			nodeID = 584,
			name = "Furlbrow's Pumpkin Farm, Westfall",
			neighbors = {
				[2] = 59, -- Stormwind, Elwynn
				[4] = 28, -- Sentinel Hill, Westfall
			},
		},
		{
			nodeID = 4,
			name = "Sentinel Hill, Westfall",
			neighbors = {
				[2] = 86, -- Stormwind, Elwynn
				[19] = 186, -- Booty Bay, Stranglethorn
				[195] = 62, -- Rebel Camp, Northern Stranglethorn
				[12] = 97, -- Darkshire, Duskwood
				[5] = 130, -- Lakeshire, Redridge
				[584] = 33, -- Furlbrow's Pumpkin Farm, Westfall
				[622] = 31, -- Raven Hill, Duskwood
				[583] = 25, -- Moonbrook, Westfall
			},
		},
		{
			nodeID = 592,
			name = "Hardwrench Hideaway, Stranglethorn",
			neighbors = {
				[20] = 39, -- Grom'gol, Stranglethorn
				[18] = 48, -- Booty Bay, Stranglethorn
				[593] = 73, -- Bambala, Stranglethorn
			},
		},
		{
			nodeID = 18,
			name = "Booty Bay, Stranglethorn",
			faction = "H",
			neighbors = {
				[56] = 238, -- Stonard, Swamp of Sorrows
				[20] = 76, -- Grom'gol, Stranglethorn
				[592] = 41, -- Hardwrench Hideaway, Stranglethorn
				[21] = 309, -- New Kargath, Badlands
				[603] = 170, -- Sunveil Excursion, Blasted Lands
			},
		},
		{
			nodeID = 2,
			name = "Stormwind, Elwynn",
			neighbors = {
				[12] = 117, -- Darkshire, Duskwood
				[71] = 150, -- Morgan's Vigil, Burning Steppes
				[19] = 199, -- Booty Bay, Stranglethorn
				[45] = 176, -- Nethergarde Keep, Blasted Lands
				[5] = 113, -- Lakeshire, Redridge
				[74] = 133, -- Thorium Point, Searing Gorge
				[195] = 93, -- Rebel Camp, Northern Stranglethorn
				[6] = 216, -- Ironforge, Dun Morogh
				[4] = 78, -- Sentinel Hill, Westfall
				[582] = 32, -- Goldshire, Elwynn
				[584] = 50, -- Furlbrow's Pumpkin Farm, Westfall
			},
		},
		{
			nodeID = 19,
			name = "Booty Bay, Stranglethorn",
			faction = "A",
			neighbors = {
				[12] = 166, -- Darkshire, Duskwood
				[195] = 118, -- Rebel Camp, Northern Stranglethorn
				[2] = 199, -- Stormwind, Elwynn
				[4] = 148, -- Sentinel Hill, Westfall
				[591] = 50, -- Explorers' League Digsite, Stranglethorn
				[602] = 144, -- Surwich, Blasted Lands
			},
		},
		{
			nodeID = 668,
			name = "Southpoint Gate, Hillsbrad",
			neighbors = {
				[654] = 39, -- The Forsaken Front, Silverpine Forest
				[667] = 37, -- Ruins of Southshore, Hillsbrad
			},
		},
		{
			nodeID = 460,
			name = "Brill, Tirisfal Glades",
			neighbors = {
				[384] = 45, -- The Bulwark, Tirisfal
				[11] = 59, -- Undercity, Tirisfal
				[645] = 45, -- Forsaken High Command, Silverpine Forest
			},
		},
		{
			nodeID = 681,
			name = "Forsaken Rear Guard, Silverpine Forest",
			neighbors = {
				[10] = 31, -- The Sepulcher, Silverpine Forest
				[645] = 25, -- Forsaken High Command, Silverpine Forest
			},
		},
		{
			nodeID = 645,
			name = " Forsaken High Command, Silverpine Forest",
			neighbors = {
				[460] = 50, -- Brill, Tirisfal Glades
				[11] = 75, -- Undercity, Tirisfal
				[681] = 28, -- Forsaken Rear Guard, Silverpine Forest
				[10] = 40, -- The Sepulcher, Silverpine Forest
			},
		},
		{
			nodeID = 622,
			name = "Raven Hill, Duskwood",
			neighbors = {
				[12] = 63, -- Darkshire, Duskwood
				[4] = 43, -- Sentinel Hill, Westfall
				[195] = 40, -- Rebel Camp, Northern Stranglethorn
			},
		},
		{
			nodeID = 11,
			name = "Undercity, Tirisfal",
			neighbors = {
				[10] = 100, -- The Sepulcher, Silverpine Forest
				[17] = 301, -- Hammerfall, Arathi
				[76] = 272, -- Revantusk Village, The Hinterlands
				[68] = 262, -- Light's Hope Chapel, Eastern Plaguelands
				[13] = 145, -- Tarren Mill, Hillsbrad
				[601] = 248, -- Galen's Fall, Arathi
				[460] = 62, -- Brill, Tirisfal Glades
				[383] = 157, -- Thondroril River, Eastern Plaguelands
				[21] = 476, -- New Kargath, Badlands
				[384] = 89, -- The Bulwark, Tirisfal
				[608] = 345, -- Sandy Beach, Vashj'ir
				[645] = 67, -- Forsaken High Command, Silverpine Forest
			},
		},
		{
			nodeID = 20,
			name = "Grom'gol, Stranglethorn",
			neighbors = {
				[70] = 198, -- Flame Crest, Burning Steppes
				[18] = 78, -- Booty Bay, Stranglethorn
				[56] = 173, -- Stonard, Swamp of Sorrows
				[592] = 39, -- Hardwrench Hideaway, Stranglethorn
				[21] = 243, -- New Kargath, Badlands
				[593] = 57, -- Bambala, Stranglethorn
			},
		},
		{
			nodeID = 582,
			name = "Goldshire, Elwynn",
			neighbors = {
				[2] = 26, -- Stormwind, Elwynn
				[12] = 68, -- Darkshire, Duskwood
				[589] = 57, -- Eastvale Logging Camp, Elwynn
			},
		},
		{
			nodeID = 591,
			name = "Explorers' League Digsite, Stranglethorn",
			neighbors = {
				[19] = 53, -- Booty Bay, Stranglethorn
				[590] = 46, -- Fort Livingston, Stranglethorn
			},
		},
		{
			nodeID = 195,
			name = "Rebel Camp, Northern Stranglethorn",
			neighbors = {
				[2] = 98, -- Stormwind, Elwynn
				[19] = 116, -- Booty Bay, Stranglethorn
				[12] = 48, -- Darkshire, Duskwood
				[4] = 66, -- Sentinel Hill, Westfall
				[622] = 39, -- Raven Hill, Duskwood
				[590] = 54, -- Fort Livingston, Stranglethorn
			},
		},
		{
			nodeID = 590,
			name = "Fort Livingston, Stranglethorn",
			neighbors = {
				[195] = 55, -- Rebel Camp, Northern Stranglethorn
				[591] = 44, -- Explorers' League Digsite, Stranglethorn
			},
		},
		{
			nodeID = 619,
			name = "Kharanos, Dun Morogh",
			neighbors = {
				[6] = 46, -- Ironforge, Dun Morogh
				[620] = 47, -- Gol'Bolar Quarry, Dun Morogh
			},
		},
		{
			nodeID = 667,
			name = "Ruins of Southshore, Hillsbrad",
			neighbors = {
				[13] = 28, -- Tarren Mill, Hillsbrad
				[668] = 45, -- Southpoint Gate, Hillsbrad
				[669] = 19, -- Eastpoint Tower, Hillsbrad
			},
		},
		{
			nodeID = 384,
			name = "The Bulwark, Tirisfal",
			neighbors = {
				[11] = 89, -- Undercity, Tirisfal
				[460] = 48, -- Brill, Tirisfal Glades
				[670] = 45, -- Strahnbrad, Alterac Mountains
				[383] = 73, -- Thondroril River, Eastern Plaguelands
				[649] = 35, -- Andorhal, Western Plaguelands
				[13] = 74, -- Tarren Mill, Hillsbrad
			},
		},
		{
			nodeID = 7,
			name = "Menethil Harbor, Wetlands",
			neighbors = {
				[6] = 90, -- Ironforge, Dun Morogh
				[8] = 163, -- Thelsamar, Loch Modan
				[16] = 113, -- Refuge Pointe, Arathi
				[551] = 47, -- Whelgar's Retreat, Wetlands
			},
		},
		{
			nodeID = 593,
			name = "Bambala, Stranglethorn",
			neighbors = {
				[20] = 48, -- Grom'gol, Stranglethorn
				[592] = 70, -- Hardwrench Hideaway, Stranglethorn
			},
		},
		{
			nodeID = 13,
			name = "Tarren Mill, Hillsbrad",
			neighbors = {
				[76] = 162, -- Revantusk Village, The Hinterlands
				[17] = 118, -- Hammerfall, Arathi
				[10] = 104, -- The Sepulcher, Silverpine Forest
				[11] = 139, -- Undercity, Tirisfal
				[384] = 69, -- The Bulwark, Tirisfal
				[667] = 30, -- Ruins of Southshore, Hillsbrad
				[670] = 28, -- Strahnbrad, Alterac Mountains
				[383] = 108, -- Thondroril River, Eastern Plaguelands
				[669] = 25, -- Eastpoint Tower, Hillsbrad
				[617] = 104, -- Hiri'watha Research Station, The Hinterlands
			},
		},
		{
			nodeID = 670,
			name = "Strahnbrad, Alterac Mountains",
			neighbors = {
				[384] = 49, -- The Bulwark, Tirisfal
				[13] = 32, -- Tarren Mill, Hillsbrad
			},
		},
		{
			nodeID = 675,
			name = "Flamestar Post, Burning Steppes",
			neighbors = {
				[676] = 36, -- Chiselgrip, Burning Steppes
				[673] = 45, -- Iron Summit, Searing Gorge
			},
		},
		{
			nodeID = 669,
			name = "Eastpoint Tower, Hillsbrad",
			neighbors = {
				[601] = 32, -- Galen's Fall, Arathi
				[13] = 22, -- Tarren Mill, Hillsbrad
				[667] = 25, -- Ruins of Southshore, Hillsbrad
			},
		},
		{
			nodeID = 75,
			name = "Thorium Point, Searing Gorge",
			faction = "H",
			neighbors = {
				[70] = 61, -- Flame Crest, Burning Steppes
				[673] = 24, -- Iron Summit, Searing Gorge
				[21] = 67, -- New Kargath, Badlands
			},
		},
		{
			nodeID = 74,
			name = "Thorium Point, Searing Gorge",
			faction = "A",
			neighbors = {
				[8] = 88, -- Thelsamar, Loch Modan
				[2] = 126, -- Stormwind, Elwynn
				[6] = 89, -- Ironforge, Dun Morogh
				[71] = 90, -- Morgan's Vigil, Burning Steppes
				[673] = 25, -- Iron Summit, Searing Gorge
			},
		},
		{
			nodeID = 6,
			name = "Ironforge, Dun Morogh",
			neighbors = {
				[16] = 204, -- Refuge Pointe, Arathi
				[67] = 349, -- Light's Hope Chapel, Eastern Plaguelands
				[2] = 211, -- Stormwind, Elwynn
				[66] = 257, -- Chillwind Camp, Western Plaguelands
				[43] = 240, -- Aerie Peak, The Hinterlands
				[8] = 102, -- Thelsamar, Loch Modan
				[7] = 115, -- Menethil Harbor, Wetlands
				[74] = 85, -- Thorium Point, Searing Gorge
				[213] = 675, -- Shattered Sun Snodetaging Area
				[607] = 187, -- Sandy Beach, Vashj'ir
				[620] = 56, -- Gol'Bolar Quarry, Dun Morogh
				[619] = 46, -- Kharanos, Dun Morogh
				[658] = 228, -- Vermillion Redoubt, Twilight Highlands
				[606] = 0, -- Sandy Beach, Vashj'ir
			},
		},
		{
			nodeID = 673,
			name = "Iron Summit, Searing Gorge",
			neighbors = {
				[675] = 47, -- Flamestar Post, Burning Steppes
				[75] = 25, -- Thorium Point, Searing Gorge
				[74] = 25, -- Thorium Point, Searing Gorge
			},
		},
		{
			nodeID = 12,
			name = "Darkshire, Duskwood",
			neighbors = {
				[2] = 88, -- Stormwind, Elwynn
				[195] = 47, -- Rebel Camp, Northern Stranglethorn
				[19] = 171, -- Booty Bay, Stranglethorn
				[45] = 97, -- Nethergarde Keep, Blasted Lands
				[5] = 60, -- Lakeshire, Redridge
				[4] = 93, -- Sentinel Hill, Westfall
				[582] = 68, -- Goldshire, Elwynn
				[622] = 63, -- Raven Hill, Duskwood
			},
		},
		{
			nodeID = 650,
			name = "Andorhal, Western Plaguelands",
			faction = "A",
			neighbors = {
				[651] = 25, -- The Menders' Stead, Western Plaguelands
				[43] = 80, -- Aerie Peak, The Hinterlands
				[66] = 19, -- Chillwind Camp, Western Plaguelands
			},
		},
		{
			nodeID = 589,
			name = "Eastvale Logging Camp, Elwynn",
			neighbors = {
				[582] = 53, -- Goldshire, Elwynn
				[5] = 41, -- Lakeshire, Redridge
			},
		},
		{
			nodeID = 66,
			name = "Chillwind Camp, Western Plaguelands",
			neighbors = {
				[67] = 146, -- Light's Hope Chapel, Eastern Plaguelands
				[43] = 65, -- Aerie Peak, The Hinterlands
				[6] = 260, -- Ironforge, Dun Morogh
				[650] = 26, -- Andorhal, Western Plaguelands
				[651] = 42, -- The Menders' Stead, Western Plaguelands
				[383] = 59, -- Thondroril River, Eastern Plaguelands
			},
		},
		{
			nodeID = 672,
			name = "Hearthglen, Western Plaguelands",
			neighbors = {
				[84] = 61, -- Plaguewood Tower, Eastern Plaguelands
				[651] = 45, -- The Menders' Stead, Western Plaguelands
			},
		},
		{
			nodeID = 620,
			name = "Gol'Bolar Quarry, Dun Morogh",
			neighbors = {
				[6] = 69, -- Ironforge, Dun Morogh
				[619] = 44, -- Kharanos, Dun Morogh
			},
		},
		{
			nodeID = 601,
			name = "Galen's Fall, Arathi",
			neighbors = {
				[11] = 199, -- Undercity, Tirisfal
				[669] = 34, -- Eastpoint Tower, Hillsbrad
				[17] = 74, -- Hammerfall, Arathi
			},
		},
		{
			nodeID = 649,
			name = "Andorhal, Western Plaguelands",
			faction = "H",
			neighbors = {
				[384] = 37, -- The Bulwark, Tirisfal
				[651] = 16, -- The Menders' Stead, Western Plaguelands
				[617] = 90, -- Hiri'watha Research Station, The Hinterlands
			},
		},
		{
			nodeID = 651,
			name = "The Menders' Stead, Western Plaguelands",
			neighbors = {
				[383] = 37, -- Thondroril River, Eastern Plaguelands
				[66] = 43, -- Chillwind Camp, Western Plaguelands
				[649] = 26, -- Andorhal, Western Plaguelands
				[672] = 44, -- Hearthglen, Western Plaguelands
				[650] = 29, -- Andorhal, Western Plaguelands
			},
		},
		{
			nodeID = 676,
			name = "Chiselgrip, Burning Steppes",
			neighbors = {
				[71] = 39, -- Morgan's Vigil, Burning Steppes
				[675] = 35, -- Flamestar Post, Burning Steppes
				[70] = 17, -- Flame Crest, Burning Steppes
			},
		},
		{
			nodeID = 43,
			name = "Aerie Peak, The Hinterlands",
			neighbors = {
				[66] = 57, -- Chillwind Camp, Western Plaguelands
				[67] = 164, -- Light's Hope Chapel, Eastern Plaguelands
				[6] = 256, -- Ironforge, Dun Morogh
				[16] = 75, -- Refuge Pointe, Arathi
				[618] = 80, -- Stormfeather Outpost, The Hinterlands
				[650] = 70, -- Andorhal, Western Plaguelands
			},
		},
		{
			nodeID = 551,
			name = "Whelgar's Retreat, Wetlands",
			neighbors = {
				[7] = 53, -- Menethil Harbor, Wetlands
				[553] = 29, -- Dun Modr, Wetlands
				[552] = 30, -- Greenwarden's Grove, Wetlands
			},
		},
		{
			nodeID = 70,
			name = "Flame Crest, Burning Steppes",
			neighbors = {
				[56] = 192, -- Stonard, Swamp of Sorrows
				[20] = 206, -- Grom'gol, Stranglethorn
				[75] = 61, -- Thorium Point, Searing Gorge
				[21] = 82, -- New Kargath, Badlands
				[599] = 108, -- Bogpaddle, Swamp of Sorrows
				[676] = 17, -- Chiselgrip, Burning Steppes
			},
		},
		{
			nodeID = 5,
			name = "Lakeshire, Redridge",
			neighbors = {
				[2] = 113, -- Stormwind, Elwynn
				[71] = 61, -- Morgan's Vigil, Burning Steppes
				[12] = 61, -- Darkshire, Duskwood
				[4] = 134, -- Sentinel Hill, Westfall
				[600] = 47, -- The Harborage, Swamp of Sorrows
				[615] = 21, -- Camp Everstill, Redridge
				[589] = 39, -- Eastvale Logging Camp, Elwynn
			},
		},
		{
			nodeID = 21,
			name = "New Kargath, Badlands",
			neighbors = {
				[11] = 470, -- Undercity, Tirisfal
				[75] = 63, -- Thorium Point, Searing Gorge
				[635] = 57, -- Fuselight, Badlands
				[632] = 45, -- Bloodwatcher Point, Badlands
				[17] = 252, -- Hammerfall, Arathi
				[56] = 228, -- Stonard, Swamp of Sorrows
				[70] = 73, -- Flame Crest, Burning Steppes
				[18] = 301, -- Booty Bay, Stranglethorn
				[20] = 243, -- Grom'gol, Stranglethorn
				[661] = 251, -- Dragonmaw Port, Twilight Highlands
				[658] = 189, -- Vermillion Redoubt, Twilight Highlands
			},
		},
		{
			nodeID = 553,
			name = "Dun Modr, Wetlands",
			neighbors = {
				[551] = 33, -- Whelgar's Retreat, Wetlands
				[16] = 52, -- Refuge Pointe, Arathi
				[552] = 36, -- Greenwarden's Grove, Wetlands
			},
		},
		{
			nodeID = 16,
			name = "Refuge Pointe, Arathi",
			neighbors = {
				[43] = 72, -- Aerie Peak, The Hinterlands
				[7] = 126, -- Menethil Harbor, Wetlands
				[8] = 170, -- Thelsamar, Loch Modan
				[6] = 271, -- Ironforge, Dun Morogh
				[553] = 59, -- Dun Modr, Wetlands
				[618] = 85, -- Stormfeather Outpost, The Hinterlands
				[658] = 146, -- Vermillion Redoubt, Twilight Highlands
			},
		},
		{
			nodeID = 634,
			name = "Dragon's Mouth, Badlands",
			neighbors = {
				[635] = 54, -- Fuselight, Badlands
				[633] = 35, -- Dustwind Dig, Badlands
				[71] = 55, -- Morgan's Vigil, Burning Steppes
			},
		},
		{
			nodeID = 383,
			name = "Thondroril River, Eastern Plaguelands",
			neighbors = {
				[68] = 101, -- Light's Hope Chapel, Eastern Plaguelands
				[67] = 101, -- Light's Hope Chapel, Eastern Plaguelands
				[66] = 58, -- Chillwind Camp, Western Plaguelands
				[384] = 77, -- The Bulwark, Tirisfal
				[11] = 161, -- Undercity, Tirisfal
				[651] = 39, -- The Menders' Stead, Western Plaguelands
				[87] = 45, -- Crown Guard Tower, Eastern Plaguelands
				[13] = 100, -- Tarren Mill, Hillsbrad
				[617] = 86, -- Hiri'watha Research Station, The Hinterlands
				[618] = 109, -- Stormfeather Outpost, The Hinterlands
			},
		},
		{
			nodeID = 552,
			name = "Greenwarden's Grove, Wetlands",
			neighbors = {
				[553] = 28, -- Dun Modr, Wetlands
				[551] = 26, -- Whelgar's Retreat, Wetlands
				[554] = 33, -- Slabchisel's Survey, Wetlands
				[658] = 68, -- Vermillion Redoubt, Twilight Highlands
			},
		},
		{
			nodeID = 71,
			name = "Morgan's Vigil, Burning Steppes",
			neighbors = {
				[74] = 91, -- Thorium Point, Searing Gorge
				[45] = 197, -- Nethergarde Keep, Blasted Lands
				[2] = 151, -- Stormwind, Elwynn
				[5] = 63, -- Lakeshire, Redridge
				[634] = 55, -- Dragon's Mouth, Badlands
				[599] = 77, -- Bogpaddle, Swamp of Sorrows
				[676] = 43, -- Chiselgrip, Burning Steppes
			},
		},
		{
			nodeID = 554,
			name = "Slabchisel's Survey, Wetlands",
			neighbors = {
				[552] = 33, -- Greenwarden's Grove, Wetlands
				[8] = 60, -- Thelsamar, Loch Modan
			},
		},
		{
			nodeID = 604,
			name = "Dreadmaul Hold, Blasted Lands",
			neighbors = {
				[56] = 44, -- Stonard, Swamp of Sorrows
				[603] = 56, -- Sunveil Excursion, Blasted Lands
			},
		},
		{
			nodeID = 615,
			name = "Camp Everstill, Redridge",
			neighbors = {
				[596] = 33, -- Shalewind Canyon, Redridge
				[5] = 24, -- Lakeshire, Redridge
			},
		},
		{
			nodeID = 617,
			name = "Hiri'watha Research Station, The Hinterlands",
			neighbors = {
				[76] = 85, -- Revantusk Village, The Hinterlands
				[13] = 81, -- Tarren Mill, Hillsbrad
				[383] = 82, -- Thondroril River, Eastern Plaguelands
				[649] = 74, -- Andorhal, Western Plaguelands
				[17] = 70, -- Hammerfall, Arathi
			},
		},
		{
			nodeID = 600,
			name = "The Harborage, Swamp of Sorrows",
			neighbors = {
				[598] = 38, -- Marshtide Watch, Swamp of Sorrows
				[5] = 46, -- Lakeshire, Redridge
			},
		},
		{
			nodeID = 602,
			name = "Surwich, Blasted Lands",
			neighbors = {
				[45] = 73, -- Nethergarde Keep, Blasted Lands
				[19] = 152, -- Booty Bay, Stranglethorn
			},
		},
		{
			nodeID = 8,
			name = "Thelsamar, Loch Modan",
			neighbors = {
				[6] = 110, -- Ironforge, Dun Morogh
				[7] = 152, -- Menethil Harbor, Wetlands
				[74] = 81, -- Thorium Point, Searing Gorge
				[16] = 163, -- Refuge Pointe, Arathi
				[555] = 46, -- Farstrider Lodge, Loch Modan
				[554] = 60, -- Slabchisel's Survey, Wetlands
				[633] = 46, -- Dustwind Dig, Badlands
				[662] = 181, -- Highbank, Twilight Highlands
			},
		},
		{
			nodeID = 662, --Twilight Highlands
			name = "Highbank, Twilight Highlands",
			neighbors = {
				[8] = 171, -- Thelsamar, Loch Modan
				[664] = 51, -- Firebeard's Patrol, Twilight Highlands
				[666] = 93, -- Kirthaven, Twilight Highlands
			},
		},
		{
			nodeID = 664,
			name = "Firebeard's Patrol, Twilight Highlands",
			neighbors = {
				[662] = 53, -- Highbank, Twilight Highlands
				[663] = 42, -- Victor's Point, Twilight Highlands
				[665] = 57, -- Thundermar, Twilight Highlands
				[666] = 73, -- Kirthaven, Twilight Highlands
			},
		},
		{
			nodeID = 666,
			name = "Kirthaven, Twilight Highlands",
			neighbors = {
				[662] = 99, -- Highbank, Twilight Highlands
				[664] = 68, -- Firebeard's Patrol, Twilight Highlands
				[665] = 29, -- Thundermar, Twilight Highlands
			},
		},
		{
			nodeID = 663,
			name = "Victor's Point, Twilight Highlands",
			neighbors = {
				[664] = 41, -- Firebeard's Patrol, Twilight Highlands
				[665] = 43, -- Thundermar, Twilight Highlands
			},
		},
		{
			nodeID = 665,
			name = "Thundermar, Twilight Highlands",
			neighbors = {
				[664] = 58, -- Firebeard's Patrol, Twilight Highlands
				[658] = 43, -- Vermillion Redoubt, Twilight Highlands
				[663] = 52, -- Victor's Point, Twilight Highlands
				[666] = 24, -- Kirthaven, Twilight Highlands
			},
		},
		{
			nodeID = 658,
			name = "Vermillion Redoubt, Twilight Highlands",
			neighbors = {
				[665] = 29, -- Thundermar, Twilight Highlands
				[6] = 152, -- Ironforge, Dun Morogh
				[16] = 92, -- Refuge Pointe, Arathi
				[552] = 44, -- Greenwarden's Grove, Wetlands
				[657] = 19, -- The Gullet, Twilight Highlands
				[17] = 109, -- Hammerfall, Arathi
				[21] = 124, -- New Kargath, Badlands
			},
		},
		{
			nodeID = 661,
			name = "Dragonmaw Port, Twilight Highlands",
			neighbors = {
				[17] = 237, -- Hammerfall, Arathi
				[21] = 217, -- New Kargath, Badlands
				[656] = 66, -- Crushblow, Twilight Highlands
				[659] = 44, -- Bloodgulch, Twilight Highlands
				[660] = 53, -- The Krazzworks, Twilight Highlands
			},
		},
		{
			nodeID = 656,
			name = "Crushblow, Twilight Highlands",
			neighbors = {
				[661] = 80, -- Dragonmaw Port, Twilight Highlands
				[657] = 54, -- The Gullet, Twilight Highlands
				[659] = 48, -- Bloodgulch, Twilight Highlands
			},
		},
		{
			nodeID = 659,
			name = "Bloodgulch, Twilight Highlands",
			neighbors = {
				[661] = 57, -- Dragonmaw Port, Twilight Highlands
				[657] = 50, -- The Gullet, Twilight Highlands
				[656] = 59, -- Crushblow, Twilight Highlands
				[660] = 50, -- The Krazzworks, Twilight Highlands
			},
		},
		{
			nodeID = 660,
			name = "The Krazzworks, Twilight Highlands",
			neighbors = {
				[661] = 48, -- Dragonmaw Port, Twilight Highlands
				[659] = 55, -- Bloodgulch, Twilight Highlands
			},
		},
		{
			nodeID = 657,
			name = "The Gullet, Twilight Highlands",
			neighbors = {
				[656] = 58, -- Crushblow, Twilight Highlands
				[659] = 55, -- Bloodgulch, Twilight Highlands
				[658] = 31, -- Vermillion Redoubt, Twilight Highlands
			},
		},
		{
			nodeID = 84, --
			name = "Plaguewood Tower, Eastern Plaguelands",
			neighbors = {
				[85] = 57, -- Northpass Tower, Eastern Plaguelands
				[86] = 67, -- Eastwall Tower, Eastern Plaguelands
				[87] = 53, -- Crown Guard Tower, Eastern Plaguelands
				[630] = 61, -- Light's Shield Tower, Eastern Plaguelands
				[672] = 62, -- Hearthglen, Western Plaguelands
			},
		},
		{
			nodeID = 603,
			name = "Sunveil Excursion, Blasted Lands",
			neighbors = {
				[604] = 60, -- Dreadmaul Hold, Blasted Lands
				[18] = 172, -- Booty Bay, Stranglethorn
			},
		},
		{
			nodeID = 56,
			name = "Stonard, Swamp of Sorrows",
			neighbors = {
				[70] = 176, -- Flame Crest, Burning Steppes
				[20] = 178, -- Grom'gol, Stranglethorn
				[18] = 230, -- Booty Bay, Stranglethorn
				[604] = 27, -- Dreadmaul Hold, Blasted Lands
				[21] = 228, -- New Kargath, Badlands
				[599] = 45, -- Bogpaddle, Swamp of Sorrows
			},
		},
		{
			nodeID = 633,
			name = "Dustwind Dig, Badlands",
			neighbors = {
				[634] = 37, -- Dragon's Mouth, Badlands
				[635] = 29, -- Fuselight, Badlands
				[8] = 53, -- Thelsamar, Loch Modan
			},
		},
		{
			nodeID = 45,
			name = "Nethergarde Keep, Blasted Lands",
			neighbors = {
				[71] = 209, -- Morgan's Vigil, Burning Steppes
				[2] = 189, -- Stormwind, Elwynn
				[12] = 92, -- Darkshire, Duskwood
				[598] = 39, -- Marshtide Watch, Swamp of Sorrows
				[602] = 92, -- Surwich, Blasted Lands
			},
		},
		{
			nodeID = 596,
			name = "Shalewind Canyon, Redridge",
			neighbors = {
				[615] = 24, -- Camp Everstill, Redridge
				[599] = 34, -- Bogpaddle, Swamp of Sorrows
			},
		},
		{
			nodeID = 17,
			name = "Hammerfall, Arathi",
			neighbors = {
				[11] = 259, -- Undercity, Tirisfal
				[76] = 88, -- Revantusk Village, The Hinterlands
				[13] = 117, -- Tarren Mill, Hillsbrad
				[601] = 68, -- Galen's Fall, Arathi
				[21] = 249, -- New Kargath, Badlands
				[617] = 53, -- Hiri'watha Research Station, The Hinterlands
				[661] = 251, -- Dragonmaw Port, Twilight Highlands
				[658] = 167, -- Vermillion Redoubt, Twilight Highlands
			},
		},
		{
			nodeID = 632,
			name = "Bloodwatcher Point, Badlands",
			neighbors = {
				[21] = 39, -- New Kargath, Badlands
				[635] = 25, -- Fuselight, Badlands
			},
		},
		{
			nodeID = 87,
			name = "Crown Guard Tower, Eastern Plaguelands",
			neighbors = {
				[85] = 62, -- Northpass Tower, Eastern Plaguelands
				[84] = 53, -- Plaguewood Tower, Eastern Plaguelands
				[383] = 39, -- Thondroril River, Eastern Plaguelands
				[630] = 35, -- Light's Shield Tower, Eastern Plaguelands
			},
		},
		{
			nodeID = 598,
			name = "Marshtide Watch, Swamp of Sorrows",
			neighbors = {
				[45] = 44, -- Nethergarde Keep, Blasted Lands
				[600] = 41, -- The Harborage, Swamp of Sorrows
				[599] = 30, -- Bogpaddle, Swamp of Sorrows
			},
		},
		{
			nodeID = 635,
			name = "Fuselight, Badlands",
			neighbors = {
				[67] = 358, -- Light's Hope Chapel, Eastern Plaguelands
				[68] = 358, -- Light's Hope Chapel, Eastern Plaguelands
				[632] = 18, -- Bloodwatcher Point, Badlands
				[21] = 51, -- New Kargath, Badlands
				[634] = 51, -- Dragon's Mouth, Badlands
				[555] = 49, -- Farstrider Lodge, Loch Modan
				[633] = 19, -- Dustwind Dig, Badlands
			},
		},
		{
			nodeID = 599,
			name = "Bogpaddle, Swamp of Sorrows",
			neighbors = {
				[56] = 42, -- Stonard, Swamp of Sorrows
				[70] = 109, -- Flame Crest, Burning Steppes
				[598] = 25, -- Marshtide Watch, Swamp of Sorrows
				[596] = 33, -- Shalewind Canyon, Redridge
				[71] = 81, -- Morgan's Vigil, Burning Steppes
			},
		},
		{
			nodeID = 618,
			name = "Stormfeather Outpost, The Hinterlands",
			neighbors = {
				[67] = 88, -- Light's Hope Chapel, Eastern Plaguelands
				[43] = 83, -- Aerie Peak, The Hinterlands
				[383] = 120, -- Thondroril River, Eastern Plaguelands
				[16] = 99, -- Refuge Pointe, Arathi
			},
		},
		{
			nodeID = 555,
			name = "Farstrider Lodge, Loch Modan",
			neighbors = {
				[635] = 47, -- Fuselight, Badlands
				[8] = 46, -- Thelsamar, Loch Modan
			},
		},
		{
			nodeID = 625,
			name = "Fairbreeze Village, Eversong Woods",
			neighbors = {
				[82] = 29, -- Silvermoon City
				[83] = 46, -- Tranquillien, Ghostlands
			},
		},
		{
			nodeID = 85,
			name = "Northpass Tower, Eastern Plaguelands",
			neighbors = {
				[86] = 30, -- Eastwall Tower, Eastern Plaguelands
				[84] = 50, -- Plaguewood Tower, Eastern Plaguelands
				[87] = 52, -- Crown Guard Tower, Eastern Plaguelands
			},
		},
		{
			nodeID = 631,
			name = "Falconwing Square, Eversong Woods",
			neighbors = {
				[82] = 19, -- Silvermoon City
			},
		},
		{
			nodeID = 83,
			name = "Tranquillien, Ghostlands",
			neighbors = {
				[82] = 74, -- Silvermoon City
				[205] = 53, -- Zul'Aman, Ghostlands
				[68] = 128, -- Light's Hope Chapel, Eastern Plaguelands
				[625] = 53, -- Fairbreeze Village, Eversong Woods
			},
		},
		{
			nodeID = 630,
			name = "Light's Shield Tower, Eastern Plaguelands",
			neighbors = {
				[86] = 20, -- Eastwall Tower, Eastern Plaguelands
				[84] = 61, -- Plaguewood Tower, Eastern Plaguelands
				[87] = 30, -- Crown Guard Tower, Eastern Plaguelands
				[67] = 39, -- Light's Hope Chapel, Eastern Plaguelands
				[68] = 39, -- Light's Hope Chapel, Eastern Plaguelands
			},
		},
		{
			nodeID = 213,
			name = "Shattered Sun Staging Area",
			neighbors = {
				[205] = 232, -- Zul'Aman, Ghostlands
				[82] = 166, -- Silvermoon City
			},
		},
		{
			nodeID = 76,
			name = "Revantusk Village, The Hinterlands",
			neighbors = {
				[17] = 94, -- Hammerfall, Arathi
				[11] = 269, -- Undercity, Tirisfal
				[68] = 134, -- Light's Hope Chapel, Eastern Plaguelands
				[13] = 156, -- Tarren Mill, Hillsbrad
				[617] = 76, -- Hiri'watha Research Station, The Hinterlands
			},
		},
		{
			nodeID = 86,
			name = "Eastwall Tower, Eastern Plaguelands",
			neighbors = {
				[85] = 31, -- Northpass Tower, Eastern Plaguelands
				[84] = 66, -- Plaguewood Tower, Eastern Plaguelands
				[630] = 18, -- Light's Shield Tower, Eastern Plaguelands
				[67] = 30, -- Light's Hope Chapel, Eastern Plaguelands
				[68] = 30, -- Light's Hope Chapel, Eastern Plaguelands
			},
		},
		{
			nodeID = 82,
			name = "Silvermoon City",
			neighbors = {
				[213] = 185, -- Shattered Sun Staging Area
				[83] = 65, -- Tranquillien, Ghostlands
				[631] = 24, -- Falconwing Square, Eversong Woods
				[625] = 31, -- Fairbreeze Village, Eversong Woods
			},
		},
		{
			nodeID = 68,
			name = "Light's Hope Chapel, Eastern Plaguelands",
			faction = "H",
			neighbors = {
				[315] = 65, -- Acherus: The Ebon Hold
				[205] = 223, -- Zul'Aman, Ghostlands
				[83] = 123, -- Tranquillien, Ghostlands
				[76] = 144, -- Revantusk Village, The Hinterlands
				[11] = 261, -- Undercity, Tirisfal
				[86] = 24, -- Eastwall Tower, Eastern Plaguelands
				[383] = 96, -- Thondroril River, Eastern Plaguelands
				[630] = 35, -- Light's Shield Tower, Eastern Plaguelands
				[635] = 175, -- Fuselight, Badlands
			},
		},
		{
			nodeID = 67,
			name = "Light's Hope Chapel, Eastern Plaguelands",
			faction = "A",
			neighbors = {
				[6] = 369, -- Ironforge, Dun Morogh
				[315] = 65, -- Acherus: The Ebon Hold
				[205] = 223, -- Zul'Aman, Ghostlands
				[66] = 149, -- Chillwind Camp, Western Plaguelands
				[43] = 162, -- Aerie Peak, The Hinterlands
				[86] = 24, -- Eastwall Tower, Eastern Plaguelands
				[383] = 96, -- Thondroril River, Eastern Plaguelands
				[630] = 35, -- Light's Shield Tower, Eastern Plaguelands
				[635] = 175, -- Fuselight, Badlands
				[618] = 96, -- Stormfeather Outpost, The Hinterlands
			},
		},
		{
			nodeID = 205,
			name = "Zul'Aman, Ghostlands",
			neighbors = {
				[67] = 227, -- Light's Hope Chapel, Eastern Plaguelands
				[68] = 227, -- Light's Hope Chapel, Eastern Plaguelands
				[213] = 251, -- Shattered Sun Staging Area
				[83] = 52, -- Tranquillien, Ghostlands
			},
		},
		{
			nodeID = 315,
			name = "Acherus: The Ebon Hold",
			neighbors = { --cheating to make this faster than walking to Hope Chapel. Real Time is 51s
				[67] = 10, -- Light's Hope Chapel, Eastern Plaguelands
				[68] = 10, -- Light's Hope Chapel, Eastern Plaguelands
			},
		},
	},

-------------------
---   OUTLAND   ---
-------------------
	[1945] = {
		{
			nodeID = "-1",
			name = "Skyguard Outpost, Blade's Edge Mountains",
			taxioperator = "skyguard",
			neighbors = {
				[-2] = 245, --Blackwing Landing, Terokkar Forest
			},
		},
		{
			nodeID = "-2",
			name = "Blackwing Landing, Terokkar Forest",
			taxioperator = "skyguard",
			neighbors = {
				[-1] = 245, --Skyguard Outpost, Blade's Edge Mountains
			},
		},
		{
			nodeID = 118,
			name = "Zabra'jin, Zangarmarsh",
			neighbors = {
				[126] = 112, -- Thunderlord Stronghold, Blade's Edge Mountains
				[120] = 82, -- Garadar, Nagrand
				[151] = 112, -- Swamprat Post, Zangarmarsh
				[102] = 147, -- Falcon Watch, Hellfire Peninsula
				[128] = 151, -- Shattrath, Terokkar Forest
			},
		},
		{
			nodeID = 164,
			name = "Orebor Harborage, Zangarmarsh",
			neighbors = {
				[125] = 64, -- Sylvanaar, Blade's Edge Mountains
				[117] = 52, -- Telredor, Zangarmarsh
			},
		},
		{
			nodeID = 119,
			name = "Telaar, Nagrand",
			neighbors = {
				[128] = 87, -- Shattrath, Terokkar Forest
				[117] = 126, -- Telredor, Zangarmarsh
				[121] = 121, -- Allerian Stronghold, Terokkar Forest
			},
		},
		{
			nodeID = 120,
			name = "Garadar, Nagrand",
			neighbors = {
				[128] = 77, -- Shattrath, Terokkar Forest
				[118] = 67, -- Zabra'jin, Zangarmarsh
				[102] = 127, -- Falcon Watch, Hellfire Peninsula
			},
		},
		{
			nodeID = 125,
			name = "Sylvanaar, Blade's Edge Mountains",
			neighbors = {
				[122] = 119, -- Area 52, Netherstorm
				[164] = 76, -- Orebor Harborage, Zangarmarsh
				[160] = 51, -- Evergrove, Blade's Edge Mountains
				[139] = 154, -- The Stormspire, Netherstorm
				[156] = 57, -- Toshley's Station, Blade's Edge Mountains
				[117] = 81, -- Telredor, Zangarmarsh
			},
		},
		{
			nodeID = 117,
			name = "Telredor, Zangarmarsh",
			neighbors = {
				[119] = 124, -- Telaar, Nagrand
				[101] = 81, -- Temple of Telhamat, Hellfire Peninsula
				[156] = 68, -- Toshley's Station, Blade's Edge Mountains
				[125] = 91, -- Sylvanaar, Blade's Edge Mountains
				[164] = 62, -- Orebor Harborage, Zangarmarsh
				[128] = 97, -- Shattrath, Terokkar Forest
			},
		},
		{
			nodeID = 126,
			name = "Thunderlord Stronghold, Blade's Edge Mountains",
			neighbors = {
				[118] = 148, -- Zabra'jin, Zangarmarsh
				[122] = 96, -- Area 52, Netherstorm
				[163] = 55, -- Mok'Nathal Village, Blade's Edge Mountains
				[160] = 26, -- Evergrove, Blade's Edge Mountains
				[151] = 116, -- Swamprat Post, Zangarmarsh
				[139] = 158, -- The Stormspire, Netherstorm
			},
		},
		{
			nodeID = 156,
			name = "Toshley's Station, Blade's Edge Mountains",
			neighbors = {
				[160] = 53, -- Evergrove, Blade's Edge Mountains
				[117] = 72, -- Telredor, Zangarmarsh
				[122] = 83, -- Area 52, Netherstorm
				[125] = 59, -- Sylvanaar, Blade's Edge Mountains
			},
		},
		{
			nodeID = 160,
			name = "Evergrove, Blade's Edge Mountains",
			neighbors = {
				[125] = 55, -- Sylvanaar, Blade's Edge Mountains
				[156] = 44, -- Toshley's Station, Blade's Edge Mountains
				[122] = 77, -- Area 52, Netherstorm
				[126] = 36, -- Thunderlord Stronghold, Blade's Edge Mountains
			},
		},
		{
			nodeID = 128,
			name = "Shattrath, Terokkar Forest",
			neighbors = {
				[119] = 88, -- Telaar, Nagrand
				[120] = 81, -- Garadar, Nagrand
				[121] = 75, -- Allerian Stronghold, Terokkar Forest
				[102] = 76, -- Falcon Watch, Hellfire Peninsula
				[100] = 111, -- Honor Hold, Hellfire Peninsula
				[127] = 68, -- Stonebreaker Hold, Terokkar Forest
				[118] = 136, -- Zabra'jin, Zangarmarsh
				[151] = 79, -- Swamprat Post, Zangarmarsh
				[117] = 83, -- Telredor, Zangarmarsh
				[99] = 131, -- Thrallmar, Hellfire Peninsula
			},
		},
		{
			nodeID = 151,
			name = "Swamprat Post, Zangarmarsh",
			neighbors = {
				[163] = 70, -- Mok'Nathal Village, Blade's Edge Mountains
				[118] = 111, -- Zabra'jin, Zangarmarsh
				[128] = 87, -- Shattrath, Terokkar Forest
				[126] = 106, -- Thunderlord Stronghold, Blade's Edge Mountains
				[102] = 62, -- Falcon Watch, Hellfire Peninsula
			},
		},
		{
			nodeID = 163,
			name = "Mok'Nathal Village, Blade's Edge Mountains",
			neighbors = {
				[151] = 73, -- Swamprat Post, Zangarmarsh
				[122] = 56, -- Area 52, Netherstorm
				[126] = 63, -- Thunderlord Stronghold, Blade's Edge Mountains
			},
		},
		{
			nodeID = 127,
			name = "Stonebreaker Hold, Terokkar Forest",
			neighbors = {
				[99] = 125, -- Thrallmar, Hellfire Peninsula
				[128] = 56, -- Shattrath, Terokkar Forest
				[123] = 67, -- Shadowmoon Village, Shadowmoon Valley
			},
		},
		{
			nodeID = 101,
			name = "Temple of Telhamat, Hellfire Peninsula",
			neighbors = {
				[117] = 80, -- Telredor, Zangarmarsh
				[100] = 87, -- Honor Hold, Hellfire Peninsula
			},
		},
		{
			nodeID = 102,
			name = "Falcon Watch, Hellfire Peninsula",
			neighbors = {
				[99] = 73, -- Thrallmar, Hellfire Peninsula
				[128] = 71, -- Shattrath, Terokkar Forest
				[151] = 68, -- Swamprat Post, Zangarmarsh
				[118] = 149, -- Zabra'jin, Zangarmarsh
				[120] = 132, -- Garadar, Nagrand
			},
		},
		{
			nodeID = 121,
			name = "Allerian Stronghold, Terokkar Forest",
			neighbors = {
				[119] = 149, -- Telaar, Nagrand
				[124] = 79, -- Wildhammer Stronghold, Shadowmoon Valley
				[128] = 74, -- Shattrath, Terokkar Forest
				[100] = 96, -- Honor Hold, Hellfire Peninsula
			},
		},
		{
			nodeID = 122,
			name = "Area 52, Netherstorm",
			neighbors = {
				[126] = 108, -- Thunderlord Stronghold, Blade's Edge Mountains
				[163] = 64, -- Mok'Nathal Village, Blade's Edge Mountains
				[125] = 126, -- Sylvanaar, Blade's Edge Mountains
				[139] = 48, -- The Stormspire, Netherstorm
				[150] = 66, -- Cosmowrench, Netherstorm
				[156] = 93, -- Toshley's Station, Blade's Edge Mountains
				[160] = 80, -- Evergrove, Blade's Edge Mountains
			},
		},
		{
			nodeID = 139,
			name = "The Stormspire, Netherstorm",
			neighbors = {
				[122] = 53, -- Area 52, Netherstorm
				[150] = 68, -- Cosmowrench, Netherstorm
				[126] = 146, -- Thunderlord Stronghold, Blade's Edge Mountains
				[125] = 154, -- Sylvanaar, Blade's Edge Mountains
			},
		},
		{
			nodeID = 100,
			name = "Honor Hold, Hellfire Peninsula",
			neighbors = {
				[128] = 119, -- Shattrath, Terokkar Forest
				[121] = 118, -- Allerian Stronghold, Terokkar Forest
				[129] = 64, -- Hellfire Peninsula, The Dark Portal, Alliance
				[149] = 56, -- Shatter Point, Hellfire Peninsula
				[101] = 75, -- Temple of Telhamat, Hellfire Peninsula
			},
		},
		{
			nodeID = 99,
			name = "Thrallmar, Hellfire Peninsula",
			neighbors = {
				[130] = 70, -- Hellfire Peninsula, The Dark Portal, Horde
				[127] = 128, -- Stonebreaker Hold, Terokkar Forest
				[141] = 66, -- Spinebreaker Ridge, Hellfire Peninsula
				[102] = 67, -- Falcon Watch, Hellfire Peninsula
				[128] = 123, -- Shattrath, Terokkar Forest
			},
		},
		{
			nodeID = 123,
			name = "Shadowmoon Village, Shadowmoon Valley",
			neighbors = {
				[140] = 84, -- Altar of Sha'tar, Shadowmoon Valley
				[127] = 73, -- Stonebreaker Hold, Terokkar Forest
				[159] = 65, -- Sanctum of the Stars, Shadowmoon Valley
			},
		},
		{
			nodeID = 141,
			name = "Spinebreaker Ridge, Hellfire Peninsula",
			neighbors = {
				[99] = 63, -- Thrallmar, Hellfire Peninsula
			},
		},
		{
			nodeID = 124,
			name = "Wildhammer Stronghold, Shadowmoon Valley",
			neighbors = {
				[121] = 100, -- Allerian Stronghold, Terokkar Forest
				[140] = 83, -- Altar of Sha'tar, Shadowmoon Valley
				[159] = 42, -- Sanctum of the Stars, Shadowmoon Valley
			},
		},
		{
			nodeID = 150,
			name = "Cosmowrench, Netherstorm",
			neighbors = {
				[139] = 60, -- The Stormspire, Netherstorm
				[122] = 64, -- Area 52, Netherstorm
			},
		},
		{
			nodeID = 149,
			name = "Shatter Point, Hellfire Peninsula",
			neighbors = {
				[100] = 57, -- Honor Hold, Hellfire Peninsula
				[129] = 32, -- Hellfire Peninsula, The Dark Portal, Alliance
			},
		},
		{
			nodeID = 159,
			name = "Sanctum of the Stars, Shadowmoon Valley",
			neighbors = {
				[124] = 41, -- Wildhammer Stronghold, Shadowmoon Valley
				[123] = 61, -- Shadowmoon Village, Shadowmoon Valley
			},
		},
		{
			nodeID = 129,
			name = "Hellfire Peninsula, The Dark Portal",
			faction = "A",
			neighbors = {
				[101] = 115, -- Temple of Telhamat, Hellfire Peninsula
				[100] = 73, -- Honor Hold, Hellfire Peninsula
				[149] = 27, -- Shatter Point, Hellfire Peninsula
			},
		},
		{
			nodeID = 130,
			name = "Hellfire Peninsula, The Dark Portal",
			faction = "H",
			neighbors = {
				[102] = 122, -- Falcon Watch, Hellfire Peninsula
				[99] = 60, -- Thrallmar, Hellfire Peninsula
			},
		},
		{
			nodeID = 140,
			name = "Altar of Sha'tar, Shadowmoon Valley",
			neighbors = {
				[124] = 80, -- Wildhammer Stronghold, Shadowmoon Valley
				[123] = 66, -- Shadowmoon Village, Shadowmoon Valley
			},
		},
	},

---------------------
---   NORTHREND   ---
---------------------
	[113] = {
		{
			nodeID = 646,
			name = "Forsaken Forward Command, Gilneas",
			neighbors = { --Does not go anywhere and is only available between two quest. Ignore it
				[0] = 999, -- nowhere
			},
		},
		{
			nodeID = 226,
			name = "Transitus Shield, Coldarra",
			neighbors = {
				[289] = 45, -- Amber Ledge, Borean Tundra
			},
		},
		{
			nodeID = 257,
			name = "Warsong Hold, Borean Tundra",
			neighbors = {
				[258] = 87, -- Taunka'le Village, Borean Tundra
				[259] = 68, -- Bor'gorok Outpost, Borean Tundra
				[296] = 92, -- Unu'pe, Borean Tundra
				[289] = 35, -- Amber Ledge, Borean Tundra
			},
		},
		{
			nodeID = 289,
			name = "Amber Ledge, Borean Tundra",
			neighbors = {
				[245] = 66, -- Valiance Keep, Borean Tundra
				[258] = 71, -- Taunka'le Village, Borean Tundra
				[226] = 37, -- Transitus Shield, Coldarra
				[246] = 35, -- Fizzcrank Airstrip, Borean Tundra
				[257] = 41, -- Warsong Hold, Borean Tundra
				[259] = 34, -- Bor'gorok Outpost, Borean Tundra
			},
		},
		{
			nodeID = 309,
			name = "Nesingwary Base Camp, Sholazar Basin",
			neighbors = {
				[259] = 60, -- Bor'gorok Outpost, Borean Tundra
				[246] = 77, -- Fizzcrank Airstrip, Borean Tundra
				[325] = 91, -- Death's Rise, Icecrown
				[308] = 51, -- River's Heart, Sholazar Basin
			},
		},
		{
			nodeID = 259,
			name = "Bor'gorok Outpost, Borean Tundra",
			neighbors = {
				[309] = 47, -- Nesingwary Base Camp, Sholazar Basin
				[258] = 77, -- Taunka'le Village, Borean Tundra
				[289] = 58, -- Amber Ledge, Borean Tundra
				[257] = 72, -- Warsong Hold, Borean Tundra
				[308] = 56, -- River's Heart, Sholazar Basin
			},
		},
		{
			nodeID = 246,
			name = "Fizzcrank Airstrip, Borean Tundra",
			neighbors = {
				[308] = 63, -- River's Heart, Sholazar Basin
				[247] = 133, -- Stars' Rest, Dragonblight
				[289] = 44, -- Amber Ledge, Borean Tundra
				[245] = 70, -- Valiance Keep, Borean Tundra
				[309] = 76, -- Nesingwary Base Camp, Sholazar Basin
				[296] = 64, -- Unu'pe, Borean Tundra
			},
		},
		{
			nodeID = 245,
			name = "Valiance Keep, Borean Tundra",
			neighbors = {
				[247] = 145, -- Stars' Rest, Dragonblight
				[296] = 63, -- Unu'pe, Borean Tundra
				[289] = 63, -- Amber Ledge, Borean Tundra
				[246] = 75, -- Fizzcrank Airstrip, Borean Tundra
				[310] = 262, -- Dalaran
			},
		},
		{
			nodeID = 308,
			name = "River's Heart, Sholazar Basin",
			neighbors = {
				[259] = 61, -- Bor'gorok Outpost, Borean Tundra
				[309] = 42, -- Nesingwary Base Camp, Sholazar Basin
				[246] = 69, -- Fizzcrank Airstrip, Borean Tundra
				[325] = 93, -- Death's Rise, Icecrown
				[332] = 86, -- Warsong Camp, Wintergrasp
				[310] = 301, -- Dalaran
				[303] = 150, -- Valiance Landing Camp, Wintergrasp
			},
		},
		{
			nodeID = 325,
			name = "Death's Rise, Icecrown",
			neighbors = {
				[309] = 117, -- Nesingwary Base Camp, Sholazar Basin
				[333] = 93, -- The Shadow Vault, Icecrown
				[308] = 116, -- River's Heart, Sholazar Basin
				[303] = 173, -- Valiance Landing Camp, Wintergrasp
				[332] = 114, -- Warsong Camp, Wintergrasp
				[335] = 175, -- Crusaders' Pinnacle, Icecrown
			},
		},
		{
			nodeID = 258,
			name = "Taunka'le Village, Borean Tundra",
			neighbors = {
				[259] = 72, -- Bor'gorok Outpost, Borean Tundra
				[256] = 91, -- Agmar's Hammer, Dragonblight
				[257] = 84, -- Warsong Hold, Borean Tundra
				[296] = 30, -- Unu'pe, Borean Tundra
				[289] = 76, -- Amber Ledge, Borean Tundra
				[332] = 80, -- Warsong Camp, Wintergrasp
			},
		},
		{
			nodeID = 296,
			name = "Unu'pe, Borean Tundra",
			neighbors = {
				[257] = 87, -- Warsong Hold, Borean Tundra
				[246] = 79, -- Fizzcrank Airstrip, Borean Tundra
				[258] = 21, -- Taunka'le Village, Borean Tundra
				[294] = 118, -- Moa'ki, Dragonblight
				[247] = 97, -- Stars' Rest, Dragonblight
				[245] = 59, -- Valiance Keep, Borean Tundra
			},
		},
		{
			nodeID = 332,
			name = "Warsong Camp, Wintergrasp",
			neighbors = {
				[310] = 141, -- Dalaran
				[308] = 76, -- River's Heart, Sholazar Basin
				[256] = 100, -- Agmar's Hammer, Dragonblight
				[335] = 159, -- Crusaders' Pinnacle, Icecrown
				[258] = 79, -- Taunka'le Village, Borean Tundra
				[325] = 113, -- Death's Rise, Icecrown
				[333] = 164, -- The Shadow Vault, Icecrown
			},
		},
		{
			nodeID = 333,
			name = "The Shadow Vault, Icecrown",
			neighbors = {
				[325] = 77, -- Death's Rise, Icecrown
				[335] = 120, -- Crusaders' Pinnacle, Icecrown
				[334] = 134, -- The Argent Vanguard, Icecrown
				[327] = 121, -- Bouldercrag's Refuge, The Storm Peaks
				[303] = 141, -- Valiance Landing Camp, Wintergrasp
				[340] = 78, -- Argent Tournament Grounds, Icecrown
				[332] = 138, -- Warsong Camp, Wintergrasp
			},
		},
		{
			nodeID = 303,
			name = "Valiance Landing Camp, Wintergrasp",
			neighbors = {
				[335] = 109, -- Crusaders' Pinnacle, Icecrown
				[308] = 136, -- River's Heart, Sholazar Basin
				[310] = 91, -- Dalaran
				[247] = 80, -- Stars' Rest, Dragonblight
				[251] = 49, -- Fordragon Hold, Dragonblight
				[333] = 162, -- The Shadow Vault, Icecrown
				[325] = 166, -- Death's Rise, Icecrown
			},
		},
		{
			nodeID = 247,
			name = "Stars' Rest, Dragonblight",
			neighbors = {
				[251] = 80, -- Fordragon Hold, Dragonblight
				[244] = 123, -- Wintergarde Keep, Dragonblight
				[294] = 70, -- Moa'ki, Dragonblight
				[245] = 132, -- Valiance Keep, Borean Tundra
				[246] = 129, -- Fizzcrank Airstrip, Borean Tundra
				[252] = 89, -- Wyrmrest Temple, Dragonblight
				[296] = 100, -- Unu'pe, Borean Tundra
				[303] = 67, -- Valiance Landing Camp, Wintergrasp
			},
		},
		{
			nodeID = 256,
			name = "Agmar's Hammer, Dragonblight",
			neighbors = {
				[294] = 63, -- Moa'ki, Dragonblight
				[254] = 88, -- Venomspite, Dragonblight
				[260] = 65, -- Kor'kron Vanguard, Dragonblight
				[252] = 51, -- Wyrmrest Temple, Dragonblight
				[258] = 113, -- Taunka'le Village, Borean Tundra
				[332] = 117, -- Warsong Camp, Wintergrasp
			},
		},
		{
			nodeID = 251,
			name = "Fordragon Hold, Dragonblight",
			neighbors = {
				[305] = 118, -- Ebon Watch, Zul'Drak
				[247] = 73, -- Stars' Rest, Dragonblight
				[310] = 65, -- Dalaran
				[252] = 65, -- Wyrmrest Temple, Dragonblight
				[244] = 86, -- Wintergarde Keep, Dragonblight
				[303] = 60, -- Valiance Landing Camp, Wintergrasp
			},
		},
		{
			nodeID = 260,
			name = "Kor'kron Vanguard, Dragonblight",
			neighbors = {
				[305] = 106, -- Ebon Watch, Zul'Drak
				[252] = 67, -- Wyrmrest Temple, Dragonblight
				[310] = 56, -- Dalaran
				[254] = 90, -- Venomspite, Dragonblight
				[256] = 52, -- Agmar's Hammer, Dragonblight
			},
		},
		{
			nodeID = 294,
			name = "Moa'ki, Dragonblight",
			neighbors = {
				[252] = 48, -- Wyrmrest Temple, Dragonblight
				[254] = 61, -- Venomspite, Dragonblight
				[296] = 132, -- Unu'pe, Borean Tundra
				[244] = 85, -- Wintergarde Keep, Dragonblight
				[256] = 64, -- Agmar's Hammer, Dragonblight
				[310] = 122, -- Dalaran
				[295] = 184, -- Kamagua, Howling Fjord
				[247] = 54, -- Stars' Rest, Dragonblight
			},
		},
		{
			nodeID = 335,
			name = "Crusaders' Pinnacle, Icecrown",
			neighbors = {
				[333] = 123, -- The Shadow Vault, Icecrown
				[310] = 70, -- Dalaran
				[334] = 32, -- The Argent Vanguard, Icecrown
				[325] = 168, -- Death's Rise, Icecrown
				[332] = 159, -- Warsong Camp, Wintergrasp
				[340] = 97, -- Argent Tournament Grounds, Icecrown
			},
		},
		{
			nodeID = 310,
			name = "Dalaran",
			neighbors = {
				[335] = 39, -- Crusaders' Pinnacle, Icecrown
				[337] = 57, -- Sunreaver's Command, Crystalsong Forest
				[252] = 122, -- Wyrmrest Temple, Dragonblight
				[334] = 32, -- The Argent Vanguard, Icecrown
				[294] = 159, -- Moa'ki, Dragonblight
				[251] = 100, -- Fordragon Hold, Dragonblight
				[260] = 73, -- Kor'kron Vanguard, Dragonblight
				[320] = 54, -- K3, The Storm Peaks
				[336] = 52, -- Windrunner's Overlook, Crystalsong Forest
				[305] = 81, -- Ebon Watch, Zul'Drak
				[303] = 116, -- Valiance Landing Camp, Wintergrasp
				[308] = 212, -- River's Heart, Sholazar Basin
				[245] = 261, -- Valiance Keep, Borean Tundra
				[340] = 123, -- Argent Tournament Grounds, Icecrown
				[183] = 281, -- Valgarde Port, Howling Fjord
				[332] = 161, -- Warsong Camp, Wintergrasp
			},
		},
		{
			nodeID = 252,
			name = "Wyrmrest Temple, Dragonblight",
			neighbors = {
				[310] = 65, -- Dalaran
				[305] = 105, -- Ebon Watch, Zul'Drak
				[256] = 69, -- Agmar's Hammer, Dragonblight
				[247] = 66, -- Stars' Rest, Dragonblight
				[244] = 50, -- Wintergarde Keep, Dragonblight
				[254] = 50, -- Venomspite, Dragonblight
				[260] = 66, -- Kor'kron Vanguard, Dragonblight
				[294] = 53, -- Moa'ki, Dragonblight
				[251] = 58, -- Fordragon Hold, Dragonblight
			},
		},
		{
			nodeID = 334,
			name = "The Argent Vanguard, Icecrown",
			neighbors = {
				[335] = 27, -- Crusaders' Pinnacle, Icecrown
				[321] = 40, -- Frosthold, The Storm Peaks
				[333] = 147, -- The Shadow Vault, Icecrown
				[310] = 31, -- Dalaran
				[323] = 103, -- Grom'arsh Crash-Site, The Storm Peaks
			},
		},
		{
			nodeID = 340,
			name = "Argent Tournament Grounds, Icecrown",
			neighbors = {
				[333] = 89, -- The Shadow Vault, Icecrown
				[327] = 52, -- Bouldercrag's Refuge, The Storm Peaks
				[310] = 140, -- Dalaran
				[335] = 73, -- Crusaders' Pinnacle, Icecrown
			},
		},
		{
			nodeID = 321,
			name = "Frosthold, The Storm Peaks",
			neighbors = {
				[326] = 97, -- Ulduar, The Storm Peaks
				[334] = 33, -- The Argent Vanguard, Icecrown
				[327] = 65, -- Bouldercrag's Refuge, The Storm Peaks
				[320] = 48, -- K3, The Storm Peaks
			},
		},
		{
			nodeID = 327,
			name = "Bouldercrag's Refuge, The Storm Peaks",
			neighbors = {
				[333] = 112, -- The Shadow Vault, Icecrown
				[323] = 40, -- Grom'arsh Crash-Site, The Storm Peaks
				[326] = 44, -- Ulduar, The Storm Peaks
				[321] = 78, -- Frosthold, The Storm Peaks
				[340] = 61, -- Argent Tournament Grounds, Icecrown
			},
		},
		{
			nodeID = 336,
			name = "Windrunner's Overlook, Crystalsong Forest",
			neighbors = {
				[320] = 46, -- K3, The Storm Peaks
				[310] = 47, -- Dalaran
				[305] = 46, -- Ebon Watch, Zul'Drak
				[244] = 75, -- Wintergarde Keep, Dragonblight
			},
		},
		{
			nodeID = 254,
			name = "Venomspite, Dragonblight",
			neighbors = {
				[305] = 83, -- Ebon Watch, Zul'Drak
				[250] = 59, -- Conquest Hold, Grizzly Hills
				[260] = 120, -- Kor'kron Vanguard, Dragonblight
				[248] = 98, -- Apothecary Camp, Howling Fjord
				[252] = 52, -- Wyrmrest Temple, Dragonblight
				[294] = 82, -- Moa'ki, Dragonblight
				[306] = 106, -- Light's Breach, Zul'Drak
				[256] = 133, -- Agmar's Hammer, Dragonblight
				[190] = 186, -- New Agamand, Howling Fjord
			},
		},
		{
			nodeID = 244,
			name = "Wintergarde Keep, Dragonblight",
			neighbors = {
				[252] = 54, -- Wyrmrest Temple, Dragonblight
				[251] = 96, -- Fordragon Hold, Dragonblight
				[185] = 125, -- Westguard Keep, Howling Fjord
				[336] = 71, -- Windrunner's Overlook, Crystalsong Forest
				[294] = 98, -- Moa'ki, Dragonblight
				[306] = 88, -- Light's Breach, Zul'Drak
				[253] = 77, -- Amberpine Lodge, Grizzly Hills
				[247] = 114, -- Stars' Rest, Dragonblight
				[305] = 64, -- Ebon Watch, Zul'Drak
			},
		},
		{
			nodeID = 337,
			name = "Sunreaver's Command, Crystalsong Forest",
			neighbors = {
				[305] = 37, -- Ebon Watch, Zul'Drak
				[310] = 55, -- Dalaran
				[320] = 33, -- K3, The Storm Peaks
			},
		},
		{
			nodeID = 323,
			name = "Grom'arsh Crash-Site, The Storm Peaks",
			neighbors = {
				[326] = 51, -- Ulduar, The Storm Peaks
				[320] = 87, -- K3, The Storm Peaks
				[327] = 37, -- Bouldercrag's Refuge, The Storm Peaks
				[334] = 79, -- The Argent Vanguard, Icecrown
				[324] = 96, -- Camp Tunka'lo, The Storm Peaks
			},
		},
		{
			nodeID = 320,
			name = "K3, The Storm Peaks",
			neighbors = {
				[337] = 37, -- Sunreaver's Command, Crystalsong Forest
				[324] = 90, -- Camp Tunka'lo, The Storm Peaks
				[321] = 43, -- Frosthold, The Storm Peaks
				[322] = 100, -- Dun Niffelem, The Storm Peaks
				[305] = 43, -- Ebon Watch, Zul'Drak
				[323] = 75, -- Grom'arsh Crash-Site, The Storm Peaks
				[336] = 53, -- Windrunner's Overlook, Crystalsong Forest
				[310] = 72, -- Dalaran
			},
		},
		{
			nodeID = 305,
			name = "Ebon Watch, Zul'Drak",
			neighbors = {
				[310] = 67, -- Dalaran
				[336] = 33, -- Windrunner's Overlook, Crystalsong Forest
				[260] = 108, -- Kor'kron Vanguard, Dragonblight
				[252] = 91, -- Wyrmrest Temple, Dragonblight
				[306] = 44, -- Light's Breach, Zul'Drak
				[251] = 111, -- Fordragon Hold, Dragonblight
				[320] = 40, -- K3, The Storm Peaks
				[244] = 61, -- Wintergarde Keep, Dragonblight
				[304] = 63, -- The Argent Stand, Zul'Drak
				[337] = 26, -- Sunreaver's Command, Crystalsong Forest
				[254] = 98, -- Venomspite, Dragonblight
			},
		},
		{
			nodeID = 326,
			name = "Ulduar, The Storm Peaks",
			neighbors = {
				[307] = 153, -- Zim'Torga, Zul'Drak
				[321] = 102, -- Frosthold, The Storm Peaks
				[327] = 48, -- Bouldercrag's Refuge, The Storm Peaks
				[322] = 103, -- Dun Niffelem, The Storm Peaks
				[323] = 43, -- Grom'arsh Crash-Site, The Storm Peaks
				[324] = 87, -- Camp Tunka'lo, The Storm Peaks
			},
		},
		{
			nodeID = 306,
			name = "Light's Breach, Zul'Drak",
			neighbors = {
				[304] = 43, -- The Argent Stand, Zul'Drak
				[254] = 121, -- Venomspite, Dragonblight
				[253] = 83, -- Amberpine Lodge, Grizzly Hills
				[244] = 83, -- Wintergarde Keep, Dragonblight
				[305] = 39, -- Ebon Watch, Zul'Drak
				[250] = 74, -- Conquest Hold, Grizzly Hills
				[249] = 105, -- Camp Oneqwah, Grizzly Hills
			},
		},
		{
			nodeID = 250,
			name = "Conquest Hold, Grizzly Hills",
			neighbors = {
				[306] = 79, -- Light's Breach, Zul'Drak
				[248] = 57, -- Apothecary Camp, Howling Fjord
				[192] = 85, -- Camp Winterhoof, Howling Fjord
				[254] = 87, -- Venomspite, Dragonblight
				[249] = 102, -- Camp Oneqwah, Grizzly Hills
			},
		},
		{
			nodeID = 322,
			name = "Dun Niffelem, The Storm Peaks",
			neighbors = {
				[307] = 88, -- Zim'Torga, Zul'Drak
				[326] = 84, -- Ulduar, The Storm Peaks
				[320] = 87, -- K3, The Storm Peaks
				[324] = 32, -- Camp Tunka'lo, The Storm Peaks
			},
		},
		{
			nodeID = 304,
			name = "The Argent Stand, Zul'Drak",
			neighbors = {
				[307] = 41, -- Zim'Torga, Zul'Drak
				[249] = 99, -- Camp Oneqwah, Grizzly Hills
				[306] = 24, -- Light's Breach, Zul'Drak
				[305] = 52, -- Ebon Watch, Zul'Drak
				[255] = 71, -- Westfall Brigade, Grizzly Hills
			},
		},
		{
			nodeID = 253,
			name = "Amberpine Lodge, Grizzly Hills",
			neighbors = {
				[306] = 66, -- Light's Breach, Zul'Drak
				[255] = 83, -- Westfall Brigade, Grizzly Hills
				[184] = 116, -- Fort Wildervar, Howling Fjord
				[185] = 83, -- Westguard Keep, Howling Fjord
				[244] = 81, -- Wintergarde Keep, Dragonblight
			},
		},
		{
			nodeID = 324,
			name = "Camp Tunka'lo, The Storm Peaks",
			neighbors = {
				[307] = 98, -- Zim'Torga, Zul'Drak
				[323] = 101, -- Grom'arsh Crash-Site, The Storm Peaks
				[326] = 73, -- Ulduar, The Storm Peaks
				[320] = 114, -- K3, The Storm Peaks
				[322] = 45, -- Dun Niffelem, The Storm Peaks
			},
		},
		{
			nodeID = 295,
			name = "Kamagua, Howling Fjord",
			neighbors = {
				[183] = 80, -- Valgarde Port, Howling Fjord
				[185] = 36, -- Westguard Keep, Howling Fjord
				[190] = 63, -- New Agamand, Howling Fjord
				[294] = 194, -- Moa'ki, Dragonblight
				[248] = 55, -- Apothecary Camp, Howling Fjord
			},
		},
		{
			nodeID = 248,
			name = "Apothecary Camp, Howling Fjord",
			neighbors = {
				[190] = 92, -- New Agamand, Howling Fjord
				[192] = 60, -- Camp Winterhoof, Howling Fjord
				[250] = 47, -- Conquest Hold, Grizzly Hills
				[254] = 117, -- Venomspite, Dragonblight
				[295] = 54, -- Kamagua, Howling Fjord
			},
		},
		{
			nodeID = 185,
			name = "Westguard Keep, Howling Fjord",
			neighbors = {
				[183] = 69, -- Valgarde Port, Howling Fjord
				[295] = 51, -- Kamagua, Howling Fjord
				[184] = 85, -- Fort Wildervar, Howling Fjord
				[244] = 151, -- Wintergarde Keep, Dragonblight
				[253] = 76, -- Amberpine Lodge, Grizzly Hills
			},
		},
		{
			nodeID = 307,
			name = "Zim'Torga, Zul'Drak",
			neighbors = {
				[326] = 154, -- Ulduar, The Storm Peaks
				[255] = 56, -- Westfall Brigade, Grizzly Hills
				[304] = 52, -- The Argent Stand, Zul'Drak
				[331] = 53, -- Gundrak, Zul'Drak
				[324] = 86, -- Camp Tunka'lo, The Storm Peaks
				[249] = 82, -- Camp Oneqwah, Grizzly Hills
				[322] = 85, -- Dun Niffelem, The Storm Peaks
			},
		},
		{
			nodeID = 331,
			name = "Gundrak, Zul'Drak",
			neighbors = {
				[307] = 55, -- Zim'Torga, Zul'Drak
			},
		},
		{
			nodeID = 255,
			name = "Westfall Brigade, Grizzly Hills",
			neighbors = {
				[253] = 78, -- Amberpine Lodge, Grizzly Hills
				[307] = 72, -- Zim'Torga, Zul'Drak
				[304] = 81, -- The Argent Stand, Zul'Drak
				[184] = 85, -- Fort Wildervar, Howling Fjord
			},
		},
		{
			nodeID = 192,
			name = "Camp Winterhoof, Howling Fjord",
			neighbors = {
				[248] = 57, -- Apothecary Camp, Howling Fjord
				[249] = 58, -- Camp Oneqwah, Grizzly Hills
				[190] = 79, -- New Agamand, Howling Fjord
				[191] = 73, -- Vengeance Landing, Howling Fjord
				[250] = 93, -- Conquest Hold, Grizzly Hills
			},
		},
		{
			nodeID = 249,
			name = "Camp Oneqwah, Grizzly Hills",
			neighbors = {
				[306] = 92, -- Light's Breach, Zul'Drak
				[307] = 92, -- Zim'Torga, Zul'Drak
				[191] = 105, -- Vengeance Landing, Howling Fjord
				[304] = 99, -- The Argent Stand, Zul'Drak
				[250] = 97, -- Conquest Hold, Grizzly Hills
				[192] = 49, -- Camp Winterhoof, Howling Fjord
			},
		},
		{
			nodeID = 190,
			name = "New Agamand, Howling Fjord",
			neighbors = {
				[191] = 80, -- Vengeance Landing, Howling Fjord
				[192] = 80, -- Camp Winterhoof, Howling Fjord
				[248] = 103, -- Apothecary Camp, Howling Fjord
				[295] = 76, -- Kamagua, Howling Fjord
				[254] = 191, -- Venomspite, Dragonblight
			},
		},
		{
			nodeID = 183,
			name = "Valgarde Port, Howling Fjord",
			neighbors = {
				[184] = 70, -- Fort Wildervar, Howling Fjord
				[295] = 95, -- Kamagua, Howling Fjord
				[185] = 69, -- Westguard Keep, Howling Fjord
				[310] = 281, -- Dalaran
			},
		},
		{
			nodeID = 184,
			name = "Fort Wildervar, Howling Fjord",
			neighbors = {
				[255] = 97, -- Westfall Brigade, Grizzly Hills
				[185] = 80, -- Westguard Keep, Howling Fjord
				[183] = 73, -- Valgarde Port, Howling Fjord
				[253] = 96, -- Amberpine Lodge, Grizzly Hills
			},
		},
		{
			nodeID = 191,
			name = "Vengeance Landing, Howling Fjord",
			neighbors = {
				[190] = 88, -- New Agamand, Howling Fjord
				[192] = 73, -- Camp Winterhoof, Howling Fjord
				[249] = 104, -- Camp Oneqwah, Grizzly Hills
				[310] = 303, -- Dalaran
			},
		},

	}
}
