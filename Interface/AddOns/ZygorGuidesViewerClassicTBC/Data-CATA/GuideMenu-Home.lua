local name,ZGV = ...

local GuideMenu = ZGV.GuideMenu

GuideMenu.Messages = {}
-- Notification messages
GuideMenu.Messages.welcome = { 
	action = function() ZGV.GuideMenu:Show("Featured") end,
	title = "Welcome to Zygor Guides",
	text = [[* See the **new Cataclysm Classic Guides**
	]],
	{"list", text=[[Updated with TBC phase 2 content (see Featured section).]]},


	{"section", text=[[August 6th, 2021]]},

{"section", text=[[DUNGEONS]]},	
	{"list", text=[[Updated Dungeon Boss and Quest guides with custom maps for TBC.]]},

	{"section", text=[[July 23rd, 2021]]},

{"section", text=[[EVENTS]]},
	{"list", text=[[Added **Midsummer Fire Festival Quests**]], guide="EVENTS\\Midsummer Fire Festival\\Midsummer Fire Festival Quests"},
	{"list", text=[[Added **Midsummer Fire Festival Dailies**]], guide="EVENTS\\Midsummer Fire Festival\\Midsummer Fire Festival Dailies"},
	{"list", text=[[Added **Midsummer Fire Festival Bonfires**]], guide="EVENTS\\Midsummer Fire Festival\\Midsummer Fire Festival Bonfires", faction="A"},
	{"list", text=[[Added **Midsummer Fire Festival Bonfires**]], guide="EVENTS\\Midsummer Fire Festival\\The Fires of Azeroth\\Midsummer Fire Festival Bonfires", faction="H"},

{"section", text=[[GOLD]]},	
	{"list", text=[[Updated Gold Guide with TBC farming and gathering chores.]]},


}

--[=[
GuideMenu.Messages.guides = { 
	action = function() ZGV.GuideMenu:Show("Featured") end,
	title = "New in this update",
	text = [[Added additional **Dragonflight Pets and Achievements** guides
	]],
}

GuideMenu.Messages.features = { 
	action = function() print("features") end,
	title = "New features have been added.",
	text = [[
	]],
}
--]=]


-- ZygorMessage widget
GuideMenu.ZygorMessage = [[
Welcome to Zygor's Classic Guides

Please contact Customer Support if you encounter any issues.
]]

GuideMenu.Bulletin={
	{"title", text=[[Welcome to Zygor's Cataclysm Classic Guides]]},

	{"list", text=[[Added Cataclysm Classic guides. See **Featured section**.]]},
	{"section", text=[[Improved Travel System.]] },
	{"text", text=[[You can now switch between four Travel System presets: Direct (beeline), Simple (relaxed/reliable), Advanced (speed), or Custom (mix and match). Boat handling improved and traveling animations added.]]},
	{"section", text=[[Improved Notifications System.]] },
	{"text", text=[[Zygor Button reworked into Notifications Center. Toast messages updated to be less intrusive.]]},
	{"section", text=[[Improved Gear System.]] },
	{"text", text=[[Gear System reworked to highlight upgrades in your bags.]]}
}

