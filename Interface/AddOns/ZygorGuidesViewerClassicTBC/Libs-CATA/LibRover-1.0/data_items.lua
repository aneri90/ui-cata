local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local data=addon.LibRoverData


-- "_HEARTH" or "_G_HEARTH" destinations are not parsed immediately; they get assigned at calculation time.


local hearthcost = 80			-- VERIFY THIS VALUE IS CORRECT FOR CLASSIC
local otheritem = 30			-- VERIFY THIS VALUE IS CORRECT FOR CLASSIC




data.portkeys = {

			-- Hearthstone
				{item=6948, destination="_HEARTH", cost=hearthcost, mode="hearth"},
			

			-- Atiesh, Greatstaff of the Guardian (PRIEST)
				{item=22631,  destination="Deadwind Pass 47.24,75.40", cost=otheritem, cooldown=60},

			
			-- Atiesh, Greatstaff of the Guardian (MAGE)
				{item=22589,  destination="Deadwind Pass 47.24,75.40", cost=otheritem, cooldown=60},

			
			-- Atiesh, Greatstaff of the Guardian (DRUID)
				{item=22632,  destination="Deadwind Pass 47.24,75.40", cost=otheritem, cooldown=60},

			
			-- Atiesh, Greatstaff of the Guardian (WARLOCK)
				{item=22630,  destination="Deadwind Pass 47.24,75.40", cost=otheritem, cooldown=60},


			-- Dimensional Ripper - Everlook  (Requires Goblin Engineering >= 260)
				{item=18984, toy=true, destination="Winterspring 61.15,37.56", cost=120, cooldown=14400, cond=function() return ZGV.Parser.ConditionEnv.skill('Engineering')>=260 end},
			
			
			-- Ultrasafe Transporter: Gadgetzan  (Requires Gnomish Engineering >=260)
				{item=18986, toy=true, destination="Tanaris 52.27,26.83", cost=120, cooldown=14400, cond=function() return ZGV.Parser.ConditionEnv.skill('Engineering')>=260 end},
			
			
			-- Shaman "Astral Recall" Spell
				{spell=556, destination="_HEARTH", cost=hearthcost/2, is_astral=1 },						-- 15 minute cooldown, so half cost of hearthstone, which is 30 minutes in Cataclysm


			-- Dark Portal (Acts as a Hearthstone replacement)
				{item=184871, destination="_HEARTH", cost=hearthcost, mode="hearth"},
}
