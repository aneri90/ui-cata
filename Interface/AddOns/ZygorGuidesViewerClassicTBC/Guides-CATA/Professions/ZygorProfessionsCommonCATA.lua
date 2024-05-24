local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("ProfessionsC") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("Professions\\Elements\\Farming Guides\\Volatile Life",{
author="support@zygorguides.com",
description="Volatile Life can be gathered from Herbs.",
},[[
step
label "Volatile_Life_Main_Menu"
Volatile Life is gathered from Cataclysm Herbs. Every farm route is nearly as good as the others, pick whichever you could use the herbs from.
|tip If you don't have a preference, the best location is from Whiptail in Uldum, however it is often contested.
Click Here To Farm Stormvine and Cinderbloom in Hyjal |confirm |or |next "Volatile_Life_Cinderbloom"
Click Here To Farm Heartblossom in Deepholm |confirm |or |next "Volatile_Life_Heartblossom"
Click Here to Farm Azshara's Veil and Stormvine in Vashj'ir |confirm |or |next "Volatile_Life_Azshara"
Click Here to Farm Whiptail in Uldum |confirm |or |next "Volatile_Life_Whiptail"
step
label "Volatile_Life_Cinderbloom"
map Mount Hyjal/0
path follow smart; loop on; ants straight; dist 30
path	63.52,31.55	59.57,32.88	56.84,34.54	54.71,29.36	53.13,31.28
path	48.07,30.68	45.74,27.86	36.60,22.67	35.18,25.84	33.14,25.57
path	33.77,34.17	33.99,37.06	27.61,39.43	25.94,37.24	24.30,33.51
path	23.48,36.14	21.88,38.77	15.82,40.94	13.52,40.33	14.38,45.61
path	17.12,53.39	19.25,57.53	23.37,59.85	24.79,61.79	27.32,59.90
path	28.50,54.44	31.11,52.22	34.43,54.53	35.78,57.57	36.87,62.02
path	38.97,61.57	40.29,59.61	41.57,56.62	49.01,57.60	51.13,57.93
path	51.16,53.77	51.72,51.91	54.23,53.26	55.58,57.23	57.62,54.09
path	61.08,59.46	61.30,60.55	65.74,54.83	69.41,55.41	72.97,59.21
path	74.00,61.72	77.50,59.62	79.41,55.08	81.41,51.90
|tip Gather Cinderbloom and other herbs along the path.
click Cinderbloom##202747+
click Stormvine##52984+
collect Volatile Life##52329 |n
Click Here To Change Your Herb Route |confirm |next "Volatile_Life_Main_Menu"
'|confirm
step
label "Volatile_Life_Azshara"
map Shimmering Expanse/0
path follow smart; loop on; ants curved; dist 30
path	45.91,34.21	43.95,33.49	41.30,31.07	40.21,32.17	40.61,35.96
path	40.30,38.87	41.93,41.20	42.26,45.80	41.98,48.84	40.92,52.87
path	39.62,55.16	37.95,54.41	36.97,51.91	34.98,52.01	32.16,57.49
path	32.70,61.61	34.43,63.81	36.99,64.58	38.31,66.22	39.15,69.03
path	38.40,71.26	37.71,73.01	39.53,74.19	41.36,73.99	42.27,77.19
path	43.58,79.20	45.81,81.32	47.25,81.72	49.00,84.03	50.84,86.57
path	52.58,86.63	53.66,87.98	55.68,91.22	58.94,91.52	61.16,91.30
path	61.63,86.87	61.51,82.72	60.87,80.82	58.85,80.73	56.84,81.41
path	54.23,80.47	53.36,77.18	53.44,72.83	53.89,68.75	55.82,68.27
path	58.12,69.08	60.73,69.14	62.65,67.74	65.67,63.95	67.54,59.94
path	68.04,56.94	67.89,52.39	66.76,47.91	65.42,44.80	63.75,44.08
|tip Gather Azshara's Veil and Stormvine along the path.
click Azshara's Veil##202749+
click Stormvine##52984+
collect Volatile Life##52329 |n
Click Here To Change Your Herb Route |confirm |next "Volatile_Life_Main_Menu"
'|confirm
step
label "Volatile_Life_Heartblossom"
map Deepholm/0
path follow smart; loop on; ants curved; dist 60
path	69.45,56.02	74.70,61.14	75.81,67.59	70.52,61.93	71.11,70.62
path	66.03,68.53	58.01,73.22	47.40,67.35	37.03,53.36	37.63,44.71
path	26.81,41.51	23.12,35.31	28.92,35.62	27.84,27.02	31.22,32.00
path	36.63,28.95	33.00,19.13	47.81,12.91	45.91,21.10	43.61,25.12
path	44.52,28.62	49.12,33.66	56.73,38.30	73.80,32.71	75.20,41.93
path	69.61,46.45
click Heartblossom##202750+
|tip Gather Heartblossom along the path.
collect Volatile Life##52329 |n
Click Here To Change Your Herb Route |confirm |next "Volatile_Life_Main_Menu"
'|confirm
step
label "Volatile_Life_Whiptail"
map Uldum/0
path follow smart; loop on; ants straight; dist 30
path	52.04,34.76	49.71,31.20	46.66,28.99	48.65,32.36	49.82,35.80
path	50.63,41.83	51.55,44.75	54.26,46.47	55.55,46.73	56.26,49.75
path	57.24,52.88	58.12,55.65	58.98,59.77	59.28,63.35	59.14,69.50
path	59.27,74.41	59.77,79.51	60.03,82.60	61.43,80.76	62.87,78.55
path	65.43,77.43	67.74,76.82	69.59,76.35	68.06,73.08	66.74,71.67
path	60.14,56.99	59.42,53.64	57.64,47.89	56.97,45.77	58.53,30.28
path	57.61,27.73	56.82,23.62	56.97,19.77	58.45,15.72	60.98,13.91
|tip Gather Whiptail along the path.
click Whiptail##202752+
collect Volatile Life##52329 |n
Click Here To Change Your Herb Route |confirm |next "Volatile_Life_Main_Menu"
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Volatile Fire",{
author="support@zygorguides.com",
description="Volatile Fire can be gathered from Twilight Highlands in the Eastern Kingdoms.",
},[[
step
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect Volatile Fire##52325 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Volatile Earth",{
author="support@zygorguides.com",
description="Volatile Earth can be gathered from Mount Hyjal in Kalimdor.",
},[[
step
map Mount Hyjal/0
path follow smart; loop on; ants curved
path	68.29,25.32	67.93,22.53	66.51,20.84	64.49,19.55	62.87,19.94
path	63.88,22.98	65.24,22.46	65.70,27.28	66.63,28.76
kill Scalding Rock Elemental##40229+
collect Volatile Earth##52327 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Volatile Water",{
author="support@zygorguides.com",
description="Volatile Water can be gathered from Twilight Highlands in the Eastern Kingdoms.",
},[[
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	29.60,66.46	28.77,62.37	31.51,59.47	33.77,56.98	35.75,60.13
path	34.61,63.05
kill Enslaved Waterspout##46329+
|tip You can also fish in any schools of fish for Volatile Water as well. |only if skill("Fishing") >= 450
collect Volatile Water##52326 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Volatile Air",{
author="support@zygorguides.com",
description="Volatile Air can be gathered from Twilight Highlands in the Eastern Kingdoms.",
},[[
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	39.56,47.29	41.39,48.90	41.53,46.16	39.76,44.61
kill Storm Vortex##47728+
collect Volatile Air##52328 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Embersilk Cloth",{
author="support@zygorguides.com",
description="Embersilk Cloth can be gathered from humanoids in Deepholm.",
},[[
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect Embersilk Cloth##53010 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Blackened Dragonscale",{
author="support@zygorguides.com",
description="Blackened Dragonscale can be gathered from Twilight Highlands in Eastern Kingdoms.",
condition_end=function() return skill('Skinning') >= 450 end,
},[[
step
Kill enemies around this area.
|tip Be sure to target the enemies flying above as well.
|tip Skin their corpses.
collect Blackened Dragonscale##52979 |n |goto Twilight Highlands/0 65.48,74.22
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Savage Leather",{
author="support@zygorguides.com",
description="Savage Leather can be gathered from Twilight Highlands.",
condition_end=function() return skill('Skinning') >= 500 end,
},[[
step
map Twilight Highlands/0
path follow smart; loop on; ants curved
path	65.90,16.51	66.11,19.43	70.01,21.02	66.31,24.52	63.41,22.82
path	59.82,21.32	56.53,20.52	58.00,13.33	56.60,8.71	61.20,9.91
path	62.71,10.41	64.61,12.82
Kill enemies around this area.
|tip Skin their corpses.
collect Savage Leather##52976 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Deepsea Scale",{
author="support@zygorguides.com",
description="Deepsea Scale can be gathered from King Crawlers in Kalimdor.",
condition_end=function() return skill('Skinning') >= 450 end,
},[[
step
kill King Crawler##51714+
|tip Skin their corpses.
collect Deepsea Scale##52982 |n |goto Feralas/0 68.99,75.51
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Azshara's Veil",{
author="support@zygorguides.com",
description="Azshara's Veil can be gathered from the Shimmering Expanse.",
condition_end=function() return skill('Herbalism') >= 425 end,
},[[
step
You need 425 Herbalism to gather Azshara's Veil.
Click Here To Level Your Herbalism |confirm
|only if skill("Herbalism") < 425
step
map Shimmering Expanse/0
path follow smart; loop on; ants curved
path	45.91,34.21	43.95,33.49	41.30,31.07	40.21,32.17	40.61,35.96
path	40.30,38.87	41.93,41.20	42.26,45.80	41.98,48.84	40.92,52.87
path	39.62,55.16	37.95,54.41	36.97,51.91	34.98,52.01	32.16,57.49
path	32.70,61.61	34.43,63.81	36.99,64.58	38.31,66.22	39.15,69.03
path	38.40,71.26	37.71,73.01	39.53,74.19	41.36,73.99	42.27,77.19
path	43.58,79.20	45.81,81.32	47.25,81.72	49.00,84.03	50.84,86.57
path	52.58,86.63	53.66,87.98	55.68,91.22	58.94,91.52	61.16,91.30
path	61.63,86.87	61.51,82.72	60.87,80.82	58.85,80.73	56.84,81.41
path	54.23,80.47	53.36,77.18	53.44,72.83	53.89,68.75	55.82,68.27
path	58.12,69.08	60.73,69.14	62.65,67.74	65.67,63.95	67.54,59.94
path	68.04,56.94	67.89,52.39	66.76,47.91	65.42,44.80	63.75,44.08
click Azshara's Veil##202749+
|tip Gather Azshara's Veil along the path.
|tip They share a spawn with Stormvine.
collect Azshara's Veil##52985 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Cinderbloom",{
author="support@zygorguides.com",
description="Cinderbloom can be gathered from Mount Hyjal.",
condition_end=function() return skill('Herbalism') >= 425 end,
},[[
step
You need 425 Herbalism to gather Cinderbloom.
Click Here To Level Your Herbalism |confirm
|only if skill("Herbalism") < 425
step
map Mount Hyjal/0
path follow smart; loop on; ants curved; dist 60
path	68.20,23.92	59.25,31.60	57.03,38.93	57.93,17.52	51.53,16.95
path	52.61,35.53	48.74,36.52	44.01,24.52	39.84,32.50	36.52,21.76
path	32.30,25.22	34.61,36.91	43.52,42.66	36.23,44.93	25.35,37.83
path	24.12,31.91	11.83,31.63	14.34,47.02	19.04,58.51	25.64,62.01
path	31.91,46.75	33.12,65.25	36.93,53.51	42.31,55.93	33.81,65.02
path	31.33,76.52	33.81,98.22	57.12,80.90	59.23,84.55	59.83,77.83
path	55.82,74.71	59.83,71.61	49.11,51.61	61.92,60.54	67.12,53.50
path	74.31,58.84	71.92,68.52	77.30,63.22	83.01,64.22	89.91,49.82
path	80.90,51.82	77.51,59.51
click Cinderbloom##202747+
|tip Gather Cinderbloom along the path.
collect Cinderbloom##52983 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Heartblossom",{
author="support@zygorguides.com",
description="Heartblossom can be gathered from Deepholm.",
condition_end=function() return skill('Herbalism') >= 475 end,
},[[
step
You need 475 Herbalism to gather Heartblossom.
Click Here To Level Your Herbalism |confirm
|only if skill("Herbalism") < 475
step
map Deepholm/0
path follow smart; loop on; ants curved; dist 60
path	69.45,56.02	74.70,61.14	75.81,67.59	70.52,61.93	71.11,70.62
path	66.03,68.53	58.01,73.22	47.40,67.35	37.03,53.36	37.63,44.71
path	26.81,41.51	23.12,35.31	28.92,35.62	27.84,27.02	31.22,32.00
path	36.63,28.95	33.00,19.13	47.81,12.91	45.91,21.10	43.61,25.12
path	44.52,28.62	49.12,33.66	56.73,38.30	73.80,32.71	75.20,41.93
path	69.61,46.45
click Heartblossom##202750+
|tip Gather Heartblossom along the path.
collect Heartblossom##52986 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Stormvine",{
author="support@zygorguides.com",
description="Stormvine can be gathered from the Shimmering Expanse.",
condition_end=function() return skill('Herbalism') >= 425 end,
},[[
step
You need 425 Herbalism to gather Stormvine.
Click Here To Level Your Herbalism |confirm
|only if skill("Herbalism") < 425
step
map Shimmering Expanse/0
path follow smart; loop on; ants curved
path	45.91,34.21	43.95,33.49	41.30,31.07	40.21,32.17	40.61,35.96
path	40.30,38.87	41.93,41.20	42.26,45.80	41.98,48.84	40.92,52.87
path	39.62,55.16	37.95,54.41	36.97,51.91	34.98,52.01	32.16,57.49
path	32.70,61.61	34.43,63.81	36.99,64.58	38.31,66.22	39.15,69.03
path	38.40,71.26	37.71,73.01	39.53,74.19	41.36,73.99	42.27,77.19
path	43.58,79.20	45.81,81.32	47.25,81.72	49.00,84.03	50.84,86.57
path	52.58,86.63	53.66,87.98	55.68,91.22	58.94,91.52	61.16,91.30
path	61.63,86.87	61.51,82.72	60.87,80.82	58.85,80.73	56.84,81.41
path	54.23,80.47	53.36,77.18	53.44,72.83	53.89,68.75	55.82,68.27
path	58.12,69.08	60.73,69.14	62.65,67.74	65.67,63.95	67.54,59.94
path	68.04,56.94	67.89,52.39	66.76,47.91	65.42,44.80	63.75,44.08
click Stormvine##202748+
|tip Gather Stormvine along the path.
|tip They share a spawn with Azshara's Veil.
collect Stormvine##52984 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Twilight Jasmine",{
author="support@zygorguides.com",
description="Twilight Jasmine can be gathered from Twilight Highlands.",
condition_end=function() return skill('Herbalism') >= 525 end,
},[[
step
You need 525 Herbalism to gather Twilight Jasmine.
Click Here To Level Your Herbalism |confirm
|only if skill("Herbalism") < 525
step
map Twilight Highlands/0
path follow smart; loop on; ants curved
path	70.79,46.66	69.08,42.90	68.12,37.36	67.99,34.25	67.92,32.12
path	67.98,28.52	69.01,26.70	70.14,26.05	69.62,23.03	68.44,21.98
path	66.26,24.24	65.60,26.84	64.83,30.58	62.91,32.57	63.75,36.84
path	62.36,43.90	63.47,46.58	64.18,50.11	63.88,52.38	63.33,55.10
path	62.69,56.32	61.44,58.61	60.10,60.07	58.70,60.30	56.14,58.93
path	54.70,57.04	54.76,53.59	54.07,51.31	53.21,47.50	51.29,44.32
path	51.47,40.36	52.21,36.53	53.48,33.11	54.42,29.98	55.19,27.59
path	55.40,24.05	56.41,21.03	57.11,18.00	57.43,15.53	58.22,11.89
path	57.02,9.89	54.09,12.97	52.71,17.04	52.38,19.85	51.17,21.97
path	51.54,24.86	50.50,26.23	50.53,29.60	50.07,31.64	48.89,32.38
path	46.86,30.23	45.54,29.06	44.74,31.54	44.95,35.06	44.63,37.16
path	43.74,39.31	43.55,42.11	42.73,43.29	41.06,44.76	39.97,45.87
path	39.00,47.54	37.48,49.88	34.58,48.91	32.66,49.23	31.62,48.98
path	31.19,46.65	30.79,42.28	30.76,39.79	29.82,39.80	27.86,37.98
path	26.51,39.06	27.74,40.33	29.17,44.01	29.32,47.45	29.13,49.65
path	28.34,51.37	26.75,52.65	24.65,53.95	22.32,55.39	20.68,56.92
path	21.03,58.92	23.25,58.85	25.48,57.20	27.80,56.29	30.13,53.99
path	31.60,52.58	33.57,51.83	34.78,52.09	36.74,53.31	39.49,55.28
path	41.57,57.93	42.19,59.81	43.60,62.38	45.70,65.74	48.13,67.86
path	50.42,70.52	52.63,73.92	54.83,76.33	56.65,77.04	58.28,76.00
path	59.09,72.74	59.99,70.03	60.77,66.67	61.81,64.63	63.20,61.86
path	65.59,59.13	67.64,56.58
click Twilight Jasmine##202751+
|tip Gather Twilight Jasmine along the path.
collect Twilight Jasmine##52987 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Whiptail",{
author="support@zygorguides.com",
description="Whiptail can be gathered from Uldum.",
condition_end=function() return skill('Herbalism') >= 500 end,
},[[
step
You need 500 Herbalism to gather Whiptail.
Click Here To Level Your Herbalism |confirm
|only if skill("Herbalism") < 500
step
map Uldum/0
path follow smart; loop on; ants curved; dist 60
path	58.42,31.33	56.23,22.66	57.81,14.55	61.51,14.04	57.13,44.73
path	60.51,58.32	69.82,76.52	65.93,75.92	60.02,83.22	59.00,58.82
path	55.30,45.81	52.01,45.61	50.80,42.51	50.80,36.01
click Whiptail##202752+
|tip Gather Whiptail along the path.
collect Whiptail##52988 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Hypnotic Dust",{
author="support@zygorguides.com",
description="Hypnotic Dust can be gathered from Uncommon item level 272 to 333 items.",
condition_end=function() return skill('Enchanting') >= 425 end,
},[[
step
You can disenchant item level 272-333 Uncommon Items to gain Hypnotic Dust.
|tip These items are typically around equip level 77 to 85
collect Hypnotic Dust##52555 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Lesser Celestial Essence",{
author="support@zygorguides.com",
description="Lesser Celestial Essence can be gathered from Uncommon item level 272 to 333 items.",
condition_end=function() return skill('Enchanting') >= 425 end,
},[[
step
You can disenchant item level 272-333 Uncommon Items to gain Lesser Celestial Essence.
|tip You get more Essence from armor, but it can be obtained from weapons as well.
collect Lesser Celestial Essence##52718 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Greater Celestial Essence",{
author="support@zygorguides.com",
description="Greater Celestial Essence can be gathered from Uncommon item level 300 to 333 items.",
condition_end=function() return skill('Enchanting') >= 425 end,
},[[
step
You can disenchant item level 300-333 Uncommon Items to gain Greater Celestial Essence.
|tip You get more Essence from armor, but it can be obtained from weapons as well.
collect Greater Celestial Essence##52719 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Maelstrom Crystal",{
author="support@zygorguides.com",
description="Maelstrom Crystal can be gathered from Epic item level 318 to 333 items.",
condition_end=function() return skill('Enchanting') >= 525 end,
},[[
step
You can disenchant item level 318-333 Epic Items to gain Maelstrom Crystal.
collect Maelstrom Crystal##52722 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Heavenly Shard",{
author="support@zygorguides.com",
description="Heavenly Shard can be gathered from Rare item level 318 to 333 items.",
condition_end=function() return skill('Enchanting') >= 450 end,
},[[
step
You can disenchant item level 318-333 Rare Items to gain Heavenly Shard.
collect Heavenly Shard##52722 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Farming Guides\\Ashen Pigment",{
author="support@zygorguides.com",
description="Whiptail can be gathered from Uldum.",
condition_end=function() return skill('Inscription') >= 425 end,
},[[
step
You need 425 Inscription to gather Ashen Pigment.
Click Here To Level Your Inscription |confirm
|only if skill("Inscription") < 425
step
Mill 5 Azshara's Veil, 5 Cinderbloom, 5 Heartblossom, 5 Stormvine, 5 Twilight Jasmine, or 5 Whiptail for Pigments.
|tip Twilight Jasmine and Whiptail give the most Pigments, but are often more expensive.
cast Milling##51005
collect Ashen Pigment##61979 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Farming Guides\\Burning Embers",{
author="support@zygorguides.com",
description="Whiptail can be gathered from Uldum.",
condition_end=function() return skill('Inscription') >= 425 end,
},[[
step
You need 425 Inscription to gather Burning Embers.
Click Here To Level Your Inscription |confirm
|only if skill("Inscription") < 425
step
Mill 5 Azshara's Veil, 5 Cinderbloom, 5 Heartblossom, 5 Stormvine, 5 Twilight Jasmine, or 5 Whiptail for Burning Embers.
|tip Twilight Jasmine and Whiptail give the most Burning Embers, but are often more expensive.
cast Milling##51005
collect Burning Embers##61980 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Elementium",{
author="support@zygorguides.com",
description="Elementium can be gathered from Twilight Highlands.",
condition_end=function() return skill('Mining') >= 475 end,
},[[
step
You need 475 Mining to gather Elementium.
Click Here To Level Your Mining |confirm
|only if skill("Mining") < 475
step
map Twilight Highlands/0
path follow smart; loop on; ants curved
path	67.12,53.71	66.14,50.02	65.32,47.07	63.19,43.30	61.37,40.30
path	57.72,38.31	54.89,37.76	52.17,40.03	50.30,42.97	45.84,49.71
path	43.99,52.61	42.07,54.66	39.00,59.98	38.30,62.37	38.09,66.30
path	38.80,69.49	40.30,74.96	42.18,76.70	44.22,77.22	45.48,79.26
path	46.79,81.59	49.33,82.52	51.97,81.92	54.74,81.61	57.05,79.84
path	59.27,77.24	59.82,73.45	60.56,71.34	62.55,68.61	65.27,68.74
path	66.76,71.13	68.14,74.02	67.67,77.62	65.97,80.72	63.98,83.07
path	61.10,85.08	58.48,86.62	55.40,86.44	52.38,87.05	49.45,86.26
path	46.20,85.56	43.32,86.32	40.64,87.78	37.90,88.35	36.61,86.84
path	36.05,84.16	34.20,82.17	32.33,79.21	30.43,73.67	29.60,69.58
path	31.49,67.23	34.04,65.18	35.81,62.68	37.65,59.14	38.56,55.60
path	38.27,49.23	37.53,43.75	37.42,39.31	39.60,35.31	41.42,31.65
path	41.88,28.18	40.70,25.49	39.36,22.58	40.81,20.45	43.38,20.38
path	47.97,20.48	51.88,22.44	55.55,24.46	58.41,26.99	61.48,30.78
path	64.76,34.88	67.50,38.35	68.75,42.37	69.74,47.06	71.15,50.40
click Elementium Vein##202738+
click Rich Elementium Vein##202741+
|tip Gather Elementium along the path.
collect Elementium Ore##52185 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Obsidium",{
author="support@zygorguides.com",
description="Obsidium can be gathered from Mount Hyjal.",
condition_end=function() return skill('Mining') >= 450 end,
},[[
step
You need 450 Mining to gather Obsidium.
Click Here To Level Your Mining |confirm |loadguide "Profession Guides\\Mining\\Mining (1-525)"
|only if skill("Mining") < 450
step
map Mount Hyjal/0
path follow smart; loop on; ants curved; dist 60
path	68.25,23.92	59.27,31.64	57.02,38.93	57.92,17.54	51.54,16.91
path	52.67,35.51	48.76,36.55	44.01,24.52	39.85,32.52	36.53,21.72
path	32.31,25.26	34.68,36.93	43.54,42.61	36.21,44.91	25.30,37.84
path	24.13,31.91	11.87,31.61	14.33,47.06	19.03,58.53	25.60,62.06
path	31.94,46.76	33.14,65.28	36.97,53.51	42.35,55.91	33.84,65.04
path	31.36,76.55	33.81,98.24	57.12,80.93	59.24,84.55	59.82,77.85
path	55.88,74.71	59.83,71.63	49.11,51.62	61.91,60.51	67.11,53.52
path	74.39,58.83	71.96,68.51	77.33,63.21	83.03,64.23	89.92,49.81
path	80.94,51.84	77.55,59.55
click Obsidium Deposit##202736+
click Rich Obsidium Deposit##202739+
|tip Gather Obsidium along the path.
collect Obsidium Ore##53038 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Pyrite",{
author="support@zygorguides.com",
description="Pyrite can be gathered from Uldum.",
condition_end=function() return skill('Mining') >= 525 end,
},[[
step
You need 525 Mining to gather Pyrite.
Click Here To Level Your Mining |confirm
|only if skill("Mining") < 525
step
map Uldum/0
path follow smart; loop on; ants curved
path	56.86,12.78	54.97,12.91	53.07,12.92	50.43,12.68	49.30,12.15
path	47.71,10.28	46.16,8.31	44.09,7.57	41.61,7.76	39.70,9.33
path	39.95,10.62	41.79,13.78	40.84,15.40	39.40,16.86	38.27,18.67
path	35.87,17.32	33.40,14.72	32.03,13.94	30.76,15.21	30.34,17.27
path	31.13,20.39	31.91,23.31	31.65,26.44	30.89,28.73	29.45,32.01
path	28.80,34.40	28.52,36.72	28.04,39.92	27.38,43.54	26.56,46.54
path	25.41,49.01	23.28,51.15	20.81,53.14	18.60,55.58	17.41,57.24
path	16.15,58.95	15.84,61.02	17.62,62.94	20.17,64.10	22.49,64.26
path	24.03,63.86	26.77,61.47	28.59,59.39	30.98,56.52	33.93,53.95
path	37.25,51.16	39.09,50.02	40.56,50.79	39.41,53.93	38.94,56.75
path	38.52,59.24	38.50,62.47	39.31,64.69	41.01,65.50	43.18,66.16
path	45.86,66.26	48.99,65.26	51.88,62.72	53.94,60.09	56.31,57.10
path	57.53,59.17	57.99,62.49	60.00,62.92	62.73,62.72	65.45,60.59
path	67.20,60.76	69.19,62.16	70.45,64.64	71.28,67.82	72.01,70.64
path	72.95,72.90	74.33,72.01	76.72,68.83	78.55,67.13	80.15,65.55
path	81.75,63.19	81.58,60.80	80.98,59.23	81.29,55.02	81.97,51.35
path	81.36,48.60	80.24,46.39	78.92,45.21	77.26,43.91	75.86,42.46
path	74.21,41.32	72.17,39.38	70.90,37.35	69.60,35.47	69.19,33.01
path	69.21,29.97	69.24,26.94	69.11,23.70	68.85,20.69	68.10,18.82
path	67.38,16.97	66.29,15.85	64.63,15.09	62.95,14.12	61.62,14.89
path	60.14,13.67
click Pyrite Deposit##202737+
click Rich Pyrite Deposit##202740+
|tip Gather Pyrite along the path.
|tip Pyrite Deposits are rare and you may need to mine from other nodes to get it to spawn.
collect Pyrite Ore##52183 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Carnelian",{
author="support@zygorguides.com",
description="Carnelian can be prospected from ore.",
condition_end=function() return skill('Jewelcrafting') >= 450 end,
},[[
step
You need 450 Jewelcrafting to prospect Obsidium Ore, and 475 to prospect Elementium.
Click Here To Level Your Jewelcrafting |confirm
|only if skill("Jewelcrafting") < 450
step
Prospect 5 Obsidium Ore or 5 Elementium Ore for a chance at Carnelian.
|tip Elementium Ore gives the most Rare gems, but is often more expensive.
cast Prospecting##31252
collect Carnelian##61980 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Nightstone",{
author="support@zygorguides.com",
description="Nightstone can be prospected from ore.",
condition_end=function() return skill('Jewelcrafting') >= 450 end,
},[[
step
You need 450 Jewelcrafting to prospect Obsidium Ore, and 475 to prospect Elementium.
Click Here To Level Your Jewelcrafting |confirm
|only if skill("Jewelcrafting") < 450
step
Prospect 5 Obsidium Ore or 5 Elementium Ore for a chance at Nightstone.
|tip Elementium Ore gives the most Rare gems, but is often more expensive.
cast Prospecting##31252
collect Nightstone##52180 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Hessonite",{
author="support@zygorguides.com",
description="Hessonite can be prospected from ore.",
condition_end=function() return skill('Jewelcrafting') >= 450 end,
},[[
step
You need 450 Jewelcrafting to prospect Obsidium Ore, and 475 to prospect Elementium.
Click Here To Level Your Jewelcrafting |confirm
|only if skill("Jewelcrafting") < 450
step
Prospect 5 Obsidium Ore or 5 Elementium Ore for a chance at Hessonite.
|tip Elementium Ore gives the most Rare gems, but is often more expensive.
cast Prospecting##31252
collect Hessonite##52181 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Zephyrite",{
author="support@zygorguides.com",
description="Zephyrite can be prospected from ore.",
condition_end=function() return skill('Jewelcrafting') >= 450 end,
},[[
step
You need 450 Jewelcrafting to prospect Obsidium Ore, and 475 to prospect Elementium.
Click Here To Level Your Jewelcrafting |confirm
|only if skill("Jewelcrafting") < 450
step
Prospect 5 Obsidium Ore or 5 Elementium Ore for Zephyrite.
|tip Elementium Ore gives the most Rare gems, but is often more expensive.
cast Prospecting##31252
collect Zephyrite##52178 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Alicite",{
author="support@zygorguides.com",
description="Zephyrite can be prospected from ore.",
condition_end=function() return skill('Jewelcrafting') >= 450 end,
},[[
step
You need 450 Jewelcrafting to prospect Obsidium Ore, and 475 to prospect Elementium.
Click Here To Level Your Jewelcrafting |confirm
|only if skill("Jewelcrafting") < 450
step
Prospect 5 Obsidium Ore or 5 Elementium Ore for Alicite.
|tip Elementium Ore gives the most Rare gems, but is often more expensive.
cast Prospecting##31252
collect Alicite##52179 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Jasper",{
author="support@zygorguides.com",
description="Jasper can be prospected from ore.",
condition_end=function() return skill('Jewelcrafting') >= 450 end,
},[[
step
You need 450 Jewelcrafting to prospect Obsidium Ore, and 475 to prospect Elementium.
Click Here To Level Your Jewelcrafting |confirm
|only if skill("Jewelcrafting") < 450
step
Prospect 5 Obsidium Ore or 5 Elementium Ore for Jasper.
|tip Elementium Ore gives the most Rare gems, but is often more expensive.
cast Prospecting##31252
collect Jasper##52182 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Inferno Ruby",{
author="support@zygorguides.com",
description="Inferno Ruby can be prospected from ore.",
condition_end=function() return skill('Jewelcrafting') >= 450 end,
},[[
step
You need 450 Jewelcrafting to prospect Obsidium Ore, and 475 to prospect Elementium.
Click Here To Level Your Jewelcrafting |confirm
|only if skill("Jewelcrafting") < 450
step
Prospect 5 Obsidium Ore or 5 Elementium Ore for Inferno Ruby.
|tip Elementium Ore gives the most Rare gems, but is often more expensive.
cast Prospecting##31252
collect Inferno Ruby##52190 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Dream Emerald",{
author="support@zygorguides.com",
description="Dream Emerald can be prospected from ore.",
condition_end=function() return skill('Jewelcrafting') >= 450 end,
},[[
step
You need 450 Jewelcrafting to prospect Obsidium Ore, and 475 to prospect Elementium.
Click Here To Level Your Jewelcrafting |confirm
|only if skill("Jewelcrafting") < 450
step
Prospect 5 Obsidium Ore or 5 Elementium Ore for Dream Emerald.
|tip Elementium Ore gives the most Rare gems, but is often more expensive.
cast Prospecting##31252
collect Dream Emerald##52192 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Demonseye",{
author="support@zygorguides.com",
description="Demonseye can be prospected from ore.",
condition_end=function() return skill('Jewelcrafting') >= 450 end,
},[[
step
You need 450 Jewelcrafting to prospect Obsidium Ore, and 475 to prospect Elementium.
Click Here To Level Your Jewelcrafting |confirm
|only if skill("Jewelcrafting") < 450
step
Prospect 5 Obsidium Ore or 5 Elementium Ore for Demonseye.
|tip Elementium Ore gives the most Rare gems, but is often more expensive.
cast Prospecting##31252
collect Demonseye##52194 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Amberjewel",{
author="support@zygorguides.com",
description="Amberjewel can be prospected from ore.",
condition_end=function() return skill('Jewelcrafting') >= 450 end,
},[[
step
You need 450 Jewelcrafting to prospect Obsidium Ore, and 475 to prospect Elementium.
Click Here To Level Your Jewelcrafting |confirm
|only if skill("Jewelcrafting") < 450
step
Prospect 5 Obsidium Ore or 5 Elementium Ore for Amberjewel.
|tip Elementium Ore gives the most Rare gems, but is often more expensive.
cast Prospecting##31252
collect Amberjewel##52195 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Ocean Sapphire",{
author="support@zygorguides.com",
description="Ocean Sapphire can be prospected from ore.",
condition_end=function() return skill('Jewelcrafting') >= 450 end,
},[[
step
You need 450 Jewelcrafting to prospect Obsidium Ore, and 475 to prospect Elementium.
Click Here To Level Your Jewelcrafting |confirm
|only if skill("Jewelcrafting") < 450
step
Prospect 5 Obsidium Ore or 5 Elementium Ore for Ocean Sapphire.
|tip Elementium Ore gives the most Rare gems, but is often more expensive.
cast Prospecting##31252
collect Ocean Sapphire##52191 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Ember Topaz",{
author="support@zygorguides.com",
description="Ember Topaz can be prospected from ore.",
condition_end=function() return skill('Jewelcrafting') >= 450 end,
},[[
step
You need 450 Jewelcrafting to prospect Obsidium Ore, and 475 to prospect Elementium.
Click Here To Level Your Jewelcrafting |confirm
|only if skill("Jewelcrafting") < 450
step
Prospect 5 Obsidium Ore or 5 Elementium Ore for Ember Topaz.
|tip Elementium Ore gives the most Rare gems, but is often more expensive.
cast Prospecting##31252
collect Ember Topaz##52191 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Albino Cavefish",{
author="support@zygorguides.com",
description="Albino Cavefish can be fished from Deepholm.",
condition_end=function() return skill('Fishing') >= 450 end,
},[[
step
label "albino_route_1"
Fish in any Albino Cavefish Schools you find |cast Fishing##131474
Follow the path, fishing at each pool |goto Deepholm/0 73.8,32.1 < 20 |noway |c |or |next "albino_route_2"
map Deepholm
path follow smart; loop off; ants curved; dist 20
path	69.9,41.9	70.5,45.6	71.1,48.8
path	73.9,50.9	76.5,52.7	77.5,49.1
path	77.4,44.0	74.2,42.5	76.0,39.7
path	75.7,35.8	73.8,32.1
collect Albino Cavefish##53065 |n
'|confirm
step
label "albino_route_2"
Fish in any Albino Cavefish Schools you find |cast Fishing##131474
Follow the path, fishing at each pool |goto Deepholm/0 69.9,41.9 < 20 |noway |c |or |next "albino_route_1"
map Deepholm
path follow smart; loop off; ants curved; dist 20
path	73.8,32.1	75.7,35.8	76.0,39.7
path	74.2,42.5	77.4,44.0	77.5,49.1
path	76.5,52.7	73.9,50.9	71.1,48.8
path	70.5,45.6	69.9,41.9
collect Albino Cavefish##53065 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Algaefin Rockfish",{
author="support@zygorguides.com",
description="Algaefin Rockfish can be fished from open coastal water.",
condition_end=function() return skill('Fishing') >= 450 end,
},[[
step
Fish in open coastal water in any Cataclysm Zone |cast Fishing##131474
collect Algaefin Rockfish##53071 |n |goto Twilight Highlands/0 73.8,43.9
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Striped Lurker",{
author="support@zygorguides.com",
description="Striped Lurker can be fished from open water.",
condition_end=function() return skill('Fishing') >= 450 end,
},[[
step
Fish in open water in any Cataclysm Zone |cast Fishing##131474
collect Striped Lurker##53067 |n |goto Twilight Highlands/0 65.8,43.3
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Blackbelly Mudfish",{
author="support@zygorguides.com",
description="Blackbelly Mudfish can be fished from schools in Uldum.",
condition_end=function() return skill('Fishing') >= 450 end,
},[[
step
Fish in any Blackbelly Mudfish Schools you find |cast Fishing##131474
map Uldum/0
path follow smart; loop on; ants curved; dist 60
path	58.42,31.33	56.23,22.66	57.81,14.55	61.51,14.04	57.13,44.73
path	60.51,58.32	69.82,76.52	65.93,75.92	60.02,83.22	59.00,58.82
path	55.30,45.81	52.01,45.61	50.80,42.51	50.80,36.01
collect Blackbelly Mudfish##53065 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Sharptooth",{
author="support@zygorguides.com",
description="Sharptooth can be fished from open water.",
condition_end=function() return skill('Fishing') >= 450 end,
},[[
step
Fish in open water in any Cataclysm Zone |cast Fishing##131474
collect Sharptooth##53062 |n |goto Twilight Highlands/0 65.8,43.3
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Mountain Trout",{
author="support@zygorguides.com",
description="Mountain Trout can be fished from Hyjal.",
condition_end=function() return skill('Fishing') >= 450 end,
},[[
step
label "mountain_route_1"
Fish in any Mountain Trout Schools you find |cast Fishing##131474
Follow the path, fishing at each pool |goto Mount Hyjal/0 61.12,24.00 < 20 |noway |c |or |next "mountain_route_2"
map Mount Hyjal/0
path follow smart; loop on; ants straight; dist 30
path	62.62,26.69	61.67,26.75	60.12,28.16	59.51,24.86	61.12,24.00
collect Mountain Trout##53063 |n
'|confirm
step
label "mountain_route_2"
Fish in any Mountain Trout Schools you find |cast Fishing##131474
Follow the path, fishing at each pool |goto Mount Hyjal/0 52.33,27.50 < 20 |noway |c |or |next "mountain_route_1"
map Mount Hyjal/0
path follow smart; loop on; ants straight; dist 30
path	51.57,23.02	49.23,23.17	49.00,24.93	45.85,23.60	42.05,24.89
path	39.64,27.28	40.26,31.18	43.42,30.73	47.24,32.58	50.29,30.17
path	52.33,27.50
collect Mountain Trout##53063 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Lavascale Catfish",{
author="support@zygorguides.com",
description="Lavascale Catfish can be fished from open water in Uldum or Deepholm.",
condition_end=function() return skill('Fishing') >= 450 end,
},[[
step
Fish in open water in Uldum or Deepholm |cast Fishing##131474
collect Lavascale Catfish##53068 |n |goto Uldum/0 54.36,37.70
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Fathom Eel",{
author="support@zygorguides.com",
description="Fathom Eel can be fished from Uldum.",
condition_end=function() return skill('Fishing') >= 450 end,
},[[
step
Fish in any Fathom Eel Swarms you find |cast Fishing##131474
map Uldum/0
path follow smart; loop on; ants straight; dist 30
path	14.98,62.69	16.65,65.04	18.70,65.74	21.72,65.75	23.79,67.55
path	26.37,68.29	28.52,67.39	30.77,69.84	34.05,70.91	36.86,72.71
path	40.14,73.90	42.28,77.19	46.05,88.59	48.67,89.92	53.31,88.13
path	58.79,86.34	61.35,84.35	63.22,81.71	65.67,79.90	68.06,78.96
path	71.42,78.84	74.49,76.23	81.13,67.65	85.27,61.05	85.55,56.82
path	86.37,50.47	83.43,55.21
collect Fathom Eel##53070 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Deepsea Sagefish",{
author="support@zygorguides.com",
description="Deepsea Sagefish can be fished from schools in Twilight Highlands",
condition_end=function() return skill('Fishing') >= 450 end,
},[[
step
Fish in any Deepsea Sagefish Schools you find |cast Fishing##131474
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	59.05,90.46	62.07,90.67	65.57,88.09	67.66,85.17	71.69,81.21
path	72.85,75.18	   78.19,79.14	82.00,82.42	83.09,77.03	82.21,72.22
path	78.58,70.89	78.88,64.97	76.53,60.42	73.84,61.94	70.49,60.67
path	68.73,58.31	70.99,55.56	72.58,57.34	76.62,57.12	78.70,49.06
path	75.92,47.25	72.91,41.72	72.02,35.75
collect Deepsea Sagefish##53070 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Highland Guppy",{
author="support@zygorguides.com",
description="Highland Guppy can be fished from schools in Twilight Highlands",
condition_end=function() return skill('Fishing') >= 450 end,
},[[
step
Fish in any Highland Guppy Schools you find |cast Fishing##131474
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	59.05,90.46	62.07,90.67	65.57,88.09	67.66,85.17	71.69,81.21
path	72.85,75.18	   78.19,79.14	82.00,82.42	83.09,77.03	82.21,72.22
path	78.58,70.89	78.88,64.97	76.53,60.42	73.84,61.94	70.49,60.67
path	68.73,58.31	70.99,55.56	72.58,57.34	76.62,57.12	78.70,49.06
path	75.92,47.25	72.91,41.72	72.02,35.75
collect Highland Guppy##53064 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Giant Turtle Tongue",{
author="support@zygorguides.com",
description="Giant Turtle Tongue can be farmed in Kelp'thar Forest",
},[[
step
kill Speckled Sea Turtle##40223+
collect Giant Turtle Tongue##62781 |n |goto Kelp'thar Forest/0 50.94,41.57
You can find more here:
[54.47,50.52]
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Snake Eye",{
author="support@zygorguides.com",
description="Snake Eye can be farmed in Kelp'thar Forest",
},[[
step
kill Brinescale Serpent##39948+
collect Snake Eye##62780 |n |goto Kelp'thar Forest/0 56.28,37.89
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Crocolisk Tail",{
author="support@zygorguides.com",
description="Crocolisk Tail can be farmed in Uldum",
},[[
step
map Uldum/0
path follow smart; loop on; ants straight; dist 30
path    54.61,46.14    56.17,50.11    57.47,51.67    57.87,54.07    58.63,56.98
path    59.04,60.18    60.49,60.70    60.27,57.55    59.86,55.26    59.19,52.69
path    58.55,51.06    57.82,50.05    57.67,47.17    57.21,45.34    55.83,44.88
Kill Crocolisk along the path
collect Crocolisk Tail##62784 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Dragon Flank",{
author="support@zygorguides.com",
description="Dragon Flank can be farmed in Twilight Highlands",
},[[
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	69.97,74.75	68.58,72.58	65.91,71.20	63.42,71.61	61.66,74.66
path	61.10,78.40	61.52,81.41	63.15,81.55	65.03,80.87	67.27,77.49
Kill Dragonkin enemies along the path
collect Dragon Flank##62782 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Basilisk Liver",{
author="support@zygorguides.com",
description="Basilisk Liver can be farmed in Deepholm",
},[[
step
map Deepholm/0
path follow smart; loop on; ants straight; dist 30
path	43.47,28.20	45.05,25.12	46.45,21.89	41.34,13.37	38.12,14.37
path	35.97,21.65	36.52,24.39	37.38,27.47	37.61,31.33	41.17,29.98
Kill Basilisk enemies along the path
collect Basilisk Liver##62783 |n
'|confirm
]])
