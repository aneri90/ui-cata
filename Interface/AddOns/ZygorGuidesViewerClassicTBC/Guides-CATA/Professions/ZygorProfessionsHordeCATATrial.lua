local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ProfessionsH") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Alchemy (1-525)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Alchemy') > 0 end,
description="This guide will walk you through leveling your Alchemy skill from 1-525.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar/0 56.48,35.25 < 7 |walk
talk Yelmak##3347
|tip Inside the building.
Train Apprentice Alchemy |skillmax Alchemy,75 |goto Orgrimmar/0 55.68,45.76
step
label "Begin_Profession_Leveling_Classic"
map Tirisfal Glades
path follow smart; loop on; ants curved; dist 20
path	51.54,54.24	50.24,56.05	47.60,53.12	45.65,51.89	46.96,47.83
path	44.74,46.19	42.79,42.59	41.45,40.79	39.11,40.30	38.92,43.20
path	38.50,46.14	36.48,47.41	34.54,48.14	32.02,48.17	31.72,50.34
path	33.92,51.19	37.36,51.84	38.60,52.08	39.77,54.03	40.68,58.21
path	40.92,60.80	41.92,63.49	44.02,65.29	46.57,66.37	49.11,67.48
path	50.44,66.83	51.57,64.64	54.10,62.49	56.28,59.15	56.53,55.12
path	53.81,53.15	52.04,54.99
click Peacebloom##1618+
|tip They look like small white flowers on the ground along the path.
collect 65 Peacebloom##2447 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Alchemy") >= 60 |or
step
label "Collect_Silverleaf_60"
map Tirisfal Glades
path follow smart; loop on; ants curved; dist 20
path	51.54,54.24	50.24,56.05	47.60,53.12	45.65,51.89	46.96,47.83
path	44.74,46.19	42.79,42.59	41.45,40.79	39.11,40.30	38.92,43.20
path	38.50,46.14	36.48,47.41	34.54,48.14	32.02,48.17	31.72,50.34
path	33.92,51.19	37.36,51.84	38.60,52.08	39.77,54.03	40.68,58.21
path	40.92,60.80	41.92,63.49	44.02,65.29	46.57,66.37	49.11,67.48
path	50.44,66.83	51.57,64.64	54.10,62.49	56.28,59.15	56.53,55.12
path	53.81,53.15	52.04,54.99
click Silverleaf##1617+ |notinsticky
|tip They look like bushy blue and green plants on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 65 Silverleaf##765 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 60 |or
step
talk Kor'geld##3348
|tip Inside the building.
buy 65 Empty Vial##3371 |goto Orgrimmar/0 55.24,45.90 |or
'|complete skill("Alchemy") >= 60 |or
step
create 65 Minor Healing Potion##2330,Alchemy,65 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Alchemy") >= 60 |or
step
create 1 Minor Healing Potion##2330,Alchemy,60
|tip You may need to create more of these.
|tip Save at least 65 of these; you will need them for future steps.
|tip Each additional potion requires 1 Peacebloom, 1 Silverleaf, and 1 Empty Vial.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Yelmak##3347
|tip Inside the building.
Train Journeyman Alchemy |skillmax Alchemy,150 |goto Orgrimmar/0 55.68,45.76
step
talk Yelmak##3347
|tip Inside the building.
Train Lesser Healing Potion |learn Lesser Healing Potion##2337 |goto Orgrimmar/0 55.68,45.76
step
label "Collect_Briarthorn_110"
map Silverpine Forest
path follow smart; loop off; dist 20
path	49.04,32.38	49.42,35.61	49.42,37.96	49.76,40.18	50.52,43.34
path	52.66,43.16	54.51,44.07	52.79,45.65	51.98,49.91	52.04,52.85
path	51.86,56.81	52.43,59.23	51.75,62.42	54.26,63.98	55.27,61.88
path	56.68,60.37	58.05,62.07	56.16,64.50	54.77,66.89	54.34,71.81
path	54.65,74.35	56.82,76.43	59.65,77.20	61.93,77.46	64.26,78.75
path	66.96,79.79
click Briarthorn##1621+
|tip They look like brown thorns growing out of the ground along the path.
|tip Briarthorn can share a spawn with other herbs in the area, so pick them all.
|tip Track them on your minimap with "Find Herbs".
collect 100 Briarthorn##2450 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 70 Herbalism skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 35 of these; you will need them for future steps.
'|complete skill("Alchemy") >= 110 |or
'|goto 66.96,79.79 < 20 |noway |c |or
step
map Silverpine Forest
path follow smart; loop off; dist 20
path	66.96,79.79	64.26,78.75	61.93,77.46	59.65,77.20	56.82,76.43
path	54.65,74.35	54.34,71.81	54.77,66.89	56.16,64.50	58.05,62.07
path	56.68,60.37	55.27,61.88	54.26,63.98	51.75,62.42	52.43,59.23
path	51.86,56.81	52.04,52.85	51.98,49.91	52.79,45.65	54.51,44.07
path	52.66,43.16	50.52,43.34	49.76,40.18	49.42,37.96	49.42,35.61
path	49.04,32.38
click Briarthorn##1621+
|tip They look like brown thorns growing out of the ground along the path.
|tip Briarthorn can share a spawn with other herbs in the area, so pick them all.
|tip Track them on your minimap with "Find Herbs".
collect 100 Briarthorn##2450 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 70 Herbalism skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 35 of these; you will need them for future steps.
'|complete skill("Alchemy") >= 110 |or
'|goto 49.04,32.38 < 20 |noway |c |next "Collect_Briarthorn_110" |or
step
create 65 Lesser Healing Potion##2337,Alchemy,110
|tip You may need to create more or less of these.
|tip Each additional Lesser Healing Potion requires 1 Minor Healing Potion and 1 Briarthorn.
|tip Each additional Minor Healing Potion requires 1 Peacebloom, 1 Silverleaf, and 1 Empty Vial.
stickystart "Collect_Briarthorn_140"
step
label "Collect_Bruiseweed_140"
map Stonetalon Mountains/0
path follow smart; loop on; ants straight; dist 30
path	73.00,59.72	66.74,54.82	63.25,56.60	53.01,45.12	52.19,43.22
path	52.78,40.43	49.32,35.40	48.73,32.68	45.84,25.38	41.49,18.24
path	39.73,43.04	37.25,49.59	36.30,51.80	37.78,56.59	58.09,73.47
path	61.22,84.07	63.82,85.60	71.85,83.84	73.87,86.83	74.93,88.92
path	78.14,78.96
click Bruiseweed##1622+
|tip They look like tall green and purple flowers on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 35 Bruiseweed##2453 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 100 Herbalism skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Alchemy") >= 140 |or
step
label "Collect_Briarthorn_140"
collect 35 Briarthorn##2450 |or
|tip You collected these in a previous step.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Alchemy") >= 140 |or
step
talk Kor'geld##3348
|tip Inside the building.
buy 35 Leaded Vial##3372 |goto Orgrimmar/0 55.24,45.90 |or
'|complete skill("Alchemy") >= 140 |or
step
talk Yelmak##3347
|tip Inside the building.
Train Healing Potion |learn Healing Potion##3447 |goto Orgrimmar/0 55.68,45.76
step
create 35 Healing Potion##3447,Alchemy,140
|tip You may need to create more or less of these.
|tip Each additional potion requires 1 Bruiseweed, 1 Briarthorn, and 1 Leaded Vial.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Archaeology\\Archaeology (1-525)",{
author="support@zygorguides.com",
description="This guide will walk you through leveling your Archaeology skill from 1-525.",
condition_end=function() return skill('Archaeology') >= 525 end,
condition_suggested=function() return skill('Archaeology') < 525 and level >= 20 end,
},[[
step
Reach Level 20 |ding 20
step
confirm
|tip You can dig up Dwarf, Fossil, Night Elf, and Troll artifacts with a skill level of 1.
|tip They can be found in Eastern Kingdoms and Kalimdor, while Night Elf and Troll artifacts can be found in Northrend too.
|tip Draenei and Orc artifacts can be found in Outland with a skill level of 300 or higher.
|tip Nerubian artifacts require at least 375 skill level and can be found in Northrend and Eastern Kingdoms.
|tip Vrykul artifacts require at least 375 skill level and can be found in Northrend.
|tip Tol'vir artifacts require at least 450 skill level and are only found in Uldum, Kalimdor.
step
Enter the building |goto Orgrimmar/1 49.92,75.63 < 15 |walk
talk Belloc Brightblade##47571
|tip Inside the building.
Train Apprentice Archaeology |skillmax Archaeology,75 |goto 49.06,70.55
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
|tip They look like small shovel icons on your world map that spawn in random places.
|tip When you reach the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
cast Survey##80451
|tip A telescope will appear and point in a certain direction.
|tip Follow the direction it points in and continue using your Survey ability to eventually find the artifacts.
|tip Red indicates 80+ yards away.
|tip Yellow indicates 40-80 yards away.
|tip Green indicates within 40 yards.
|tip Each dig site has up to 6 artifacts you can find.
click Archaeology Fragment+
|tip Each one can grant a single skill point.
|tip Open your Archaeology panel and solve artifacts to gain additional points.
|tip You receive 5 skill points for normal solves and 15 skill points for rare solves.
Reach 50 Archaeology Skill |skill Archaeology,50
step
Enter the building |goto Orgrimmar/1 49.92,75.63 < 15 |walk
talk Belloc Brightblade##47571
|tip Inside the building.
Train Journeyman Archaeology |skillmax Archaeology,150 |goto 49.06,70.55
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
|tip They look like small shovel icons on your world map that spawn in random places.
|tip When you reach the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
cast Survey##80451
|tip A telescope will appear and point in a certain direction.
|tip Follow the direction it points in and continue using your Survey ability to eventually find the artifacts.
|tip Red indicates 80+ yards away.
|tip Yellow indicates 40-80 yards away.
|tip Green indicates within 40 yards.
|tip Each dig site has up to 6 artifacts you can find.
click Archaeology Fragment+
|tip Each one can grant a single skill point.
|tip Open your Archaeology panel and solve artifacts to gain additional points.
|tip You receive 5 skill points for normal solves and 15 skill points for rare solves.
Reach 125 Archaeology Skill |skill Archaeology,125
step
Enter the building |goto Orgrimmar/1 49.92,75.63 < 15 |walk
talk Belloc Brightblade##47571
|tip Inside the building.
Train Expert Archaeology |skillmax Archaeology,225 |goto 49.06,70.55
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
|tip They look like small shovel icons on your world map that spawn in random places.
|tip When you reach the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
cast Survey##80451
|tip A telescope will appear and point in a certain direction.
|tip Follow the direction it points in and continue using your Survey ability to eventually find the artifacts.
|tip Red indicates 80+ yards away.
|tip Yellow indicates 40-80 yards away.
|tip Green indicates within 40 yards.
|tip Each dig site has up to 6 artifacts you can find.
click Archaeology Fragment+
|tip Each one can grant a single skill point.
|tip Open your Archaeology panel and solve artifacts to gain additional points.
|tip You receive 5 skill points for normal solves and 15 skill points for rare solves.
Reach 200 Archaeology Skill |skill Archaeology,200
step
Enter the building |goto Orgrimmar/1 49.92,75.63 < 15 |walk
talk Belloc Brightblade##47571
|tip Inside the building.
Train Artisan Archaeology |skillmax Archaeology,300 |goto 49.06,70.55
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
|tip They look like small shovel icons on your world map that spawn in random places.
|tip When you reach the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
cast Survey##80451
|tip A telescope will appear and point in a certain direction.
|tip Follow the direction it points in and continue using your Survey ability to eventually find the artifacts.
|tip Red indicates 80+ yards away.
|tip Yellow indicates 40-80 yards away.
|tip Green indicates within 40 yards.
|tip Each dig site has up to 6 artifacts you can find.
click Archaeology Fragment+
|tip Each one can grant a single skill point.
|tip Open your Archaeology panel and solve artifacts to gain additional points.
|tip You receive 5 skill points for normal solves and 15 skill points for rare solves.
Reach 275 Archaeology Skill |skill Archaeology,275
step
Enter the building |goto Orgrimmar/1 49.92,75.63 < 15 |walk
talk Belloc Brightblade##47571
|tip Inside the building.
Train Master Archaeology |skillmax Archaeology,375 |goto 49.06,70.55
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
|tip They look like small shovel icons on your world map that spawn in random places.
|tip When you reach the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
cast Survey##80451
|tip A telescope will appear and point in a certain direction.
|tip Follow the direction it points in and continue using your Survey ability to eventually find the artifacts.
|tip Red indicates 80+ yards away.
|tip Yellow indicates 40-80 yards away.
|tip Green indicates within 40 yards.
|tip Each dig site has up to 6 artifacts you can find.
click Archaeology Fragment+
|tip Each one can grant a single skill point.
|tip Open your Archaeology panel and solve artifacts to gain additional points.
|tip You receive 5 skill points for normal solves and 15 skill points for rare solves.
Reach 350 Archaeology Skill |skill Archaeology,350
step
Enter the building |goto Orgrimmar/1 49.92,75.63 < 15 |walk
talk Belloc Brightblade##47571
|tip Inside the building.
Train Grand Master Archaeology |skillmax Archaeology,450 |goto 49.06,70.55
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
|tip They look like small shovel icons on your world map that spawn in random places.
|tip When you reach the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
cast Survey##80451
|tip A telescope will appear and point in a certain direction.
|tip Follow the direction it points in and continue using your Survey ability to eventually find the artifacts.
|tip Red indicates 80+ yards away.
|tip Yellow indicates 40-80 yards away.
|tip Green indicates within 40 yards.
|tip Each dig site has up to 6 artifacts you can find.
click Archaeology Fragment+
|tip Each one can grant a single skill point.
|tip Open your Archaeology panel and solve artifacts to gain additional points.
|tip You receive 5 skill points for normal solves and 15 skill points for rare solves.
Reach 425 Archaeology Skill |skill Archaeology,425
step
Enter the building |goto Orgrimmar/1 49.92,75.63 < 15 |walk
talk Belloc Brightblade##47571
|tip Inside the building.
Train Illustrious Grand Master Archaeology |skillmax Archaeology,525 |goto 49.06,70.55
step
Search for dig sites on your world map
|tip You can earn points from any dig site in any zone.
|tip They look like small shovel icons on your world map that spawn in random places.
|tip When you reach the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
cast Survey##80451
|tip A telescope will appear and point in a certain direction.
|tip Follow the direction it points in and continue using your Survey ability to eventually find the artifacts.
|tip Red indicates 80+ yards away.
|tip Yellow indicates 40-80 yards away.
|tip Green indicates within 40 yards.
|tip Each dig site has up to 6 artifacts you can find.
click Archaeology Fragment+
|tip Each one can grant a single skill point.
|tip Open your Archaeology panel and solve artifacts to gain additional points.
|tip You receive 5 skill points for normal solves and 15 skill points for rare solves.
Reach 525 Archaeology Skill |skill Archaeology,525
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Blacksmithing (1-525)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Blacksmithing') > 525 end,
description="This guide will walk you through leveling your Blacksmithing skill from 1-525.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar/0 81.56,22.74 < 7 |walk
talk Saru Steelfury##3355
|tip Inside the building.
Train Apprentice Blacksmithing |skillmax Blacksmithing,75 |goto Orgrimmar/0 76.49,34.50
step
label "Begin_Profession_Leveling_Classic"
talk Sumi##3356
|tip Inside the building.
buy Blacksmith Hammer##5956 |goto Orgrimmar/0 82.59,23.95 |or
|tip Save this, you will need it to create items.
'|complete skill("Blacksmithing") >= 375 |or
stickystart "Collect_Copper_Bars_30"
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
click Copper Vein##1731+
|tip They look like gray rocks with orange and yellow mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 150 Rough Stone##2835 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Save at least 110 of these, you will need them for a future step.
'|complete skill("Blacksmithing") >= 30 |or
step
label "Collect_Copper_Bars_30"
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
click Copper Vein##1731+ |notinsticky
|tip They look like gray rocks with orange and yellow mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 150 Copper Ore##2770 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 150 Copper Bar##2840 |or
|tip Save these, you will need them for future steps.
'|complete skill("Blacksmithing") >= 30 |or
step
create 40 Rough Sharpening Stone##2660,Blacksmithing,30
|tip You may need to create more or less of these.
|tip Each additional Rough Sharpening Stone requires 1 Rough Stone.
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Rough Grinding Stone |learn Rough Grinding Stone##3320 |goto Orgrimmar/0 76.49,34.50
step
collect 110 Rough Stone##2835 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 65 |or
step
create 55 Rough Grinding Stone##3320,Blacksmithing,65
|tip You may need to create more or less of these.
|tip Each additional Rough Grinding Stone requires 2 Rough Stone.
|tip Save at least 10 of these, you will need them for a future step.
step
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
click Tin Vein##3764+
|tip They look like gray rocks with silver mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 85 Coarse Stone##2836 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 65 Mining skill to gather these.
|tip Save at least 60 of these, you will need them for a future step.
'|complete skill("Blacksmithing") >= 75 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Coarse Sharpening Stone |learn Coarse Sharpening Stone##2665 |goto Orgrimmar/0 76.49,34.50
step
create 25 Coarse Sharpening Stone##2665,Blacksmithing,75
|tip You may need to create more or less of these.
|tip Each additional Coarse Sharpening Stone requires 1 Coarse Stone.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Journeyman Blacksmithing |skillmax Blacksmithing,150 |goto Orgrimmar/0 76.49,34.50
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Coarse Grinding Stone |learn Coarse Grinding Stone##3326 |goto Orgrimmar/0 76.49,34.50
step
collect 60 Coarse Stone##2836 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 90 |or
step
create 30 Coarse Grinding Stone##3326,Blacksmithing,30 total |or
'|complete skill("Blacksmithing") >= 90 |or
step
create 1 Coarse Grinding Stone##3326,Blacksmithing,90
|tip You may need to create more of these.
|tip Each additional Coarse Grinding Stone requires 2 Coarse Stone.
|tip Save at least 30 of these, you will need them for a future step.
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Runed Copper Belt |learn Runed Copper Belt##2666 |goto Orgrimmar/0 76.49,34.50
step
collect 100 Copper Bar##2840 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 100 |or
step
create 10 Runed Copper Belt##2666,Blacksmithing,100 |goto 76.49,34.50
|tip Stand next to an anvil.
|tip Inside the building.
stickystart "Collect_Rough_Grinding_Stone_105"
step
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
click Silver Vein##1733+ |notinsticky
|tip They look like gray rocks with silver-green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 5 Silver Ore##2775 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 5 Silver Bar##2842 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 75 Mining skill to gather these.
'|complete skill("Blacksmithing") >= 105 |or
step
label "Collect_Rough_Grinding_Stone_105"
collect 10 Rough Grinding Stone##3470 |or
|tip You created these in a previous step.
'|complete skill("Blacksmithing") >= 105 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Silver Rod |learn Silver Rod##7818 |goto Orgrimmar/0 76.49,34.50
step
create 5 Silver Rod##7818,Blacksmithing,105 |goto 76.49,34.50
|tip Stand next to an anvil.
|tip Inside the building.
step
collect 50 Copper Bar##2840 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 110 |or
step
Enter the building |goto 81.62,22.79 < 7 |walk
create 5 Runed Copper Belt##2666,Blacksmithing,110 |goto 76.49,34.50
|tip Stand next to an anvil.
|tip Inside the building.
step
collect 140 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
|tip Smelting 2 Bronze Bars requires 1 Copper Bar and 1 Tin Bar.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 50 of these, you will need them for a future step.
'|complete skill("Blacksmithing") >= 125 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Rough Bronze Leggings |learn Rough Bronze Leggings##2668 |goto Orgrimmar/0 76.49,34.50
step
create 15 Rough Bronze Leggings##2668,Blacksmithing,125 |goto Orgrimmar/0 76.49,34.50
|tip Stand next to an anvil.
|tip Inside the building.
stickystart "Collect_Iron_Bars_140"
stickystart "Collect_Gold_Bars_140"
step
map Feralas
path	follow loose; loop on; ants curved; dist 20
path	 84.9,39.9	81.8,39.3	79.2,37.2
path	75.3,35.5	71.5,34.7	68.4,39.7
path	68.1,46.1	70.0,48.6	68.7,52.0
path	65.5,52.5	63.8,54.9	61.5,50.5
path	58.2,51.4	53.8,49.4	48.6,44.0
path	48.6,38.8	49.7,34.9	51.6,33.8
path	49.5,26.1	51.7,25.5	51.3,19.0
path	52.7,16.5	54.9,8.1	53.4,5.5
path	51.6,4.8	48.5,11.5	46.1,7.2
path	42.0,8.2	40.0,7.7	37.1,12.1
path	38.2,18.6	37.0,25.6	41.2,25.5
path	41.5,17.2	45.2,21.1	46.0,15.7
path	47.7,22.1	46.2,26.6	47.2,34.7
path	46.7,44.9	50.3,52.7	54.8,53.9
path	55.0,59.8	54.6,64.0	52.9,66.2
path	53.6,73.7	55.5,75.7	61.5,75.0
path	61.6,68.9	64.0,68.9	61.9,66.2
path	61.0,59.1	64.1,58.7	63.7,61.0
path	65.8,63.5	68.1,61.5	71.6,65.1
path	77.2,62.1	75.9,53.5	76.2,49.6
path	79.5,46.2	84.0,45.6	82.5,43.1
click Iron Deposit##1735+
|tip They look like dense gray rocks with small silver-green mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 90 Heavy Stone##2838 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 125 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Blacksmithing") >= 140 |or
step
label "Collect_Iron_Bars_140"
map Feralas
path	follow loose; loop on; ants curved; dist 20
path	 84.9,39.9	81.8,39.3	79.2,37.2
path	75.3,35.5	71.5,34.7	68.4,39.7
path	68.1,46.1	70.0,48.6	68.7,52.0
path	65.5,52.5	63.8,54.9	61.5,50.5
path	58.2,51.4	53.8,49.4	48.6,44.0
path	48.6,38.8	49.7,34.9	51.6,33.8
path	49.5,26.1	51.7,25.5	51.3,19.0
path	52.7,16.5	54.9,8.1	53.4,5.5
path	51.6,4.8	48.5,11.5	46.1,7.2
path	42.0,8.2	40.0,7.7	37.1,12.1
path	38.2,18.6	37.0,25.6	41.2,25.5
path	41.5,17.2	45.2,21.1	46.0,15.7
path	47.7,22.1	46.2,26.6	47.2,34.7
path	46.7,44.9	50.3,52.7	54.8,53.9
path	55.0,59.8	54.6,64.0	52.9,66.2
path	53.6,73.7	55.5,75.7	61.5,75.0
path	61.6,68.9	64.0,68.9	61.9,66.2
path	61.0,59.1	64.1,58.7	63.7,61.0
path	65.8,63.5	68.1,61.5	71.6,65.1
path	77.2,62.1	75.9,53.5	76.2,49.6
path	79.5,46.2	84.0,45.6	82.5,43.1
click Iron Deposit##1735+ |notinsticky
|tip They look like dense gray rocks with small silver-green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 230 Iron Ore##2772 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 230 Iron Bar##3575 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 125 Mining skill to gather these.
|tip If you plan to gather Steel Bars instead of buying them, farm another 190 Iron Bars.
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip Save these, you will need them in future steps |notinsticky
'|complete skill("Blacksmithing") >= 140 |or
step
label "Collect_Gold_Bars_140"
map Feralas
path	follow loose; loop on; ants curved; dist 20
path	 84.9,39.9	81.8,39.3	79.2,37.2
path	75.3,35.5	71.5,34.7	68.4,39.7
path	68.1,46.1	70.0,48.6	68.7,52.0
path	65.5,52.5	63.8,54.9	61.5,50.5
path	58.2,51.4	53.8,49.4	48.6,44.0
path	48.6,38.8	49.7,34.9	51.6,33.8
path	49.5,26.1	51.7,25.5	51.3,19.0
path	52.7,16.5	54.9,8.1	53.4,5.5
path	51.6,4.8	48.5,11.5	46.1,7.2
path	42.0,8.2	40.0,7.7	37.1,12.1
path	38.2,18.6	37.0,25.6	41.2,25.5
path	41.5,17.2	45.2,21.1	46.0,15.7
path	47.7,22.1	46.2,26.6	47.2,34.7
path	46.7,44.9	50.3,52.7	54.8,53.9
path	55.0,59.8	54.6,64.0	52.9,66.2
path	53.6,73.7	55.5,75.7	61.5,75.0
path	61.6,68.9	64.0,68.9	61.9,66.2
path	61.0,59.1	64.1,58.7	63.7,61.0
path	65.8,63.5	68.1,61.5	71.6,65.1
path	77.2,62.1	75.9,53.5	76.2,49.6
path	79.5,46.2	84.0,45.6	82.5,43.1
click Gold Vein##1734+ |notinsticky
|tip They look like gray rocks with bright yellow mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 5 Gold Ore##2776 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 5 Gold Bar##3577 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 155 Mining skill to gather these.
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip Save these, you will need them in future steps |notinsticky
'|complete skill("Blacksmithing") >= 140 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Heavy Grinding Stone |learn Heavy Grinding Stone##3337 |goto Orgrimmar/0 76.49,34.50
step
create 30 Heavy Grinding Stone##3337,Blacksmithing,30 total |or
'|complete skill("Blacksmithing") >= 140 |or
step
create 1 Heavy Grinding Stone##3337,Blacksmithing,140
|tip You may need to create more of these.
|tip Each additional Heavy Grinding Stone requires 3 Heavy Stone.
|tip Save at least 30 of these; you will need them for future steps.
stickystart "Collect_Coarse_Grinding_Stone_150"
step
collect 50 Bronze Bar##2841 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 150 |or
step
label "Collect_Coarse_Grinding_Stone_150"
collect 20 Coarse Grinding Stone##3478 |or
|tip You created these in a previous step.
'|complete skill("Blacksmithing") >= 150 |or
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Patterned Bronze Bracers |learn Patterned Bronze Bracers##2672 |goto Orgrimmar/0 76.49,34.50
step
create 10 Patterned Bronze Bracers##2672,Blacksmithing,150 |goto Orgrimmar/0 76.49,34.50
|tip Stand next to an anvil.
|tip Inside the building.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Cooking (1-525)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Cooking') > 0 end,
description="This guide will walk you through leveling your Cooking skill from 1-525.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 before you can learn professions.
|tip Use the leveling guides to accomplish this.
step
talk Eunice Burch##4552
Train Apprentice Cooking |skillmax Cooking,75 |goto Undercity/0 62.14,44.92
step
talk Eunice Burch##4552
Train Spice Bread |learn Spice Bread##37836 |goto Undercity/0 62.14,44.92
step
talk Ronald Burch##4553
buy 60 Simple Flour##30817 |goto Undercity/0 62.31,43.11 |complete skill("Cooking") >= 40
buy 60 Mild Spices##2678 |goto Undercity/0 62.31,43.11 |complete skill("Cooking") >= 40
|tip These totals are approximate.
|tip You may need more or less than the indicated amounts.
step
create 60 Spice Bread##37836,Cooking,40 |goto 75.97,36.50
|tip Stand next to the Mighty Blaze.
|tip You may need to create more or less of these.
|tip Each additional Spice Bread requires 1 Simple Flour and 1 Mild Spices.
step
Run down the stairs |goto Silverpine Forest/0 43.09,41.39 < 5 |walk
talk Andrew Hilbert##3556
|tip Downstairs inside the crypt.
buy Recipe: Smoked Bear Meat##6892 |goto Silverpine Forest/0 43.22,40.66 |or
'|complete skill("Cooking") >= 65 |or
step
use the Recipe: Smoked Bear Meat##6892
Train Smoked Bear Meat |learn Smoked Bear Meat##8607
step
map Darkshore/0
path follow smart; loop on; ants curved; dist 20
path	45.52,35.10	46.86,35.15	47.88,33.99	48.82,34.11	49.47,33.15
path	49.81,31.71	49.00,30.97	48.64,29.50	49.29,27.40	48.64,27.07
path	48.40,25.88	48.18,24.49	47.62,23.22	46.59,22.69	45.54,23.42
path	44.37,23.40	44.27,24.98	43.83,26.43	44.32,27.91	43.94,29.27
path	44.78,30.11	45.40,31.46	44.78,32.44	43.97,32.76	42.43,32.68
path	41.39,33.60	41.66,35.17	42.07,37.43	42.42,39.82	43.17,41.92
path	44.41,42.90	45.25,43.21	45.48,41.84
Kill Bear enemies along this path
collect 25 Bear Meat##3173 |or
|tip You can also purchase them from the Auction House.
'|complete skill("Cooking") >= 65 |or
step
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
|tip Don't leave the zone yet.
create 25 Smoked Bear Meat##8607,Cooking,65
step
label "Collect_Crawler_Meat_130"
map Westfall/0
path follow smart; loop off; dist 20
path	51.32,9.67	49.06,10.01	44.72,8.70	41.78,10.34	38.85,13.51
path	36.20,18.29	33.45,22.08	31.88,24.30
Kill Crawler enemies along this path
collect 30 Crawler Meat##2674 |or
|tip You can also purchase them from the Auction House.
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 130 |or
step
Kill enemies around this area
collect Small Barnacled Clam##5523 |n
use the Small Barnacled Clam##5523
collect 40 Clam Meat##5503 |goto Westfall/0 37.26,15.67 |or
|tip You can also purchase them from the Auction House.
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
You can find more around [13.09,25.61]
'|complete skill("Cooking") >= 110 |or
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
Run up the stairs |goto Orgrimmar/0 56.34,56.91 < 7 |only if walking
Enter the building |goto Orgrimmar/0 58.14,53.56 < 7 |walk
talk Arugi##46709
|tip Inside the building.
Train Journeyman Cooking |skillmax Cooking,150 |goto Orgrimmar/0 56.19,61.62
step
talk Arugi##46709
|tip Inside the building.
Train Boiled Clams |learn Boiled Clams##6499 |goto Orgrimmar/0 56.19,61.62
step
talk Suja##46708
|tip Inside the building.
buy 65 Refreshing Spring Water##159 |goto Orgrimmar/0 56.43,61.03 |or
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 110 |or
step
create 65 Boiled Clams##6499,Cooking,110 |goto Orgrimmar/0 56.19,61.62
|tip Stand next to the Mighty Blaze.
|tip Inside the building.
|tip You may need to create more or less of these.
|tip Each additional Boiled Clams requires 1 Refreshing Spring Water and 1 Clam Meat.
step
talk Arugi##46709
|tip Inside the building.
Train Crab Cake |learn Crab Cake##2544 |goto Orgrimmar/0 56.19,61.62
step
collect 30 Crawler Meat##2674 |or
|tip You collected these in a previous step.
'|complete skill("Cooking") >= 130 |or
step
create 30 Crab Cake##2544,Cooking,130 |goto Orgrimmar/0 56.19,61.62
|tip Stand next to the Mighty Blaze.
|tip Inside the building.
|tip You may need to create more or less of these.
|tip Each additional Crab Cake requires 1 Crawler Meat.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Cooking + Fishing (1-525)")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Chunk of Boar Meat",{
author="support@zygorguides.com",
},[[
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	46.24,14.08	48.40,14.33	50.51,15.71	52.85,17.40	54.84,19.11
path	55.64,21.23	56.27,24.65	56.55,26.49	56.33,30.28	54.76,33.37
path	53.53,36.24	54.76,39.35	52.82,40.55	51.94,42.55	50.48,43.99
path	48.46,44.47	47.22,43.35	45.66,40.85	45.03,36.20	43.31,33.15
path	41.31,32.48	39.48,33.32	37.75,32.49	36.98,29.96	37.26,26.34
path	37.94,23.38	40.00,20.80	40.35,17.61	42.55,17.05	44.72,17.22
path	45.61,15.87
Kill Boar enemies around this area
collect Chunk of Boar Meat##769 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Small Egg")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Stringy Wolf Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Meaty Bat Wing")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Scorpid Stinger")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Tender Crocolisk Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Red Wolf Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Coyote Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Strider Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Kodo Meat")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Bear Meat",{
author="support@zygorguides.com",
},[[
step
map Darkshore/0
path follow smart; loop on; ants straight; dist 30
path	52.68,29.04	53.63,28.56	54.89,28.97	55.40,26.27	54.61,24.75
path	52.72,25.51
Kill Bear enemies along this path
collect Bear Meat##3173 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Crawler Meat",{
author="support@zygorguides.com",
},[[
step
map Westfall
path follow smart; loop off; dist 20
path	51.32,9.67	49.06,10.01	44.72,8.70	41.78,10.34	38.85,13.51
path	36.20,18.29	33.45,22.08	31.88,24.30
Kill Crawler enemies around this area
|tip You can find more further down the coast.
collect Crawler Meat##2674 |n
'|goto 31.88,24.30 < 20 |noway |c
step
map Westfall
path follow smart; loop off; dist 20
path	31.88,24.30	33.45,22.08	36.20,18.29	38.85,13.51	41.78,10.34
path	44.72,8.70	49.06,10.01	51.32,9.67
Kill Crawler enemies around this area
|tip You can find more further down the coast.
collect Crawler Meat##2674 |n
'|goto 51.32,9.67 < 20 |noway |c
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Crawler Claw")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Clam Meat",{
author="support@zygorguides.com",
},[[
step
Kill Murloc enemies around this area
|tip They are found all along the coastline.
collect Small Barnacled Clam##5523 |n
use the Small Barnacled Clam##5523
collect Clam Meat##5503 |n |goto Westfall 37.26,15.67
|tip They are inside of the Small Barnacled Clams.
'|confirm
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Murloc Fin")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Big Bear Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Raptor Egg")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Thunder Lizard Tail")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Tangy Clam Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Lion Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Gooey Spider Leg")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Mystery Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Turtle Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Tiger Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Raptor Flesh")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Buzzard Wing")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Cooking\\Farming Guides\\Giant Clam Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Living Essence")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Essence of Fire")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Essence of Air")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Essence of Earth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Ichor of Undeath")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Heart of Fire")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Globe of Water")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Core of Earth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Breath of Wind")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Elemental Fire")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Elemental Water")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Elements\\Farming Guides\\Elemental Air")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Enchanting (1-525)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Enchanting') > 0 end,
description="This guide will walk you through leveling your Enchanting skill from 1-525.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar/0 53.42,36.92 < 7 |walk
talk Godan##3345
|tip Inside the building.
Train Apprentice Enchanting |skillmax Enchanting,75 |goto Orgrimmar/0 53.33,49.20
step
label "Begin_Profession_Leveling_Classic"
talk Kithas##3346
|tip Inside the building.
buy Copper Rod##6217 |goto 53.33,49.20 |complete skill("Enchanting") >= 25
buy Strange Dust##10940 |goto 53.33,49.20 |complete skill("Enchanting") >= 25
buy Lesser Magic Essence##10938 |goto 53.33,49.20 |complete skill("Enchanting") >= 25
|tip These are limited supply items that can also be purchased from the auction house.
step
create 1 Runed Copper Rod##7421,Enchanting,2 |only if default |or
create 1 Runed Copper Rod##7421,Enchanting,12 |only if BloodElf |or
|tip Save this, you will need it for future steps.
step
cast Disenchant##13262
collect 69 Strange Dust##10940 |or
|tip Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 70 |only if default |or
'|complete skill("Enchanting") >= 80 |only if BloodElf |or
step
create 69 Enchant Bracer - Minor Health##7418,Enchanting,70 |only if default |or
create 69 Enchant Bracer - Minor Health##7418,Enchanting,80 |only if BloodElf |or
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Godan##3345
|tip Inside the building.
Train Journeyman Enchanting |skillmax Enchanting,150 |goto Orgrimmar/0 53.33,49.20
step
talk Godan##3345
|tip Inside the building.
Train Enchant Bracer - Minor Stamina |learn Enchant Bracer - Minor Stamina##7457 |goto Orgrimmar/0 53.33,49.20
step
cast Disenchant##13262
collect 25 Strange Dust##10940 |or
|tip Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 90 |only if default |or
'|complete skill("Enchanting") >= 100 |only if BloodElf |or
step
create 25 Enchant Bracer - Minor Health##7418,Enchanting,90 |only if default |or
create 25 Enchant Bracer - Minor Health##7418,Enchanting,100 |only if BloodElf |or
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
|tip You may need to make more or less of these.
|tip Each additional Minor Health enchant requires 1 Strange Dust.
step
cast Disenchant##13262
collect 30 Strange Dust##10940 |or
|tip Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 100 |only if default |or
'|complete skill("Enchanting") >= 110 |or
step
create 10 Enchant Bracer - Minor Stamina##7457,Enchanting,100 |only if default |or
create 10 Enchant Bracer - Minor Stamina##7457,Enchanting,110 |only if BloodElf |or
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
stickystart "Collect_Greater_Magic_Essence_101"
stickystart "Collect_Silver_Rod_101"
step
cast Disenchant##13262
collect 6 Strange Dust##10940 |or
|tip Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 101 |only if default |or
'|complete skill("Enchanting") >= 111 |only if BloodElf |or
step
label "Collect_Greater_Magic_Essence_101"
cast Disenchant##13262 |notinsticky
collect 3 Greater Magic Essence##10939 |or
|tip Disenchant level 9-15 uncommon (green) armor and level 9-25 uncommon (green) weapons with Enchanting or purchase them from the auction house.
|tip You can combine 3 Lesser Magic Essences to create 1 Greater Magic Essence.
'|complete skill("Enchanting") >= 101 |only if default |or
'|complete skill("Enchanting") >= 111 |only if BloodElf |or
step
label "Collect_Silver_Rod_101"
collect 1 Silver Rod##6338 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 1 Silver bar and 2 Rough Grinding Stones to craft.
'|complete skill("Enchanting") >= 101 |only if default |or
'|complete skill("Enchanting") >= 111 |only if BloodElf |or
step
talk Godan##3345
|tip Inside the building.
Train Runed Silver Rod |learn Runed Silver Rod##7795 |goto Orgrimmar/0 53.33,49.20
step
create 1 Runed Silver Rod##7795,Enchanting,101 |only if default |or
create 1 Runed Silver Rod##7795,Enchanting,111 |only if BloodElf |or
|tip Save this, you will need it for future steps.
step
talk Godan##3345
|tip Inside the building.
Train Greater Magic Wand |learn Greater Magic Wand##14807 |goto Orgrimmar/0 53.33,49.20
step
cast Disenchant##13262
collect 9 Greater Magic Essence##10939 |or
|tip Disenchant level 9-15 uncommon (green) armor and level 9-25 uncommon (green) weapons with Enchanting or purchase them from the auction house.
|tip You can combine 3 Lesser Magic Essences to create 1 Greater Magic Essence.
'|complete skill("Enchanting") >= 110 |only if default |or
'|complete skill("Enchanting") >= 120 |only if BloodElf |or
step
Enter the building |goto Orgrimmar/0 53.42,36.92 < 7 |walk
talk Kithas##3346
|tip Inside the building.
buy 9 Simple Wood##4470 |goto Orgrimmar/0 53.87,38.02 |or
'|complete skill("Enchanting") >= 110 |only if default |or
'|complete skill("Enchanting") >= 120 |only if BloodElf |or
step
create 9 Greater Magic Wand##14807,Enchanting,110 |only if default |or
create 9 Greater Magic Wand##14807,Enchanting,120 |only if BloodElf |or
step
talk Kulwia##12043
buy Formula: Enchant Cloak - Minor Agility##11039 |goto Stonetalon Mountains/0 45.39,59.33 |or 2
buy Formula: Enchant Bracer - Lesser Strength##11101 |goto Stonetalon Mountains/0 45.39,59.33 |or 2
|tip These are limited supply items that can also be purchased from the auction house.
|tip The respawn timer seems to be between 30-50 minutes.
'|complete skill("Enchanting") >= 165 |only if default |or
'|complete skill("Enchanting") >= 175 |only if BloodElf |or
step
use the Formula: Enchant Cloak - Minor Agility##11039
Train Enchant Cloak - Minor Agility |learn Enchant Cloak - Minor Agility##13419
step
cast Disenchant##13262
collect 25 Lesser Astral Essence##10998 |or
|tip Disenchant level 21-25 uncommon (green) items with Enchanting or purchase them from the auction house.
|tip If Astral Essence is expensive you can also make Minor Impact enchants using Strange Dust and Small Glimmering Shards.
'|complete skill("Enchanting") >= 135 |only if default |or
'|complete skill("Enchanting") >= 145 |only if BloodElf |or
step
create 25 Enchant Cloak - Minor Agility##13419,Enchanting,135 |only if default |or
create 25 Enchant Cloak - Minor Agility##13419,Enchanting,145 |only if BloodElf |or
|tip Place then enchant on a cloak slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' cloak to make some profit while increasing your skill level.
|tip If Astral Essence is expensive you can also make Minor Impact enchants using Strange Dust and Small Glimmering Shards.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Strange Dust",{
author="support@zygorguides.com",
},[[
step
Disenchant level 5-20 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
|tip You may sometimes get Small Glimmering Shards instead of Strange Dust.
collect Strange Dust##10940 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Lesser Magic Essence",{
author="support@zygorguides.com",
},[[
step
Disenchant level 3-12 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
|tip You may sometimes get Strange Dust instead of Lesser Magic Essence.
collect Lesser Magic Essence##10938 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Greater Magic Essence",{
author="support@zygorguides.com",
},[[
step
Disenchant level 9-21 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
|tip You may sometimes get Strange Dust instead of Greater Magic Essence.
|tip You can turn 3 Lesser Magic Essences into a Greater Magic Essence.
collect Greater Magic Essence##10939 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Lesser Eternal Essence")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Greater Eternal Essence")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Small Brilliant Shard")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Large Brilliant Shard")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Illusion Dust")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Lesser Astral Essence",{
author="support@zygorguides.com",
},[[
step
Disenchant level 20-25 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
collect Lesser Astral Essence##10998 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Greater Astral Essence",{
author="support@zygorguides.com",
},[[
step
Disenchant level 20-30 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
collect Greater Astral Essence##11082 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Soul Dust")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Lesser Mystic Essence")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Greater Mystic Essence")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Vision Dust")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Dream Dust")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Greater Nether Essence")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Enchanting\\Farming Guides\\Lesser Nether Essence")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Engineering (1-525)",{
author="support@zygorguides.com",
condition_suggested=function() return skill("Engineering") > 0 end,
description="This guide will walk you through leveling your Engineering skill from 1-525.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar/0 75.19,24.59 < 5 |walk
talk Roxxik##11017
|tip Inside the building.
Train Apprentice Engineering |skillmax Engineering,75 |goto Orgrimmar/0 56.81,56.47
step
label "Begin_Profession_Leveling_Classic"
talk Sovik##3413
|tip Inside the building.
buy Blacksmith Hammer##5956 |goto Orgrimmar/0 75.49,25.36 |or
|tip Save this, you will need it for future steps.
'|complete skill("Engineering") >= 300 |or
stickystart "Collect_Copper_Bars_50"
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
click Copper Vein##1731+
|tip They look like gray rocks with orange and yellow mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 60 Rough Stone##2835 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Engineering") >= 30 |or
step
label "Collect_Copper_Bars_50"
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
click Copper Vein##1731+
|tip They look like gray rocks with orange and yellow mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 66 Copper Ore##2770 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 66 Copper Bar##2840 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip Save these, you will need them for future steps. |notinsticky
'|complete skill("Engineering") >= 50 |or
step
create 60 Rough Blasting Powder##3918,Engineering,60 total |or
'|complete skill("Engineering") >= 75 |or
step
create 1 Rough Blasting Powder##3918,Engineering,30
|tip Save at least 60 of these; you will need them for future steps.
step
talk Roxxik##11017
|tip Inside the building.
Train Handful of Copper Bolts |learn Handful of Copper Bolts##3922 |goto Orgrimmar/0 56.81,56.47
step
collect 30 Copper Bar##2840 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 50 |or
step
create 30 Handful of Copper Bolts##3922,Engineering,30 total |goto Orgrimmar/0 56.50,56.53 |or
|tip Stand next to an anvil.
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 75 |or
step
create 30 Handful of Copper Bolts##3922,Engineering,50 |goto Orgrimmar/0 56.50,56.53
|tip Stand next to an anvil.
|tip Save at least 30 of these; you will need them for future steps.
|tip You may need to make a few more of these.
|tip Each additional Handful of Copper Bolts requires 1 copper bar.
step
Enter the building |goto Orgrimmar/0 75.19,24.59 < 5 |walk
talk Roxxik##11017
|tip Inside the building.
Train Arclight Spanner |learn Arclight Spanner##7430 |goto Orgrimmar/0 56.81,56.47
step
collect 6 Copper Bar##2840 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 51 or itemcount(6219) < 1 |or
step
create 1 Arclight Spanner##7430,Engineering,1 total |goto Orgrimmar/0 56.50,56.53
|tip Stand next to an anvil.
|tip Save this, you will need it for future steps.
step
create 1 Arclight Spanner##7430,Engineering,51 |goto Orgrimmar/0 56.50,56.53
|tip Stand next to an anvil.
|tip Save this, you will need it for future steps.
step
Enter the building |goto Orgrimmar/0 75.19,24.59 < 5 |walk
talk Roxxik##11017
|tip Inside the building.
Train Rough Copper Bomb |learn Rough Copper Bomb##3923 |goto Orgrimmar/0 56.81,56.47
stickystart "Collect_Handful_of_Copper_Bolts_75"
stickystart "Collect_Copper_Bar_75"
stickystart "Collect_Linen_Cloth_75"
step
collect 60 Rough Blasting Powder##4357 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 75 |or
step
label "Collect_Handful_of_Copper_Bolts_75"
collect 30 Handful of Copper Bolts##4359 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 75 |or
step
label "Collect_Copper_Bar_75"
collect 30 Copper Bar##2840 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 75 |or
step
label "Collect_Linen_Cloth_75"
collect 50 Linen Cloth##2589 |or
|tip Farm them from level 5-20 humanoid mobs or purchase them from the auction house.
|tip Save at least 20 of these; you will need them for future steps.
|tip You may need more or less of these.
'|complete skill("Engineering") >= 75 |or
step
create 30 Rough Copper Bomb##3923,Engineering,75 |goto Orgrimmar/0 56.50,56.53
|tip Stand next to an anvil.
|tip You may need to create more or less of these.
|tip Each additional Rough Copper Bomb requires 2 Rough Blasting Powder, 1 Handful of Copper Bolts, 1 Copper Bar, and 1 Linen Cloth.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar/0 75.19,24.59 < 5 |walk
talk Roxxik##11017
|tip Inside the building.
Train Journeyman Engineering |skillmax Engineering,150 |goto Orgrimmar/0 56.81,56.47
step
talk Roxxik##11017
|tip Inside the building.
Train Coarse Blasting Powder |learn Coarse Blasting Powder##3929 |goto Orgrimmar/0 56.81,56.47
stickystart "Collect_Silver_Bars_105"
stickystart "Collect_Moss_Agate_135"
step
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
click Tin Vein##3764+
|tip They look like gray rocks with silver mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 60 Coarse Stone##2836 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 65 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Engineering") >= 95 |or
step
label "Collect_Silver_Bars_105"
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
click Silver Vein##1733+
|tip They look like gray rocks with silver-green mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 5 Silver Ore##2775 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 5 Silver Bar##2842 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 75 Mining skill to gather these. |notinsticky
'|complete skill("Engineering") >= 105 |or
step
label "Collect_Moss_Agate_135"
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
click Tin Vein##3764+
|tip They look like gray rocks with silver mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 10 Moss Agate##1206 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 65 Mining skill to gather these. |notinsticky
|tip They can be Prospected from Tin Ore with Jewelcrafting. |notinsticky
'|complete skill("Engineering") >= 135 |or
step
create 60 Coarse Blasting Powder##3929,Engineering,60 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 100 |or
step
create 1 Coarse Blasting Powder##3929,Engineering,95
|tip Save 60 of these, they will be used in a later schematic.
step
Enter the building |goto Orgrimmar/0 75.19,24.59 < 5 |walk
talk Roxxik##11017
|tip Inside the building.
Train Coarse Dynamite |learn Coarse Dynamite##3931 |goto Orgrimmar/0 56.81,56.47
stickystart "Collect_Linen_Cloth_100"
step
collect 60 Coarse Blasting Powder##4364 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 100 |or
step
label "Collect_Linen_Cloth_100"
collect 20 Linen Cloth##2589 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 100 |or
step
create 20 Coarse Dynamite##3931,Engineering,100
|tip You may need to create more or less of these.
|tip Each additional Coarse Dynamite requires 3 Coarse Blasting Powder and 1 Linen Cloth.
step
Enter the building |goto Orgrimmar/0 75.19,24.59 < 5 |walk
talk Roxxik##11017
|tip Inside the building.
Train Silver Contact |learn Silver Contact##3973 |goto Orgrimmar/0 56.81,56.47
step
collect 5 Silver Bar##2842 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 105 |or
step
create 5 Silver Contact##3973,Engineering,105
step
talk Roxxik##11017
|tip Inside the building.
Train Bronze Tube |learn Bronze Tube##3938 |goto Orgrimmar/0 56.81,56.47
step
label "Collect_Bronze_Bars_125"
collect 120 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
|tip Smelting 2 Bronze Bars requires 1 Copper Bar and 1 Tin Bar.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 60 of these; you will need them for future steps.
'|complete skill("Engineering") >= 125 |or
step
talk Sovik##3413
|tip Inside the building.
buy 25 Weak Flux##2880 |goto Orgrimmar/0 75.49,25.36 |or
'|complete skill("Engineering") >= 125 |or
step
create 10 Bronze Tube##3938,Engineering,10 total |goto 56.50,56.53 |or
|tip Stand next to an anvil.
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 135 |or
step
create 15 Bronze Tube##3938,Engineering,125 |goto 56.50,56.53
|tip Stand next to an anvil.
|tip Save at least 10 of these; you will need them for future steps.
|tip You may need to create more or less of these.
|tip Each additional Bronze Tube requires 2 Bronze Bars and 1 Weak Flux.
step
talk Roxxik##11017
|tip Inside the building.
Train Standard Scope |learn Standard Scope##3978 |goto Orgrimmar/0 56.81,56.47
stickystart "Collect_Bronze_Tube_135"
step
collect 10 Moss Agate##1206 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 135 |or
step
label "Collect_Bronze_Tube_135"
collect 10 Bronze Tube##4371 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 135 |or
step
create 10 Standard Scope##3978,Engineering,135
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\First Aid\\First Aid (1-525)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('First Aid') > 0 end,
description="This guide will walk you through leveling your First Aid skill from 1-525.",
},[[
step
talk Krenk Choplimb##45540
Train Apprentice First Aid |skillmax First Aid,75 |goto Orgrimmar/0 37.49,87.21
step
Inside Ragefire Chasm:
Kill Ragefire enemies throughout the dungeon
collect 170 Linen Cloth##2589 |or
|tip You can also purchase them from the Auction House.
|tip Save at least 120 of these, you will need them for future steps.
'|complete skill("First Aid") >= 40 |or
step
create 50 Linen Bandage##3275,First Aid,40
step
talk Krenk Choplimb##45540
Train Heavy Linen Bandage |learn Heavy Linen Bandage##3276 |goto Orgrimmar/0 37.49,87.21
step
collect 90 Linen Cloth##2589 |or
|tip You collected these in a previous step.
'|complete skill("First Aid") >= 70 |or
step
create 45 Heavy Linen Bandage##3276,First Aid,75
step
talk Krenk Choplimb##45540
Train Journeyman First Aid |skillmax First Aid,150 |goto Orgrimmar/0 37.49,87.21
step
collect 30 Linen Cloth##2589 |or
|tip You collected these in a previous step.
'|complete skill("First Aid") >= 80 |or
step
create 15 Heavy Linen Bandage##3276,First Aid,80
step
talk Krenk Choplimb##45540
Train Wool Bandage |learn Wool Bandage##3277 |goto Orgrimmar/0 37.49,87.21
step
Kill Venture Co. enemies around this area
|tip You can find more inside the mine.
collect 180 Wool Cloth##2592 |goto The Barrens/0 66.28,13.05 |or
|tip You can also purchase them from the Auction House.
|tip Save at least 120 of these, you will need them for future steps.
'|complete skill("First Aid") >= 115 |or
step
create 60 Wool Bandage##3277,First Aid,115
step
talk Krenk Choplimb##45540
Train Heavy Wool Bandage |learn Heavy Wool Bandage##3278 |goto Orgrimmar/0 37.49,87.21
step
collect 120 Wool Cloth##2592 |or
|tip You collected these in a previous step.
'|complete skill("First Aid") >= 150 |or
step
create 60 Heavy Wool Bandage##3278,First Aid,150
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Fishing (1-525)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Fishing') > 0 end,
description="This guide will walk you through leveling your Fishing skill from 1-525.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
talk Lumak##3332
Train Apprentice Fishing |skillmax Fishing,75 |goto Orgrimmar/0 66.47,41.98
step
talk Shankys##3333
buy Fishing Pole##6256 |goto 66.71,41.84 |or
|tip You need to be able to equip a fishing pole in order to fish.
'|complete skill("Fishing") >= 300 |or
step
talk Shankys##3333
buy 5 Shiny Bauble##6529 |goto 66.71,41.84 |or
|tip These will allow you to catch fish easier.
'|complete skill("Fishing") >= 50 |or
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto 66.71,41.84 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto 66.71,41.84 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto 66.71,41.84 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto 66.71,41.84 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto 66.71,41.84 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto 66.71,41.84 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto 66.71,41.84 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto 66.71,41.84 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto 66.71,41.84 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto 66.71,41.84 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto 66.71,41.84 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto 66.71,41.84 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete skill("Fishing") >= 50 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Shiny Bauble##6529
|tip Use it on your Fishing Pole.
|tip It will grant you +25 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 50 in Fishing |skill Fishing,50 |goto 66.71,41.84
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Lumak##3332
Train Journeyman Fishing |skillmax Fishing,150 |goto Orgrimmar/0 66.47,41.98
step
talk Shankys##3333
buy 10 Nightcrawlers##6530 |goto 66.71,41.84 |complete skill("Fishing") >= 125
buy 10 Bright Baubles##6532 |goto 66.71,41.84 |complete skill("Fishing") >= 125
|tip These will allow you to catch fish easier.
step
talk Shankys##3333
buy Strong Fishing Pole##6365 |goto 66.71,41.84 |or
|tip This is a limited supply item.
|tip If she doesn't have it for sale, check the Auction House.
|tip If you can't get one, you can skip this step.
'|complete skill("Fishing") >= 300 |or
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto 66.71,41.84 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto 66.71,41.84 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto 66.71,41.84 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto 66.71,41.84 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto 66.71,41.84 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto 66.71,41.84 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto 66.71,41.84 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto 66.71,41.84 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto 66.71,41.84 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto 66.71,41.84 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto 66.71,41.84 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto 68.09,29.54 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete skill("Fishing") >= 125 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Nightcrawlers##6530 |only if default
use the Bright Baubles##6532 |only if skill("Fishing") >= 100
|tip Use it on your Fishing Pole.
|tip It will grant you +50 Fishing skill for 10 minutes. |only if default
|tip It will grant you +75 Fishing skill for 10 minutes. |only if skill("Fishing") >= 100
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 125 in Fishing |skill Fishing,125 |goto 66.71,41.84
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Farming Guides\\Golden Darter")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Farming Guides\\Figluster's Mudfish")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Farming Guides\\Icefin Bluefish")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Farming Guides\\Raw Brilliant Smallfish")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Farming Guides\\Raw Slitherskin Mackerel")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Farming Guides\\Raw Longjaw Mud Snapper")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Farming Guides\\Raw Bristle Whisker Catfish")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Farming Guides\\Raw Rainbow Fin Albacore")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Farming Guides\\Raw Sagefish")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Farming Guides\\Raw Mithril Head Trout")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Farming Guides\\Raw Rockscale Cod")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Fishing\\Farming Guides\\Raw Sunscale Salmon")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Herbalism (1-525)")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Silverleaf",{
author="support@zygorguides.com",
},[[
step
map Tirisfal Glades
path follow smart; loop on; ants curved; dist 20
path	51.54,54.24	50.24,56.05	47.60,53.12	45.65,51.89	46.96,47.83
path	44.74,46.19	42.79,42.59	41.45,40.79	39.11,40.30	38.92,43.20
path	38.50,46.14	36.48,47.41	34.54,48.14	32.02,48.17	31.72,50.34
path	33.92,51.19	37.36,51.84	38.60,52.08	39.77,54.03	40.68,58.21
path	40.92,60.80	41.92,63.49	44.02,65.29	46.57,66.37	49.11,67.48
path	50.44,66.83	51.57,64.64	54.10,62.49	56.28,59.15	56.53,55.12
path	53.81,53.15	52.04,54.99
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
collect Silverleaf##765 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Peacebloom",{
author="support@zygorguides.com",
},[[
step
map Tirisfal Glades
path follow smart; loop on; ants curved; dist 20
path	51.54,54.24	50.24,56.05	47.60,53.12	45.65,51.89	46.96,47.83
path	44.74,46.19	42.79,42.59	41.45,40.79	39.11,40.30	38.92,43.20
path	38.50,46.14	36.48,47.41	34.54,48.14	32.02,48.17	31.72,50.34
path	33.92,51.19	37.36,51.84	38.60,52.08	39.77,54.03	40.68,58.21
path	40.92,60.80	41.92,63.49	44.02,65.29	46.57,66.37	49.11,67.48
path	50.44,66.83	51.57,64.64	54.10,62.49	56.28,59.15	56.53,55.12
path	53.81,53.15	52.04,54.99
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
collect Peacebloom##2447 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Earthroot")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Briarthorn",{
author="support@zygorguides.com",
},[[
step
label "Path_One"
map Silverpine Forest
path follow smart; loop off; dist 20
path	49.04,32.38	49.42,35.61	49.42,37.96	49.76,40.18	50.52,43.34
path	52.66,43.16	54.51,44.07	52.79,45.65	51.98,49.91	52.04,52.85
path	51.86,56.81	52.43,59.23	51.75,62.42	54.26,63.98	55.27,61.88
path	56.68,60.37	58.05,62.07	56.16,64.50	54.77,66.89	54.34,71.81
path	54.65,74.35	56.82,76.43	59.65,77.20	61.93,77.46	64.26,78.75
path	66.96,79.79
Click herbs as you follow the path around this area
|tip Briarthorn can share a spawn with other herbs in the area, so pick them all.
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 70 Herbalism skill to gather these.
collect Briarthorn##2450 |n
'|goto 66.96,79.79 < 20 |noway |c
step
map Silverpine Forest
path follow smart; loop off; dist 20
path	66.96,79.79	64.26,78.75	61.93,77.46	59.65,77.20	56.82,76.43
path	54.65,74.35	54.34,71.81	54.77,66.89	56.16,64.50	58.05,62.07
path	56.68,60.37	55.27,61.88	54.26,63.98	51.75,62.42	52.43,59.23
path	51.86,56.81	52.04,52.85	51.98,49.91	52.79,45.65	54.51,44.07
path	52.66,43.16	50.52,43.34	49.76,40.18	49.42,37.96	49.42,35.61
path	49.04,32.38
Click herbs as you follow the path around this area
|tip Briarthorn can share a spawn with other herbs in the area, so pick them all.
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 70 Herbalism skill to gather these.
collect Briarthorn##2450 |n
'|goto 49.04,32.38 < 20 |noway |c |next "Path_One"
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Swiftthistle")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Liferoot")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Fadeleaf")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Wildvine")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Blindweed")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Ghost Mushroom")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Mountain Silversage")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Icecap")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Black Lotus")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Mageroyal")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Stranglekelp")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Bruiseweed",{
author="support@zygorguides.com",
},[[
step
label "Bruiseweed_1"
map Stonetalon Mountains/0
path follow smart; loop on; ants straight; dist 30
path	73.00,59.72	66.74,54.82	63.25,56.60	53.01,45.12	52.19,43.22
path	52.78,40.43	49.32,35.40	48.73,32.68	45.84,25.38	41.49,18.24
path	39.73,43.04	37.25,49.59	36.30,51.80	37.78,56.59	58.09,73.47
path	61.22,84.07	63.82,85.60	71.85,83.84	73.87,86.83	74.93,88.92
path	78.14,78.96
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 100 Herbalism skill to gather these.
collect Bruiseweed##2453 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Wild Steelbloom")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Grave Moss")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Kingsblood")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Goldthorn")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Khadgar's Whisker")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Dragon's Teeth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Firebloom")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Purple Lotus")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Sungrass")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Gromsblood")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Golden Sansam")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Dreamfoil")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Herbalism\\Farming Guides\\Sorrowbloom")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Inscription (1-525)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Inscription') > 0 end,
description="This guide will walk you through leveling your Inscription skill from 1-525.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
talk Nerog##46716
|tip Inside the building.
Train Apprentice Inscription |skillmax Inscription,75 |goto Orgrimmar/0 55.24,55.80
step
label "Begin_Profession_Leveling_Classic"
map Tirisfal Glades
path follow smart; loop on; ants curved; dist 20
path	51.54,54.24	50.24,56.05	47.60,53.12	45.65,51.89	46.96,47.83
path	44.74,46.19	42.79,42.59	41.45,40.79	39.11,40.30	38.92,43.20
path	38.50,46.14	36.48,47.41	34.54,48.14	32.02,48.17	31.72,50.34
path	33.92,51.19	37.36,51.84	38.60,52.08	39.77,54.03	40.68,58.21
path	40.92,60.80	41.92,63.49	44.02,65.29	46.57,66.37	49.11,67.48
path	50.44,66.83	51.57,64.64	54.10,62.49	56.28,59.15	56.53,55.12
path	53.81,53.15	52.04,54.99
click Peacebloom##1618+
|tip They look like small white flowers on the ground along the path.
click Silverleaf##1617+ |notinsticky
|tip They look like bushy blue and green plants on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 62 Alabaster Pigment##39151 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Alabaster Pigment can be Milled from Earthroot, Peacebloom, and Silverleaf.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Inscription") >= 19 |or
step
talk Moraka##46718
|tip Inside the building.
buy 1 Virtuoso Inking Set##39505 |goto Orgrimmar/0 55.24,55.80 |or
'|complete skill("Inscription") >= 19 |or
step
talk Nerog##46716
|tip Inside the building.
Train Ivory Ink |learn Ivory Ink##52738 |goto Orgrimmar/0 55.24,55.80
step
create 18 Ivory Ink##52738,Inscription,18 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Inscription") >= 19 |or
step
create 1 Ivory Ink##52738,Inscription,19
|tip Save at least 18 of these; you will need them for future steps.
step
collect 16 Ivory Ink##37101 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 35 |or
step
talk Moraka##46718
buy 16 Light Parchment##39354 |goto Orgrimmar/0 55.24,55.80 |or
'|complete skill("Inscription") >= 35 |or
step
talk Nerog##46716
|tip Inside the building.
Train Scroll of Stamina |learn Scroll of Stamina##45382 |goto Orgrimmar/0 55.24,55.80
step
create 16 Scroll of Stamina##45382,Inscription,35
|tip You may need to create more or less of these.
|tip Each additional Scroll of Stamina requires 1 Ivory Ink and 1 Light Parchment.
step
collect 44 Alabaster Pigment##39151 |or
|tip You collected these in a previous step.
'|complete skill("Inscription") >= 53 |or
step
talk Nerog##46716
|tip Inside the building.
Train Moonglow Ink |learn Moonglow Ink##52843 |goto Orgrimmar/0 55.24,55.80
step
create 22 Moonglow Ink##52843,Inscription,22 total
|tip Save these, you will need them for future steps.
step
create 1 Moonglow Ink##52843,Inscription,53
|tip Save at least 22 of these; you will need them for future steps.
step
collect 22 Moonglow Ink##39469 |or
|tip You collected these in a previous step.
'|complete skill("Inscription") >= 75 |or
step
talk Moraka##46718
buy 44 Light Parchment##39354 |goto Orgrimmar/0 55.24,55.80 |or
'|complete skill("Inscription") >= 75 |or
step
talk Nerog##46716
|tip Inside the building.
Train Armor Vellum |learn Armor Vellum##52739 |goto Orgrimmar/0 55.24,55.80
step
create 22 Armor Vellum##52739,Inscription,75
|tip You may need to create more or less of these.
|tip Each additional Armor Vellum requires 1 Moonglow Ink and 2 Light Parchment.
|tip Save these and place high-value enchants on them.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Nerog##46716
|tip Inside the building.
Train Journeyman Inscription |skillmax Inscription,150 |goto Orgrimmar/0 55.24,55.80
step
talk Nerog##46716
|tip Inside the building.
Train Midnight Ink |learn Midnight Ink##53462 |goto Orgrimmar/0 55.24,55.80
step
map The Barrens/0
path follow smart; loop on; ants straight; dist 30
path	39.36,57.49	34.89,52.89	33.36,50.00	30.07,47.72	29.91,44.17
path	33.29,42.12	35.45,40.82	36.33,37.91	36.65,35.15	35.37,32.30
path	48.42,29.59	50.71,27.22	53.27,25.57	55.42,23.27	55.79,19.31
path	58.97,17.65	66.68,12.45	64.37,22.75	62.88,34.68	59.08,35.10
path	56.55,32.56	53.15,34.00	48.57,41.78	46.26,46.30	53.57,56.68
path	55.00,54.38	55.22,48.55	59.06,47.80	61.38,49.96	64.29,54.33
path	64.83,59.12	65.14,62.68	63.50,66.84	63.61,77.85	60.59,76.48
path	53.29,73.51	51.63,71.03	43.14,70.39
click Mageroyal##1620+
|tip They look like bushy pink flowers on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 42 Dusky Pigment##39334 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Dusky Pigment can be Milled from Briarthorn, Bruiseweed, Mageroyal, Stranglekelp, and Swiftthistle.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Inscription") >= 80 |or
step
create 21 Midnight Ink##53462,Inscription,21 total
|tip Save at least 20 of these; you will need them for future steps.
step
create 1 Midnight Ink##53462,Inscription,80
|tip You may need to create more or less of these.
|tip Each additional Midnight Ink requires 2 Dusky Pigment.
step
collect 20 Midnight Ink##53462 |or
|tip You collected these in a previous step.
'|complete skill("Inscription") >= 100 |or
step
talk Moraka##46718
buy 20 Light Parchment##39354 |goto Orgrimmar/0 55.24,55.80 |or
'|complete skill("Inscription") >= 100 |or
step
_<Create any orange-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 20 points, continue training new orange-difficulty glyphs as you gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is orange.
Reach 100 Inscription Skill |skill Inscription,100
step
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	46.75,25.55	51.58,29.02	56.21,30.36	59.67,33.23	62.46,34.02
path	61.92,38.94	58.55,43.68	56.51,48.27	44.88,34.82	41.25,33.98
path	35.44,31.57	31.52,36.24	26.99,34.94	18.37,36.35	13.78,37.41
path	14.84,33.80	18.22,32.79	19.10,26.35	21.55,27.19	24.28,28.73
path	27.93,30.36	32.61,27.99	35.45,24.60	38.43,23.41	40.84,24.23
click Kingsblood##1624+
|tip They look like bushy purple, pink, and green plants on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 80 Golden Pigment##39338 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Golden Pigment can be Milled from Grave Moss, Kingsblood, Liferoot, and Wild Steelbloom.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Inscription") >= 105 |or
step
talk Nerog##46716
|tip Inside the building.
Train Lion's Ink |learn Lion's Ink##57704 |goto Orgrimmar/0 55.24,55.80
step
create 40 Lion's Ink##57704,Inscription,40 total
|tip Save these, you will need them for future steps.
step
create 1 Lion's Ink##57704,Inscription,105
|tip You may need to create more or less of these.
|tip Each additional Lion's Ink requires 2 Dusky Pigment.
step
collect 20 Lion's Ink##43116 |or
|tip You collected these in a previous step.
'|complete skill("Inscription") >= 125 |or
step
talk Moraka##46718
buy 20 Common Parchment##10648 |goto Orgrimmar/0 55.24,55.80 |or
'|complete skill("Inscription") >= 125 |or
step
_<Create any orange-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 20 points, continue training new orange-difficulty glyphs as you gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is orange.
Reach 125 Inscription Skill |skill Inscription,125
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Jewelcrafting (1-525)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Jewelcrafting') > 0 end,
description="This guide will walk you through leveling your Jewelcrafting skill from 1-525.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
talk Kalinda##19775
|tip Inside the building.
Train Apprentice Jewelcrafting |skillmax Jewelcrafting,75 |goto Silvermoon City/0 90.33,73.83
step
label "Begin_Profession_Leveling_Classic"
talk Gelanthis##16624
|tip Inside the building.
buy 1 Jeweler's Kit##20815 |goto Silvermoon City/0 90.91,73.35 |or 2
buy 1 Simple Grinder##20824 |goto 90.91,73.35 |or 2
|tip Save these, you will need them for future steps.
'|complete skill("Jewelcrafting") >= 375 |or
stickystart "Collect_Tigerseye_50"
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
click Copper Vein##1731+
|tip They look like gray rocks with orange and yellow mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 110 Copper Ore##2770 |n
|tip Smelt the ore at a forge.
collect 110 Copper Bar##2840 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 35 |or
step
label "Collect_Tigerseye_50"
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
click Copper Vein##1731+ |notinsticky
|tip They look like gray rocks with orange and yellow mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 15 Tigerseye##818 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip They can be Prospected from Copper Ore with Jewelcrafting. |notinsticky
'|complete skill("Jewelcrafting") >= 50 |or
step
create 55 Delicate Copper Wire##25255,Jewelcrafting,55 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Jewelcrafting") >= 51 |or
step
create 1 Delicate Copper Wire##25255,Jewelcrafting,Jewelcrafting,35
|tip Save these, you will need them for future steps.
|tip You may need to make a few more of these.
|tip Each additional Delicate Copper Wire requires 2 Copper Bars.
stickystart "Collect_Delicate_Copper_Wire_50"
step
collect 15 Tigerseye##818 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 50 |or
step
label "Collect_Delicate_Copper_Wire_50"
collect 15 Delicate Copper Wire##20816 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 50 |or
step
talk Kalinda##19775
|tip Inside the building.
Train Tigerseye Band |learn Tigerseye Band##32179 |goto Silvermoon City/0 90.33,73.83
step
create 15 Tigerseye Band##32179,Jewelcrafting,50
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Kalinda##19775
|tip Inside the building.
Train Journeyman Jewelcrafting |skillmax Jewelcrafting,150 |goto Silvermoon City/0 90.33,73.83
step
talk Kalinda##19775
|tip Inside the building.
Train Bronze Setting |learn Bronze Setting##25278 |goto 90.33,73.83
step
collect 120 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
|tip Smelting 2 Bronze Bars requires 1 Copper Bar and 1 Tin Bar.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 20 of these; you will need them for future steps.
'|complete skill("Jewelcrafting") >= 80
step
create 50 Bronze Setting##25278,Jewelcrafting,50 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Jewelcrafting") >= 150 |or
step
create 1 Bronze Setting##25278,Jewelcrafting,80
|tip Save these, you will need them for future steps.
stickystart "Collect_Moss_Agate_150"
stickystart "Collect_Bronze_Setting_100"
stickystart "Collect_Delicate_Copper_Wire_100"
step
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
click Tin Vein##3764+
|tip They look like gray rocks with silver mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 60 Shadowgem##1210 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 65 Mining skill to gather these.
|tip They can be Prospected from Copper Ore and Tin Ore with Jewelcrafting.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 20 of these; you will need them for future steps.
'|complete skill("Jewelcrafting") >= 100 |or
step
label "Collect_Moss_Agate_150"
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
click Tin Vein##3764+ |notinsticky
|tip They look like gray rocks with silver mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 30 Moss Agate##1206 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 65 Mining skill to gather these.
|tip They can be Prospected from Copper Ore and Tin Ore with Jewelcrafting. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip Save these, you will need them for future steps. |notinsticky
'|complete skill("Jewelcrafting") >= 150 |or
step
label "Collect_Bronze_Setting_100"
collect 20 Bronze Setting##20817 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 100 |or
step
label "Collect_Delicate_Copper_Wire_100"
collect 40 Delicate Copper Wire##20816 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 100 |or
step
talk Kalinda##19775
|tip Inside the building.
Train Gloom Band |learn Gloom Band##25287 |goto Silvermoon City/0 90.33,73.83
step
create 20 Gloom Band##25287,Jewelcrafting,100
|tip You may need to create more or less of these.
|tip Each additional Gloom Band requires 2 Shadowgems and 1 Delicate Copper Wire.
stickystart "Collect_Shadowgem_110"
step
collect 20 Bronze Bar##2841 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 110 |or
step
label "Collect_Shadowgem_110"
collect 20 Shadowgem##1210 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 110 |or
step
talk Kalinda##19775
|tip Inside the building.
Train Ring of Twilight Shadows |learn Ring of Twilight Shadows##25318 |goto Silvermoon City/0 90.33,73.83
step
create 10 Ring of Twilight Shadows##25318,Jewelcrafting,110
step
map Arathi Highlands
path follow smart; loop on; ants curved; dist 20
path	78.66,36.13	77.36,41.29	75.00,44.93	72.65,48.07	70.58,55.05
path	69.99,58.40	72.92,59.03	72.28,63.63	72.78,66.86	71.75,66.15
path	69.15,72.54	67.17,70.90	63.52,73.55	59.48,74.71	59.32,70.74
path	56.16,71.89	50.82,78.41	47.96,82.44	42.53,80.75	43.02,77.16
path	40.39,71.86	37.95,67.63	38.52,68.50	33.94,66.02	34.59,61.64
path	33.70,56.77	33.45,53.94	33.65,50.19	35.00,47.28	32.96,46.68
path	31.68,45.41	32.34,42.64	31.42,41.24	25.23,43.10	20.94,39.12
path	20.02,35.80	19.12,33.36	22.43,31.28	23.48,24.90	26.93,20.65
path	28.65,14.18	28.96,16.96	31.62,18.63	30.96,20.36	33.19,21.23
path	36.35,24.61	39.97,25.62	40.21,28.79	43.97,30.51	45.70,33.02
path	48.08,33.60	49.78,36.76	52.14,36.11	52.75,31.99	54.80,33.13
path	58.19,32.50	58.02,34.22	59.94,35.97	62.25,32.06	64.69,35.58
path	64.49,26.56	66.77,27.64	70.39,27.07	70.47,30.74	72.89,30.09
path	76.73,29.48	76.70,33.68	79.56,35.45
click Iron Deposit##1735+
|tip They look like dense gray rocks with small silver-green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals".
collect 80 Heavy Stone##2838 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 125 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Jewelcrafting") >= 120 |or
step
talk Kalinda##19775
|tip Inside the building.
Train Heavy Stone Statue |learn Heavy Stone Statue##32807 |goto Silvermoon City/0 90.33,73.83
step
create 10 Heavy Stone Statue##32807,Jewelcrafting,120
stickystart "Collect_Bronze_Setting_150"
step
collect 30 Moss Agate##1206 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 150 |or
step
label "Collect_Bronze_Setting_150"
collect 30 Bronze Setting##20817 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 150 |or
step
talk Jandia##4877
|tip Inside the building.
buy 1 Design: Pendant of the Agate Shield##20970 |goto Thousand Needles/0 46.0,51.6 |or
|tip This design is a limited supply item.
|tip You may need to wait a short period of time (around 10 minutes) for it to resupply.
'|complete skill("Jewelcrafting") >= 150 |or
step
use the Design: Pendant of the Agate Shield##20970
Train Pendant of the Agate Shield |learn Pendant of the Agate Shield##25610
step
create 30 Pendant of the Agate Shield##25610,Jewelcrafting,150
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leatherworking (1-525)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Leatherworking') > 0 end,
description="This guide will walk you through leveling your Leatherworking skill from 1-525.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar/0 62.22,45.65 < 5 |walk
talk Karolek##3365
|tip Inside the building.
Train Apprentice Leatherworking |skillmax Leatherworking,75 |goto Orgrimmar/0 60.87,54.96
step
label "Begin_Profession_Leveling_Classic"
Kill enemies around this area
|tip Skin their corpses.
collect 57 Ruined Leather Scraps##2934 |or |goto Durotar 43.89,17.49
|tip Farm them with Skinning or purchase them from the auction house.
|tip You can also use 20 Light Leather to make 20 Light Armor Kits.
You can find more around [39.47,17.22]
'|complete skill("Leatherworking") >= 20 |or
step
create 19 Light Leather##2881,Leatherworking,20
|tip Save these, you will need them for future steps.
|tip You can also use 19 Light Leather to make 19 Light Armor Kits.
step
Kill enemies around this area
|tip Skin their corpses.
collect 40 Light Leather##2318 |or |goto Durotar 43.89,17.49
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around [39.47,17.22]
'|complete skill("Leatherworking") >= 45 |or
step
create 40 Light Armor Kit##2152,Leatherworking,45
|tip You may need to create more or less of these.
|tip Each additional Light Armor Kit requires 1 Light Leather.
step
Kill enemies around this area
|tip Skin their corpses.
collect 42 Light Leather##2318 |or |goto Durotar 43.89,17.49
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around [39.47,17.22]
'|complete skill("Leatherworking") >= 55 |or
step
Tamar##3366
|tip Inside the building.
buy 21 Coarse Thread##2320 |goto Orgrimmar/0 60.36,54.38 |or
'|complete skill("Leatherworking") >= 55 |or
step
create 21 Handstitched Leather Cloak##9058,Leatherworking,55
|tip You may need to create more or less of these.
|tip Each additional Handstitched Leather Cloak requires 2 Light Leather and 1 Coarse Thread.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Karolek##3365
|tip Inside the building.
Train Journeyman Leatherworking |skillmax Leatherworking,150 |goto Orgrimmar/0 60.87,54.96
step
talk Karolek##3365
|tip Inside the building.
Train Embossed Leather Gloves |learn Embossed Leather Gloves##3756 |goto Orgrimmar/0 60.87,54.96
step
Kill enemies around this area
|tip Skin their corpses.
collect 165 Light Leather##2318 |or |goto Durotar 43.89,17.49
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around [39.47,17.22]
'|complete skill("Leatherworking") >= 100 |or
step
Tamar##3366
|tip Inside the building.
buy 180 Coarse Thread##2320 |goto Orgrimmar/0 60.36,54.38 |or
|tip Save these, you will need them for future steps.
'|complete skill("Leatherworking") >= 100 |or
step
create 55 Embossed Leather Gloves##3756,Leatherworking,100
|tip You may need to create more or less of these.
|tip Each additional Embossed Leather Glove requires 3 Light Leather and 2 Coarse Thread.
step
talk Karolek##3365
|tip Inside the building.
Train Fine Leather Belt |learn Fine Leather Belt##3763 |goto Orgrimmar/0 60.87,54.96
step
Kill enemies around this area
|tip Skin their corpses.
collect 210 Light Leather##2318 |or |goto Durotar 43.89,17.49
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around [39.47,17.22]
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 125 |or
step
Tamar##3366
|tip Inside the building.
buy 70 Coarse Thread##2320 |goto Orgrimmar/0 60.36,54.38 |or
|tip You bought these in a previous step.
'|complete skill("Leatherworking") >= 125 |or
step
create 35 Fine Leather Belt##3763,Leatherworking,125
|tip You may need to create more or less of these.
|tip Each additional Fine Leather Belt requires 6 Light Leather and 2 Coarse Thread.
step
talk Karolek##3365
|tip Inside the building.
Train Dark Leather Boots |learn Dark Leather Boots##2167 |goto Orgrimmar/0 60.87,54.96
step
Kill Yeti enemies around this area
|tip Skin their corpses.
|tip You can find more inside the cave.
|tip You will need level 155 Skinning to collect these.
collect 72 Medium Leather##2319 |or |goto Hillsbrad Foothills 46.64,54.41
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 137 |or
step
Tamar##3366
|tip Inside the building.
buy 36 Fine Thread##2321 |goto Orgrimmar/0 60.36,54.38 |or 2
buy 18 Gray Dye##4340 |goto Orgrimmar/0 60.36,54.38 |or 2
'|complete skill("Leatherworking") >= 137 |or
step
create 18 Dark Leather Boots##2167,Leatherworking,137
|tip You may need to create more or less of these.
|tip Each additional Dark Leather Boot requires 4 Medium Leather, 2 Fine Thread, and 1 Gray Dye.
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Mining (1-525)")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Copper Ore",{
author="support@zygorguides.com",
},[[
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect Copper Ore##2770 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Rough Stone",{
author="support@zygorguides.com",
},[[
step
map Durotar
path follow smart; loop on; ants curved; dist 20
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect Rough Stone##2835 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Farming Guides\\Iron Ore")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Heavy Stone",{
author="support@zygorguides.com",
},[[
step
map Arathi Highlands
path follow smart; loop on; ants curved; dist 20
path	78.66,36.13	77.36,41.29	75.00,44.93	72.65,48.07	70.58,55.05
path	69.99,58.40	72.92,59.03	72.28,63.63	72.78,66.86	71.75,66.15
path	69.15,72.54	67.17,70.90	63.52,73.55	59.48,74.71	59.32,70.74
path	56.16,71.89	50.82,78.41	47.96,82.44	42.53,80.75	43.02,77.16
path	40.39,71.86	37.95,67.63	38.52,68.50	33.94,66.02	34.59,61.64
path	33.70,56.77	33.45,53.94	33.65,50.19	35.00,47.28	32.96,46.68
path	31.68,45.41	32.34,42.64	31.42,41.24	25.23,43.10	20.94,39.12
path	20.02,35.80	19.12,33.36	22.43,31.28	23.48,24.90	26.93,20.65
path	28.65,14.18	28.96,16.96	31.62,18.63	30.96,20.36	33.19,21.23
path	36.35,24.61	39.97,25.62	40.21,28.79	43.97,30.51	45.70,33.02
path	48.08,33.60	49.78,36.76	52.14,36.11	52.75,31.99	54.80,33.13
path	58.19,32.50	58.02,34.22	59.94,35.97	62.25,32.06	64.69,35.58
path	64.49,26.56	66.77,27.64	70.39,27.07	70.47,30.74	72.89,30.09
path	76.73,29.48	76.70,33.68	79.56,35.45
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 125 Mining to collect these.
collect Heavy Stone##2838 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Farming Guides\\Gold Ore")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Farming Guides\\Mithril Ore")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Farming Guides\\Solid Stone")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Farming Guides\\Truesilver Ore")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Farming Guides\\Dark Iron Ore")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Farming Guides\\Thorium Ore")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Farming Guides\\Dense Stone")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Farming Guides\\Guardian Stone")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Mining\\Farming Guides\\Elementium Ore")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Tin Ore",{
author="support@zygorguides.com",
},[[
step
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect Tin Ore##2771 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Coarse Stone",{
author="support@zygorguides.com",
},[[
step
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect these.
collect Coarse Stone##2836 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Silver Ore",{
author="support@zygorguides.com",
},[[
step
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 75 Mining to collect these.
collect Silver Ore##2775 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Moss Agate",{
author="support@zygorguides.com",
},[[
step
map Kalimdor/0
path follow smart; loop on; ants straight; dist 30
path	44.89,34.26	44.33,34.72
map Ashenvale
path	16.61,27.89	20.48,28.08	20.00,33.38	16.87,36.59	19.99,41.70
path	19.64,44.86	22.28,49.81	25.73,53.76	30.03,58.81	28.36,63.31
path	31.43,64.91	32.88,70.11	38.79,63.61	42.14,63.26	42.24,68.10
path	44.49,70.63	51.56,74.31	55.59,75.26	55.32,68.67	56.36,64.09
path	58.46,65.61	62.13,64.77	63.83,65.27	65.66,69.02	71.90,71.98
path	75.32,75.93	75.51,69.19	82.44,71.50	81.58,49.07	79.19,47.72
path	76.14,51.73	70.40,54.04	69.08,52.18	65.23,55.56	66.82,47.07
path	64.33,43.71	61.84,42.80	59.00,37.01	57.53,30.19	54.73,33.28
path	54.27,36.64	56.34,40.95	60.51,46.50	53.44,48.07	48.22,46.33
path	45.28,47.32	43.45,41.62	41.73,40.62	41.32,36.20	36.59,36.37
path	38.26,30.49	33.33,28.17	32.75,21.40	25.66,19.01	20.89,19.16
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 65 Mining to collect Tin Ore nodes and 75 to collect Silver Ore nodes.
collect Moss Agate##1206 |n
|tip These are a rare drop from Tin and Silver Ore nodes.
'|confirm
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Skinning (1-525)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Green Whelp Scale")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Black Whelp Scale")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Ruined Leather Scraps",{
author="support@zygorguides.com",
},[[
step
map Durotar/0
path follow smart; loop off; ants straight; dist 30
path	42.87,15.34	41.30,16.71	41.05,20.61	42.23,21.28	43.64,21.87
path	44.95,24.42	43.63,27.25	43.70,29.99	44.95,29.96	45.66,28.20
Kill enemies around this area
|tip Skin their corpses.
collect Ruined Leather Scraps##2934 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Light Leather",{
author="support@zygorguides.com",
},[[
step
map Durotar/0
path follow smart; loop off; ants straight; dist 30
path	42.87,15.34	41.30,16.71	41.05,20.61	42.23,21.28	43.64,21.87
path	44.95,24.42	43.63,27.25	43.70,29.99	44.95,29.96	45.66,28.20
Kill enemies around this area
|tip Skin their corpses.
collect Light Leather##2318 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Slimy Murloc Scale")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Medium Hide")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Heavy Leather")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Raptor Hide")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Heavy Hide")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Thick Murloc Scale")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Thick Leather")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Thick Hide")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Worn Dragonscale")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Devilsaur Leather")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Rugged Leather")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Green Dragonscale")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Rugged Hide")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Black Dragonscale")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Heavy Scorpid Scale")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Core Leather")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Light Hide")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Medium Leather",{
author="support@zygorguides.com",
},[[
step
Kill Yeti enemies around this area
|tip Skin their corpses.
|tip You can find more inside the cave.
|tip You will need level 155 Skinning to collect these.
collect Medium Leather##2319 |n |goto Hillsbrad Foothills 46.64,54.41
'|confirm
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Turtle Scale")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Scorpid Scale")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Skinning\\Farming Guides\\Warbear Leather")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Tailoring (1-525)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Tailoring') > 0 end,
description="This guide will walk you through leveling your Tailoring skill from 1-525.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar/0 61.38,50.37 < 7 |walk
talk Magar##3363
|tip Inside the building.
Train Apprentice Tailoring |skillmax Tailoring,75 |goto Orgrimmar/0 63.65,49.93
step
label "Begin_Profession_Leveling_Classic"
Inside Ragefire Chasm:
Kill Ragefire enemies throughout the dungeon
collect 204 Linen Cloth##2589 |or
|tip Farm them from level 5-20 humanoid mobs or purchase them from the auction house.
'|complete skill("Tailoring") >= 50 |or
step
create 102 Bolt of Linen Cloth##2963,Tailoring,102 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 51 |or
step
create 1 Bolt of Linen Cloth##2963,Tailoring,45
|tip Save at least 102 of these; you will need them for future steps.
|tip You may need to make a few more of these.
|tip Each additional Bolt of Linen Cloth requires 2 Linen Cloth.
step
collect 40 Bolt of Linen Cloth##2996 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 70 |or
step
talk Borya##3364
|tip Inside the building.
buy 55 Coarse Thread##2320 |goto Orgrimmar/0 63.08,51.45 |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 70 |or
step
talk Magar##3363
|tip Inside the building.
Train Linen Belt |learn Linen Belt##8776 |goto Orgrimmar/0 63.65,49.93
step
create 40 Linen Belt##8776,Tailoring,70
|tip You may need to make a few more of these.
|tip Each additional Linen Belt requires 1 Bolt of Linen Cloth and 1 Coarse Thread.
step
collect 10 Bolt of Linen Cloth##2996 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 75 |or
step
talk Borya##3364
|tip Inside the building.
buy 15 Coarse Thread##2320 |goto Orgrimmar/0 63.08,51.45 |or
|tip You purchased these in a previous step.
'|complete skill("Tailoring") >= 75 |or
step
talk Magar##3363
|tip Inside the building.
Train Reinforced Linen Cape |learn Reinforced Linen Cape##2397 |goto Orgrimmar/0 63.65,49.93
step
create 5 Reinforced Linen Cape##2397,Tailoring,75
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Magar##3363
|tip Inside the building.
Train Journeyman Tailoring |skillmax Tailoring,150 |goto Orgrimmar/0 63.65,49.93
step
talk Magar##3363
|tip Inside the building.
Train Bolt of Woolen Cloth |learn Bolt of Woolen Cloth##2964 |goto Orgrimmar/0 63.65,49.93
step
Kill Venture Co. enemies around this area
|tip You can find more inside the mine.
collect 135 Wool Cloth##2592 |or |goto The Barrens/0 66.28,13.05
|tip Farm them from level 16-30 humanoid mobs or purchase them from the auction house.
'|complete skill("Tailoring") >= 100 |or
step
create 45 Bolt of Woolen Cloth##2964,Tailoring,45 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 106 |or
step
create 1 Bolt of Woolen Cloth##2964,Tailoring,100
|tip Save at least 45 of these; you will need them for future steps.
|tip You may need to make a few more of these.
|tip Each additional Bolt of Woolen Cloth requires 3 Wool Cloth.
step
collect 52 Bolt of Linen Cloth##2996 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 110 |or
step
talk Borya##3364
|tip Inside the building.
buy 43 Fine Thread##2321 |goto Orgrimmar/0 63.08,51.45 |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 110 |or
step
talk Magar##3363
|tip Inside the building.
Train Simple Kilt |learn Simple Kilt##12046 |goto Orgrimmar/0 63.65,49.93
step
create 13 Simple Kilt##12046,Tailoring,110
|tip You may need to make a few more of these.
|tip Each additional Simple Kilt requires 4 Bolts of Linen Cloth and 1 Fine Thread.
step
collect 45 Bolt of Woolen Cloth##2997 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 125 |or
step
talk Borya##3364
|tip Inside the building.
buy 30 Fine Thread##2321 |goto Orgrimmar/0 63.08,51.45 |or
|tip You purchased these in a previous step.
'|complete skill("Tailoring") >= 125 |or
step
talk Magar##3363
|tip Inside the building.
Train Double-stitched Woolen Shoulders |learn Double-stitched Woolen Shoulders##3848 |goto Orgrimmar/0 63.65,49.93
step
create 15 Double-stitched Woolen Shoulders##3848,Tailoring,125
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Linen Cloth",{
author="support@zygorguides.com",
},[[
step
map Orgrimmar/0
path follow smart; loop off; ants straight; dist 30
path    55.36,51.28
map Orgrimmar
path    72.79,16.11    66.23,37.63    66.87,50.90
Enter the Ragefire Chasm dungeon
|tip You may need a group for this.
step
Kill Ragefire enemies throughout the dungeon
collect Linen Cloth##2589 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Farming Guides\\Runecloth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Farming Guides\\Felcloth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Farming Guides\\Spider's Silk")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Farming Guides\\Shadow Silk")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Farming Guides\\Ironweb Spider Silk")
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Wool Cloth",{
author="support@zygorguides.com",
},[[
step
Kill Venture Co. enemies around this area
|tip You can find more inside the mine.
collect Wool Cloth##2592 |n |goto The Barrens/0 66.28,13.05
'|confirm
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Farming Guides\\Silk Cloth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Farming Guides\\Mageweave Cloth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Farming Guides\\Mooncloth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Tailoring\\Farming Guides\\Thick Spider's Silk")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Dropped\\Farming Guides\\Righteous Orb")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Dropped\\Farming Guides\\Demonic Rune")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Dropped\\Farming Guides\\Dark Rune")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Dropped\\Farming Guides\\Sharp Claw")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Dropped\\Farming Guides\\Ogre Tannin")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Dropped\\Farming Guides\\Small Venom Sac")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Dropped\\Farming Guides\\Huge Venom Sac")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Dropped\\Farming Guides\\Black Pearl")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Dropped\\Farming Guides\\Golden Pearl")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Dropped\\Farming Guides\\Zesty Clam Meat")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Dropped\\Farming Guides\\Iridescent Pearl")
ZygorGuidesViewer:RegisterGuidePlaceholder("Profession Guides\\Dropped\\Farming Guides\\Giant Egg")
