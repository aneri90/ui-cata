local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local data=addon.LibRoverData

data.basenodes.transit = {

			"Orgrimmar 52.5,53.1 -x- Northern Stranglethorn 37.2,52.4 {fac:H} {mode:ZEPPELIN}",
			"Orgrimmar 50.8,55.9 -x- Tirisfal Glades 60.7,58.8 {fac:H} {mode:ZEPPELIN}",
			"Orgrimmar 44.7,62.3 -x- Borean Tundra 41.4,53.6 {fac:H} {mode:ZEPPELIN}",--,cost=7*60+30},

			"Tirisfal Glades 59.1,59.0 <port:Undercity> -x- Howling Fjord 77.7,28.3 {fac:H} {mode:ZEPPELIN}",
			"Tirisfal Glades 61.9,59.1 <port:Undercity> -x- Northern Stranglethorn 37.5,50.9 {fac:H} {mode:ZEPPELIN}",

			"Stormwind City 18.0,25.8 -x- Borean Tundra 59.7,69.4  {fac:A} {mode:SHIP} {cost:300}",
			"Stormwind City 22.5,55.8 -x- Teldrassil 55.0,93.7 <port:Darnassus>  {fac:A} {mode:SHIP}",
			"Stormwind City 70.5,30.0 @tramsw <noallzone:1> -x- Ironforge 78,51  {fac:A} {mode:TRAM}",
			"Stormwind City 66.4,35.0 -x- @tramsw {A:WALK} {dontsetborder:1}",
			
			"Wetlands 6.4,62.2 <port:Menethil Harbor> -x- Dustwallow Marsh 71.5,56.3 {fac:A} {mode:SHIP}",
			"Wetlands 5.1,55.7 <port:Menethil Harbor> -x- Howling Fjord 61.3,62.6 <port:Valgarde> {fac:A} {mode:SHIP}",--,cost=300}, --ship turnaround is 450, but takes forever to depart/arrive

			-- NEUTRAL SHIPS
			"The Cape of Stranglethorn 39.0,67.0 <port:Booty Bay> -x- The Barrens 70.2,73.3 <port:Ratchet> {mode:SHIP}", -- booty-ratchet
			"Borean Tundra 11.1,22.2 <port:Unu'pe> -x- Dragonblight 47.3,67.3 <port:Moa'ki Harbor> {mode:SHIP} {tag:turtle}", -- unu'pe-moa'ki
			"@+ -x- Howling Fjord 11.1,22.2 <port:Kamagua> {mode:SHIP} {tag:turtle}", -- moa'ki-kamagua


			"Eastern Plaguelands 54.5,8.4 <tag:darkportal> -x- Ghostlands 45.7,71.6 <tag:darkportal> {mode:PORTAL}",

	-- == PORTALS == --

			-- ORGRIMMAR PORTALS:
			"Orgrimmar 49.2,36.5 -to- Kelp'thar Forest 44,28 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(26784) and not PlayerCompletedQuest(25222)}",
			"Orgrimmar 49.2,36.5 -to- Shimmering Expanse 49.5,40.5 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(25222) and not PlayerCompletedQuest(99999)}",
			"Orgrimmar 49.2,36.5 -to- Abyssal Depths 51.4,61.0 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(26784)}",
			"Orgrimmar 48.9,38.5 -to- Uldum 54.9,34.3 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(28112)}",
			"Orgrimmar 50.8,36.4 -to- Deepholm 50.6,52.9 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(27123)}",
			"Deepholm 50.9,53.1 -to- Orgrimmar 50.0,37.7 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(27123)}",
			"Orgrimmar 51.1,38.3 -to- Mount Hyjal 63.5,23.4 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(25316)}",
			"Mount Hyjal 63.5,24.4 -to- Orgrimmar 50.0,37.7 {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(25316)}",
			"Orgrimmar 47.4,39.3 -to- Tol Barad Peninsula 55.8,80.1 {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=85}",
			"Tol Barad Peninsula 56.3,79.7 -to- Orgrimmar 47.6,39.1 {fac:H} {mode:PORTAL} {cond:UnitLevel('player')>=85}",
			"Orgrimmar 50.2,39.4 -x- Twilight Highlands 73.57,53.53 <tag:cityportal> {fac:H} {mode:PORTAL} {cond:PlayerCompletedQuest(26784)}",

			-- STORMWIND PORTALS
			"Stormwind City 73.2,16.9 -to- Kelp'thar Forest 44,28 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(14482) and not PlayerCompletedQuest(25222)}",
			"Stormwind City 73.2,16.9 -to- Shimmering Expanse 47.2,57.5 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(25222) and not PlayerCompletedQuest(99999)}",
			"Stormwind City 73.2,16.9 -to- Abyssal Depths 55.7,72.8 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(14482)}",
			"Stormwind City 75.3,20.5 -to- Uldum 54.9,34.3 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(28112)}",
			"Stormwind City 73.2,19.6 -to- Deepholm 48.7,53.6 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(27123)}",
			"Deepholm 48.5,53.8 -to- Stormwind City 74.5,18.3 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(27123)}",
			"Stormwind City 76.2,18.7 -x- Mount Hyjal 62.6,23.1 {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(25316)}",
			"Stormwind City 73.2,18.4 -to- Tol Barad Peninsula 73.7,60.9 {fac:A} {mode:PORTAL} {cond:UnitLevel('player')>=85}",
			"Tol Barad Peninsula 75.2,58.9 -to- Stormwind City 73.4,18.3 {fac:A} {mode:PORTAL} {cond:UnitLevel('player')>=85}",
			"Stormwind City 75.2,16.8 -x- Twilight Highlands 79.5,77.8 <tag:cityportal> {fac:A} {mode:PORTAL} {cond:PlayerCompletedQuest(27537)}",

			"The Exodar 47.6,62.2 -x- Darnassus 43.5,78.7 {fac:A} {mode:PORTAL}",
			"Darnassus 37.3,50.5 <tag:pinkportal> -x- Teldrassil 55.1,88.4 <tag:pinkportal><port:Rut'theran Village> {mode:PORTAL}",  -- Teldrassil 55.1,88.4  NO  Teldrassil 38.1,47.5
			"Silvermoon City 49.48,14.81 -x- Tirisfal Glades 59.5,67.4 {fac:H} {title:Click the Orb of Translocation} {mode:PORTAL}",

			-- portals -to- Blasted Lands
			"Blasted Lands 53.9,46.1 @bl_port_dst",
			-- Horde
			"Orgrimmar/1 44.7,68.0 -to- Blasted Lands 53.9,46.1 {fac:H} {mode:PORTAL}",
			-- Ally
			"Ironforge 27.2,7.0 -to- @bl_port_dst {mode:PORTAL} {cond:UnitLevel('player')>=58}",
			"Stormwind City 49.0,87.3 -to- @bl_port_dst {mode:PORTAL} {cond:UnitLevel('player')>=58}",
			"The Exodar 48.2,63.0 -to- @bl_port_dst {mode:PORTAL} {cond:UnitLevel('player')>=58}",
			"Darnassus 44.1,78.2 -to- @bl_port_dst {mode:PORTAL} {cond:UnitLevel('player')>=58}",

			-- missing: more horde BL portals

			"Blasted Lands 55.0,54.2 <tag:darkportal> -x- Hellfire Peninsula 89.4,50.2 {mode:PORTAL} <tag:darkportal> {title:Run through the portal} {cond:UnitLevel('player')>=58}",

			"Hellfire Peninsula 88.64,52.82 -to- Stormwind City 49,87 {fac:A} {mode:PORTAL}",
			"Hellfire Peninsula 88.6,47.7 -to- Orgrimmar 48.3,64.5 {fac:H} {mode:PORTAL}",

			-- DALARAN PORTALS:
			"Dalaran 40.1,62.8 -to- Stormwind City 49.6,86.5 {fac:A} {mode:PORTAL}", --COORDS BAD
			"Dalaran 55.4,25.4 -to- Orgrimmar 48.3,64.5 {fac:H} {mode:PORTAL}",
			"Dalaran 33.6,68.6 -to- Wintergrasp 50.0,16.7 {fac:A} {mode:PORTAL} {cond:LibRover:IsWintergraspControlled()}",
			"Dalaran 58.1,25.8 -to- Wintergrasp 50.0,16.7 {fac:H} {mode:PORTAL} {cond:LibRover:IsWintergraspControlled()}",

			"Dalaran 25.5,51.4 -to- Tanaris 65.2,49.8 @cot_from_dala <region:cotime> {mode:PORTAL} {cond:LibRover.cfg.use_cot or (ZGV and ZGV:GetReputation('Keepers of Time').standing>=5)}",

			-- MAGE TELEPORTS:
			"Dalaran 55.86,46.81 <spell:53140>",
			"Shattrath City 54.97,40.23 <spell:33690>",
			"Shattrath City 53.0,49.2 <spell:35715>",
			"The Exodar 47.62,59.82 <spell:32271>",
			"Dustwallow Marsh 66.00,49.00 <spell:49359>",
			"Darnassus 43.47,78.67 <spell:3565>",
			"Ironforge 25.51,08.43 <spell:3562>",
			"Moonglade 50,50 <spell:18960>",
			"Stormwind City 49.6,86.5 @sw_tp_dst <spell:3561>",
			"Orgrimmar 48.3,64.5 @org_tp_dst <spell:3567>",
			"Silvermoon City 58.3,19.2 <spell:32272>",
			"Swamp of Sorrows 49.8,55.8 <spell:49358>", --stonard
			"Thunder Bluff 22.2,16.9 <spell:3566>",
			"Tol Barad 50,50 <spell:88342>",
			"Tol Barad 50,50 <spell:88344>",
			"Undercity 84.6,16.3 <spell:3563>",
			-- DK DEATHGATE
			"Eastern Plaguelands 83.72,50.03 <spell:50977>",

			-- SHATTRATH PORTALS:
			"Shattrath City 57.2,48.3 -to- @sw_tp_dst {fac:A} {mode:PORTAL}",
			"Shattrath City 56.8,48.9 -to- @org_tp_dst {fac:H} {mode:PORTAL}",
			"Shattrath City 48.6,42.0 -to- Isle of Quel'Danas 48.3,34.5 {mode:PORTAL}",

			-- Badlands details
			-- Fuselight-by-the-sea teleport
			"Badlands 72.1,31.6 -x- Badlands 75.6,33.2 {B:WALK}", --access
			"Badlands 82.8078,33.9781 -x- Badlands 88.0642,32.4937 {fac:A} {mode:PORTAL} {tag:transporter}",
			-- Fuselight entrances
			"Badlands 60.7,28.3 -x- Badlands 62.8,35.7 <region:fuselight> {B:WALK}",
			"Badlands 68.7,30.9 -x- Badlands 66.7,36.3 <region:fuselight> {B:WALK}",

			-- Firelands portal
			"Mount Hyjal 27.5,56.3 -x- Molten Front 52.9,83.9 {mode:PORTAL}",

			-- MISCELLANEAEOAOUS
			--[[
			"Badlands 45.8,7.3 -x- Loch Modan 48.13,79.19 @lochbad01 <dist:10> <noallzone:1> {B:WALK}",
			"@lochbad01 -x- Loch Modan 48.21,77.16 @lochbad02 <dist:10> <noallzone:1> {B:WALK}",
			"@lochbad02 -x- Loch Modan 47.21,73.40 <dist:10> {B:WALK}",
			--]]

			-- Loch Modan / Badlands cross
			"Badlands 45.8,7.3",
			"@+ -x- Loch Modan 48.13,79.19 <dist:10> <noallzone:1> {B:WALK}",  -- @+ means "last one added", it's a nightmare, I know.
			--"@+ -x- Loch Modan 47.15,78.55 <dist:5> <noallzone:1> {B:WALK}",
			--"@+ -x- Loch Modan 48.22,78.08 <dist:5> <noallzone:1> {B:WALK}",
			"@+ -x- Loch Modan 48.21,77.16 <dist:5> <noallzone:1> {B:WALK}",
			"@+ -x- Loch Modan 47.28,76.00 <dist:5> <noallzone:1> {B:WALK}",
			--"@+ -x- Loch Modan 48.32,76.41 <dist:5> <noallzone:1> {B:WALK}",
			--"@+ -x- Loch Modan 46.96,73.77 <dist:5> <noallzone:1> {B:WALK}",
			"@+ -x- Loch Modan 47.21,73.40 <dist:5> {B:WALK}",


			"Un'Goro Crater 50.4,7.9 -x- Sholazar Basin 40.4,83.0 {mode:PORTAL} {tag:portalauto} {cond:PlayerCompletedQuest(12613)}",




---------------------
----   PORTALS   ----
---------------------

	--## ALLIANCE ##--

	--## HORDE ##--

	--## NEUTRAL ##--

	-- SHATTRATH PORTALS:
	
-------------------------
-- BOATS AND ZEPPELINS --
-------------------------

	--## ALLIANCE ##--

	--## HORDE ##--

	--## NEUTRAL ##--

	---------------
	-- NORTHREND --
	---------------

	--## ALLIANCE ##--

	--## HORDE ##--

	--## NEUTRAL ##--






------------------
-- CLASS SPELLS --
------------------

	----------------
	---   MAGE   ---		-- NOTE: ACCOUNT FOR "Rune of Teleportation" REQUIRED TO CAST TELEPORT SPELLS
	----------------
	
	--## ALLIANCE ##--

	--## HORDE ##--

			

	-----------------
	---   DRUID   ---
	-----------------


	------------------
	---   SHAMAN   ---
	------------------

}
