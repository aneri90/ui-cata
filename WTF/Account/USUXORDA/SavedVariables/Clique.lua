
CliqueDB = nil
CliqueDB3 = {
	["char"] = {
		["Shantx - Pyrewood Village"] = {
			["alerthidden"] = true,
		},
	},
	["profileKeys"] = {
		["Shantx - Pyrewood Village"] = "Shantx - Pyrewood Village",
	},
	["profiles"] = {
		["Shantx - Pyrewood Village"] = {
			["bindings"] = {
				{
					["sets"] = {
						["default"] = true,
					},
					["type"] = "target",
					["key"] = "CTRL-BUTTON1",
					["unit"] = "mouseover",
				}, -- [1]
				{
					["type"] = "menu",
					["key"] = "CTRL-BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [2]
				{
					["macrotext"] = "/target [@mouseover, noharm] target\n/cast [@target] Soulstone\n/targetlasttarget",
					["type"] = "macro",
					["key"] = "BUTTON2",
					["sets"] = {
						["default"] = true,
					},
				}, -- [3]
				{
					["type"] = "spell",
					["key"] = "SHIFT-BUTTON3",
					["sets"] = {
						["default"] = true,
					},
					["icon"] = 136168,
					["spell"] = "Health Funnel",
				}, -- [4]
				{
					["type"] = "spell",
					["key"] = "ALT-BUTTON1",
					["sets"] = {
						["default"] = true,
					},
					["icon"] = 136210,
					["spell"] = "Create Soulstone",
				}, -- [5]
			},
		},
	},
}
