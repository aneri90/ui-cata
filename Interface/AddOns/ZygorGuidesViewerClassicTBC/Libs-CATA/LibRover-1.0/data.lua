local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local data=addon.LibRoverData

data.version={
	nodes_version = 57,  -- Increase this when working on the nodes. Bake the connections using the Debug menu when you're done.
}

-- These are kept strictly unique. Make up bogus names if you need to.
-- If multiple numbers are given, then only the first one is used here; others are used by Pointer to define phasedMaps.

data.MapIDsByName = {

--World Zones
["Azeroth"] = {[0]=947},
["Eastern Kingdoms"]={[0]=1415},
["Kalimdor"]={[0]=1414},
["Outland"]={[0]=1945,[1]=987},
["Northrend"]={[0]=113,[1]=988 },

-------------------------------------
-------    EASTERN KINGDOMS   -------
-------------------------------------

["Alterac Mountains"]={[0]=1416},
["Arathi Highlands"]={[0]=1417},
["Badlands"]={[0]=1418},
["Blasted Lands"]={[0]=1419},
["Burning Steppes"]={[0]=1428},
["Deadwind Pass"]={[0]=1430},
["Dun Morogh"]={[0]=1426},
["Duskwood"]={[0]=1431},
["Eastern Plaguelands"]={[0]=1423},
["Elwynn Forest"]={[0]=1429},
["Hillsbrad Foothills"]={[0]=1424},
["Ironforge"]={[0]=1455},
["Loch Modan"]={[0]=1432},
["Redridge Mountains"]={[0]=1433},
["Searing Gorge"]={[0]=1427},
["Silverpine Forest"]={[0]=1421},
["Stormwind City"]={[0]=1453},
["Northern Stranglethorn"]={[0]=1434},
["Swamp of Sorrows"]={[0]=1435},
["The Hinterlands"]={[0]=1425},
["Tirisfal Glades"]={[0]=1420},
["Undercity"]={[0]=1458},
["Western Plaguelands"]={[0]=1422},
["Westfall"]={[0]=1436},
["Wetlands"]={[0]=1437},

--Kalimdor
["Ashenvale"]={[0]=1440},
["Azshara"]={[0]=1447},
["Darkshore"]={[0]=1439},
["Darnassus"]={[0]=1457},
["Desolace"]={[0]=1443},
["Durotar"]={[0]=1411},
["Dustwallow Marsh"]={[0]=1445},
["Felwood"]={[0]=1448},
["Feralas"]={[0]=1444},
["Moonglade"]={[0]=1450},
["Mulgore"]={[0]=1412},
["Orgrimmar"]={[0]=1454, [1] = 86, },

["Silithus"]={[0]=1451},
["Stonetalon Mountains"]={[0]=1442},
["Tanaris"]={[0]=1446},
["Teldrassil"]={[0]=1438},
["The Barrens"]={[0]=1413},
["Thousand Needles"]={[0]=1441},
["Thunder Bluff"]={[0]=1456},
["Un'Goro Crater"]={[0]=1449},
["Winterspring"]={[0]=1452},

-- Outlands
["Blade's Edge Mountains"] = {[0]=1949},
["Gruul's Lair"] = {[0]=330},
["Hellfire Peninsula"] = {[0]=1944},
["Nagrand"] = {[0]=1951},
["Netherstorm"] = {[0]=1953},
["Shadowmoon Valley"] = {[0]=1948},
["Shattrath City"] = {[0]=1955},
["Terokkar Forest"] = {[0]=1952},
["Zangarmarsh"] = {[0]=1946},

-- Old world, new zones
["Azuremyst Isle"] = {[0]=1943},
["Bloodmyst Isle"] = {[0]=1950},
["Eversong Woods"] = {[0]=1941},
["Ghostlands"] = {[0]=1942},
["Isle of Quel'Danas"] = {[0]=1957},
["Silvermoon City"] = {[0]=1954},
["The Exodar"] = {[0]=1947},

-- TBC Instances
["Auchenai Crypts"] = {[0]=256,[1]=257},
["Black Temple"] = {[0]=339},
["Eye of the Storm"] = {[0]=1956},
["Hellfire Ramparts"] = {[0]=347},
["Magtheridon's Lair"] = {[0]=331},
["Mana-Tombs"] = {[0]=272},
["Serpentshrine Cavern"] = {[0]=1554,[1]=332},
["Sethekk Halls"] = {[0]=258,[1]=259},
["Shadow Labyrinth"] = {[0]=260},
["Tempest Keep"] = {[0]=1555,[1]=334},
["The Arcatraz"] = {[0]=269,[1]=270,[2]=271},
["The Blood Furnace"] = {[0]=261},
["The Botanica"] = {[0]=266},
["The Mechanar"] = {[0]=267,[1]=268},
["The Shattered Halls"] = {[0]=246},
["The Slave Pens"] = {[0]=265},
["The Steamvault"] = {[0]=263,[1]=264},
["The Underbog"] = {[0]=262},
["Old Hillsbrad Foothills"] = {[0]=274},
["Magisters' Terrace"] = {[0]=348,[1]=349},
["The Black Morass"] = {[0]=273},
["Hyjal Summit"]={[0]=329,},
["Karazhan"]={[0]=350,[1]=351,[2]=352,[3]=353,[4]=354,[5]=355,[6]=356,[7]=357,[8]=358,[9]=359,[10]=360,[11]=361,[12]=362,[13]=363,[14]=364,[15]=365,[16]=366,},
["Sunwell Plateau"]={[0]=335,[1]=336,},
["Zul'Aman"]={[0]=333,},


--Battlegrounds
["Alterac Valley"]={[0]=1459},
["Arathi Basin"]={[0]=1461},
["Warsong Gulch"]={[0]=1460},

--Instanced Zones/Misc
["Eastern Kingdoms B"]={[0]=1463},
["Kalimdor B"]={[0]=1464},

-- Faked dungeons and raids
-- Kalimdor
["Blackfathom Deeps"] =		{[0]=221,[1]=222,[2]=223,c=1414, instance=48  },
["Dire Maul"] =			{[0]=234,[1]=235,[2]=236,[3]=237,[4]=238,[5]=239,[6]=240,c=1414, instance=429 },
--["Onyxia"] =			{[0]=248,c=1414, instance=249 },
["Ragefire Chasm"] =		{[0]=213,c=1414, instance=389 },
["Razorfen Downs"] =		{[0]=300,c=1414, instance=129 },
["Razorfen Kraul"] =		{[0]=301,c=1414, instance=47  },
["Ruins of Ahn'Qiraj"] =	{[0]=247,c=1415, instance=509 },
["Temple of Ahn'Qiraj"] =	{[0]=319,[1]=320,[2]=321,c=1414, instance=531 },
["The Temple of Atal'Hakkar"] =	{[0]=220,c=1414, instance=109 },
["Wailing Caverns"] =		{[0]=279,c=1414, instance=43  },
["Zul'Farrak"] =		{[0]=219,c=1414, instance=209 },

-- Eastern Kingdoms
["Blackrock Depths"] =		{[0]=242,[1]=243,c=1415, instance=230 },
["Blackrock Spire"] =		{[0]=250,[1]=251,[2]=252,[3]=253,[4]=254,[5]=255,c=1415, instance=229 },
["Blackwing Lair"] =		{[0]=287,[1]=288,[2]=289,[3]=290,c=1415, instance=469 },
["Gnomeregan"] =		{[0]=226,[1]=227,[2]=228,[3]=229,c=1415, instance=90  },
["Molten Core"] =		{[0]=232,c=1415, instance=409 },
["Scarlet Monastery"] =		{[0]=302,[1]=303,[2]=304,[3]=305,c=1415, instance=1004},
["Shadowfang Keep"] =		{[0]=310,[1]=311,[2]=312,[3]=313,[4]=314,[5]=315,[6]=316,c=1415, instance=33  },
["Stratholme"] =		{[0]=317,[1]=318,c=1415, instance=329 },
["The Deadmines"] =		{[0]=291,[1]=292,c=1415, instance=36  },
["The Stockade"] =		{[0]=225,c=1415, instance=34  },
["Uldaman"] =			{[0]=230,[1]=231,c=1415, instance=70  },
["Zul'Gurub"] =			{[0]=233,[1]=337,c=1415, instance=859 },
["Scholomance"] =		{[0]=9016,c=1415, instance=289},

-- WOTLK
-- Zones
["Borean Tundra"]={[0]=114},
["Crystalsong Forest"]={[0]=127},
["Dalaran"]={[0]=126,[1]=125, default=1},
["Dragonblight"]={[0]=115},
["Grizzly Hills"]={[0]=116},
["Howling Fjord"]={[0]=117},
["Hrothgar's Landing"]={[0]=170},
["Icecrown"]={[0]=118},
["Isle of Conquest"]={[0]=169},
["Plaguelands: The Scarlet Enclave"]={[0]=124},
["Sholazar Basin"]={[0]=119},
["The Storm Peaks"]={[0]=120},
["Wintergrasp"]={[0]=123},

-- Dungeons
["Ahn'kahet: The Old Kingdom"]={[0]=132},
["Azjol-Nerub"]={[0]=157,[1]=158,[2]=159},
["Drak'Tharon Keep"]={[0]=160,[1]=161},
["Gundrak"]={[0]=154},--153 removed, unused orphan
["Halls of Lightning"]={[0]=138,[1]=139},
["Halls of Reflection"]={[0]=185},
["Halls of Stone"]={[0]=140},--1375 removed, 8.2 map
["Maraudon"]={[0]=280,[1]=281},
["Pit of Saron"]={[0]=184},
["The Culling of Stratholme"]={[0]=130,[1]=131},
["The Eye of Eternity"]={[0]=141},
["The Forge of Souls"]={[0]=183},
["The Obsidian Sanctum"]={[0]=155},
["The Oculus"]={[0]=143,[1]=144,[2]=145,[3]=146},
["The Violet Hold"]={[0]=168},
["The Nexus"]={[0]=129},
["Trial of the Champion"]={[0]=171},
["Utgarde Keep"]={[0]=133,[1]=134,[2]=135},
["Utgarde Pinnacle"]={[0]=136,[1]=137},
["Zul'Drak"]={[0]=121},
["The Ruby Sanctum"]={[0]=200},

-- Raids
["Icecrown Citadel"]={[0]=186,[1]=187,[2]=188,[3]=189,[4]=190,[5]=191,[6]=192,[7]=193},
["Naxxramas"]={[0]=162,[1]=163,[2]=164,[3]=165,[4]=166,[5]=167},
["Trial of the Crusader"]={[0]=173,[1]=172},
["Ulduar"]={[0]=147,[1]=148,[2]=149,[3]=150,[4]=151,[5]=152},
["Vault of Archavon"]={[0]=156},
["Strand of the Ancients"]={[0]=128},
["Onyxia's Lair"] = {[0]=248},

-- CATA
["Abyssal Depths"] = { [0] = 204, },
["Darkmoon Island"] = { [0] = 407, },
["Deepholm"] = { [0] = 207, },
["Firelands"] = { [0] = 367, [1] = 368, [2] = 369, },
["Gilneas"] = { [0] = 179, },
["Gilneas City"] = { [0] = 202, },
["Kelp'thar Forest"] = { [0] = 201, },
["Kezan"] = { [0] = 194, },
["Mount Hyjal"] = { [0] = 198, },
["Molten Front"] = { [0] = 338, },
["Shimmering Expanse"] = { [0] = 205, },
["Southern Barrens"] = { [0] = 199, },
["The Lost Isles"] = { [0] = 174, },
["The Cape of Stranglethorn"] = { [0] = 210, },
["Stranglethorn Vale"] = { [0] = 224, },
["Twilight Highlands"] = { [0] = 241, },
["Uldum"] = { [0] = 249, },
["Vashj'ir"] = { [0] = 203, },

["Ahn'Qiraj: The Fallen Kingdom"] = { [0] = 327, },
["Baradin Hold"] = { [0] = 282, },
["Black Temple"] = { [0] = 340, [1] = 341, [2] = 342, [3] = 343, [4] = 344, [5] = 345, [6] = 346, },
["Blackrock Caverns"] = { [0] = 283, [1] = 284, },
["Blackwing Descent"] = { [0] = 285, [1] = 286, },
["Dragon Soul"] = { [0] = 409, [1] = 410, [2] = 411, [3] = 412, [4] = 413, [5] = 414, [6] = 415, },
["End Time"] = { [0] = 401, [1] = 402, [2] = 403, [3] = 404, [4] = 405, [5] = 406, },
["Eye of the Storm"] = { [0] = 397, },
["Grim Batol"] = { [0] = 293, },
["Gundrak"] = { [0] = 153, },
["Halls of Origination"] = { [0] = 297, [1] = 298, [2] = 299, },
["Halls of Stone"] = { [0] = 1375, },
["Hour of Twilight"] = { [0] = 399, [1] = 400, },
["Lost City of the Tol'vir"] = { [0] = 277, },
["Ruins of Gilneas"] = { [0] = 217, },
["Ruins of Gilneas City"] = { [0] = 218, },
["ScholomanceOLD"] = { [0] = 306, [1] = 307, [2] = 308, [3] = 309, },
["The Bastion of Twilight"] = { [0] = 294, [1] = 295, [2] = 296, },
["The Battle for Gilneas"] = { [0] = 275, },
["The Maelstrom"] = { [0] = 276, [1] = 948, },
["The Nexus"] = { [0] = 370, },
["The Oculus"] = { [0] = 142, },
["The Stonecore"] = { [0] = 324, },
["The Vortex Pinnacle"] = { [0] = 325, },
["Throne of the Four Winds"] = { [0] = 328, },
["Throne of the Tides"] = { [0] = 322, [1] = 323, },
["Tol Barad"] = { [0] = 244, },
["Tol Barad Peninsula"] = { [0] = 245, },
["Twin Peaks"] = { [0] = 206, },
["Well of Eternity"] = { [0] = 398, },


}

data.MapNamesByID = {}
data.FloorByID = {}
data.MapGroupIDs = {}
data.InstanceMaps = {}
data.InstanceMapsRev = {}
data.InstanceMapsContinents = {}
data.DungeonMaps = {} -- This is used by |goto implementation to detect which maps cannot be positioned anymore.
for mapname,mapdata in pairs(data.MapIDsByName) do 
	for floornum,floormap in pairs(mapdata) do
		if tonumber(floornum) then
			data.MapNamesByID[floormap] = {mapname,floornum}
			data.FloorByID[floormap] = floornum
			data.MapGroupIDs[floormap] = mapname
		end
	end
	if mapdata.instance then
		data.InstanceMaps[mapdata.instance] = mapdata[0]
		data.InstanceMapsRev[mapdata[0]] = mapdata.instance
		data.InstanceMapsContinents[mapdata[0]] = mapdata.c
		data.DungeonMaps[mapdata[0]] = true
	end
end

--[[
	YE OLDE HELP TEXT

	Okay, to clarify, there's multiple ways to write a map link now. It's a mess, but it works.

	The first, simplest way, is two nodes linked, written in plain text (let's hope they're accessible by some means):
		"First Zone/2 11.22,33.44 -x- Second Zone/3 55.66,77.88",

	The "-x-" means it's a crossing, two-way. You can use "-to-" to make a one-way link.


	NODE NAMES:

	Adding @something after the node coordinates gives the node a name, for later reuse.
		"Stormwind 11.22,33.44 -x- Elwynn Forest 55.66,77.88 @stormgate",
		"Elwynn 77.77,66.66 -x- @stormgate",

	You can also use @+ to indicate the last node created or mentioned, whether it was named or not.
		"Stormwind 11.22,33.44 -x- Elwynn Forest 55.66,77.88",
		"@+ -x- Elwynn 77.77,66.66",

	This allows for easy chaining of nodes.


	ONE NODE?

	You can create just one node:
		"Solitary 11.1,22.2"

	This only makes sense if you @+ link to it later, or give it an explicit @name and refer to that.


	ADDITIONAL NODE DATA:

	Writing <field:value> after a node's coordinates assigns additional data.
		"Stormwind 11.1,22.2 <title:Watch out, dog poo> <radius:5>"

	Data fields include (among others):
		'title' to caption a node,
		'radius' to set the node's player-detection radius,
		'region' to assign a node to a special region,
		'nofly' set to 1 means the node cannot be flown to,
		'dark' set to 1 means the node can only be seen by the player from a small distance, but suffers no penalty when chained between other nodes


	ADDITIONAL LINK DATA:

	Writing {field:value} after both nodes assigns data to their link:
		"Stormwind 11.1,22.2 -x- Elwynn Forest 55.5,66.6 {cost:999}"   -- this is a very time-costly connection


	ADVANCED FORMAT:

	If that's not enough, you can use a "raw" format to write node links:
		{ "@+" , "Orgrimmar/1 11.1,22.2" , template="portalauto", faction="H", cost=123 }

	Within that, you can go even deeper and write the node(s) in raw mode, too:
		{ "@+" , {"Orgrimmar/1 11.1,22.2",title="Something in Orgri",region="whatever"} , oneway=1 }

	Very advanced, messy, "fake zone"-based mapping (Maraudon the Zone of Nightmares) makes extensive use of that.

--]]


data.basenodes = {}

data.basenodes.setup = {
	--"REGION fuselightbtspre Badlands 79.1,31.6 <150",
}



-- These zone pairs see directly into each other, as they share "green" borders.
data.greenborders = {

	{"Western Plaguelands","Eastern Plaguelands"},
	{"Feralas","Thousand Needles"},
	{"The Barrens","Durotar"},
	{"Mulgore","Thunder Bluff"},
	{"Elwynn Forest","Duskwood"},
	{"Westfall","Duskwood"},
	{"Westfall","Elwynn Forest"},
	{"Hillsbrad Foothills","Alterac Mountains"},
	{"Azuremyst Isle","The Exodar"},
	{"Eversong Woods","Ghostlands"},
	{"Azuremyst Isle","Bloodmyst Isle"},
	{"Shattrath City","Terokkar Forest"},
	{"Dragonblight","Grizzly Hills"},

	{"Vashj'ir","Kelp'thar Forest"},
	{"Vashj'ir","Shimmering Expanse"},
	{"Vashj'ir","Abyssal Depths"},
	{"Kelp'thar Forest","Shimmering Expanse"},
	{"Shimmering Expanse","Abyssal Depths"},
	{"Abyssal Depths","Kelp'thar Forest"},

	{"Gilneas","Gilneas City"},

}

data.walls = {
}

data.ZoneMeta = {
	["ALL_MICROS"] = {hostile=true},
	--[111] = {hostile=false},
	--[222] = {minlevel=50},
}

--[[
--]]



-- force areas of map1 to be treated as if player was on target map. useful when blizz map detection fails and gives us continent instead of local map. 
data.RemapData = {
	-- source map = ractange based on y,x = unitposition, target map to remap coords to
	-- use ZGV.Testing.remap_dump to grab this
	[1414] = { -- Kalimdor
		{top=7380.2001953125, bottom=7111.6000976563, left=-2149.9001464844, right=-2217.1000976563, target=1450}, -- timbermaw hold north part to moonglade
		{top=-3368.0380859375, bottom=-4531.5688476562, left=1612.5491943359, right=682.98950195312, target=1444}, -- Dire Maul entrance to feralas
		{top=-481.93762207031, bottom=-844, left=-1734.4168701172, right=-2443.75, target=1413},	-- Wailing Caverns entrance
		{top=-4125.3334960938, bottom=-4530.3623046875, left=-1276.0064697266, right=-1762.8522949219, target=1413},--Razorfen Kraul entrance
		{top=-4582.068359375, bottom=-4775.9653320312, left=-2201.96484375, right=-2542.3266601562, target=1413},--Razorfen Downs entrance
		{top=4370.810546875, bottom=4036.9792480469, left=1075.3408203125, right=622.20294189453, target=1440},--Blackfathom Deeps entrance
		{top=-8169.6137695312, bottom=-8618.4921875, left=2033.1823730469, right=1360.8060302734, target=1451},--The Scarab Wall
		{top=-691.6240234375, bottom=-1758.9799804688, left=3207.9675292969, right=2398.7431640625, target=1443},--Maraudon entrance
	},
	[1415] = { -- Eeastern Kingdoms
		{top=-11034.790039062, bottom=-11321.396484375, left=1741.1593017578, right=1311.25, target=1436}, -- deadmines entrance to westfall
		{top=-10132.08203125, bottom=-10545.963867188, left=-3655.4799804688, right=-4123.0810546875, target=1435}, -- swamp of sorrows lake fix
		{top=-4721.1206054688, bottom=-5505.3076171875, left=1252.9982910156, right=558.43389892578, target=1426}, --Gnomeregan entrance
		{top=2943.8537597656, bottom=2767.0622558594, left=-615.70629882812, right=-928.17529296875, target=1420}, --Scarlet Monastery
		{top=-6028.44921875, bottom=-6189.142578125, left=-2917.7893066406, right=-3252.7543945312, target=1418}, --Uldaman entrance
		{top=-6508.2651367188, bottom=-6736.8564453125, left=-3644.3022460938, right=-3979.2670898438, target=1418}, --Uldaman rear entrance
		{top=-7150.4682617188, bottom=-7780.24609375, left=-880.25659179688, right=-1410.1198730469, target=1427}, --Blackrock Mountain/Searing Gorge
		{top=-7780.24609375, bottom=-8027.24609375, left=-1000.25659179688, right=-1280.1198730469, target=1428}, --Blackrock Mountain/Burning Steppes
		{top=1360.0352783203, bottom=1193.6667480469, left=-2490.8962402344, right=-2697.4860839844, target=1422}, --Scholomance entrance
		{top=3337.2485351562, bottom=3076.5563964844, left=-3941.2150878906, right=-4173.6611328125, target=1423}, --Stratholme Service entrance
		{top=3536.4562988281, bottom=3251.6638183594, left=-3184.056640625, right=-3532.9575195312, target=1423}, --Stratholme Main entrance
		{top=-10591.614257812, bottom=-10938.62890625, left=-2930.4775390625, right=-3557.1740722656, target=1419}, -- Blasted lands
	},
}