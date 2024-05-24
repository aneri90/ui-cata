local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ProfessionsA") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Alchemy (1-525)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Alchemy') > 0 end,
description="This guide will walk you through leveling your Alchemy skill from 300-375.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
Train Apprentice Alchemy |skillmax Alchemy,75 |goto Stormwind City/0 55.66,86.09
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Classic-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Alchemy |confirm |next "Begin_Profession_Leveling_Classic" |or
'|complete skill("Alchemy") >= 300 |or |next "Begin_Profession_Leveling_Classic"
stickystart "Collect_Silverleaf_Total"
stickystart "Collect_Briarthorn_Total"
stickystart "Collect_Bruiseweed_Total"
stickystart "Collect_Mageroyal_Total"
stickystart "Collect_Stranglekelp_Total"
stickystart "Collect_Liferoot_Total"
stickystart "Collect_Kingsblood_Total"
stickystart "Collect_Goldthorn_Total"
stickystart "Collect_Wild_Steelbloom_Total"
stickystart "Collect_Sungrass_Total"
stickystart "Collect_Khadgar's_Whisker_Total"
stickystart "Collect_Blindweed_Total"
stickystart "Collect_Golden_Sansam_Total"
stickystart "Collect_Mountain_Silversage_Total"
step
map Elwynn Forest/0
path follow smart; loop on; ants curved; dist 20
path	35.16,58.15	35.80,61.90	34.96,66.91	35.08,70.72	34.97,74.55
path	31.26,76.29	29.39,72.28	26.34,77.16	26.78,84.53	26.01,88.87
path	28.95,85.90	31.32,84.53	34.00,86.31	35.63,87.61	40.33,90.30
path	42.44,85.05	42.33,79.53	44.78,75.63	57.19,75.30	61.71,78.02
path	64.64,80.21	66.96,82.28	71.53,82.34	74.86,79.96	85.15,82.86
path	88.50,76.38	87.13,70.90	86.64,64.81	83.70,60.88	78.23,58.27
path	74.68,59.68	70.59,61.28	67.25,64.47	63.72,65.35	60.60,62.03
path	56.21,61.31	51.67,60.44	49.08,59.49	44.65,55.81	42.02,54.40
path	39.16,55.56
click Peacebloom##1618+
|tip They look like small white flowers on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 65 Peacebloom##2447 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Alchemy") >= 60 |or
step
label "Collect_Silverleaf_Total"
map Elwynn Forest/0
path follow smart; loop on; ants curved; dist 20
path	35.16,58.15	35.80,61.90	34.96,66.91	35.08,70.72	34.97,74.55
path	31.26,76.29	29.39,72.28	26.34,77.16	26.78,84.53	26.01,88.87
path	28.95,85.90	31.32,84.53	34.00,86.31	35.63,87.61	40.33,90.30
path	42.44,85.05	42.33,79.53	44.78,75.63	57.19,75.30	61.71,78.02
path	64.64,80.21	66.96,82.28	71.53,82.34	74.86,79.96	85.15,82.86
path	88.50,76.38	87.13,70.90	86.64,64.81	83.70,60.88	78.23,58.27
path	74.68,59.68	70.59,61.28	67.25,64.47	63.72,65.35	60.60,62.03
path	56.21,61.31	51.67,60.44	49.08,59.49	44.65,55.81	42.02,54.40
path	39.16,55.56
click Silverleaf##1617+ |notinsticky
|tip They look like bushy blue and green plants on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 65 Silverleaf##765 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 60 |or
step
label "Collect_Briarthorn_Total"
map Loch Modan/0
path follow smart; loop on; ants straight; dist 30
path	56.98,15.26	61.49,21.17	68.60,23.19	70.65,22.23	72.67,25.79
path	77.21,30.71	72.97,37.47	71.59,38.08	67.26,38.34	68.83,40.71
path	73.59,41.67	77.00,42.54	74.86,47.01	74.63,52.50	75.68,64.15
path	75.06,66.38	77.51,66.56	78.64,71.51	76.44,72.20	70.89,71.61
path	68.52,73.74	64.48,71.81	57.98,66.30	61.67,57.11	64.07,54.51
path	69.60,51.49	67.50,48.59	63.83,43.43	65.43,41.83	62.71,39.61
path	61.89,36.89	60.66,33.83	61.31,30.01	55.32,26.14	50.10,21.67
click Briarthorn##1621+ |notinsticky
|tip They look like brown thorns growing out of the ground along the path. |notinsticky
|tip Briarthorn can share a spawn with other herbs in the area, so pick them all. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 100 Briarthorn##2450 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 70 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 140 |or
step
label "Collect_Bruiseweed_Total"
map Stonetalon Mountains/0
path follow smart; loop on; ants straight; dist 30
path	73.00,59.72	66.74,54.82	63.25,56.60	53.01,45.12	52.19,43.22
path	52.78,40.43	49.32,35.40	48.73,32.68	45.84,25.38	41.49,18.24
path	39.73,43.04	37.25,49.59	36.30,51.80	37.78,56.59	58.09,73.47
path	61.22,84.07	63.82,85.60	71.85,83.84	73.87,86.83	74.93,88.92
path	78.14,78.96
click Bruiseweed##1622+ |notinsticky
|tip They look like tall green and purple flowers on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 35 Bruiseweed##2453 |or
|tip Farm them with Herbalism or purchase them from the auction  house. |notinsticky
|tip You will need at least 100 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 140 |or
step
label "Collect_Mageroyal_Total"
map Loch Modan/0
path follow smart; loop on; ants straight; dist 30
path	41.50,13.82	45.48,20.65	47.42,23.92	47.07,28.70	50.19,31.13
path	55.12,27.07	56.72,20.58	58.43,20.04	60.23,24.41	62.23,26.69
path	55.76,35.39	53.76,40.36	58.01,40.64	61.62,44.81	64.15,46.10
path	66.55,47.59	67.58,50.15	66.06,55.14	64.09,57.07	60.35,52.90
path	54.46,52.08	55.15,59.94	54.00,65.69	49.60,61.93	47.74,59.21
path	45.43,55.43	37.73,46.14	39.69,43.10	40.83,33.03
click Mageroyal##1620+ |notinsticky
|tip They look like bushy pink flowers on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 20 Mageroyal##785 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 50 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 155 |or
step
label "Collect_Stranglekelp_Total"
map Wetlands/0
path follow smart; loop on; ants straight; dist 30
path	7.71,72.28	8.64,69.34	10.22,66.09	13.44,62.57	17.65,59.72
path	19.38,57.25	16.89,53.45	5.99,53.34	3.69,53.64	4.32,49.07
path	7.46,44.87	10.27,40.32	11.35,33.11	12.45,27.89	13.62,23.90
path	16.90,21.24	20.12,19.01
click Stranglekelp##2045+ |notinsticky
|tip They look like green vines underwater along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
|tip They are underwater along the path. |notinsticky
|tip Bring Water Walking Potions. |notinsticky
collect 50 Stranglekelp##3820 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 85 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 210 |or
step
label "Collect_Liferoot_Total"
map Wetlands
path follow smart; loop off; dist 20
path	39.88,29.56	42.39,32.16	44.42,36.02	50.85,37.60	53.92,41.52
path	55.96,45.32	59.97,50.83	61.97,56.83	64.42,68.06	63.29,74.88
click Liferoot##2041+ |notinsticky
|tip They look like green roots on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 35 Liferoot##3357 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 150 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 185 |or
'|goto 63.29,74.88 < 20 |noway |c |or
step
map Wetlands
path follow smart; loop off; dist 20
path	63.29,74.88	64.42,68.06	61.97,56.83	59.97,50.83	55.96,45.32
path	53.92,41.52	50.85,37.60	44.42,36.02	42.39,32.16	39.88,29.56
click Liferoot##2041+ |notinsticky
|tip They look like green roots on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 35 Liferoot##3357 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 150 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 185 |or
'|goto 39.88,29.56 < 20 |noway |c |next "Collect_Liferoot_Total" |or
step
label "Collect_Kingsblood_Total"
map Western Plaguelands/0
path follow smart; loop on; ants curved; dist 60
path	31.87,59.33	36.90,57.16	43.53,53.27	45.91,44.70	45.21,35.23
path	49.51,35.12	51.02,47.42	55.22,51.34	61.82,52.02	67.25,44.52
path	63.60,56.06	56.61,60.11	52.61,67.55	46.40,59.23	37.91,62.21
path	33.73,62.71
click Kingsblood##1624+ |notinsticky
|tip They look like bushy purple, pink, and green plants on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 35 Kingsblood##3356 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 125 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 185 |or
step
label "Collect_Goldthorn_Total"
map Northern Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	63.96,65.99	63.05,62.20	64.55,58.27	64.12,55.92	63.70,52.51
path	62.57,49.88	60.62,47.74	61.76,38.56	62.39,32.52	61.21,28.17
path	58.78,27.10	55.91,28.12	53.10,25.81	42.45,23.59	39.65,21.95
path	37.94,21.19	36.23,21.95	33.54,25.55	30.98,30.62	35.70,35.18
path	35.17,41.49	37.05,44.46	40.60,46.24	48.49,45.42	51.70,48.76
path	54.08,48.34	54.17,57.96	55.21,62.17	57.42,61.55	59.86,63.63
path	63.26,66.36	61.63,61.17	59.25,58.85	59.51,51.62
click Goldthorn##2046+ |notinsticky
|tip They look like thorny brown and green plants on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 35 Goldthorn##3821 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 170 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 265 |or
step
label "Collect_Wild_Steelbloom_Total"
map Northern Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	41.90,20.67	37.44,18.90	34.85,19.46	32.34,24.69	30.05,30.56
path	31.98,34.72	35.10,35.48	36.39,37.67	36.22,43.48	39.56,45.08
path	41.94,46.79	43.43,52.34	46.37,51.56	48.08,49.67	48.49,45.14
path	48.80,39.39	47.67,35.55	47.51,32.62	54.93,29.17	59.73,28.40
path	63.25,29.41	63.03,23.00	59.49,21.11	57.08,20.01	54.52,20.03
path	52.60,22.27	51.52,24.23	41.44,25.58
click Wild Steelbloom##1623+ |notinsticky
|tip They look like leafy white and green flowers on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 5 Wild Steelbloom##3355 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 115 Herbalism skill to gather these. |notinsticky
'|complete skill("Alchemy") >= 215 |or
step
label "Collect_Sungrass_Total"
map Searing Gorge/0
path follow smart; loop on; ants curved
path	66.96,42.21	64.77,45.07	62.15,45.87	60.53,49.35	59.31,53.04
path	56.48,61.80	55.17,68.25	49.61,67.64	44.84,70.37	40.79,73.38
path	36.75,73.46	31.44,67.49	31.13,59.44	28.96,55.58	27.38,50.10
path	29.56,44.58	31.72,41.24	35.79,45.59	38.99,42.72	43.55,41.63
path	46.74,42.22	51.97,39.92	57.25,36.61	60.63,34.56	64.32,33.64
path	68.22,35.32
click Sungrass##142142+ |notinsticky
|tip They look like clumps of green and yellow grass on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 65 Sungrass##8838 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 230 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 285 |or
step
label "Collect_Khadgar's_Whisker_Total"
map Western Plaguelands/0
path follow smart; loop on; ants curved; dist 60
path	31.87,59.33	36.90,57.16	43.53,53.27	45.91,44.70	45.21,35.23
path	49.51,35.12	51.02,47.42	55.22,51.34	61.82,52.02	67.25,44.52
path	63.60,56.06	56.61,60.11	52.61,67.55	46.40,59.23	37.91,62.21
path	33.73,62.71
click Khadgar's Whisker##2043+ |notinsticky
|tip They look like clusters of green grass on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 15 Khadgar's Whisker##3358 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 185 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 230 |or
step
label "Collect_Blindweed_Total"
map Feralas/0
path follow smart; loop on; ants straight; dist 30
path	53.38,7.89	51.46,6.46	49.81,5.77	49.72,7.88	49.28,11.08
path	47.71,12.05	47.87,14.71	49.76,14.27	51.85,14.75	53.36,11.89
click Blindweed##142143+ |notinsticky
|tip They look like multi-colored flowers on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 50 Blindweed##8839 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 235 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 285 |or
step
label "Collect_Golden_Sansam_Total"
map Swamp of Sorrows/0
path follow smart; loop on; ants curved; dist 60
path	17.62,52.92	21.60,54.68	30.93,60.71	39.41,56.93	51.73,59.62
path	64.51,67.32	73.31,81.92	82.02,76.03	85.30,62.66	87.62,39.95
path	84.93,31.21	80.12,20.61	66.51,22.72	56.81,31.92	47.01,36.01
path	36.11,39.86	26.93,42.92
click Golden Sansam##176583+ |notinsticky
|tip They look like yellow roots with bushy green tops on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 69 Golden Sansam##13464 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 260 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 330 |or
step
label "Collect_Mountain_Silversage_Total"
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	69.50,80.51	66.73,78.96	62.06,80.45	60.17,83.38	57.90,84.92
path	56.43,85.63	52.59,86.79	50.45,85.64	47.59,86.84	44.06,85.48
path	40.43,83.69	37.58,82.20	36.74,80.02	34.35,78.80	30.60,79.47
path	29.81,78.29	29.45,73.80	29.51,71.95	30.47,70.66	30.12,68.78
path	26.87,68.47	26.22,63.87	24.35,55.86	24.60,51.19	24.66,49.08
path	24.29,47.04	24.87,40.95	26.12,37.25	26.47,32.27	28.16,29.95
path	29.28,30.78	30.53,29.41	29.59,24.96	30.56,20.83	33.11,20.72
path	34.48,21.20	36.41,20.34	38.57,16.60	42.23,16.10	44.74,14.15
path	48.26,13.20	49.78,17.80	51.76,16.54	52.14,13.12	54.40,13.42
path	56.79,14.48	59.79,16.53	62.08,16.53	63.95,19.36	65.85,21.43
path	66.83,23.10	67.79,22.98	68.24,20.16	70.91,20.97	71.45,25.67
path	71.86,28.59	74.60,32.13	74.81,36.14	76.10,40.85	76.77,46.27
path	76.23,50.57	76.85,54.91	75.63,60.70	74.66,64.47	74.30,69.24
path	71.82,70.72	70.92,71.71	71.15,74.12	70.59,75.37	70.92,79.06
click Mountain Silversage##176586+ |notinsticky
|tip They look like frosted green and white plants on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 42 Mountain Silversage##13465 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 280 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 315 |or
step
talk Maria Lumere##1313
|tip Inside the building.
buy 85 Empty Vial##3371 |goto Stormwind City/0 55.89,85.63 |or 3
buy 105 Leaded Vial##3372 |goto Stormwind City/0 55.89,85.63 |or 3
buy 97 Crystal Vial##8925 |goto Stormwind City/0 55.89,85.63 |or 3
'|complete skill("Alchemy") >= 350 |or
stickystart "Collect_Silverleaf_60"
step
label "Begin_Profession_Leveling_Classic"
map Elwynn Forest/0
path follow smart; loop on; ants curved; dist 20
path	35.16,58.15	35.80,61.90	34.96,66.91	35.08,70.72	34.97,74.55
path	31.26,76.29	29.39,72.28	26.34,77.16	26.78,84.53	26.01,88.87
path	28.95,85.90	31.32,84.53	34.00,86.31	35.63,87.61	40.33,90.30
path	42.44,85.05	42.33,79.53	44.78,75.63	57.19,75.30	61.71,78.02
path	64.64,80.21	66.96,82.28	71.53,82.34	74.86,79.96	85.15,82.86
path	88.50,76.38	87.13,70.90	86.64,64.81	83.70,60.88	78.23,58.27
path	74.68,59.68	70.59,61.28	67.25,64.47	63.72,65.35	60.60,62.03
path	56.21,61.31	51.67,60.44	49.08,59.49	44.65,55.81	42.02,54.40
path	39.16,55.56
click Peacebloom##1618+
|tip They look like small white flowers on the ground along the path.
collect 65 Peacebloom##2447 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Alchemy") >= 60 |or
step
label "Collect_Silverleaf_60"
map Elwynn Forest/0
path follow smart; loop on; ants curved; dist 20
path	35.16,58.15	35.80,61.90	34.96,66.91	35.08,70.72	34.97,74.55
path	31.26,76.29	29.39,72.28	26.34,77.16	26.78,84.53	26.01,88.87
path	28.95,85.90	31.32,84.53	34.00,86.31	35.63,87.61	40.33,90.30
path	42.44,85.05	42.33,79.53	44.78,75.63	57.19,75.30	61.71,78.02
path	64.64,80.21	66.96,82.28	71.53,82.34	74.86,79.96	85.15,82.86
path	88.50,76.38	87.13,70.90	86.64,64.81	83.70,60.88	78.23,58.27
path	74.68,59.68	70.59,61.28	67.25,64.47	63.72,65.35	60.60,62.03
path	56.21,61.31	51.67,60.44	49.08,59.49	44.65,55.81	42.02,54.40
path	39.16,55.56
click Silverleaf##1617+ |notinsticky
|tip They look like bushy blue and green plants on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 65 Silverleaf##765 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 60 |or
step
talk Maria Lumere##1313
|tip Inside the building.
buy 65 Empty Vial##3371 |goto Stormwind City/0 55.89,85.63 |or
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
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
Train Journeyman Alchemy |skillmax Alchemy,150 |goto Stormwind City/0 55.66,86.09
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
Train Lesser Healing Potion |learn Lesser Healing Potion##2337 |goto Stormwind City/0 55.66,86.09
step
map Loch Modan/0
path follow smart; loop on; ants straight; dist 30
path	56.98,15.26	61.49,21.17	68.60,23.19	70.65,22.23	72.67,25.79
path	77.21,30.71	72.97,37.47	71.59,38.08	67.26,38.34	68.83,40.71
path	73.59,41.67	77.00,42.54	74.86,47.01	74.63,52.50	75.68,64.15
path	75.06,66.38	77.51,66.56	78.64,71.51	76.44,72.20	70.89,71.61
path	68.52,73.74	64.48,71.81	57.98,66.30	61.67,57.11	64.07,54.51
path	69.60,51.49	67.50,48.59	63.83,43.43	65.43,41.83	62.71,39.61
path	61.89,36.89	60.66,33.83	61.31,30.01	55.32,26.14	50.10,21.67
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
talk Maria Lumere##1313
|tip Inside the building.
buy 35 Leaded Vial##3372 |goto Stormwind City/0 55.89,85.63 |or
'|complete skill("Alchemy") >= 140 |or
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
Train Healing Potion |learn Healing Potion##3447 |goto Stormwind City/0 55.66,86.09
step
create 35 Healing Potion##3447,Alchemy,140
|tip You may need to create more or less of these.
|tip Each additional potion requires 1 Bruiseweed, 1 Briarthorn, and 1 Leaded Vial.
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
Train Expert Alchemy |skillmax Alchemy,225 |goto Stormwind City/0 55.66,86.09
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
Train Lesser Mana Potion |learn Lesser Mana Potion##3173 |goto Stormwind City/0 55.66,86.09
stickystart "Collect_Stranglekelp_155"
step
label "Collect_Mageroyal_155"
map Loch Modan/0
path follow smart; loop on; ants straight; dist 30
path	41.50,13.82	45.48,20.65	47.42,23.92	47.07,28.70	50.19,31.13
path	55.12,27.07	56.72,20.58	58.43,20.04	60.23,24.41	62.23,26.69
path	55.76,35.39	53.76,40.36	58.01,40.64	61.62,44.81	64.15,46.10
path	66.55,47.59	67.58,50.15	66.06,55.14	64.09,57.07	60.35,52.90
path	54.46,52.08	55.15,59.94	54.00,65.69	49.60,61.93	47.74,59.21
path	45.43,55.43	37.73,46.14	39.69,43.10	40.83,33.03
click Mageroyal##1620+
|tip They look like bushy pink flowers on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 20 Mageroyal##785 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 50 Herbalism skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Alchemy") >= 155 |or
step
label "Collect_Stranglekelp_155"
map Wetlands/0
path follow smart; loop on; ants straight; dist 30
path	7.71,72.28	8.64,69.34	10.22,66.09	13.44,62.57	17.65,59.72
path	19.38,57.25	16.89,53.45	5.99,53.34	3.69,53.64	4.32,49.07
path	7.46,44.87	10.27,40.32	11.35,33.11	12.45,27.89	13.62,23.90
path	16.90,21.24	20.12,19.01
click Stranglekelp##2045+ |notinsticky
|tip They look like green vines underwater along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
|tip They are underwater along the path. |notinsticky
|tip Bring Water Walking Potions. |notinsticky
collect 50 Stranglekelp##3820 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 85 Herbalism skill to gather these.
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip Save at least 30 of these; you will need them for future steps. |notinsticky
'|complete skill("Alchemy") >= 155 |or
step
talk Maria Lumere##1313
|tip Inside the building.
buy 20 Empty Vial##3371 |goto Stormwind City/0 55.89,85.63 |or
'|complete skill("Alchemy") >= 155 |or
step
create 20 Lesser Mana Potion##3173,Alchemy,155
|tip You may need to create more or less of these.
|tip Each additional potion requires 1 Mageroyal, 1 Stranglekelp, and 1 Empty Vial.
stickystart "Collect_Kingsblood_185"
step
label "Collect_Liferoot_185"
map Wetlands
path follow smart; loop off; dist 20
path	39.88,29.56	42.39,32.16	44.42,36.02	50.85,37.60	53.92,41.52
path	55.96,45.32	59.97,50.83	61.97,56.83	64.42,68.06	63.29,74.88
click Liferoot##2041+
|tip They look like green roots on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 35 Liferoot##3357 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 150 Herbalism skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Alchemy") >= 185 |or
'|goto 63.29,74.88 < 20 |noway |c |or
step
map Wetlands
path follow smart; loop off; dist 20
path	63.29,74.88	64.42,68.06	61.97,56.83	59.97,50.83	55.96,45.32
path	53.92,41.52	50.85,37.60	44.42,36.02	42.39,32.16	39.88,29.56
click Liferoot##2041+
|tip They look like green roots on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 35 Liferoot##3357 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 150 Herbalism skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Alchemy") >= 185 |or
'|goto 39.88,29.56 < 20 |noway |c |next "Collect_Liferoot_185" |or
step
label "Collect_Kingsblood_185"
map Western Plaguelands/0
path follow smart; loop on; ants curved; dist 60
path	31.87,59.33	36.90,57.16	43.53,53.27	45.91,44.70	45.21,35.23
path	49.51,35.12	51.02,47.42	55.22,51.34	61.82,52.02	67.25,44.52
path	63.60,56.06	56.61,60.11	52.61,67.55	46.40,59.23	37.91,62.21
path	33.73,62.71
click Kingsblood##1624+ |notinsticky
|tip They look like bushy purple, pink, and green plants on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 35 Kingsblood##3356 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 125 Herbalism skill to gather these.
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 185 |or
step
talk Maria Lumere##1313
|tip Inside the building.
buy 35 Leaded Vial##3372 |goto Stormwind City/0 55.89,85.63 |or
'|complete skill("Alchemy") >= 185 |or
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
Train Greater Healing Potion |learn Greater Healing Potion##7181 |goto Stormwind City/0 55.66,86.09
step
create 35 Greater Healing Potion##7181,Alchemy,185
|tip You may need to create more or less of these.
|tip Each additional potion requires 1 Liferoot, 1 Kingsblood, and 1 Leaded Vial.
stickystart "Collect_Stranglekelp_210"
step
label "Collect_Goldthorn_210"
map Northern Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	63.96,65.99	63.05,62.20	64.55,58.27	64.12,55.92	63.70,52.51
path	62.57,49.88	60.62,47.74	61.76,38.56	62.39,32.52	61.21,28.17
path	58.78,27.10	55.91,28.12	53.10,25.81	42.45,23.59	39.65,21.95
path	37.94,21.19	36.23,21.95	33.54,25.55	30.98,30.62	35.70,35.18
path	35.17,41.49	37.05,44.46	40.60,46.24	48.49,45.42	51.70,48.76
path	54.08,48.34	54.17,57.96	55.21,62.17	57.42,61.55	59.86,63.63
path	63.26,66.36	61.63,61.17	59.25,58.85	59.51,51.62
click Goldthorn##2046+
|tip They look like thorny brown and green plants on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 35 Goldthorn##3821 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 170 Herbalism skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 5 of these; you will need them for future steps.
'|complete skill("Alchemy") >= 210 |or
step
label "Collect_Stranglekelp_210"
collect 30 Stranglekelp##3820 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 210 |or
step
talk Maria Lumere##1313
|tip Inside the building.
buy 30 Leaded Vial##3372 |goto Stormwind City/0 55.89,85.63 |or
'|complete skill("Alchemy") >= 210 |or
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
Train Elixir of Agility |learn Elixir of Agility##11449 |goto Stormwind City/0 55.66,86.09
step
create 30 Elixir of Agility##11449,skill Alchemy,210
|tip You may need to create more or less of these.
|tip Each additional elixir requires 1 Stranglekelp, 1 Goldthorn, and 1 Leaded Vial.
stickystart "Collect_Goldthorn_215"
step
map Northern Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	41.90,20.67	37.44,18.90	34.85,19.46	32.34,24.69	30.05,30.56
path	31.98,34.72	35.10,35.48	36.39,37.67	36.22,43.48	39.56,45.08
path	41.94,46.79	43.43,52.34	46.37,51.56	48.08,49.67	48.49,45.14
path	48.80,39.39	47.67,35.55	47.51,32.62	54.93,29.17	59.73,28.40
path	63.25,29.41	63.03,23.00	59.49,21.11	57.08,20.01	54.52,20.03
path	52.60,22.27	51.52,24.23	41.44,25.58
click Wild Steelbloom##1623+
|tip They look like leafy white and green flowers on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 5 Wild Steelbloom##3355 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 115 Herbalism skill to gather these.
'|complete skill("Alchemy") >= 215 |or
step
label "Collect_Goldthorn_215"
collect 5 Goldthorn##3821 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 215 |or
step
talk Maria Lumere##1313
|tip Inside the building.
buy 5 Leaded Vial##3372 |goto Stormwind City/0 55.89,85.63 |or
'|complete skill("Alchemy") >= 215 |or
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
Train Elixir of Greater Defense |learn Elixir of Greater Defense##11450 |goto Stormwind City/0 55.66,86.09
step
create 5 Elixir of Greater Defense##11450,Alchemy,215
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
Train Artisan Alchemy |skillmax Alchemy,300 |goto Stormwind City/0 55.66,86.09
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
Train Superior Healing Potion |learn Superior Healing Potion##11457 |goto Stormwind City/0 55.66,86.09
stickystart "Collect_Khadgar's_Whisker_230"
step
map Searing Gorge/0
path follow smart; loop on; ants curved
path	66.96,42.21	64.77,45.07	62.15,45.87	60.53,49.35	59.31,53.04
path	56.48,61.80	55.17,68.25	49.61,67.64	44.84,70.37	40.79,73.38
path	36.75,73.46	31.44,67.49	31.13,59.44	28.96,55.58	27.38,50.10
path	29.56,44.58	31.72,41.24	35.79,45.59	38.99,42.72	43.55,41.63
path	46.74,42.22	51.97,39.92	57.25,36.61	60.63,34.56	64.32,33.64
path	68.22,35.32
click Sungrass##142142+
|tip They look like clumps of green and yellow grass on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 65 Sungrass##8838 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 230 Herbalism skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 50 of these; you will need them for future steps.
'|complete skill("Alchemy") >= 230 |or
step
label "Collect_Khadgar's_Whisker_230"
map Western Plaguelands/0
path follow smart; loop on; ants curved; dist 60
path	31.87,59.33	36.90,57.16	43.53,53.27	45.91,44.70	45.21,35.23
path	49.51,35.12	51.02,47.42	55.22,51.34	61.82,52.02	67.25,44.52
path	63.60,56.06	56.61,60.11	52.61,67.55	46.40,59.23	37.91,62.21
path	33.73,62.71
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 185 Herbalism skill to gather these.
collect 15 Khadgar's Whisker##3358 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 230 |or
step
talk Maria Lumere##1313
|tip Inside the building.
buy 15 Crystal Vial##8925 |goto Stormwind City/0 55.89,85.63 |or
'|complete skill("Alchemy") >= 230 |or
step
create 15 Superior Healing Potion##11457,Alchemy,230
step
talk Maria Lumere##1313
|tip Inside the building.
buy 45 Crystal Vial##8925 |goto Stormwind City/0 55.89,85.63 |or
'|complete skill("Alchemy") >= 265 |or
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
Train Elixir of Detect Undead |learn Elixir of Detect Undead##11460 |goto Stormwind City/0 55.66,86.09
step
create 45 Elixir of Detect Undead##11460,Alchemy,265
|tip You may need to create more or less of these.
|tip Each additional elixir requires 1 Purple Lotus and 1 Crystal Vial.
stickystart "Collect_Sungrass_285"
step
map Feralas/0
path follow smart; loop on; ants straight; dist 30
path	53.38,7.89	51.46,6.46	49.81,5.77	49.72,7.88	49.28,11.08
path	47.71,12.05	47.87,14.71	49.76,14.27	51.85,14.75	53.36,11.89
click Blindweed##142143+
|tip They look like multi-colored flowers on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 50 Blindweed##8839 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 235 Herbalism skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Alchemy") >= 285 |or
step
label "Collect_Sungrass_285"
collect 50 Sungrass##8838 |or
|tip You collected these in a previous step.
|tip You may need more or less than the indicated amount.
'|complete skill("Alchemy") >= 285 |or
step
talk Maria Lumere##1313
|tip Inside the building.
buy 25 Crystal Vial##8925 |goto Stormwind City/0 55.89,85.63 |or
'|complete skill("Alchemy") >= 285 |or
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
Train Superior Mana Potion |learn Superior Mana Potion##17553 |goto Stormwind City/0 55.66,86.09
step
create 25 Superior Mana Potion##17553,Alchemy,285
|tip You may need to create more or less of these.
|tip Each additional potion requires 2 Sungrass, 2 Blindweed, and 1 Crystal Vial.
stickystart "Collect_Mountain_Silversage_300"
step
map Swamp of Sorrows/0
path follow smart; loop on; ants curved; dist 60
path	17.62,52.92	21.60,54.68	30.93,60.71	39.41,56.93	51.73,59.62
path	64.51,67.32	73.31,81.92	82.02,76.03	85.30,62.66	87.62,39.95
path	84.93,31.21	80.12,20.61	66.51,22.72	56.81,31.92	47.01,36.01
path	36.11,39.86	26.93,42.92
click Golden Sansam##176583+
|tip They look like yellow roots with bushy green tops on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 69 Golden Sansam##13464 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 260 Herbalism skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 25 of these, you will need them in Outland.
'|complete skill("Alchemy") >= 300 |or
step
label "Collect_Mountain_Silversage_300"
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	69.50,80.51	66.73,78.96	62.06,80.45	60.17,83.38	57.90,84.92
path	56.43,85.63	52.59,86.79	50.45,85.64	47.59,86.84	44.06,85.48
path	40.43,83.69	37.58,82.20	36.74,80.02	34.35,78.80	30.60,79.47
path	29.81,78.29	29.45,73.80	29.51,71.95	30.47,70.66	30.12,68.78
path	26.87,68.47	26.22,63.87	24.35,55.86	24.60,51.19	24.66,49.08
path	24.29,47.04	24.87,40.95	26.12,37.25	26.47,32.27	28.16,29.95
path	29.28,30.78	30.53,29.41	29.59,24.96	30.56,20.83	33.11,20.72
path	34.48,21.20	36.41,20.34	38.57,16.60	42.23,16.10	44.74,14.15
path	48.26,13.20	49.78,17.80	51.76,16.54	52.14,13.12	54.40,13.42
path	56.79,14.48	59.79,16.53	62.08,16.53	63.95,19.36	65.85,21.43
path	66.83,23.10	67.79,22.98	68.24,20.16	70.91,20.97	71.45,25.67
path	71.86,28.59	74.60,32.13	74.81,36.14	76.10,40.85	76.77,46.27
path	76.23,50.57	76.85,54.91	75.63,60.70	74.66,64.47	74.30,69.24
path	71.82,70.72	70.92,71.71	71.15,74.12	70.59,75.37	70.92,79.06
click Mountain Silversage##176586+ |notinsticky
|tip They look like frosted green and white plants on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 42 Mountain Silversage##13465 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 280 Herbalism skill to gather these.
|tip Save at least 20 of these, you will need them in Outland.
'|complete skill("Alchemy") >= 300 |or
step
talk Maria Lumere##1313
|tip Inside the building.
buy 22 Crystal Vial##8925 |goto Stormwind City/0 55.89,85.63 |or
'|complete skill("Alchemy") >= 300 |or
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
Train Major Healing Potion |learn Major Healing Potion##17556 |goto Stormwind City/0 55.66,86.09
step
create 22 Major Healing Potion##17556,Alchemy,300
|tip You may need to create more or less of these.
|tip Each additional potion requires 2 Golden Sansam, 1 Mountain Silversage, and 1 Crystal Vial.
step
Reach Level 58 |ding 58
|tip You must be at least level 58 to train Master professions in Outland.
|tip Use the leveling guides to accomplish this.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Burning Crusade-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Alchemy |confirm |next "Begin_Profession_Leveling_Outland" |or
'|complete skill("Alchemy") >= 350 |or |next "Begin_Profession_Leveling_Outland"
stickystart "Collect_Dreaming_Glory_Total"
stickystart "Collect_Terocone_Total"
stickystart "Collect_Netherbloom_Total"
step
map Terokkar Forest/0
path follow smart; loop on; ants curved
path	31.60,45.71	32.29,42.68	32.86,38.44	32.61,35.72	34.85,34.70
path	36.60,32.54	36.98,30.09	38.61,28.59	39.20,26.76	40.64,25.10
path	41.40,22.16	43.06,19.91	43.81,17.68	43.32,15.01	43.95,12.48
path	45.94,12.75	48.58,14.35	50.45,17.02	49.36,20.09	49.79,22.32
path	50.98,24.83	53.08,25.59	55.63,25.32	58.26,25.33	59.93,23.87
path	61.12,26.59	62.13,28.15	63.46,29.60	65.02,31.32	67.13,31.63
path	69.82,31.74	69.61,35.63	68.73,39.39	69.79,42.02	70.46,45.89
path	70.51,48.71	68.94,53.17	68.11,54.89	65.38,54.27	63.87,51.31
path	61.59,50.51	59.04,49.28	56.48,46.30	53.96,42.43	54.33,38.20
path	53.25,35.66	50.24,35.67	48.92,34.53	46.58,34.04	43.68,34.49
path	40.40,35.76	38.35,36.51	36.62,38.18	36.01,39.93	36.50,42.94
path	35.72,43.53	33.66,44.98
click Felweed##181270+
|tip They look like bushy green and blue plants on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 35 Felweed##22785 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 300 Herbalism skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Alchemy") >= 350 |or
step
label "Collect_Dreaming_Glory_Total"
map Terokkar Forest/0
path follow smart; loop on; ants curved
path	31.60,45.71	32.29,42.68	32.86,38.44	32.61,35.72	34.85,34.70
path	36.60,32.54	36.98,30.09	38.61,28.59	39.20,26.76	40.64,25.10
path	41.40,22.16	43.06,19.91	43.81,17.68	43.32,15.01	43.95,12.48
path	45.94,12.75	48.58,14.35	50.45,17.02	49.36,20.09	49.79,22.32
path	50.98,24.83	53.08,25.59	55.63,25.32	58.26,25.33	59.93,23.87
path	61.12,26.59	62.13,28.15	63.46,29.60	65.02,31.32	67.13,31.63
path	69.82,31.74	69.61,35.63	68.73,39.39	69.79,42.02	70.46,45.89
path	70.51,48.71	68.94,53.17	68.11,54.89	65.38,54.27	63.87,51.31
path	61.59,50.51	59.04,49.28	56.48,46.30	53.96,42.43	54.33,38.20
path	53.25,35.66	50.24,35.67	48.92,34.53	46.58,34.04	43.68,34.49
path	40.40,35.76	38.35,36.51	36.62,38.18	36.01,39.93	36.50,42.94
path	35.72,43.53	33.66,44.98
click Dreaming Glory##181271+ |notinsticky
|tip They look like glowing white flowers on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 45 Dreaming Glory##22786 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 315 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 350 |or
step
label "Collect_Terocone_Total"
map Terokkar Forest/0
path follow smart; loop on; ants curved
path	31.60,45.71	32.29,42.68	32.86,38.44	32.61,35.72	34.85,34.70
path	36.60,32.54	36.98,30.09	38.61,28.59	39.20,26.76	40.64,25.10
path	41.40,22.16	43.06,19.91	43.81,17.68	43.32,15.01	43.95,12.48
path	45.94,12.75	48.58,14.35	50.45,17.02	49.36,20.09	49.79,22.32
path	50.98,24.83	53.08,25.59	55.63,25.32	58.26,25.33	59.93,23.87
path	61.12,26.59	62.13,28.15	63.46,29.60	65.02,31.32	67.13,31.63
path	69.82,31.74	69.61,35.63	68.73,39.39	69.79,42.02	70.46,45.89
path	70.51,48.71	68.94,53.17	68.11,54.89	65.38,54.27	63.87,51.31
path	61.59,50.51	59.04,49.28	56.48,46.30	53.96,42.43	54.33,38.20
path	53.25,35.66	50.24,35.67	48.92,34.53	46.58,34.04	43.68,34.49
path	40.40,35.76	38.35,36.51	36.62,38.18	36.01,39.93	36.50,42.94
path	35.72,43.53	33.66,44.98
click Terocone##181277+ |notinsticky
|tip They look like white and blue crystal-like cones on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 5 Terocone##22789 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 325 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 335 |or
step
label "Collect_Netherbloom_Total"
map Netherstorm/0
path follow smart; loop on; ants curved
path	40.24,77.20	35.96,77.64	33.57,77.45	32.69,76.46	29.37,79.43
path	26.96,78.02	25.18,76.67	22.65,76.95	21.15,76.56	20.31,74.78
path	19.80,71.91	19.08,69.17	20.47,66.62	22.14,66.23	24.65,65.10
path	27.12,60.26	25.78,57.60	24.23,55.80	25.51,54.63	28.56,54.51
path	31.15,52.38	29.62,43.63	27.59,44.60	25.41,44.20	22.98,42.42
path	23.01,39.51	24.33,37.29	25.59,34.57	28.07,36.77	29.58,40.32
path	31.85,40.98	36.24,37.50	34.06,33.89	33.35,29.83	33.90,25.46
path	35.11,23.24	35.65,19.13	37.78,16.74	39.58,16.09	42.42,14.81
path	44.23,11.72	45.11,9.32	45.88,7.67	46.97,9.19	48.22,13.84
path	50.05,15.38	50.32,17.83	53.22,17.87	55.50,17.51	55.81,20.17
path	56.92,23.83	54.87,25.87	52.51,26.14	50.65,26.43	48.19,27.46
path	47.13,31.47	47.76,34.54	49.01,37.61	54.64,32.59	56.67,31.80
path	58.36,31.54	60.65,30.28	62.49,30.31	65.43,30.84	67.85,32.79
path	68.63,35.87	70.41,36.32	72.66,35.05	73.97,35.64	73.61,37.25
path	73.81,39.22	73.42,40.88	72.18,43.37	70.07,44.56	68.89,46.88
path	66.51,48.70	64.20,50.40	61.71,50.31	59.22,50.15	57.37,48.48
path	56.39,46.25	54.77,43.82	53.12,41.66	49.55,46.57	49.57,50.00
path	50.42,52.90	51.84,54.87	53.70,56.61	56.10,56.66	57.95,57.14
path	59.94,58.21	62.03,58.25	64.36,58.34	66.65,58.84	67.89,61.91
path	66.70,65.88	64.15,67.93	62.18,68.23	61.37,64.52	60.24,63.12
path	57.94,63.05	57.36,65.05	56.29,67.80	52.89,68.59	51.27,70.71
path	51.54,75.15	54.25,76.46	57.15,77.98	59.64,78.82	62.25,79.25
path	60.11,81.86	60.14,84.60	59.80,87.70	58.69,89.60	56.55,89.08
path	54.83,88.42	52.69,86.63	50.15,86.35	48.74,85.68	46.78,84.05
path	45.54,79.03	43.73,76.27
click Netherbloom##181279+ |notinsticky
|tip They look like three-leafed brown and purple stems on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 10 Netherbloom##22791 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 350 Herbalism skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 340 |or
step
talk Alchemist Gribble##18802
|tip Inside the building.
buy 115 Imbued Vial##18256 |goto Hellfire Peninsula/0 53.8,65.8 |or
'|complete skill("Alchemy") >= 350 |or
step
label "Begin_Profession_Leveling_Outland"
talk Alchemist Gribble##18802
|tip Inside the building.
Train Master Alchemy |skillmax Alchemy,375 |goto Hellfire Peninsula/0 53.80,65.82
step
talk Alchemist Gribble##18802
|tip Inside the building.
Train Onslaught Elixir |learn Onslaught Elixir##33738 |goto 53.80,65.82
|tip Alternatively, you can make Adept's Elixirs for 1 Dreamfoil and 1 Felweed each.
|tip You can also make Volatile Healing Potions for 1 Golden Sansam and 1 Felweed each.
step
talk Alchemist Gribble##18802
|tip Inside the building.
buy 15 Imbued Vial##18256 |goto Hellfire Peninsula/0 53.80,65.82 |or
'|complete skill("Alchemy") >= 315 |or
stickystart "Collect_Felweed_315"
step
collect 15 Mountain Silversage##13465 |or
|tip You collected these in a previous step.
|tip Alternatively, you can make Adept's Elixirs for 1 Dreamfoil and 1 Felweed each.
|tip You can also make Volatile Healing Potions for 1 Golden Sansam and 1 Felweed each.
'|complete skill("Alchemy") >= 315 |or
step
label "Collect_Felweed_315"
map Terokkar Forest/0
path follow smart; loop on; ants curved
path	31.60,45.71	32.29,42.68	32.86,38.44	32.61,35.72	34.85,34.70
path	36.60,32.54	36.98,30.09	38.61,28.59	39.20,26.76	40.64,25.10
path	41.40,22.16	43.06,19.91	43.81,17.68	43.32,15.01	43.95,12.48
path	45.94,12.75	48.58,14.35	50.45,17.02	49.36,20.09	49.79,22.32
path	50.98,24.83	53.08,25.59	55.63,25.32	58.26,25.33	59.93,23.87
path	61.12,26.59	62.13,28.15	63.46,29.60	65.02,31.32	67.13,31.63
path	69.82,31.74	69.61,35.63	68.73,39.39	69.79,42.02	70.46,45.89
path	70.51,48.71	68.94,53.17	68.11,54.89	65.38,54.27	63.87,51.31
path	61.59,50.51	59.04,49.28	56.48,46.30	53.96,42.43	54.33,38.20
path	53.25,35.66	50.24,35.67	48.92,34.53	46.58,34.04	43.68,34.49
path	40.40,35.76	38.35,36.51	36.62,38.18	36.01,39.93	36.50,42.94
path	35.72,43.53	33.66,44.98
click Felweed##181270+ |notinsticky
|tip They look like bushy green and blue plants on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 15 Felweed##22785 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 300 Herbalism skill to gather these.
|tip Alternatively, you can make Adept's Elixirs for 1 Dreamfoil and 1 Felweed each. |notinsticky
|tip You can also make Volatile Healing Potions for 1 Golden Sansam and 1 Felweed each. |notinsticky
'|complete skill("Alchemy") >= 315 |or
step
create 15 Onslaught Elixir##33738,Alchemy,315
|tip Alternatively, you can make Adept's Elixirs for 1 Dreamfoil and 1 Felweed each.
|tip You can also make Volatile Healing Potions for 1 Golden Sansam and 1 Felweed each.
stickystart "Collect_Dreaming_Glory_330"
step
collect 25 Golden Sansam##13464 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 330 |or
step
label "Collect_Dreaming_Glory_330"
map Terokkar Forest/0
path follow smart; loop on; ants curved
path	31.60,45.71	32.29,42.68	32.86,38.44	32.61,35.72	34.85,34.70
path	36.60,32.54	36.98,30.09	38.61,28.59	39.20,26.76	40.64,25.10
path	41.40,22.16	43.06,19.91	43.81,17.68	43.32,15.01	43.95,12.48
path	45.94,12.75	48.58,14.35	50.45,17.02	49.36,20.09	49.79,22.32
path	50.98,24.83	53.08,25.59	55.63,25.32	58.26,25.33	59.93,23.87
path	61.12,26.59	62.13,28.15	63.46,29.60	65.02,31.32	67.13,31.63
path	69.82,31.74	69.61,35.63	68.73,39.39	69.79,42.02	70.46,45.89
path	70.51,48.71	68.94,53.17	68.11,54.89	65.38,54.27	63.87,51.31
path	61.59,50.51	59.04,49.28	56.48,46.30	53.96,42.43	54.33,38.20
path	53.25,35.66	50.24,35.67	48.92,34.53	46.58,34.04	43.68,34.49
path	40.40,35.76	38.35,36.51	36.62,38.18	36.01,39.93	36.50,42.94
path	35.72,43.53	33.66,44.98
click Dreaming Glory##181271+ |notinsticky
|tip They look like glowing white flowers on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 25 Dreaming Glory##22786 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 315 Herbalism skill to gather these.
'|complete skill("Alchemy") >= 330 |or
step
talk Alchemist Gribble##18802
|tip Inside the building.
Train Elixir of Healing Power |learn Elixir of Healing Power##28545 |goto Hellfire Peninsula/0 53.80,65.82
step
talk Alchemist Gribble##18802
|tip Inside the building.
buy 25 Imbued Vial##18256 |goto Hellfire Peninsula/0 53.80,65.82 |or
'|complete skill("Alchemy") >= 330 |or
step
create 25 Elixir of Healing Power##28545,Alchemy,330
|tip You may need to create more or less of these.
|tip Each additional elixir requires 1 Golden Sansam, 1 Dreaming Glory, and 1 Imbued Vial.
stickystart "Collect_Felweed_335"
step
map Terokkar Forest/0
path follow smart; loop on; ants curved
path	31.60,45.71	32.29,42.68	32.86,38.44	32.61,35.72	34.85,34.70
path	36.60,32.54	36.98,30.09	38.61,28.59	39.20,26.76	40.64,25.10
path	41.40,22.16	43.06,19.91	43.81,17.68	43.32,15.01	43.95,12.48
path	45.94,12.75	48.58,14.35	50.45,17.02	49.36,20.09	49.79,22.32
path	50.98,24.83	53.08,25.59	55.63,25.32	58.26,25.33	59.93,23.87
path	61.12,26.59	62.13,28.15	63.46,29.60	65.02,31.32	67.13,31.63
path	69.82,31.74	69.61,35.63	68.73,39.39	69.79,42.02	70.46,45.89
path	70.51,48.71	68.94,53.17	68.11,54.89	65.38,54.27	63.87,51.31
path	61.59,50.51	59.04,49.28	56.48,46.30	53.96,42.43	54.33,38.20
path	53.25,35.66	50.24,35.67	48.92,34.53	46.58,34.04	43.68,34.49
path	40.40,35.76	38.35,36.51	36.62,38.18	36.01,39.93	36.50,42.94
path	35.72,43.53	33.66,44.98
click Terocone##181277+
|tip They look like white and blue crystal-like cones on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 5 Terocone##22789 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 325 Herbalism skill to gather these.
'|complete skill("Alchemy") >= 335 |or
step
label "Collect_Felweed_335"
map Terokkar Forest/0
path follow smart; loop on; ants curved
path	31.60,45.71	32.29,42.68	32.86,38.44	32.61,35.72	34.85,34.70
path	36.60,32.54	36.98,30.09	38.61,28.59	39.20,26.76	40.64,25.10
path	41.40,22.16	43.06,19.91	43.81,17.68	43.32,15.01	43.95,12.48
path	45.94,12.75	48.58,14.35	50.45,17.02	49.36,20.09	49.79,22.32
path	50.98,24.83	53.08,25.59	55.63,25.32	58.26,25.33	59.93,23.87
path	61.12,26.59	62.13,28.15	63.46,29.60	65.02,31.32	67.13,31.63
path	69.82,31.74	69.61,35.63	68.73,39.39	69.79,42.02	70.46,45.89
path	70.51,48.71	68.94,53.17	68.11,54.89	65.38,54.27	63.87,51.31
path	61.59,50.51	59.04,49.28	56.48,46.30	53.96,42.43	54.33,38.20
path	53.25,35.66	50.24,35.67	48.92,34.53	46.58,34.04	43.68,34.49
path	40.40,35.76	38.35,36.51	36.62,38.18	36.01,39.93	36.50,42.94
path	35.72,43.53	33.66,44.98
click Felweed##181270+ |notinsticky
|tip They look like bushy green and blue plants on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 5 Felweed##22785 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 300 Herbalism skill to gather these.
'|complete skill("Alchemy") >= 335 |or
step
talk Alchemist Gribble##18802
|tip Inside the building.
Train Elixir of Draenic Wisdom |learn Elixir of Draenic Wisdom##39638 |goto Hellfire Peninsula/0 53.80,65.82
step
talk Alchemist Gribble##18802
|tip Inside the building.
buy 5 Imbued Vial##18256 |goto Hellfire Peninsula/0 53.80,65.82 |or
'|complete skill("Alchemy") >= 335 |or
step
create 5 Elixir of Draenic Wisdom##39638,Alchemy,335
|tip You can make Mad Alchemist's Potions for 2 Ragveil and 1 Imbued Vial each as well.
stickystart "Collect_Felweed_340"
step
map Netherstorm/0
path follow smart; loop on; ants curved
path	40.24,77.20	35.96,77.64	33.57,77.45	32.69,76.46	29.37,79.43
path	26.96,78.02	25.18,76.67	22.65,76.95	21.15,76.56	20.31,74.78
path	19.80,71.91	19.08,69.17	20.47,66.62	22.14,66.23	24.65,65.10
path	27.12,60.26	25.78,57.60	24.23,55.80	25.51,54.63	28.56,54.51
path	31.15,52.38	29.62,43.63	27.59,44.60	25.41,44.20	22.98,42.42
path	23.01,39.51	24.33,37.29	25.59,34.57	28.07,36.77	29.58,40.32
path	31.85,40.98	36.24,37.50	34.06,33.89	33.35,29.83	33.90,25.46
path	35.11,23.24	35.65,19.13	37.78,16.74	39.58,16.09	42.42,14.81
path	44.23,11.72	45.11,9.32	45.88,7.67	46.97,9.19	48.22,13.84
path	50.05,15.38	50.32,17.83	53.22,17.87	55.50,17.51	55.81,20.17
path	56.92,23.83	54.87,25.87	52.51,26.14	50.65,26.43	48.19,27.46
path	47.13,31.47	47.76,34.54	49.01,37.61	54.64,32.59	56.67,31.80
path	58.36,31.54	60.65,30.28	62.49,30.31	65.43,30.84	67.85,32.79
path	68.63,35.87	70.41,36.32	72.66,35.05	73.97,35.64	73.61,37.25
path	73.81,39.22	73.42,40.88	72.18,43.37	70.07,44.56	68.89,46.88
path	66.51,48.70	64.20,50.40	61.71,50.31	59.22,50.15	57.37,48.48
path	56.39,46.25	54.77,43.82	53.12,41.66	49.55,46.57	49.57,50.00
path	50.42,52.90	51.84,54.87	53.70,56.61	56.10,56.66	57.95,57.14
path	59.94,58.21	62.03,58.25	64.36,58.34	66.65,58.84	67.89,61.91
path	66.70,65.88	64.15,67.93	62.18,68.23	61.37,64.52	60.24,63.12
path	57.94,63.05	57.36,65.05	56.29,67.80	52.89,68.59	51.27,70.71
path	51.54,75.15	54.25,76.46	57.15,77.98	59.64,78.82	62.25,79.25
path	60.11,81.86	60.14,84.60	59.80,87.70	58.69,89.60	56.55,89.08
path	54.83,88.42	52.69,86.63	50.15,86.35	48.74,85.68	46.78,84.05
path	45.54,79.03	43.73,76.27
click Netherbloom##181279+
|tip They look like three-leafed brown and purple stems on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 10 Netherbloom##22791 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 350 Herbalism skill to gather these.
|tip You can also continue making Elxirs of Draenic Wisdom for 1 Terocone and 1 Felweed each.
'|complete skill("Alchemy") >= 340 |or
step
label "Collect_Felweed_340"
map Terokkar Forest/0
path follow smart; loop on; ants curved
path	31.60,45.71	32.29,42.68	32.86,38.44	32.61,35.72	34.85,34.70
path	36.60,32.54	36.98,30.09	38.61,28.59	39.20,26.76	40.64,25.10
path	41.40,22.16	43.06,19.91	43.81,17.68	43.32,15.01	43.95,12.48
path	45.94,12.75	48.58,14.35	50.45,17.02	49.36,20.09	49.79,22.32
path	50.98,24.83	53.08,25.59	55.63,25.32	58.26,25.33	59.93,23.87
path	61.12,26.59	62.13,28.15	63.46,29.60	65.02,31.32	67.13,31.63
path	69.82,31.74	69.61,35.63	68.73,39.39	69.79,42.02	70.46,45.89
path	70.51,48.71	68.94,53.17	68.11,54.89	65.38,54.27	63.87,51.31
path	61.59,50.51	59.04,49.28	56.48,46.30	53.96,42.43	54.33,38.20
path	53.25,35.66	50.24,35.67	48.92,34.53	46.58,34.04	43.68,34.49
path	40.40,35.76	38.35,36.51	36.62,38.18	36.01,39.93	36.50,42.94
path	35.72,43.53	33.66,44.98
click Felweed##181270+ |notinsticky
|tip They look like bushy green and blue plants on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 5 Felweed##22785 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 300 Herbalism skill to gather these.
|tip You can also continue making Elxirs of Draenic Wisdom for 1 Terocone and 1 Felweed each. |notinsticky
'|complete skill("Alchemy") >= 340 |or
step
talk Alchemist Gribble##18802
|tip Inside the building.
Train Super Healing Potion |learn Super Healing Potion##28551 |goto Hellfire Peninsula/0 53.80,65.82
|tip You can also continue making Elxirs of Draenic Wisdom for 1 Terocone and 1 Felweed each.
step
talk Alchemist Gribble##18802
|tip Inside the building.
buy 70 Imbued Vial##18256 |goto Hellfire Peninsula/0 53.80,65.82 |or
|tip Save these, you will need them for future steps.
'|complete skill("Alchemy") >= 375 |or
step
create 5 Super Healing Potion##28551,Alchemy,340
|tip You can also continue making Elxirs of Draenic Wisdom for 1 Terocone and 1 Felweed each.
stickystart "Collect_Felweed_355"
step
map Terokkar Forest/0
path follow smart; loop on; ants curved
path	31.60,45.71	32.29,42.68	32.86,38.44	32.61,35.72	34.85,34.70
path	36.60,32.54	36.98,30.09	38.61,28.59	39.20,26.76	40.64,25.10
path	41.40,22.16	43.06,19.91	43.81,17.68	43.32,15.01	43.95,12.48
path	45.94,12.75	48.58,14.35	50.45,17.02	49.36,20.09	49.79,22.32
path	50.98,24.83	53.08,25.59	55.63,25.32	58.26,25.33	59.93,23.87
path	61.12,26.59	62.13,28.15	63.46,29.60	65.02,31.32	67.13,31.63
path	69.82,31.74	69.61,35.63	68.73,39.39	69.79,42.02	70.46,45.89
path	70.51,48.71	68.94,53.17	68.11,54.89	65.38,54.27	63.87,51.31
path	61.59,50.51	59.04,49.28	56.48,46.30	53.96,42.43	54.33,38.20
path	53.25,35.66	50.24,35.67	48.92,34.53	46.58,34.04	43.68,34.49
path	40.40,35.76	38.35,36.51	36.62,38.18	36.01,39.93	36.50,42.94
path	35.72,43.53	33.66,44.98
click Dreaming Glory##181271+
|tip They look like glowing white flowers on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 20 Dreaming Glory##22786 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 315 Herbalism skill to gather these.
'|complete skill("Alchemy") >= 350 |or
step
label "Collect_Felweed_355"
map Terokkar Forest/0
path follow smart; loop on; ants curved
path	31.60,45.71	32.29,42.68	32.86,38.44	32.61,35.72	34.85,34.70
path	36.60,32.54	36.98,30.09	38.61,28.59	39.20,26.76	40.64,25.10
path	41.40,22.16	43.06,19.91	43.81,17.68	43.32,15.01	43.95,12.48
path	45.94,12.75	48.58,14.35	50.45,17.02	49.36,20.09	49.79,22.32
path	50.98,24.83	53.08,25.59	55.63,25.32	58.26,25.33	59.93,23.87
path	61.12,26.59	62.13,28.15	63.46,29.60	65.02,31.32	67.13,31.63
path	69.82,31.74	69.61,35.63	68.73,39.39	69.79,42.02	70.46,45.89
path	70.51,48.71	68.94,53.17	68.11,54.89	65.38,54.27	63.87,51.31
path	61.59,50.51	59.04,49.28	56.48,46.30	53.96,42.43	54.33,38.20
path	53.25,35.66	50.24,35.67	48.92,34.53	46.58,34.04	43.68,34.49
path	40.40,35.76	38.35,36.51	36.62,38.18	36.01,39.93	36.50,42.94
path	35.72,43.53	33.66,44.98
click Felweed##181270+ |notinsticky
|tip They look like bushy green and blue plants on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 10 Felweed##22785 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 300 Herbalism skill to gather these.
'|complete skill("Alchemy") >= 350 |or
step
talk Haalrun##18005
buy Recipe: Super Mana Potion##22907 |goto Zangarmarsh/0 67.8,48.0 |or
'|complete skill("Alchemy") >= 350 |or
step
use the Recipe: Super Mana Potion##22907
Learn Super Mana Potion |learn Super Mana Potion##28555
step
create 10 Super Mana Potion##28555,Alchemy,350
step
Reach Level 68 |ding 68
|tip You must be at least level 68 to train Grand Master professions in Northrend.
|tip Use the leveling guides to accomplish this.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Lich King-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Alchemy |confirm |next "Begin_Profession_Leveling_Northrend" |or
'|complete skill("Alchemy") >= 450 |or |next "Begin_Profession_Leveling_Northrend"
stickystart "Collect_Tiger_Lily_Total"
stickystart "Collect_Talandra's_Rose_Total"
stickystart "Collect_Adder's_Tongue_Total"
stickystart "Collect_Icethorn_Total"
stickystart "Collect_Lichbloom_Total"
stickystart "Collect_Frost_Lotus_Total"
step
map Grizzly Hills/0
path follow smart; loop on; ants curved; dist 30
path	33.60,58.17	36.73,58.03	40.04,57.32	44.72,56.61	47.84,54.58
path	49.81,54.05	54.38,54.30	58.84,55.09	61.72,55.01	64.82,54.36
path	67.56,53.51	69.48,52.86	71.51,50.73	73.75,50.67	76.35,51.72
path	78.33,53.39	79.69,55.25	80.88,53.66	80.34,49.90	80.03,45.95
path	79.35,43.82	77.25,42.64	76.79,41.22	76.18,40.15	75.90,38.34
path	74.65,37.57	72.81,36.20	72.32,33.61	72.24,30.71	73.13,27.76
path	73.37,24.33	72.23,22.72	70.75,22.30	69.43,22.95	68.63,25.69
path	66.08,27.92	63.75,26.91	62.03,28.43	60.18,30.64	58.52,32.86
path	56.99,34.12	56.16,34.41	54.76,32.26	52.78,28.95	51.02,27.53
path	48.13,28.53	46.37,29.45	44.18,30.41	41.83,30.63	37.72,31.11
path	35.93,31.48	33.88,34.64	32.49,36.10	30.70,37.06	28.89,38.03
path	26.96,37.87	25.61,36.39	24.73,34.12	23.73,31.33	23.47,28.76
path	22.53,26.99	19.82,27.91	17.62,29.55	14.61,30.69	12.77,33.55
path	12.00,36.91	12.50,40.99	12.99,43.47	14.55,45.14	16.66,47.58
path	15.92,50.34	15.24,53.54	15.01,59.35	14.77,62.65	13.32,65.87
path	12.65,72.26	13.95,73.25	16.82,72.05	18.71,68.56	18.80,64.10
path	20.52,60.79	25.85,54.57	29.85,56.37	32.97,57.20
click Goldclover##189973+
|tip They look like patches of bright yellow clovers along the path.
|tip Track them on your minimap with "Find Herbs".
collect 134 Goldclover##36901 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 350 Herbalism skill to gather these.
'|complete skill("Alchemy") >= 450 |or
step
label "Collect_Tiger_Lily_Total"
map Grizzly Hills/0
path follow smart; loop on; ants curved; dist 30
path	27.83,63.12	28.20,60.55	30.23,56.16	29.74,52.24	30.47,48.98
path	31.42,44.66	33.84,43.45	35.65,41.84	37.60,40.16	38.51,37.53
path	38.74,36.28	41.48,35.95	41.77,33.64	39.88,32.55	38.27,32.31
path	35.71,33.31	33.82,36.90	32.03,39.41	30.47,41.22	27.87,41.31
path	25.61,40.68	23.99,41.60	22.09,41.60	19.52,40.88	17.64,40.59
path	14.02,40.64	8.38,37.90	8.27,40.87	8.80,41.42	11.29,42.78
path	13.83,45.75	16.93,49.10	16.20,51.25	14.61,53.39	13.18,59.23
path	13.33,62.34	15.63,63.79	17.95,66.09	21.27,67.48	23.13,68.61
path	24.89,68.85	26.26,70.55	27.32,68.67	27.81,65.33
click Tiger Lily##190169+ |notinsticky
|tip They look like red and orange flowers along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 34 Tiger Lily##36904 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 375 Herbalism skill to gather these. |notinsticky
'|complete skill("Alchemy") >= 395 |or
step
label "Collect_Talandra's_Rose_Total"
map Zul'Drak/0
path follow smart; loop on; ants curved; dist 30
path	30.73,71.40	25.40,79.65	25.69,82.59	28.19,83.79	30.34,84.28
path	33.89,87.85	37.49,87.33	39.15,86.41	38.96,80.98	37.83,76.32
path	36.21,70.92	34.35,67.41	34.28,65.19	35.61,62.86	37.93,60.71
path	38.86,59.78	39.78,61.44	41.55,62.24	43.04,61.33	43.35,55.94
path	43.58,51.98	43.97,46.40	44.49,43.06	44.04,41.71	42.45,42.35
path	40.87,42.51	39.72,43.88	37.35,43.41	36.27,41.67	34.89,42.02
path	33.40,45.88	33.03,48.26	31.58,44.80	30.13,42.80	28.47,42.98
path	25.80,47.81	23.38,49.56	24.60,51.79	27.64,55.17	30.12,56.24
path	30.81,63.95
click Talandra's Rose##190170+ |notinsticky
|tip They look like purple and pink flowers along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 24 Talandra's Rose##36907 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 385 Herbalism skill to gather these. |notinsticky
'|complete skill("Alchemy") >= 401 |or
step
label "Collect_Adder's_Tongue_Total"
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	24.23,56.13	27.03,55.88	28.77,58.22	30.23,54.96	29.81,49.57
path	30.16,47.28	33.16,47.05	35.35,48.39	37.38,50.81	38.86,53.62
path	40.12,57.19	38.28,58.88	35.54,59.62	33.29,60.96	33.97,63.13
path	36.14,64.74	38.39,66.80	40.60,66.19	41.59,67.02	42.33,70.20
path	43.23,74.84	43.38,79.66	43.24,82.82	40.64,84.76	37.93,83.94
path	36.78,82.55	35.42,82.23	33.77,83.66	32.50,84.16	30.86,84.19
path	28.98,83.64	28.84,80.96	29.94,78.24	29.66,74.84	30.05,71.44
path	29.72,69.53	28.01,66.13	26.96,64.47	25.20,65.29	22.71,63.99
path	21.97,60.65	22.37,57.35
click Adder's Tongue##191019+ |notinsticky
|tip They look like piles of green moss along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 34 Adder's Tongue##36903 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 400 Herbalism skill to gather these. |notinsticky
'|complete skill("Alchemy") >= 405 |or
step
label "Collect_Icethorn_Total"
map The Storm Peaks/0
path follow smart; loop on; ants curved; dist 30
path	40.48,84.72	38.66,87.17	37.60,88.31	36.46,88.65	35.02,88.40
path	33.04,87.96	32.36,87.32	31.15,86.01	31.26,83.85	32.88,82.55
path	34.41,82.23	37.43,81.32	38.61,80.09	38.42,77.89	38.35,76.11
path	38.74,73.99	37.68,73.22	36.73,71.76	36.68,69.14	36.32,67.06
path	34.88,65.94	30.85,65.94	29.52,67.06	29.48,69.42	29.23,70.90
path	27.57,72.50	26.02,72.85	25.60,71.51	26.75,67.96	27.06,65.35
path	26.93,62.88	26.18,62.34	24.08,61.56	23.06,60.72	21.86,57.73
path	22.87,55.34	24.36,56.14	27.01,56.95	27.90,55.75	28.61,53.06
path	29.83,51.20	31.85,50.00	32.80,49.22	33.11,48.06	33.67,45.40
path	34.61,43.60	35.58,42.52	36.26,43.24	37.45,45.62	39.00,47.32
path	39.40,48.12	39.25,49.56	38.64,51.52	37.74,54.90	37.82,57.96
path	37.92,61.22	37.98,63.22	38.43,63.67	39.29,63.34	41.71,62.19
path	43.54,59.60	43.96,56.47	43.76,55.08	45.37,54.72	46.71,56.45
path	48.25,58.99	48.84,60.33	48.86,63.66	49.78,64.45	51.20,64.42
path	52.87,65.09	54.07,66.91	54.51,68.66	52.51,70.07	50.76,72.23
path	49.99,73.68	49.17,77.80	46.82,77.95	44.64,78.02	41.03,78.62
path	41.08,81.81
click Icethorn##190172+ |notinsticky
|tip They look like blue and white thorns growing out of the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 20 Icethorn##36906 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 435 Herbalism skill to gather these. |notinsticky
'|complete skill("Alchemy") >= 415 |or
step
label "Collect_Lichbloom_Total"
map The Storm Peaks/0
path follow smart; loop on; ants curved; dist 30
path	40.48,84.72	38.66,87.17	37.60,88.31	36.46,88.65	35.02,88.40
path	33.04,87.96	32.36,87.32	31.15,86.01	31.26,83.85	32.88,82.55
path	34.41,82.23	37.43,81.32	38.61,80.09	38.42,77.89	38.35,76.11
path	38.74,73.99	37.68,73.22	36.73,71.76	36.68,69.14	36.32,67.06
path	34.88,65.94	30.85,65.94	29.52,67.06	29.48,69.42	29.23,70.90
path	27.57,72.50	26.02,72.85	25.60,71.51	26.75,67.96	27.06,65.35
path	26.93,62.88	26.18,62.34	24.08,61.56	23.06,60.72	21.86,57.73
path	22.87,55.34	24.36,56.14	27.01,56.95	27.90,55.75	28.61,53.06
path	29.83,51.20	31.85,50.00	32.80,49.22	33.11,48.06	33.67,45.40
path	34.61,43.60	35.58,42.52	36.26,43.24	37.45,45.62	39.00,47.32
path	39.40,48.12	39.25,49.56	38.64,51.52	37.74,54.90	37.82,57.96
path	37.92,61.22	37.98,63.22	38.43,63.67	39.29,63.34	41.71,62.19
path	43.54,59.60	43.96,56.47	43.76,55.08	45.37,54.72	46.71,56.45
path	48.25,58.99	48.84,60.33	48.86,63.66	49.78,64.45	51.20,64.42
path	52.87,65.09	54.07,66.91	54.51,68.66	52.51,70.07	50.76,72.23
path	49.99,73.68	49.17,77.80	46.82,77.95	44.64,78.02	41.03,78.62
path	41.08,81.81
click Lichbloom##190171+ |notinsticky
|tip They look like tangled blue plants along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 125 Lichbloom##36905 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip You will need at least 425 Herbalism skill to gather these. |notinsticky
'|complete skill("Alchemy") >= 450 |or
step
label "Collect_Frost_Lotus_Total"
click Frost Lotus##190176+ |notinsticky
|tip They look like pink, white, and blue flowers along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
|tip Frost Lotus is a rare herb and will take longer to find. |notinsticky
collect 15 Frost Lotus##36908 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
'|complete skill("Alchemy") >= 450 |or
stickystart "Collect_Huge_Citrine_Total"
stickystart "Collect_Eternal_Fire_Total"
stickystart "Collect_Saronite_Bar_Total"
stickystart "Collect_Pygmy_Suckerfish_Total"
step
collect 5 Dark Jade##36932 |or
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
|tip You can also Transmute: Skyflare Diamond for points.
|tip Each Skyflare Diamond costs 1 Bloodstone, 1 Chalcedony, and 1 Eternal Air to transmute.
'|complete skill("Alchemy") >= 435 |or
step
label "Collect_Huge_Citrine_Total"
collect 5 Huge Citrine##36929 |or
|tip Prospect them with Jewelcrafting or purchase them from the auction house. |notinsticky
|tip You can also Transmute: Skyflare Diamond for points. |notinsticky
|tip Each Skyflare Diamond costs 1 Bloodstone, 1 Chalcedony, and 1 Eternal Air to transmute. |notinsticky
'|complete skill("Alchemy") >= 435 |or
step
label "Collect_Eternal_Fire_Total"
Enter the cave |goto The Storm Peaks/0 62.48,41.49 < 20 |walk |notinsticky
kill Wailing Winds##30450+ |notinsticky
|tip Inside the cave. |notinsticky
use the Crystallized Fire##37702 |notinsticky
|tip Combine 10 Crystallized Fire into 1 Eternal Fire. |notinsticky
collect 5 Eternal Fire##36860 |goto 61.43,39.48 |or
|tip Farm them from fire elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Titanium Veins with the Northrend Mining guide. |notinsticky
|tip You can also Transmute: Skyflare Diamond for points. |notinsticky
|tip Each Skyflare Diamond costs 1 Bloodstone, 1 Chalcedony, and 1 Eternal Air to transmute. |notinsticky
'|complete skill("Alchemy") >= 435 |or
step
label "Collect_Saronite_Bar_Total"
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	79.27,65.32	80.51,63.45	80.55,60.91	80.11,58.43	79.71,55.90
path	78.57,54.98	76.16,53.63	74.31,53.72	72.37,52.46	70.19,51.19
path	68.54,50.18	68.10,49.16	68.42,47.09	71.54,42.33	71.77,41.02
path	70.80,39.72	69.17,39.54	66.84,39.75	65.22,39.43	63.46,37.28
path	62.15,34.64	60.96,31.35	58.97,32.07	56.70,33.49	55.46,34.36
path	53.15,36.55	51.51,36.91	49.18,36.87	46.07,35.95	44.29,39.29
path	40.80,40.94	40.12,42.66	39.54,44.03	38.93,44.94	38.07,48.02
path	38.18,49.57	37.68,51.43	36.63,51.07	35.74,50.18	34.32,48.74
path	32.65,48.37	32.04,50.86	32.76,53.74	31.75,57.06	31.27,59.57
path	30.57,62.54	31.30,66.34	32.34,69.72	34.25,69.54	36.01,70.86
path	37.83,69.46	38.62,68.21	40.71,66.06	42.62,65.37	47.84,65.25
path	49.03,63.72	49.25,62.37	47.89,57.80	48.08,53.78	48.13,50.05
path	48.61,47.04	51.44,45.25	55.15,43.88	57.87,43.96	59.59,46.21
path	61.20,47.93	62.33,50.75	62.58,54.26	64.21,56.39	65.31,59.10
path	66.48,61.81	66.37,64.78	67.17,70.17	67.87,70.86	69.35,69.71
path	72.29,67.71	72.82,64.27	73.82,61.06	76.10,61.31	77.53,63.76
click Saronite Deposit##189980+ |notinsticky
click Rich Saronite Deposit##189981+ |notinsticky
|tip They look like large green clusters of rock and crystals. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect Saronite Ore##36912 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 56 Saronite Bar##36913 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 400 Mining skill to gather these. |notinsticky
'|complete skill("Alchemy") >= 430 |or
step
label "Collect_Pygmy_Suckerfish_Total"
collect 20 Pygmy Suckerfish##40199 |or
|tip Farm them with Fishing or purchase them from the auction house. |notinsticky
'|complete skill("Alchemy") >= 380 |or
step
talk Patricia Egan##28725
buy 84 Imbued Vial##18256 |goto Dalaran/1 41.53,33.31 |or 2
buy 16 Enchanted Vial##40411 |goto Dalaran/1 41.53,33.31 |or 2
'|complete skill("Alchemy") >= 450 |or
step
label "Begin_Profession_Leveling_Northrend"
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Grand Master Alchemy |skillmax Alchemy,450 |goto Dalaran/1 42.64,32.06
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Resurgent Healing Potion |learn Resurgent Healing Potion##53838 |goto Dalaran/1 42.64,32.06
step
map Grizzly Hills/0
path follow smart; loop on; ants curved; dist 30
path	33.60,58.17	36.73,58.03	40.04,57.32	44.72,56.61	47.84,54.58
path	49.81,54.05	54.38,54.30	58.84,55.09	61.72,55.01	64.82,54.36
path	67.56,53.51	69.48,52.86	71.51,50.73	73.75,50.67	76.35,51.72
path	78.33,53.39	79.69,55.25	80.88,53.66	80.34,49.90	80.03,45.95
path	79.35,43.82	77.25,42.64	76.79,41.22	76.18,40.15	75.90,38.34
path	74.65,37.57	72.81,36.20	72.32,33.61	72.24,30.71	73.13,27.76
path	73.37,24.33	72.23,22.72	70.75,22.30	69.43,22.95	68.63,25.69
path	66.08,27.92	63.75,26.91	62.03,28.43	60.18,30.64	58.52,32.86
path	56.99,34.12	56.16,34.41	54.76,32.26	52.78,28.95	51.02,27.53
path	48.13,28.53	46.37,29.45	44.18,30.41	41.83,30.63	37.72,31.11
path	35.93,31.48	33.88,34.64	32.49,36.10	30.70,37.06	28.89,38.03
path	26.96,37.87	25.61,36.39	24.73,34.12	23.73,31.33	23.47,28.76
path	22.53,26.99	19.82,27.91	17.62,29.55	14.61,30.69	12.77,33.55
path	12.00,36.91	12.50,40.99	12.99,43.47	14.55,45.14	16.66,47.58
path	15.92,50.34	15.24,53.54	15.01,59.35	14.77,62.65	13.32,65.87
path	12.65,72.26	13.95,73.25	16.82,72.05	18.71,68.56	18.80,64.10
path	20.52,60.79	25.85,54.57	29.85,56.37	32.97,57.20
click Goldclover##189973+
|tip They look like patches of bright yellow clovers along the path.
|tip Track them on your minimap with "Find Herbs".
collect 134 Goldclover##36901 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 350 Herbalism skill to gather these.
|tip Save at least 114 of these, you will need them in future steps.
'|complete skill("Alchemy") >= 360 |or
step
talk Patricia Egan##28725
|tip Inside the building.
buy 10 Imbued Vial##18256 |goto Dalaran/1 41.53,33.31 |or
'|complete skill("Alchemy") >= 360 |or
step
create 10 Resurgent Healing Potion##53838,Alchemy,360
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Icy Mana Potion |learn Icy Mana Potion##53839 |goto Dalaran/1 42.64,32.06
step
map Zul'Drak/0
path follow smart; loop on; ants curved; dist 30
path	30.73,71.40	25.40,79.65	25.69,82.59	28.19,83.79	30.34,84.28
path	33.89,87.85	37.49,87.33	39.15,86.41	38.96,80.98	37.83,76.32
path	36.21,70.92	34.35,67.41	34.28,65.19	35.61,62.86	37.93,60.71
path	38.86,59.78	39.78,61.44	41.55,62.24	43.04,61.33	43.35,55.94
path	43.58,51.98	43.97,46.40	44.49,43.06	44.04,41.71	42.45,42.35
path	40.87,42.51	39.72,43.88	37.35,43.41	36.27,41.67	34.89,42.02
path	33.40,45.88	33.03,48.26	31.58,44.80	30.13,42.80	28.47,42.98
path	25.80,47.81	23.38,49.56	24.60,51.79	27.64,55.17	30.12,56.24
path	30.81,63.95
click Talandra's Rose##190170+
|tip They look like purple and pink flowers along the path.
|tip Track them on your minimap with "Find Herbs".
collect 24 Talandra's Rose##36907 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 385 Herbalism skill to gather these.
|tip Save at least 14 of these, you will need them in future steps.
'|complete skill("Alchemy") >= 365 |or
step
create 5 Icy Mana Potion##53839,Alchemy,365
step
talk Patricia Egan##28725
|tip Inside the building.
buy 5 Imbued Vial##18256 |goto Dalaran/1 41.53,33.31 |or
'|complete skill("Alchemy") >= 365 |or
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Spellpower Elixir |learn Spellpower Elixir##53842 |goto Dalaran/1 42.64,32.06
stickystart "Collect_10_Goldclover_375"
map Grizzly Hills/0
path follow smart; loop on; ants curved; dist 30
path	27.83,63.12	28.20,60.55	30.23,56.16	29.74,52.24	30.47,48.98
path	31.42,44.66	33.84,43.45	35.65,41.84	37.60,40.16	38.51,37.53
path	38.74,36.28	41.48,35.95	41.77,33.64	39.88,32.55	38.27,32.31
path	35.71,33.31	33.82,36.90	32.03,39.41	30.47,41.22	27.87,41.31
path	25.61,40.68	23.99,41.60	22.09,41.60	19.52,40.88	17.64,40.59
path	14.02,40.64	8.38,37.90	8.27,40.87	8.80,41.42	11.29,42.78
path	13.83,45.75	16.93,49.10	16.20,51.25	14.61,53.39	13.18,59.23
path	13.33,62.34	15.63,63.79	17.95,66.09	21.27,67.48	23.13,68.61
path	24.89,68.85	26.26,70.55	27.32,68.67	27.81,65.33
click Tiger Lily##190169+
|tip They look like red and orange flowers along the path.
|tip Track them on your minimap with "Find Herbs".
collect 34 Tiger Lily##36904 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 375 Herbalism skill to gather these.
|tip Save at least 24 of these; you will need them for future steps.
'|complete skill("Alchemy") >= 375 |or
step
label "Collect_10_Goldclover_375"
collect 10 Goldclover##36901 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 375 |or
step
create 10 Spellpower Elixir##53842,Alchemy,375
step
talk Patricia Egan##28725
|tip Inside the building.
buy 10 Imbued Vial##18256 |goto Dalaran/1 41.53,33.31 |or
'|complete skill("Alchemy") >= 375 |or
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Pygmy Oil |learn Pygmy Oil##53812 |goto Dalaran/1 42.64,32.06
step
collect 20 Pygmy Suckerfish##40199 |or
|tip Farm them with Fishing or purchase them from the auction house.
'|complete skill("Alchemy") >= 380 |or
step
create 5 Pygmy Oil##53812,Alchemy,380
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Potion of Nightmares |learn Potion of Nightmares##53900 |goto Dalaran/1 42.64,32.06
stickystart "Collect_10_Talandra's_Rose_385"
step
collect 5 Goldclover##36901 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 385 |or
step
label "Collect_10_Talandra's_Rose_385"
collect 10 Talandra's Rose##36907 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 385 |or
step
talk Patricia Egan##28725
|tip Inside the building.
buy 5 Imbued Vial##18256 |goto Dalaran/1 41.53,33.31 |or
'|complete skill("Alchemy") >= 385 |or
step
create 5 Potion of Nightmares##53900,Alchemy,385
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Elixir of Mighty Strength |learn Elixir of Mighty Strength##54218 |goto Dalaran/1 42.64,32.06
step
collect 24 Tiger Lily##36904 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 395 |or
step
talk Patricia Egan##28725
|tip Inside the building.
buy 12 Imbued Vial##18256 |goto Dalaran/1 41.53,33.31 |or
'|complete skill("Alchemy") >= 395 |or
step
create 12 Elixir of Mighty Strength##54218,Alchemy,395
|tip You may need to create more or less of these.
|tip Each additional elixir requires 2 Tiger Lily and 1 Imbued Vial.
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Elixir of Mighty Agility |learn Elixir of Mighty Agility##53840 |goto Dalaran/1 42.64,32.06
stickystart "Collect_10_Goldclover_400"
step
click Adder's Tongue##191019+
|tip They look like piles of green moss along the path.
|tip Track them on your minimap with "Find Herbs".
collect 34 Adder's Tongue##36903 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 400 Herbalism skill to gather these.
|tip Save at least 24 of these; you will need them for future steps.
'|complete skill("Alchemy") >= 400 |or
step
label "Collect_10_Goldclover_400"
collect 10 Goldclover##36901 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 400 |or
step
talk Patricia Egan##28725
|tip Inside the building.
buy 5 Imbued Vial##18256 |goto Dalaran/1 41.53,33.31 |or
'|complete skill("Alchemy") >= 400 |or
step
create 5 Elixir of Mighty Agility##53840,Alchemy,400
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Northrend Alchemy Research |learn Northrend Alchemy Research##60893 |goto Dalaran/1 42.64,32.06
stickystart "Collect_10_Adder's_Tongue_401"
stickystart "Collect_10_Goldclover_401"
step
collect 4 Talandra's Rose##36907 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 401 |or
step
label "Collect_10_Adder's_Tongue_401"
collect 10 Adder's Tongue##36903 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 401 |or
step
label "Collect_10_Goldclover_401"
collect 10 Goldclover##36901 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 401 |or
step
talk Patricia Egan##28725
|tip Inside the building.
buy 1 Enchanted Vial##40411 |goto Dalaran/1 41.53,33.31 |or
'|complete skill("Alchemy") >= 401 |or
step
create 1 Northrend Alchemy Research##60893,Alchemy,401
stickystart "Collect_14_Adder's_Tongue_405"
step
collect 14 Goldclover##36901 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 405 |or
step
label "Collect_14_Adder's_Tongue_405"
collect 14 Adder's Tongue##36903 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 405 |or
step
talk Patricia Egan##28725
|tip Inside the building.
buy 7 Imbued Vial##18256 |goto Dalaran/1 41.53,33.31 |or
'|complete skill("Alchemy") >= 405 |or
step
create 7 Elixir of Mighty Agility##53840,Alchemy,405
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Indestructible Potion |learn Indestructible Potion##53905 |goto Dalaran/1 42.64,32.06
step
map The Storm Peaks/0
path follow smart; loop on; ants curved; dist 30
path	40.48,84.72	38.66,87.17	37.60,88.31	36.46,88.65	35.02,88.40
path	33.04,87.96	32.36,87.32	31.15,86.01	31.26,83.85	32.88,82.55
path	34.41,82.23	37.43,81.32	38.61,80.09	38.42,77.89	38.35,76.11
path	38.74,73.99	37.68,73.22	36.73,71.76	36.68,69.14	36.32,67.06
path	34.88,65.94	30.85,65.94	29.52,67.06	29.48,69.42	29.23,70.90
path	27.57,72.50	26.02,72.85	25.60,71.51	26.75,67.96	27.06,65.35
path	26.93,62.88	26.18,62.34	24.08,61.56	23.06,60.72	21.86,57.73
path	22.87,55.34	24.36,56.14	27.01,56.95	27.90,55.75	28.61,53.06
path	29.83,51.20	31.85,50.00	32.80,49.22	33.11,48.06	33.67,45.40
path	34.61,43.60	35.58,42.52	36.26,43.24	37.45,45.62	39.00,47.32
path	39.40,48.12	39.25,49.56	38.64,51.52	37.74,54.90	37.82,57.96
path	37.92,61.22	37.98,63.22	38.43,63.67	39.29,63.34	41.71,62.19
path	43.54,59.60	43.96,56.47	43.76,55.08	45.37,54.72	46.71,56.45
path	48.25,58.99	48.84,60.33	48.86,63.66	49.78,64.45	51.20,64.42
path	52.87,65.09	54.07,66.91	54.51,68.66	52.51,70.07	50.76,72.23
path	49.99,73.68	49.17,77.80	46.82,77.95	44.64,78.02	41.03,78.62
path	41.08,81.81
click Icethorn##190172+
|tip They look like blue and white thorns growing out of the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 20 Icethorn##36906 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 435 Herbalism skill to gather these.
'|complete skill("Alchemy") >= 415 |or
step
talk Patricia Egan##28725
|tip Inside the building.
buy 10 Imbued Vial##18256 |goto Dalaran/1 41.53,33.31 |or
'|complete skill("Alchemy") >= 415 |or
step
create 10 Indestructible Potion##53905,Alchemy,415
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Runic Mana Potion |learn Runic Mana Potion##53837 |goto Dalaran/1 42.64,32.06
stickystart "Collect_20_Goldclover_425"
step
map The Storm Peaks/0
path follow smart; loop on; ants curved; dist 30
path	40.48,84.72	38.66,87.17	37.60,88.31	36.46,88.65	35.02,88.40
path	33.04,87.96	32.36,87.32	31.15,86.01	31.26,83.85	32.88,82.55
path	34.41,82.23	37.43,81.32	38.61,80.09	38.42,77.89	38.35,76.11
path	38.74,73.99	37.68,73.22	36.73,71.76	36.68,69.14	36.32,67.06
path	34.88,65.94	30.85,65.94	29.52,67.06	29.48,69.42	29.23,70.90
path	27.57,72.50	26.02,72.85	25.60,71.51	26.75,67.96	27.06,65.35
path	26.93,62.88	26.18,62.34	24.08,61.56	23.06,60.72	21.86,57.73
path	22.87,55.34	24.36,56.14	27.01,56.95	27.90,55.75	28.61,53.06
path	29.83,51.20	31.85,50.00	32.80,49.22	33.11,48.06	33.67,45.40
path	34.61,43.60	35.58,42.52	36.26,43.24	37.45,45.62	39.00,47.32
path	39.40,48.12	39.25,49.56	38.64,51.52	37.74,54.90	37.82,57.96
path	37.92,61.22	37.98,63.22	38.43,63.67	39.29,63.34	41.71,62.19
path	43.54,59.60	43.96,56.47	43.76,55.08	45.37,54.72	46.71,56.45
path	48.25,58.99	48.84,60.33	48.86,63.66	49.78,64.45	51.20,64.42
path	52.87,65.09	54.07,66.91	54.51,68.66	52.51,70.07	50.76,72.23
path	49.99,73.68	49.17,77.80	46.82,77.95	44.64,78.02	41.03,78.62
path	41.08,81.81
click Lichbloom##190171+
|tip They look like tangled blue plants along the path.
|tip Track them on your minimap with "Find Herbs".
collect 125 Lichbloom##36905 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip You will need at least 425 Herbalism skill to gather these.
|tip Save at least 105 of these; you will need them for future steps.
'|complete skill("Alchemy") >= 425 |or
step
label "Collect_20_Goldclover_425"
collect 20 Goldclover##36901 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 425 |or
step
talk Patricia Egan##28725
|tip Inside the building.
buy 20 Imbued Vial##18256 |goto Dalaran/1 41.53,33.31 |or
'|complete skill("Alchemy") >= 425 |or
step
create 20 Runic Mana Potion##53837,Alchemy,425
|tip You may need to create more or less of these.
|tip Each additional potion requires 1 Goldclover, 1 Lichbloom, and 1 Imbued Vial.
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Transmute: Titanium |learn Transmute: Titanium##60350 |goto Dalaran/1 42.64,32.06
step
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	79.27,65.32	80.51,63.45	80.55,60.91	80.11,58.43	79.71,55.90
path	78.57,54.98	76.16,53.63	74.31,53.72	72.37,52.46	70.19,51.19
path	68.54,50.18	68.10,49.16	68.42,47.09	71.54,42.33	71.77,41.02
path	70.80,39.72	69.17,39.54	66.84,39.75	65.22,39.43	63.46,37.28
path	62.15,34.64	60.96,31.35	58.97,32.07	56.70,33.49	55.46,34.36
path	53.15,36.55	51.51,36.91	49.18,36.87	46.07,35.95	44.29,39.29
path	40.80,40.94	40.12,42.66	39.54,44.03	38.93,44.94	38.07,48.02
path	38.18,49.57	37.68,51.43	36.63,51.07	35.74,50.18	34.32,48.74
path	32.65,48.37	32.04,50.86	32.76,53.74	31.75,57.06	31.27,59.57
path	30.57,62.54	31.30,66.34	32.34,69.72	34.25,69.54	36.01,70.86
path	37.83,69.46	38.62,68.21	40.71,66.06	42.62,65.37	47.84,65.25
path	49.03,63.72	49.25,62.37	47.89,57.80	48.08,53.78	48.13,50.05
path	48.61,47.04	51.44,45.25	55.15,43.88	57.87,43.96	59.59,46.21
path	61.20,47.93	62.33,50.75	62.58,54.26	64.21,56.39	65.31,59.10
path	66.48,61.81	66.37,64.78	67.17,70.17	67.87,70.86	69.35,69.71
path	72.29,67.71	72.82,64.27	73.82,61.06	76.10,61.31	77.53,63.76
click Saronite Deposit##189980+
click Rich Saronite Deposit##189981+
|tip They look like large green clusters of rock and crystals.
|tip Track them on your minimap with "Find Minerals".
collect Saronite Ore##36912 |n
|tip Smelt the ore at a forge.
collect 56 Saronite Bar##36913 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 400 Mining skill to gather these.
'|complete skill("Alchemy") >= 430 |or
step
create 7 Transmute: Titanium##60350,Alchemy,430
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Transmute: Earthsiege Diamond |learn Transmute: Earthsiege Diamond##57427 |goto Dalaran/1 42.64,32.06
|tip You can also Transmute: Skyflare Diamond for points.
stickystart "Collect_5_Huge_Citrine_435"
stickystart "Collect_5_Eternal_Fire_435"
step
collect 5 Dark Jade##36932 |or
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
|tip You can also Transmute: Skyflare Diamond for points.
|tip Each Skyflare Diamond costs 1 Bloodstone, 1 Chalcedony, and 1 Eternal Air to transmute.
'|complete skill("Alchemy") >= 435 |or
step
label "Collect_5_Huge_Citrine_435"
collect 5 Huge Citrine##36929 |or
|tip Prospect them with Jewelcrafting or purchase them from the auction house.
|tip You can also Transmute: Skyflare Diamond for points. |notinsticky
|tip Each Skyflare Diamond costs 1 Bloodstone, 1 Chalcedony, and 1 Eternal Air to transmute. |notinsticky
'|complete skill("Alchemy") >= 435 |or
step
label "Collect_5_Eternal_Fire_435"
Enter the cave |goto The Storm Peaks/0 62.48,41.49 < 20 |walk |notinsticky
kill Wailing Winds##30450+ |notinsticky
|tip Inside the cave. |notinsticky
use the Crystallized Fire##37702 |notinsticky
|tip Combine 10 Crystallized Fire into 1 Eternal Fire. |notinsticky
collect 5 Eternal Fire##36860 |goto 61.43,39.48 |or
|tip Farm them from fire elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Titanium Veins with the Northrend Mining guide. |notinsticky
|tip You can also Transmute: Skyflare Diamond for points. |notinsticky
|tip Each Skyflare Diamond costs 1 Bloodstone, 1 Chalcedony, and 1 Eternal Air to transmute. |notinsticky
'|complete skill("Alchemy") >= 435 |or
step
create 5 Transmute: Earthsiege Diamond##57427,Alchemy,435
|tip You can also Transmute: Skyflare Diamond for points.
|tip Each Skyflare Diamond costs 1 Bloodstone, 1 Chalcedony, and 1 Eternal Air to transmute.
step
talk Linzy Blackbolt##92456
|tip Inside the building.
Train Flask of Endless Rage |learn Flask of Endless Rage##53903 |goto Dalaran/1 42.64,32.06
|tip You can also create Flasks of Pure Mojo, Stoneblood, or the Frost Wyrm.
stickystart "Collect_105_Lichbloom_450"
stickystart "Collect_45_Goldclover_450"
step
click Frost Lotus##190176+
|tip They look like pink, white, and blue flowers along the path.
|tip Track them on your minimap with "Find Herbs".
|tip Frost Lotus is a rare herb and will take longer to find.
collect 15 Frost Lotus##36908 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 450 |or
step
label "Collect_105_Lichbloom_450"
collect 105 Lichbloom##36905 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 450 |or
step
label "Collect_45_Goldclover_450"
collect 45 Goldclover##36901 |or
|tip You collected these in a previous step.
'|complete skill("Alchemy") >= 450 |or
step
talk Patricia Egan##28725
|tip Inside the building.
buy 15 Enchanted Vial##40411 |goto Dalaran/1 41.53,33.31 |or
'|complete skill("Alchemy") >= 450 |or
step
create 15 Flask of Endless Rage##53903,Alchemy,450
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Cataclysm-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Alchemy |confirm |next "Begin_Alchemy_Leveling_Cataclysm" |or
'|complete skill("Alchemy") >= 525 |or |next "Begin_Alchemy_Leveling_Cataclysm"
stickystart "Collect_Azshara's_Veil_Total"
stickystart "Collect_Heartblossom_Total"
stickystart "Collect_Volatile_Life_Total"
stickystart "Collect_Whiptail_Total"
stickystart "Collect_Twilight_Jasmine_Total"
stickystart "Collect_Nightstone_Total"
stickystart "Collect_Alicite_Total"
step
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
collect 85 Cinderbloom##52983
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 515
step
label "Collect_Azshara's_Veil_Total"
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
collect 15 Azshara's Veil##52985
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 475
step
label "Collect_Heartblossom_Total"
map Deepholm/0
path follow smart; loop on; ants curved; dist 60
path	69.45,56.02	74.70,61.14	75.81,67.59	70.52,61.93	71.11,70.62
path	66.03,68.53	58.01,73.22	47.40,67.35	37.03,53.36	37.63,44.71
path	26.81,41.51	23.12,35.31	28.92,35.62	27.84,27.02	31.22,32.00
path	36.63,28.95	33.00,19.13	47.81,12.91	45.91,21.10	43.61,25.12
path	44.52,28.62	49.12,33.66	56.73,38.30	73.80,32.71	75.20,41.93
path	69.61,46.45
collect 25 Heartblossom##52986
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 495
step
label "Collect_Whiptail_Total"
map Uldum/0
path follow smart; loop on; ants straight; dist 30
path	52.04,34.76	49.71,31.20	46.66,28.99	48.65,32.36	49.82,35.80
path	50.63,41.83	51.55,44.75	54.26,46.47	55.55,46.73	56.26,49.75
path	57.24,52.88	58.12,55.65	58.98,59.77	59.28,63.35	59.14,69.50
path	59.27,74.41	59.77,79.51	60.03,82.60	61.43,80.76	62.87,78.55
path	65.43,77.43	67.74,76.82	69.59,76.35	68.06,73.08	66.74,71.67
path	60.14,56.99	59.42,53.64	57.64,47.89	56.97,45.77	58.53,30.28
path	57.61,27.73	56.82,23.62	56.97,19.77	58.45,15.72	60.98,13.91
collect 60 Whiptail##52988
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 525
step
label "Collect_Volatile_Life_Total"
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
collect 45 Volatile Life##52329
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 505
step
label "Collect_Twilight_Jasmine_Total"
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
collect 45 Twilight Jasmine##52987
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 520
step
label "Collect_Alicite_Total"
step
collect 15 Alicite##52179
|tip Prospect them with Jewelcrafting from Cataclysm Ore, mine them from Cataclysm Mining nodes, or purchase them from the Auction House.
|only if skill("Alchemy") < 525
step
label "Collect_Nightstone_Total"
collect 15 Nightstone##52180
|tip Prospect them with Jewelcrafting from Cataclysm Ore, mine them from Cataclysm Mining nodes, or purchase them from the Auction House.
|only if skill("Alchemy") < 520
step
label "Begin_Alchemy_Leveling_Cataclysm"
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
Train Alchemy |skillmax Alchemy,525 |goto Stormwind City/0 55.66,86.09
|tip You must be at least level 75.
step
talk Maria Lumere##1313
buy 100 Crystal Vial##3371 |goto Stormwind City/0 55.89,85.63
|only if skill("Alchemy") < 525
step
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
collect 5 Cinderbloom##52983
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 515
step
Open Your Alchemy Crafting Panel:
_<Create 5 Draught of War>_
|tip You may need to make a few more.
Reach 455 Alchemy |skill Alchemy,455
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Ghost Elixir##80477 |goto Stormwind City/0 55.66,86.09
step
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
collect 10 Cinderbloom##52983
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 515
step
Open Your Alchemy Crafting Panel:
_<Create 5 Ghost Elixir>_
|tip You may need to make a few more.
Reach 460 Alchemy |skill Alchemy,460
stickystart "Azshara's_Veil_465"
step
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
collect 5 Cinderbloom##52983
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 515
step
label "Azshara's_Veil_465"
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
collect 5 Azshara's Veil##52985
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 465
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Volcanic Potion##80481 |goto Stormwind City/0 55.66,86.09
step
Open Your Alchemy Crafting Panel:
_<Create 5 Volcanic Potion>_
Reach 465 Alchemy |skill Alchemy,465
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Elixir of the Cobra##80484 |goto Stormwind City/0 55.66,86.09
stickystart "Azshara's_Veil_475"
step
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
collect 10 Cinderbloom##52983
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 515
step
label "Azshara's_Veil_475"
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
collect 10 Azshara's Veil##52985
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 475
step
Open Your Alchemy Crafting Panel:
_<Create 10 Elixir of the Cobra>_
|tip You may need to make a few more.
Reach 475 Alchemy |skill Alchemy,475
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Elixir of Deep Earth##80488 |goto Stormwind City/0 55.66,86.09
step
map Deepholm/0
path follow smart; loop on; ants curved; dist 60
path	69.45,56.02	74.70,61.14	75.81,67.59	70.52,61.93	71.11,70.62
path	66.03,68.53	58.01,73.22	47.40,67.35	37.03,53.36	37.63,44.71
path	26.81,41.51	23.12,35.31	28.92,35.62	27.84,27.02	31.22,32.00
path	36.63,28.95	33.00,19.13	47.81,12.91	45.91,21.10	43.61,25.12
path	44.52,28.62	49.12,33.66	56.73,38.30	73.80,32.71	75.20,41.93
path	69.61,46.45
collect 10 Heartblossom##52986
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 480
step
Open Your Alchemy Crafting Panel:
_<Create 5 Elixir of Deep Earth>_
Reach 480 Alchemy |skill Alchemy,480
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Elixir of Impossible Accuracy##80491 |goto Stormwind City/0 55.66,86.09
step
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
collect 10 Cinderbloom##52983
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 485
step
map Deepholm/0
path follow smart; loop on; ants curved; dist 60
path	69.45,56.02	74.70,61.14	75.81,67.59	70.52,61.93	71.11,70.62
path	66.03,68.53	58.01,73.22	47.40,67.35	37.03,53.36	37.63,44.71
path	26.81,41.51	23.12,35.31	28.92,35.62	27.84,27.02	31.22,32.00
path	36.63,28.95	33.00,19.13	47.81,12.91	45.91,21.10	43.61,25.12
path	44.52,28.62	49.12,33.66	56.73,38.30	73.80,32.71	75.20,41.93
path	69.61,46.45
collect 5 Heartblossom##52986
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 485
step
Open Your Alchemy Crafting Panel:
_<Create 5 Elixir of Impossible Accuracy>_
Reach 485 Alchemy |skill Alchemy,485
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Mythical Mana Potion##80494 |goto Stormwind City/0 55.66,86.09
step
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
collect 5 Cinderbloom##52983
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 490
step
map Uldum/0
path follow smart; loop on; ants straight; dist 30
path	52.04,34.76	49.71,31.20	46.66,28.99	48.65,32.36	49.82,35.80
path	50.63,41.83	51.55,44.75	54.26,46.47	55.55,46.73	56.26,49.75
path	57.24,52.88	58.12,55.65	58.98,59.77	59.28,63.35	59.14,69.50
path	59.27,74.41	59.77,79.51	60.03,82.60	61.43,80.76	62.87,78.55
path	65.43,77.43	67.74,76.82	69.59,76.35	68.06,73.08	66.74,71.67
path	60.14,56.99	59.42,53.64	57.64,47.89	56.97,45.77	58.53,30.28
path	57.61,27.73	56.82,23.62	56.97,19.77	58.45,15.72	60.98,13.91
collect 5 Whiptail##52988
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 525
step
Open Your Alchemy Crafting Panel:
_<Create 5 Mythical Mana Potion>_
Reach 490 Alchemy |skill Alchemy,490
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Golemblood Potion##80496 |goto Stormwind City/0 55.66,86.09
stickystart "Collect_Volatile_Life_495"
step
map Deepholm/0
path follow smart; loop on; ants curved; dist 60
path	69.45,56.02	74.70,61.14	75.81,67.59	70.52,61.93	71.11,70.62
path	66.03,68.53	58.01,73.22	47.40,67.35	37.03,53.36	37.63,44.71
path	26.81,41.51	23.12,35.31	28.92,35.62	27.84,27.02	31.22,32.00
path	36.63,28.95	33.00,19.13	47.81,12.91	45.91,21.10	43.61,25.12
path	44.52,28.62	49.12,33.66	56.73,38.30	73.80,32.71	75.20,41.93
path	69.61,46.45
collect 5 Heartblossom##52986
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 495
step
label "Collect_Volatile_Life_495"
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
collect 5 Volatile Life##52329
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 495
step
Open Your Alchemy Crafting Panel:
_<Create 5 Golemblood Potion>_
Reach 495 Alchemy |skill Alchemy,495
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Mythical Healing Potion##80498 |goto Stormwind City/0 55.66,86.09
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
collect 27 Twilight Jasmine##52987
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 520
step
Open Your Alchemy Crafting Panel:
_<Create 27 Mythical Healing Potion>_
Reach 510 Alchemy |skill Alchemy,510
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Flask of Titanic Strength##80723 |goto Stormwind City/0 55.66,86.09
stickystart "Collect_Volatile_Life_515"
stickystart "Collect_Whiptail_515"
step
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
collect 40 Cinderbloom##52983
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 515
step
label "Collect_Volatile_Life_515"
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
collect 40 Volatile Life##52329
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 515
step
label "Collect_Whiptail_515"
map Uldum/0
path follow smart; loop on; ants straight; dist 30
path	52.04,34.76	49.71,31.20	46.66,28.99	48.65,32.36	49.82,35.80
path	50.63,41.83	51.55,44.75	54.26,46.47	55.55,46.73	56.26,49.75
path	57.24,52.88	58.12,55.65	58.98,59.77	59.28,63.35	59.14,69.50
path	59.27,74.41	59.77,79.51	60.03,82.60	61.43,80.76	62.87,78.55
path	65.43,77.43	67.74,76.82	69.59,76.35	68.06,73.08	66.74,71.67
path	60.14,56.99	59.42,53.64	57.64,47.89	56.97,45.77	58.53,30.28
path	57.61,27.73	56.82,23.62	56.97,19.77	58.45,15.72	60.98,13.91
collect 40 Whiptail##52988
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 525
step
Open Your Alchemy Crafting Panel:
_<Create 5 Flask of Titanic Strength>_
Reach 515 Alchemy |skill Alchemy,515
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Transmute: Demonseye##80248 |goto Stormwind City/0 55.66,86.09
stickystart "Twilight_Jasmine_520"
step
collect 15 Nightstone##52180
|tip Prospect them with Jewelcrafting from Cataclysm Ore, mine them from Cataclysm Mining nodes, or purchase them from the Auction House.
|only if skill("Alchemy") < 520
step
label "Twilight_Jasmine_520"
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
collect 15 Twilight Jasmine##52987
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 520
step
Open Your Alchemy Crafting Panel:
_<Create 5 Transmute: Demonseye>_
Reach 520 Alchemy |skill Alchemy,520
step
talk Lilyssia Nightbreeze##5499
|tip Inside the building.
learn Transmute: Amberjewel##80247 |goto Stormwind City/0 55.66,86.09
stickystart "Collect_Whiptail_525"
step
collect 15 Alicite##52179
|tip Prospect them with Jewelcrafting from Cataclysm Ore, mine them from Cataclysm Mining nodes, or purchase them from the Auction House.
|only if skill("Alchemy") < 525
step
label "Collect_Whiptail_525"
map Uldum/0
path follow smart; loop on; ants straight; dist 30
path	52.04,34.76	49.71,31.20	46.66,28.99	48.65,32.36	49.82,35.80
path	50.63,41.83	51.55,44.75	54.26,46.47	55.55,46.73	56.26,49.75
path	57.24,52.88	58.12,55.65	58.98,59.77	59.28,63.35	59.14,69.50
path	59.27,74.41	59.77,79.51	60.03,82.60	61.43,80.76	62.87,78.55
path	65.43,77.43	67.74,76.82	69.59,76.35	68.06,73.08	66.74,71.67
path	60.14,56.99	59.42,53.64	57.64,47.89	56.97,45.77	58.53,30.28
path	57.61,27.73	56.82,23.62	56.97,19.77	58.45,15.72	60.98,13.91
collect 15 Whiptail##52988
|tip Farm them with Herbalism or purchase them from the Auction House.
|only if skill("Alchemy") < 525
step
Open Your Alchemy Crafting Panel:
_<Create 5 Transmute: Amberjewel>_
Reach 525 Alchemy |skill Alchemy,525
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
Enter the building |goto Stormwind City/0 84.14,26.15 < 15 |walk
talk Harrison Jones##44238
|tip Inside the building.
Train Apprentice Archaeology |skillmax Archaeology,75 |goto 85.81,25.95
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
Enter the building |goto Stormwind City/0 84.14,26.15 < 15 |walk
talk Harrison Jones##44238
|tip Inside the building.
Train Journeyman Archaeology |skillmax Archaeology,150 |goto 85.81,25.95
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
Enter the building |goto Stormwind City/0 84.14,26.15 < 15 |walk
talk Harrison Jones##44238
|tip Inside the building.
Train Expert Archaeology |skillmax Archaeology,225 |goto 85.81,25.95
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
Enter the building |goto Stormwind City/0 84.14,26.15 < 15 |walk
talk Harrison Jones##44238
|tip Inside the building.
Train Artisan Archaeology |skillmax Archaeology,300 |goto 85.81,25.95
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
Enter the building |goto Stormwind City/0 84.14,26.15 < 15 |walk
talk Harrison Jones##44238
|tip Inside the building.
Train Master Archaeology |skillmax Archaeology,375 |goto 85.81,25.95
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
Enter the building |goto Stormwind City/0 84.14,26.15 < 15 |walk
talk Harrison Jones##44238
|tip Inside the building.
Train Grand Master Archaeology |skillmax Archaeology,450 |goto 85.81,25.95
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
Enter the building |goto Stormwind City/0 84.14,26.15 < 15 |walk
talk Harrison Jones##44238
|tip Inside the building.
Train Illustrious Grand Master Archaeology |skillmax Archaeology,525 |goto 85.81,25.95
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
condition_suggested=function() return skill('Blacksmithing') > 300 end,
description="This guide will walk you through leveling your Blacksmithing skill from 1-525.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
talk Therum Deepforge##5511
Train Apprentice Blacksmithing |skillmax Blacksmithing,75 |goto Stormwind City/0 63.65,36.96
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Blacksmithing |confirm |next "Begin_Profession_Leveling_Classic" |or
'|complete skill("Blacksmithing") >= 300 |or |next "Begin_Profession_Leveling_Classic"
stickystart "Collect_Copper_Bar_Total"
stickystart "Collect_Coarse_Stone_Total"
stickystart "Collect_Bronze_Bar_Total"
stickystart "Collect_Silver_Bar_Total"
stickystart "Collect_Heavy_Stone_Total"
stickystart "Collect_Iron_Bar_Total"
step
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
click Copper Vein##1731+
|tip They look like gray rocks with orange and yellow mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 150 Rough Stone##2835 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Blacksmithing") >= 65 |or
step
label "Collect_Copper_Bar_Total"
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
click Copper Vein##1731+ |notinsticky
|tip They look like gray rocks with orange and yellow mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 150 Copper Ore##2770 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 150 Copper Bar##2840 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 110 |or
step
label "Collect_Coarse_Stone_Total"
map Redridge Mountains/0
path follow smart; loop on; ants curved; dist 30
path	34.84,39.62	32.49,40.03	26.77,38.03	23.81,37.60	19.69,33.86
path	22.08,33.78	23.94,29.24	24.34,25.29	26.59,22.38	30.49,23.02
path	32.74,24.02	34.09,27.32	37.04,29.49	39.98,34.83	41.30,36.38
path	44.66,33.83	46.74,28.55	44.77,21.77	41.41,17.65	36.48,13.76
path	34.74,10.23	34.98,6.12	37.35,8.47	41.55,14.08	44.03,11.31
path	46.46,10.40	46.25,18.30	49.07,26.38	51.29,33.43	54.88,39.95
path	60.42,38.94	65.96,39.97	69.77,40.71	74.09,39.24	75.74,35.75
path	77.58,33.92	80.33,34.24	82.13,41.88	83.24,45.25	83.22,49.84
path	85.72,53.03	85.40,59.72	83.26,62.68	80.96,64.63	80.16,68.66
path	76.83,70.85	74.90,75.94	75.18,81.36	71.12,79.18	69.76,77.89
path	68.50,73.93	64.45,75.07	63.44,77.36	53.60,78.77	54.39,76.63
path	57.47,72.73	59.27,70.58	58.96,66.98	62.27,64.11	64.73,61.66
path	64.14,58.53	63.73,52.97	65.28,52.19	70.25,51.01	65.71,46.75
path	60.58,45.06	57.02,47.05	52.11,46.77	48.73,41.70	47.33,41.83
path	44.51,41.74	42.78,40.82	37.52,43.51	34.91,40.15
click Tin Vein##3764+ |notinsticky
|tip They look like gray rocks with silver mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 85 Coarse Stone##2836 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 65 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 100 |or
step
label "Collect_Bronze_Bar_Total"
collect 140 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip Smelting 2 Bronze Bars requires 1 Copper Bar and 1 Tin Bar. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 150 |or
step
label "Collect_Silver_Bar_Total"
map Redridge Mountains/0
path follow smart; loop on; ants curved; dist 30
path	34.84,39.62	32.49,40.03	26.77,38.03	23.81,37.60	19.69,33.86
path	22.08,33.78	23.94,29.24	24.34,25.29	26.59,22.38	30.49,23.02
path	32.74,24.02	34.09,27.32	37.04,29.49	39.98,34.83	41.30,36.38
path	44.66,33.83	46.74,28.55	44.77,21.77	41.41,17.65	36.48,13.76
path	34.74,10.23	34.98,6.12	37.35,8.47	41.55,14.08	44.03,11.31
path	46.46,10.40	46.25,18.30	49.07,26.38	51.29,33.43	54.88,39.95
path	60.42,38.94	65.96,39.97	69.77,40.71	74.09,39.24	75.74,35.75
path	77.58,33.92	80.33,34.24	82.13,41.88	83.24,45.25	83.22,49.84
path	85.72,53.03	85.40,59.72	83.26,62.68	80.96,64.63	80.16,68.66
path	76.83,70.85	74.90,75.94	75.18,81.36	71.12,79.18	69.76,77.89
path	68.50,73.93	64.45,75.07	63.44,77.36	53.60,78.77	54.39,76.63
path	57.47,72.73	59.27,70.58	58.96,66.98	62.27,64.11	64.73,61.66
path	64.14,58.53	63.73,52.97	65.28,52.19	70.25,51.01	65.71,46.75
path	60.58,45.06	57.02,47.05	52.11,46.77	48.73,41.70	47.33,41.83
path	44.51,41.74	42.78,40.82	37.52,43.51	34.91,40.15
click Silver Vein##1733+ |notinsticky
|tip They look like gray rocks with silver-green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 5 Silver Ore##2775 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 5 Silver Bar##2842 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 75 Mining skill to gather these. |notinsticky
'|complete skill("Blacksmithing") >= 105 |or
step
label "Collect_Heavy_Stone_Total"
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
collect 90 Heavy Stone##2838 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 125 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 140 |or
step
label "Collect_Iron_Bar_Total"
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
|tip You will need at least 125 Mining skill to gather these. |notinsticky
|tip If you plan to gather Steel Bars instead of buying them, farm another 190 Iron Bars.
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 190 |or
stickystart "Collect_Steel_Bar_Total"
stickystart "Collect_Solid_Stone_Total"
stickystart "Collect_Mithril_Bar_Total"
stickystart "Collect_Citrine_Total"
stickystart "Collect_Mageweave_Cloth_Total"
stickystart "Collect_Dense_Stone_Total"
stickystart "Collect_Thorium_Bar_Total"
step
map Arathi Highlands
path follow smart; loop on; ants curved; dist 20
path	76.64,42.59	75.00,44.93	72.65,48.07	70.58,55.05	69.99,58.40
path	72.92,59.03	72.28,63.63	72.78,66.86	71.75,66.15	69.15,72.54
path	67.17,70.90	63.52,73.55	59.48,74.71	59.32,70.74	56.16,71.89
path	50.82,78.41	47.96,82.44	42.53,80.75	43.02,77.16	40.39,71.86
path	37.95,67.63	38.52,68.50	33.94,66.02	34.59,61.64	33.70,56.77
path	33.45,53.94	33.65,50.19	35.00,47.28	32.96,46.68	31.68,45.41
path	32.34,42.64	31.42,41.24	25.23,43.10	20.94,39.12	20.02,35.80
path	19.12,33.36	22.43,31.28	23.48,24.90	26.93,20.65	28.65,14.18
path	28.96,16.96	31.62,18.63	30.96,20.36	33.19,21.23	36.35,24.61
path	39.97,25.62	40.21,28.79	43.97,30.51	45.70,33.02	48.08,33.60
path	49.78,36.76	52.14,36.11	52.75,31.99	54.80,33.13	58.19,32.50
path	58.02,34.22	59.94,35.97	62.25,32.06	64.69,35.58	64.49,26.56
path	66.77,27.64	70.39,27.07	70.47,30.74	71.07,38.63
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
'|complete skill("Blacksmithing") >= 155 |or
step
label "Collect_Steel_Bar_Total"
collect 190 Steel Bar##3859 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip Each Steel Bar requires 1 Iron Bar and 1 Coal. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 235 |or
step
label "Collect_Solid_Stone_Total"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+ |notinsticky
|tip They look like gray rocks with large white crystals along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 520 Solid Stone##7912 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 175 Mining skill to gather these. |notinsticky
|tip If you cannot find the plans for Mithril Spurs, you will need more Thorium or Mithril but only 120 Solid Stone.
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 210 |or
step
label "Collect_Mithril_Bar_Total"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+ |notinsticky
|tip They look like gray rocks with large white crystals along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 250 Mithril Ore##3858 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 250 Mithril Bar##3860 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 175 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 270 |or
step
label "Collect_Citrine_Total"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals".
collect 10 Citrine##3864 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 175 Mining skill to gather these.
|tip Save these; you will need them for future steps.
'|complete skill("Blacksmithing") >= 235 |or
step
label "Collect_Mageweave_Cloth_Total"
Kill Dunemaul enemies around this area |notinsticky
collect 60 Mageweave Cloth##4338 |or |goto Tanaris/0 40.50,55.50
|tip Farm them from humanoid mobs or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 225 |or
step
label "Collect_Dense_Stone_Total"
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+ |notinsticky
click Rich Thorium Vein##175404+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 20 Dense Stone##12365 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 245 Mining skill to gather small veins and 275 skill to gather rich veins. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 260 |or
step
label "Collect_Thorium_Bar_Total"
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+ |notinsticky
click Rich Thorium Vein##175404+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 462 Thorium Ore##10620 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 462 Thorium Bar##12359 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 245 Mining skill to gather small veins and 275 skill to gather rich veins. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 300 |or
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 35 Green Dye##2605 |goto Stormwind City/0 71.57,62.76 |or
'|complete skill("Blacksmithing") >= 165 |or
step
label "Begin_Profession_Leveling_Classic"
talk Kaita Deepforge##5512
buy Blacksmith Hammer##5956 |goto Stormwind City/0 63.24,37.56 |or
|tip Save this, you will need it to create items.
'|complete skill("Blacksmithing") >= 375 |or
stickystart "Collect_Copper_Bars_30"
step
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
click Copper Vein##1731+
|tip They look like gray rocks with orange and yellow mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 150 Rough Stone##2835 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip Save at least 110 of these, you will need them for a future step.
'|complete skill("Blacksmithing") >= 30 |or
step
label "Collect_Copper_Bars_30"
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
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
talk Therum Deepforge##5511
Train Rough Grinding Stone |learn Rough Grinding Stone##3320 |goto Stormwind City/0 63.65,36.96
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
map Redridge Mountains/0
path follow smart; loop on; ants curved; dist 30
path	34.84,39.62	32.49,40.03	26.77,38.03	23.81,37.60	19.69,33.86
path	22.08,33.78	23.94,29.24	24.34,25.29	26.59,22.38	30.49,23.02
path	32.74,24.02	34.09,27.32	37.04,29.49	39.98,34.83	41.30,36.38
path	44.66,33.83	46.74,28.55	44.77,21.77	41.41,17.65	36.48,13.76
path	34.74,10.23	34.98,6.12	37.35,8.47	41.55,14.08	44.03,11.31
path	46.46,10.40	46.25,18.30	49.07,26.38	51.29,33.43	54.88,39.95
path	60.42,38.94	65.96,39.97	69.77,40.71	74.09,39.24	75.74,35.75
path	77.58,33.92	80.33,34.24	82.13,41.88	83.24,45.25	83.22,49.84
path	85.72,53.03	85.40,59.72	83.26,62.68	80.96,64.63	80.16,68.66
path	76.83,70.85	74.90,75.94	75.18,81.36	71.12,79.18	69.76,77.89
path	68.50,73.93	64.45,75.07	63.44,77.36	53.60,78.77	54.39,76.63
path	57.47,72.73	59.27,70.58	58.96,66.98	62.27,64.11	64.73,61.66
path	64.14,58.53	63.73,52.97	65.28,52.19	70.25,51.01	65.71,46.75
path	60.58,45.06	57.02,47.05	52.11,46.77	48.73,41.70	47.33,41.83
path	44.51,41.74	42.78,40.82	37.52,43.51	34.91,40.15
click Tin Vein##3764+
|tip They look like gray rocks with silver mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 85 Coarse Stone##2836 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 65 Mining skill to gather these.
|tip Save at least 60 of these, you will need them for a future step.
'|complete skill("Blacksmithing") >= 75 |or
step
talk Therum Deepforge##5511
Train Coarse Sharpening Stone |learn Coarse Sharpening Stone##2665 |goto Stormwind City/0 63.65,36.96
step
create 25 Coarse Sharpening Stone##2665,Blacksmithing,75
|tip You may need to create more or less of these.
|tip Each additional Coarse Sharpening Stone requires 1 Coarse Stone.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Therum Deepforge##5511
Train Journeyman Blacksmithing |skillmax Blacksmithing,150 |goto Stormwind City/0 63.65,36.96
step
talk Therum Deepforge##5511
Train Coarse Grinding Stone |learn Coarse Grinding Stone##3326 |goto Stormwind City/0 63.65,36.96
step
collect 60 Coarse Stone##2836 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 90 |or
step
create 30 Coarse Grinding Stone##3326,Blacksmithing,30 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Blacksmithing") >= 90 |or
step
create 1 Coarse Grinding Stone##3326,Blacksmithing,90
|tip You may need to create more of these.
|tip Each additional Coarse Grinding Stone requires 2 Coarse Stone.
|tip Save at least 30 of these, you will need them for a future step.
step
talk Therum Deepforge##5511
Train Runed Copper Belt |learn Runed Copper Belt##2666 |goto Stormwind City/0 63.65,36.96
step
collect 100 Copper Bar##2840 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 100 |or
step
create 10 Runed Copper Belt##2666,Blacksmithing,100 |goto Stormwind City/0 63.65,36.96
|tip Stand next to an anvil.
stickystart "Collect_Rough_Grinding_Stone_105"
step
map Redridge Mountains/0
path follow smart; loop on; ants curved; dist 30
path	34.84,39.62	32.49,40.03	26.77,38.03	23.81,37.60	19.69,33.86
path	22.08,33.78	23.94,29.24	24.34,25.29	26.59,22.38	30.49,23.02
path	32.74,24.02	34.09,27.32	37.04,29.49	39.98,34.83	41.30,36.38
path	44.66,33.83	46.74,28.55	44.77,21.77	41.41,17.65	36.48,13.76
path	34.74,10.23	34.98,6.12	37.35,8.47	41.55,14.08	44.03,11.31
path	46.46,10.40	46.25,18.30	49.07,26.38	51.29,33.43	54.88,39.95
path	60.42,38.94	65.96,39.97	69.77,40.71	74.09,39.24	75.74,35.75
path	77.58,33.92	80.33,34.24	82.13,41.88	83.24,45.25	83.22,49.84
path	85.72,53.03	85.40,59.72	83.26,62.68	80.96,64.63	80.16,68.66
path	76.83,70.85	74.90,75.94	75.18,81.36	71.12,79.18	69.76,77.89
path	68.50,73.93	64.45,75.07	63.44,77.36	53.60,78.77	54.39,76.63
path	57.47,72.73	59.27,70.58	58.96,66.98	62.27,64.11	64.73,61.66
path	64.14,58.53	63.73,52.97	65.28,52.19	70.25,51.01	65.71,46.75
path	60.58,45.06	57.02,47.05	52.11,46.77	48.73,41.70	47.33,41.83
path	44.51,41.74	42.78,40.82	37.52,43.51	34.91,40.15
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
talk Therum Deepforge##5511
Train Silver Rod |learn Silver Rod##7818 |goto Stormwind City/0 63.65,36.96
step
create 5 Silver Rod##7818,Blacksmithing,105 |goto Stormwind City/0 63.65,36.96
|tip Stand next to an anvil.
|tip Inside the building.
step
collect 50 Copper Bar##2840 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 110 |or
step
create 5 Runed Copper Belt##2666,Blacksmithing,110 |goto Stormwind City/0 63.65,36.96
|tip Stand next to an anvil.
step
collect 140 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
|tip Smelting 2 Bronze Bars requires 1 Copper Bar and 1 Tin Bar.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 50 of these, you will need them for a future step.
'|complete skill("Blacksmithing") >= 125 |or
step
talk Therum Deepforge##5511
Train Rough Bronze Leggings |learn Rough Bronze Leggings##2668 |goto Stormwind City/0 63.65,36.96
step
create 15 Rough Bronze Leggings##2668,Blacksmithing,125 |goto Stormwind City/0 63.65,36.96
|tip Stand next to an anvil.
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
map Arathi Highlands
path follow smart; loop on; ants curved; dist 20
path	76.64,42.59	75.00,44.93	72.65,48.07	70.58,55.05	69.99,58.40
path	72.92,59.03	72.28,63.63	72.78,66.86	71.75,66.15	69.15,72.54
path	67.17,70.90	63.52,73.55	59.48,74.71	59.32,70.74	56.16,71.89
path	50.82,78.41	47.96,82.44	42.53,80.75	43.02,77.16	40.39,71.86
path	37.95,67.63	38.52,68.50	33.94,66.02	34.59,61.64	33.70,56.77
path	33.45,53.94	33.65,50.19	35.00,47.28	32.96,46.68	31.68,45.41
path	32.34,42.64	31.42,41.24	25.23,43.10	20.94,39.12	20.02,35.80
path	19.12,33.36	22.43,31.28	23.48,24.90	26.93,20.65	28.65,14.18
path	28.96,16.96	31.62,18.63	30.96,20.36	33.19,21.23	36.35,24.61
path	39.97,25.62	40.21,28.79	43.97,30.51	45.70,33.02	48.08,33.60
path	49.78,36.76	52.14,36.11	52.75,31.99	54.80,33.13	58.19,32.50
path	58.02,34.22	59.94,35.97	62.25,32.06	64.69,35.58	64.49,26.56
path	66.77,27.64	70.39,27.07	70.47,30.74	71.07,38.63
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
talk Therum Deepforge##5511
Train Heavy Grinding Stone |learn Heavy Grinding Stone##3337 |goto Stormwind City/0 63.65,36.96
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
talk Therum Deepforge##5511
Train Patterned Bronze Bracers |learn Patterned Bronze Bracers##2672 |goto Stormwind City/0 63.65,36.96
step
create 10 Patterned Bronze Bracers##2672,Blacksmithing,150 |goto Stormwind City/0 63.65,36.96
|tip Stand next to an anvil.
step
Reach Level 20 |ding 20
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
talk Therum Deepforge##5511
Train Expert Blacksmithing |skillmax Blacksmithing,225 |goto Stormwind City/0 63.65,36.96
step
talk Therum Deepforge##5511
Train Golden Rod |learn Golden Rod##14379 |goto Stormwind City/0 63.65,36.96
stickystart "Collect_Coarse_Grinding_Stone_155"
step
collect 5 Gold Bar##3577 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 155 |or
step
label "Collect_Coarse_Grinding_Stone_155"
collect 10 Coarse Grinding Stone##3478 |or
|tip You created these in a previous step.
'|complete skill("Blacksmithing") >= 155 |or
step
create 5 Golden Rod##14379,Blacksmithing,155 |goto Stormwind City/0 63.65,36.96
|tip Stand next to an anvil.
stickystart "Collect_Heavy_Grinding_Stone_165"
step
collect 80 Iron Bar##3575 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 165 |or
step
label "Collect_Heavy_Grinding_Stone_165"
collect 10 Heavy Grinding Stone##3486 |or
|tip You created these in a previous step.
'|complete skill("Blacksmithing") >= 165 |or
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 35 Green Dye##2605 |goto Stormwind City/0 71.57,62.76 |or
'|complete skill("Blacksmithing") >= 165 |or
step
talk Therum Deepforge##5511
Train Green Iron Leggings |learn Green Iron Leggings##3506 |goto Stormwind City/0 63.65,36.96
step
create 10 Green Iron Leggings##3506,Blacksmithing,165 |goto Stormwind City/0 63.65,36.96
|tip Stand next to an anvil.
step
talk Therum Deepforge##5511
Train Green Iron Bracers |learn Green Iron Bracers##3501 |goto Stormwind City/0 63.65,36.96
stickystart "Collect_Green_Dye_190"
step
collect 150 Iron Bar##3575 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 190 |or
step
label "Collect_Green_Dye_190"
collect 25 Green Dye##2605 |or
|tip You purchased these in a previous step.
'|complete skill("Blacksmithing") >= 190 |or
step
create 25 Green Iron Bracers##3501,Blacksmithing,190 |goto Stormwind City/0 63.65,36.96
|tip Stand next to an anvil.
stickystart "Collect_Heavy_Grinding_Stone_200"
step
collect 190 Steel Bar##3859 |or
|tip Create them with Mining or purchase them from the auction house.
|tip Each Steel Bar requires 1 Iron Bar and 1 Coal.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save 140 of these, you will need them for future steps.
'|complete skill("Blacksmithing") >= 200 |or
step
label "Collect_Heavy_Grinding_Stone_200"
collect 20 Heavy Grinding Stone##3486 |or
|tip You created these in a previous step.
'|complete skill("Blacksmithing") >= 200 |or
step
talk Therum Deepforge##5511
Train Golden Scale Bracers |learn Golden Scale Bracers##7223 |goto Stormwind City/0 63.65,36.96
step
create 10 Golden Scale Bracers##7223,Blacksmithing,200 |goto Stormwind City/0 63.65,36.96
|tip Stand next to an anvil.
|tip If you intend to choose the Armorsmith specialization, keep 6 of these.
step
label "Collect_Solid_Stone_210"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 520 Solid Stone##7912 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 175 Mining skill to gather these.
|tip If you cannot find the plans for Mithril Spurs, you will need more Thorium or Mithril but only 120 Solid Stone.
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 210 |or
step
talk Therum Deepforge##5511
Train Solid Grinding Stone |learn Solid Grinding Stone##9920 |goto Stormwind City/0 63.65,36.96
step
create 130 Solid Grinding Stone##9920,Blacksmithing,130 total |or
|tip Save these, you will need them for future steps.
|tip If you can't find the plans for Mithril Spurs, you will only need to save 10 of these.
'|complete skill("Blacksmithing") >= 210 |or
step
create 1 Solid Grinding Stone##9920,Blacksmithing,210
|tip You may need to make a few more of these.
|tip Each additional Solid Grinding Stone requires 4 Solid Stone.
|tip Save 130 these, you will need them for future steps.
|tip If you can't find the plans for Mithril Spurs, you will only need to save 10 of these.
stickystart "Collect_Citrine_235"
stickystart "Collect_Mageweave_Cloth_225"
step
label "Collect_Mithril_Bar_225"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals".
collect 250 Mithril Ore##3858 |n
|tip Smelt the ore at a forge.
collect 250 Mithril Bar##3860 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 175 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 160 of these; you will need them for future steps.
'|complete skill("Blacksmithing") >= 225 |or
step
label "Collect_Citrine_235"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals".
collect 10 Citrine##3864 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 175 Mining skill to gather these.
|tip Save these; you will need them for future steps.
'|complete skill("Blacksmithing") >= 235 |or
step
label "Collect_Mageweave_Cloth_225"
Kill Dunemaul enemies around this area
collect 60 Mageweave Cloth##4338 |goto Tanaris/0 40.50,55.50 |or
|tip Farm them from humanoid mobs or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 225 |or
step
talk Therum Deepforge##5511
Train Heavy Mithril Gauntlet |learn Heavy Mithril Gauntlet##9928 |goto Stormwind City/0 63.65,36.96
step
create 15 Heavy Mithril Gauntlet##9928,Blacksmithing,225 |goto Stormwind City/0 63.65,36.96
|tip Stand next to an anvil.
step
Reach Level 35 |ding 35
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
talk Therum Deepforge##5511
Train Artisan Blacksmithing |skillmax Blacksmithing,300 |goto Stormwind City/0 63.65,36.96
step
talk Therum Deepforge##5511
Train Steel Plate Helm |learn Steel Plate Helm##9935 |goto Stormwind City/0 63.65,36.96
stickystart "Collect_Steel_Bar_235"
stickystart "Collect_Solid_Grinding_Stone_235"
step
collect 10 Citrine##3864 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 235 |or
step
label "Collect_Steel_Bar_235"
collect 140 Steel Bar##3859 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 235 |or
step
label "Collect_Solid_Grinding_Stone_235"
collect 10 Solid Grinding Stone##7966 |or
|tip You created these in a previous step.
'|complete skill("Blacksmithing") >= 235 |or
step
create 10 Steel Plate Helm##9935,Blacksmithing,235 |goto Stormwind City/0 63.65,36.96
|tip Stand next to an anvil.
|tip Inside the building.
|tip If you intend to choose the Armorsmith specialization, keep 4 of these.
step
collect Plans: Mithril Spurs##7989 |or
|tip Purchase this from the auction house.
|tip You can also make 15 Mithril Coifs.
|tip This will require more materials at 150 Mithril Bars and 90 Mageweave Cloth.
'|complete skill("Blacksmithing") >= 255 |or
step
use the Plans: Mithril Spurs##7989
|tip You can also make 15 Mithril Coifs.
|tip This will require more materials at 150 Mithril Bars and 90 Mageweave Cloth.
Learn Mithril Spurs |learn Mithril Spurs##9964
stickystart "Collect_Solid_Grinding_Stone_250"
step
collect 80 Mithril Bar##3860 |or
|tip You collected these in a previous step.
|tip You can also make 15 Mithril Coifs.
|tip This will require more materials at 150 Mithril Bars and 90 Mageweave Cloth.
'|complete skill("Blacksmithing") >= 250 |or
step
label "Collect_Solid_Grinding_Stone_250"
collect 60 Solid Grinding Stone##7966 |or
|tip You created these in a previous step.
|tip You do not need these if you make Mithril Coifs instead.
'|complete skill("Blacksmithing") >= 250 |or
step
create 20 Mithril Spurs##9964,Blacksmithing,250 |goto Stormwind City/0 63.65,36.96
|tip Stand next to an anvil.
|tip You may need to create more or less of these.
|tip Each additional Mithril Spur requires 4 Mithril Bars and 3 Solid Grinding Stones.
|tip Solid Grinding Stones require 4 Solid Stone.
|tip You can also make 15 Mithril Coifs.
|tip This will require more materials at 150 Mithril Bars and 90 Mageweave Cloth.
step
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+
click Rich Thorium Vein##175404+
|tip They look like green mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 20 Dense Stone##12365 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 245 Mining skill to gather small veins and 275 skill to gather rich veins.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Blacksmithing") >= 260 |or
step
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+ |notinsticky
click Rich Thorium Vein##175404+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 462 Thorium Ore##10620 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 462 Thorium Bar##12359 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 245 Mining skill to gather small veins and 275 skill to gather rich veins.
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip Save these, you will need them for future steps.
'|complete skill("Blacksmithing") >= 260 |or
step
talk Therum Deepforge##5511
Train Dense Sharpening Stone |learn Dense Sharpening Stone##16641 |goto Stormwind City/0 63.65,36.96
step
create 20 Dense Sharpening Stone##16641,Blacksmithing,260
|tip You may need to create more or less of these.
|tip Each additional Dense Sharpening Stone requires 1 Dense Stone.
stickystart "Collect_Solid_Grinding_Stone_270"
step
collect 80 Mithril Bar##3860 |or
|tip You collected these in a previous step.
|tip If you didn't buy the plans for Mithril Spurs, you can buy plans for Thorium Bracers, Thorium Belt, or Radiant Belt.
|tip Less ideally, you can make Heavy Mithril Boots from 260-265 and Imperial Plate Belts from 265-270.
|tip Imperial Plate Belt Plans can be obtained from Derotain in Gadgetzan for 10 Thorium Bars.
'|complete skill("Blacksmithing") >= 270 |or
step
label "Collect_Solid_Grinding_Stone_270"
collect 60 Solid Grinding Stone##7966 |or
|tip You collected these in a previous step.
|tip If you didn't buy the plans for Mithril Spurs, you can buy plans for Thorium Bracers, Thorium Belt, or Radiant Belt. |notinsticky
|tip Less ideally, you can make Heavy Mithril Boots from 260-265 and Imperial Plate Belts from 265-270. |notinsticky
|tip Imperial Plate Belt Plans can be obtained from Derotain in Gadgetzan for 10 Thorium Bars. |notinsticky
'|complete skill("Blacksmithing") >= 270 |or
step
create 20 Mithril Spurs##9964,Blacksmithing,270 |goto Stormwind City/0 63.65,36.96
|tip Stand next to an anvil.
|tip You may need to create more or less of these.
|tip Each additional Mithril Spur requires 4 Mithril Bars and 3 Solid Grinding Stones.
|tip Solid Grinding Stones require 4 Solid Stone.
|tip If you didn't buy the plans for Mithril Spurs, you can buy plans for Thorium Bracers, Thorium Belt, or Radiant Belt.
|tip Less ideally, you can make Heavy Mithril Boots from 260-265 and Imperial Plate Belts from 265-270.
|tip Imperial Plate Belt Plans can be obtained from Derotain in Gadgetzan for 10 Thorium Bars.
step
Reach Level 50 |ding 50
|tip You must be at least this level before you can accept the next quests.
|tip Use the leveling guides to accomplish this.
step
talk Derotain Mudsipper##14567
accept A Blue Light Bargain##7652 |goto Tanaris/0 51.38,28.67
step
talk Derotain Mudsipper##14567
accept Imperial Plate Bracer##7655 |goto 51.38,28.67
step
collect 10 Thorium Bar##12359 |q 7655/1
|tip You collected these in a previous step.
step
talk Derotain Mudsipper##14567
turnin Imperial Plate Bracer##7655 |goto 51.38,28.67
step
use the Plans: Imperial Plate Bracers##12690
Learn Imperial Plate Bracers |learn Imperial Plate Bracers##16649
step
collect 312 Thorium Bar##12359 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 295 |or
step
create 26 Imperial Plate Bracers##16649,Blacksmithing,295 |goto 51.39,28.71
|tip Stand next to an anvil.
|tip You may need to create more or less of these.
|tip Each additional Imperial Plate Bracer requires 12 Thorium Bars.
step
talk Derotain Mudsipper##14567
accept Imperial Plate Boots##7654 |goto Tanaris/0 51.38,28.67
accept Imperial Plate Chest##7656 |goto 51.38,28.67
stickystart "Collect_Thorium_Bar_7656"
step
collect 20 Thorium Bar##12359 |q 7654/1
|tip You collected these in a previous step.
step
label "Collect_Thorium_Bar_7656"
collect 30 Thorium Bar##12359 |q 7656/1
|tip You collected these in a previous step.
step
talk Derotain Mudsipper##14567
turnin Imperial Plate Boots##7654 |goto 51.38,28.67
turnin Imperial Plate Chest##7656 |goto 51.38,28.67
step
use the Plans: Imperial Plate Boots##12700
Learn Imperial Plate Boots |learn Imperial Plate Boots##16657
step
collect 90 Thorium Bar##12359 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 300 |or
step
create 5 Imperial Plate Boots##16657,Blacksmithing,300 |goto 51.39,28.71
|tip Stand next to an anvil.
|tip You may need to create more or less of these.
|tip Each additional Imperial Plate Boots requires 18 Thorium Bars.
step
use the Plans: Imperial Plate Chest##12705
Learn Imperial Plate Chest |learn Imperial Plate Chest##16663
step
Reach Level 58 |ding 58
|tip You must be at least level 58 to train Master professions in Outland.
|tip Use the leveling guides to accomplish this.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Burning Crusade-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Blacksmithing |confirm |next "Begin_Profession_Leveling_Outland" |or
'|complete skill("Blacksmithing") >= 350 |or |next "Begin_Profession_Leveling_Outland"
stickystart "Collect_Adamantite_Bar_Total"
stickystart "Collect_Netherweave_Cloth_Total"
step
map Hellfire Peninsula/0
path follow smart; loop on; ants curved; dist 30
path	61.18,53.16	59.42,53.54	56.91,53.92	54.90,54.86	53.18,55.25
path	51.34,55.20	49.90,55.60	49.04,57.45	50.16,60.83	49.02,60.92
path	47.44,58.77	46.76,60.05	46.20,62.02	47.37,63.98	47.83,65.81
path	47.16,66.47	45.79,66.60	44.21,65.76	41.71,62.02	40.00,64.07
path	39.07,67.14	37.06,68.58	35.58,67.87	34.61,66.03	35.33,62.85
path	35.81,58.67	35.29,58.94	32.35,61.33	30.85,59.67	29.71,63.05
path	29.26,65.43	27.21,66.94	27.80,69.02	30.66,71.05	30.28,73.48
path	29.34,78.32	28.78,80.65	26.73,79.28	25.47,77.69	25.43,73.63
path	26.11,68.83	23.56,68.58	22.88,67.22	23.04,64.10	23.13,61.46
path	23.99,59.63	25.37,57.94	26.67,56.30	28.01,52.46	26.17,52.80
path	22.27,53.94	20.01,54.64	18.67,53.50	17.72,54.20	16.52,56.20
path	16.24,60.79	15.43,63.53	13.94,63.05	12.48,60.03	11.43,57.48
path	9.19,53.83	7.40,50.44	8.67,48.71	11.35,46.39	11.48,40.72
path	11.84,36.43	12.94,35.24	15.02,37.15	18.23,39.09	18.73,43.72
path	20.37,43.29	22.88,44.31	25.01,44.71	26.26,42.90	27.05,39.10
path	27.99,35.60	30.10,33.23	32.56,33.16	34.21,32.05	34.96,28.98
path	36.33,30.40	34.65,39.54	34.51,46.14	35.32,48.06	38.11,52.58
path	39.16,52.09	40.60,52.56	42.91,54.76	45.15,55.66	46.32,54.44
path	46.57,52.82	45.70,51.11	43.85,48.65	41.20,45.62	38.61,43.47
path	38.32,39.65	39.38,34.88	39.54,31.73	39.45,28.32	41.05,28.70
path	44.26,31.10	47.36,29.11	49.58,28.68	52.45,22.67	53.60,25.94
path	55.01,30.04	52.77,31.72	47.83,36.33	46.62,44.84	50.12,49.28
path	54.39,48.02	62.02,47.32
click Fel Iron Deposit##181555+
|tip They look like rocky green mineral clusters along path.
|tip Track them on your minimap with "Find Minerals".
collect 326 Fel Iron Ore##23424 |n
|tip Smelt the ore at a forge.
collect 163 Fel Iron Bar##23445 |or
|tip Create them with Mining or purchase them from the auction house.
|tip You will need at least 300 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Blacksmithing") >= 340 |or
step
label "Collect_Adamantite_Bar_Total"
map Nagrand/0
path follow smart; loop on; ants curved; dist 30
path	49.90,71.01	48.62,71.28	48.51,75.60	46.76,77.91	42.77,74.39
path	42.08,76.76	41.94,80.24	41.11,84.55	38.45,83.23	36.21,82.30
path	33.57,82.12	31.13,80.54	28.19,78.49	27.67,72.30	28.58,69.31
path	28.20,63.62	27.06,62.92	26.75,57.07	23.44,56.18	20.07,55.07
path	19.35,47.46	20.31,41.40	21.27,38.46	23.05,33.49	26.76,32.99
path	31.77,28.76	31.71,24.26	30.40,20.66	35.78,15.50	36.87,18.62
path	39.06,20.24	41.69,21.71	42.81,19.43	50.53,20.11	54.00,21.00
path	56.63,24.36	60.66,33.11	64.21,35.14	66.06,36.31	66.14,32.27
path	67.70,35.36	70.24,37.57	74.08,37.81	72.33,43.08	73.43,46.30
path	73.01,50.47	72.77,56.93	74.94,58.55	71.99,61.95	72.67,64.73
path	72.21,67.00	71.71,71.30	72.96,76.49	70.91,75.13	68.49,75.92
path	66.66,79.00	63.17,76.97	61.93,79.13	58.74,80.27	56.19,79.78
path	54.59,81.99	51.75,79.79	49.42,82.67	47.62,81.24	48.39,79.11
click Adamantite Deposit##181556+ |notinsticky
click Rich Adamantite Deposit##181569+ |notinsticky
|tip They look like dark blue mineral clusters around this path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 180 Adamantite Ore##23425 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 90 Adamantite Bar##23446 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 325 Mining skill to mine Adamantite Deposits and 350 Mining skill to mine Rich Adamantite Deposits. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 350 |or
step
label "Collect_Netherweave_Cloth_Total"
map Shadowmoon Valley/0
path follow smart; loop on; ants curved; dist 20
path	51.1,58.8	53.0,59.3	53.2,60.5	52.8,63.2	52.8,65.4
path	52.9,69.0	52.5,71.8	47.3,71.1	45.8,71.3	45.2,69.2
path	45.6,66.1	48.0,67.2
Kill enemies around this area |notinsticky
collect 7 Netherweave Cloth##21877 |or
|tip Farm them from humanoid mobs in Outland or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 305 |or
step
label "Begin_Profession_Leveling_Outland"
talk Humphry##16823
|tip He walks around inside the building.
Train Master Blacksmithing |skillmax Blacksmithing,375 |goto Hellfire Peninsula/0 56.77,63.84
step
talk Humphry##16823
|tip He walks around inside the building.
Train Fel Weightstone |learn Fel Weightstone##34607 |goto 56.77,63.84
stickystart "Collect_Netherweave_Cloth_305"
step
map Hellfire Peninsula/0
path follow smart; loop on; ants curved; dist 30
path	61.18,53.16	59.42,53.54	56.91,53.92	54.90,54.86	53.18,55.25
path	51.34,55.20	49.90,55.60	49.04,57.45	50.16,60.83	49.02,60.92
path	47.44,58.77	46.76,60.05	46.20,62.02	47.37,63.98	47.83,65.81
path	47.16,66.47	45.79,66.60	44.21,65.76	41.71,62.02	40.00,64.07
path	39.07,67.14	37.06,68.58	35.58,67.87	34.61,66.03	35.33,62.85
path	35.81,58.67	35.29,58.94	32.35,61.33	30.85,59.67	29.71,63.05
path	29.26,65.43	27.21,66.94	27.80,69.02	30.66,71.05	30.28,73.48
path	29.34,78.32	28.78,80.65	26.73,79.28	25.47,77.69	25.43,73.63
path	26.11,68.83	23.56,68.58	22.88,67.22	23.04,64.10	23.13,61.46
path	23.99,59.63	25.37,57.94	26.67,56.30	28.01,52.46	26.17,52.80
path	22.27,53.94	20.01,54.64	18.67,53.50	17.72,54.20	16.52,56.20
path	16.24,60.79	15.43,63.53	13.94,63.05	12.48,60.03	11.43,57.48
path	9.19,53.83	7.40,50.44	8.67,48.71	11.35,46.39	11.48,40.72
path	11.84,36.43	12.94,35.24	15.02,37.15	18.23,39.09	18.73,43.72
path	20.37,43.29	22.88,44.31	25.01,44.71	26.26,42.90	27.05,39.10
path	27.99,35.60	30.10,33.23	32.56,33.16	34.21,32.05	34.96,28.98
path	36.33,30.40	34.65,39.54	34.51,46.14	35.32,48.06	38.11,52.58
path	39.16,52.09	40.60,52.56	42.91,54.76	45.15,55.66	46.32,54.44
path	46.57,52.82	45.70,51.11	43.85,48.65	41.20,45.62	38.61,43.47
path	38.32,39.65	39.38,34.88	39.54,31.73	39.45,28.32	41.05,28.70
path	44.26,31.10	47.36,29.11	49.58,28.68	52.45,22.67	53.60,25.94
path	55.01,30.04	52.77,31.72	47.83,36.33	46.62,44.84	50.12,49.28
path	54.39,48.02	62.02,47.32
click Fel Iron Deposit##181555+
|tip They look like rocky green mineral clusters along path.
|tip Track them on your minimap with "Find Minerals".
collect 326 Fel Iron Ore##23424 |n
|tip Smelt the ore at a forge.
collect 163 Fel Iron Bar##23445 |or
|tip Create them with Mining or purchase them from the auction house.
|tip You will need at least 300 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 156 of these; you will need them for future steps.
'|complete skill("Blacksmithing") >= 305 |or
step
label "Collect_Netherweave_Cloth_305"
map Shadowmoon Valley/0
path follow smart; loop on; ants curved; dist 20
path	51.1,58.8	53.0,59.3	53.2,60.5	52.8,63.2	52.8,65.4
path	52.9,69.0	52.5,71.8	47.3,71.1	45.8,71.3	45.2,69.2
path	45.6,66.1	48.0,67.2
Kill enemies around this area
collect 7 Netherweave Cloth##21877 |or
|tip Farm them from humanoid mobs in Outland or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 305 |or
step
create 7 Fel Weightstone##34607,Blacksmithing,305 |goto Hellfire Peninsula/0 56.75,63.86
|tip Stand next to an anvil.
|tip Inside the building.
|tip You may need to create more or less of these.
|tip Each additional Fel Weightstone requires 1 Fel Iron Bar and 1 Netherweave Cloth.
step
collect 44 Fel Iron Bar##23445 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 316 |or
step
talk Humphry##16823
|tip He walks around inside the building.
Train Fel Iron Plate Belt |learn Fel Iron Plate Belt##29547 |goto 56.77,63.84
step
create 11 Fel Iron Plate Belt##29547,Blacksmithing,316 |goto 56.75,63.86
|tip Stand next to an anvil.
|tip Inside the building.
step
collect 25 Fel Iron Bar##23445 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 321 |or
step
talk Humphry##16823
|tip He walks around inside the building.
Train Fel Iron Chain Gloves |learn Fel Iron Chain Gloves##29552 |goto Hellfire Peninsula/0 56.77,63.84
step
create 5 Fel Iron Chain Gloves##29552,Blacksmithing,321 |goto 56.75,63.86
|tip Stand next to an anvil.
|tip Inside the building.
step
collect 24 Fel Iron Bar##23445 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 325 |or
step
talk Humphry##16823
|tip He walks around inside the building.
Train Fel Iron Plate Boots |learn Fel Iron Plate Boots##29548 |goto 56.77,63.84
step
create 4 Fel Iron Plate Boots##29548,Blacksmithing,325 |goto 56.75,63.86
|tip Stand next to an anvil.
|tip Inside the building.
step
map Nagrand/0
path follow smart; loop on; ants curved; dist 30
path	49.90,71.01	48.62,71.28	48.51,75.60	46.76,77.91	42.77,74.39
path	42.08,76.76	41.94,80.24	41.11,84.55	38.45,83.23	36.21,82.30
path	33.57,82.12	31.13,80.54	28.19,78.49	27.67,72.30	28.58,69.31
path	28.20,63.62	27.06,62.92	26.75,57.07	23.44,56.18	20.07,55.07
path	19.35,47.46	20.31,41.40	21.27,38.46	23.05,33.49	26.76,32.99
path	31.77,28.76	31.71,24.26	30.40,20.66	35.78,15.50	36.87,18.62
path	39.06,20.24	41.69,21.71	42.81,19.43	50.53,20.11	54.00,21.00
path	56.63,24.36	60.66,33.11	64.21,35.14	66.06,36.31	66.14,32.27
path	67.70,35.36	70.24,37.57	74.08,37.81	72.33,43.08	73.43,46.30
path	73.01,50.47	72.77,56.93	74.94,58.55	71.99,61.95	72.67,64.73
path	72.21,67.00	71.71,71.30	72.96,76.49	70.91,75.13	68.49,75.92
path	66.66,79.00	63.17,76.97	61.93,79.13	58.74,80.27	56.19,79.78
path	54.59,81.99	51.75,79.79	49.42,82.67	47.62,81.24	48.39,79.11
click Adamantite Deposit##181556+
|tip They look like light blue mineral clusters around this path.
click Rich Adamantite Deposit##181569+
|tip They look like dark blue mineral clusters around this path.
|tip Track them on your minimap with "Find Minerals".
collect 180 Adamantite Ore##23425 |n
|tip Smelt the ore at a forge.
collect 90 Adamantite Bar##23446 |or
|tip Create them with Mining or purchase them from the auction house.
|tip You will need at least 325 Mining skill to mine Adamantite Deposits and 350 Mining skill to mine Rich Adamantite Deposits.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 45 of these, you will need them for a future step.
'|complete skill("Blacksmithing") >= 335 |or
step
talk Humphry##16823
|tip He walks around inside the building.
Train Lesser Rune of Warding |learn Lesser Rune of Warding##32284 |goto Hellfire Peninsula/0 56.77,63.84
step
create 45 Lesser Rune of Warding##32284,Blacksmithing,335
|tip You may need to create more or less of these.
|tip Each additional Rune of Warding requires 1 Adamantite Bar.
step
collect 63 Fel Iron Bar##23445 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 340 |or
step
talk Humphry##16823
|tip He walks around inside the building.
Train Fel Iron Chain Tunic |learn Fel Iron Chain Tunic##29556 |goto Hellfire Peninsula/0 56.77,63.84
step
create 7 Fel Iron Chain Tunic##29556,Blacksmithing,340 |goto 56.75,63.86
|tip Stand next to an anvil.
|tip Inside the building.
|tip You may need to create more or less of these.
|tip Each additional Fel Iron Chain Tunic requires 9 Fel Iron Bars.
step
talk Mari Stonehand##19373
buy 1 Plans: Lesser Ward of Shielding##23638 |goto Shadowmoon Valley/0 36.79,55.05 |or
|tip This is a limited supply item that can also be purchased from the auction house.
|tip If it is sold out it should restock in about 15-60 minutes.
'|complete skill("Blacksmithing") >= 350 |or
step
use the Plans: Lesser Ward of Shielding##23638
Learn Lesser Ward of Shielding |learn Lesser Ward of Shielding##29728
step
collect 45 Adamantite Bar##23446 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 350 |or
step
create 45 Lesser Ward of Shielding##29728,Blacksmithing,350 |goto Hellfire Peninsula/0 56.75,63.86
|tip Stand next to an anvil.
|tip Inside the building.
|tip You may need to create more or less of these.
|tip Each additional Lesser Ward of Shielding requires 1 Adamantite Bar.
step
Reach Level 68 |ding 68
|tip You must be at least level 68 to train Grand Master professions in Northrend.
|tip Use the leveling guides to accomplish this.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Lich King-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Blacksmithing |confirm |next "Begin_Profession_Leveling_Northrend" |or
'|complete skill("Blacksmithing") >= 450 |or |next "Begin_Profession_Leveling_Northrend"
stickystart "Collect_Saronite_Bars_Total"
stickystart "Collect_Titanium_Bars_Total"
stickystart "Collect_Crystallized_Air_Total"
stickystart "Collect_Eternal_Earth_Total"
stickystart "Collect_Eternal_Water_Total"
stickystart "Collect_Eternal_Shadow_Total"
step
map Howling Fjord/0
path follow smart; loop on; ants curved; dist 30
path	55.65,17.60	53.52,15.00	51.43,15.71	49.20,14.74	47.56,15.38
path	45.05,13.89	43.14,13.19	41.34,13.29	40.23,14.59	38.60,14.93
path	37.64,16.63	36.43,16.99	35.40,15.49	32.38,11.59	30.00,10.92
path	26.87,11.45	23.99,12.75	23.01,13.71	23.35,16.35	23.44,18.65
path	21.16,22.18	20.25,24.48	21.23,26.31	22.95,26.56	24.19,25.71
path	25.40,23.02	26.71,22.98	27.79,25.04	27.53,28.00	27.68,29.99
path	30.40,30.52	32.46,30.72	33.34,29.71	34.89,28.56	36.68,28.46
path	38.80,27.56	39.48,29.21	40.90,30.52	44.05,31.72	45.86,31.80
path	47.02,34.07	48.36,35.08	50.93,33.85	52.89,34.14	55.30,35.21
path	57.83,37.08	60.42,38.26	62.79,40.38	64.35,42.45	65.48,48.32
path	65.93,51.73	67.05,53.90	67.80,56.08	68.47,59.74	66.95,63.80
path	65.01,66.28	64.47,69.52	64.82,71.76	65.94,72.50	68.40,73.31
path	70.29,73.66	71.48,70.48	72.00,69.07	73.67,68.26	76.42,67.33
path	77.11,65.13	76.75,62.91	73.39,60.77	73.92,57.74	75.91,52.76
path	76.90,51.02	78.76,48.21	79.67,45.76	78.27,44.92	75.77,44.46
path	73.89,43.50	74.69,39.29	71.07,38.60	69.75,33.99	70.56,32.18
path	69.18,30.96	68.13,28.96	70.46,26.26	73.37,22.20	73.03,19.18
path	71.72,13.55	71.53,11.86	70.13,11.18	68.47,10.35	66.46,13.07
path	65.17,16.95	63.95,20.60	60.91,22.40	60.52,24.71	58.88,24.52
path	57.84,21.39	57.56,17.79	56.26,16.77
click Cobalt Deposit##189978+
click Rich Cobalt Deposit##189979+
|tip They look like large blue clusters of rock and crystals.
|tip Track them on your minimap with "Find Minerals".
collect 320 Cobalt Ore##36909 |n
|tip Smelt the ore at a forge.
collect 320 Cobalt Bar##36916 |or
|tip Create them with Mining or purchase them from the auction house.
|tip You will need at least 350 Mining skill to mine Cobalt Deposits and 375 Mining skill to mine Rich Cobalt Deposits.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Blacksmithing") >= 405 |or
step
label "Collect_Saronite_Bars_Total"
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	79.27,65.32	80.51,63.45	80.55,60.91	80.11,58.43	79.71,55.90
path	78.57,54.98	76.16,53.63	74.31,53.72	72.37,52.46	70.19,51.19
path	68.54,50.18	68.10,49.16	68.42,47.09	71.54,42.33	71.77,41.02
path	70.80,39.72	69.17,39.54	66.84,39.75	65.22,39.43	63.46,37.28
path	62.15,34.64	60.96,31.35	58.97,32.07	56.70,33.49	55.46,34.36
path	53.15,36.55	51.51,36.91	49.18,36.87	46.07,35.95	44.29,39.29
path	40.80,40.94	40.12,42.66	39.54,44.03	38.93,44.94	38.07,48.02
path	38.18,49.57	37.68,51.43	36.63,51.07	35.74,50.18	34.32,48.74
path	32.65,48.37	32.04,50.86	32.76,53.74	31.75,57.06	31.27,59.57
path	30.57,62.54	31.30,66.34	32.34,69.72	34.25,69.54	36.01,70.86
path	37.83,69.46	38.62,68.21	40.71,66.06	42.62,65.37	47.84,65.25
path	49.03,63.72	49.25,62.37	47.89,57.80	48.08,53.78	48.13,50.05
path	48.61,47.04	51.44,45.25	55.15,43.88	57.87,43.96	59.59,46.21
path	61.20,47.93	62.33,50.75	62.58,54.26	64.21,56.39	65.31,59.10
path	66.48,61.81	66.37,64.78	67.17,70.17	67.87,70.86	69.35,69.71
path	72.29,67.71	72.82,64.27	73.82,61.06	76.10,61.31	77.53,63.76
click Saronite Deposit##189980+ |notinsticky
click Rich Saronite Deposit##189981+ |notinsticky
|tip They look like large green clusters of rock and crystals. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 1058 Saronite Ore##36912 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 529 Saronite Bar##36913 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 400 Mining skill to mine Saronite Deposits and 425 Mining skill to mine Rich Saronite Deposits. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You will need more than this, but your final 5 points will be green so your totals will vary. |notinsticky
'|complete skill("Blacksmithing") >= 400 |or
step
label "Collect_Titanium_Bars_Total"
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	79.27,65.32	80.51,63.45	80.55,60.91	80.11,58.43	79.71,55.90
path	78.57,54.98	76.16,53.63	74.31,53.72	72.37,52.46	70.19,51.19
path	68.54,50.18	68.10,49.16	68.42,47.09	71.54,42.33	71.77,41.02
path	70.80,39.72	69.17,39.54	66.84,39.75	65.22,39.43	63.46,37.28
path	62.15,34.64	60.96,31.35	58.97,32.07	56.70,33.49	55.46,34.36
path	53.15,36.55	51.51,36.91	49.18,36.87	46.07,35.95	44.29,39.29
path	40.80,40.94	40.12,42.66	39.54,44.03	38.93,44.94	38.07,48.02
path	38.18,49.57	37.68,51.43	36.63,51.07	35.74,50.18	34.32,48.74
path	32.65,48.37	32.04,50.86	32.76,53.74	31.75,57.06	31.27,59.57
path	30.57,62.54	31.30,66.34	32.34,69.72	34.25,69.54	36.01,70.86
path	37.83,69.46	38.62,68.21	40.71,66.06	42.62,65.37	47.84,65.25
path	49.03,63.72	49.25,62.37	47.89,57.80	48.08,53.78	48.13,50.05
path	48.61,47.04	51.44,45.25	55.15,43.88	57.87,43.96	59.59,46.21
path	61.20,47.93	62.33,50.75	62.58,54.26	64.21,56.39	65.31,59.10
path	66.48,61.81	66.37,64.78	67.17,70.17	67.87,70.86	69.35,69.71
path	72.29,67.71	72.82,64.27	73.82,61.06	76.10,61.31	77.53,63.76
click Titanium Vein##191133+ |notinsticky
|tip They look like large blue clusters of rock and crystals. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
|tip They share spawns with Saronite Deposits, so gather those as well. |notinsticky
collect 50 Titanium Ore##36910 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 25 Titanium Bar##41163 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 450 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 430 |or
step
label "Collect_Crystallized_Air_Total"
kill Scion of Storm##30184+ |notinsticky
|tip Inside the cave. |notinsticky
collect 22 Crystallized Air##37700 |goto The Storm Peaks/0 67.73,41.55 |or
|tip Farm them from air elementals or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 416 |or
step
label "Collect_Eternal_Earth_Total"
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	69.56,57.80	70.04,60.18	72.14,60.08	72.84,57.52	74.78,55.78
path	72.60,54.62	69.13,55.36
use Crystallized Earth##37701 |notinsticky
|tip Combine 10 Crystallized Earth into 1 Eternal Earth. |notinsticky
kill Lifeblood Elemental##29124+ |notinsticky
collect 35 Eternal Earth##35624 |or
|tip Farm them from earth elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Mining nodes with Northrend Mining guides. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You will need more than this, but your final 5 points will be green so your totals will vary. |notinsticky
'|complete skill("Blacksmithing") >= 445 |or
step
label "Collect_Eternal_Water_Total"
kill Boiling Spirit##25419+ |notinsticky
use the Crystallized Water##37705 |notinsticky
|tip Combine 10 Crystallized Water into 1 Eternal Water. |notinsticky
collect 13 Eternal Water##35622 |goto Borean Tundra/0 46.94,13.40 |or
|tip Farm them from water elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Cobalt Deposits with the Northrend Mining guide. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 425 |or
step
label "Collect_Eternal_Shadow_Total"
Enter the cave |goto Dragonblight/0 74.24,23.64 < 30 |walk |notinsticky
kill Deathbringer Revenant##27382+ |notinsticky
|tip Inside the cave. |notinsticky
use the Crystallized Shadow##37703 |notinsticky
|tip Combine 10 Crystallized Shadow into 1 Eternal Shadow. |notinsticky
collect 13 Eternal Shadow##35627 |or
|tip Farm them from shadow mobs or purchase them from the auction house. |notinsticky
|tip You can also farm them from Saronite Deposits with the Northrend Mining guide. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 425 |or
step
label "Begin_Profession_Leveling_Northrend"
talk Alard Schmied##92183
|tip Inside the building.
Train Grand Master Blacksmithing |skillmax Blacksmithing,450 |goto Dalaran/1 45.32,27.70
step
talk Alard Schmied##92183
|tip Inside the building.
Train Cobalt Boots |learn Cobalt Boots##52569 |goto Dalaran/1 45.32,27.70
step
map Howling Fjord/0
path follow smart; loop on; ants curved; dist 30
path	55.65,17.60	53.52,15.00	51.43,15.71	49.20,14.74	47.56,15.38
path	45.05,13.89	43.14,13.19	41.34,13.29	40.23,14.59	38.60,14.93
path	37.64,16.63	36.43,16.99	35.40,15.49	32.38,11.59	30.00,10.92
path	26.87,11.45	23.99,12.75	23.01,13.71	23.35,16.35	23.44,18.65
path	21.16,22.18	20.25,24.48	21.23,26.31	22.95,26.56	24.19,25.71
path	25.40,23.02	26.71,22.98	27.79,25.04	27.53,28.00	27.68,29.99
path	30.40,30.52	32.46,30.72	33.34,29.71	34.89,28.56	36.68,28.46
path	38.80,27.56	39.48,29.21	40.90,30.52	44.05,31.72	45.86,31.80
path	47.02,34.07	48.36,35.08	50.93,33.85	52.89,34.14	55.30,35.21
path	57.83,37.08	60.42,38.26	62.79,40.38	64.35,42.45	65.48,48.32
path	65.93,51.73	67.05,53.90	67.80,56.08	68.47,59.74	66.95,63.80
path	65.01,66.28	64.47,69.52	64.82,71.76	65.94,72.50	68.40,73.31
path	70.29,73.66	71.48,70.48	72.00,69.07	73.67,68.26	76.42,67.33
path	77.11,65.13	76.75,62.91	73.39,60.77	73.92,57.74	75.91,52.76
path	76.90,51.02	78.76,48.21	79.67,45.76	78.27,44.92	75.77,44.46
path	73.89,43.50	74.69,39.29	71.07,38.60	69.75,33.99	70.56,32.18
path	69.18,30.96	68.13,28.96	70.46,26.26	73.37,22.20	73.03,19.18
path	71.72,13.55	71.53,11.86	70.13,11.18	68.47,10.35	66.46,13.07
path	65.17,16.95	63.95,20.60	60.91,22.40	60.52,24.71	58.88,24.52
path	57.84,21.39	57.56,17.79	56.26,16.77
click Cobalt Deposit##189978+
click Rich Cobalt Deposit##189979+
|tip They look like large blue clusters of rock and crystals.
|tip Track them on your minimap with "Find Minerals".
collect 40 Cobalt Ore##36909 |n
|tip Smelt the ore at a forge.
collect 40 Cobalt Bar##36916 |or
|tip Create them with Mining or purchase them from the auction house.
|tip You will need at least 350 Mining skill to mine Cobalt Deposits and 375 Mining skill to mine Rich Cobalt Deposits.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 280 of these; you will need them for future steps.
'|complete skill("Blacksmithing") >= 360 |or
step
create 10 Cobalt Boots##52569,Blacksmithing,360 |goto Dalaran/1 44.96,28.11
|tip Stand next to an anvil inside the building.
step
collect 40 Cobalt Bar##36916 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 370 |or
step
talk Alard Schmied##92183
|tip Inside the building.
Train Cobalt Triangle Shield |learn Cobalt Triangle Shield##54550 |goto Dalaran/1 45.32,27.70
step
create 10 Cobalt Triangle Shield##54550,Blacksmithing,370 |goto Dalaran/1 44.96,28.11
|tip Stand next to an anvil inside the building.
step
collect 25 Cobalt Bar##36916 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 375 |or
step
talk Alard Schmied##92183
|tip Inside the building.
Train Cobalt Legplates |learn Cobalt Legplates##52567 |goto Dalaran/1 45.32,27.70
step
create 5 Cobalt Legplates##52567,Blacksmithing,375 |goto Dalaran/1 44.96,28.11
|tip Stand next to an anvil inside the building.
step
collect 25 Cobalt Bar##36916 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 380 |or
step
talk Alard Schmied##92183
|tip Inside the building.
Train Cobalt Gauntlets |learn Cobalt Gauntlets##55835 |goto Dalaran/1 45.32,27.70
step
create 5 Cobalt Gauntlets##55835,Blacksmithing,380 |goto Dalaran/1 44.96,28.11
|tip Stand next to an anvil inside the building.
step
collect 35 Cobalt Bar##36916 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 385 |or
step
talk Alard Schmied##92183
|tip Inside the building.
Train Spiked Cobalt Boots |learn Spiked Cobalt Boots##54918 |goto Dalaran/1 45.32,27.70
step
create 5 Spiked Cobalt Boots##54918,Blacksmithing,385 |goto Dalaran/1 44.96,28.11
|tip Stand next to an anvil inside the building.
step
collect 35 Cobalt Bar##36916 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 390 |or
step
talk Alard Schmied##92183
|tip Inside the building.
Train Spiked Cobalt Shoulders |learn Spiked Cobalt Shoulders##54941 |goto Dalaran/1 45.32,27.70
step
create 5 Spiked Cobalt Shoulders##54941,Blacksmithing,390 |goto Dalaran/1 44.96,28.11
|tip Stand next to an anvil inside the building.
step
collect 50 Cobalt Bar##36916 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 395 |or
step
talk Alard Schmied##92183
|tip Inside the building.
Train Notched Cobalt War Axe |learn Notched Cobalt War Axe##55204 |goto Dalaran/1 45.32,27.70
step
create 5 Notched Cobalt War Axe##55204,Blacksmithing,395 |goto Dalaran/1 44.96,28.11
|tip Stand next to an anvil inside the building.
stickystart "Collect_Cobalt_Bars_400"
step
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	79.27,65.32	80.51,63.45	80.55,60.91	80.11,58.43	79.71,55.90
path	78.57,54.98	76.16,53.63	74.31,53.72	72.37,52.46	70.19,51.19
path	68.54,50.18	68.10,49.16	68.42,47.09	71.54,42.33	71.77,41.02
path	70.80,39.72	69.17,39.54	66.84,39.75	65.22,39.43	63.46,37.28
path	62.15,34.64	60.96,31.35	58.97,32.07	56.70,33.49	55.46,34.36
path	53.15,36.55	51.51,36.91	49.18,36.87	46.07,35.95	44.29,39.29
path	40.80,40.94	40.12,42.66	39.54,44.03	38.93,44.94	38.07,48.02
path	38.18,49.57	37.68,51.43	36.63,51.07	35.74,50.18	34.32,48.74
path	32.65,48.37	32.04,50.86	32.76,53.74	31.75,57.06	31.27,59.57
path	30.57,62.54	31.30,66.34	32.34,69.72	34.25,69.54	36.01,70.86
path	37.83,69.46	38.62,68.21	40.71,66.06	42.62,65.37	47.84,65.25
path	49.03,63.72	49.25,62.37	47.89,57.80	48.08,53.78	48.13,50.05
path	48.61,47.04	51.44,45.25	55.15,43.88	57.87,43.96	59.59,46.21
path	61.20,47.93	62.33,50.75	62.58,54.26	64.21,56.39	65.31,59.10
path	66.48,61.81	66.37,64.78	67.17,70.17	67.87,70.86	69.35,69.71
path	72.29,67.71	72.82,64.27	73.82,61.06	76.10,61.31	77.53,63.76
click Saronite Deposit##189980+
click Rich Saronite Deposit##189981+
|tip They look like large green clusters of rock and crystals.
|tip Track them on your minimap with "Find Minerals".
collect 1058 Saronite Ore##36912 |n
|tip Smelt the ore at a forge.
collect 529 Saronite Bar##36913 |or
|tip Create them with Mining or purchase them from the auction house.
|tip You will need at least 400 Mining skill to mine Saronite Deposits and 425 Mining skill to mine Rich Saronite Deposits.
|tip These totals are approximate.
|tip You will need more than this, but your final 5 points will be green so your totals will vary.
|tip Save at least 504 of these; you will need them for future steps.
'|complete skill("Blacksmithing") >= 400 |or
step
label "Collect_Cobalt_Bars_400"
collect 30 Cobalt Bar##36916 |or
|tip You collected these in a previous step. |notinsticky
'|complete skill("Blacksmithing") >= 400 |or
step
talk Alard Schmied##92183
|tip Inside the building.
Train Brilliant Saronite Belt |learn Brilliant Saronite Belt##59436 |goto Dalaran/1 45.32,27.70
step
create 5 Brilliant Saronite Belt##59436,Blacksmithing,400 |goto Dalaran/1 44.96,28.11
|tip Stand next to an anvil inside the building.
step
collect 40 Cobalt Bar##36916 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 405 |or
step
talk Alard Schmied##92183
|tip Inside the building.
Train Horned Cobalt Helm |learn Horned Cobalt Helm##54949 |goto Dalaran/1 45.32,27.70
step
create 5 Horned Cobalt Helm##54949,Blacksmithing,405 |goto Dalaran/1 44.96,28.11
|tip Stand next to an anvil inside the building.
stickystart "Collect_Saronite_Bar_416"
step
kill Scion of Storm##30184+
|tip Inside the cave.
collect 22 Crystallized Air##37700 |goto The Storm Peaks/0 67.73,41.55 |or
|tip Farm them from air elementals or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Blacksmithing") >= 416 |or
step
label "Collect_Saronite_Bar_416"
collect 77 Saronite Bar##36913 |or
|tip You collected these in a previous step. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 416 |or
step
talk Alard Schmied##92183
|tip Inside the building.
Train Deadly Saronite Dirk |learn Deadly Saronite Dirk##55206 |goto Dalaran/1 45.32,27.70
step
create 11 Deadly Saronite Dirk##55206,Blacksmithing,416 |goto Dalaran/1 44.96,28.11
|tip Stand next to an anvil inside the building.
|tip You may need to create more of these.
|tip Each additional Deadly Saronite Dirk requires 7 Saronite Bars and 2 Crystallized Air.
stickystart "Collect_Eternal_Water_425"
stickystart "Collect_Eternal_Shadow_425"
stickystart "Collect_Saronite_Bar_425"
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	69.56,57.80	70.04,60.18	72.14,60.08	72.84,57.52	74.78,55.78
path	72.60,54.62	69.13,55.36
use the Crystallized Earth##37701
|tip Combine 10 Crystallized Earth into 1 Eternal Earth.
kill Lifeblood Elemental##29124+
collect 35 Eternal Earth##35624 |or
|tip Farm them from earth elementals or purchase them from the auction house.
|tip You can also farm them from Mining nodes with Northrend Mining guides.
|tip These totals are approximate.
|tip You will need more than this, but your final 5 points will be green so your totals will vary.
|tip Save at least 22 of these; you will need them for future steps.
'|complete skill("Blacksmithing") >= 425 |or
step
label "Collect_Eternal_Water_425"
kill Boiling Spirit##25419+ |notinsticky
use the Crystallized Water##37705 |notinsticky
|tip Combine 10 Crystallized Water into 1 Eternal Water. |notinsticky
collect 13 Eternal Water##35622 |goto Borean Tundra/0 46.94,13.40 |or
|tip Farm them from water elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Cobalt Deposits with the Northrend Mining guide. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 425 |or
step
label "Collect_Eternal_Shadow_425"
Enter the cave |goto Dragonblight/0 74.24,23.64 < 30 |walk |notinsticky
kill Deathbringer Revenant##27382+ |notinsticky
|tip Inside the cave. |notinsticky
use the Crystallized Shadow##37703 |notinsticky
|tip Combine 10 Crystallized Shadow into 1 Eternal Shadow. |notinsticky
collect 13 Eternal Shadow##35627 |or
|tip Farm them from shadow mobs or purchase them from the auction house. |notinsticky
|tip You can also farm them from Saronite Deposits with the Northrend Mining guide. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 425 |or
step
label "Collect_Saronite_Bar_425"
collect 52 Saronite Bar##36913 |or
|tip You collected these in a previous step. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 425 |or
step
talk Alard Schmied##92183
|tip Inside the building.
Train Eternal Belt Buckle |learn Eternal Belt Buckle##55656 |goto Dalaran/1 45.32,27.70
|tip There are cheaper alternatives, but this sells well.
step
create 13 Eternal Belt Buckle##55656,Blacksmithing,425 |goto Dalaran/1 44.96,28.11
|tip There are cheaper alternatives, but this sells well.
|tip Stand next to an anvil inside the building.
|tip You may need to create more or less of these.
|tip Each additional Eternal Belt Buckle requires 4 Saronite Bars, 1 Eternal Earth, 1 Eternal Water, and 1 Eternal Shadow.
stickystart "Collect_Saronite_Bar_430"
step
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	79.27,65.32	80.51,63.45	80.55,60.91	80.11,58.43	79.71,55.90
path	78.57,54.98	76.16,53.63	74.31,53.72	72.37,52.46	70.19,51.19
path	68.54,50.18	68.10,49.16	68.42,47.09	71.54,42.33	71.77,41.02
path	70.80,39.72	69.17,39.54	66.84,39.75	65.22,39.43	63.46,37.28
path	62.15,34.64	60.96,31.35	58.97,32.07	56.70,33.49	55.46,34.36
path	53.15,36.55	51.51,36.91	49.18,36.87	46.07,35.95	44.29,39.29
path	40.80,40.94	40.12,42.66	39.54,44.03	38.93,44.94	38.07,48.02
path	38.18,49.57	37.68,51.43	36.63,51.07	35.74,50.18	34.32,48.74
path	32.65,48.37	32.04,50.86	32.76,53.74	31.75,57.06	31.27,59.57
path	30.57,62.54	31.30,66.34	32.34,69.72	34.25,69.54	36.01,70.86
path	37.83,69.46	38.62,68.21	40.71,66.06	42.62,65.37	47.84,65.25
path	49.03,63.72	49.25,62.37	47.89,57.80	48.08,53.78	48.13,50.05
path	48.61,47.04	51.44,45.25	55.15,43.88	57.87,43.96	59.59,46.21
path	61.20,47.93	62.33,50.75	62.58,54.26	64.21,56.39	65.31,59.10
path	66.48,61.81	66.37,64.78	67.17,70.17	67.87,70.86	69.35,69.71
path	72.29,67.71	72.82,64.27	73.82,61.06	76.10,61.31	77.53,63.76
click Titanium Vein##191133+
|tip They look like large blue clusters of rock and crystals.
|tip Track them on your minimap with "Find Minerals".
|tip They share spawns with Saronite Deposits, so gather those as well.
collect 50 Titanium Ore##36910 |n
|tip Smelt the ore at a forge.
collect 25 Titanium Bar##41163 |or
|tip Create them with Mining or purchase them from the auction house.
|tip You will need at least 450 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Blacksmithing") >= 430 |or
label "Collect_Saronite_Bar_430"
step
collect 77 Saronite Bar##36913 |or
|tip You collected these in a previous step. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 430 |or
step
talk Alard Schmied##92183
|tip Inside the building.
Train Titanium Weapon Chain |learn Titanium Weapon Chain##55839 |goto Dalaran/1 45.32,27.70
step
create 7 Titanium Weapon Chain##55839,Blacksmithing,430 |goto Dalaran/1 44.96,28.11
|tip Stand next to an anvil inside the building.
|tip You may need to create more of these.
|tip Each additional Titanium Weapon Chain requires 2 Saronite Bars and 1 Titanium Bar.
stickystart "Collect_Saronite_Bar_435"
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	69.56,57.80	70.04,60.18	72.14,60.08	72.84,57.52	74.78,55.78
path	72.60,54.62	69.13,55.36
use the Crystallized Earth##37701
|tip Combine 10 Crystallized Earth into 1 Eternal Earth.
kill Lifeblood Elemental##29124+
collect 5 Eternal Earth##35624 |or
|tip Farm them from earth elementals or purchase them from the auction house.
|tip You can also farm them from Mining nodes with Northrend Mining guides.
|tip These totals are approximate.
|tip You may need slightly more than the indicated amount.
'|complete skill("Blacksmithing") >= 435 |or
step
label "Collect_Saronite_Bar_435"
collect 60 Saronite Bar##36913 |or
|tip You collected these in a previous step. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 435 |or
step
talk Alard Schmied##92183
|tip Inside the building.
Train Daunting Handguards |learn Daunting Handguards##55301 |goto Dalaran/1 45.32,27.70
step
create 5 Daunting Handguards##55301,Blacksmithing,435 |goto Dalaran/1 44.96,28.11
|tip Stand next to an anvil inside the building.
|tip You may need to create more of these.
|tip Each additional Daunting Handguards requires 12 Saronite Bars and 1 Eternal Earth.
stickystart "Collect_Saronite_Bar_445"
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	69.56,57.80	70.04,60.18	72.14,60.08	72.84,57.52	74.78,55.78
path	72.60,54.62	69.13,55.36
use the Crystallized Earth##37701
|tip Combine 10 Crystallized Earth into 1 Eternal Earth.
kill Lifeblood Elemental##29124+
collect 17 Eternal Earth##35624 |or
|tip Farm them from earth elementals or purchase them from the auction house.
|tip You can also farm them from Mining nodes with Northrend Mining guides.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Blacksmithing") >= 445 |or
step
label "Collect_Saronite_Bar_445"
collect 238 Saronite Bar##36913 |or
|tip You collected these in a previous step. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 445 |or
step
talk Alard Schmied##92183
|tip Inside the building.
Train Daunting Legplates |learn Daunting Legplates##55303 |goto Dalaran/1 45.32,27.70
step
create 17 Daunting Legplates##55303,Blacksmithing,445 |goto Dalaran/1 44.96,28.11
|tip Stand next to an anvil inside the building.
|tip You may need to create more or less of these.
|tip Each additional Daunting Legplates requires 14 Saronite Bars and 1 Eternal Earth.
step
create Daunting Legplates##55303,Blacksmithing,450 |goto Dalaran/1 44.96,28.11
|tip Stand next to an anvil inside the building.
|tip From this point on, you can create any green recipe requiring 14 Saronite Bars.
|tip Titansteel items are also an option, but are very expensive.
|tip Each additional Daunting Legplates requires 14 Saronite Bars and 1 Eternal Earth.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Cataclysm-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Blacksmithing |confirm |next "Begin_Blacksmithing_Leveling_Cataclysm" |or
'|complete skill("Blacksmithing") >= 525 |or |next "Begin_Blacksmithing_Leveling_Cataclysm"
stickystart "Collect_Obsidium_Bars_Total"
stickystart "Collect_Titanium_Bars_Total"
stickystart "Collect_Volatile_Earth_Total"
stickystart "Collect_Volatile_Fire_Total"
stickystart "Collect_Hardened_Elementium_Total"
step
label "Collect_Obsidium_Bars_Total"
map Mount Hyjal/0
path follow smart; loop on; ants straight; dist 30
path	64.52,32.82	59.54,32.60	54.43,28.82	51.95,17.39	46.03,25.96
path	43.53,26.94	41.14,21.81	35.52,23.56	33.12,24.51	32.25,29.77
path	33.96,33.62	30.51,39.40	27.14,38.97	27.15,36.08	24.15,32.92
path	13.59,37.50	10.03,36.02	15.27,46.43	17.82,54.98	20.48,59.09
path	24.63,59.77	29.20,55.47	33.08,52.54	35.89,51.99	36.52,57.46
path	33.75,64.34	39.87,63.17	49.68,58.94	55.81,57.37	58.34,56.00
path	62.24,58.01	65.04,53.21	68.69,55.16	72.55,58.55	74.49,62.92
path	78.12,59.42	83.94,60.29	87.31,54.46	87.18,49.22	80.70,51.98
click Obsidium Deposit##202736+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 780 Obsidium Ore##53038 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 390 Obsidium Bar##54849 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 450 Mining skill to mine Obsidium Deposits |notinsticky
'|complete skill("Blacksmithing") >= 455 |or
step
label "Collect_Elementium_Bars_Total"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	37.63,88.45	41.95,87.09	45.86,86.00	51.33,81.88	55.69,79.72
path	57.97,77.60	49.80,75.94	43.68,75.44	40.53,71.45	39.24,68.14
path	38.23,62.09	38.59,58.11	45.30,51.07	49.00,46.94	50.07,44.64
path	50.95,37.93	55.43,38.55	58.32,38.52	60.65,37.79	63.05,41.91
path	65.17,42.27	67.34,37.88	64.34,33.11	61.76,28.47	57.60,25.19
path	54.90,22.38	52.20,20.68	47.53,20.83	42.75,20.33	40.20,23.77
path	41.81,28.12	38.78,30.69	37.34,37.09	37.22,39.43	36.85,46.91
path	37.04,52.83	34.85,59.65	29.33,66.94	31.85,71.82	35.72,73.45
path	37.97,78.84
click Elementium Vein##202738+ |notinsticky
click Rich Elementium Vein##202741+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 640 Elementium Ore##52185 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 320 Elementium Bar##52186 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 500 Mining skill to mine Elementium Deposits |notinsticky
'|complete skill("Blacksmithing") >= 525 |or
step
label "Collect_Volatile_Earth_Total"
map Mount Hyjal/0
path follow smart; loop on; ants curved
path	68.29,25.32	67.93,22.53	66.51,20.84	64.49,19.55	62.87,19.94
path	63.88,22.98	65.24,22.46	65.70,27.28	66.63,28.76
kill Scalding Rock Elemental##40229+
collect 10 Volatile Earth##52327 |or
'|complete skill("Blacksmithing") >= 470 |or
step
label "Collect_Volatile_Fire_Total"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 150 Volatile Fire##52325 |or
'|complete skill("Blacksmithing") >= 525 |or
step
label "Collect_Hardened_Elementium_Total"
collect 2 Hardened Elementium Bar##53039 |or
|tip Smelt them with Mining or purchase them from the Auction House.
|tip Each Hardened Elementium Bar requires 10 Elementium Bars and 4 Volatile Earth
'|complete skill("Blacksmithing") >= 521 |or
step
label "Begin_Blacksmithing_Leveling_Cataclysm"
talk Therum Deepforge##5511
Train Illustrious Grand Master Blacksmithing |skillmax Blacksmithing,525 |goto Stormwind City/0 63.67,37.00
|tip You must be at least level 75.
step
map Mount Hyjal/0
path follow smart; loop on; ants straight; dist 30
path	64.52,32.82	59.54,32.60	54.43,28.82	51.95,17.39	46.03,25.96
path	43.53,26.94	41.14,21.81	35.52,23.56	33.12,24.51	32.25,29.77
path	33.96,33.62	30.51,39.40	27.14,38.97	27.15,36.08	24.15,32.92
path	13.59,37.50	10.03,36.02	15.27,46.43	17.82,54.98	20.48,59.09
path	24.63,59.77	29.20,55.47	33.08,52.54	35.89,51.99	36.52,57.46
path	33.75,64.34	39.87,63.17	49.68,58.94	55.81,57.37	58.34,56.00
path	62.24,58.01	65.04,53.21	68.69,55.16	72.55,58.55	74.49,62.92
path	78.12,59.42	83.94,60.29	87.31,54.46	87.18,49.22	80.70,51.98
click Obsidium Deposit##202736+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 780 Obsidium Ore##53038 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 390 Obsidium Bar##54849 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 450 Mining skill to mine Obsidium Deposits |notinsticky
'|complete skill("Blacksmithing") >= 455 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 195 Folded Obsidium>_
|tip Make all of these, you will need them later.
Reach 455 Blacksmithing |skill Blacksmithing,455 |goto Stormwind City/0 63.66,36.64
step
talk Therum Deepforge##5511
learn Redsteel Bracers##76262 |goto Stormwind City/0 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Redsteel Bracers>_
Reach 460 Blacksmithing |skill Blacksmithing,460 |goto Stormwind City/0 63.66,36.64
step
talk Therum Deepforge##5511
learn Redsteel Belt##76264 |goto Stormwind City/0 63.67,37.00
step
map Mount Hyjal/0
path follow smart; loop on; ants curved
path	68.29,25.32	67.93,22.53	66.51,20.84	64.49,19.55	62.87,19.94
path	63.88,22.98	65.24,22.46	65.70,27.28	66.63,28.76
kill Scalding Rock Elemental##40229+
collect 10 Volatile Earth##52327 |or
'|complete skill("Blacksmithing") >= 470 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Redsteel Belt>_
Reach 470 Blacksmithing |skill Blacksmithing,470 |goto Stormwind City/0 63.66,36.64
step
talk Therum Deepforge##5511
learn Redsteel Boots##76265 |goto Stormwind City/0 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Redsteel Boots>_
Reach 475 Blacksmithing |skill Blacksmithing,475 |goto Stormwind City/0 63.66,36.64
step
talk Therum Deepforge##5511
learn Obsidium Skeleton Key##76438 |goto Stormwind City/0 63.67,37.00
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Obsidium Skeleton Key>_
|tip You may need to create a few more.
Reach 485 Blacksmithing |skill Blacksmithing,485 |goto Stormwind City/0 63.66,36.64
step
talk Therum Deepforge##5511
learn Redsteel Shoulders##76266 |goto Stormwind City/0 63.67,37.00
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	37.63,88.45	41.95,87.09	45.86,86.00	51.33,81.88	55.69,79.72
path	57.97,77.60	49.80,75.94	43.68,75.44	40.53,71.45	39.24,68.14
path	38.23,62.09	38.59,58.11	45.30,51.07	49.00,46.94	50.07,44.64
path	50.95,37.93	55.43,38.55	58.32,38.52	60.65,37.79	63.05,41.91
path	65.17,42.27	67.34,37.88	64.34,33.11	61.76,28.47	57.60,25.19
path	54.90,22.38	52.20,20.68	47.53,20.83	42.75,20.33	40.20,23.77
path	41.81,28.12	38.78,30.69	37.34,37.09	37.22,39.43	36.85,46.91
path	37.04,52.83	34.85,59.65	29.33,66.94	31.85,71.82	35.72,73.45
path	37.97,78.84
click Elementium Vein##202738+ |notinsticky
click Rich Elementium Vein##202741+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 60 Elementium Ore##52185 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 30 Elementium Bar##52186 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 500 Mining skill to mine Elementium Deposits |notinsticky
'|complete skill("Blacksmithing") >= 490 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Redsteel Shoulders>_
Reach 490 Blacksmithing |skill Blacksmithing,490 |goto Stormwind City/0 63.66,36.64
step
talk Therum Deepforge##5511
learn Redsteel Legguards##76267 |goto Stormwind City/0 63.67,37.00
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	37.63,88.45	41.95,87.09	45.86,86.00	51.33,81.88	55.69,79.72
path	57.97,77.60	49.80,75.94	43.68,75.44	40.53,71.45	39.24,68.14
path	38.23,62.09	38.59,58.11	45.30,51.07	49.00,46.94	50.07,44.64
path	50.95,37.93	55.43,38.55	58.32,38.52	60.65,37.79	63.05,41.91
path	65.17,42.27	67.34,37.88	64.34,33.11	61.76,28.47	57.60,25.19
path	54.90,22.38	52.20,20.68	47.53,20.83	42.75,20.33	40.20,23.77
path	41.81,28.12	38.78,30.69	37.34,37.09	37.22,39.43	36.85,46.91
path	37.04,52.83	34.85,59.65	29.33,66.94	31.85,71.82	35.72,73.45
path	37.97,78.84
click Elementium Vein##202738+ |notinsticky
click Rich Elementium Vein##202741+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 140 Elementium Ore##52185 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 70 Elementium Bar##52186 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 500 Mining skill to mine Elementium Deposits |notinsticky
'|complete skill("Blacksmithing") >= 500 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Redsteel Legguards>_
Reach 500 Blacksmithing |skill Blacksmithing,500 |goto Stormwind City/0 63.66,36.64
step
talk Therum Deepforge##5511
learn Hardened Obsidium Breastplate##76261 |goto Stormwind City/0 63.67,37.00
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	37.63,88.45	41.95,87.09	45.86,86.00	51.33,81.88	55.69,79.72
path	57.97,77.60	49.80,75.94	43.68,75.44	40.53,71.45	39.24,68.14
path	38.23,62.09	38.59,58.11	45.30,51.07	49.00,46.94	50.07,44.64
path	50.95,37.93	55.43,38.55	58.32,38.52	60.65,37.79	63.05,41.91
path	65.17,42.27	67.34,37.88	64.34,33.11	61.76,28.47	57.60,25.19
path	54.90,22.38	52.20,20.68	47.53,20.83	42.75,20.33	40.20,23.77
path	41.81,28.12	38.78,30.69	37.34,37.09	37.22,39.43	36.85,46.91
path	37.04,52.83	34.85,59.65	29.33,66.94	31.85,71.82	35.72,73.45
path	37.97,78.84
click Elementium Vein##202738+ |notinsticky
click Rich Elementium Vein##202741+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 120 Elementium Ore##52185 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 60 Elementium Bar##52186 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 500 Mining skill to mine Elementium Deposits |notinsticky
'|complete skill("Blacksmithing") >= 510 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Hardened Obsidium Breastplate>_
Reach 510 Blacksmithing |skill Blacksmithing,510 |goto Stormwind City/0 63.66,36.64
step
talk Kaita Deepforge##5512
buy 1 Plans: Vicious Pyrium Belt##66119 |goto Stormwind City/0 63.63,37.76
|tip This costs 20 Elementium Bars.
step
use the Plans: Vicious Pyrium Belt##66119
learn Vicious Pyrium Belt##76458
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	37.63,88.45	41.95,87.09	45.86,86.00	51.33,81.88	55.69,79.72
path	57.97,77.60	49.80,75.94	43.68,75.44	40.53,71.45	39.24,68.14
path	38.23,62.09	38.59,58.11	45.30,51.07	49.00,46.94	50.07,44.64
path	50.95,37.93	55.43,38.55	58.32,38.52	60.65,37.79	63.05,41.91
path	65.17,42.27	67.34,37.88	64.34,33.11	61.76,28.47	57.60,25.19
path	54.90,22.38	52.20,20.68	47.53,20.83	42.75,20.33	40.20,23.77
path	41.81,28.12	38.78,30.69	37.34,37.09	37.22,39.43	36.85,46.91
path	37.04,52.83	34.85,59.65	29.33,66.94	31.85,71.82	35.72,73.45
path	37.97,78.84
click Elementium Vein##202738+ |notinsticky
click Rich Elementium Vein##202741+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 200 Elementium Ore##52185 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 100 Elementium Bar##52186 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 500 Mining skill to mine Elementium Deposits |notinsticky
'|complete skill("Blacksmithing") >= 520 |or
step
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 100 Volatile Fire##52325 |or
'|complete skill("Blacksmithing") >= 520 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Vicious Pyrium Belt>_
Reach 520 Blacksmithing |skill Blacksmithing,520 |goto Stormwind City/0 63.66,36.64
step
talk Kaita Deepforge##5512
buy 1 Plans: Vicious Pyrium Boots##66120 |goto Stormwind City/0 63.63,37.76
|tip This costs 2 Hardened Elementium Bars.
step
use the Plans: Vicious Pyrium Boots##66120
learn Vicious Pyrium Boots##76459
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	37.63,88.45	41.95,87.09	45.86,86.00	51.33,81.88	55.69,79.72
path	57.97,77.60	49.80,75.94	43.68,75.44	40.53,71.45	39.24,68.14
path	38.23,62.09	38.59,58.11	45.30,51.07	49.00,46.94	50.07,44.64
path	50.95,37.93	55.43,38.55	58.32,38.52	60.65,37.79	63.05,41.91
path	65.17,42.27	67.34,37.88	64.34,33.11	61.76,28.47	57.60,25.19
path	54.90,22.38	52.20,20.68	47.53,20.83	42.75,20.33	40.20,23.77
path	41.81,28.12	38.78,30.69	37.34,37.09	37.22,39.43	36.85,46.91
path	37.04,52.83	34.85,59.65	29.33,66.94	31.85,71.82	35.72,73.45
path	37.97,78.84
click Elementium Vein##202738+ |notinsticky
click Rich Elementium Vein##202741+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 120 Elementium Ore##52185 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 60 Elementium Bar##52186 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 500 Mining skill to mine Elementium Deposits |notinsticky
'|complete skill("Blacksmithing") >= 525 |or
step
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 50 Volatile Fire##52325 |or
'|complete skill("Blacksmithing") >= 525 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Vicious Pyrium Boots>_
Reach 525 Blacksmithing |skill Blacksmithing,525 |goto Stormwind City/0 63.66,36.64
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
talk Daryl Riknussun##5159
|tip Inside the building.
Train Apprentice Cooking |skillmax Cooking,75 |goto Ironforge/0 60.08,36.44
step
talk Daryl Riknussun##5159
|tip Inside the building.
Train Spice Bread |learn Spice Bread##37836 |goto Ironforge/0 60.08,36.44
step
talk Emrul Riknussun##5160
|tip Downstairs inside the building.
buy 60 Simple Flour##30817 |goto 59.88,37.36 |complete skill("Cooking") >= 40
buy 60 Mild Spices##2678 |goto 59.88,37.36 |complete skill("Cooking") >= 40
|tip These totals are approximate.
|tip You may need more or less than the indicated amounts.
step
create 60 Spice Bread##37836,Cooking,40 |goto 78.41,52.76
|tip Stand next to the fire downstairs inside the building.
|tip You may need to create more or less of these.
|tip Each additional Spice Bread requires 1 Simple Flour and 1 Mild Spices.
step
Enter the building |goto Loch Modan/0 35.23,47.74 < 5 |walk
talk Drac Roughcut##1465
|tip Inside the building.
buy Recipe: Smoked Bear Meat##6892 |goto Loch Modan/0 35.57,49.15 |or
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
create 25 Smoked Bear Meat##8607,Cooking,65
stickystart "Collect_Clam_Meat_110"
step
map Westfall/0
path follow smart; loop off; dist 20
path	51.32,9.67	49.06,10.01	44.72,8.70	41.78,10.34	38.85,13.51
path	36.20,18.29	33.45,22.08	31.88,24.30
Kill Crawler enemies around this area
|tip You can find more further down the coast.
collect 30 Crawler Meat##2674 |or
|tip You can also purchase them from the Auction House.
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 130 |or
step
label "Collect_Clam_Meat_110"
Kill Murloc enemies around this area
|tip They are found all along the coastline. |notinsticky
collect Small Barnacled Clam##5523 |n
use the Small Barnacled Clam##5523
collect 65 Clam Meat##5503 |goto Westfall/0 37.26,15.67 |or
|tip You can also purchase them from the Auction House. |notinsticky
|tip This total is approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
You can find more around [31.16,26.10] |notinsticky
'|complete skill("Cooking") >= 110 |or
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Stormwind City/0 75.14,55.26 < 7 |walk
talk Stephen Ryback##5482
|tip Downstairs inside the building.
Train Journeyman Cooking |skillmax Cooking,150 |goto Stormwind City/0 78.17,53.09
step
talk Stephen Ryback##5482
|tip Downstairs inside the building.
Train Boiled Clams |learn Boiled Clams##6499 |goto Stormwind City/0 78.17,53.09
step
talk Erika Tate##5483
|tip Downstairs inside the building.
buy 65 Refreshing Spring Water##159 |goto Stormwind City/0 78.53,52.88 |or
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 110 |or
step
create 65 Boiled Clams##6499,Cooking,110 |goto Stormwind City/0 78.41,52.76
|tip Stand next to the Warm Fire.
|tip Downstairs inside the building.
|tip You may need to create more or less of these.
|tip Each additional Boiled Clams requires 1 Refreshing Spring Water and 1 Clam Meat.
step
talk Stephen Ryback##5482
|tip Downstairs inside the building.
Train Crab Cake |learn Crab Cake##2544 |goto Stormwind City/0 78.17,53.09
step
collect 30 Crawler Meat##2674 |or
|tip You collected these in a previous step.
'|complete skill("Cooking") >= 130 |or
step
create 30 Crab Cake##2544,Cooking,130 |goto 78.41,52.76
|tip Stand next to the Warm Fire.
|tip Downstairs inside the building.
|tip You may need to create more or less of these.
|tip Each additional Crab Cake requires 1 Crawler Meat.
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Stephen Ryback##5482
|tip Downstairs inside the building.
Train Expert Cooking |skillmax Cooking,225 |goto Stormwind City/0 78.17,53.09
step
talk Kendor Kabonka##340
|tip Upstairs inside the building.
buy Recipe: Curiously Tasty Omelet##3682 |goto Stormwind City/0 77.46,52.69 |or
'|complete skill("Cooking") >= 175 |or
step
use the Recipe: Curiously Tasty Omelet##3682
Train Curiously Tasty Omelet |learn Curiously Tasty Omelet##3376
stickystart "Collect_Raptor_Flesh_225"
step
label "Collect_Raptor_Egg_175"
map Northern Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	25.65,30.22	27.84,30.72	29.96,31.83	31.18,32.26	32.43,30.42
path	31.93,27.74
Kill Raptor enemies around this area
collect 50 Raptor Egg##3685 |or
|tip You can also purchase them from the Auction House.
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 175 |or
step
map Northern Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	25.65,30.22	27.84,30.72	29.96,31.83	31.18,32.26	32.43,30.42
path	31.93,27.74
Kill Raptor enemies around this area
collect 50 Raptor Egg##3685 |or
|tip You can also purchase them from the Auction House.
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 175 |or
step
label "Collect_Raptor_Flesh_225"
map Northern Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	25.65,30.22	27.84,30.72	29.96,31.83	31.18,32.26	32.43,30.42
path	31.93,27.74
Kill Raptor enemies around this area |notinsticky
collect 60 Raptor Flesh##12184 |or
|tip You can also purchase them from the Auction House. |notinsticky
|tip This total is approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|goto 23.70,15.50 < 20 |noway |c |or
'|complete skill("Cooking") >= 225 |or
step
map Northern Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	25.65,30.22	27.84,30.72	29.96,31.83	31.18,32.26	32.43,30.42
path	31.93,27.74
Kill Raptor enemies around this area |notinsticky
collect 60 Raptor Flesh##12184 |or
|tip You can also purchase them from the Auction House. |notinsticky
|tip This total is approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|goto 30.64,25.20 < 20 |noway |c |next "Collect_Raptor_Flesh_225"
'|complete skill("Cooking") >= 225 |or
step
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 50 Curiously Tasty Omelet##3376,Cooking,175
|tip You may need to create more or less of these.
|tip Each additional Curiously Tasty Omelet requires 1 Raptor Egg.
step
talk Corporal Bluth##734
buy Recipe: Roast Raptor##12228 |goto Northern Stranglethorn/0 47.43,10.25 |or
'|complete skill("Cooking") >= 225 |or
step
use the Recipe: Roast Raptor##12228
Train Roast Raptor |learn Roast Raptor##15855
step
collect 60 Raptor Flesh##12184 |or
|tip You collected these in a previous step.
'|complete skill("Cooking") >= 225 |or
step
create 60 Roast Raptor##15855,Cooking,225 |goto Stranglethorn Vale/0 37.97,3.37
|tip Stand next to the Campfire.
|tip You may need to create more or less of these.
|tip Each additional Roast Raptor requires 1 Raptor Flesh.
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
talk Stephen Ryback##5482
|tip Downstairs inside the building.
Train Artisan Cook |skillmax Cooking,300 |goto Stormwind City/0 78.17,53.09
step
map Swamp of Sorrows/0
path follow smart; loop on; ants straight; dist 30
path    77.46,15.12    80.68,18.58    83.43,23.29    85.60,28.56    86.31,33.62
path    87.89,39.45    85.10,34.88    83.14,32.35    80.09,28.28    77.54,24.75
Kill Swampstrider##45825+
collect 25 Giant Egg##12207 |or
|tip You can also purchase them from the Auction House.
'|complete skill("Cooking") >= 250 |or
step
Enter the building |goto Winterspring/0 61.32,38.72 < 5 |walk
talk Himmik##11187
|tip Inside the building.
buy Recipe: Monster Omelet##16110 |goto Winterspring/0 61.33,39.16 |or
'|complete skill("Cooking") >= 250 |or
step
use the Recipe: Monster Omelet##16110
Train Monster Omelet |learn Monster Omelet##15933
step
collect 25 Giant Egg##12207 |or
|tip You collected these in a previous step.
'|complete skill("Cooking") >= 250 |or
step
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 25 Monster Omelet##15933,Cooking,250
step
map Western Plaguelands/0
path follow smart; loop on; ants straight; dist 30
path    36.30,68.88    34.38,66.55    32.49,63.98    30.81,61.08    32.01,57.50
path    34.03,56.96    35.48,60.53    36.80,62.77
Kill Black Bear enemies along the path
collect 40 Bear Flank##35562 |or
|tip You can also purchase them from the Auction House.
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 285 |or
step
talk Stephen Ryback##5482
|tip Downstairs inside the building.
Train Juicy Bear Burger |learn Juicy Bear Burger##46688 |goto Stormwind City/0 78.17,53.09
step
collect 40 Bear Flank##35562 |or
|tip You collected these in a previous step.
'|complete skill("Cooking") >= 285 |or
step
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 40 Juicy Bear Burger##46688,Cooking,285
|tip You may need to create more or less of these.
|tip Each additional Juicy Bear Burger requires 1 Bear Flank.
step
talk Calandrath##15174
|tip Inside the building.
accept Desert Recipe##8307 |goto Silithus/0 51.89,39.16
stickystart "Collect_Sandworm_Meat"
step
click Sandy Cookbook
|tip On top of the crate.
turnin Desert Recipe##8307 |goto 37.94,45.31
accept Sharing the Knowledge##8313 |goto 37.94,45.31
step
label "Collect_Sandworm_Meat"
map Silithus/0
path follow smart; loop on; ants curved; dist 30
path	44.73,41.29	43.72,45.81	43.40,48.38	42.63,50.73	41.42,51.75
path	40.45,54.97	41.09,56.54	42.12,57.30	41.96,59.20	40.50,60.27
path	38.55,61.67	36.31,62.24	35.67,60.89	36.01,57.50	35.12,55.26
path	35.21,53.68	35.45,52.12	35.12,50.24	34.31,48.30	32.81,47.01
path	30.57,46.79	29.76,44.20	29.08,40.59	29.92,38.17	31.75,34.54
path	31.98,32.02	33.58,29.80	34.53,28.08	34.44,26.71	33.99,24.05
path	34.75,21.51	36.48,21.96	37.91,24.93	37.65,29.13	38.97,30.64
path	38.68,33.00	37.51,35.17	38.65,37.25	40.68,38.35	41.48,39.36
path	43.54,38.16	45.19,38.49	45.40,40.18
Kill Dredge enemies along the path
|tip Kill sandworm creatures.
collect 15 Sandworm Meat##20424 |or
'|complete skill("Cooking") >= 300 |or
step
talk Calandrath##15174
|tip Inside the building.
turnin Sharing the Knowledge##8313 |goto 51.89,39.16
step
Train Smoked Desert Dumplings |learn Smoked Desert Dumplings##24801
|tip You will learn this automatically.
step
create 15 Smoked Desert Dumplings##24801,Cooking,300 |goto Silithus/0 50.91,38.36
|tip Stand next to the Cooking Brazier.
step
talk Gaston##18987
|tip Inside the building.
Train Master Cooking |skillmax Cooking,375 |goto Hellfire Peninsula/0 54.03,63.57
step
talk Sid Limbardi##16826
|tip Inside the building.
buy Recipe: Ravager Dog##27688 |goto 54.22,63.60 |or
'|complete skill("Cooking") >= 325 |or
step
use Recipe: Ravager Dog##27688
Train Ravager Dog |learn Ravager Dog##33284
step
Kill Thornfang enemies around this area
|tip They spawn on both sides of the road.
collect 30 Ravager Flesh##27674 |goto Hellfire Peninsula/0 10.26,51.72 |or
|tip You can also purchase them from the Auction House.
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 325 |or
step
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 30 Ravager Dog##33284,Cooking,325
|tip You may need to create more or less of these.
|tip Each additional Ravager Dog requires 1 Ravager Flesh.
step
talk Supply Officer Mills##19038
|tip Inside the building.
buy Recipe: Warp Burger##27692 |goto Terokkar Forest/0 55.73,53.04 |or
'|complete skill("Cooking") >= 350 |or
step
use the Recipe: Warp Burger##27692
Train Warp Burger |learn Warp Burger##33288
step
map Terokkar Forest/0
path follow smart; loop on; ants curved; dist 30
path	59.59,49.54	59.65,48.37	59.41,47.25	58.99,46.28	58.50,45.39
path	57.90,44.76	57.18,43.95	56.84,43.13	56.14,42.55	55.56,41.51
path	55.48,40.53	55.57,39.33	55.32,38.38	55.25,37.11	55.19,35.86
path	55.41,34.98	55.94,34.37	56.30,33.13	57.61,32.39	58.54,31.61
path	59.68,31.15	60.97,30.39	62.24,30.51	63.31,31.03	64.49,31.48
path	65.61,32.16	66.88,32.68	68.19,33.22	68.50,34.23	68.02,35.84
path	66.65,35.82	65.98,36.47	64.64,35.75	62.90,35.26	62.08,35.51
path	61.30,36.73	60.98,38.58	60.84,40.23	61.19,41.87	61.17,43.04
path	60.95,45.16	60.68,46.73	59.72,48.94
kill Warp Stalker##18464+
collect 40 Warped Flesh##27681 |or
|tip You can also purchase them from the Auction House.
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 350 |or
step
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 40 Warp Burger##33288,Cooking,350
|tip You may need to create more or less of these.
|tip Each additional Warp Burger requires 1 Warped Flesh.
step
Reach Level 68 |ding 68
|tip You must be at least level 68 to train Grand Master professions in Northrend.
|tip Use the leveling guides to accomplish this.
step
label "Begin_Farming_Rhino_Meat"
map Borean Tundra/0
path follow smart; loop on; ants curved; dist 30
path	47.21,48.30	44.24,47.61	41.18,46.20	40.98,44.66	41.46,41.47
path	42.96,40.00	43.64,40.96	45.77,41.70	46.85,43.10	47.89,46.20
Kill Wooly Rhino enemies along the path
collect Rhino Meat##43012 |n
'|goto 47.89,46.20 < 30 |c |noway
step
map Borean Tundra/0
path follow smart; loop on; ants curved; dist 30
path	50.60,68.96	49.51,72.06	47.53,73.94	44.84,74.30	42.65,74.76
path	40.52,72.87	41.06,70.43	43.42,70.41	45.00,70.40	47.12,70.14
path	48.70,69.55	50.08,66.87
Kill Wooly Rhino enemies along the path
collect Rhino Meat##43012 |n
'|goto 50.08,66.87 < 30 |c |noway |next "Begin_Farming_Rhino_Meat"
step
talk Rollick MacKreel##26989
Train Grand Master Cooking |skillmax Cooking,450 |goto Borean Tundra/0 57.92,71.54
step
talk Rollick MacKreel##26989
accept Northern Cooking##13088 |goto 57.92,71.54
step
collect 4 Chilled Meat##43013 |q 13088/1
|tip You collected these in a previous step.
step
talk Rollick MacKreel##26989
turnin Northern Cooking##13088 |goto 57.92,71.54
step
Train Northern Stew |learn Northern Stew##57421
|tip You will learn this automatically.
step
collect 23 Chilled Meat##43013 |or
|tip You collected these in a previous step.
'|complete skill("Cooking") >= 365 |or
step
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 23 Northern Stew##57421,Cooking,365
|tip You may need to create more or less of these.
|tip Each additional Northern Stew requires 1 Chilled Meat.
step
talk Archmage Pentarus##28160
accept Where in the World is Hemet Nesingwary?##12521 |goto Dalaran/1 68.55,42.05
step
talk Archmage Pentarus##28160
Tell him _"I'm ready to fly to Sholazar Basin."_
Begin Flying to Sholazar Basin |invehicle |goto 68.55,42.05 |q 12521
step
Fly to Sholazar Basin |goto Sholazar Basin/0 39.11,56.87 < 20 |c |q 12521 |notravel
step
talk Monte Muzzleshot##27987
turnin Where in the World is Hemet Nesingwary?##12521 |goto 39.68,58.66
accept Welcome to Sholazar Basin##12489 |goto 39.68,58.66
step
talk Debaar##28032
accept Venture Co. Misadventure##12524 |goto 27.24,59.89
step
talk Hemet Nesingwary##27986
turnin Welcome to Sholazar Basin##12489 |goto 27.10,58.64
step
talk Weslex Quickwrench##28033
accept Need an Engine, Take an Engine##12522 |goto 25.35,58.47
step
click Flying Machine Engine##190447
collect Flying Machine Engine##38334 |q 12522/1 |goto 38.67,56.73
step
Kill Venture Co. enemies around this area
Kill #15# Venture Company Members |q 12524/1 |goto 35.10,47.89
step
talk Debaar##28032
turnin Venture Co. Misadventure##12524 |goto 27.24,59.89
accept Wipe That Grin Off His Face##12525 |goto 27.24,59.89
step
talk Weslex Quickwrench##28033
turnin Need an Engine, Take an Engine##12522 |goto 25.35,58.47
accept Have a Part, Give a Part##12523 |goto 25.35,58.47
stickystart "Collect_Venture_Co_Spare_Parts"
step
kill Meatpie##28188 |q 12525/2 |goto 35.97,50.34
|tip He looks like a blue ogre that walks up and down this platform, and around this area.
step
kill Foreman Swindlegrin##28186 |q 12525/1 |goto 35.67,50.16
|tip He walks around on top of this platform.
step
label "Collect_Venture_Co_Spare_Parts"
click Venture Co. Spare Parts##190455
|tip They look like metal assorted parts on the ground around this area.
collect 7 Venture Co. Spare Parts##38349 |q 12523/1 |goto 35.10,47.89
step
talk Debaar##28032
turnin Wipe That Grin Off His Face##12525 |goto 27.24,59.89
step
talk Weslex Quickwrench##28033
turnin Have a Part, Give a Part##12523 |goto 25.35,58.47
step
talk Buck Cantwell##28031
accept Dreadsaber Mastery: Becoming a Predator##12549 |goto 26.67,59.03
step
talk Hemet Nesingwary##27986
accept Rhino Mastery: The Test##12520 |goto 27.09,58.65
stickystart "Kill_Shardhorn_Rhinos"
step
kill 15 Dreadsaber##28001 |q 12549/1 |goto 25.23,53.59
step
label "Kill_Shardhorn_Rhinos"
kill 15 Shardhorn Rhino##28009 |q 12520/1 |goto 25.23,53.59
step
talk Buck Cantwell##28031
turnin Dreadsaber Mastery: Becoming a Predator##12549 |goto 26.67,59.03
step
talk Hemet Nesingwary##27986
turnin Rhino Mastery: The Test##12520 |goto 27.09,58.64
step
talk Grimbooze Thunderbrew##29157
accept Some Make Lemonade, Some Make Liquor##12634 |goto 26.78,60.07
step
label "Collect_Orange"
click Sturdy Vine##190622
|tip They look like brown vines that hang from trees around this area.
talk Adventurous Dwarf##28604+
|tip Rarely, a Dwarf will fall down.
|tip Ask them for an orange.
click Orange##190624
collect Orange##38656 |q 12634/1 |goto 42.84,63.34
step
label "Collect_Banana_Bunches"
click Sturdy Vine##190622
|tip They look like brown vines that hang from trees around this area.
talk Adventurous Dwarf##28604+
|tip Rarely, a Dwarf will fall down.
|tip Ask them for a bunch of bananas.
click Banana Bunch##190625
collect 2 Banana Bunch##38653 |q 12634/2 |goto 42.84,63.34
step
label "Collect_Papaya"
click Sturdy Vine##190622
|tip They look like brown vines that hang from trees around this area.
talk Adventurous Dwarf##28604+
|tip Rarely, a Dwarf will fall down.
|tip Ask them for a papaya.
click Papaya##190623
collect Papaya##38655 |q 12634/3 |goto 42.84,63.34
step
talk Grimbooze Thunderbrew##29157
turnin Some Make Lemonade, Some Make Liquor##12634 |goto 26.78,60.07
accept Still At It##12644 |goto 26.78,60.07
step
talk "Tipsy" McManus##28566
Tell him _"I'm ready to start the distillation, uh, Tipsy."_
Click Here After Starting the Distillation |confirm |goto 26.67,59.99 |q 12644
step
Perform the Distillation
|tip Stand here, you can reach all of the objects you need to click from here.
|tip Click the items on the ground or on the machine that he yells at you during the process, it's random.
click Thunderbrew's Jungle Punch##190643
|tip It looks like a wooden barrel that appears near you after you complete the distillation.
collect Thunderbrew's Jungle Punch##38688 |q 12644/1 |goto 26.71,59.83
step
talk Grimbooze Thunderbrew##29157
turnin Still At It##12644 |goto 26.78,60.07
accept The Taste Test##12645 |goto 26.78,60.07
step
use the Jungle Punch Sample##38697
|tip Use it on Hadrius Harlowe.
Watch the dialogue
Complete Hadrius' Taste Test |q 12645/2 |goto 27.4,59.4
step
use the Jungle Punch Sample##38697
|tip Use it on Hemet Nesingwary.
Watch the dialogue
Complete Hemet's Taste Test |q 12645/1 |goto 27.10,58.64
step
use the Jungle Punch Sample##38697
|tip Use it on Tamara Wobblesprocket.
Watch the dialogue
Complete Tamara's Taste Test |q 12645/3 |goto 50.48,62.13
step
talk Grimbooze Thunderbrew##29157
turnin The Taste Test##12645 |goto 26.78,60.07
step
talk Washed-Up Mage##13571
accept Fletcher's Lost and Found##13571 |goto Dalaran/0 43.18,24.40
step
talk Washed-Up Mage##13571
turnin Fletcher's Lost and Found##13571 |goto Dalaran/0 43.18,24.40
step
Train Kungaloosh |learn Kungaloosh##53056
|tip You will learn this automatically.
step
talk Applebough##96990
buy 100 Tundra Berries##35949 |goto Dalaran/1 43.07,57.01 |complete skill("Cooking") >= 400
buy 50 Savory Snowplum##35948 |goto Dalaran/1 43.07,57.01 |complete skill("Cooking") >= 400
step
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 50 Kungaloosh##53056,Cooking,400
|tip You may need to create more or less of these.
|tip Each additional Kungaloosh requires 2 Tundra Berries and 1 Savory Snowplum.
step
Reach 450 Cooking Skill |skill Cooking,450 |goto Dalaran/1 40.56,65.64 |or
|tip From this point, you will need to complete Cooking daily quests in Dalaran for Epicurean's Awards.
|tip Recipes can be purchased from Derek Odds in Dalaran for 3 Epicuran's Awards each.
|tip Each recipe requires 1 Northern Spices per cook, which can be purchased from the auction house or obtained by completing Cooking daily quests.
|tip Pick a recipe with food that is useful to you, and load the farming guide to farm around 60 of each material.
|tip You will need to create around 60 of these recipes to reach 450 Cooking skill.
Click Here to Load the "Dalaran Cooking Dailies" Daily Quest Guide |confirm |loadguide "Dailies Guides\\Wrath of the Lich King\\Dalaran Cooking Dailies"
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Cataclysm-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Cooking |confirm |next "Begin_Cooking_Leveling_Cataclysm" |or
'|complete skill("Cooking") >= 450 |only if default |or |next "Begin_Cooking_Leveling_Cataclysm"
stickystart "Collect_Turtle_Tongue_Total"
stickystart "Collect_Crocolisk_Tail_Total"
step
kill Brinescale Serpent##39948+
collect 25 Snake Eye##62780 |goto Kelp'thar Forest/0 56.28,37.89
|tip Farm them or purchase them from the Auction House.
|only if skill("Cooking") < 475
step
label "Collect_Turtle_Tongue_Total"
kill Speckled Sea Turtle##40223+
collect 40 Giant Turtle Tongue##62781 |goto Kelp'thar Forest/0 50.94,41.57
|tip Farm them or purchase them from the Auction House.
|only if skill("Cooking") < 500
step
label "Collect_Crocolisk_Tail_Total"
map Uldum/0
path follow smart; loop on; ants straight; dist 30
path    54.61,46.14    56.17,50.11    57.47,51.67    57.87,54.07    58.63,56.98
path    59.04,60.18    60.49,60.70    60.27,57.55    59.86,55.26    59.19,52.69
path    58.55,51.06    57.82,50.05    57.67,47.17    57.21,45.34    55.83,44.88
Kill Crocolisk along the path
collect 35 Crocolisk Tail##62784
|tip Farm them or purchase them from the Auction House.
|only if skill("Cooking") < 525
step
label "Begin_Cooking_Leveling_Cataclysm"
talk Robby Flay##42288
Train Illustrious Grand Master Cooking |skillmax Cooking,525 |goto Stormwind City/0 50.56,71.89
|tip You must be at least level 75.
step
talk Robby Flay##42288
learn Darkbrew Lager##88015 |goto Stormwind City/0 50.56,71.89
step
Enter the building |goto Stormwind City/0 42.26,81.79 < 10 |walk
talk Jarel Moor##1305
|tip Inside the building.
buy 30 Skin of Dwarven Stout##2596 |goto Stormwind City/0 41.96,82.72
|only if skill("Cooking") < 460
step
talk Jarel Moor##1305
|tip Inside the building.
buy 15 Jug of Badlands Bourbon##2595 |goto Stormwind City/0 41.96,82.72
|only if skill("Cooking") < 460
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 10 Darkbrew Lager>_
Reach 460 Cooking |skill Cooking,460
step
earn 9 Epicurean's Award##81
|tip Use the "Dalaran Cooking Daily Guide" and "Main City Cooking Dailies" guides to accomplish this.
|tip You will generally earn three to five per day.
step
talk Jon Casper##49701
buy 1 Recipe: Salted Eye##65410 |goto Stormwind City/0 50.43,71.86
|only if skill("Cooking") < 475
step
use the Recipe: Salted Eye##65410
learn Salted Eye##88035
step
kill Brinescale Serpent##39948+
collect 25 Snake Eye##62780 |goto Kelp'thar Forest/0 56.28,37.89
|tip Farm them purchase them from the Auction House.
|only if skill("Cooking") < 475
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 15 Salted Eye>_
|tip You may need to make a few more.
Reach 475 Cooking |skill Cooking,475
step
talk Jon Casper##49701
buy 1 Recipe: Tender Baked Turtle##65419 |goto Stormwind City/0 50.43,71.86
|only if skill("Cooking") < 500
step
use the Recipe: Tender Baked Turtle##65419
learn Tender Baked Turtle##88046
step
kill Speckled Sea Turtle##40223+
collect 40 Giant Turtle Tongue##62781 |goto Kelp'thar Forest/0 50.94,41.57
|tip Farm them or purchase them from the Auction House.
|only if skill("Cooking") < 500
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 25 Tender Baked Turtle>_
|tip You may need to make a few more.
Reach 500 Cooking |skill Cooking,500
step
talk Jon Casper##49701
buy 1 Recipe: Beer-Basted Crocolisk##65429 |goto Stormwind City/0 50.43,71.86
|only if skill("Cooking") < 500
step
use the Recipe: Beer-Basted Crocolisk##65429
learn Beer-Basted Crocolisk##88005
step
map Uldum/0
path follow smart; loop on; ants straight; dist 30
path    54.61,46.14    56.17,50.11    57.47,51.67    57.87,54.07    58.63,56.98
path    59.04,60.18    60.49,60.70    60.27,57.55    59.86,55.26    59.19,52.69
path    58.55,51.06    57.82,50.05    57.67,47.17    57.21,45.34    55.83,44.88
Kill Crocolisk along the path
collect 35 Crocolisk Tail##62784
|tip Farm them or purchase them from the Auction House.
|only if skill("Cooking") < 525
step
_<Create a Cooking Fire>_
Open Your Cooking Crafting Panel:
_<Create 25 Beer-Basted Crocolisk>_
|tip You may need to make a few more.
Reach 525 Cooking |skill Cooking,525
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Cooking + Fishing (1-525)",{
author="support@zygorguides.com",
condition_suggested=function() return (skill('Cooking') > 0) or (skill('Fishing') > 0) end,
description="This guide will walk you through leveling both your Cooking and Fishing skills from 1-525, together.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 before you can learn professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Elwynn Forest/0 42.96,65.65 <7 |walk
talk Tomas##1430
|tip Inside the building.
Train Apprentice Cooking |skillmax Cooking,75 |goto Elwynn Forest/0 44.36,65.99
step
talk Tharynn Bouden##66
buy Recipe: Brilliant Smallfish##6325 |goto Elwynn Forest/0 41.82,67.16 |complete knowspell(7751)
buy Recipe: Longjaw Mud Snapper##6328 |goto Elwynn Forest/0 41.82,67.16 |complete knowspell(7753)
|tip Save this, you will need it later.
buy Fishing Pole##6256 |goto Elwynn Forest/0 41.82,67.16 |complete skill("Fishing") >= 75
|tip You need a fishing pole equipped to fish.
buy 10 Shiny Bauble##6529 |goto Elwynn Forest/0 41.82,67.16 |complete skill("Fishing") >= 75
step
use the Recipe: Brilliant Smallfish##6325
Train Brilliant Smallfish |learn Brilliant Smallfish##7751
step
talk Lee Brown##1651
Train Apprentice Fishing |skillmax Fishing,75 |goto Elwynn Forest/0 47.61,62.32
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto Elwynn Forest/0 47.70,62.58 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto Elwynn Forest/0 47.70,62.58 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto Elwynn Forest/0 47.70,62.58 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto Elwynn Forest/0 47.70,62.58 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto Elwynn Forest/0 47.70,62.58 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto Elwynn Forest/0 47.70,62.58 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto Elwynn Forest/0 47.70,62.58 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Elwynn Forest/0 47.70,62.58 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Elwynn Forest/0 47.70,62.58 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto Elwynn Forest/0 47.70,62.58 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto Elwynn Forest/0 47.70,62.58 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto Elwynn Forest/0 47.70,62.58 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete skill("Fishing") >= 75 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Shiny Bauble##6529
|tip Use it on your Fishing Pole.
|tip It will grant you +25 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
Reach Skill 75 in Fishing |skill Fishing,75 |goto Elwynn Forest/0 47.70,62.58
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Shiny Bauble##6529
|tip Use it on your Fishing Pole.
|tip It will grant you +25 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
collect 60 Raw Brilliant Smallfish##6291 |goto Elwynn Forest/0 47.70,62.58 |or
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 65 |or
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Lee Brown##1651
Train Journeyman Fishing |skillmax Fishing,150 |goto Elwynn Forest/0 47.61,62.32
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto Stormwind City/0 54.75,68.91 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto Stormwind City/0 54.75,68.91 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto Stormwind City/0 54.75,68.91 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto Stormwind City/0 54.75,68.91 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto Stormwind City/0 54.75,68.91 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto Stormwind City/0 54.75,68.91 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto Stormwind City/0 54.75,68.91 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Stormwind City/0 54.75,68.91 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Stormwind City/0 54.75,68.91 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto Stormwind City/0 54.75,68.91 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto Stormwind City/0 54.75,68.91 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto Stormwind City/0 54.75,68.91 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete skill("Fishing") >= 125 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
|tip You don't need bait in these waters.
Reach Skill 125 in Fishing |skill Fishing,125 |goto Stormwind City/0 54.75,68.91
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Arnold Leland##5493
Train Expert Fishing |skillmax Fishing,225 |goto Stormwind City/0 54.99,69.65
step
talk Catherine Leland##5494
buy 40 Bright Baubles##6532 |goto Stormwind City/0 55.09,69.75 |complete skill("Fishing") >= 225
|tip Save these, you will need them for future steps.
buy Recipe: Bristle Whisker Catfish##6330 |goto Stormwind City/0 55.09,69.75 |complete knowspell(7755)
|tip Save this, you will need it later.
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto Stormwind City/0 54.75,68.91 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto Stormwind City/0 54.75,68.91 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto Stormwind City/0 54.75,68.91 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto Stormwind City/0 54.75,68.91 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto Stormwind City/0 54.75,68.91 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto Stormwind City/0 54.75,68.91 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto Stormwind City/0 54.75,68.91 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Stormwind City/0 54.75,68.91 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Stormwind City/0 54.75,68.91 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto Stormwind City/0 54.75,68.91 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto Stormwind City/0 54.75,68.91 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto Stormwind City/0 54.75,68.91 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete skill("Fishing") >= 165 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
|tip You don't need bait in these waters.
Reach Skill 165 in Fishing |skill Fishing,165 |goto Stormwind City/0 54.75,68.91
stickystart "Collect_Raw_Longjaw_Mud_Snapper_115"
stickystart "Collect_Raw_Bristle_Whisker_Catfish_125"
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
|tip You don't need bait in these waters.
collect 85 Raw Brilliant Smallfish##6291 |goto Stormwind City/0 54.75,68.91 |or
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 65 |or
step
label "Collect_Raw_Longjaw_Mud_Snapper_115"
cast Fishing##33095 |notinsticky
|tip Fish in the water. |notinsticky
|tip You must have a Fishing Pole equipped to fish. |notinsticky
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |notinsticky
|tip You don't need bait in these waters. |notinsticky
collect 60 Raw Longjaw Mud Snapper##6289 |goto Stormwind City/0 54.75,68.91 |or
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 115 |or
step
label "Collect_Raw_Bristle_Whisker_Catfish_125"
cast Fishing##33095 |notinsticky
|tip Fish in the water. |notinsticky
|tip You must have a Fishing Pole equipped to fish. |notinsticky
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |notinsticky
|tip You don't need bait in these waters. |notinsticky
collect 40 Raw Bristle Whisker Catfish##6308 |goto Stormwind City/0 54.75,68.91 |or
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 125 |or
step
Enter the building |goto Stormwind City/0 75.12,55.30 < 7 |walk
'|cast Fishing##33095
create 85 Brilliant Smallfish##7751,Cooking,65 |goto Stormwind City/0 78.44,52.77
|tip Stand next to the Warm Fire downstairs inside the building.
|tip Stop making these at 65 Cooking skill.
|tip You may need to create more or less of these.
|tip Fish more Brilliant Smallfish if needed.
step
talk Stephen Ryback##5482
|tip Downstairs inside the building.
Train Journeyman Cooking |skillmax Cooking,150 |goto Stormwind City/0 78.17,53.09
step
use the Recipe: Longjaw Mud Snapper##6328
|tip You purchased this in a previous step.
Train Longjaw Mud Snapper |learn Longjaw Mud Snapper##7753
step
'|cast Fishing##33095
create 100 Longjaw Mud Snapper##7753,Cooking,115 |goto Stormwind City/0 78.44,52.77
|tip Stand next to the Warm Fire downstairs inside the building.
|tip Stop making these at 115 Cooking skill.
|tip You may need to create more or less of these.
|tip Fish more Longjaw Mud Snapper if needed.
step
use the Recipe: Bristle Whisker Catfish##6330
|tip You purchased this in a previous step.
Train Bristle Whisker Catfish |learn Bristle Whisker Catfish##7755
step
create 40 Bristle Whisker Catfish##7755,Cooking,40 total |goto Stormwind City/0 78.44,52.77 |or
|tip Stand next to the Warm Fire downstairs inside the building.
'|complete skill("Cooking") >= 125 |or
step
'|cast Fishing##33095
create 1 Bristle Whisker Catfish##7755,Cooking,125 |goto Stormwind City/0 78.44,52.77
|tip Stand next to the Warm Fire downstairs inside the building.
|tip You need to reach at least 125 cooking before proceeding.
|tip You may need to create more or less of these.
|tip Fish more Bristle Whisker Catfish if needed.
step
talk Stephen Ryback##5482
|tip Downstairs inside the building.
Train Expert Cooking |skillmax Cooking,225 |goto Stormwind City/0 78.17,53.09
step
Enter the building The Cape of Stranglethorn/0 42.80,68.97 < 7 |walk
talk Kelsey Yance##2664
|tip Inside the building.
buy Recipe: Mithril Head Trout##17062 |goto 28.23,74.34
|tip Save these, you will need them later.
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto The Cape of Stranglethorn/0 39.47,66.91 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto Stranglethorn Vale/0 39.83,18.55 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto Stranglethorn Vale/0 39.83,18.55 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto Stranglethorn Vale/0 39.83,18.55 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto Stranglethorn Vale/0 39.83,18.55 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto Stranglethorn Vale/0 39.83,18.55 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto Stranglethorn Vale/0 39.83,18.55 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Stranglethorn Vale/0 39.83,18.55 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Stranglethorn Vale/0 39.83,18.55 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto Stranglethorn Vale/0 39.83,18.55 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto Stranglethorn Vale/0 39.83,18.55 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto Stranglethorn Vale/0 39.83,18.55 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete skill("Fishing") >= 225 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 225 in Fishing |skill Fishing,225 |goto The Cape of Stranglethorn/0 39.47,66.91
stickystart "Collect_Mithril_Head_Trout_225"
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
collect 80 Raw Bristle Whisker Catfish##6308 |goto The Cape of Stranglethorn/0 39.47,66.91 |or
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 175 |or
step
label "Collect_Mithril_Head_Trout_225"
cast Fishing##33095 |notinsticky
|tip Fish in the water. |notinsticky
|tip You must have a Fishing Pole equipped to fish. |notinsticky
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |notinsticky
use the Bright Baubles##6532 |notinsticky
|tip Use it on your Fishing Pole. |notinsticky
|tip It will grant you +75 Fishing skill for 10 minutes. |notinsticky
|tip Try to keep one of these active whenever you are fishing. |notinsticky
|tip If you have a better bait, you can use that instead. |notinsticky
collect 80 Raw Mithril Head Trout##8365 |goto The Cape of Stranglethorn/0 39.47,66.91 |or
|tip This total is approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Cooking") >= 225 |or
step
'|cast Fishing##33095
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 80 Bristle Whisker Catfish##7755,Cooking,175 |goto The Cape of Stranglethorn/0 42.62,72.76
|tip You may need to create more or less of these.
|tip Fish more Bristle Whisker Catfish if needed.
step
use the Recipe: Mithril Head Trout##17062
|tip You purchased this in a previous step.
Train Mithril Head Trout |learn Mithril Head Trout##20916
step
'|cast Fishing##33095
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 80 Mithril Head Trout##20916,Cooking,225 |goto The Cape of Stranglethorn/0 42.62,72.76
|tip You may need to create more or less of these.
|tip Fish more Raw Mithril Head Trout if needed.
step
Enter the building |goto Stormwind City/0 75.12,55.30 < 7 |walk
talk Stephen Ryback##5482
|tip Downstairs inside the building.
Train Artisan Cooking |skillmax Cooking,300 |goto Stormwind City/0 78.17,53.09
step
talk Arnold Leland##5493
Train Artisan Fishing |skillmax Fishing,300 |goto Stormwind City/0 54.99,69.65
step
Reach Level 35 |ding 35 |or
|tip You must be at least this level before you can accept the quest in the next step.
|tip Use the leveling guides to accomplish this.
|tip This quest can be skipped, but the fishing pole reward grants +25 Fishing skill.
|tip If you skip it, you will catch more junk and spend more time fishing.
Click Here To Skip Nat Pagle, Angler Extreme |confirm |next "Skip_Nat_Pagle_Quest"
step
Cross the water |goto Dustwallow Marsh/0 66.54,55.09 < 30 |only if walking
talk Nat Pagle##12919
|tip On a small island in the water.
accept Nat Pagle, Angler Extreme##6607 |goto 58.55,60.21
|tip This quest can be skipped, but the fishing pole reward grants +25 Fishing skill.
|tip If you skip it, you will catch more junk and spend more time fishing.
Click Here To Skip Nat Pagle, Angler Extreme |confirm |next "Skip_Nat_Pagle_Quest"
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto Feralas/0 62.38,52.50 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto Feralas/0 62.38,52.50 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto Feralas/0 62.38,52.50 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto Feralas/0 62.38,52.50 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto Feralas/0 62.38,52.50 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto Feralas/0 62.38,52.50 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto Feralas/0 62.38,52.50 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Feralas/0 62.38,52.50 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Feralas/0 62.38,52.50 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto Feralas/0 62.38,52.50 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto Feralas/0 62.38,52.50 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto Feralas/0 62.38,52.50 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete completedq(6607,1) |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
collect Feralas Ahi##16967 |q 6607/1 |goto Feralas/0 62.38,52.50
|tip You will eventually catch one.
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto Desolace/0 38.96,22.70 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto Desolace/0 38.96,22.70 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto Desolace/0 38.96,22.70 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto Desolace/0 38.96,22.70 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto Desolace/0 38.96,22.70 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto Desolace/0 38.96,22.70 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto Desolace/0 38.96,22.70 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Desolace/0 38.96,22.70 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Desolace/0 38.96,22.70 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto Desolace/0 38.96,22.70 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto Desolace/0 38.96,22.70 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto Desolace/0 38.96,22.70 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete completedq(6607,3) |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
collect Sar'theris Striker##16968 |q 6607/3 |goto Desolace/0 38.96,22.70
|tip You will eventually catch one.
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto Swamp of Sorrows/0 90.45,73.47 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto Swamp of Sorrows/0 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto Swamp of Sorrows/0 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto Swamp of Sorrows/0 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto Swamp of Sorrows/0 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto Swamp of Sorrows/0 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto Swamp of Sorrows/0 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Swamp of Sorrows/0 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Swamp of Sorrows/0 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto Swamp of Sorrows/0 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto Swamp of Sorrows/0 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto Swamp of Sorrows/0 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete completedq(6607,2) |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
collect Misty Reed Mahi Mahi##16970 |q 6607/2 |goto Swamp of Sorrows/0 90.45,73.47
|tip You will eventually catch one.
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto The Cape of Stranglethorn/0 39.47,66.91 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete completedq(6607,4) |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
collect Savage Coast Blue Sailfin##16969 |q 6607/4 |goto The Cape of Stranglethorn/0 39.47,66.91
|tip You will eventually catch one.
step
Cross the water |goto Dustwallow Marsh/0 66.54,55.09 < 30 |only if walking
talk Nat Pagle##12919
|tip On a small island in the water.
turnin Nat Pagle, Angler Extreme##6607 |goto Dustwallow Marsh/0 58.55,60.21
step
label "Skip_Nat_Pagle_Quest"
talk Vivianna##7947
|tip Inside the building.
buy 20 Bright Baubles##6532 |goto Feralas/0 31.30,43.46 |complete skill("Cooking") >= 300
buy Recipe: Baked Salmon##13949 |goto Feralas/0 31.30,43.46 |complete knowspell(18247)
|tip Save this, you will need it later.
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto Feralas/0 62.40,52.49 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto Feralas/0 62.40,52.49 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto Feralas/0 62.40,52.49 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto Feralas/0 62.40,52.49 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto Feralas/0 62.40,52.49 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto Feralas/0 62.40,52.49 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto Feralas/0 62.40,52.49 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Feralas/0 62.40,52.49 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Feralas/0 62.40,52.49 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto Feralas/0 62.40,52.49 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto Feralas/0 62.40,52.49 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto Feralas/0 62.40,52.49 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete skill("Fishing") >= 255 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 255 in Fishing |skill Fishing,255 |goto Feralas/0 62.40,52.49
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
collect 45 Raw Mithril Head Trout##8365 |goto Feralas/0 62.40,52.49 |or
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 245 |or
step
'|cast Fishing##33095
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 45 Mithril Head Trout##20916,Cooking,245 |goto Feralas/0 62.40,52.49
|tip You may need to create more or less of these.
|tip Fish more Raw Mithril Head Trout if needed.
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto Feralas/0 49.98,14.57 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto Feralas/0 49.98,14.57 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto Feralas/0 49.98,14.57 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto Feralas/0 49.98,14.57 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto Feralas/0 49.98,14.57 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto Feralas/0 49.98,14.57 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto Feralas/0 49.98,14.57 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Feralas/0 49.98,14.57 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Feralas/0 49.98,14.57 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto Feralas/0 49.98,14.57 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto Feralas/0 49.98,14.57 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto Feralas/0 49.98,14.57 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete skill("Fishing") >= 275 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip This spot is safe, but watch out for elites getting there.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 275 in Fishing |skill Fishing,275 |goto Feralas/0 49.98,14.57
step
Enter the building |goto Stormwind City/0 75.12,55.30 < 7 |walk
talk Stephen Ryback##5482
|tip Downstairs inside the building.
Train Filet of Redgill |learn Filet of Redgill##18241 |goto Stormwind City/0 78.17,53.09
Train Poached Sunscale Salmon |learn Poached Sunscale Salmon##18244 |goto Stormwind City/0 78.17,53.09
Train Nightfin Soup |learn Nightfin Soup##18238 |goto Stormwind City/0 78.17,53.09
step
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 5 Filet of Redgill##18241,Cooking,250 |goto Stormwind City/0 78.17,53.09
step
'|cast Fishing##33095
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 1 Filet of Redgill##18241,Cooking,290 |n
|tip Cook all of your Redgill first.
create 1 Poached Sunscale Salmon##18244,Cooking,290 |n
create 1 Nightfin Soup##18238,Cooking,290 |n
Reach at Least 290 Cooking Skill |skill Cooking,290 |goto Stormwind City/0 78.17,53.09
|tip Create all of the fish you have even after 290 skill until you reach 295 skill or run out.
|tip You may need to fish more.
step
use the Recipe: Baked Salmon##13949
Train Baked Salmon |learn Baked Salmon##18247
step
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 5 Baked Salmon##18247,Cooking,300
step
Reach Level 58 |ding 58
|tip You must be at least level 58 to train Master professions in Outland.
|tip Use the leveling guides to accomplish this.
step
talk Naka##18993
|tip Inside the building.
Train Master Cooking |skillmax Cooking,375 |goto Zangarmarsh/0 78.52,63.05
step
talk Juno Dufrain##18911
Train Master Fishing |skillmax Fishing,375 |goto Zangarmarsh/0 78.05,66.09
step
talk Juno Dufrain##18911
buy 20 Bright Baubles##6532 |goto Zangarmarsh/0 78.05,66.09 |or
'|complete skill("Fishing") >= 375 |or
step
Reach Level 62 |ding 62
|tip You must be at least level 62 to accept the quests required to reach Neutral with the Kurenai faction.
|tip Use the leveling guides to accomplish this.
step
click Wanted Poster##184945
accept Wanted: Chieftain Mummaki##10116 |goto Zangarmarsh/0 41.74,27.26
step
talk Ikuti##18008
accept Ango'rosh Encroachment##9835 |goto Zangarmarsh/0 41.95,27.19
accept Daggerfen Deviance##10115 |goto Zangarmarsh/0 41.95,27.19
stickystart "Kill_Angorosh_Ogres"
step
kill 5 Ango'rosh Shaman##18118 |q 9835/1 |goto 33.62,31.78
step
label "Kill_Angorosh_Ogres"
kill 10 Ango'rosh Ogre##18117 |q 9835/2 |goto 33.62,31.78
step
kill Chieftain Mummaki##19174
|tip At the top of the tower.
collect Chieftain Mummaki's Totem##27943 |q 10116/1 |goto 23.78,26.75
stickystart "Kill_Daggerfen_Muckdwellers"
step
label "Kill_Daggerfen_Assassins"
kill 3 Daggerfen Assassin##18116 |q 10115/1 |goto 25.41,24.35
step
label "Kill_Daggerfen_Muckdwellers"
kill 15 Daggerfen Muckdweller##18115 |q 10115/2 |goto 25.41,24.35
step
talk Ikuti##18008
turnin Ango'rosh Encroachment##9835 |goto 41.94,27.19
turnin Wanted: Chieftain Mummaki##10116 |goto 41.94,27.19
turnin Daggerfen Deviance##10115 |goto 41.94,27.19
step
talk Doba##20028
buy Recipe: Feltail Delight##27695 |goto Zangarmarsh/0 42.33,27.91 |complete knowspell(33291)
buy Recipe: Blackened Trout##27694 |goto Zangarmarsh/0 42.33,27.91 |complete knowspell(33290)
step
use the Recipe: Feltail Delight##27695
Train Feltail Delight |learn Feltail Delight##33291
step
use the Blackened Trout##27694
Train Blackened Trout |learn Blackened Trout##33290
step
talk Innkeeper Biribi##19296
|tip Inside the building.
buy Recipe: Golden Fish Sticks##27699 |goto Terokkar Forest/0 56.70,53.27 |or
|tip Save this, you will need it later.
'|complete skill("Cooking") >= 350 |or
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto Terokkar Forest/0 39.33,22.16 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto Terokkar Forest/0 39.33,22.16 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto Terokkar Forest/0 39.33,22.16 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto Terokkar Forest/0 39.33,22.16 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto Terokkar Forest/0 39.33,22.16 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto Terokkar Forest/0 39.33,22.16 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto Terokkar Forest/0 39.33,22.16 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Terokkar Forest/0 39.33,22.16 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Terokkar Forest/0 39.33,22.16 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto Terokkar Forest/0 39.33,22.16 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto Terokkar Forest/0 39.33,22.16 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto Terokkar Forest/0 39.33,22.16 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete skill("Fishing") >= 320 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 320 in Fishing |skill Fishing,320 |goto Terokkar Forest/0 39.33,22.16
stickystart "Collect_Golden_Darter_350"
stickystart "Collect_Spotted_Feltail_320"
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
|tip You don't need bait in these waters.
collect 70 Barbed Gill Trout##27422 |goto Terokkar Forest/0 39.33,22.16 |or
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 320 |or
step
label "Collect_Golden_Darter_350"
cast Fishing##33095 |notinsticky
|tip Fish in the water. |notinsticky
|tip You must have a Fishing Pole equipped to fish. |notinsticky
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |notinsticky
|tip You don't need bait in these waters. |notinsticky
collect 20 Golden Darter##27438 |goto Terokkar Forest/0 39.33,22.16 |or
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 350 |or
step
label "Collect_Spotted_Feltail_320"
cast Fishing##33095 |notinsticky
|tip Fish in the water. |notinsticky
|tip You must have a Fishing Pole equipped to fish. |notinsticky
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |notinsticky
|tip You don't need bait in these waters. |notinsticky
collect 15 Spotted Feltail##27425 |goto Terokkar Forest/0 39.33,22.16 |or
|tip This total is approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Cooking") >= 320 |or
step
'|cast Fishing##33095
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 1 Feltail Delight##33291,Cooking,320 |n
|tip Cook all of your Spotted Feltail first.
create 1 Blackened Trout##33290,Cooking,320 |n
|tip Stop cooking trout when you reach 320 Cooking skill.
Reach Skill 320 in Cooking |skill Cooking,320 |goto Terokkar Forest/0 39.33,22.16
|tip You may need to fish more.
step
talk Kylene##19186
|tip Inside the building.
Tell her _"I hear you're quite the cook."_
Train Stewed Trout |learn Stewed Trout##42296 |goto Shattrath City/0 75.89,32.73
step
'|cast Fishing##33095
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 5 Stewed Trout##42296,Cooking,325
step
use the Recipe: Golden Fish Sticks##27699
Train Golden Fish Sticks |learn Golden Fish Sticks##33295
step
'|cast Fishing##33095
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 1 Stewed Trout##42296,Cooking,350 |n
|tip Cook all of your Barbed Gill Trout first.
create 1 Golden Fish Sticks##33295,Cooking,350 |n
Reach at Least 350 Cooking Skill |skill Cooking,350 |goto Terokkar Forest/0 39.33,22.16
|tip Create all of the fish you have even after 350 skill until you run out.
|tip You may need to fish more.
step
Reach Level 68 |ding 68
|tip You must be at least level 68 to train Grand Master professions in Outland.
|tip Use the leveling guides to accomplish this.
step
talk Beem Goldsprocket##27012
|tip Inside the building.
buy 20 Bright Baubles##6532 |goto Borean Tundra/0 57.70,72.32 |or
'|complete skill("Fishing") >= 360 |or
step
talk Rollick MacKreel##26989
Train Grand Master Cooking |skillmax Cooking,450 |goto Borean Tundra/0 57.93,71.54
step
talk Rollick MacKreel##26989
Train Dalaran Clam Chowder |learn Dalaran Clam Chowder##58065 |goto Borean Tundra/0 57.93,71.54
step
talk Rollick MacKreel##26989
Train Smoked Rockfin |learn Smoked Rockfin##45560 |goto Borean Tundra/0 57.93,71.54
step
talk Rollick MacKreel##26989
Train Baked Manta Ray |learn Baked Manta Ray##45569 |goto Borean Tundra/0 57.93,71.54
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto Borean Tundra/0 57.68,69.58 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto Borean Tundra/0 57.68,69.58 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto Borean Tundra/0 57.68,69.58 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto Borean Tundra/0 57.68,69.58 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto Borean Tundra/0 57.68,69.58 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto Borean Tundra/0 57.68,69.58 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto Borean Tundra/0 57.68,69.58 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Borean Tundra/0 57.68,69.58 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Borean Tundra/0 57.68,69.58 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto Borean Tundra/0 57.68,69.58 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto Borean Tundra/0 57.68,69.58 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto Borean Tundra/0 57.68,69.58 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete skill("Fishing") >= 360 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 360 in Fishing |skill Fishing,360 |goto Borean Tundra/0 57.68,69.58
step
use the Darkwater Clam##36781
collect Succulent Clam Meat##36782 |n
Open All of Your Darkwater Clams |complete itemcount(36781) == 0 or skill("Cooking") >= 400
step
'|cast Fishing##33095
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 1 Smoked Rockfin##45560,Cooking,400 |n
|tip Cook all of your Rockfin Grouper first first.
create 1 Baked Manta Ray##45569,Cooking,400 |n
create 1 Dalaran Clam Chowder##58065,Cooking,400 |n
Reach at Least 400 Cooking Skill |skill Cooking,400 |goto Borean Tundra/0 57.68,69.58
|tip Create all of the fish you have even after 400 skill until you run out.
|tip You may need to fish more.
step
talk Rollick MacKreel##26989
Train Black Jelly |learn Black Jelly##64358 |goto Borean Tundra/0 57.93,71.54
step
'|cast Fishing##33095
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
create 1 Black Jelly##64358,Cooking,415
|tip Create all of the Borean Man'O' War you have even after 415 skill until you run out.
|tip You may need to fish more.
step
talk Old Man Robert##26993
Train Grand Master Fishing |skillmax Fishing,450 |goto Borean Tundra/0 57.88,71.64
step
talk Beem Goldsprocket##27012
|tip Inside the building.
buy 20 Bright Baubles##6532 |goto Borean Tundra/0 57.70,72.32 |or
'|complete skill("Fishing") >= 450 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 450 in Fishing |skill Fishing,450 |goto Wintergrasp/0 70.91,39.26
|tip Once you catch 60 Glacial Salmon, 60 Musselback Sculpin, or 60 Nettlefish you can fish anywhere you like to 450.
|tip Make sure you save at least 60 of one of these fish.
|tip You can do a combination, but you will need to buy multiple recipes, which require a few days of dailies each.
step
cast Basic Campfire##818
|tip Stand next to the Basic Campfire.
Reach 450 Cooking Skill |skill Cooking,450 |goto Dalaran/1 40.56,65.64 |or
|tip From this point, you will need to complete Cooking daily quests in Dalaran for Epicurean's Awards.
|tip Recipes can be purchased from Derek Odds in Dalaran for 3 Epicuran's Awards each.
|tip Each recipe requires 1 Northern Spices per cook, which can be purchased from the auction house or obtained by completing Cooking daily quests.
|tip Choose Firecracker Salmon if you saved Glacial Salmon.
|tip Choose Spicy Blue Nettlefish if you saved Nettlefish.
|tip Choose Poached Northern Sculpin if you saved Musselback Sculpin.
|tip You will need to create around 60 of these recipes to reach 450 Cooking skill.
Click Here to Load the "Dalaran Cooking Dailies" Daily Quest Guide |confirm |loadguide "Dailies Guides\\Wrath of the Lich King\\Dalaran Cooking Dailies"
step
talk Arnold Leland##5493
Train Illustrious Grand Master Fishing |skillmax Fishing,525  |goto Stormwind City/0 54.80,69.60
|tip You must be at least level 75.
step
earn 9 Epicurean's Award##81
|tip Use the "Dalaran Cooking Daily Guide" and "Main City Cooking Dailies" guides to accomplish this.
|tip You will generally earn three to five per day.
step
Fish in open water in any Cataclysm Zone |cast Fishing##131474
collect Striped Lurker##53067 |n |goto Twilight Highlands/0 65.8,43.3
|tip You will want at least 50 Striped Lurkers, continue fishing if you get lucky on skillups.
Reach Skill 475 in Fishing |skill Fishing,475
step
Fish in any Highland Guppy Schools you find on the route |cast Fishing##131474
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	59.05,90.46	62.07,90.67	65.57,88.09	67.66,85.17	71.69,81.21
path	72.85,75.18	   78.19,79.14	82.00,82.42	83.09,77.03	82.21,72.22
path	78.58,70.89	78.88,64.97	76.53,60.42	73.84,61.94	70.49,60.67
path	68.73,58.31	70.99,55.56	72.58,57.34	76.62,57.12	78.70,49.06
path	75.92,47.25	72.91,41.72	72.02,35.75
collect Highland Guppy##53064 |n
|tip You will want at least 50 Highland Guppy, continue fishing if you get lucky on skillups.
Reach Skill 500 in Fishing |skill Fishing,500
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
|tip You will want at least 40 Deepsea Sagefish, continue fishing if you get lucky on skillups.
Reach Skill 525 in Fishing |skill Fishing,525
step
talk Robby Flay##42288
Train Illustrious Grand Master Cooking |skillmax Cooking,525 |goto Stormwind City/0 50.56,71.89
|tip You must be at least level 75.
step
talk Jon Casper##49701
buy Recipe: Lurker Lunch##65416 |goto Stormwind City/0 50.55,73.86
step
use Recipe: Lurker Lunch##65416
learn Lurker Lunch##88030 |goto Stormwind City/0 50.55,73.86
step
Fish in open water in any Cataclysm Zone |cast Fishing##131474
collect 50 Striped Lurker##53067 |goto Twilight Highlands/0 65.8,43.3
step
Open Your Cooking Crafting Panel:
_<Create 25 Lurker Lunch>_
|tip You may need to make more to reach 475.
Reach 475 Cooking |skill Cooking,475
step
talk Jon Casper##49701
buy Recipe: Pickled Guppy##65417 |goto Stormwind City/0 50.55,73.86
step
use Recipe: Pickled Guppy##65417
learn Pickled Guppy##88033 |goto Stormwind City/0 50.55,73.86
step
Fish in any Highland Guppy Schools you find on the route |cast Fishing##131474
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	59.05,90.46	62.07,90.67	65.57,88.09	67.66,85.17	71.69,81.21
path	72.85,75.18	   78.19,79.14	82.00,82.42	83.09,77.03	82.21,72.22
path	78.58,70.89	78.88,64.97	76.53,60.42	73.84,61.94	70.49,60.67
path	68.73,58.31	70.99,55.56	72.58,57.34	76.62,57.12	78.70,49.06
path	75.92,47.25	72.91,41.72	72.02,35.75
collect 50 Highland Guppy##53064
step
Open Your Cooking Crafting Panel:
_<Create 25 Pickled Guppy>_
|tip You may need to make more to reach 500.
Reach 500 Cooking |skill Cooking,500
step
talk Jon Casper##49701
buy Recipe: Severed Sagefish Head##65421 |goto Stormwind City/0 50.55,73.86
step
use Recipe: Severed Sagefish Head##65421
learn Severed Sagefish Head##88039 |goto Stormwind City/0 50.55,73.86
step
Fish in any Deepsea Sagefish Schools you find |cast Fishing##131474
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	59.05,90.46	62.07,90.67	65.57,88.09	67.66,85.17	71.69,81.21
path	72.85,75.18	   78.19,79.14	82.00,82.42	83.09,77.03	82.21,72.22
path	78.58,70.89	78.88,64.97	76.53,60.42	73.84,61.94	70.49,60.67
path	68.73,58.31	70.99,55.56	72.58,57.34	76.62,57.12	78.70,49.06
path	75.92,47.25	72.91,41.72	72.02,35.75
collect 40 Deepsea Sagefish##53070
step
Open Your Cooking Crafting Panel:
_<Create 25 Severed Sagefish Head>_
|tip You may need to make more to reach 525.
Reach 525 Cooking |skill Cooking,525
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Chunk of Boar Meat",{
author="support@zygorguides.com",
},[[
step
kill Stonetusk Boar##113
collect Chunk of Boar Meat##769 |n |goto Elwynn Forest 41.81,87.22
You can find more around this area [32.96,84.95]
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Small Spider Leg",{
author="support@zygorguides.com",
},[[
step
map Teldrassil
path follow smart; loop on; dist 20
path	61.26,54.48	59.86,54.83	58.84,56.13	57.82,55.52	56.99,57.22
path	55.71,58.31	54.17,58.29	51.90,56.43	51.01,57.05	51.06,58.72
path	51.50,61.70	51.21,65.25	51.97,66.36	53.49,68.85	53.68,66.50
path	54.51,65.63	55.15,63.62	56.43,62.23	57.59,61.30	58.39,61.25
path	59.64,62.24	61.03,61.51	62.34,60.71	62.85,58.55	62.70,56.22
path	62.20,55.24
kill Webwood Lurker##1998+
collect Small Spider Leg##5465 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Stringy Wolf Meat",{
author="support@zygorguides.com",
},[[
step
map Dun Morogh
path follow smart; loop on; dist 20
path	48.83,44.33	49.91,45.80	51.35,45.50	52.65,45.75	54.52,46.88
path	53.16,48.13	52.07,50.43	50.38,52.50	49.29,54.64	48.27,55.36
path	47.24,53.86	46.41,52.12	46.05,49.96	44.75,48.06	42.48,47.21
path	40.23,47.20	38.74,46.65	36.95,45.83	35.43,45.11	34.49,44.49
path	32.83,46.26	31.94,47.31	30.21,46.67	30.51,44.36	31.98,42.52
path	33.05,39.49	36.17,37.53	37.64,35.53	38.86,32.48	41.00,31.62
path	43.08,31.61	44.32,33.52	44.37,37.07	45.30,40.37
Kill Wolf enemies along this path
collect Stringy Wolf Meat##2672 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Crag Boar Rib",{
author="support@zygorguides.com",
},[[
step
map Dun Morogh
path follow smart; loop on; dist 20
path	48.31,47.26	50.56,47.82	52.50,48.96	51.18,50.98	50.25,52.44
path	49.29,54.42	48.28,56.64	48.54,58.79	48.34,61.32	47.52,63.19
path	45.85,63.76	45.37,63.31	46.29,61.25	46.73,58.19	46.92,56.16
path	46.51,54.00	46.40,50.75	47.10,49.38	47.15,47.78
Kill Boar enemies along this path
collect Crag Boar Rib##2886 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Tough Condor Meat",{
author="support@zygorguides.com",
},[[
step
map Redridge Mountains/0
path follow smart; loop on; ants straight; dist 30
path    45.10,68.18    47.20,66.59    52.63,66.79    57.89,66.94
Kill Condor enemies along this path
collect Tough Condor Meat##1080 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Lean Wolf Flank",{
author="support@zygorguides.com",
},[[
step
label "Path_One"
map Duskwood
path follow smart; loop off; dist 20
path	63.16,28.80	64.53,25.32	66.25,22.72	68.11,20.39	65.79,19.10
path	63.93,18.00	61.85,17.35	61.24,19.93	59.17,22.31	57.44,22.15
path	55.99,19.56	54.52,17.35	52.93,14.73	51.60,17.10	50.35,19.66
path	49.58,17.59	48.56,16.46	46.52,16.89	44.73,18.76	43.31,20.29
path	41.58,18.79	39.78,19.76	37.72,19.38	36.39,21.44	37.40,24.54
path	35.14,24.60	32.82,24.47	31.96,27.24	29.31,27.36	27.36,26.54
path	25.34,27.61	22.46,25.92	20.45,25.75	18.66,23.98	16.18,27.47
path	14.08,27.45	12.25,30.98	10.25,32.63
Kill Wolf enemies around this area
collect Lean Wolf Flank##1015 |n
'|goto 10.25,32.63 < 20 |noway |c
step
map Duskwood
path follow smart; loop off; dist 20
path	10.25,32.63	12.25,30.98	14.08,27.45	16.18,27.47	18.66,23.98
path	20.45,25.75	22.46,25.92	25.34,27.61	27.36,26.54	29.31,27.36
path	31.96,27.24	32.82,24.47	35.14,24.60	37.40,24.54	36.39,21.44
path	37.72,19.38	39.78,19.76	41.58,18.79	43.31,20.29	44.73,18.76
path	46.52,16.89	48.56,16.46	49.58,17.59	50.35,19.66	51.60,17.10
path	52.93,14.73	54.52,17.35	55.99,19.56	59.17,22.31	61.24,19.93
path	61.85,17.35	63.93,18.00	65.79,19.10	68.11,20.39	66.25,22.72
path	64.53,25.32	63.16,28.80
Kill Wolf enemies around this area
collect Lean Wolf Flank##1015 |n
'|goto 63.16,28.80 < 20 |noway |c |next "Path_One"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Raptor Egg",{
author="support@zygorguides.com",
},[[
step
map Northern Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	25.65,30.22	27.84,30.72	29.96,31.83	31.18,32.26	32.43,30.42
path	31.93,27.74
Kill Raptor enemies around this area
collect Raptor Egg##3685 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Tangy Clam Meat",{
author="support@zygorguides.com",
},[[
step
map Wetlands
path follow smart; loop on; dist 20
path	15.21,40.13	17.36,39.06	19.36,38.16	22.88,37.14	24.91,36.76
path	24.41,33.77	23.10,33.59	21.34,34.34	19.64,31.98	18.24,31.36
path	16.84,29.42	15.14,30.74	14.96,33.33	14.32,35.71	13.91,38.13
path	14.03,40.90
Kill Bluegill enemies around this area
collect Thick-shelled Clam##5524 |n
use the Thick-shelled Clam##5524
collect Tangy Clam Meat##5504 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Tender Crocolisk Meat",{
author="support@zygorguides.com",
},[[
step
label "Path_One"
map Dustwallow Marsh
path follow smart; loop off; dist 20
path	42.01,28.23	41.27,30.48	40.81,32.17	39.51,33.86	38.27,35.06
path	39.30,36.33	40.52,36.90	41.08,38.12	42.23,39.13	42.29,41.27
path	40.44,41.83	39.76,43.93	39.29,45.36	38.51,45.82	37.54,46.50
path	36.53,47.94	35.50,49.39	36.60,52.40	38.28,53.98	40.81,54.72
path	41.62,55.99	40.68,58.48	40.53,61.02
Kill Drywallow enemies along this path
collect Tender Crocolisk Meat##3667 |n
'|goto 40.53,61.02 < 20 |noway |c
step
map Dustwallow Marsh
path follow smart; loop off; dist 20
path	40.53,61.02	40.68,58.48	41.62,55.99	40.81,54.72	38.28,53.98
path	36.60,52.40	35.50,49.39	36.53,47.94	37.54,46.50	38.51,45.82
path	39.29,45.36	39.76,43.93	40.44,41.83	42.29,41.27	42.23,39.13
path	41.08,38.12	40.52,36.90	39.30,36.33	38.27,35.06	39.51,33.86
path	40.81,32.17	41.27,30.48	42.01,28.23
Kill Drywallow enemies along this path
collect Tender Crocolisk Meat##3667 |n
'|goto 42.01,28.23 < 20 |noway |c |next "Path_One"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Gooey Spider Leg",{
author="support@zygorguides.com",
},[[
step
label "Path_One"
map Duskwood
path follow smart; loop off; dist 20
path	75.39,23.25	75.70,20.27	72.81,20.02	68.45,21.26	66.04,20.18
path	64.38,23.56	62.25,25.40	58.25,19.25	55.59,20.51	53.13,20.33
path	50.65,16.19	48.36,17.34	46.63,16.65
Kill Spider enemies along this path
collect Gooey Spider Leg##2251 |n
'|goto 46.63,16.65 < 20 |noway |c
step
map Duskwood
path follow smart; loop off; dist 20
path	46.63,16.65	48.36,17.34	50.65,16.19	53.13,20.33	55.59,20.51
path	58.25,19.25	62.25,25.40	64.38,23.56	66.04,20.18	68.45,21.26
path	72.81,20.02	75.70,20.27	75.39,23.25
Kill Spider enemies along this path
collect Gooey Spider Leg##2251 |n
'|goto 75.39,23.25 < 20 |noway |c |next "Path_One"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Red Wolf Meat",{
author="support@zygorguides.com",
},[[
step
map The Hinterlands
path follow smart; loop on; ants curved; dist 20
path	16.99,49.54	14.76,51.94	16.34,54.97	19.20,54.81	21.00,55.69
path	22.67,53.75	24.13,52.68	22.29,51.46	20.61,50.68	19.10,49.49
kill Mangy Silvermane##2923+
collect Red Wolf Meat##12203 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Small Egg",{
author="support@zygorguides.com",
},[[
step
map Darkshore/0
path follow smart; loop on; ants straight; dist 30
path	44.26,45.61	46.19,46.63	46.47,48.56	45.32,49.89	44.05,48.95
path	43.36,47.37
Kill Moonkin enemies along this path
collect Small Egg##6889 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Spider Ichor",{
author="support@zygorguides.com",
},[[
step
map Loch Modan/0
path follow smart; loop on; ants straight; dist 30
path	27.50,18.10	30.27,19.59	29.15,24.55	29.84,29.06	32.14,30.71
path	35.13,29.65	37.20,31.58	36.37,35.45	35.03,38.40	33.26,40.88
path	32.40,45.35	33.05,47.42	34.34,51.88	36.47,52.74	39.14,50.95
path	39.83,54.29	42.01,58.27	44.93,63.94	42.50,52.70	39.15,41.38
path	38.83,33.13	40.40,23.18	40.43,17.42
Kill Lurker enemies along this path
collect Spider Ichor##3174 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Coyote Meat",{
author="support@zygorguides.com",
},[[
step
map Westfall/0
path follow smart; loop on; ants straight; dist 30
path	62.45,42.12	61.05,38.49	59.20,30.20	58.69,26.18	58.85,22.18
path	55.99,22.99	53.72,26.55	51.15,26.31	48.14,25.64	47.04,19.68
path	44.81,17.52	42.78,19.23	41.83,24.14	41.27,26.78	45.37,30.33
path	49.58,30.72	53.39,28.48	55.63,29.25
Kill Coyote enemies along this path
collect Coyote Meat##2673 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Boar Intestines",{
author="support@zygorguides.com",
},[[
step
map Westfall/0
path follow smart; loop on; ants straight; dist 30
path	62.45,42.12	61.05,38.49	59.20,30.20	58.69,26.18	58.85,22.18
path	55.99,22.99	53.72,26.55	51.15,26.31	48.14,25.64	47.04,19.68
path	44.81,17.52	42.78,19.23	41.83,24.14	41.27,26.78	45.37,30.33
path	49.58,30.72	53.39,28.48	55.63,29.25
Kill Boar enemies along this path
collect Boar Intestines##3172 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Stringy Vulture Meat",{
author="support@zygorguides.com",
},[[
step
map Westfall/0
path follow smart; loop on; ants straight; dist 30
path	62.45,42.12	61.05,38.49	59.20,30.20	58.69,26.18	58.85,22.18
path	55.99,22.99	53.72,26.55	51.15,26.31	48.14,25.64	47.04,19.68
path	44.81,17.52	42.78,19.23	41.83,24.14	41.27,26.78	45.37,30.33
path	49.58,30.72	53.39,28.48	55.63,29.25
Kill Vulture enemies along this path
collect Stringy Vulture Meat##729 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Strider Meat",{
author="support@zygorguides.com",
},[[
step
map Mulgore/0
path follow smart; loop on; ants straight; dist 30
path	37.98,57.91	38.54,56.38	39.51,55.08	40.90,53.25	40.66,50.00
path	40.84,47.04	42.53,46.04	44.61,46.78	46.96,45.34	49.00,45.27
path	51.75,46.25	55.98,49.36	55.88,53.98	54.27,58.65	53.09,61.58
path	51.54,64.37	50.05,66.07	46.43,68.12	44.23,68.48	40.49,63.10
path	39.92,56.40
Kill Plainstrider enemies along this path
collect Strider Meat##5469 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Kodo Meat",{
author="support@zygorguides.com",
},[[
step
map Mulgore/0
path follow smart; loop on; ants straight; dist 30
path	49.12,35.54	53.57,32.31	55.04,23.61	51.99,19.91	50.11,23.99
path	43.16,44.22	40.74,55.63	43.54,54.67	48.21,50.36	52.81,46.41
Kill Kodo enemies along this path
collect Kodo Meat##5467 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Murloc Eye",{
author="support@zygorguides.com",
},[[
step
Kill Murloc enemies around this area
|tip They spawn all along the coast, so you can move down to get more.
collect Murloc Eye##730 |n |goto Westfall 55.73,9.49
'|confirm
]])
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
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Goretusk Snout",{
author="support@zygorguides.com",
},[[
step
map Westfall/0
path follow smart; loop on; ants straight; dist 30
path	62.45,42.12	61.05,38.49	59.20,30.20	58.69,26.18	58.85,22.18
path	55.99,22.99	53.72,26.55	51.15,26.31	48.14,25.64	47.04,19.68
path	44.81,17.52	42.78,19.23	41.83,24.14	41.27,26.78	45.37,30.33
path	49.58,30.72	53.39,28.48	55.63,29.25
Kill Goretusk enemies along this path
collect Goretusk Snout##731 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Goretusk Liver",{
author="support@zygorguides.com",
},[[
step
map Westfall/0
path follow smart; loop on; ants straight; dist 30
path	62.45,42.12	61.05,38.49	59.20,30.20	58.69,26.18	58.85,22.18
path	55.99,22.99	53.72,26.55	51.15,26.31	48.14,25.64	47.04,19.68
path	44.81,17.52	42.78,19.23	41.83,24.14	41.27,26.78	45.37,30.33
path	49.58,30.72	53.39,28.48	55.63,29.25
Kill Goretusk enemies along this path
collect Goretusk Liver##723 |n
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
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Crawler Claw",{
author="support@zygorguides.com",
},[[
step
map Westfall
path follow smart; loop off; dist 20
path	51.32,9.67	49.06,10.01	44.72,8.70	41.78,10.34	38.85,13.51
path	36.20,18.29	33.45,22.08	31.88,24.30
Kill Crawler enemies around this area
|tip You can find more further down the coast.
collect Crawler Claw##2675 |n
'|goto 31.88,24.30 < 20 |noway |c
step
map Westfall
path follow smart; loop off; dist 20
path	31.88,24.30	33.45,22.08	36.20,18.29	38.85,13.51	41.78,10.34
path	44.72,8.70	49.06,10.01	51.32,9.67
Kill Crawler enemies around this area
|tip You can find more further down the coast.
collect Crawler Claw##2675 |n
'|goto 51.32,9.67 < 20 |noway |c
]])
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
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Boar Ribs",{
author="support@zygorguides.com",
},[[
step
map Westfall/0
path follow smart; loop on; ants straight; dist 30
path	62.45,42.12	61.05,38.49	59.20,30.20	58.69,26.18	58.85,22.18
path	55.99,22.99	53.72,26.55	51.15,26.31	48.14,25.64	47.04,19.68
path	44.81,17.52	42.78,19.23	41.83,24.14	41.27,26.78	45.37,30.33
path	49.58,30.72	53.39,28.48	55.63,29.25
Kill Boar enemies along this path
collect Boar Ribs##2677 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Crocolisk Meat",{
author="support@zygorguides.com",
},[[
step
map Loch Modan/0
path follow smart; loop on; ants straight; dist 30
path	49.06,59.58	48.77,63.11	50.96,65.26	53.77,64.51	58.07,57.86
path	60.49,54.10	61.08,49.23	56.79,48.99
Kill Crocolisk enemies along this path
collect Crocolisk Meat##2924 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Soft Frenzy Flesh",{
author="support@zygorguides.com",
},[[
step
map Silverpine Forest/0
path follow smart; loop on; ants straight; dist 30
path	30.44,14.12	31.11,19.26	32.16,21.49	33.37,22.75	34.22,25.17
path	32.71,28.99	33.19,33.41	34.03,37.43	35.04,42.09	35.58,47.06
path	35.64,51.82	36.25,59.88	37.65,67.26
kill Reef Frenzy##2173+
|tip They are underwater along this path.
collect Soft Frenzy Flesh##5468 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Raw Loch Frenzy",{
author="support@zygorguides.com",
},[[
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto Loch Modan/0 49.77,34.01 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto 55.08,68.10 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto 55.08,68.10 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto 55.08,68.10 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto 55.08,68.10 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto 55.08,68.10 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto 55.08,68.10 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto 55.08,68.10 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto 55.08,68.10 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto 55.08,68.10 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto 55.08,68.10 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto 55.08,68.10 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
collect Raw Loch Frenzy##6317 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Murloc Fin",{
author="support@zygorguides.com",
},[[
step
goto Redridge Mountains/0 52.03,47.88
Kill Murloc enemies around this area
collect Murloc Fin##1468 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Big Bear Meat",{
author="support@zygorguides.com",
},[[
step
map Hillsbrad Foothills/0
path follow smart; loop on; ants straight; dist 30
path	64.70,74.38	63.16,71.79	59.89,67.40	59.56,70.91	60.56,73.40
path	63.82,76.34
Kill Bear enemies around this area
collect Big Bear Meat##3730 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Thunder Lizard Tail",{
author="support@zygorguides.com",
},[[
step
map Southern Barrens/0
path follow smart; loop on; ants straight; dist 30
path	44.77,43.44	46.30,45.67	47.60,49.00	44.66,49.35	43.60,49.51
path	42.36,46.91
Kill Stormsnout enemies around this area
collect Thunder Lizard Tail##5470 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Lion Meat",{
author="support@zygorguides.com",
},[[
step
map Southern Barrens/0
path follow smart; loop on; ants straight; dist 30
path	46.99,56.84	48.17,53.40	50.17,53.66	46.94,47.61	46.95,45.34
path	44.16,46.63
Kill Plains Prowlers and Pridemanes
collect Lion Meat##3731 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Mystery Meat",{
author="support@zygorguides.com",
},[[
step
map Desolace/0
path follow smart; loop on; ants straight; dist 30
path	70.84,30.47	71.26,28.17	70.74,25.26	69.85,22.02	68.46,20.37
path	66.75,19.37	64.49,18.94	60.82,18.93	58.94,20.10	59.54,24.35
path	61.77,28.24	63.91,30.59
Kill animal enemies around this area
collect Mystery Meat##12037 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Turtle Meat",{
author="support@zygorguides.com",
},[[
step
map Hillsbrad Foothills/0
path follow smart; loop on; ants straight; dist 30
path	52.67,71.27	52.81,69.36	53.24,66.91	53.80,64.86	55.06,63.18
path	56.70,61.64	57.84,60.23	59.44,58.66	60.41,56.58	60.64,55.06
path	60.89,52.22	60.97,50.63	60.98,49.04	61.02,46.18	61.15,44.60
path	61.73,42.55	63.55,39.04	65.69,36.44	67.85,33.44	69.64,30.31
path	72.10,27.82
Kill Snapjaw enemies along this path
collect Turtle Meat##3712 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Tiger Meat",{
author="support@zygorguides.com",
},[[
step
map Northern Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	38.88,28.11	37.12,31.47	36.33,32.84	37.16,34.47	37.94,35.40
path	38.99,34.74	39.68,33.27
Kill Tiger enemies around this area
collect Tiger Meat##12202 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Raptor Flesh",{
author="support@zygorguides.com",
},[[
step
map Northern Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	31.76,32.48	30.35,30.75	28.47,30.17	25.99,29.81
Kill Raptor enemies around this area
collect Raptor Flesh##12184 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Buzzard Wing",{
author="support@zygorguides.com",
},[[
step
map Desolace/0
path follow smart; loop on; ants straight; dist 30
path	70.84,30.47	71.26,28.17	70.74,25.26	69.85,22.02	68.46,20.37
path	66.75,19.37	64.49,18.94	60.82,18.93	58.94,20.10	59.54,24.35
path	61.77,28.24	63.91,30.59
Kill Dread Swoop enemies around this area
collect Buzzard Wing##3404 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Giant Clam Meat",{
author="support@zygorguides.com",
},[[
step
click Giant Clam##2744+
|tip They look like large shells underwater around this area.
|tip Elixirs of Water Breathing are very helpful while farming these.
collect Giant Clam Meat##4655 |n |goto Northern Stranglethorn/0  25.51,47.88
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Living Essence",{
author="support@zygorguides.com",
},[[
step
Kill Tar enemies around this area
collect Living Essence##12803 |n |goto Un'Goro Crater 46.46,17.23
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Essence of Fire",{
author="support@zygorguides.com",
},[[
step
Kill Fire Elementals around this area
collect Essence of Fire##7078 |n |goto Un'Goro Crater/0 49.29,47.07
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Essence of Air",{
author="support@zygorguides.com",
},[[
step
kill Dust Stormer##11744+
collect Essence of Air##7082 |n |goto Silithus/0 36.49,19.44
|tip These have a low drop rate.
You can find more around [28.75,24.40]
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Essence of Earth",{
author="support@zygorguides.com",
},[[
step
kill Desert Rumbler##11746+
collect Essence of Earth##7076 |n |goto Silithus/0 31.27,14.03
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Ichor of Undeath",{
author="support@zygorguides.com",
},[[
step
Kill Highborne enemies around this area
collect Ichor of Undeath##7972 |n |goto Winterspring 52.59,40.68
|tip These have a low drop rate.
You can find more around: |notinsticky
[53.62,42.09]
[56.02,44.24]
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Heart of Fire",{
author="support@zygorguides.com",
},[[
step
Kill Fire Elementals around this area
collect Essence of Fire##7078 |n |goto Un'Goro Crater/0 49.29,47.07
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Globe of Water",{
author="support@zygorguides.com",
},[[
step
Kill Purespring Elementals around this area
collect Essence of Water##7080 |n |goto Swamp of Sorrows/0 18.08,57.82
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Core of Earth",{
author="support@zygorguides.com",
},[[
step
kill Desert Rumbler##11746+
collect Essence of Earth##7076 |n |goto Silithus/0 31.27,14.03
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Breath of Wind",{
author="support@zygorguides.com",
},[[
step
kill Dust Stormer##11744+
collect Essence of Air##7082 |n |goto Silithus/0 36.49,19.44
|tip These have a low drop rate.
You can find more around [28.75,24.40]
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Elemental Fire",{
author="support@zygorguides.com",
},[[
step
Kill Fire Elementals around this area
collect Essence of Fire##7078 |n |goto Un'Goro Crater/0 49.29,47.07
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Elemental Water",{
author="support@zygorguides.com",
},[[
step
Kill Purespring Elementals around this area
collect Essence of Water##7080 |n |goto Swamp of Sorrows/0 18.08,57.82
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Elemental Air",{
author="support@zygorguides.com",
},[[
step
kill Dust Stormer##11744+
collect Essence of Air##7082 |n |goto Silithus/0 36.49,19.44
|tip These have a low drop rate.
You can find more around [28.75,24.40]
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Essence of Water",{
author="support@zygorguides.com",
},[[
step
Kill Purespring Elementals around this area
collect Essence of Water##7080 |n |goto Swamp of Sorrows/0 18.08,57.82
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Essence of Undeath",{
author="support@zygorguides.com",
},[[
step
Kill Scarlet enemies in the area
collect Essence of Undeath##12808 |n |goto Eastern Plaguelands/0 75.88,75.17
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Heart of the Wild",{
author="support@zygorguides.com",
},[[
step
Kill Tar enemies around this area
collect Heart of the Wild##10286 |n |goto Un'Goro Crater/0 45.10,17.69
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Elements\\Farming Guides\\Elemental Earth",{
author="support@zygorguides.com",
},[[
step
kill Obsidian Elemental##7031+
collect Elemental Earth##7067 |n |goto Burning Steppes/0 15.92,43.11
|tip These have a low drop rate.
'|confirm
]])
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
Enter the building |goto Stormwind City/0 53.49,73.85 < 5 |walk
talk Lucan Cordell##1317
|tip Inside the building.
Train Apprentice Enchanting |skillmax Enchanting,75 |goto Stormwind City/0 52.90,74.46
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Classic-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Enchanting |confirm |next "Begin_Profession_Leveling_Classic" |or
'|complete skill("Enchanting") >= 300 |next "Begin_Profession_Leveling_Classic" |or
stickystart "Collect_Soul_Dust_Total"
stickystart "Collect_Vision_Dust_Total"
stickystart "Collect_Dream_Dust_Total"
stickystart "Collect_Illusion_Dust_Total"
step
cast Disenchant##13262
collect 131 Strange Dust##10940 |or
|tip Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Enchanting") >= 101 |or
step
label "Collect_Soul_Dust_Total"
cast Disenchant##13262 |notinsticky
collect 122 Soul Dust##11083 |or
|tip Disenchant level 26-35 uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 185 |or
step
label "Collect_Vision_Dust_Total"
cast Disenchant##13262 |notinsticky
collect 237 Vision Dust##11137 |or
|tip Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 250 |or
step
label "Collect_Dream_Dust_Total"
cast Disenchant##13262 |notinsticky
collect 330 Dream Dust##11176 |or
|tip Disenchant level 46-55 uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 294 |or
step
label "Collect_Illusion_Dust_Total"
cast Disenchant##13262 |notinsticky
collect 82 Illusion Dust##16204 |or
|tip Disenchant level 56-60 uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 300 |or
stickystart "Collect_Lesser_Astral_Essence_Total"
stickystart "Collect_Greater_Astral_Essence_Total"
stickystart "Collect_Lesser_Nether_Essence_Total"
stickystart "Collect_Greater_Mystic_Essence_Total"
stickystart "Collect_Greater_Eternal_Essence_Total"
step
cast Disenchant##13262
collect 12 Greater Magic Essence##10939 |or
|tip Disenchant level 9-15 uncommon (green) armor and level 9-25 uncommon (green) weapons with Enchanting or purchase them from the auction house.
|tip You can combine 3 Lesser Magic Essences to create 1 Greater Magic Essence.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Enchanting") >= 110 |or
step
label "Collect_Lesser_Astral_Essence_Total"
cast Disenchant##13262 |notinsticky
collect 25 Lesser Astral Essence##10998 |or
|tip Disenchant level 21-25 uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 135 |or
step
label "Collect_Greater_Astral_Essence_Total"
cast Disenchant##13262 |notinsticky
collect 2 Greater Astral Essence##11082 |or
|tip Disenchant level 26-30 uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 151 |or
step
label "Collect_Lesser_Nether_Essence_Total"
cast Disenchant##13262 |notinsticky
collect 5 Lesser Nether Essence##11174 |or
|tip Disenchant level 28-40 uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
'|complete skill("Enchanting") >= 230 |or
step
label "Collect_Greater_Mystic_Essence_Total"
cast Disenchant##13262 |notinsticky
collect 2 Greater Mystic Essence##11135 |or
|tip Disenchant level 36-40 uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 201 |or
step
label "Collect_Greater_Eternal_Essence_Total"
cast Disenchant##13262 |notinsticky
collect 4 Greater Eternal Essence##16203 |or
|tip Disenchant level 51-56 uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
'|complete skill("Enchanting") >= 300 |or
stickystart "Collect_Golden_Rod_Total"
stickystart "Collect_Truesilver_Rod_Total"
stickystart "Collect_Arcanite_Rod_Total"
step
collect 1 Silver Rod##6338 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 1 Silver bar and 2 Rough Grinding Stones to craft.
'|complete skill("Enchanting") >= 101 |or
step
label "Collect_Golden_Rod_Total"
collect 1 Golden Rod##11128 |or
|tip Create it with Blacksmithing or purchase it from the auction house. |notinsticky
|tip It requires 1 Gold Bar and 2 Coarse Grinding Stones to craft. |notinsticky
'|complete skill("Enchanting") >= 156 |or
step
label "Collect_Truesilver_Rod_Total"
collect 1 Truesilver Rod##11144 |or
|tip Create it with Blacksmithing or purchase it from the auction house. |notinsticky
|tip It requires 1 Truesilver Bar and 1 Heavy Grinding Stones to craft. |notinsticky
'|complete skill("Enchanting") >= 201 |or
step
label "Collect_Arcanite_Rod_Total"
collect 1 Arcanite Rod##16206 |or
|tip Create it with Blacksmithing or purchase it from the auction house. |notinsticky
|tip It requires 3 Arcanite Bars and 1 Dense Grinding Stone to craft. |notinsticky
'|complete skill("Enchanting") >= 295 |or
stickystart "Collect_Black_Pearl_Total"
stickystart "Collect_Golden_Pearl_Total"
stickystart "Collect_Purple_Lotus_Total"
stickystart "Collect_Large_Brilliant_Shard_Total"
step
collect 1 Iridescent Pearl##5500 |or
|tip Farm it using the "Iridescent Pearl" farming guide or purchase it from the Auction House.
'|complete skill("Enchanting") >= 156 |or
step
label "Collect_Black_Pearl_Total"
collect 1 Black Pearl##7971 |or
|tip Farm it using the "Black Pearl" farming guide or purchase it from the Auction House. |notinsticky
'|complete skill("Enchanting") >= 201 |or
step
label "Collect_Golden_Pearl_Total"
collect 1 Golden Pearl##13926 |or
|tip Farm it using the "Golden Pearl" farming guide or purchase it from the Auction House. |notinsticky
'|complete skill("Enchanting") >= 295 |or
step
label "Collect_Purple_Lotus_Total"
collect 40 Purple Lotus##8831 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 265 |or
step
label "Collect_Large_Brilliant_Shard_Total"
collect 2 Large Brilliant Shard##14344 |or
|tip Disenchant level 51-60 rare (blue) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 301 |or
step
label "Begin_Profession_Leveling_Classic"
talk Jessara Cordell##1318
|tip Inside the building.
buy Copper Rod##6217 |goto 52.80,74.24 |complete skill("Enchanting") >= 25
buy Strange Dust##10940 |goto 52.80,74.24 |complete skill("Enchanting") >= 25
buy Lesser Magic Essence##10938 |goto 52.80,74.24 |complete skill("Enchanting") >= 25
|tip These are limited supply items that can also be purchased from the auction house.
step
create 1 Runed Copper Rod##7421,Enchanting,2
|tip Save this, you will need it for future steps.
step
cast Disenchant##13262
collect 69 Strange Dust##10940 |or
|tip Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 70 |or
step
create 69 Enchant Bracer - Minor Health##7418,Enchanting,70
|tip Place the enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Lucan Cordell##1317
|tip Inside the building.
Train Journeyman Enchanting |skillmax Enchanting,150 |goto Stormwind City/0 52.90,74.46
step
talk Lucan Cordell##1317
|tip Inside the building.
Train Enchant Bracer - Minor Stamina |learn Enchant Bracer - Minor Stamina##7457 |goto Stormwind City/0 52.90,74.46
step
cast Disenchant##13262
collect 25 Strange Dust##10940 |or
|tip Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 90 |or
step
create 25 Enchant Bracer - Minor Health##7418,Enchanting,90
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
|tip You may need to make more or less of these.
|tip Each additional Minor Health enchant requires 1 Strange Dust.
step
cast Disenchant##13262
collect 30 Strange Dust##10940 |or
|tip Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 100 |or
step
create 10 Enchant Bracer - Minor Stamina##7457,Enchanting,100
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
stickystart "Collect_Greater_Magic_Essence_101"
stickystart "Collect_Silver_Rod_101"
step
cast Disenchant##13262
collect 6 Strange Dust##10940 |or
|tip Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 101 |or
step
label "Collect_Greater_Magic_Essence_101"
cast Disenchant##13262 |notinsticky
collect 3 Greater Magic Essence##10939 |or
|tip Disenchant level 9-15 uncommon (green) armor and level 9-25 uncommon (green) weapons with Enchanting or purchase them from the auction house.
|tip You can combine 3 Lesser Magic Essences to create 1 Greater Magic Essence.
'|complete skill("Enchanting") >= 101 |or
step
label "Collect_Silver_Rod_101"
collect 1 Silver Rod##6338 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 1 Silver bar and 2 Rough Grinding Stones to craft.
'|complete skill("Enchanting") >= 101 |or
step
talk Lucan Cordell##1317
|tip Inside the building.
Train Runed Silver Rod |learn Runed Silver Rod##7795 |goto Stormwind City/0 52.90,74.46
step
create 1 Runed Silver Rod##7795,Enchanting,101
|tip Save this, you will need it for future steps.
step
talk Lucan Cordell##1317
|tip Inside the building.
Train Greater Magic Wand |learn Greater Magic Wand##14807 |goto Stormwind City/0 52.90,74.46
step
cast Disenchant##13262
collect 9 Greater Magic Essence##10939 |or
|tip Disenchant level 9-15 uncommon (green) armor and level 9-25 uncommon (green) weapons with Enchanting or purchase them from the auction house.
|tip You can combine 3 Lesser Magic Essences to create 1 Greater Magic Essence.
'|complete skill("Enchanting") >= 110 |or
step
Enter the building |goto Stormwind City/0 53.49,73.85 < 5 |walk
talk Jessara Cordell##1318
|tip Inside the building.
buy 9 Simple Wood##4470 |goto Stormwind City/0 52.80,74.24 |or
'|complete skill("Enchanting") >= 110 |or
step
create 9 Greater Magic Wand##14807,Enchanting,110
step
Enter the building |goto Ashenvale/0 35.64,50.99 < 10 |walk
talk Dalria##3954
|tip Inside the building.
buy Formula: Enchant Cloak - Minor Agility##11039 |goto Ashenvale/0 35.12,52.12 |or 2
buy Formula: Enchant Bracer - Lesser Strength##11101 |goto Ashenvale/0 35.12,52.12 |or 2
|tip These are limited supply items that can also be purchased from the auction house.
|tip The respawn timer seems to be between 30-50 minutes.
'|complete skill("Enchanting") >= 165 |or
step
use the Formula: Enchant Cloak - Minor Agility##11039
Train Enchant Cloak - Minor Agility |learn Enchant Cloak - Minor Agility##13419
step
cast Disenchant##13262
collect 25 Lesser Astral Essence##10998 |or
|tip Disenchant level 21-25 uncommon (green) items with Enchanting or purchase them from the auction house.
|tip If Astral Essence is expensive you can also make Minor Impact enchants using Strange Dust and Small Glimmering Shards.
'|complete skill("Enchanting") >= 135 |or
step
create 25 Enchant Cloak - Minor Agility##13419,Enchanting,135
|tip Place then enchant on a cloak slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' cloak to make some profit while increasing your skill level.
|tip If Astral Essence is expensive you can also make Minor Impact enchants using Strange Dust and Small Glimmering Shards.
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Lucan Cordell##1317
|tip Inside the building.
Train Expert Enchanting |skillmax Enchanting,225 |goto Stormwind City/0 52.90,74.46
step
talk Lucan Cordell##1317
|tip Inside the building.
Train Enchant Bracer - Lesser Stamina |learn Enchant Bracer - Lesser Stamina##13501 |goto Stormwind City/0 52.90,74.46
step
cast Disenchant##13262
collect 40 Soul Dust##11083 |or
|tip Disenchant level 26-35 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 155 |or
step
create 20 Enchant Bracer - Lesser Stamina##13501,Enchanting,155
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
step
use the Formula: Enchant Bracer - Lesser Strength##11101
|tip You purchased this in a previous step.
Train Enchant Bracer - Lesser Strength |learn Enchant Bracer - Lesser Strength##13536
stickystart "Collect_Soul_Dust_151"
stickystart "Collect_Golden_Rod_151"
stickystart "Collect_Iridescent_Pearl_151"
step
cast Disenchant##13262
collect 2 Greater Astral Essence##11082 |or
|tip Disenchant level 26-30 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 156 |or
step
label "Collect_Soul_Dust_151"
cast Disenchant##13262 |notinsticky
collect 2 Soul Dust##11083 |or
|tip Disenchant level 26-35 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 156 |or
step
label "Collect_Golden_Rod_151"
collect Golden Rod##11128 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 1 Gold Bar and 2 Coarse Grinding Stones to craft.
'|complete skill("Enchanting") >= 156 |or
step
label "Collect_Iridescent_Pearl_151"
collect 1 Iridescent Pearl##5500 |or
|tip Farm it using the "Iridescent Pearl" farming guide or purchase it from the Auction House.
'|complete skill("Enchanting") >= 156 |or
step
talk Lucan Cordell##1317
|tip Inside the building.
Train Runed Golden Rod |learn Runed Golden Rod##13628 |goto Stormwind City/0 52.90,74.46
step
create 1 Runed Golden Rod##13628,Enchanting,156
|tip Save this, you will need it for future steps.
step
cast Disenchant##13262
collect 80 Soul Dust##11083 |or
|tip Disenchant level 26-35 uncommon (green) items with Enchanting or purchase them from the auction house.
|tip You can also Enchant Bracer - Spirit for 1 Lesser Mystic Essence each from 165-185 if essence is cheaper than dust.
'|complete skill("Enchanting") >= 185 |or
step
create 40 Enchant Bracer - Lesser Strength##13536,Enchanting,185
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
|tip You may need to make more or less of these.
|tip Each additional Lesser Strength enchant requires 2 Soul Dust.
|tip You can also Enchant Bracer - Spirit for 1 Lesser Mystic Essence each from 165-185 if essence is cheaper than dust.
step
cast Disenchant##13262
collect 15 Vision Dust##11137 |or
|tip Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 200 |or
step
talk Lucan Cordell##1317
|tip Inside the building.
Train Enchant Bracer - Strength |learn Enchant Bracer - Strength##13661 |goto Stormwind City/0 52.90,74.46
step
create 15 Enchant Bracer - Strength##13661,Enchanting,200
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
stickystart "Collect_Greater_Mystic_Essence_201"
stickystart "Collect_Truesilver_Rod_201"
stickystart "Collect_Black_Pearl_201"
step
cast Disenchant##13262
collect 2 Vision Dust##11137 |or
|tip Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 201 |or
step
label "Collect_Greater_Mystic_Essence_201"
cast Disenchant##13262 |notinsticky
collect 2 Greater Mystic Essence##11135 |or
|tip Disenchant level 36-40 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 201 |or
step
label "Collect_Truesilver_Rod_201"
collect 1 Truesilver Rod##11144 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 1 Truesilver Bar and 1 Heavy Grinding Stones to craft.
'|complete skill("Enchanting") >= 201 |or
step
label "Collect_Black_Pearl_201"
collect 1 Black Pearl##7971 |or
|tip Farm it using the "Black Pearl" farming guide or purchase it from the Auction House.
'|complete skill("Enchanting") >= 201 |or
step
talk Lucan Cordell##1317
|tip Inside the building.
Train Runed Truesilver Rod |learn Runed Truesilver Rod##13702 |goto Stormwind City/0 52.90,74.46
step
create 1 Runed Truesilver Rod##13702,Enchanting,201
|tip Save this, you will need it for future steps.
step
cast Disenchant##13262
collect 25 Vision Dust##11137 |or
|tip Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 220 |or
step
create 25 Enchant Bracer - Strength##13661,Enchanting,220
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
|tip You may need to make more or less of these.
|tip Each additional Strength enchant requires 1 Vision Dust.
step
cast Disenchant##13262
collect 15 Vision Dust##11137 |or
|tip Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 225 |or
step
talk Lucan Cordell##1317
|tip Inside the building.
Train Enchant Cloak - Greater Defense |learn Enchant Cloak - Greater Defense##13746 |goto Stormwind City/0 52.90,74.46
step
create 5 Enchant Cloak - Greater Defense##13746,Enchanting,225
|tip Place then enchant on a cloak slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' cloak to make some profit while increasing your skill level.
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
talk Lucan Cordell##1317
|tip Inside the building.
Train Artisan Enchanting |skillmax Enchanting,300 |goto Stormwind City/0 52.90,74.46
step
talk Lucan Cordell##1317
|tip Inside the building.
Train Enchant Gloves - Agility |learn Enchant Gloves - Agility##13815 |goto Stormwind City/0 52.90,74.46
stickystart "Collect_Vision_Dust_230"
step
cast Disenchant##13262
collect 5 Lesser Nether Essence##11174 |or
|tip Disenchant level 28-40 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 230 |or
step
label "Collect_Vision_Dust_230"
cast Disenchant##13262 |notinsticky
collect 5 Vision Dust##11137 |or
|tip Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 230 |or
step
create 5 Enchant Gloves - Agility##13815,Enchanting,230
|tip Place then enchant on a cloak slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' gloves to make some profit while increasing your skill level.
step
cast Disenchant##13262
collect 25 Vision Dust##11137 |or
|tip Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 235 |or
step
talk Lucan Cordell##1317
|tip Inside the building.
Train Enchant Boots - Stamina |learn Enchant Boots - Stamina##13836 |goto Stormwind City/0 52.90,74.46
step
create 5 Enchant Boots - Stamina##13836,Enchanting,235
|tip Place then enchant on a boot slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' boots to make some profit while increasing your skill level.
step
cast Disenchant##13262
collect 150 Vision Dust##11137 |or
|tip Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 250 |or
step
talk Lucan Cordell##1317
|tip Inside the building.
Train Enchant Chest - Superior Health |learn Enchant Chest - Superior Health##13858 |goto Stormwind City/0 52.90,74.46
step
create 25 Enchant Chest - Superior Health##13858,Enchanting,250
|tip Place then enchant on a chest slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' chest to make some profit while increasing your skill level.
|tip You may need to make more or less of these.
|tip Each additional Superior Health enchant requires 6 Vision Dust.
step
talk Kania##15419
|tip Upstairs inside the building.
buy Formula: Lesser Mana Oil##20754 |goto Silithus/0 55.59,37.21 |or
|tip Enchant Bracer - Greater Stamina is the best recipe to use to 265.
|tip It is a random world drop but may be available in the auction house.
|tip Each Greater Stamina enchant requires 5 Dream Dust.
'|complete skill("Enchanting") >= 265 |or
step
use the Formula: Lesser Mana Oil##20754
Learn Lesser Mana Oil |learn Lesser Mana Oil##25127
|tip Enchant Bracer - Greater Stamina is the best recipe to use to 265.
|tip It is a random world drop but may be available in the auction house.
|tip Each Greater Stamina enchant requires 5 Dream Dust.
stickystart "Collect_Purple_Lotus_265"
step
cast Disenchant##13262
collect 60 Dream Dust##11176 |or
|tip Disenchant level 46-55 uncommon (green) items with Enchanting or purchase them from the auction house.
|tip Enchant Bracer - Greater Stamina is the best recipe to use to 265.
|tip It is a random world drop but may be available in the auction house.
|tip Each Greater Stamina enchant requires 5 Dream Dust.
'|complete skill("Enchanting") >= 265 |or
step
label "Collect_Purple_Lotus_265"
collect 40 Purple Lotus##8831 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip Enchant Bracer - Greater Stamina is the best recipe to use to 265. |notinsticky
|tip It is a random world drop but may be available in the auction house. |notinsticky
|tip Each Greater Stamina enchant requires 5 Dream Dust. |notinsticky
'|complete skill("Enchanting") >= 265 |or
step
talk Mythrin'dir##4229
|tip Inside the building.
buy 20 Crystal Vial##8925 |goto Darnassus/0 58.07,34.20 |or
|tip Enchant Bracer - Greater Stamina is the best recipe to use to 265.
|tip It is a random world drop but may be available in the auction house.
|tip Each Greater Stamina enchant requires 5 Dream Dust.
'|complete skill("Enchanting") >= 265 |or
step
create 20 Lesser Mana Oil##25127,Enchanting,265
|tip You may need to make more or less of these.
|tip Each additional Lesser Mana Oil requires 3 Dream Dust, 2 Purple Lotus, and 1 Crystal Vial.
|tip Enchant Bracer - Greater Stamina is the best recipe to use to 265.
|tip It is a random world drop but may be available in the auction house.
|tip Each Greater Stamina enchant requires 5 Dream Dust.
step
talk Mythrin'dir##4229
|tip Inside the building.
buy Formula: Enchant Shield - Greater Stamina##16217 |goto Darnassus/0 58.07,34.20 |or
|tip This is a limited supply item that cannot be purchased from the auction house.
|tip It binds on pickup, so you cannot mail it to another character.
|tip If he doesn't have it for sale, you will have to wait.
'|complete skill("Enchanting") >= 290 |or
step
use the Formula: Enchant Shield - Greater Stamina##16217
Learn Enchant Shield - Greater Stamina |learn Enchant Shield - Greater Stamina##20017
step
cast Disenchant##13262
collect 270 Dream Dust##11176 |or
|tip Disenchant level 46-55 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 290 |or
step
create 27 Enchant Shield - Greater Stamina##20017,Enchanting,290
|tip Place then enchant on a shield slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' shield to make some profit while increasing your skill level.
|tip You may need to make more or less of these.
|tip Each additional Greater Stamina enchant requires 10 Dream Dust.
step
Follow the road |goto Moonglade 40.25,37.05 < 30 |only if walking
talk Lorelae Wintersong##12022
|tip Inside the building.
buy Formula: Enchant Cloak - Superior Defense##16224 |goto Moonglade 48.24,40.14 |or 2
buy Formula: Runed Arcanite Rod##16243 |goto Moonglade 48.24,40.14 |or 2
|tip These are limited supply items that can also be purchased from the auction house.
|tip The Superior Defense formula has a longer respawn timer.
'|complete skill("Enchanting") >= 300 |or
step
use the Formula: Enchant Cloak - Superior Defense##16224
Learn Enchant Cloak - Superior Defense |learn Enchant Cloak - Superior Defense##20015
step
use the Formula: Runed Arcanite Rod##16243
Learn Runed Arcanite Rod |learn Runed Arcanite Rod##20051
step
cast Disenchant##13262
collect 72 Illusion Dust##16204 |or
|tip Disenchant level 56-60 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 299 |or
step
create 9 Enchant Cloak - Superior Defense##20015,Enchanting,299
|tip Place then enchant on a cloak slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' cloak to make some profit while increasing your skill level.
stickystart "Collect_Greater_Eternal_Essence_300"
stickystart "Collect_Large_Brilliant_Shard_300"
stickystart "Collect_Arcanite_Rod_300"
stickystart "Collect_Golden_Pearl_300"
step
cast Disenchant##13262
collect 10 Illusion Dust##16204 |or
|tip Disenchant level 56-60 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 300 |or
step
label "Collect_Greater_Eternal_Essence_300"
cast Disenchant##13262 |notinsticky
collect 4 Greater Eternal Essence##16203 |or
|tip Disenchant level 51-56 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 300 |or
step
label "Collect_Large_Brilliant_Shard_300"
cast Disenchant##13262 |notinsticky
collect 2 Large Brilliant Shard##14344 |or
|tip Disenchant level 51-60 rare (blue) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 300 |or
step
label "Collect_Arcanite_Rod_300"
collect 1 Arcanite Rod##16206 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 3 Arcanite Bars and 1 Dense Grinding Stone to craft.
'|complete skill("Enchanting") >= 300 |or
step
label "Collect_Golden_Pearl_300"
collect 1 Golden Pearl##13926 |or
|tip Farm it using the "Golden Pearl" farming guide or purchase it from the Auction House.
'|complete skill("Enchanting") >= 300 |or
step
create 1 Runed Arcanite Rod##20051,Enchanting,300
|tip Save this, you will need it for future steps.
step
Reach Level 58 |ding 58
|tip You must be at least level 58 to train Master professions in Outland.
|tip Use the leveling guides to accomplish this.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Burning Crusade-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Enchanting |confirm |next "Begin_Profession_Leveling_Outland" |or
'|complete skill("Enchanting") >= 350 |or |next "Begin_Profession_Leveling_Outland"
stickystart "Collect_Adamantite_Rod_Total"
stickystart "Collect_Greater_Eternal_Essence_Total"
stickystart "Collect_Lesser_Planar_Essence_Total"
stickystart "Collect_Greater_Planar_Essence_Total"
stickystart "Collect_Arcane_Dust_Total"
stickystart "Collect_Nightmare_Vine_Total"
stickystart "Collect_Primal_Might_Total"
stickystart "Collect_Large_Brilliant_Shard_Total"
stickystart "Collect_Large_Prismatic_Shard_Total"
step
collect 1 Fel Iron Rod##25843 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 6 Fel Iron Bars to craft.
'|complete skill("Enchanting") >= 301 |or
step
label "Collect_Adamantite_Rod_Total"
collect 1 Adamantite Rod##25844 |or
|tip Create it with Blacksmithing or purchase it from the auction house. |notinsticky
|tip It requires 10 Adamantite Bars to craft. |notinsticky
'|complete skill("Enchanting") >= 366 |or
step
label "Collect_Greater_Eternal_Essence_Total"
cast Disenchant##13262 |notinsticky
collect 4 Greater Eternal Essence##16203 |or
|tip Disenchant level 51-56 uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
'|complete skill("Enchanting") >= 301 |or
step
label "Collect_Lesser_Planar_Essence_Total"
cast Disenchant##13262 |notinsticky
collect 20 Lesser Planar Essence##22447 |or
|tip Disenchant Outland level 57-62 uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
'|complete skill("Enchanting") >= 340 |or
step
label "Collect_Greater_Planar_Essence_Total"
cast Disenchant##13262 |notinsticky
collect 8 Greater Planar Essence##22446 |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 351 |or
step
label "Collect_Arcane_Dust_Total"
cast Disenchant##13262 |notinsticky
collect 338 Arcane Dust##22445 |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 365 |or
step
label "Collect_Nightmare_Vine_Total"
collect 15 Nightmare Vine##22792 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 350 |or
step
label "Collect_Primal_Might_Total"
collect 1 Primal Might##23571 |or
|tip Create it with Alchemy or purchase it from the auction house. |notinsticky
|tip It requires 1 Primal Earth, 1 Primal Water, 1 Primal Air, 1 Primal Fire and 1 Primal Mana to craft.
'|complete skill("Enchanting") >= 366 |or
step
label "Collect_Large_Brilliant_Shard_Total"
cast Disenchant##13262 |notinsticky
collect 6 Large Brilliant Shard##14344 |or
|tip Disenchant level 51-60 rare (blue) items with Enchanting or purchase them from the auction house. |notinsticky
'|complete skill("Enchanting") >= 301 |or
step
label "Collect_Large_Prismatic_Shard_Total"
cast Disenchant##13262 |notinsticky
collect 13 Large Prismatic Shard##22449 |or
|tip Disenchant Outland rare (blue) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 375 |or
step
label "Begin_Profession_Leveling_Outland"
talk Johan Barnes##18773
|tip Upstairs in the middle of the tower.
Train Master Enchanting |skillmax Enchanting,375 |goto Hellfire Peninsula/0 53.63,66.14
step
talk Johan Barnes##18773
|tip Upstairs in the middle of the tower.
Train Runed Fel Iron Rod |learn Runed Fel Iron Rod##32664 |goto 53.63,66.14
step
talk Johan Barnes##18773
|tip Upstairs in the middle of the tower.
Train Enchant Bracer - Assault |learn Enchant Bracer - Assault##34002 |goto 53.63,66.14
stickystart "Collect_Greater_Eternal_Essence_301"
stickystart "Collect_Large_Brilliant_Shard_301"
step
collect 1 Fel Iron Rod##25843 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 6 Fel Iron Bars to craft.
'|complete skill("Enchanting") >= 301 |or
step
label "Collect_Greater_Eternal_Essence_301"
cast Disenchant##13262 |notinsticky
collect 4 Greater Eternal Essence##16203 |or
|tip Disenchant level 51-56 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 301 |or
step
label "Collect_Large_Brilliant_Shard_301"
cast Disenchant##13262 |notinsticky
collect 6 Large Brilliant Shard##14344 |or
|tip Disenchant level 51-60 rare (blue) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 301 |or
step
create 1 Runed Fel Iron Rod##32664,Enchanting,301
step
cast Disenchant##13262
collect 54 Arcane Dust##22445 |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 310 |or
step
create 9 Enchant Bracer - Assault##34002,Enchanting,310
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
step
cast Disenchant##13262
collect 36 Arcane Dust##22445 |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 316 |or
step
talk Johan Barnes##18773
|tip Upstairs in the middle of the tower.
Train Enchant Bracer - Brawn |learn Enchant Bracer - Brawn##27899 |goto 53.63,66.14
step
create 6 Enchant Bracer - Brawn##27899,Enchanting,316
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
|tip You may need to create more of these.
|tip Each additional Brawn enchant requires 6 Arcane Dust.
step
cast Disenchant##13262
collect 128 Arcane Dust##22445 |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 330 |or
step
talk Johan Barnes##18773
|tip Upstairs in the middle of the tower.
Train Enchant Gloves - Assault |learn Enchant Gloves - Assault##33996 |goto 53.63,66.14
step
create 16 Enchant Gloves - Assault##33996,Enchanting,330
|tip Place then enchant on a glove slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' glove to make some profit while increasing your skill level.
|tip You may need to create more or less of these.
|tip Each additional Assault enchant requires 8 Arcane Dust.
step
talk Madame Ruby##19663
buy Formula: Enchant Shield - Major Stamina##28282 |goto Shattrath City/0 63.28,71.05 |or 2
buy Formula: Superior Wizard Oil##22563 |goto Shattrath City/0 63.28,71.05 |or 2
|tip These are limited supply, so you may need to wait for them to respawn.
'|complete skill("Enchanting") >= 350 |or
step
use the Formula: Enchant Shield - Major Stamina##28282
|tip You purchased this in a previous step.
Learn Enchant Shield - Major Stamina |learn Enchant Shield - Major Stamina##34009
step
cast Disenchant##13262
collect 75 Arcane Dust##22445 |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 335 |or
step
create 5 Enchant Shield - Major Stamina##34009,Enchanting,335
|tip Place then enchant on a shield slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' shield to make some profit while increasing your skill level.
step
talk Johan Barnes##18773
|tip Upstairs in the middle of the tower.
Learn Enchant Shield - Resilience |learn Enchant Shield - Resilience##44383 |goto Hellfire Peninsula/0 53.63,66.14
|tip You can also keep making Major Stamina shield enchants for 15 Arcane Dust each.
stickystart "Collect_Large_Prismatic_Shards_340"
step
cast Disenchant##13262
collect 20 Lesser Planar Essence##22447 |or
|tip Disenchant Outland level 57-62 uncommon (green) items with Enchanting or purchase them from the auction house.
|tip You can also keep making Major Stamina shield enchants for 15 Arcane Dust each.
'|complete skill("Enchanting") >= 340 |or
step
label "Collect_Large_Prismatic_Shards_340"
cast Disenchant##13262
collect 5 Large Prismatic Shard##22449 |or
|tip Disenchant Outland rare (blue) items with Enchanting or purchase it from the auction house.
|tip You can also keep making Major Stamina shield enchants for 15 Arcane Dust each.
'|complete skill("Enchanting") >= 340 |or
step
create 5 Enchant Shield - Resilience##44383,Enchanting,340
|tip Place then enchant on a shield slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' shield to make some profit while increasing your skill level.
|tip You can also keep making Major Stamina shield enchants for 15 Arcane Dust each.
step
use Formula: Superior Wizard Oil##22563
|tip You purchased this in a previous step.
Train Superior Wizard Oil |learn Superior Wizard Oil##22522
stickystart "Collect_Nightmare_Vine_350"
step
cast Disenchant##13262
collect 45 Arcane Dust##22445 |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 350 |or
step
label "Collect_Nightmare_Vine_350"
collect 15 Nightmare Vine##22792 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Enchanting") >= 350 |or
step
talk Ernie Packwell##19194
buy 15 Imbued Vial##18256 |goto Shattrath City/0 65.97,64.78 |or
'|complete skill("Enchanting") >= 350 |or
step
create 15 Superior Wizard Oil##22522,Enchanting,350
|tip You may need to create more or less of these.
|tip Each additional Superior Wizard Oil requires 3 Arcane Dust, 1 Nightmare Vine, and 1 Imbued Vial.
step
talk Vodesiin##19004
buy Formula: Runed Adamantite Rod##25848 |goto Hellfire Peninsula/0 24.40,38.77 |or
'|complete skill("Enchanting") >= 351 |or
step
use the Formula: Runed Adamantite Rod##25848
|tip You purchased this in a previous step.
Train Runed Adamantite Rod |learn Runed Adamantite Rod##32665
stickystart "Collect_Primal_Might_366"
stickystart "Collect_Greater_Planar_Essence_366"
stickystart "Collect_Large_Prismatic_Shard_366"
step
collect 1 Adamantite Rod##25844 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 10 Adamantite Bars to craft.
'|complete skill("Enchanting") >= 351 |or
step
label "Collect_Primal_Might_366"
cast Disenchant##13262 |notinsticky
collect 1 Primal Might##23571 |or
|tip Create it with Alchemy or purchase it from the auction house.
|tip It requires 1 Primal Earth, 1 Primal Water, 1 Primal Air, 1 Primal Fire and 1 Primal Mana to craft.
'|complete skill("Enchanting") >= 351 |or
step
label "Collect_Greater_Planar_Essence_366"
cast Disenchant##13262 |notinsticky
collect 8 Greater Planar Essence##22446 |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 351 |or
step
label "Collect_Large_Prismatic_Shard_366"
cast Disenchant##13262 |notinsticky
collect 8 Large Prismatic Shard##22449 |or
|tip Disenchant Outland rare (blue) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 351 |or
step
create 1 Runed Adamantite Rod##32665,Enchanting,351
|tip Save this, you will need it for future steps.
step
Reach Level 68 |ding 68
|tip You must be at least level 68 to train Grand Master professions in Northrend.
|tip Use the leveling guides to accomplish this.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Lich King-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Enchanting |confirm |next "Begin_Profession_Leveling_Northrend" |or
'|complete skill("Enchanting") >= 450 |or |next "Begin_Profession_Leveling_Northrend"
stickystart "Collect_Titanium_Rod_Total"
stickystart "Collect_Arcane_Dust_Total"
stickystart "Collect_Infinite_Dust_Total"
stickystart "Collect_Greater_Planar_Essence_Total"
stickystart "Collect_Greater_Cosmic_Essence_Total"
stickystart "Collect_Dream_Shard_Total"
stickystart "Collect_Crystallized_Water_Total"
stickystart "Collect_Eternal_Earth_Total"
step
collect 1 Eternium Rod##25845 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 4 Eternium Bars to craft.
'|complete skill("Enchanting") >= 376 |or
step
label "Collect_Titanium_Rod_Total"
collect 1 Titanium Rod##41745 |or
|tip Create it with Blacksmithing or purchase it from the auction house. |notinsticky
|tip It requires 2 Saronite Bars and 1 Titanium Bar to craft. |notinsticky
'|complete skill("Enchanting") >= 426 |or
step
label "Collect_Arcane_Dust_Total"
cast Disenchant##13262 |notinsticky
collect 6 Arcane Dust##22445 |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
'|complete skill("Enchanting") >= 376 |or
step
label "Collect_Infinite_Dust_Total"
cast Disenchant##13262 |notinsticky
collect 751 Infinite Dust##34054 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
'|complete skill("Enchanting") >= 435 |or
step
label "Collect_Greater_Planar_Essence_Total"
cast Disenchant##13262 |notinsticky
collect 8 Greater Planar Essence##22446 |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip You can combine 3 Lesser Planar Essence into 1 Greater Planar Essence. |notinsticky
'|complete skill("Enchanting") >= 376 |or
step
label "Collect_Greater_Cosmic_Essence_Total"
cast Disenchant##13262 |notinsticky
collect 27 Greater Cosmic Essence##34055 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip You can combine 3 Lesser Cosmic Essence into 1 Greater Cosmic Essence. |notinsticky
'|complete skill("Enchanting") >= 435 |or
step
label "Collect_Dream_Shard_Total"
cast Disenchant##13262 |notinsticky
collect 36 Dream Shard##34052 |or
|tip Disenchant Northrend rare (blue) items with Enchanting or purchase them from the auction house. |notinsticky
|tip You can also use Create Dream Shard with Enchanting to turn 3 Small Dream Shards into one Dream Shard. |notinsticky
'|complete skill("Enchanting") >= 445 |or
step
label "Collect_Crystallized_Water_Total"
kill Boiling Spirit##25419+ |notinsticky
collect 10 Crystallized Water##37705 |goto Borean Tundra/0 46.94,13.40 |or
|tip Farm them from water elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Cobalt Deposits with the Northrend Mining guide. |notinsticky
'|complete skill("Enchanting") >= 395 |or
step
label "Collect_Eternal_Earth_Total"
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	69.56,57.80	70.04,60.18	72.14,60.08	72.84,57.52	74.78,55.78
path	72.60,54.62	69.13,55.36
use the Crystallized Earth##37701 |notinsticky
|tip Combine 10 Crystallized Earth into 1 Eternal Earth. |notinsticky
kill Lifeblood Elemental##29124+ |notinsticky
collect 134 Eternal Earth##35624 |or
|tip Farm them from earth elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Mining nodes with Northrend Mining guides. |notinsticky
'|complete skill("Enchanting") >= 445 |or
step
label "Begin_Profession_Leveling_Northrend"
talk Enchanter Nalthanis##28693
|tip Inside the building.
Train Grand Master Enchanting |skillmax Enchanting,450 |goto Dalaran/1 39.05,39.79
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
Train Enchant Cloak - Speed |learn Enchant Cloak - Speed##60609 |goto Dalaran/1 39.05,39.79
step
cast Disenchant##13262
collect 54 Infinite Dust##34054 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 360 |or
step
create 9 Enchant Cloak - Speed##60609,Enchanting,360
step
cast Disenchant##13262
collect 108 Infinite Dust##34054 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Enchanting") >= 375 |or
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
Train Enchant Bracers - Striking |learn Enchant Bracers - Striking##60616 |goto Dalaran/1 39.05,39.79
step
create 18 Enchant Bracers - Striking##60616,Enchanting,375
|tip You may need to create more or less of these.
|tip Each additional Striking enchant requires 6 Infinite Dust.
stickystart "Collect_Runed_Adamantite_Rod_376"
stickystart "Collect_Arcane_Dust_376"
stickystart "Collect_Greater_Planar_Essence_376"
step
collect 1 Eternium Rod##25845 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 4 Eternium Bars to craft.
'|complete skill("Enchanting") >= 376 |or
step
label "Collect_Runed_Adamantite_Rod_376"
collect 1 Runed Adamantite Rod##22462 |or
|tip You created this in a previous step. |notinsticky
'|complete skill("Enchanting") >= 376 |or
step
label "Collect_Arcane_Dust_376"
cast Disenchant##13262 |notinsticky
collect 6 Arcane Dust##22445 |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
'|complete skill("Enchanting") >= 376 |or
step
label "Collect_Greater_Planar_Essence_376"
cast Disenchant##13262 |notinsticky
collect 8 Greater Planar Essence##22446 |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip You can combine 3 Lesser Planar Essence into 1 Greater Planar Essence. |notinsticky
'|complete skill("Enchanting") >= 376 |or
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
Train Runed Eternium Rod |learn Runed Eternium Rod##32667 |goto Dalaran/1 39.05,39.79
step
create 1 Runed Eternium Rod##32667,Enchanting,376
|tip Keep this, you will need it for future steps.
step
cast Disenchant##13262
collect 36 Infinite Dust##34054 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Enchanting") >= 380 |or
step
create 6 Enchant Bracers - Striking##60616,Enchanting,380
|tip You may need to create more or less of these.
|tip Each additional Striking enchant requires 6 Infinite Dust.
step
cast Disenchant##13262
collect 50 Infinite Dust##34054 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 385 |or
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
Train Enchant Bracers - Exceptional Intellect |learn Enchant Bracers - Exceptional Intellect##44555 |goto Dalaran/1 39.05,39.79
step
create 5 Enchant Bracers - Exceptional Intellect##44555,Enchanting,385
stickystart "Collect_Infinite_Dust_395"
step
kill Boiling Spirit##25419+
collect 10 Crystallized Water##37705 |goto Borean Tundra/0 46.94,13.40 |or
|tip Farm them from water elementals or purchase them from the auction house.
|tip You can also farm them from Cobalt Deposits with the Northrend Mining guide.
'|complete skill("Enchanting") >= 395 |or
step
label "Collect_Infinite_Dust_395"
cast Disenchant##13262
collect 80 Infinite Dust##34054 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 395 |or
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
Train Enchant Boots - Icewalker |learn Enchant Boots - Icewalker##60623 |goto Dalaran/1 39.05,39.79
step
create 10 Enchant Boots - Icewalker##60623,Enchanting,395
step
cast Disenchant##13262
collect 144 Infinite Dust##34054 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Enchanting") >= 410 |or
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
Train Enchant Cloak - Superior Agility |learn Enchant Cloak - Superior Agility##44500 |goto Dalaran/1 39.05,39.79
step
create 16 Enchant Cloak - Superior Agility##44500,Enchanting,410
|tip You may need to create more or less of these.
|tip Each additional Superior Agility enchant requires 9 Infinite Dust.
step
cast Disenchant##13262
collect 60 Infinite Dust##34054 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 415 |or
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
Train Enchant Gloves - Expertise |learn Enchant Gloves - Expertise##44484 |goto Dalaran/1 39.05,39.79
step
create 5 Enchant Gloves - Expertise##44484,Enchanting,415
stickystart "Collect_Infinite_Dust_420"
step
cast Disenchant##13262
collect 5 Greater Cosmic Essence##34055 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house.
|tip You can combine 3 Lesser Cosmic Essence into 1 Greater Cosmic Essence.
'|complete skill("Enchanting") >= 420 |or
step
label "Collect_Infinite_Dust_420"
cast Disenchant##13262
collect 50 Infinite Dust##34054 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 420 |or
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
Train Enchant Boots - Greater Spirit |learn Enchant Boots - Greater Spirit##44508 |goto Dalaran/1 39.05,39.79
step
create 5 Enchant Boots - Greater Spirit##44508,Enchanting,420
stickystart "Collect_Infinite_Dust_425"
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	69.56,57.80	70.04,60.18	72.14,60.08	72.84,57.52	74.78,55.78
path	72.60,54.62	69.13,55.36
use the Crystallized Earth##37701
|tip Combine 10 Crystallized Earth into 1 Eternal Earth.
kill Lifeblood Elemental##29124+
collect 30 Eternal Earth##35624 |or
|tip Farm them from earth elementals or purchase them from the auction house.
|tip You can also farm them from Mining nodes with Northrend Mining guides.
'|complete skill("Enchanting") >= 425 |or
step
label "Collect_Infinite_Dust_425"
cast Disenchant##13262
collect 30 Infinite Dust##34054 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 425 |or
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
Train Enchant Shield - Defense |learn Enchant Shield - Defense##44489 |goto Dalaran/1 39.05,39.79
step
create 5 Enchant Shield - Defense##44489,Enchanting,425
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Lich King-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Enchanting |confirm |next "Begin_Profession_Leveling_Northrend" |or
'|complete skill("Enchanting") >= 450 |or |next "Begin_Profession_Leveling_Northrend"
stickystart "Collect_Runed_Eternium_Rod_426"
stickystart "Collect_Greater_Cosmic_Essence_426"
stickystart "Collect_Infinite_Dust_426"
stickystart "Collect_Dream_Shard_426"
step
collect 1 Titanium Rod##41745 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 2 Saronite Bars and 1 Titanium Bar to craft.
'|complete skill("Enchanting") >= 426 |or
step
label "Collect_Runed_Eternium_Rod_426"
collect 1 Runed Eternium Rod##22463 |or
|tip You created this in a previous step. |notinsticky
'|complete skill("Enchanting") >= 426 |or
step
label "Collect_Greater_Cosmic_Essence_426"
cast Disenchant##13262 |notinsticky
collect 12 Greater Cosmic Essence##34055 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip You can combine 3 Lesser Cosmic Essence into 1 Greater Cosmic Essence. |notinsticky
'|complete skill("Enchanting") >= 426 |or
step
label "Collect_Infinite_Dust_426"
cast Disenchant##13262 |notinsticky
collect 40 Infinite Dust##34054 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
'|complete skill("Enchanting") >= 426 |or
step
label "Collect_Dream_Shard_426"
cast Disenchant##13262 |notinsticky
collect 8 Dream Shard##34052 |or
|tip Disenchant Northrend rare (blue) items with Enchanting or purchase them from the auction house. |notinsticky
|tip You can also use Create Dream Shard with Enchanting to turn 3 Small Dream Shards into one Dream Shard. |notinsticky
'|complete skill("Enchanting") >= 426 |or
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
Train Runed Titanium Rod |learn Runed Titanium Rod##60619 |goto Dalaran/1 39.05,39.79
step
create 1 Runed Titanium Rod##60619,Enchanting,426
stickystart "Collect_Infinite_Dust_430"
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	69.56,57.80	70.04,60.18	72.14,60.08	72.84,57.52	74.78,55.78
path	72.60,54.62	69.13,55.36
use Crystallized Earth##37701
|tip Combine 10 Crystallized Earth into 1 Eternal Earth.
kill Lifeblood Elemental##29124+
collect 24 Eternal Earth##35624 |or
|tip Farm them from earth elementals or purchase them from the auction house.
|tip You can also farm them from Mining nodes with Northrend Mining guides.
'|complete skill("Enchanting") >= 430 |or
step
label "Collect_Infinite_Dust_430"
cast Disenchant##13262 |notinsticky
collect 24 Infinite Dust##34054 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
'|complete skill("Enchanting") >= 430 |or
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
Train Enchant Shield - Defense |learn Enchant Shield - Defense##44489 |goto Dalaran/1 39.05,39.79
step
create 4 Enchant Shield - Defense##44489,Enchanting,430
stickystart "Collect_Infinite_Dust_435"
stickystart "Collect_Dream_Shard_435"
step
cast Disenchant##13262
collect 10 Greater Cosmic Essence##34055 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house.
|tip You can combine 3 Lesser Cosmic Essence into 1 Greater Cosmic Essence.
'|complete skill("Enchanting") >= 435 |or
step
label "Collect_Infinite_Dust_435"
cast Disenchant##13262 |notinsticky
collect 75 Infinite Dust##34054 |or
|tip Disenchant Northrend uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
'|complete skill("Enchanting") >= 435 |or
step
label "Collect_Dream_Shard_435"
cast Disenchant##13262 |notinsticky
collect 4 Dream Shard##34052 |or
|tip Disenchant Northrend rare (blue) items with Enchanting or purchase them from the auction house. |notinsticky
|tip You can also use Create Dream Shard with Enchanting to turn 3 Small Dream Shards into one Dream Shard. |notinsticky
'|complete skill("Enchanting") >= 435 |or
step
talk Vanessa Sellers##32514
|tip Inside the building.
buy 1 Formula: Enchant Cloak - Mighty Armor##44471 |goto Dalaran/1 38.41,41.03 |or
|tip This formula costs 4 Dream Shards that you collected.
'|complete skill("Enchanting") >= 435 |or
step
use the Formula: Enchant Cloak - Mighty Armor##44471
Train Enchant Cloak - Mighty Armor |learn Enchant Cloak - Mighty Armor##47672 |goto Dalaran/1 39.05,39.79
step
create 5 Enchant Cloak - Mighty Armor##47672,Enchanting,435
stickystart "Collect_Dream_Shard_445"
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	69.56,57.80	70.04,60.18	72.14,60.08	72.84,57.52	74.78,55.78
path	72.60,54.62	69.13,55.36
use Crystallized Earth##37701
|tip Combine 10 Crystallized Earth into 1 Eternal Earth.
kill Lifeblood Elemental##29124+
collect 80 Eternal Earth##35624 |or
|tip Farm them from earth elementals or purchase them from the auction house.
|tip You can also farm them from Mining nodes with Northrend Mining guides.
'|complete skill("Enchanting") >= 445 |or
step
label "Collect_Dream_Shard_445"
cast Disenchant##13262 |notinsticky
collect 24 Dream Shard##34052 |or
|tip Disenchant Northrend rare (blue) items with Enchanting or purchase them from the auction house. |notinsticky
|tip You can also use Create Dream Shard with Enchanting to turn 3 Small Dream Shards into one Dream Shard. |notinsticky
'|complete skill("Enchanting") >= 445 |or
step
talk Vanessa Sellers##32514
|tip Inside the building.
buy 1 Formula: Enchant Gloves - Armsman##44485 |goto Dalaran/1 38.41,41.03 |or
|tip This formula costs 4 Dream Shards that you collected.
'|complete skill("Enchanting") >= 445 |or
step
use the Formula: Enchant Gloves - Armsman##44485
Train Enchant Gloves - Armsman |learn Enchant Gloves - Armsman##44625 |goto Dalaran/1 39.05,39.79
step
create 10 Enchant Gloves - Armsman##44625,Enchanting,445
step
talk Enchanter Nalthanis##28693
|tip Inside the building.
Train Abyssal Shatter |learn Abyssal Shatter##69412 |goto Dalaran/1 39.05,39.79
step
create 1 Abyssal Shatter##69412,Enchanting,450
|tip You can create these until you reach max skill.
|tip Typically you can make more from dust and essence than the Abyss Crystals used.
|tip Each Abyssal Shatter requires 1 Abyss Crystal.
|tip You can also Enchant Boots - Greater Assault for 4 Dream Shards and 4 Greater Cosmic Essence each.
|tip The formula for this is sold by Vanessa Sellers in Dalaran.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Lich King-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Enchanting |confirm |next "Begin_Enchanting_Leveling_Cataclysm" |or
'|complete skill("Enchanting") >= 450 |or |next "Begin_Enchanting_Leveling_Cataclysm"
stickystart "Collect_Greater_Celestial_Essence_451"
stickystart "Collect_Hypnotic_Dust_451"
stickystart "Collect_Lesser_Celestial_426"
step
label "Collect_Greater_Celestial_Essence_451"
cast Disenchant##13262 |notinsticky
collect 135 Greater Celestial Essence##52719 |or
|tip Disenchant Cataclysm uncommon (green) items or purchase them from the auction house. |notinsticky
|tip You can combine 3 Lesser Celestial Essence into 1 Greater Celestial Essence. |notinsticky
'|complete skill("Enchanting") >= 520 |or
step
label "Collect_Hypnotic_Dust_451"
cast Disenchant##13262 |notinsticky
collect 625 Hypnotic Dust##52555 |or
|tip Disenchant Cataclysm uncommon (green) items or purchase them from the auction house. |notinsticky
'|complete skill("Enchanting") >= 451 |or
step
label "Collect_Lesser_Celestial_426"
cast Disenchant##13262 |notinsticky
collect 5 Lesser Celestial Essence##52718 |or
|tip Disenchant Cataclysm uncommon (green) items or purchase them from the auction house. |notinsticky
'|complete skill("Enchanting") >= 470 |or
step
label "Begin_Enchanting_Leveling_Cataclysm"
talk Lucan Cordell##1317
|tip Inside the building.
Train Illustrious Grand Master Enchanting |skillmax Enchanting,525 |goto Stormwind City/0 52.90,74.45
|tip You must be at least level 75.
step
talk Jessara Cordell##1318
|tip Inside the building.
buy 75 Enchanting Vellum##38682 |goto Stormwind City/0 52.80,74.25
|only if skill("Enchanting") < 525
step
collect 10 Hypnotic Dust##52555
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 455
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Boots: Earthen Vitality>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
|tip You may neeed to make more than 4 as this recipe is yellow.
Reach 455 Enchanting |skill Enchanting,455
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Cloak: Lesser Power##74192 |goto Stormwind City/0 52.90,74.45
step
collect 15 Hypnotic Dust##52555
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 460
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Cloak: Lesser Power>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
|tip You may neeed to make more than 5 as this recipe is yellow.
Reach 460 Enchanting |skill Enchanting,460
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Gloves: Haste##74198 |goto Stormwind City/0 52.90,74.45
stickystart "Hypnotic_Dust_465"
step
collect 5 Lesser Celestial Essence##52718
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 465
step
label "Hypnotic_Dust_465"
collect 20 Hypnotic Dust##52555
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 465
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Gloves: Haste>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 465 Enchanting |skill Enchanting,465
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Cloak: Intellect##74202 |goto Stormwind City/0 52.90,74.45
step
collect 60 Hypnotic Dust##52555
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 475
step
Open Your Enchanting Crafting Panel:
_<Create 10 Enchant Cloak: Intellect>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 475 Enchanting |skill Enchanting,475
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Gloves: Exceptional Strength##74212 |goto Stormwind City/0 52.90,74.45
stickystart "Hypnotic_Dust_480"
step
collect 10 Greater Celestial Essence##52719
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can combine 3 Lesser Celestial Essence to create a Greater Celestial Essence.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 480
step
label "Hypnotic_Dust_480"
collect 15 Hypnotic Dust##52555
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 480
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Gloves: Exceptional Strength>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 480 Enchanting |skill Enchanting,480
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Boots: Major Agility##74213 |goto Stormwind City/0 52.90,74.45
stickystart "Hypnotic_Dust_485"
step
collect 10 Greater Celestial Essence##52719
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can combine 3 Lesser Celestial Essence to create a Greater Celestial Essence.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 485
step
label "Hypnotic_Dust_485"
collect 20 Hypnotic Dust##52555
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 485
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Boots: Major Agility>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 485 Enchanting |skill Enchanting,485
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Gloves: Greater Expertise##74220 |goto Stormwind City/0 52.90,74.45
stickystart "Hypnotic_Dust_490"
step
collect 10 Greater Celestial Essence##52719
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can combine 3 Lesser Celestial Essence to create a Greater Celestial Essence.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 490
step
label "Hypnotic_Dust_490"
collect 25 Hypnotic Dust##52555
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 490
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Gloves: Greater Expertise>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 490 Enchanting |skill Enchanting,490
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Shield: Mastery##74226 |goto Stormwind City/0 52.90,74.45
step
collect 60 Hypnotic Dust##52555
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 495
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Shield: Mastery>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 495 Enchanting |skill Enchanting,495
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Bracer: Precision##74232 |goto Stormwind City/0 52.90,74.45
stickystart "Hypnotic_Dust_505"
step
collect 10 Greater Celestial Essence##52719
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can combine 3 Lesser Celestial Essence to create a Greater Celestial Essence.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 505
step
label "Hypnotic_Dust_505"
collect 120 Hypnotic Dust##52555
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 505
step
Open Your Enchanting Crafting Panel:
_<Create 10 Enchant Bracers: Precision>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 505 Enchanting |skill Enchanting,505
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Shield: Superior Intellect##74235 |goto Stormwind City/0 52.90,74.45
stickystart "Hypnotic_Dust_510"
step
collect 20 Greater Celestial Essence##52719
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can combine 3 Lesser Celestial Essence to create a Greater Celestial Essence.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 510
step
label "Hypnotic_Dust_510"
collect 30 Hypnotic Dust##52555
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 510
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Shield: Superior Intellect>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 510 Enchanting |skill Enchanting,510
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Bracers: Exceptional Spirit##74237 |goto Stormwind City/0 52.90,74.45
stickystart "Hypnotic_Dust_515"
step
collect 15 Greater Celestial Essence##52719
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can combine 3 Lesser Celestial Essence to create a Greater Celestial Essence.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 515
step
label "Hypnotic_Dust_515"
collect 45 Hypnotic Dust##52555
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 515
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Bracers: Exceptional Spirit>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
Reach 515 Enchanting |skill Enchanting,515
step
talk Lucan Cordell##1317
|tip Inside the building.
learn Enchant Boots: Mastery##74238 |goto Stormwind City/0 52.90,74.45
stickystart "Hypnotic_Dust_525"
step
collect 51 Greater Celestial Essence##52719
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can combine 3 Lesser Celestial Essence to create a Greater Celestial Essence.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 525
step
label "Hypnotic_Dust_525"
collect 170 Hypnotic Dust##52555
|tip You can get these by Disenchanting Uncommon (green) items from any Cataclysm zone.
|tip You can also purchase them from the Auction House.
|only if skill("Enchanting") < 525
step
Open Your Enchanting Crafting Panel:
_<Create 17 Enchant Boots: Mastery>_
|tip Click the Enchanting Vellum in your bags to place the selected enchantment on them.
|tip This recipe will be green halfway through, so you may need to create more.
Reach 525 Enchanting |skill Enchanting,525
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
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Lesser Eternal Essence",{
author="support@zygorguides.com",
},[[
step
Disenchant level 40-50 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
|tip You may sometimes get Dream Dust instead of Lesser Eternal Essence.
collect Lesser Eternal Essence##16202 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Greater Eternal Essence",{
author="support@zygorguides.com",
},[[
step
Disenchant level 45-60 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
|tip You may sometimes get Illusion Dust instead of Greater Eternal Essence.
|tip You can turn 3 Lesser Eternal Essences into a Greater Eternal Essence.
collect Greater Eternal Essence##16203 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Small Brilliant Shard",{
author="support@zygorguides.com",
},[[
step
Disenchant level 38-50 blue and green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
|tip You may sometimes get Dream Dust instead of Small Brilliant Shards.
collect Small Brilliant Shard##14343 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Large Brilliant Shard",{
author="support@zygorguides.com",
},[[
step
Disenchant level 50-58 blue weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
|tip You may very rarely get Nexus Crystals instead of Large Brilliant Shards.
collect Large Brilliant Shard##14344 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Illusion Dust",{
author="support@zygorguides.com",
},[[
step
Disenchant level 45-60 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
|tip You may sometimes get Greater Eternal Essence instead of Illusion Dust.
collect Illusion Dust##16204 |n
'|confirm
]])
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
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Soul Dust",{
author="support@zygorguides.com",
},[[
step
Disenchant level 25-35 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
collect Soul Dust##11083 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Lesser Mystic Essence",{
author="support@zygorguides.com",
},[[
step
Disenchant level 30-35 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
collect Lesser Mystic Essence##11134 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Greater Mystic Essence",{
author="support@zygorguides.com",
},[[
step
Disenchant level 35-40 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
collect Greater Mystic Essence##11135 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Vision Dust",{
author="support@zygorguides.com",
},[[
step
Disenchant level 35-45 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
collect Vision Dust##11137 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Lesser Nether Essence",{
author="support@zygorguides.com",
},[[
step
Disenchant level 40-45 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
collect Lesser Nether Essence##11174 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Greater Nether Essence",{
author="support@zygorguides.com",
},[[
step
Disenchant level 45-50 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
collect Greater Nether Essence##11175 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Dream Dust",{
author="support@zygorguides.com",
},[[
step
Disenchant level 45-55 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
collect Dream Dust##11176 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Greater Nether Essence",{
author="support@zygorguides.com",
},[[
step
Disenchant level 45-50 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
collect Greater Nether Essence##11175 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Lesser Nether Essence",{
author="support@zygorguides.com",
},[[
step
Disenchant level 40-45 green weapons and armor
|tip You can disenchant old gear or buy some off the Auction House.
collect Lesser Nether Essence##11174 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Engineering (1-525)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Engineering') > 0 end,
description="This guide will walk you through leveling your Engineering skill from 1-525.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
talk Lilliam Sparkspindle##5518
Train Apprentice Engineering |skillmax Engineering,75 |goto Stormwind City/0 62.08,30.31
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Engineering |confirm |next "Begin_Profession_Leveling_Classic" |or
'|complete skill("Engineering") >= 375 |next "Begin_Profession_Leveling_Classic" |only if default |or
'|complete skill("Engineering") >= 390 |next "Begin_Profession_Leveling_Classic" |only if Gnome |or
stickystart "Collect_Coarse_Stone_Total"
stickystart "Collect_Heavy_Stone_Total"
stickystart "Collect_Dense_Stone_Total"
stickystart "Collect_Moss_Agate_Total"
stickystart "Collect_Medium_Leather_Total"
step
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
click Copper Vein##1731+
|tip They look like gray rocks with orange and yellow mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 60 Rough Stone##2835 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Engineering") >= 30 |only if default |or
'|complete skill("Engineering") >= 45 |only if Gnome |or
step
label "Collect_Coarse_Stone_Total"
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
collect 60 Coarse Stone##2836 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 65 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 95 |only if default |or
'|complete skill("Engineering") >= 110 |only if Gnome |or
step
label "Collect_Heavy_Stone_Total"
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
collect 30 Heavy Stone##2838 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 125 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 146 |only if default |or
'|complete skill("Engineering") >= 161 |only if Gnome |or
step
label "Collect_Solid_Stone_Total"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 120 Solid Stone##7912 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 175 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|goto 33.90,68.55 < 30 |c |noway |or
'|complete skill("Engineering") >= 195 |only if default |or
'|complete skill("Engineering") >= 210 |only if Gnome |or
step
label "Collect_Dense_Stone_Total"
map Un'Goro Crater/0
path follow smart; loop on; ants straight; dist 30
path	76.74,42.05	73.74,30.89	69.66,20.70	63.51,16.72	59.87,15.96
path	56.36,12.61	49.73,13.57	36.10,20.32	26.67,30.68	24.84,39.93
path	23.80,50.02	24.09,58.91	26.24,66.95	29.29,72.74	31.69,79.87
path	37.12,81.23	39.59,84.18	44.39,86.33	50.01,79.90	54.71,86.32
path	59.99,84.20	65.04,79.87	74.01,69.76	76.30,60.04	76.90,54.28
click Small Thorium Vein##324+ |notinsticky
click Rich Thorium Vein##175404+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 70 Dense Stone##12365 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 245 Mining skill to gather small veins and 275 skill to gather rich veins. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 260 |only if default |or
'|complete skill("Engineering") >= 275 |only if Gnome |or
step
label "Collect_Moss_Agate_Total"
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
collect 10 Moss Agate##1206 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 65 Mining skill to gather these. |notinsticky
|tip They can be Prospected from Tin Ore with Jewelcrafting. |notinsticky
'|complete skill("Engineering") >= 135 |only if default |or
'|complete skill("Engineering") >= 150 |only if Gnome |or
step
label "Collect_Medium_Leather_Total"
Kill Yeti enemies around this area |notinsticky
|tip Skin their corpses. |notinsticky
|tip You can find more inside the cave. |notinsticky
collect 15 Medium Leather##2319 |or |goto Hillsbrad Foothills 46.64,54.41
|tip Farm them with Skinning or purchase them from the auction house.
|tip You will need level 155 Skinning to collect these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 160 |only if default |or
'|complete skill("Engineering") >= 175 |only if Gnome |or
stickystart "Collect_Silver_Bar_Total"
stickystart "Collect_Bronze_Bar_Total"
stickystart "Collect_Steel_Bar_Total"
stickystart "Collect_Mithril_Bar_Total"
stickystart "Collect_Thorium_Bar_Total"
step
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
click Copper Vein##1731+
|tip They look like gray rocks with orange and yellow mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 66 Copper Ore##2770 |n
|tip Smelt the ore at a forge.
collect 66 Copper Bar##2840 |or
|tip Create them with Mining or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Engineering") >= 75 |only if default |or
'|complete skill("Engineering") >= 90 |only if Gnome |or
step
label "Collect_Silver_Bar_Total"
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
|tip You will need at least 75 Mining skill to gather these. |notinsticky
'|complete skill("Engineering") >= 105 |only if default |or
'|complete skill("Engineering") >= 120 |only if Gnome |or
step
label "Collect_Bronze_Bar_Total"
collect 120 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip Smelting 2 Bronze Bars requires 1 Copper Bar and 1 Tin Bar. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 175 |only if default |or
'|complete skill("Engineering") >= 190 |only if Gnome |or
step
label "Collect_Steel_Bar_Total"
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
collect 4 Iron Ore##2772 |n |notinsticky
|tip Buy 4 Coal from the Trade Supplier near the forge. |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 4 Steel Bar##3859 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 125 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 300 or itemcount(10498) >= 1 |only if default |or
'|complete skill("Engineering") >= 315 or itemcount(10498) >= 1 |only if Gnome |or
step
label "Collect_Mithril_Bar_Total"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+ |notinsticky
|tip They look like gray rocks with large white crystals along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 161 Mithril Ore##3858 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 161 Mithril Bar##3860 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 175 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|goto 33.90,68.55 < 30 |c |noway |or
'|complete skill("Engineering") >= 238 |only if default |or
'|complete skill("Engineering") >= 253 |only if Gnome |or
step
label "Collect_Thorium_Bar_Total"
map Un'Goro Crater/0
path follow smart; loop on; ants straight; dist 30
path	76.74,42.05	73.74,30.89	69.66,20.70	63.51,16.72	59.87,15.96
path	56.36,12.61	49.73,13.57	36.10,20.32	26.67,30.68	24.84,39.93
path	23.80,50.02	24.09,58.91	26.24,66.95	29.29,72.74	31.69,79.87
path	37.12,81.23	39.59,84.18	44.39,86.33	50.01,79.90	54.71,86.32
path	59.99,84.20	65.04,79.87	74.01,69.76	76.30,60.04	76.90,54.28
click Small Thorium Vein##324+ |notinsticky
click Rich Thorium Vein##175404+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 135 Thorium Ore##10620 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 135 Thorium Bar##12359 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 245 Mining skill to gather small veins and 275 skill to gather rich veins. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 300 |only if default |or
'|complete skill("Engineering") >= 315 |only if Gnome |or
stickystart "Collect_Wool_Cloth_Total"
stickystart "Collect_Mageweave_Cloth_Total"
stickystart "Collect_Runecloth_Total"
step
Kill enemies around this area
|tip Be sure to enter the mine as well.
collect 50 Linen Cloth##2589 |goto Westfall 44.55,25.01 |or
|tip Farm them from level 5-20 humanoid mobs or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Engineering") >= 100 |only if default |or
'|complete skill("Engineering") >= 115 |only if Gnome |or
step
label "Collect_Wool_Cloth_Total"
Follow the road up |goto Redridge Mountains 35.71,43.17 < 15 |only if walking |notinsticky
Continue following the road |goto 47.06,30.39 < 15 |only if walking |notinsticky
Follow the path up |goto 40.87,15.00 < 10 |only if walking |notinsticky
Kill Blackrock enemies around this area |notinsticky
collect 60 Wool Cloth##2592 |goto 32.67,9.75 |or
You can find more inside the cave |notinsticky
|tip Farm them from level 16-30 humanoid mobs or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 175 |only if default |or
'|complete skill("Engineering") >= 190 |only if Gnome |or
step
label "Collect_Mageweave_Cloth_Total"
Kill Dunemaul enemies around this area |notinsticky
collect 20 Mageweave Cloth##4338 |goto Tanaris/0 40.50,55.50 |or
|tip Farm them from level 38-50 humanoid mobs or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 216 |only if default |or
'|complete skill("Engineering") >= 231 |only if Gnome |or
step
label "Collect_Runecloth_Total"
Kill Blackrock enemies around this area |notinsticky
|tip You can find more inside the building. |notinsticky
collect 35 Runecloth###14047 |goto Burning Steppes 33.68,35.72 |or
|tip Farm them from level 50+ humanoid mobs or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 285 |only if default |or
'|complete skill("Engineering") >= 300 |only if Gnome |or
step
label "Begin_Profession_Leveling_Classic"
talk Billibub Cogspinner##5519
|tip Inside the building.
buy Blacksmith Hammer##5956 |goto Stormwind City/0 62.39,29.88 |or
|tip Save this, you will need it for future steps.
'|complete skill("Engineering") >= 300 |only if default |or
'|complete skill("Engineering") >= 315 |only if Gnome |or
stickystart "Collect_Copper_Bars_50"
step
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
click Copper Vein##1731+
|tip They look like gray rocks with orange and yellow mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 60 Rough Stone##2835 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Engineering") >= 30 |only if default |or
'|complete skill("Engineering") >= 45 |only if Gnome |or
step
label "Collect_Copper_Bars_50"
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
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
'|complete skill("Engineering") >= 50 |only if default |or
'|complete skill("Engineering") >= 65 |only if Gnome |or
step
create 60 Rough Blasting Powder##3918,Engineering,60 total |or
'|complete skill("Engineering") >= 75 |only if default |or
'|complete skill("Engineering") >= 90 |only if Gnome |or
step
create 1 Rough Blasting Powder##3918,Engineering,30 |only if default |or
create 1 Rough Blasting Powder##3918,Engineering,45 |only if Gnome |or
|tip Save at least 60 of these; you will need them for future steps.
step
talk Lilliam Sparkspindle##5518
Train Handful of Copper Bolts |learn Handful of Copper Bolts##3922 |goto Stormwind City/0 62.08,30.31
step
collect 30 Copper Bar##2840 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 50 |only if default |or
'|complete skill("Engineering") >= 65 |only if Gnome |or
step
create 30 Handful of Copper Bolts##3922,Engineering,30 total |goto Stormwind City/0 62.08,30.31 |or
|tip Stand next to an anvil.
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 75 |only if default |or
'|complete skill("Engineering") >= 90 |only if Gnome |or
step
create 30 Handful of Copper Bolts##3922,Engineering,50 |goto Stormwind City/0 62.08,30.31 |only if default |or
create 30 Handful of Copper Bolts##3922,Engineering,65 |goto Stormwind City/0 62.08,30.31 |only if Gnome |or
|tip Stand next to an anvil.
|tip Save at least 30 of these; you will need them for future steps.
|tip You may need to make a few more of these.
|tip Each additional Handful of Copper Bolts requires 1 copper bar.
step
talk Lilliam Sparkspindle##5518
Train Arclight Spanner |learn Arclight Spanner##7430 |goto Stormwind City/0 62.08,30.31
step
collect 6 Copper Bar##2840 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 51 or itemcount(6219) < 1 |only if default |or
'|complete skill("Engineering") >= 66 or itemcount(6219) < 1 |only if Gnome |or
step
create 1 Arclight Spanner##7430,Engineering,1 total |goto Stormwind City/0 62.08,30.31
|tip Stand next to an anvil.
|tip Save this, you will need it for future steps.
step
create 1 Arclight Spanner##7430,Engineering,51 |goto Stormwind City/0 62.08,30.31 |only if default |or
create 1 Arclight Spanner##7430,Engineering,66 |goto Stormwind City/0 62.08,30.31 |only if Gnome |or
|tip Stand next to an anvil.
|tip Save this, you will need it for future steps.
step
talk Lilliam Sparkspindle##5518
Train Rough Copper Bomb |learn Rough Copper Bomb##3923 |goto Stormwind City/0 62.08,30.31
stickystart "Collect_Handful_of_Copper_Bolts_75"
stickystart "Collect_Copper_Bar_75"
stickystart "Collect_Linen_Cloth_75"
step
collect 60 Rough Blasting Powder##4357 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 75 |only if default |or
'|complete skill("Engineering") >= 90 |only if Gnome |or
step
label "Collect_Handful_of_Copper_Bolts_75"
collect 30 Handful of Copper Bolts##4359 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 75 |only if default |or
'|complete skill("Engineering") >= 90 |only if Gnome |or
step
label "Collect_Copper_Bar_75"
collect 30 Copper Bar##2840 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 75 |only if default |or
'|complete skill("Engineering") >= 90 |only if Gnome |or
step
label "Collect_Linen_Cloth_75"
Kill enemies around this area
|tip Be sure to enter the mine as well.
collect 50 Linen Cloth##2589 |or |goto Westfall 44.55,25.01
|tip Farm them from level 5-20 humanoid mobs or purchase them from the auction house.
|tip Save at least 20 of these; you will need them for future steps.
|tip You may need more or less of these.
'|complete skill("Engineering") >= 75 |only if default |or
'|complete skill("Engineering") >= 90 |only if Gnome |or
step
create 30 Rough Copper Bomb##3923,Engineering,75 |goto Westfall/0 54.86,53.54 |only if default |or
create 30 Rough Copper Bomb##3923,Engineering,90 |goto Westfall/0 54.86,53.54 |only if Gnome |or
|tip Stand next to an anvil.
|tip You may need to create more or less of these.
|tip Each additional Rough Copper Bomb requires 2 Rough Blasting Powder, 1 Handful of Copper Bolts, 1 Copper Bar, and 1 Linen Cloth.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Lilliam Sparkspindle##5518
Train Journeyman Engineering |skillmax Engineering,150 |goto Stormwind City/0 62.08,30.31
step
talk Lilliam Sparkspindle##5518
Train Coarse Blasting Powder |learn Coarse Blasting Powder##3929 |goto Stormwind City/0 62.08,30.31
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
'|complete skill("Engineering") >= 95 |only if default |or
'|complete skill("Engineering") >= 110 |only if Gnome |or
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
'|complete skill("Engineering") >= 105 |only if default |or
'|complete skill("Engineering") >= 120 |only if Gnome |or
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
'|complete skill("Engineering") >= 135 |only if default |or
'|complete skill("Engineering") >= 150 |only if Gnome |or
step
create 60 Coarse Blasting Powder##3929,Engineering,60 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 100 |only if default |or
'|complete skill("Engineering") >= 115 |only if Gnome |or
step
create 1 Coarse Blasting Powder##3929,Engineering,95 |only if default |or
create 1 Coarse Blasting Powder##3929,Engineering,110 |only if Gnome |or
|tip Save 60 of these, they will be used in a later schematic.
step
talk Lilliam Sparkspindle##5518
Train Coarse Dynamite |learn Coarse Dynamite##3931 |goto Stormwind City/0 62.08,30.31
stickystart "Collect_Linen_Cloth_100"
step
collect 60 Coarse Blasting Powder##4364 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 100 |only if default |or
'|complete skill("Engineering") >= 115 |only if Gnome |or
step
label "Collect_Linen_Cloth_100"
collect 20 Linen Cloth##2589 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 100 |only if default |or
'|complete skill("Engineering") >= 115 |only if Gnome |or
step
create 20 Coarse Dynamite##3931,Engineering,100 |only if default |or
create 20 Coarse Dynamite##3931,Engineering,115 |only if Gnome |or
|tip You may need to create more or less of these.
|tip Each additional Coarse Dynamite requires 3 Coarse Blasting Powder and 1 Linen Cloth.
step
talk Lilliam Sparkspindle##5518
Train Silver Contact |learn Silver Contact##3973 |goto Stormwind City/0 62.08,30.31
step
collect 5 Silver Bar##2842 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 105 |only if default |or
'|complete skill("Engineering") >= 120 |only if Gnome |or
step
create 5 Silver Contact##3973,Engineering,105 |only if default |or
create 5 Silver Contact##3973,Engineering,120 |only if Gnome |or
step
talk Lilliam Sparkspindle##5518
Train Bronze Tube |learn Bronze Tube##3938 |goto Stormwind City/0 62.08,30.31
step
collect 120 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
|tip Smelting 2 Bronze Bars requires 1 Copper Bar and 1 Tin Bar.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 60 of these; you will need them for future steps.
'|complete skill("Engineering") >= 125 |only if default |or
'|complete skill("Engineering") >= 140 |only if Gnome |or
step
talk Billibub Cogspinner##5519
|tip Inside the building.
buy 25 Weak Flux##2880 |goto Stormwind City/0 62.39,29.88 |or
'|complete skill("Engineering") >= 125 |only if default |or
'|complete skill("Engineering") >= 140 |only if Gnome |or
step
create 10 Bronze Tube##3938,Engineering,10 total |goto 49.83,44.12 |or
|tip Stand next to an anvil.
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 135 |only if default |or
'|complete skill("Engineering") >= 150 |only if Gnome |or
step
create 15 Bronze Tube##3938,Engineering,125 |goto 49.83,44.12 |only if default |or
create 15 Bronze Tube##3938,Engineering,140 |goto 49.83,44.12 |only if Gnome |or
|tip Stand next to an anvil.
|tip Save at least 10 of these; you will need them for future steps.
|tip You may need to create more or less of these.
|tip Each additional Bronze Tube requires 2 Bronze Bars and 1 Weak Flux.
step
talk Lilliam Sparkspindle##5518
Train Standard Scope |learn Standard Scope##3978 |goto Stormwind City/0 62.08,30.31
stickystart "Collect_Bronze_Tube_135"
step
collect 10 Moss Agate##1206 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 135 |only if default |or
'|complete skill("Engineering") >= 150 |only if Gnome |or
step
label "Collect_Bronze_Tube_135"
collect 10 Bronze Tube##4371 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 135 |only if default |or
'|complete skill("Engineering") >= 150 |only if Gnome |or
step
create 10 Standard Scope##3978,Engineering,135 |only if default |or
create 10 Standard Scope##3978,Engineering,150 |only if Gnome |or
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Lilliam Sparkspindle##5518
Train Expert Engineering |skillmax Engineering,225 |goto Stormwind City/0 62.08,30.31
step
talk Lilliam Sparkspindle##5518
Train Heavy Blasting Powder |learn Heavy Blasting Powder##3945 |goto Stormwind City/0 62.08,30.31
step
talk Lilliam Sparkspindle##5518
Train Whirring Bronze Gizmo |learn Whirring Bronze Gizmo##3942 |goto Stormwind City/0 62.08,30.31
stickystart "Collect_Steel_Bars_300"
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
|tip They look like dense gray rocks with small silver-green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals".
collect 30 Heavy Stone##2838 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 125 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Engineering") >= 146 |only if default |or
'|complete skill("Engineering") >= 161 |only if Gnome |or
step
label "Collect_Steel_Bars_300"
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
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 4 Iron Ore##2772 |n |notinsticky
|tip Buy 4 Coal from the Trade Supplier near the forge. |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 4 Steel Bar##3859 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 125 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 300 or itemcount(10498) >= 1 |only if default |or
'|complete skill("Engineering") >= 315 or itemcount(10498) >= 1 |only if Gnome |or
step
create 30 Heavy Blasting Powder##3945,Engineering,30 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 146 |only if default |or
'|complete skill("Engineering") >= 161 |only if Gnome |or
stickystart "Collect_Wool_Cloth_Gizmo"
step
collect 30 Bronze Bar##2841 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 175 |only if default |or
'|complete skill("Engineering") >= 190 |only if Gnome |or
step
label "Collect_Wool_Cloth_Gizmo"
Follow the road up |goto Redridge Mountains 35.71,43.17 < 15 |only if walking
Continue following the road |goto 47.06,30.39 < 15 |only if walking
Follow the path up |goto 40.87,15.00 < 10 |only if walking
Kill Blackrock enemies around this area
collect 60 Wool Cloth##2592 |or |goto 36.22,9.93
|tip Farm them from level 16-30 humanoid mobs or purchase them from the auction house.
|tip Save at least 45 of these; you will need them for future steps.
You can find more inside the cave at [33.21,6.91]
'|complete skill("Engineering") >= 175 |only if default |or
'|complete skill("Engineering") >= 190 |only if Gnome |or
step
create 15 Whirring Bronze Gizmo##3942,Engineering,15 total |goto 49.83,44.12 |or
|tip Stand next to an anvil.
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 175 |only if default |or
'|complete skill("Engineering") >= 190 |only if Gnome |or
step
create 15 Whirring Bronze Gizmo##3942,Engineering,150 |goto 49.83,44.12 |only if default |or
create 15 Whirring Bronze Gizmo##3942,Engineering,165 |goto 49.83,44.12 |only if Gnome |or
|tip Stand next to an anvil.
|tip Save at least 15 of these; you will need them for future steps.
|tip You may need to create more or less of these.
|tip Each additional Whirring Bronze Gizmo requires 2 Bronze Bars and 1 Wool Cloth.
step
talk Lilliam Sparkspindle##5518
Train Bronze Framework |learn Bronze Framework##3953 |goto Stormwind City/0 62.08,30.31
stickystart "Collect_Medium_Leather_Framework"
stickystart "Collect_Wool_Cloth_Framework"
step
collect 30 Bronze Bar##2841 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 175 |only if default |or
'|complete skill("Engineering") >= 190 |only if Gnome |or
step
label "Collect_Medium_Leather_Framework"
Kill Yeti enemies around this area
|tip Skin their corpses.
|tip You can find more inside the cave.
|tip You will need level 155 Skinning to collect these.
collect 15 Medium Leather##2319 |or |goto Hillsbrad Foothills 46.64,54.41
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Engineering") >= 160 |only if default |or
'|complete skill("Engineering") >= 175 |only if Gnome |or
step
label "Collect_Wool_Cloth_Framework"
collect 15 Wool Cloth##2592 |or |goto Redridge Mountains 36.22,9.93
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 160 |only if default |or
'|complete skill("Engineering") >= 175 |only if Gnome |or
step
create 15 Bronze Framework##3953,Engineering,15 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 175 |only if default |or
'|complete skill("Engineering") >= 190 |only if Gnome |or
step
create 1 Bronze Framework##3953,Engineering,160 |only if default |or
create 1 Bronze Framework##3953,Engineering,175 |only if Gnome |or
|tip Save at least 15 of these; you will need them for future steps.
step
talk Lilliam Sparkspindle##5518
Train Explosive Sheep |learn Explosive Sheep##3955 |goto Stormwind City/0 62.08,30.31
stickystart "Collect_Whirring_Bronze_Gizmo_175"
stickystart "Collect_Bronze_Framework_175"
stickystart "Collect_Wool_Cloth_175"
step
collect 30 Heavy Blasting Powder##4377 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 175 |only if default |or
'|complete skill("Engineering") >= 190 |only if Gnome |or
step
label "Collect_Whirring_Bronze_Gizmo_175"
collect 15 Whirring Bronze Gizmo##4375 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 175 |only if default |or
'|complete skill("Engineering") >= 190 |only if Gnome |or
step
label "Collect_Bronze_Framework_175"
collect 15 Bronze Framework##4382 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 175 |only if default |or
'|complete skill("Engineering") >= 190 |only if Gnome |or
step
label "Collect_Wool_Cloth_175"
collect 30 Wool Cloth##2592 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 175 |only if default |or
'|complete skill("Engineering") >= 190 |only if Gnome |or
step
create 15 Explosive Sheep##3955,Engineering,175 |goto 49.83,44.12 |only if default |or
create 15 Explosive Sheep##3955,Engineering,190 |goto 49.83,44.12 |only if Gnome |or
|tip Stand next to an anvil.
|tip Save 5 of these if you intend to specialize in Goblin Engineering later.
step
talk Lilliam Sparkspindle##5518
Train Gyromatic Micro-Adjustor |learn Gyromatic Micro-Adjustor##12590 |goto Stormwind City/0 62.08,30.31
step
collect 4 Steel Bar##3859 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 300 or itemcount(10498) >= 1 |only if default |or
'|complete skill("Engineering") >= 315 or itemcount(10498) >= 1 |only if Gnome |or
step
create 1 Gyromatic Micro-Adjustor##12590,Engineering,1 total |goto 49.83,44.12 |or
|tip Stand next to an anvil.
|tip Save this, you will need it for future steps.
'|complete skill("Engineering") >= 300 |only if default |or
'|complete skill("Engineering") >= 315 |only if Gnome |or
step
talk Lilliam Sparkspindle##5518
Train Solid Blasting Powder |learn Solid Blasting Powder##12585 |goto Stormwind City/0 62.08,30.31
stickystart "Collect_Mithril_Bar_200"
step
label "Collect_Solid_Stone_195"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals".
collect 120 Solid Stone##7912 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 175 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|goto 33.90,68.55 < 30 |c |noway |or
'|complete skill("Engineering") >= 195 |only if default |or
'|complete skill("Engineering") >= 210 |only if Gnome |or
step
label "Collect_Mithril_Bar_200"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 161 Mithril Ore##3858 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 161 Mithril Bar##3860 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 175 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip Save these, you will need them for future steps. |notinsticky
'|goto 33.90,68.55 < 30 |c |noway |or
'|complete skill("Engineering") >= 200 |only if default |or
'|complete skill("Engineering") >= 215 |only if Gnome |or
step
create 60 Solid Blasting Powder##12585,Engineering,60 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 250 |only if default |or
'|complete skill("Engineering") >= 265 |only if Gnome |or
step
create 1 Solid Blasting Powder##12585,Engineering,195 |only if default |or
create 1 Solid Blasting Powder##12585,Engineering,210 |only if Gnome |or
|tip Save at least 60 of these; you will need them for future steps.
|tip You may need to create more of these.
|tip Each additional Solid Blasting Powder requires 2 Solid Stone.
step
talk Lilliam Sparkspindle##5518
Train Mithril Tube |learn Mithril Tube##12589 |goto Stormwind City/0 62.08,30.31
step
collect 21 Mithril Bar##3860 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 200 |only if default |or
'|complete skill("Engineering") >= 215 |only if Gnome |or
step
create 7 Mithril Tube##12589,Engineering,200 |goto 49.83,44.12 |only if default |or
create 7 Mithril Tube##12589,Engineering,215 |goto 49.83,44.12 |only if Gnome |or
|tip Stand next to an anvil.
|tip You  may need to create more or less of these.
|tip Each additional Mithril Tube requires 3 Mithril Bars.
|tip Save 6 of these if you intend to specialize in Gnomish Engineering later.
step
talk Lilliam Sparkspindle##5518
Train Unstable Trigger |learn Unstable Trigger##12591 |goto Stormwind City/0 62.08,30.31
stickystart "Collect_Mithril_Bar_216"
stickystart "Collect_Mageweave_Cloth_216"
step
collect 20 Solid Blasting Powder##10505 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 216 |only if default |or
'|complete skill("Engineering") >= 231 |only if Gnome |or
step
label "Collect_Mithril_Bar_216"
collect 20 Mithril Bar##3860 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 216 |only if default |or
'|complete skill("Engineering") >= 231 |only if Gnome |or
step
label "Collect_Mageweave_Cloth_216"
Kill Dunemaul enemies around this area
collect 20 Mageweave Cloth##4338 |or |goto Tanaris/0 40.50,55.50
|tip Farm them from level 38-50 humanoid mobs or purchase them from the auction house.
'|complete skill("Engineering") >= 216 |only if default |or
'|complete skill("Engineering") >= 231 |only if Gnome |or
step
create 20 Unstable Trigger##12591,Engineering,20 total |goto 49.83,44.12 |or
|tip Stand next to an anvil.
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 250 |only if default |or
'|complete skill("Engineering") >= 265 |only if Gnome |or
step
create 1 Unstable Trigger##12591,Engineering,216 |goto Stormwind City/0 49.83,44.12 |only if default |or
create 1 Unstable Trigger##12591,Engineering,231 |goto Stormwind City/0 49.83,44.12 |only if Gnome |or
|tip Stand next to an anvil.
|tip Save at least 20 of these; you will need them for future steps.
|tip You may need to create more or less of these.
|tip Each additional Unstable Trigger requires 1 Solid Blasting Powder, 1 Mithril Bar, and 1 Mageweave Cloth.
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
talk Lilliam Sparkspindle##5518
Train Artisan Engineering |skillmax Engineering,300 |goto Stormwind City/0 62.08,30.31
step
talk Lilliam Sparkspindle##5518
Train Mithril Casing |learn Mithril Casing##12599 |goto Stormwind City/0 62.08,30.31
step
collect 120 Mithril Bar##3860 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 238 |only if default |or
'|complete skill("Engineering") >= 253 |only if Gnome |or
step
create 40 Mithril Casing##12599,Engineering,40 total |goto 49.83,44.12 |or
|tip Stand next to an anvil.
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 250 |only if default |or
'|complete skill("Engineering") >= 265 |only if Gnome |or
step
create 1 Mithril Casing##12599,Engineering,238 |goto 49.83,44.12 |only if default |or
create 1 Mithril Casing##12599,Engineering,253 |goto 49.83,44.12 |only if Gnome |or
|tip Stand next to an anvil.
|tip Save at least 40 of these; you will need them for future steps.
|tip You may need to create more or less of these.
|tip Each additional Mithril Casing requires 3 Mithril Bars.
step
talk Lilliam Sparkspindle##5518
Train Hi-Explosive Bomb |learn Hi-Explosive Bomb##12619 |goto Stormwind City/0 62.08,30.31
stickystart "Collect_Unstable_Trigger_250"
stickystart "Collect_Mithril_Casing_250"
step
collect 40 Solid Blasting Powder##10505 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 250 |only if default |or
'|complete skill("Engineering") >= 265 |only if Gnome |or
step
label "Collect_Unstable_Trigger_250"
collect 20 Unstable Trigger##10560 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 250 |only if default |or
'|complete skill("Engineering") >= 265 |only if Gnome |or
step
label "Collect_Mithril_Casing_250"
collect 40 Mithril Casing##10561 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 250 |only if default |or
'|complete skill("Engineering") >= 265 |only if Gnome |or
step
create 20 Hi-Explosive Bomb##12619,Engineering,250 |goto 49.83,44.12 |only if default |or
create 20 Hi-Explosive Bomb##12619,Engineering,265 |goto 49.83,44.12 |only if Gnome |or
|tip Stand next to an anvil.
|tip You may need to create more or less of these.
|tip Each additional Hi-Explosive Bomb requires 2 Solid Blasting Powders, 1 Unstable Trigger, and 1 Mithril Casing.
step
talk Lilliam Sparkspindle##5518
Train Dense Blasting Powder |learn Dense Blasting Powder##19788 |goto Stormwind City/0 62.08,30.31
stickystart "Collect_Thorium_Bar_285"
step
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	76.74,42.05	73.74,30.89	69.66,20.70	63.51,16.72	59.87,15.96
path	56.36,12.61	49.73,13.57	36.10,20.32	26.67,30.68	24.84,39.93
path	23.80,50.02	24.09,58.91	26.24,66.95	29.29,72.74	31.69,79.87
path	37.12,81.23	39.59,84.18	44.39,86.33	50.01,79.90	54.71,86.32
path	59.99,84.20	65.04,79.87	74.01,69.76	76.30,60.04	76.90,54.28
click Small Thorium Vein##324+
click Rich Thorium Vein##175404+
|tip They look like green mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 70 Dense Stone##12365 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 245 Mining skill to gather small veins and 275 skill to gather rich veins.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Engineering") >= 260 |only if default |or
'|complete skill("Engineering") >= 275 |only if Gnome |or
step
label "Collect_Thorium_Bar_285"
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	76.74,42.05	73.74,30.89	69.66,20.70	63.51,16.72	59.87,15.96
path	56.36,12.61	49.73,13.57	36.10,20.32	26.67,30.68	24.84,39.93
path	23.80,50.02	24.09,58.91	26.24,66.95	29.29,72.74	31.69,79.87
path	37.12,81.23	39.59,84.18	44.39,86.33	50.01,79.90	54.71,86.32
path	59.99,84.20	65.04,79.87	74.01,69.76	76.30,60.04	76.90,54.28
click Small Thorium Vein##324+ |notinsticky
click Rich Thorium Vein##175404+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 135 Thorium Ore##10620 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 135 Thorium Bar##12359 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 245 Mining skill to gather small veins and 275 skill to gather rich veins. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip Save of these, you will need them for future steps. |notinsticky
'|complete skill("Engineering") >= 285 |only if default |or
'|complete skill("Engineering") >= 300 |only if Gnome |or
step
create 35 Dense Blasting Powder##19788,Engineering,260 |only if default |or
create 35 Dense Blasting Powder##19788,Engineering,275 |only if Gnome |or
|tip You may need to create more or less of these.
|tip Each additional Dense Blasting Powder requires 2 Dense Stone.
|tip Save these for a later step.
step
talk Lilliam Sparkspindle##5518
Train Thorium Widget |learn Thorium Widget##19791 |goto Stormwind City/0 62.08,30.31
stickystart "Collect_Runecloth_285"
step
collect 105 Thorium Bar##12359 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 285 |only if default |or
'|complete skill("Engineering") >= 300 |only if Gnome |or
step
label "Collect_Runecloth_285"
Kill Blackrock enemies around this area
|tip You can find more inside the building.
collect 35 Runecloth###14047 |or |goto Burning Steppes 42.17,35.64
|tip Farm them from level 50+ humanoid mobs or purchase them from the auction house.
'|complete skill("Engineering") >= 285 |only if default |or
'|complete skill("Engineering") >= 300 |only if Gnome |or
step
create 35 Thorium Widget##19791,Engineering,285 |goto Stormwind City/0 62.08,30.31 |only if default |or
create 35 Thorium Widget##19791,Engineering,300 |goto Stormwind City/0 62.08,30.31 |only if Gnome |or
|tip Stand next to an anvil.
|tip You may need to create more or less of these.
|tip Each additional Thorium Widget requires 3 Thorium Bar and 2 Runecloth.
step
talk Lilliam Sparkspindle##5518
Train Thorium Shells |learn Thorium Shells##19800 |goto Stormwind City/0 62.08,30.31
step
collect 30 Thorium Bar##12359 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 300 |only if default |or
'|complete skill("Engineering") >= 315 |only if Gnome |or
step
collect 15 Dense Blasting Powder##15992 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 300 |only if default |or
'|complete skill("Engineering") >= 315 |only if Gnome |or
step
create 15 Thorium Shells##19800,Engineering,300 |goto Stormwind City/0 62.08,30.31 |only if default |or
create 15 Thorium Shells##19800,Engineering,315 |goto Stormwind City/0 62.08,30.31 |only if Gnome |or
|tip Stand next to an anvil.
|tip You may need to create more of these.
|tip Each additional Thorium Shells requires 2 Thorium Bar and 1 Dense Blasting Powder.
step
Reach Level 58 |ding 58
|tip You must be at least level 58 to train Master professions in Outland.
|tip Use the leveling guides to accomplish this.
step
talk Lebowski##18775
Train Master Engineering |skillmax Engineering,375 |goto Hellfire Peninsula/0 55.72,65.59
step
talk Lebowski##18775
Train Handful of Fel Iron Bolts |learn Handful of Fel Iron Bolts##30305 |goto Hellfire Peninsula/0 55.72,65.59
step
talk Lebowski##18775
Train Elemental Blasting Powder |learn Elemental Blasting Powder##30303 |goto Hellfire Peninsula/0 55.72,65.59
step
talk Lebowski##18775
Train Fel Iron Casing |learn Fel Iron Casing##30304 |goto Hellfire Peninsula/0 55.72,65.59
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Burning Crusade-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Engineering |confirm |next "Begin_Profession_Leveling_Outland" |or
'|complete skill("Engineering") >= 350 |only if default |or |next "Begin_Profession_Leveling_Outland"
'|complete skill("Engineering") >= 365 |only if Gnome |or |next "Begin_Profession_Leveling_Outland"
stickystart "Collect_Adamantite_Bar_Total"
stickystart "Collect_Mote_of_Earth_Total"
stickystart "Collect_Mote_of_Fire_Total"
stickystart "Collect_Netherweave_Cloth_Total"
step
map Hellfire Peninsula/0
path follow smart; loop on; ants curved; dist 30
path	61.18,53.16	59.42,53.54	56.91,53.92	54.90,54.86	53.18,55.25
path	51.34,55.20	49.90,55.60	49.04,57.45	50.16,60.83	49.02,60.92
path	47.44,58.77	46.76,60.05	46.20,62.02	47.37,63.98	47.83,65.81
path	47.16,66.47	45.79,66.60	44.21,65.76	41.71,62.02	40.00,64.07
path	39.07,67.14	37.06,68.58	35.58,67.87	34.61,66.03	35.33,62.85
path	35.81,58.67	35.29,58.94	32.35,61.33	30.85,59.67	29.71,63.05
path	29.26,65.43	27.21,66.94	27.80,69.02	30.66,71.05	30.28,73.48
path	29.34,78.32	28.78,80.65	26.73,79.28	25.47,77.69	25.43,73.63
path	26.11,68.83	23.56,68.58	22.88,67.22	23.04,64.10	23.13,61.46
path	23.99,59.63	25.37,57.94	26.67,56.30	28.01,52.46	26.17,52.80
path	22.27,53.94	20.01,54.64	18.67,53.50	17.72,54.20	16.52,56.20
path	16.24,60.79	15.43,63.53	13.94,63.05	12.48,60.03	11.43,57.48
path	9.19,53.83	7.40,50.44	8.67,48.71	11.35,46.39	11.48,40.72
path	11.84,36.43	12.94,35.24	15.02,37.15	18.23,39.09	18.73,43.72
path	20.37,43.29	22.88,44.31	25.01,44.71	26.26,42.90	27.05,39.10
path	27.99,35.60	30.10,33.23	32.56,33.16	34.21,32.05	34.96,28.98
path	36.33,30.40	34.65,39.54	34.51,46.14	35.32,48.06	38.11,52.58
path	39.16,52.09	40.60,52.56	42.91,54.76	45.15,55.66	46.32,54.44
path	46.57,52.82	45.70,51.11	43.85,48.65	41.20,45.62	38.61,43.47
path	38.32,39.65	39.38,34.88	39.54,31.73	39.45,28.32	41.05,28.70
path	44.26,31.10	47.36,29.11	49.58,28.68	52.45,22.67	53.60,25.94
path	55.01,30.04	52.77,31.72	47.83,36.33	46.62,44.84	50.12,49.28
path	54.39,48.02	62.02,47.32
click Fel Iron Deposit##181555+
|tip They look like green mineral clusters around this path.
|tip Enter caves along the path.
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
collect 140 Fel Iron Ore##23424 |n
|tip Smelt the ore at a forge.
collect 70 Fel Iron Bar##23445 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 321 |only if default |or
'|complete skill("Engineering") >= 336 |only if Gnome |or
step
label "Collect_Adamantite_Bar_Total"
map Nagrand/0
path follow smart; loop on; ants curved; dist 30
path	49.90,71.01	48.62,71.28	48.51,75.60	46.76,77.91	42.77,74.39
path	42.08,76.76	41.94,80.24	41.11,84.55	38.45,83.23	36.21,82.30
path	33.57,82.12	31.13,80.54	28.19,78.49	27.67,72.30	28.58,69.31
path	28.20,63.62	27.06,62.92	26.75,57.07	23.44,56.18	20.07,55.07
path	19.35,47.46	20.31,41.40	21.27,38.46	23.05,33.49	26.76,32.99
path	31.77,28.76	31.71,24.26	30.40,20.66	35.78,15.50	36.87,18.62
path	39.06,20.24	41.69,21.71	42.81,19.43	50.53,20.11	54.00,21.00
path	56.63,24.36	60.66,33.11	64.21,35.14	66.06,36.31	66.14,32.27
path	67.70,35.36	70.24,37.57	74.08,37.81	72.33,43.08	73.43,46.30
path	73.01,50.47	72.77,56.93	74.94,58.55	71.99,61.95	72.67,64.73
path	72.21,67.00	71.71,71.30	72.96,76.49	70.91,75.13	68.49,75.92
path	66.66,79.00	63.17,76.97	61.93,79.13	58.74,80.27	56.19,79.78
path	54.59,81.99	51.75,79.79	49.42,82.67	47.62,81.24	48.39,79.11
click Adamantite Deposit##181556+ |notinsticky
click Rich Adamantite Deposit##181569+ |notinsticky
|tip They look like dark blue mineral deposits along the path. |notinsticky
|tip Enter caves along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 80 Adamantite Ore##23425 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 40 Adamantite Bar##23446 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 325 Mining skill to gather regular veins and 350 skill to gather rich veins. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 336 |only if default |or
'|complete skill("Engineering") >= 351 |only if Gnome |or
step
label "Collect_Mote_of_Earth_Total"
map Nagrand/0
path follow smart; loop off; ants curved; dist 30
path	46.19,77.20	41.98,78.72	40.31,82.83	32.13,80.25	29.34,79.24
path	28.40,73.85	28.94,66.76	28.17,63.58
kill Shattered Rumbler##17157+ |notinsticky
|tip Follow the path, killing any that you see. |notinsticky
collect 40 Mote of Earth##22573 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
'|goto Nagrand/0 28.17,63.58 < 30 |c |noway |or
'|complete skill("Engineering") >= 321 |only if default |or
'|complete skill("Engineering") >= 336 |only if Gnome |or
step
map Nagrand/0
path follow smart; loop off; ants curved; dist 30
path	28.17,63.58	28.94,66.76	28.40,73.85	29.34,79.24	32.13,80.25
path	40.31,82.83	41.98,78.72	46.19,77.20
kill Shattered Rumbler##17157+
|tip Follow the path, killing any that you see.
collect 40 Mote of Earth##22573 |or
|tip Farm them with Mining or purchase them from the auction house.
'|goto Nagrand/0 46.19,77.20 < 30 |c |noway |next "Collect_Mote_of_Earth_Total" |or
'|complete skill("Engineering") >= 321 |only if default |or
'|complete skill("Engineering") >= 336 |only if Gnome |or
step
label "Collect_Mote_of_Fire_Total"
map Shadowmoon Valley/0
path	loop off; ants curved; dist 25
path	44.47,46.46	46.81,48.88	48.83,51.69	51.70,52.00
kill Enraged Fire Spirit##21061+ |notinsticky
|tip Follow the path, killing any that you see. |notinsticky
collect 20 Mote of Fire##22574 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
'|goto 51.70,52.00 |noway |c |or
'|complete skill("Engineering") >= 321 |only if default |or
'|complete skill("Engineering") >= 336 |only if Gnome |or
step
kill Enraged Fire Spirit##21061
map Shadowmoon Valley/0
path	loop off; ants curved; dist 25
path	48.34,46.75	47.93,42.37	49.03,37.97	51.34,36.12	49.04,34.47
kill Enraged Fire Spirit##21061+
|tip Follow the path, killing any that you see.
collect 20 Mote of Fire##22574 |or
|tip Farm them with Mining or purchase them from the auction house.
'|goto 49.04,34.47 |noway |c |next "Collect_Mote_of_Fire_Total" |or
'|complete skill("Engineering") >= 321 |only if default |or
'|complete skill("Engineering") >= 336 |only if Gnome |or
step
label "Collect_Netherweave_Cloth_Total"
map Shadowmoon Valley/0
path follow smart; loop on; ants curved; dist 20
path	51.1,58.8	53.0,59.3	53.2,60.5	52.8,63.2	52.8,65.4
path	52.9,69.0	52.5,71.8	47.3,71.1	45.8,71.3	45.2,69.2
path	45.6,66.1	48.0,67.2
Kill enemies around this area |notinsticky
collect 60 Netherweave Cloth##21877 |or
|tip Farm them from humanoid mobs in Outland or purchase them from the auction house. |notinsticky
'|complete skill("Engineering") >= 355 |only if default |or
'|complete skill("Engineering") >= 370 |only if Gnome |or
step
label "Begin_Profession_Leveling_Outland"
map Hellfire Peninsula/0
path follow smart; loop on; ants curved; dist 30
path	61.18,53.16	59.42,53.54	56.91,53.92	54.90,54.86	53.18,55.25
path	51.34,55.20	49.90,55.60	49.04,57.45	50.16,60.83	49.02,60.92
path	47.44,58.77	46.76,60.05	46.20,62.02	47.37,63.98	47.83,65.81
path	47.16,66.47	45.79,66.60	44.21,65.76	41.71,62.02	40.00,64.07
path	39.07,67.14	37.06,68.58	35.58,67.87	34.61,66.03	35.33,62.85
path	35.81,58.67	35.29,58.94	32.35,61.33	30.85,59.67	29.71,63.05
path	29.26,65.43	27.21,66.94	27.80,69.02	30.66,71.05	30.28,73.48
path	29.34,78.32	28.78,80.65	26.73,79.28	25.47,77.69	25.43,73.63
path	26.11,68.83	23.56,68.58	22.88,67.22	23.04,64.10	23.13,61.46
path	23.99,59.63	25.37,57.94	26.67,56.30	28.01,52.46	26.17,52.80
path	22.27,53.94	20.01,54.64	18.67,53.50	17.72,54.20	16.52,56.20
path	16.24,60.79	15.43,63.53	13.94,63.05	12.48,60.03	11.43,57.48
path	9.19,53.83	7.40,50.44	8.67,48.71	11.35,46.39	11.48,40.72
path	11.84,36.43	12.94,35.24	15.02,37.15	18.23,39.09	18.73,43.72
path	20.37,43.29	22.88,44.31	25.01,44.71	26.26,42.90	27.05,39.10
path	27.99,35.60	30.10,33.23	32.56,33.16	34.21,32.05	34.96,28.98
path	36.33,30.40	34.65,39.54	34.51,46.14	35.32,48.06	38.11,52.58
path	39.16,52.09	40.60,52.56	42.91,54.76	45.15,55.66	46.32,54.44
path	46.57,52.82	45.70,51.11	43.85,48.65	41.20,45.62	38.61,43.47
path	38.32,39.65	39.38,34.88	39.54,31.73	39.45,28.32	41.05,28.70
path	44.26,31.10	47.36,29.11	49.58,28.68	52.45,22.67	53.60,25.94
path	55.01,30.04	52.77,31.72	47.83,36.33	46.62,44.84	50.12,49.28
path	54.39,48.02	62.02,47.32
click Fel Iron Deposit##181555+
|tip They look like green mineral clusters around this path.
|tip Enter caves along the path.
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
collect 140 Fel Iron Ore##23424 |n
|tip Smelt the ore at a forge.
collect 70 Fel Iron Bar##23445 |or
|tip Create them with Mining or purchase them from the auction house.
|tip Save at least 30 of these; you will need them for future steps.
'|complete skill("Engineering") >= 320 |only if default |or
'|complete skill("Engineering") >= 335 |only if Gnome |or
step
create 40 Handful of Fel Iron Bolts##30305,Engineering,40 total |goto 56.75,63.86 |or
|tip Stand next to an anvil.
|tip Inside the building.
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 320 |only if default |or
'|complete skill("Engineering") >= 335 |only if Gnome |or
step
collect 30 Fel Iron Bar##23445 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 321 |only if default |or
'|complete skill("Engineering") >= 336 |only if Gnome |or
step
create 10 Fel Iron Casing##30304,Engineering,10 total |goto 56.75,63.86 |or
|tip Stand next to an anvil.
|tip Inside the building.
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 321 |only if default |or
'|complete skill("Engineering") >= 336 |only if Gnome |or
stickystart "Collect_Motes_of_Earth_321"
stickystart "Collect_Motes_of_Earth_321"
step
map Nagrand/0
path follow smart; loop on; ants curved; dist 30
path	49.90,71.01	48.62,71.28	48.51,75.60	46.76,77.91	42.77,74.39
path	42.08,76.76	41.94,80.24	41.11,84.55	38.45,83.23	36.21,82.30
path	33.57,82.12	31.13,80.54	28.19,78.49	27.67,72.30	28.58,69.31
path	28.20,63.62	27.06,62.92	26.75,57.07	23.44,56.18	20.07,55.07
path	19.35,47.46	20.31,41.40	21.27,38.46	23.05,33.49	26.76,32.99
path	31.77,28.76	31.71,24.26	30.40,20.66	35.78,15.50	36.87,18.62
path	39.06,20.24	41.69,21.71	42.81,19.43	50.53,20.11	54.00,21.00
path	56.63,24.36	60.66,33.11	64.21,35.14	66.06,36.31	66.14,32.27
path	67.70,35.36	70.24,37.57	74.08,37.81	72.33,43.08	73.43,46.30
path	73.01,50.47	72.77,56.93	74.94,58.55	71.99,61.95	72.67,64.73
path	72.21,67.00	71.71,71.30	72.96,76.49	70.91,75.13	68.49,75.92
path	66.66,79.00	63.17,76.97	61.93,79.13	58.74,80.27	56.19,79.78
path	54.59,81.99	51.75,79.79	49.42,82.67	47.62,81.24	48.39,79.11
click Adamantite Deposit##181556+
click Rich Adamantite Deposit##181569+
|tip They look like dark blue mineral deposits along the path.
|tip Enter caves along the path.
|tip Track them on your minimap with "Find Minerals".
collect 80 Adamantite Ore##23425 |n
|tip Smelt the ore at a forge.
collect 40 Adamantite Bar##23446 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 325 Mining skill to gather regular veins and 350 skill to gather rich veins.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 336 |only if default |or
'|complete skill("Engineering") >= 351 |only if Gnome |or
step
label "Collect_Motes_of_Earth_321"
map Nagrand/0
path follow smart; loop off; ants curved; dist 30
path	46.19,77.20	41.98,78.72	40.31,82.83	32.13,80.25	29.34,79.24
path	28.40,73.85	28.94,66.76	28.17,63.58
kill Shattered Rumbler##17157+ |notinsticky
|tip Follow the path, killing any that you see. |notinsticky
collect 40 Mote of Earth##22573 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
'|goto Nagrand/0 28.17,63.58 < 30 |c |noway |or
'|complete skill("Engineering") >= 321 |only if default |or
'|complete skill("Engineering") >= 336 |only if Gnome |or
step
map Nagrand/0
path follow smart; loop off; ants curved; dist 30
path	28.17,63.58	28.94,66.76	28.40,73.85	29.34,79.24	32.13,80.25
path	40.31,82.83	41.98,78.72	46.19,77.20
kill Shattered Rumbler##17157+
|tip Follow the path, killing any that you see.
collect 40 Mote of Earth##22573 |or
|tip Farm them with Mining or purchase them from the auction house.
'|goto Nagrand/0 46.19,77.20 < 30 |c |noway |next "Collect_Motes_of_Earth_321" |or
'|complete skill("Engineering") >= 321 |only if default |or
'|complete skill("Engineering") >= 336 |only if Gnome |or
step
label "Collect_Motes_of_Earth_321"
map Shadowmoon Valley/0
path	loop off; ants curved; dist 25
path	44.47,46.46	46.81,48.88	48.83,51.69	51.70,52.00
kill Enraged Fire Spirit##21061+ |notinsticky
|tip Follow the path, killing any that you see. |notinsticky
collect 20 Mote of Fire##22574 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
'|goto 51.70,52.00 |noway |c |or
'|complete skill("Engineering") >= 321 |only if default |or
'|complete skill("Engineering") >= 336 |only if Gnome |or
step
kill Enraged Fire Spirit##21061
map Shadowmoon Valley/0
path	loop off; ants curved; dist 25
path	48.34,46.75	47.93,42.37	49.03,37.97	51.34,36.12	49.04,34.47
kill Enraged Fire Spirit##21061+
|tip Follow the path, killing any that you see.
collect 20 Mote of Fire##22574 |or
|tip Farm them with Mining or purchase them from the auction house.
'|goto 49.04,34.47 |noway |c |next "Collect_Motes_of_Earth_321" |or
'|complete skill("Engineering") >= 321 |only if default |or
'|complete skill("Engineering") >= 336 |only if Gnome |or
step
create 20 Elemental Blasting Powder##30303,Engineering,80 total |goto Hellfire Peninsula/0 56.75,63.86 |or
|tip Stand next to an anvil.
|tip Inside the building.
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 321 |only if default |or
'|complete skill("Engineering") >= 336 |only if Gnome |or
step
create Fel Iron Casing##30304,Engineering,320 |goto 56.75,63.86 |only if default |or
create Fel Iron Casing##30304,Engineering,335 |goto 56.75,63.86 |only if Gnome |or
|tip Stand next to an anvil.
|tip Inside the building.
|tip You may need to create more of these.
|tip Each additional Fel Iron Casing requires 3 Fel Iron Bars.
step
talk Lebowski##18775
Train Fel Iron Bomb |learn Fel Iron Bomb##30310 |goto 55.72,65.59
stickystart "Collect_Fel_Iron_Casing_325"
stickystart "Collect_Elemental_Blasting_Powder_325"
step
collect 20 Handful of Fel Iron Bolts##23783 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 325 |only if default |or
'|complete skill("Engineering") >= 340 |only if Gnome |or
step
label "Collect_Fel_Iron_Casing_325"
collect 10 Fel Iron Casing##23782 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 325 |only if default |or
'|complete skill("Engineering") >= 340 |only if Gnome |or
step
label "Collect_Elemental_Blasting_Powder_325"
collect 10 Elemental Blasting Powder##23781 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 325 |only if default |or
'|complete skill("Engineering") >= 340 |only if Gnome |or
step
create 10 Fel Iron Bomb##30310,Engineering,325 |goto 56.75,63.86 |only if default |or
create 10 Fel Iron Bomb##30310,Engineering,340 |goto 56.75,63.86 |only if Gnome |or
|tip Stand next to an anvil.
|tip Inside the building.
|tip You may need to make more or less of these.
step
talk Lebowski##18775
Train Adamantite Grenade |learn Adamantite Grenade##30311 |goto 55.72,65.59
step
collect 40 Adamantite Bar##23446 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 335 |only if default |or
'|complete skill("Engineering") >= 350 |only if Gnome |or
step
collect 20 Handful of Fel Iron Bolts##23783 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 335 |only if default |or
'|complete skill("Engineering") >= 350 |only if Gnome |or
step
collect 10 Elemental Blasting Powder##23781 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 335 |only if default |or
'|complete skill("Engineering") >= 350 |only if Gnome |or
step
create 10 Adamantite Grenade##30311,Engineering,335 |goto 56.75,63.86 |only if default |or
create 10 Adamantite Grenade##30311,Engineering,350 |goto 56.75,63.86 |only if Gnome |or
|tip Stand next to an anvil.
|tip Inside the building.
step
talk Wind Trader Lathrai##18484
buy 1 Schematic: White Smoke Flare##23811 |goto Shattrath City/0 72.23,30.74 |or
|tip This is a limited supply item that can also be purchased from the auction house.
'|complete skill("Engineering") >= 350 |only if default |or
'|complete skill("Engineering") >= 365 |only if Gnome |or
step
use the Schematic: White Smoke Flare##23811
Train White Smoke Flare |learn White Smoke Flare##30341
stickystart "Collect_Elemental_Blasting_Powder_325"
step
map Shadowmoon Valley/0
path follow smart; loop on; ants curved; dist 20
path	51.1,58.8	53.0,59.3	53.2,60.5	52.8,63.2	52.8,65.4
path	52.9,69.0	52.5,71.8	47.3,71.1	45.8,71.3	45.2,69.2
path	45.6,66.1	48.0,67.2
Kill enemies around this area
collect 60 Netherweave Cloth##21877 |or
|tip Farm them from humanoid mobs in Outland or purchase them from the auction house.
'|complete skill("Engineering") >= 350 |only if default |or
'|complete skill("Engineering") >= 365 |only if Gnome |or
step
label "Collect_Elemental_Blasting_Powder_325"
collect 60 Elemental Blasting Powder##23781 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 350 |only if default |or
'|complete skill("Engineering") >= 365 |only if Gnome |or
step
create 60 White Smoke Flare##30341,Engineering,350 |goto Shattrath City/0 69.35,42.89 |only if default |or
create 60 White Smoke Flare##30341,Engineering,365 |goto Shattrath City/0 69.35,42.89 |only if Gnome |or
|tip Stand next to an anvil.
|tip You may need to make more or less of these.
|tip Each additional White Smoke Flare requires 1 Netherweave Cloth and 1 Elemental Blasting Powder.
step
Reach Level 68 |ding 68
|tip You must be at least level 68 to train Grand Master professions in Northrend.
|tip Use the leveling guides to accomplish this.
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Grand Master Engineering |skillmax Engineering,450 |goto Dalaran/1 38.49,25.82
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Handful of Cobalt Bolts |learn Handful of Cobalt Bolts##56349 |goto Dalaran/1 38.49,25.82
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Volatile Blasting Trigger |learn Volatile Blasting Trigger##53281 |goto Dalaran/1 38.49,25.82
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Lich King-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Engineering |confirm |next "Begin_Profession_Leveling_Northrend" |or
'|complete skill("Engineering") >= 450 |only if default |or |next "Begin_Profession_Leveling_Northrend"
'|complete skill("Engineering") >= 465 |only if Gnome |or |next "Begin_Profession_Leveling_Northrend"
stickystart "Collect_Saronite_Bars_Total"
stickystart "Collect_Crystallized_Water_Total"
stickystart "Collect_Crystallized_Earth_Total"
stickystart "Collect_Crystallized_Fire_Total"
stickystart "Collect_Frostweave_Cloth_Total"
stickystart "Collect_Eternal_Shadow_Total"
stickystart "Collect_Borean_Leather_Total"
step
map Howling Fjord/0
path follow smart; loop on; ants curved; dist 30
path	55.65,17.60	53.52,15.00	51.43,15.71	49.20,14.74	47.56,15.38
path	45.05,13.89	43.14,13.19	41.34,13.29	40.23,14.59	38.60,14.93
path	37.64,16.63	36.43,16.99	35.40,15.49	32.38,11.59	30.00,10.92
path	26.87,11.45	23.99,12.75	23.01,13.71	23.35,16.35	23.44,18.65
path	21.16,22.18	20.25,24.48	21.23,26.31	22.95,26.56	24.19,25.71
path	25.40,23.02	26.71,22.98	27.79,25.04	27.53,28.00	27.68,29.99
path	30.40,30.52	32.46,30.72	33.34,29.71	34.89,28.56	36.68,28.46
path	38.80,27.56	39.48,29.21	40.90,30.52	44.05,31.72	45.86,31.80
path	47.02,34.07	48.36,35.08	50.93,33.85	52.89,34.14	55.30,35.21
path	57.83,37.08	60.42,38.26	62.79,40.38	64.35,42.45	65.48,48.32
path	65.93,51.73	67.05,53.90	67.80,56.08	68.47,59.74	66.95,63.80
path	65.01,66.28	64.47,69.52	64.82,71.76	65.94,72.50	68.40,73.31
path	70.29,73.66	71.48,70.48	72.00,69.07	73.67,68.26	76.42,67.33
path	77.11,65.13	76.75,62.91	73.39,60.77	73.92,57.74	75.91,52.76
path	76.90,51.02	78.76,48.21	79.67,45.76	78.27,44.92	75.77,44.46
path	73.89,43.50	74.69,39.29	71.07,38.60	69.75,33.99	70.56,32.18
path	69.18,30.96	68.13,28.96	70.46,26.26	73.37,22.20	73.03,19.18
path	71.72,13.55	71.53,11.86	70.13,11.18	68.47,10.35	66.46,13.07
path	65.17,16.95	63.95,20.60	60.91,22.40	60.52,24.71	58.88,24.52
path	57.84,21.39	57.56,17.79	56.26,16.77
click Cobalt Deposit##189978+
click Rich Cobalt Deposit##189979+
|tip They look like large blue clusters of rock and crystals.
|tip Track them on your minimap with "Find Minerals".
collect Cobalt Ore##36909 |n
|tip Smelt the ore at a forge.
collect 272 Cobalt Bar##36916 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 350 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Engineering") >= 400 |only if default |or
'|complete skill("Engineering") >= 415 |only if Gnome |or
step
label "Collect_Saronite_Bars_Total"
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	79.27,65.32	80.51,63.45	80.55,60.91	80.11,58.43	79.71,55.90
path	78.57,54.98	76.16,53.63	74.31,53.72	72.37,52.46	70.19,51.19
path	68.54,50.18	68.10,49.16	68.42,47.09	71.54,42.33	71.77,41.02
path	70.80,39.72	69.17,39.54	66.84,39.75	65.22,39.43	63.46,37.28
path	62.15,34.64	60.96,31.35	58.97,32.07	56.70,33.49	55.46,34.36
path	53.15,36.55	51.51,36.91	49.18,36.87	46.07,35.95	44.29,39.29
path	40.80,40.94	40.12,42.66	39.54,44.03	38.93,44.94	38.07,48.02
path	38.18,49.57	37.68,51.43	36.63,51.07	35.74,50.18	34.32,48.74
path	32.65,48.37	32.04,50.86	32.76,53.74	31.75,57.06	31.27,59.57
path	30.57,62.54	31.30,66.34	32.34,69.72	34.25,69.54	36.01,70.86
path	37.83,69.46	38.62,68.21	40.71,66.06	42.62,65.37	47.84,65.25
path	49.03,63.72	49.25,62.37	47.89,57.80	48.08,53.78	48.13,50.05
path	48.61,47.04	51.44,45.25	55.15,43.88	57.87,43.96	59.59,46.21
path	61.20,47.93	62.33,50.75	62.58,54.26	64.21,56.39	65.31,59.10
path	66.48,61.81	66.37,64.78	67.17,70.17	67.87,70.86	69.35,69.71
path	72.29,67.71	72.82,64.27	73.82,61.06	76.10,61.31	77.53,63.76
click Saronite Deposit##189980+ |notinsticky
click Rich Saronite Deposit##189981+ |notinsticky
|tip They look like large green clusters of rock and crystals. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect Saronite Ore##36912 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 555 Saronite Bar##36913 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 400 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 450 |only if default |or
'|complete skill("Engineering") >= 465 |only if Gnome |or
step
label "Collect_Crystallized_Water_Total"
kill Boiling Spirit##25419+ |notinsticky
collect 68 Crystallized Water##37705 |goto Borean Tundra/0 46.94,13.40 |or
|tip Farm them from water elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Cobalt Deposits with the Northrend Mining guide. |notinsticky
'|complete skill("Engineering") >= 425 |only if default |or
'|complete skill("Engineering") >= 440 |only if Gnome |or
step
label "Collect_Crystallized_Earth_Total"
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	69.56,57.80	70.04,60.18	72.14,60.08	72.84,57.52	74.78,55.78
path	72.60,54.62	69.13,55.36
kill Lifeblood Elemental##29124+ |notinsticky
collect 10 Crystallized Earth##37701 |or
|tip Farm them from earth elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Mining nodes with Northrend Mining guides. |notinsticky
'|complete skill("Engineering") >= 385 |only if default |or
'|complete skill("Engineering") >= 400 |only if Gnome |or
step
label "Collect_Crystallized_Fire_Total"
Enter the cave |goto The Storm Peaks/0 62.48,41.49 < 20 |walk |notinsticky
kill Wailing Winds##30450+ |notinsticky
|tip Inside the cave. |notinsticky
collect 15 Crystallized Fire##37702 |goto 61.43,39.48 |or
|tip Farm them from fire elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Titanium Veins with the Northrend Mining guide. |notinsticky
'|complete skill("Engineering") >= 415 |only if default |or
'|complete skill("Engineering") >= 430 |only if Gnome |or
step
label "Collect_Frostweave_Cloth_Total"
kill Mjordin Combatant##30037+ |notinsticky
|tip They will continuously respawn when you deplete their numbers. |notinsticky
collect 7 Frostweave Cloth##33470 |goto Icecrown/0 37.29,23.72 |or
'|complete skill("Engineering") >= 390 |only if default |or
'|complete skill("Engineering") >= 405 |only if Gnome |or
step
label "Collect_Eternal_Shadow_Total"
Enter the cave |goto Dragonblight/0 74.24,23.64 < 30 |walk |notinsticky
kill Deathbringer Revenant##27382+ |notinsticky
|tip Inside the cave. |notinsticky
use the Crystallized Shadow##37703 |notinsticky
|tip Combine 10 Crystallized Shadow into 1 Eternal Shadow. |notinsticky
collect 7 Eternal Shadow##35627 |or
|tip Farm them from shadow mobs or purchase them from the auction house. |notinsticky
|tip You can also farm them from Saronite Deposits with the Northrend Mining guide. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill.
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger. |notinsticky
'|complete skill("Engineering") >= 430 |only if default |or
'|complete skill("Engineering") >= 445 |only if Gnome |or
step
label "Collect_Borean_Leather_Total"
map Borean Tundra/0
path follow smart; loop on; ants curved; dist 30
path	47.21,48.30	44.24,47.61	41.18,46.20	40.98,44.66	41.46,41.47
path	42.96,40.00	43.64,40.96	45.77,41.70	46.85,43.10	47.89,46.20
Kill Wooly Rhino enemies around along the path |notinsticky
|tip Skin their corpses. |notinsticky
|tip You will need 345 Skinning skill minimum to skin all of these mobs. |notinsticky
collect 14 Borean Leather##33568 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill.
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger. |notinsticky
'|goto 47.89,46.20 < 30 |c |noway |or
'|complete skill("Engineering") >= 430 |only if default |or
'|complete skill("Engineering") >= 445 |only if Gnome |or
step
map Borean Tundra/0
path follow smart; loop on; ants curved; dist 30
path	50.60,68.96	49.51,72.06	47.53,73.94	44.84,74.30	42.65,74.76
path	40.52,72.87	41.06,70.43	43.42,70.41	45.00,70.40	47.12,70.14
path	48.70,69.55	50.08,66.87
Kill Wooly Rhino enemies around along the path
|tip Skin their corpses.
|tip You will need 345 Skinning skill minimum to skin all of these mobs.
collect 14 Borean Leather##33568 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill.
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger.
'|goto 50.08,66.87 < 30 |c |noway |next "Collect_Borean_Leather_Total" |or
'|complete skill("Engineering") >= 430 |only if default |or
'|complete skill("Engineering") >= 445 |only if Gnome |or
step
label "Begin_Profession_Leveling_Northrend"
map Howling Fjord/0
path follow smart; loop on; ants curved; dist 30
path	55.65,17.60	53.52,15.00	51.43,15.71	49.20,14.74	47.56,15.38
path	45.05,13.89	43.14,13.19	41.34,13.29	40.23,14.59	38.60,14.93
path	37.64,16.63	36.43,16.99	35.40,15.49	32.38,11.59	30.00,10.92
path	26.87,11.45	23.99,12.75	23.01,13.71	23.35,16.35	23.44,18.65
path	21.16,22.18	20.25,24.48	21.23,26.31	22.95,26.56	24.19,25.71
path	25.40,23.02	26.71,22.98	27.79,25.04	27.53,28.00	27.68,29.99
path	30.40,30.52	32.46,30.72	33.34,29.71	34.89,28.56	36.68,28.46
path	38.80,27.56	39.48,29.21	40.90,30.52	44.05,31.72	45.86,31.80
path	47.02,34.07	48.36,35.08	50.93,33.85	52.89,34.14	55.30,35.21
path	57.83,37.08	60.42,38.26	62.79,40.38	64.35,42.45	65.48,48.32
path	65.93,51.73	67.05,53.90	67.80,56.08	68.47,59.74	66.95,63.80
path	65.01,66.28	64.47,69.52	64.82,71.76	65.94,72.50	68.40,73.31
path	70.29,73.66	71.48,70.48	72.00,69.07	73.67,68.26	76.42,67.33
path	77.11,65.13	76.75,62.91	73.39,60.77	73.92,57.74	75.91,52.76
path	76.90,51.02	78.76,48.21	79.67,45.76	78.27,44.92	75.77,44.46
path	73.89,43.50	74.69,39.29	71.07,38.60	69.75,33.99	70.56,32.18
path	69.18,30.96	68.13,28.96	70.46,26.26	73.37,22.20	73.03,19.18
path	71.72,13.55	71.53,11.86	70.13,11.18	68.47,10.35	66.46,13.07
path	65.17,16.95	63.95,20.60	60.91,22.40	60.52,24.71	58.88,24.52
path	57.84,21.39	57.56,17.79	56.26,16.77
click Cobalt Deposit##189978+
click Rich Cobalt Deposit##189979+
|tip They look like large blue clusters of rock and crystals.
|tip Track them on your minimap with "Find Minerals".
collect Cobalt Ore##36909 |n
|tip Smelt the ore at a forge.
collect 272 Cobalt Bar##36916 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 350 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 112 of these; you will need them for future steps.
'|complete skill("Engineering") >= 375 |only if default |or
'|complete skill("Engineering") >= 390 |only if Gnome |or
step
kill Boiling Spirit##25419+
collect 68 Crystallized Water##37705 |goto Borean Tundra/0 46.94,13.40 |or
|tip Farm them from water elementals or purchase them from the auction house.
|tip You can also farm them from Cobalt Deposits with the Northrend Mining guide.
|tip Save at least 54 of these; you will need them for future steps.
'|complete skill("Engineering") >= 375 |only if default |or
'|complete skill("Engineering") >= 390 |only if Gnome |or
step
create 35 Handful of Cobalt Bolts##56349,Engineering,50 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 381 |only if default |or
'|complete skill("Engineering") >= 396 |only if Gnome |or
step
create 14 Volatile Blasting Trigger##53281,Engineering,28 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 386 |only if default |or
'|complete skill("Engineering") >= 401 |only if Gnome |or
stickystart "Collect_Cobalt_Bar_385"
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	69.56,57.80	70.04,60.18	72.14,60.08	72.84,57.52	74.78,55.78
path	72.60,54.62	69.13,55.36
kill Lifeblood Elemental##29124+
collect 10 Crystallized Earth##37701 |or
|tip Farm them from earth elementals or purchase them from the auction house.
|tip You can also farm them from Mining nodes with Northrend Mining guides.
'|complete skill("Engineering") >= 385 |only if default |or
'|complete skill("Engineering") >= 400 |only if Gnome |or
step
label "Collect_Cobalt_Bar_385"
collect 40 Cobalt Bar##36916 |or
|tip You collected these in a previous step. |notinsticky
'|complete skill("Engineering") >= 385 |only if default |or
'|complete skill("Engineering") >= 400 |only if Gnome |or
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Overcharged Capacitor |learn Overcharged Capacitor##56464 |goto Dalaran/1 38.49,25.82
step
create 10 Overcharged Capacitor##56464,Engineering,10 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Engineering") >= 391 |only if default |or
'|complete skill("Engineering") >= 406 |only if Gnome |or
stickystart "Collect_Volatile_Blasting_Trigger_380"
step
kill Mjordin Combatant##30037+
|tip They will continuously respawn when you deplete their numbers.
collect 7 Frostweave Cloth##33470 |goto Icecrown/0 37.29,23.72 |or
'|complete skill("Engineering") >= 390 |only if default |or
'|complete skill("Engineering") >= 405 |only if Gnome |or
step
label "Collect_Volatile_Blasting_Trigger_380"
collect 21 Volatile Blasting Trigger##39690 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 390 |only if default |or
'|complete skill("Engineering") >= 405 |only if Gnome |or
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Explosive Decoy |learn Explosive Decoy##56463 |goto Dalaran/1 38.49,25.82
step
create 7 Explosive Decoy##56463,Engineering,390 |only if default |or
create 7 Explosive Decoy##56463,Engineering,405 |only if Gnome |or
|tip You may need to make more or less of these.
|tip Each additional Explosive Decoy requires 3 Volatile Blasting Triggers and 1 Frostweave Cloth.
stickystart "Collect_Crystallized_Water_400"
step
collect 120 Cobalt Bar##36916 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 400 |only if default |or
'|complete skill("Engineering") >= 415 |only if Gnome |or
step
label "Collect_Crystallized_Water_400"
collect 15 Crystallized Water##37705 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 400 |only if default |or
'|complete skill("Engineering") >= 415 |only if Gnome |or
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Froststeel Tube |learn Froststeel Tube##56471 |goto Dalaran/1 38.49,25.82
step
create 1 Froststeel Tube##56471,Engineering,400 |only if default |or
create 1 Froststeel Tube##56471,Engineering,415 |only if Gnome |or
|tip Create these one at a time.
|tip Stop making them at 400 skill, and only make more if needed later at 430+ skill.
|tip Save these, you will need them for future steps.
stickystart "Collect_Handful_of_Cobalt_Bolts_405"
step
collect 5 Froststeel Tube##39683 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 405 |only if default |or
'|complete skill("Engineering") >= 420 |only if Gnome |or
step
label "Collect_Handful_of_Cobalt_Bolts_405"
collect 10 Handful of Cobalt Bolts##39681 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 405 |only if default |or
'|complete skill("Engineering") >= 420 |only if Gnome |or
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Diamond-cut Refractor Scope |learn Diamond-cut Refractor Scope##61471 |goto Dalaran/1 38.49,25.82
step
create 5 Diamond-cut Refractor Scope##61471,Engineering,405 |only if default |or
create 5 Diamond-cut Refractor Scope##61471,Engineering,420 |only if Gnome |or
stickystart "Collect_Volatile_Blasting_Trigger_410"
step
map Icecrown/0
path follow smart; loop on; ants curved; dist 30
path	79.27,65.32	80.51,63.45	80.55,60.91	80.11,58.43	79.71,55.90
path	78.57,54.98	76.16,53.63	74.31,53.72	72.37,52.46	70.19,51.19
path	68.54,50.18	68.10,49.16	68.42,47.09	71.54,42.33	71.77,41.02
path	70.80,39.72	69.17,39.54	66.84,39.75	65.22,39.43	63.46,37.28
path	62.15,34.64	60.96,31.35	58.97,32.07	56.70,33.49	55.46,34.36
path	53.15,36.55	51.51,36.91	49.18,36.87	46.07,35.95	44.29,39.29
path	40.80,40.94	40.12,42.66	39.54,44.03	38.93,44.94	38.07,48.02
path	38.18,49.57	37.68,51.43	36.63,51.07	35.74,50.18	34.32,48.74
path	32.65,48.37	32.04,50.86	32.76,53.74	31.75,57.06	31.27,59.57
path	30.57,62.54	31.30,66.34	32.34,69.72	34.25,69.54	36.01,70.86
path	37.83,69.46	38.62,68.21	40.71,66.06	42.62,65.37	47.84,65.25
path	49.03,63.72	49.25,62.37	47.89,57.80	48.08,53.78	48.13,50.05
path	48.61,47.04	51.44,45.25	55.15,43.88	57.87,43.96	59.59,46.21
path	61.20,47.93	62.33,50.75	62.58,54.26	64.21,56.39	65.31,59.10
path	66.48,61.81	66.37,64.78	67.17,70.17	67.87,70.86	69.35,69.71
path	72.29,67.71	72.82,64.27	73.82,61.06	76.10,61.31	77.53,63.76
click Saronite Deposit##189980+
click Rich Saronite Deposit##189981+
|tip They look like large green clusters of rock and crystals.
|tip Track them on your minimap with "Find Minerals".
collect Saronite Ore##36912 |n
|tip Smelt the ore at a forge.
collect 555 Saronite Bar##36913 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 400 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 530 of these; you will need them for future steps.
'|complete skill("Engineering") >= 410 |only if default |or
'|complete skill("Engineering") >= 425 |only if Gnome |or
step
label "Collect_Volatile_Blasting_Trigger_410"
collect 5 Volatile Blasting Trigger##39690 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 410 |only if default |or
'|complete skill("Engineering") >= 425 |only if Gnome |or
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Box of Bombs |learn Box of Bombs##56468 |goto Dalaran/1 38.49,25.82
step
create 5 Box of Bombs##56468,Engineering,410 |only if default |or
create 5 Box of Bombs##56468,Engineering,425 |only if Gnome |or
stickystart "Collect_Crystallized_Water_415"
stickystart "Collect_Saronite_Bar_415"
step
Enter the cave |goto The Storm Peaks/0 62.48,41.49 < 20 |walk
kill Wailing Winds##30450+
|tip Inside the cave.
collect 15 Crystallized Fire##37702 |goto 61.43,39.48 |or
|tip Farm them from fire elementals or purchase them from the auction house.
|tip You can also farm them from Titanium Veins with the Northrend Mining guide.
'|complete skill("Engineering") >= 415 |only if default |or
'|complete skill("Engineering") >= 430 |only if Gnome |or
step
label "Collect_Crystallized_Water_415"
collect 15 Crystallized Water##37705 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 415 |only if default |or
'|complete skill("Engineering") >= 430 |only if Gnome |or
step
label "Collect_Saronite_Bar_415"
collect 30 Saronite Bar##36913 |or
|tip You collected these in a previous step.
'|complete skill("Engineering") >= 415 |only if default |or
'|complete skill("Engineering") >= 430 |only if Gnome |or
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Goblin Beam Welder |learn Goblin Beam Welder##67326 |goto Dalaran/1 38.49,25.82
step
create 5 Goblin Beam Welder##67326,Engineering,415 |only if default |or
create 5 Goblin Beam Welder##67326,Engineering,430 |only if Gnome |or
stickystart "Collect_Crystallized_Water_425"
step
collect 144 Saronite Bar##36913 |or
|tip You collected these in a previous step.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Engineering") >= 425 |only if default |or
'|complete skill("Engineering") >= 440 |only if Gnome |or
step
label "Collect_Crystallized_Water_425"
collect 24 Crystallized Water##37705 |or
|tip You collected these in a previous step.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Engineering") >= 425 |only if default |or
'|complete skill("Engineering") >= 440 |only if Gnome |or
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Mana Injector Kit |learn Mana Injector Kit##56477 |goto Dalaran/1 38.49,25.82
step
create 12 Mana Injector Kit##56477,Engineering,425 |only if default |or
create 12 Mana Injector Kit##56477,Engineering,440 |only if Gnome |or
|tip You may need to make more or less of these.
|tip Each additional Mana Injector Kit requires 12 Saronite Bars and 2 Crystallized Water.
stickystart "Collect_Borean_Leather_430"
stickystart "Collect_Saronite_Bar_430"
step
Enter the cave |goto Dragonblight/0 74.24,23.64 < 30 |walk
kill Deathbringer Revenant##27382+
|tip Inside the cave.
use the Crystallized Shadow##37703
|tip Combine 10 Crystallized Shadow into 1 Eternal Shadow.
collect 7 Eternal Shadow##35627 |or
|tip Farm them from shadow mobs or purchase them from the auction house.
|tip You can also farm them from Saronite Deposits with the Northrend Mining guide.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill.
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger.
'|complete skill("Engineering") >= 430 |only if default |or
'|complete skill("Engineering") >= 445 |only if Gnome |or
step
label "Collect_Borean_Leather_430"
map Borean Tundra/0
path follow smart; loop on; ants curved; dist 30
path	47.21,48.30	44.24,47.61	41.18,46.20	40.98,44.66	41.46,41.47
path	42.96,40.00	43.64,40.96	45.77,41.70	46.85,43.10	47.89,46.20
Kill Wooly Rhino enemies around along the path |notinsticky
|tip Skin their corpses. |notinsticky
collect 14 Borean Leather##33568 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip You will need 345 Skinning skill minimum to skin all of these mobs. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill. |only if default
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 440-450 skill. |only if Gnome
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger. |notinsticky
'|goto 47.89,46.20 < 30 |c |noway |or
'|complete skill("Engineering") >= 430 |only if default |or
'|complete skill("Engineering") >= 445 |only if Gnome |or
step
map Borean Tundra/0
path follow smart; loop on; ants curved; dist 30
path	50.60,68.96	49.51,72.06	47.53,73.94	44.84,74.30	42.65,74.76
path	40.52,72.87	41.06,70.43	43.42,70.41	45.00,70.40	47.12,70.14
path	48.70,69.55	50.08,66.87
Kill Wooly Rhino enemies around along the path
|tip Skin their corpses.
collect 14 Borean Leather##33568 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip You will need 345 Skinning skill minimum to skin all of these mobs.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill. |only if default
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 440-450 skill. |only if Gnome
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger.
'|goto 50.08,66.87 < 30 |c |noway |next "Collect_Borean_Leather_430" |or
'|complete skill("Engineering") >= 430 |only if default |or
'|complete skill("Engineering") >= 445 |only if Gnome |or
step
label "Collect_Saronite_Bar_430"
collect 56 Saronite Bar##36913 |or
|tip You collected these in a previous step. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill. |only if default
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 440-450 skill. |only if Gnome
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger. |notinsticky
'|complete skill("Engineering") >= 430 |only if default |or
'|complete skill("Engineering") >= 445 |only if Gnome |or
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Mechanized Snow Goggles |learn Mechanized Snow Goggles##61483 |goto Dalaran/1 38.49,25.82
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill. |only if default
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 440-450 skill. |only if Gnome
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger.
step
create 7 Mechanized Snow Goggles##61483,Engineering,430 |only if default |or
create 7 Mechanized Snow Goggles##61483,Engineering,445 |only if Gnome |or
|tip You may need to make more or less of these.
|tip Each additional Mechanized Snow Goggles requires 8 Saronite Bars, 2 Borean Leather, and 1 Eternal Shadow.
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill. |only if default
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 440-450 skill. |only if Gnome
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger.
stickystart "Collect_Handful_of_Cobalt_Bolts_435"
stickystart "Collect_Overcharged_Capacitor_435"
step
collect 10 Froststeel Tube##39683 |or
|tip You created these in a previous step.
|tip Create more of them as needed if you didn't craft them all initially.
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill. |only if default
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 440-450 skill. |only if Gnome
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger.
'|complete skill("Engineering") >= 435 |only if default |or
'|complete skill("Engineering") >= 450 |only if Gnome |or
step
label "Collect_Handful_of_Cobalt_Bolts_435"
collect 40 Handful of Cobalt Bolts##39681 |or
|tip You created these in a previous step.
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill. |only if default
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 440-450 skill. |only if Gnome
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger. |notinsticky
'|complete skill("Engineering") >= 435 |only if default |or
'|complete skill("Engineering") >= 450 |only if Gnome |or
step
label "Collect_Overcharged_Capacitor_435"
collect 10 Overcharged Capacitor##39682 |or
|tip You created these in a previous step.
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill. |only if default
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 440-450 skill. |only if Gnome
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger. |notinsticky
'|complete skill("Engineering") >= 435 |only if default |or
'|complete skill("Engineering") >= 450 |only if Gnome |or
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Noise Machine |learn Noise Machine##56467 |goto Dalaran/1 38.49,25.82
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill. |only if default
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 440-450 skill. |only if Gnome
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger.
step
create 5 Noise Machine##56467,Engineering,435 |only if default |or
create 5 Noise Machine##56467,Engineering,450 |only if Gnome |or
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 425-435 skill. |only if default
|tip If you are a Goblin Engineer, skip this step and craft Global Thermal Sapper Charges from 440-450 skill. |only if Gnome
|tip Each Global Thermal Sapper Charge requires 1 Saronite Bar and 1 Volatile Blasting Trigger.
stickystart "Collect_Saronite_Bar_450"
step
talk Ranid Glowergold##28718
|tip Inside the building.
buy 30 Skinning Knife##7005 |goto Dalaran/1 36.63,27.88 |or
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Engineering") >= 450 |only if default |or
'|complete skill("Engineering") >= 465 |only if Gnome |or
step
talk Bryan Landers##28722
|tip Inside the building.
buy 30 Mining Pick##2901 |goto Dalaran/1 38.94,24.53 |complete skill("Engineering") >= 450 |only if default |or 2
buy 30 Blacksmith Hammer##5956 |goto Dalaran/1 38.94,24.53 |complete skill("Engineering") >= 450 |only if default |or 2
buy 30 Mining Pick##2901 |goto Dalaran/1 38.94,24.53 |complete skill("Engineering") >= 465 |only if Gnome |or 2
buy 30 Blacksmith Hammer##5956 |goto Dalaran/1 38.94,24.53 |complete skill("Engineering") >= 465 |only if Gnome |or 2
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
step
label "Collect_Saronite_Bar_450"
collect 300 Saronite Bar##36913 |or
|tip You collected these in a previous step. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 450 |only if default |or
'|complete skill("Engineering") >= 465 |only if Gnome |or
step
talk Timofey Oshenko##92194
|tip Inside the building.
Train Gnomish Army Knife |learn Gnomish Army Knife##56462 |goto Dalaran/1 38.49,25.82
step
create 30 Gnomish Army Knife##56462,Engineering,450 |only if default |or
create 30 Gnomish Army Knife##56462,Engineering,465 |only if Gnome |or
|tip You may need to make more or less of these.
|tip Each additional Gnomish Army Knife requires 10 Saronite Bars, 1 Skinning Knife, 1 Mining Pick, and 1 Blacksmith Hammer.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Cataclysm-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Engineering |confirm |next "Begin_Engineering_Leveling_Cataclysm" |or
'|complete skill("Engineering") >= 450 |only if default |or |next "Begin_Engineering_Leveling_Cataclysm"
'|complete skill("Engineering") >= 465 |only if Gnome |or |next "Begin_Engineering_Leveling_Cataclysm"
stickystart "Collect_Obsidium_Bar_Total"
stickystart "Collect_Volatile_Air_Total"
stickystart "Collect_Elementium_Bar_Total"
stickystart "Collect_Volatile Fire_Total"
step
label "Collect_Obsidium_Bar_Total"
map Mount Hyjal/0
path follow smart; loop on; ants straight; dist 30
path	64.52,32.82	59.54,32.60	54.43,28.82	51.95,17.39	46.03,25.96
path	43.53,26.94	41.14,21.81	35.52,23.56	33.12,24.51	32.25,29.77
path	33.96,33.62	30.51,39.40	27.14,38.97	27.15,36.08	24.15,32.92
path	13.59,37.50	10.03,36.02	15.27,46.43	17.82,54.98	20.48,59.09
path	24.63,59.77	29.20,55.47	33.08,52.54	35.89,51.99	36.52,57.46
path	33.75,64.34	39.87,63.17	49.68,58.94	55.81,57.37	58.34,56.00
path	62.24,58.01	65.04,53.21	68.69,55.16	72.55,58.55	74.49,62.92
path	78.12,59.42	83.94,60.29	87.31,54.46	87.18,49.22	80.70,51.98
click Obsidium Deposit##202736+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 140 Obsidium Ore##53038 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 70 Obsidium Bar##54849 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 450 Mining skill to mine Obsidium Deposits |notinsticky
'|complete skill("Engineering") >= 495 |or
step
label "Collect_Volatile_Air_Total"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	39.56,47.29	41.39,48.90	41.53,46.16	39.76,44.61
kill Storm Vortex##47728+
collect 30 Volatile Air##52328 |or
|tip Or purchase them from the auction house |notinsticky
'|complete skill("Engineering") >= 480 |or
step
label "Collect_Elementium_Bar_Total"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	37.63,88.45	41.95,87.09	45.86,86.00	51.33,81.88	55.69,79.72
path	57.97,77.60	49.80,75.94	43.68,75.44	40.53,71.45	39.24,68.14
path	38.23,62.09	38.59,58.11	45.30,51.07	49.00,46.94	50.07,44.64
path	50.95,37.93	55.43,38.55	58.32,38.52	60.65,37.79	63.05,41.91
path	65.17,42.27	67.34,37.88	64.34,33.11	61.76,28.47	57.60,25.19
path	54.90,22.38	52.20,20.68	47.53,20.83	42.75,20.33	40.20,23.77
path	41.81,28.12	38.78,30.69	37.34,37.09	37.22,39.43	36.85,46.91
path	37.04,52.83	34.85,59.65	29.33,66.94	31.85,71.82	35.72,73.45
path	37.97,78.84
click Elementium Vein##202738+ |notinsticky
click Rich Elementium Vein##202741+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 720 Elementium Ore##52185 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 360 Elementium Bar##52186 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 500 Mining skill to mine Elementium Deposits |notinsticky
'|complete skill("Engineering") >= 525 |or
step
label "Collect_Volatile Fire_Total"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 15 Volatile Fire##52325 |or
|tip Or purchase them from the auction house |notinsticky
'|complete skill("Engineering") >= 525 |or
step
label "Begin_Engineering_Leveling_Cataclysm"
talk Lilliam Sparkspindle##5518
Train Illustrious Grand Master Engineering |skillmax Engineering,525 |goto Stormwind City/0 62.84,31.97
|tip You must be at least level 75.
step
map Mount Hyjal/0
path follow smart; loop on; ants straight; dist 30
path	64.52,32.82	59.54,32.60	54.43,28.82	51.95,17.39	46.03,25.96
path	43.53,26.94	41.14,21.81	35.52,23.56	33.12,24.51	32.25,29.77
path	33.96,33.62	30.51,39.40	27.14,38.97	27.15,36.08	24.15,32.92
path	13.59,37.50	10.03,36.02	15.27,46.43	17.82,54.98	20.48,59.09
path	24.63,59.77	29.20,55.47	33.08,52.54	35.89,51.99	36.52,57.46
path	33.75,64.34	39.87,63.17	49.68,58.94	55.81,57.37	58.34,56.00
path	62.24,58.01	65.04,53.21	68.69,55.16	72.55,58.55	74.49,62.92
path	78.12,59.42	83.94,60.29	87.31,54.46	87.18,49.22	80.70,51.98
click Obsidium Deposit##202736+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 80 Obsidium Ore##53038 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 40 Obsidium Bar##54849 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 450 Mining skill to mine Obsidium Deposits |notinsticky
'|complete skill("Engineering") >= 465 |or
step
Open Your Engineering Crafting Panel:
_<Create 20 Handful of Obsidium Bolts>_
|tip Save them for later.
Reach 465 Engineering |skill Engineering,465 |goto Stormwind City/0 63.66,36.64
step
talk Lilliam Sparkspindle##5518
learn Electrified Ether##94748 |goto Stormwind City/0 62.84,31.97
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	39.56,47.29	41.39,48.90	41.53,46.16	39.76,44.61
kill Storm Vortex##47728+
collect 30 Volatile Air##52328 |or
|tip Or purchase them from the auction house |notinsticky
'|complete skill("Engineering") >= 480 |or
step
Open Your Engineering Crafting Panel:
_<Create 15 Electrified Ether>_
|tip Save them for later.
Reach 480 Engineering |skill Engineering,480 |goto Stormwind City/0 63.66,36.64
step
talk Lilliam Sparkspindle##5518
learn Volatile Seaforium Blastpack##84409 |goto Stormwind City/0 62.84,31.97
step
Open Your Engineering Crafting Panel:
_<Create 13 Volatile Seaforium Blastpack>_
Reach 492 Engineering |skill Engineering,492 |goto Stormwind City/0 63.66,36.64
step
talk Lilliam Sparkspindle##5518
learn Safety Catch Removal Kit##84410 |goto Stormwind City/0 62.84,31.97
step
map Mount Hyjal/0
path follow smart; loop on; ants straight; dist 30
path	64.52,32.82	59.54,32.60	54.43,28.82	51.95,17.39	46.03,25.96
path	43.53,26.94	41.14,21.81	35.52,23.56	33.12,24.51	32.25,29.77
path	33.96,33.62	30.51,39.40	27.14,38.97	27.15,36.08	24.15,32.92
path	13.59,37.50	10.03,36.02	15.27,46.43	17.82,54.98	20.48,59.09
path	24.63,59.77	29.20,55.47	33.08,52.54	35.89,51.99	36.52,57.46
path	33.75,64.34	39.87,63.17	49.68,58.94	55.81,57.37	58.34,56.00
path	62.24,58.01	65.04,53.21	68.69,55.16	72.55,58.55	74.49,62.92
path	78.12,59.42	83.94,60.29	87.31,54.46	87.18,49.22	80.70,51.98
click Obsidium Deposit##202736+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 60 Obsidium Ore##53038 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 30 Obsidium Bar##54849 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 450 Mining skill to mine Obsidium Deposits |notinsticky
'|complete skill("Engineering") >= 495 |or
step
Open Your Engineering Crafting Panel:
_<Create 3 Safety Catch Removal Kit>_
Reach 495 Engineering |skill Engineering,495 |goto Stormwind City/0 63.66,36.64
step
talk Lilliam Sparkspindle##5518
learn Lure Master Tackle Box##84415 |goto Stormwind City/0 62.84,31.97
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	37.63,88.45	41.95,87.09	45.86,86.00	51.33,81.88	55.69,79.72
path	57.97,77.60	49.80,75.94	43.68,75.44	40.53,71.45	39.24,68.14
path	38.23,62.09	38.59,58.11	45.30,51.07	49.00,46.94	50.07,44.64
path	50.95,37.93	55.43,38.55	58.32,38.52	60.65,37.79	63.05,41.91
path	65.17,42.27	67.34,37.88	64.34,33.11	61.76,28.47	57.60,25.19
path	54.90,22.38	52.20,20.68	47.53,20.83	42.75,20.33	40.20,23.77
path	41.81,28.12	38.78,30.69	37.34,37.09	37.22,39.43	36.85,46.91
path	37.04,52.83	34.85,59.65	29.33,66.94	31.85,71.82	35.72,73.45
path	37.97,78.84
click Elementium Vein##202738+ |notinsticky
click Rich Elementium Vein##202741+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 600 Elementium Ore##52185 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 300 Elementium Bar##52186 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 500 Mining skill to mine Elementium Deposits |notinsticky
'|complete skill("Engineering") >= 525 |or
step
Open Your Engineering Crafting Panel:
_<Create 15 Lure Master Tackle Box>_
Reach 510 Engineering |skill Engineering,510 |goto Stormwind City/0 63.66,36.64
step
talk Lilliam Sparkspindle##5518
learn Heat-Treated Spinning Lure##84430 |goto Stormwind City/0 62.84,31.97
stickystart "Collect_Volatile Fire_525"
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	37.63,88.45	41.95,87.09	45.86,86.00	51.33,81.88	55.69,79.72
path	57.97,77.60	49.80,75.94	43.68,75.44	40.53,71.45	39.24,68.14
path	38.23,62.09	38.59,58.11	45.30,51.07	49.00,46.94	50.07,44.64
path	50.95,37.93	55.43,38.55	58.32,38.52	60.65,37.79	63.05,41.91
path	65.17,42.27	67.34,37.88	64.34,33.11	61.76,28.47	57.60,25.19
path	54.90,22.38	52.20,20.68	47.53,20.83	42.75,20.33	40.20,23.77
path	41.81,28.12	38.78,30.69	37.34,37.09	37.22,39.43	36.85,46.91
path	37.04,52.83	34.85,59.65	29.33,66.94	31.85,71.82	35.72,73.45
path	37.97,78.84
click Elementium Vein##202738+ |notinsticky
click Rich Elementium Vein##202741+ |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 120 Elementium Ore##52185 |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 60 Elementium Bar##52186 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 500 Mining skill to mine Elementium Deposits |notinsticky
'|complete skill("Engineering") >= 525 |or
step
label "Collect_Volatile Fire_525"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 15 Volatile Fire##52325 |or
|tip Or purchase them from the auction house |notinsticky
'|complete skill("Engineering") >= 525 |or
step
Open Your Engineering Crafting Panel:
_<Create 15 Heat-Treated Spinning Lure>_
Reach 525 Engineering |skill Engineering,525 |goto Stormwind City/0 63.66,36.64
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\First Aid\\First Aid (1-525)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('First Aid') > 0 end,
description="This guide will walk you through leveling your First Aid skill from 1-525.",
},[[
step
talk Angela Leifeld##56796
|tip Inside the building.
Train Apprentice First Aid |skillmax First Aid,75 |goto Stormwind City/0 52.18,45.42
step
Kill enemies around this area
|tip Be sure to enter the mine as well.
collect 170 Linen Cloth##2589 |goto Westfall 44.55,25.01 |or
|tip You can also purchase them from the Auction House.
|tip Save at least 120 of these, you will need them for future steps.
'|complete skill("First Aid") >= 40 |or
step
create 50 Linen Bandage##3275,First Aid,40
step
talk Angela Leifeld##56796
|tip Inside the building.
Train Heavy Linen Bandage |learn Heavy Linen Bandage##3276 |goto Stormwind City/0 52.18,45.42
step
collect 90 Linen Cloth##2589 |or
|tip You collected these in a previous step.
'|complete skill("First Aid") >= 70 |or
step
create 45 Heavy Linen Bandage##3276,First Aid,75
step
talk Angela Leifeld##56796
|tip Inside the building.
Train Journeyman First Aid |skillmax First Aid,150 |goto Stormwind City/0 52.18,45.42
step
collect 30 Linen Cloth##2589 |or
|tip You collected these in a previous step.
'|complete skill("First Aid") >= 80 |or
step
create 15 Heavy Linen Bandage##3276,First Aid,80
step
talk Angela Leifeld##56796
|tip Inside the building.
Train Wool Bandage |learn Wool Bandage##3277 |goto Stormwind City/0 52.18,45.42
step
Kill Blackrock enemies around this area
collect 180 Wool Cloth##2592 |goto 32.67,9.75 |or
|tip You can also purchase them from the Auction House.
|tip Save at least 120 of these, you will need them for future steps.
You can find more inside the cave at [33.21,6.91]
'|complete skill("First Aid") >= 115 |or
step
create 60 Wool Bandage##3277,First Aid,115
step
talk Angela Leifeld##56796
|tip Inside the building.
Train Heavy Wool Bandage |learn Heavy Wool Bandage##3278 |goto Stormwind City/0 52.18,45.42
step
collect 120 Wool Cloth##2592 |or
|tip You collected these in a previous step.
'|complete skill("First Aid") >= 150 |or
step
create 60 Heavy Wool Bandage##3278,First Aid,150
step
talk Angela Leifeld##56796
|tip Inside the building.
Train Expert First Aid |skillmax First Aid,225 |goto Stormwind City/0 52.18,45.42
step
talk Angela Leifeld##56796
|tip Inside the building.
Train Silk Bandage |learn Silk Bandage##7928 |goto Stormwind City/0 52.18,45.42
step
Kill Grimtotem enemies around this area
collect 150 Silk Cloth##4306 |goto Thousand Needles 13.26,5.84 |or
|tip You can also purchase them from the Auction House.
|tip Save at least 100 of these, you will need them for future steps.
'|complete skill("First Aid") >= 180 |or
step
create 50 Silk Bandage##7928,First Aid,180
step
talk Angela Leifeld##56796
|tip Inside the building.
Train Heavy Silk Bandage |learn Heavy Silk Bandage##7929 |goto Stormwind City/0 52.18,45.42
step
collect 100 Silk Cloth##4306 |or
|tip You collected these in a previous step.
'|complete skill("First Aid") >= 210 |or
step
create 50 Heavy Silk Bandage##7929,First Aid,210
step
talk Angela Leifeld##56796
|tip Inside the building.
Train Mageweave Bandage |learn Mageweave Bandage##10840 |goto Stormwind City/0 52.18,45.42
step
Kill Dunemaul enemies around this area
collect 120 Mageweave Cloth##4338 |goto Tanaris/0 40.50,55.50 |or
|tip You can also purchase them from the Auction House.
|tip Save at least 60 of these, you will need them for future steps.
'|complete skill("First Aid") >= 225 |or
step
create 60 Mageweave Bandage##10840,First Aid,240
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
talk Angela Leifeld##56796
|tip Inside the building.
Train Artisan First Aid |skillmax First Aid,300 |goto Stormwind City/0 52.18,45.42
step
talk Angela Leifeld##56796
|tip Inside the building.
Train Heavy Mageweave Bandage |learn Heavy Mageweave Bandage##10841 |goto Stormwind City/0 52.18,45.42
step
collect 60 Mageweave Cloth##4338 |or
|tip You collected these in a previous step.
'|complete skill("First Aid") >= 260 |or
step
create 30 Heavy Mageweave Bandage##10841,First Aid,260
step
Kill Twilight enemies around this area
collect 80 Runecloth###14047 |goto Silithus/0 44.08,41.21 |or
|tip Save at least 30 of these, you will need them for future steps.
You can find more around [33.79,31.72]
'|complete skill("First Aid") >= 290 |or
step
talk Angela Leifeld##56796
|tip Inside the building.
Train Runecloth Bandage |learn Runecloth Bandage##18629 |goto Stormwind City/0 52.18,45.42
step
create 50 Runecloth Bandage##18629,First Aid,290
step
collect 30 Runecloth###14047 |or
|tip You collected these in a previous step.
'|complete skill("First Aid") >= 300 |or
step
talk Angela Leifeld##56796
|tip Inside the building.
Train Heavy Runecloth Bandage |learn Heavy Runecloth Bandage##18630 |goto Stormwind City/0 52.18,45.42
step
create 15 Heavy Runecloth Bandage##18630,First Aid,300
step
Reach Level 58 |ding 58
|tip You must be at least level 58 to train Master professions in Outland.
|tip Use the leveling guides to accomplish this.
step
talk Burko##18990
|tip Inside the building.
Train Master First Aid |skillmax First Aid,375 |goto Hellfire Peninsula/0 22.33,39.42
step
talk Burko##18990
|tip Inside the building.
Train Netherweave Bandage |learn Netherweave Bandage##27032 |goto Hellfire Peninsula/0 22.33,39.42
step
map Shadowmoon Valley/0
path follow smart; loop on; ants curved; dist 20
path	51.1,58.8	53.0,59.3	53.2,60.5	52.8,63.2	52.8,65.4
path	52.9,69.0	52.5,71.8	47.3,71.1	45.8,71.3	45.2,69.2
path	45.6,66.1	48.0,67.2
Kill enemies around this area
collect 70 Netherweave Cloth##21877 |or
|tip You can also purchase them from the Auction House.
|tip Save at least 20 of these, you will need them for future steps.
'|complete skill("First Aid") >= 340 |or
step
create 50 Netherweave Bandage##27032,First Aid,340
step
collect 20 Netherweave Cloth##21877 |or
|tip You collected these in a previous step.
'|complete skill("First Aid") >= 375 |or
step
talk Burko##18990
|tip Inside the building.
Train Heavy Netherweave Bandage |learn Heavy Netherweave Bandage##27033 |goto Hellfire Peninsula/0 22.33,39.42
step
create 10 Heavy Netherweave Bandage##27033,First Aid,350
step
Reach Level 68 |ding 68
|tip You must be at least level 68 to train Grand Master professions in Northrend.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Dalaran/1 37.78,36.50 < 7 |walk
talk Olisarra the Kind##28706
|tip Inside the building.
Learn Grand Master First Aid |skillmax First Aid,450 |goto 36.56,37.26
step
Enter the building |goto Dalaran/1 37.78,36.50 < 7 |walk
talk Olisarra the Kind##28706
|tip Inside the building.
Learn Frostweave Bandage |learn Frostweave Bandage##45545 |goto 36.56,37.26
step
Collect 5 Gold |complete _G.GetMoney() >= 50000 |q 13272 |future
|tip You will need 5 gold to complete the quest to obtain Northrend Cloth Scavenging.
|tip This will increase your Frostweave Cloth drops.
'|only if skill("Tailoring") >= 325
step
talk Charles Worth##28699
|tip Inside the building.
accept Cloth Scavenging##13272 |goto Dalaran/1 36.14,33.55
|tip You will train Northrend Cloth Scavenging.
|tip This will increase your Frostweave Cloth drops.
'|only if skill("Tailoring") >= 325
step
kill Mjordin Combatant##30037+
|tip They will continuously respawn when you deplete their numbers.
collect 270 Frostweave Cloth##33470 |goto Icecrown/0 37.29,23.72 |or
|tip You can also purchase them from the Auction House.
|tip Save at least 180 of these, you will need them for future steps.
'|complete skill("First Aid") >= 400 |or
step
create 90 Frostweave Bandage##45545,First Aid,400
step
collect 180 Frostweave Cloth##33470 |goto Icecrown/0 37.29,23.72 |or
|tip You collected these in a previous step.
'|complete skill("First Aid") >= 450 |or
step
Kill Drakuru and Rageclaw enemies around this area
collect Manual: Heavy Frostweave Bandage##39152 |goto Zul'Drak/0 34.23,83.24 |or
|tip This will not drop unless your First Aid skill is at least 390.
'|complete knowspell(45546) |or
step
use the Manual: Heavy Frostweave Bandage##39152
Learn Heavy Frostweave Bandage |learn Heavy Frostweave Bandage##45546
step
create 90 Heavy Frostweave Bandage##45546,First Aid,450
step
talk Angela Leifeld##56796
|tip Inside the building.
Train Illustrious Grand Master First Aid |skillmax First Aid,525 |goto Stormwind City/0 52.18,45.42
|tip You must be atleast level 75 to learn Cataclysm First Aid.
step
talk Angela Leifeld##56796
|tip Inside the building.
Train Embersilk Bandage |learn Embersilk Bandage##74556 |goto Stormwind City/0 52.18,45.42
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 75 Embersilk Cloth##53010
|tip You can also purchase them from the Auction House.
'|complete skill("First Aid") >= 475 |or
step
create 75 Embersilk Bandage##74556,First Aid,475
|tip This recipe goes green at 467, so you may need more or less cloth depending on skill ups.
step
talk Angela Leifeld##56796
|tip Inside the building.
Train Heavy Embersilk Bandage |learn Heavy Embersilk Bandage##74557 |goto Stormwind City/0 52.18,45.42
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 150 Embersilk Cloth##53010
|tip You can also purchase them from the Auction House.
'|complete skill("First Aid") >= 525 |or
step
create 75 Heavy Embersilk Bandage##74557,First Aid,525
|tip This recipe goes green at 505, so you may need more or less cloth depending on skill ups.
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
talk Arnold Leland##5493
Train Apprentice Fishing |skillmax Fishing,75 |goto Stormwind City/0 54.99,69.64
step
talk Catherine Leland##5494
buy Fishing Pole##6256 |goto 55.09,69.76 |or
|tip You need to be able to equip a fishing pole in order to fish.
'|complete skill("Fishing") >= 300 |or
step
talk Catherine Leland##5494
buy 5 Shiny Bauble##6529 |goto 55.09,69.76 |or
|tip These will allow you to catch fish easier.
'|complete skill("Fishing") >= 50 |or
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto 55.08,68.10 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto 55.08,68.10 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto 55.08,68.10 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto 55.08,68.10 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto 55.08,68.10 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto 55.08,68.10 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto 55.08,68.10 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto 55.08,68.10 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto 55.08,68.10 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto 55.08,68.10 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto 55.08,68.10 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto 55.08,68.10 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
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
Reach Skill 50 in Fishing |skill Fishing,50 |goto 55.08,68.10
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Arnold Leland##5493
Train Journeyman Fishing |skillmax Fishing,150 |goto 54.99,69.64
step
talk Catherine Leland##5494
buy 10 Nightcrawlers##6530 |goto 55.09,69.76 |complete skill("Fishing") >= 125
buy 10 Bright Baubles##6532 |goto 55.09,69.76 |complete skill("Fishing") >= 125
|tip These will allow you to catch fish easier.
step
talk Catherine Leland##5494
buy Strong Fishing Pole##6365 |goto 55.09,69.76 |or
|tip This is a limited supply item.
|tip If she doesn't have it for sale, check the Auction House.
|tip If you can't get one, you can skip this step.
'|complete skill("Fishing") >= 300 |or
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto 55.08,68.10 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto 55.08,68.10 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto 55.08,68.10 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto 55.08,68.10 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto 55.08,68.10 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto 55.08,68.10 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto 55.08,68.10 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto 55.08,68.10 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto 55.08,68.10 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto 55.08,68.10 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto 55.08,68.10 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto 55.08,68.10 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
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
Reach Skill 125 in Fishing |skill Fishing,125 |goto 55.08,68.10
step
talk Arnold Leland##5493
Train Expert Fishing |skillmax Fishing,225 |goto 54.99,69.64
step
talk Catherine Leland##5494
buy 20 Bright Baubles##6532 |goto 55.09,69.76 |or
|tip These will allow you to catch fish easier.
'|complete skill("Fishing") >= 200 |or
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto Northern Stranglethorn/0 36.97,16.86 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto Stranglethorn Vale/0 37.49,9.28 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto Stranglethorn Vale/0 37.49,9.28 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto Stranglethorn Vale/0 37.49,9.28 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto Stranglethorn Vale/0 37.49,9.28 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto Stranglethorn Vale/0 37.49,9.28 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto Stranglethorn Vale/0 37.49,9.28 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Stranglethorn Vale/0 37.49,9.28 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Stranglethorn Vale/0 37.49,9.28 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto Stranglethorn Vale/0 37.49,9.28 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto Stranglethorn Vale/0 37.49,9.28 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto Stranglethorn Vale/0 37.49,9.28 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete skill("Fishing") >= 200 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 200 in Fishing |skill Fishing,200 |goto Northern Stranglethorn/0 36.97,16.86
step
talk Arnold Leland##5493
Train Artisan Fishing |skillmax Fishing,300 |goto Stormwind City/0 54.99,69.64
step
talk Catherine Leland##5494
buy 20 Bright Baubles##6532 |goto 55.09,69.76 |or
|tip These will allow you to catch fish easier.
'|complete skill("Fishing") >= 300 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 275 in Fishing |skill Fishing,275 |goto The Hinterlands/0 29.37,47.80
step
Click Here to Complete "Nat Pagle, Angler Extreme" |confirm
|tip This is optional and will award a +25 skill fishing pole.
|tip You will be required to fish 4 quest fish in different zones.
|tip The zones are Dustwallow Marsh, Feralas, Desolace, and Swamp of Sorrows.
Click Here to Skip This Quest |confirm |next "Reach_Skill_275"
|tip This quest can be safely skipped or done at a later time.
step
Reach Level 35 |ding 35
|tip You must be at least this level before you can accept the quest in the next step.
|tip Use the leveling guides to accomplish this.
step
Cross the water |goto Dustwallow Marsh/0 66.54,55.09 < 30 |only if walking
talk Nat Pagle##12919
|tip On a small island in the water.
accept Nat Pagle, Angler Extreme##6607 |goto Dustwallow Marsh/0 58.55,60.21
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto Feralas/0 62.38,52.50 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto Feralas/0 62.38,52.50 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto Feralas/0 62.38,52.50 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto Feralas/0 62.38,52.50 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto Feralas/0 62.38,52.50 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto Feralas/0 62.38,52.50 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto Feralas/0 62.38,52.50 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Feralas/0 62.38,52.50 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Feralas/0 62.38,52.50 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto Feralas/0 62.38,52.50 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto Feralas/0 62.38,52.50 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto Feralas/0 62.38,52.50 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete completedq(6607,1) |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
collect Feralas Ahi##16967 |q 6607/1 |goto Feralas/0 62.38,52.50
|tip You will eventually catch one.
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto Desolace/0 38.96,22.70 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto Desolace/0 38.96,22.70 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto Desolace/0 38.96,22.70 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto Desolace/0 38.96,22.70 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto Desolace/0 38.96,22.70 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto Desolace/0 38.96,22.70 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto Desolace/0 38.96,22.70 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Desolace/0 38.96,22.70 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Desolace/0 38.96,22.70 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto Desolace/0 38.96,22.70 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto Desolace/0 38.96,22.70 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto Desolace/0 38.96,22.70 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete completedq(6607,3) |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
collect Sar'theris Striker##16968 |q 6607/3 |goto Desolace/0 38.96,22.70
|tip You will eventually catch one.
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto The Cape of Stranglethorn/0 35.81,53.43 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto Stranglethorn Vale/0 24.58,65.80 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete completedq(6607,4) |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
collect Savage Coast Blue Sailfin##16969 |q 6607/4 |goto The Cape of Stranglethorn/0 35.81,53.43
|tip You will eventually catch one.
step
Equip a Fishing Pole |equipped Fishing Pole##6256 |goto Swamp of Sorrows/0 |only if default |or
|tip A Fishing Pole can be purchased near most Fishing profession trainers. |only if default |or
Equip an Arcanite Fishing Pole |equipped Arcanite Fishing Pole##19970 |goto Swamp of Sorrows/0 |only if itemcount(19970) >= 1 and skill("Fishing") >= 300 |or
Equip a Big Iron Fishing Pole |equipped Big Iron Fishing Pole##6367 |goto Swamp of Sorrows/0 |only if itemcount(6367) >= 1 and skill("Fishing") >= 100 |or
Equip a Blump Family Fishing Pole |equipped Blump Family Fishing Pole##12225 |goto Swamp of Sorrows/0 |only if itemcount(12225) >= 1 |or
Equip a Bone Fishing Pole |equipped Bone Fishing Pole##45991 |goto Swamp of Sorrows/0 |only if itemcount(45991) >= 1 and skill("Fishing") >= 300 |or
Equip a Darkwood Fishing Pole |equipped Darkwood Fishing Pole##6366 |goto Swamp of Sorrows/0 |only if itemcount(6366) >= 1 and skill("Fishing") >= 50 |or
Equip a Jeweled Fishing Pole |equipped Jeweled Fishing Pole##45992 |goto Swamp of Sorrows/0 |only if itemcount(45992) >= 1 and skill("Fishing") >= 300 |or
Equip a Mastercraft Kalu'ak Fishing Pole |equipped Mastercraft Kalu'ak Fishing Pole##44050 |goto Swamp of Sorrows/0 |only if itemcount(44050) >= 1 and skill("Fishing") >= 300 |or
Equip Nat Pagle's Extreme Angler FC-5000 |equipped Nat Pagle's Extreme Angler FC-5000##19022 |goto Swamp of Sorrows/0 |only if itemcount(19022) >= 1 and skill("Fishing") >= 100 |or
Equip a Nat's Lucky Fishing Pole |equipped Nat's Lucky Fishing Pole##45858 |goto Swamp of Sorrows/0 |only if itemcount(45858) >= 1 and skill("Fishing") >= 225 |or
Equip Seth's Graphite Fishing Pole |equipped Seth's Graphite Fishing Pole##25978 |goto Swamp of Sorrows/0 |only if itemcount(25978) >= 1 and skill("Fishing") >= 200 |or
Equip a Strong Fishing Pole |equipped Strong Fishing Pole##6365 |goto Swamp of Sorrows/0 |only if itemcount(6365) >= 1 and skill("Fishing") >= 10 |or
'|complete completedq(6607,2) |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
collect Misty Reed Mahi Mahi##16970 |q 6607/2 |goto Swamp of Sorrows/0 90.45,73.47
|tip You will eventually catch one.
step
Cross the water |goto Dustwallow Marsh/0 66.54,55.09 < 30 |only if walking
talk Nat Pagle##12919
|tip On a small island in the water.
turnin Nat Pagle, Angler Extreme##6607 |goto Dustwallow Marsh/0 58.55,60.21
step
label "Reach_Skill_275"
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 300 in Fishing |skill Fishing,300 |goto Eastern Plaguelands/0 59.42,76.15
step
Reach Level 58 |ding 58
|tip You must be at least level 58 to train Master professions.
|tip Use the leveling guides to accomplish this.
step
Click Here to Level in Outland |confirm
|tip This route can be started at level 58, but provides less valuable fish.
Click Here to Level in Northrend Instead |confirm |next "Begin_Fishing_Northrend"
|tip You can fish in Wintergrasp from 300-450 and catch valuable fish.
|tip You will catch mostly junk until you reach 400 skill with bait applied.
step
talk Juno Dufrain##18911
Train Master Fishing |skillmax Fishing,375 |goto Zangarmarsh/0 78.05,66.09
step
talk Juno Dufrain##18911
buy 20 Bright Baubles##6532 |goto Zangarmarsh/0 78.05,66.09 |or
'|complete skill("Fishing") >= 375 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 350 in Fishing |skill Fishing,350 |goto Zangarmarsh/0 73.33,64.54
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 375 in Fishing |skill Fishing,375 |goto Terokkar Forest/0 39.95,14.44
step
label "Begin_Fishing_Northrend"
talk Marcia Chase##28742
Train Master Fishing |skillmax Fishing,375 |goto Dalaran/1 53.04,64.95
step
talk Marcia Chase##28742
buy 20 Bright Baubles##6532 |goto Dalaran/1 53.04,64.95 |or
'|complete skill("Fishing") >= 375 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 375 in Fishing |skill Fishing,375 |goto Wintergrasp/0 70.91,39.26
step
Reach Level 68 |ding 68
|tip You must be at least level 68 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
talk Marcia Chase##28742
Train Grand Master Fishing |skillmax Fishing,450 |goto Dalaran/1 53.04,64.95
step
talk Marcia Chase##28742
buy 20 Bright Baubles##6532 |goto Dalaran/1 53.04,64.95 |or
'|complete skill("Fishing") >= 300 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach Skill 450 in Fishing |skill Fishing,450 |goto Wintergrasp/0 70.91,39.26
step
talk Arnold Leland##5493
Train Illustrious Grand Master Fishing |skillmax Fishing,525  |goto Stormwind City/0 54.80,69.60
|tip You must be level 75 to train Cataclysm professions.
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
use the Bright Baubles##6532
|tip Use it on your Fishing Pole.
|tip It will grant you +75 Fishing skill for 10 minutes.
|tip Try to keep one of these active whenever you are fishing.
|tip If you have a better bait, you can use that instead.
Reach 525 Fishing |skill Fishing,525 |goto Mount Hyjal/0 62.95,26.60
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Golden Darter",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Fishing') >= 355 end,
condition_valid=function() return skill('Fishing') >= 355 end,
condition_valid_msg="Your Fishing skill must be at least 355 to fish Golden Darter.",
description="Golden Darter can be fished in Terokkar Forest.",
},[[
step
Equip a Fishing Pole |equipped Fishing Pole##6256
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
'|equipped Strong Fishing Pole##6365 |or
'|equipped Blump Family Fishing Pole##12225 |or
'|equipped Arcanite Fishing Pole##19970 |or
'|equipped Darkwood Fishing Pole##6366 |or
'|equipped Big Iron Fishing Pole##6367 |or
'|equipped Nat Pagle's Extreme Angler FC-5000##19022 |or
'|equipped Seth's Graphite Fishing Pole##25978 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
collect Golden Darter##27438 |goto Terokkar Forest/0 59.69,54.01 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Figluster's Mudfish",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Fishing') >= 355 end,
condition_valid=function() return skill('Fishing') >= 355 end,
condition_valid_msg="Your Fishing skill must be at least 355 to fish Figluster's Mudfish.",
description="Figluster's Mudfish can be fished in Nagrand.",
},[[
step
Equip a Fishing Pole |equipped Fishing Pole##6256
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
'|equipped Strong Fishing Pole##6365 |or
'|equipped Blump Family Fishing Pole##12225 |or
'|equipped Arcanite Fishing Pole##19970 |or
'|equipped Darkwood Fishing Pole##6366 |or
'|equipped Big Iron Fishing Pole##6367 |or
'|equipped Nat Pagle's Extreme Angler FC-5000##19022 |or
'|equipped Seth's Graphite Fishing Pole##25978 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
collect Figluster's Mudfish##27435 |goto Nagrand/0 57.23,74.93 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Icefin Bluefish",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Fishing') >= 355 end,
condition_valid=function() return skill('Fishing') >= 355 end,
condition_valid_msg="Your Fishing skill must be at least 355 to fish Icefin Bluefish.",
description="Icefin Bluefish can be fished in Nagrand.",
},[[
step
Equip a Fishing Pole |equipped Fishing Pole##6256
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
'|equipped Strong Fishing Pole##6365 |or
'|equipped Blump Family Fishing Pole##12225 |or
'|equipped Arcanite Fishing Pole##19970 |or
'|equipped Darkwood Fishing Pole##6366 |or
'|equipped Big Iron Fishing Pole##6367 |or
'|equipped Nat Pagle's Extreme Angler FC-5000##19022 |or
'|equipped Seth's Graphite Fishing Pole##25978 |or
step
cast Fishing##33095
|tip Fish in the water.
|tip You must have a Fishing Pole equipped to fish.
|tip A Fishing Pole can be purchased near most Fishing profession trainers.
collect Icefin Bluefish##27437 |goto Nagrand/0 57.23,74.93 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Raw Brilliant Smallfish",{
author="support@zygorguides.com",
},[[
step
Fish in the open water
collect Raw Brilliant Smallfish##6291 |n |goto Elwynn Forest 33.59,63.52
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Raw Slitherskin Mackerel",{
author="support@zygorguides.com",
},[[
step
Fish in the open water
collect Raw Slitherskin Mackerel##6303 |n |goto Teldrassil 56.25,93.72
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Raw Rainbow Fin Albacore",{
author="support@zygorguides.com",
},[[
step
Fish in the Open Water
collect Raw Rainbow Fin Albacore##6361 |n |goto Wetlands 9.32,61.63
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Raw Longjaw Mud Snapper",{
author="support@zygorguides.com",
},[[
step
Fish in the Open Water
collect Raw Longjaw Mud Snapper##6289 |n |goto Stormwind City/0 45.37,57.54
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Raw Bristle Whisker Catfish",{
author="support@zygorguides.com",
},[[
step
Fish in the Open Water
collect Raw Bristle Whisker Catfish##6308 |n |goto Stormwind City/0 45.37,57.54
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Raw Mithril Head Trout",{
author="support@zygorguides.com",
},[[
step
Fish in the Open Water
collect Raw Mithril Head Trout##8365 |n |goto Dustwallow Marsh 59.95,34.54
|tip You will need level 130 Fishing to catch these.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Raw Sagefish",{
author="support@zygorguides.com",
},[[
step
Fish from Sagefish Schools in the water around this area
collect Raw Sagefish##21071 |n |goto Hillsbrad Foothills 61.38,42.49
|tip Follow the river north for more schools.
|tip You will need level 100 Fishing to catch these.
You can find more around [42.70,13.29]
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Raw Rockscale Cod",{
author="support@zygorguides.com",
},[[
step
Fish in the Open Water
collect Raw Rockscale Cod##6362 |n |goto The Cape of Stranglethorn/0 35.81,53.43
|tip You will need level 130 Fishing to catch these.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Farming Guides\\Raw Sunscale Salmon",{
author="support@zygorguides.com",
},[[
step
Fish in the Open Water
collect Raw Sunscale Salmon##13760 |n |goto Feralas 62.39,52.49
|tip You will need level 205 Fishing to catch these.
|tip This fish can only be caught during the day; they cannot be caught between midnight and 6 AM server time.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Herbalism (1-525)",{
author="support@zygorguides.com",
description="This guide will walk you through 1-525 Herbalism.",
},[[
step
talk Herbalist Pomeroy##1218
Train Herbalism |skillmax Herbalism,75 |goto Elwynn Forest/0 39.94,48.41
step
map Elwynn Forest/0
path follow smart; loop on; ants straight; dist 30
path	49.62,59.69	51.74,60.45	55.25,61.20	59.03,61.69	61.94,62.27
path	64.04,63.82	66.53,66.13	67.79,62.24	70.56,61.09	72.89,62.13
path	74.03,66.57	75.31,71.59	77.06,76.32	76.79,78.60	77.58,81.44
path	76.28,82.77	73.19,82.53	70.32,83.21	68.43,81.68	66.51,81.26
path	65.63,78.54	63.56,75.79	61.16,75.51	59.26,77.15	57.07,79.05
path	55.17,83.28	53.19,83.73	50.87,82.55	48.37,84.04	45.95,85.19
path	42.21,81.98	40.57,84.77	37.78,89.01	34.45,89.09	31.24,87.68
path	28.68,86.00	26.12,87.15	25.63,81.55	25.84,78.27	27.03,75.26
path	29.51,69.02	31.72,67.66	33.65,65.85	34.87,61.79	33.61,58.00
path	34.10,54.97	37.31,56.45	40.90,57.15	43.52,55.81	45.93,57.19
|tip Gather Peacebloom, Silverleaf, and Earthroot along the path.
click Peacebloom##1618+
click Silverleaf##1617+
click Earthroot##1619+
Reach Level 50 Herbalism |skill Herbalism,50
step
talk Herbalist Pomeroy##1218
Train Journeyman Herbalism |skillmax Herbalism,150 |goto Elwynn Forest/0 39.94,48.41
step
map Westfall/0
path follow smart; loop on; ants straight; dist 30
path	57.93,11.23	52.95,13.62	44.96,14.25	39.55,18.07	37.91,23.03
path	33.29,30.35	30.60,34.68	29.94,37.76	30.57,43.08	29.25,48.02
path	29.27,53.83	28.74,60.04	29.16,67.86	30.82,76.50	36.85,74.86
path	39.76,71.59	38.91,62.84	42.63,56.69	49.25,45.31	54.33,39.52
path	51.09,30.69	55.95,19.89
|tip Gather Earthroot and Mageroyal along the path.
click Earthroot##1619+
click Mageroyal##1620+
Reach Level 70 Herbalism |skill Herbalism,70
step
map Duskwood/0
path follow smart; loop on; ants straight; dist 30
path	28.69,27.61	33.54,29.65	28.93,35.01	32.69,40.03	30.03,42.93
path	32.37,50.04	25.52,52.29	23.16,64.85	25.44,69.39	27.83,72.96
path	33.49,74.41	40.48,73.96	49.03,71.95	53.99,61.65	60.32,57.64
path	63.77,50.68	66.52,44.66	63.90,38.23	66.10,29.86	63.33,17.74
path	54.40,24.08	   45.33,21.24
|tip Gather Mageroyal and Briarthorn along the path.
click Briarthorn##2450+
click Mageroyal##1620+
|tip At 115, gather Wild Steelbloom from the mountain edges as well.
Reach Level 125 Herbalism |skill Herbalism,125
step
talk Herbalist Pomeroy##1218
Train Expert Herbalism |skillmax Herbalism,225 |goto Elwynn Forest/0 39.94,48.41
|tip You must be at least level 10 to learn Expert Herbalism. |only if level < 10
step
map Northern Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	41.90,20.67	37.44,18.90	34.85,19.46	32.34,24.69	30.05,30.56
path	31.98,34.72	35.10,35.48	36.39,37.67	36.22,43.48	39.56,45.08
path	41.94,46.79	43.43,52.34	46.37,51.56	48.08,49.67	48.49,45.14
path	48.80,39.39	47.67,35.55	47.51,32.62	54.93,29.17	59.73,28.40
path	63.25,29.41	63.03,23.00	59.49,21.11	57.08,20.01	54.52,20.03
path	52.60,22.27	51.52,24.23	41.44,25.58
|tip Gather Kingsblood and Wild Steelbloom along the path.
click Kingsblood##3356+
click Wild Steelbloom##1623+
|tip At 150 you can start gathering Liferoot from along the river.
Reach Level 160 Herbalism |skill Herbalism,160
step
map The Cape of Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	49.45,10.57	48.12,15.04	49.07,18.49	46.62,19.50	42.69,17.68
path	43.11,22.88	41.16,27.28	44.83,34.99	45.80,43.54	40.95,44.14
path	37.46,47.35	37.28,51.60	39.19,56.20	42.32,61.61	45.84,65.53
path	47.45,61.68	47.26,57.65	49.85,55.73	50.58,49.54	49.59,41.91
path	51.92,33.55	53.22,31.69	54.47,27.92	58.38,28.73	62.17,31.34
path	62.14,27.41
|tip Gather Fadeleaf along this path.
click Fadeleaf##3818+
click Khadgar's Whisker##2043+
|tip At 185 start gathering Khadgar's Whisker as well.
Reach Level 210 Herbalism |skill Herbalism,210
step
talk Herbalist Pomeroy##1218
Train Artisan Herbalism |skillmax Herbalism,300 |goto Elwynn Forest/0 39.94,48.41
|tip You must be at least level 25 to learn Artisan Herbalism. |only if level < 25
step
map Searing Gorge/0
path follow smart; loop on; ants straight; dist 30
path	37.00,41.10	30.85,44.01	29.87,50.40	31.28,58.18	31.09,64.17
path	31.15,68.86	34.68,68.60	39.43,73.19	45.08,66.57	47.38,61.80
path	52.13,67.88	56.85,61.86	58.61,56.17	63.23,64.32	64.76,55.47
path	65.92,46.59	67.62,37.32	59.23,35.66	48.34,38.83
|tip Gather Firebloom along this path.
click Firebloom##4625+
Reach Level 250 Herbalism |skill Herbalism,250
step
map Felwood/0
path follow smart; loop on; ants curved; dist 30
path	48.25,74.18	45.57,71.52	45.19,67.93	44.99,64.81	43.75,63.75
path	42.60,61.94	42.10,60.44	42.52,58.39	42.19,55.80	42.12,53.77
path	42.52,51.99	42.46,49.04	43.22,46.66	42.28,45.26	43.25,43.10
path	44.86,43.11	46.09,41.05	45.72,36.88	46.03,33.95	47.65,33.39
path	51.14,32.99	51.89,29.81	53.84,27.92	55.31,24.24	55.39,22.27
path	45.98,22.93 52.60,22.73 51.41,24.65 50.01,21.04 46.67,25.21
path	43.76,23.67	42.49,24.58	40.74,26.31	41.42,27.63	41.25,30.12
path	40.28,31.55	39.63,32.74	40.28,34.49	39.88,36.76	39.02,41.56
path	38.95,44.99	40.65,46.99	39.91,49.88	39.07,53.19	38.83,55.66
path	39.72,58.29	41.23,59.18	41.60,60.63	42.10,62.62	41.71,64.52
path	40.58,65.26	40.40,68.00	39.31,70.23	39.26,71.58	41.53,72.75
path	41.89,74.07	40.92,76.49	41.72,78.38	43.01,80.29	44.69,81.19
path	45.84,83.32	47.74,82.92	49.87,80.73
|tip Gather Gromsblood along this path.
click Gromsblood##142145+
|tip Gather Golden Sansam at 260 and Dreamfoil at 270 as well
Reach Level 280 Herbalism |skill Herbalism,280
step
map Winterspring/0
path follow smart; loop on; ants straight; dist 30
path	22.42,57.71	22.19,61.90	24.41,62.07	25.90,57.83	28.15,57.73
path	30.01,58.79	33.34,59.63	36.12,58.61	37.72,57.57	41.87,53.30
path	42.37,56.65	47.15,60.90	49.65,58.66	52.13,58.02	53.47,63.96
path	53.44,67.10	55.13,69.75	55.67,73.09	55.70,76.15	57.96,75.83
path	60.19,72.78	61.19,69.92	61.14,67.07	61.38,62.85	62.74,61.72
path	65.10,60.73	67.03,61.17	67.14,57.10	66.70,52.77	65.40,50.58
path	63.77,49.22	65.55,45.93	68.20,45.58	68.56,43.10	67.70,40.22
path	67.74,37.68	66.91,35.23	67.08,32.77	66.70,30.51	65.97,26.46
path	64.59,29.09	62.41,31.24	60.89,31.57	59.82,29.78	58.81,27.51
path	59.22,24.40	59.88,22.11	57.63,18.43	54.82,19.50	52.66,18.83
path	49.90,18.51	48.92,14.84	46.77,13.89	44.89,14.63	44.82,16.63
path	44.90,19.96	44.89,22.91	45.39,25.33	46.78,29.13	47.65,32.26
path	47.37,33.81	48.66,37.63	48.80,42.57	48.06,44.53	44.26,47.48
path	42.29,46.73	40.02,46.26	38.31,45.75	35.60,47.41	31.24,47.64
path	27.43,47.39	25.05,46.58
|tip Gather Mountain Silversage along this path.
click Mountain Silversage##176586+
click Icecap##176588+
|tip At 290 begin to gather Icecap as well.
Reach Level 300 Herbalism |skill Herbalism,300
step
talk Tannysa##5566
Train Master Herbalism |skillmax Herbalism,375 |goto Stormwind City/0 54.33,84.07
|tip You must be at least level 40 to learn Master Herbalism. |only if level < 40
step
map Nagrand/0
path follow smart; loop on; ants straight; dist 30
path	73.74,55.38	71.51,57.49	71.51,61.00	74.67,63.28	75.05,67.93
path	75.00,69.36	74.71,71.83	72.26,73.84	70.34,76.16	71.17,78.66
path	67.46,75.67	67.01,73.43	65.67,70.00	62.51,74.78	59.20,72.11
path	57.98,68.35	59.35,65.14	58.76,60.69	57.55,56.52	55.56,57.85
path	51.66,60.42	49.73,61.20	49.91,67.46	48.17,69.91	45.96,67.39
path	44.50,70.51	42.62,70.55	40.94,71.99	39.26,77.58	35.82,76.93
path	32.40,75.32	30.49,72.19	32.35,69.48	33.86,67.30	34.51,64.49
path	32.65,61.72	28.70,60.83	26.80,56.13	23.10,54.53	22.95,54.34
path	21.30,50.23	22.32,45.77	27.38,40.65	30.02,37.64	30.91,33.55
path	32.43,32.10	33.38,27.86	36.77,24.78	39.86,24.33	40.09,22.13
path	41.89,22.68	44.55,26.87	46.66,26.77	47.66,23.71	49.19,22.59
path	51.90,22.15	51.16,29.01	52.21,30.91	50.37,38.57	48.03,43.27
path	49.18,47.27	52.27,46.65	53.97,47.44	58.03,46.11	59.60,43.60
path	62.80,41.81	66.80,40.73	69.47,45.77	71.27,47.04
|tip Gather Felweed along tihs path
click Felweed##181270+
click Dreaming Glory##181271+
|tip At 315 begin to gather Dreaming Glory as well.
Reach Level 325 Herbalism |skill Herbalism,325
step
step
map Terokkar Forest/0
path follow smart; loop on; ants curved
path	31.60,45.71	32.29,42.68	32.86,38.44	32.61,35.72	34.85,34.70
path	36.60,32.54	36.98,30.09	38.61,28.59	39.20,26.76	40.64,25.10
path	41.40,22.16	43.06,19.91	43.81,17.68	43.32,15.01	43.95,12.48
path	45.94,12.75	48.58,14.35	50.45,17.02	49.36,20.09	49.79,22.32
path	50.98,24.83	53.08,25.59	55.63,25.32	58.26,25.33	59.93,23.87
path	61.12,26.59	62.13,28.15	63.46,29.60	65.02,31.32	67.13,31.63
path	69.82,31.74	69.61,35.63	68.73,39.39	69.79,42.02	70.46,45.89
path	70.51,48.71	68.94,53.17	68.11,54.89	65.38,54.27	63.87,51.31
path	61.59,50.51	59.04,49.28	56.48,46.30	53.96,42.43	54.33,38.20
path	53.25,35.66	50.24,35.67	48.92,34.53	46.58,34.04	43.68,34.49
path	40.40,35.76	38.35,36.51	36.62,38.18	36.01,39.93	36.50,42.94
path	35.72,43.53	33.66,44.98
click Terocone##181277+
|tip Gather Terocone and other herbs along the path.
Reach Level 350 Herbalism |skill Herbalism,350
step
map Netherstorm/0
path follow smart; loop on; ants curved
path	40.24,77.20	35.96,77.64	33.57,77.45	32.69,76.46	29.37,79.43
path	26.96,78.02	25.18,76.67	22.65,76.95	21.15,76.56	20.31,74.78
path	19.80,71.91	19.08,69.17	20.47,66.62	22.14,66.23	24.65,65.10
path	27.12,60.26	25.78,57.60	24.23,55.80	25.51,54.63	28.56,54.51
path	31.15,52.38	29.62,43.63	27.59,44.60	25.41,44.20	22.98,42.42
path	23.01,39.51	24.33,37.29	25.59,34.57	28.07,36.77	29.58,40.32
path	31.85,40.98	36.24,37.50	34.06,33.89	33.35,29.83	33.90,25.46
path	35.11,23.24	35.65,19.13	37.78,16.74	39.58,16.09	42.42,14.81
path	44.23,11.72	45.11,9.32	45.88,7.67	46.97,9.19	48.22,13.84
path	50.05,15.38	50.32,17.83	53.22,17.87	55.50,17.51	55.81,20.17
path	56.92,23.83	54.87,25.87	52.51,26.14	50.65,26.43	48.19,27.46
path	47.13,31.47	47.76,34.54	49.01,37.61	54.64,32.59	56.67,31.80
path	58.36,31.54	60.65,30.28	62.49,30.31	65.43,30.84	67.85,32.79
path	68.63,35.87	70.41,36.32	72.66,35.05	73.97,35.64	73.61,37.25
path	73.81,39.22	73.42,40.88	72.18,43.37	70.07,44.56	68.89,46.88
path	66.51,48.70	64.20,50.40	61.71,50.31	59.22,50.15	57.37,48.48
path	56.39,46.25	54.77,43.82	53.12,41.66	49.55,46.57	49.57,50.00
path	50.42,52.90	51.84,54.87	53.70,56.61	56.10,56.66	57.95,57.14
path	59.94,58.21	62.03,58.25	64.36,58.34	66.65,58.84	67.89,61.91
path	66.70,65.88	64.15,67.93	62.18,68.23	61.37,64.52	60.24,63.12
path	57.94,63.05	57.36,65.05	56.29,67.80	52.89,68.59	51.27,70.71
path	51.54,75.15	54.25,76.46	57.15,77.98	59.64,78.82	62.25,79.25
path	60.11,81.86	60.14,84.60	59.80,87.70	58.69,89.60	56.55,89.08
path	54.83,88.42	52.69,86.63	50.15,86.35	48.74,85.68	46.78,84.05
path	45.54,79.03	43.73,76.27
click Netherbloom##181279+
|tip Gather Netherbloom along the path.
Reach Level 375 Herbalism |skill Herbalism,375
step
talk Tannysa##5566
Train Grand Master Herbalism |skillmax Herbalism,450 |goto Stormwind City/0 54.33,84.07
|tip You must be at least level 55 to learn Grand Master Herbalism. |only if level < 55
step
map Howling Fjord/0
path follow smart; loop on; ants straight; dist 30
path	28.32,9.45	26.89,7.87
map Grizzly Hills
path	34.30,81.36
map Howling Fjord
path	24.38,14.17	27.59,18.66	28.51,21.97	28.47,25.41	27.25,29.28
path	29.21,31.96	31.02,33.50	32.75,33.13	34.65,34.63	39.17,33.19
path	41.20,34.00	42.30,28.24	43.86,27.95	44.60,29.76	47.05,29.52
path	48.37,29.95	49.43,34.95	50.68,33.99	52.23,32.35	53.73,32.24
path	55.99,36.28	57.37,37.11	58.94,38.82	51.52,42.42	47.37,42.65
path	45.21,42.41	43.48,43.14	41.04,40.53	37.50,40.00	37.15,44.48
path	35.33,46.41	34.64,50.52	36.59,52.85	39.34,54.24	46.33,53.51
path	46.60,50.54	48.34,48.40	50.70,48.46	52.29,51.37	53.00,55.99
path	51.29,58.81	49.26,62.45	46.78,71.23	48.76,72.20	52.81,71.77
path	53.69,75.28	56.26,75.89	61.22,80.50	66.72,74.20	69.10,74.68
path	70.02,72.41	70.08,69.89	70.63,66.92	73.14,66.67	76.45,67.80
path	76.65,64.02	75.76,60.81	73.48,58.67	72.44,55.06	75.72,51.02
path	78.83,49.70	80.48,46.73	78.94,45.06	76.53,43.20	74.27,44.13
path	72.64,42.52	70.62,40.65	70.40,34.94	70.44,32.87	70.65,28.32
path	69.75,24.84	69.72,22.42	70.12,19.08	68.38,19.94	65.57,24.57
path	63.35,27.37	61.53,28.13	59.26,26.03	58.29,23.98	56.01,20.08
path	52.69,18.20	50.68,16.74	49.14,18.22	45.76,22.17	42.21,23.86
path	39.89,23.58	35.69,22.56
|tip Gather Goldclover and Tiger Lily along the path.
click Goldclover##189973+
click Tiger Lily##190169+
Reach Level 400 Herbalism |skill Herbalism,400
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	24.23,56.13	27.03,55.88	28.77,58.22	30.23,54.96	29.81,49.57
path	30.16,47.28	33.16,47.05	35.35,48.39	37.38,50.81	38.86,53.62
path	40.12,57.19	38.28,58.88	35.54,59.62	33.29,60.96	33.97,63.13
path	36.14,64.74	38.39,66.80	40.60,66.19	41.59,67.02	42.33,70.20
path	43.23,74.84	43.38,79.66	43.24,82.82	40.64,84.76	37.93,83.94
path	36.78,82.55	35.42,82.23	33.77,83.66	32.50,84.16	30.86,84.19
path	28.98,83.64	28.84,80.96	29.94,78.24	29.66,74.84	30.05,71.44
path	29.72,69.53	28.01,66.13	26.96,64.47	25.20,65.29	22.71,63.99
path	21.97,60.65	22.37,57.35
click Adder's Tongue##191019+
|tip Gather Adder's Tongue and other herbs along the path.
Reach Level 435 Herbalism |skill Herbalism,435
step
talk Tannysa##5566
Train Illustrious Grand Master Herbalism |skillmax Herbalism,525 |goto Stormwind City/0 54.33,84.07
|tip You must be at least level 75 to learn Illustrious Grand Master Herbalism. |only if level < 75
step
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
Reach Level 500 Herbalism |skill Herbalism,500
step
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
Reach Level 525 Herbalism |skill Herbalism,525
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Silverleaf",{
author="support@zygorguides.com",
},[[
step
map Elwynn Forest/0
path follow smart; loop on; ants curved; dist 20
path	35.16,58.15	35.80,61.90	34.96,66.91	35.08,70.72	34.97,74.55
path	31.26,76.29	29.39,72.28	26.34,77.16	26.78,84.53	26.01,88.87
path	28.95,85.90	31.32,84.53	34.00,86.31	35.63,87.61	40.33,90.30
path	42.44,85.05	42.33,79.53	44.78,75.63	57.19,75.30	61.71,78.02
path	64.64,80.21	66.96,82.28	71.53,82.34	74.86,79.96	85.15,82.86
path	88.50,76.38	87.13,70.90	86.64,64.81	83.70,60.88	78.23,58.27
path	74.68,59.68	70.59,61.28	67.25,64.47	63.72,65.35	60.60,62.03
path	56.21,61.31	51.67,60.44	49.08,59.49	44.65,55.81	42.02,54.40
path	39.16,55.56
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
collect Silverleaf##765 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Peacebloom",{
author="support@zygorguides.com",
},[[
step
map Elwynn Forest/0
path follow smart; loop on; ants curved; dist 20
path	35.16,58.15	35.80,61.90	34.96,66.91	35.08,70.72	34.97,74.55
path	31.26,76.29	29.39,72.28	26.34,77.16	26.78,84.53	26.01,88.87
path	28.95,85.90	31.32,84.53	34.00,86.31	35.63,87.61	40.33,90.30
path	42.44,85.05	42.33,79.53	44.78,75.63	57.19,75.30	61.71,78.02
path	64.64,80.21	66.96,82.28	71.53,82.34	74.86,79.96	85.15,82.86
path	88.50,76.38	87.13,70.90	86.64,64.81	83.70,60.88	78.23,58.27
path	74.68,59.68	70.59,61.28	67.25,64.47	63.72,65.35	60.60,62.03
path	56.21,61.31	51.67,60.44	49.08,59.49	44.65,55.81	42.02,54.40
path	39.16,55.56
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
collect Peacebloom##2447 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Earthroot",{
author="support@zygorguides.com",
},[[
step
map Elwynn Forest/0
path follow smart; loop on; ants curved; dist 20
path	37.69,50.56	37.74,52.72	40.46,52.58	44.68,49.88	47.75,50.98
path	50.11,53.78	51.22,59.12	53.58,60.05	55.86,57.19	58.11,58.67
path	61.20,55.26	63.90,54.16	65.95,58.60	68.39,54.25	67.30,49.51
path	66.94,46.11	64.93,39.76	68.35,38.37	73.03,36.59	78.22,39.11
path	80.09,41.77	81.52,47.88	81.14,54.53	84.76,60.10	88.26,63.13
path	89.58,67.45	86.13,79.13	83.85,81.99	79.68,75.80	74.93,72.40
path	71.73,71.92	66.40,71.08	64.94,72.55	60.59,74.44	58.98,78.43
path	55.19,81.63	51.23,81.44	50.22,73.66	44.38,68.40	42.59,67.01
path	39.55,56.74
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 15 Herbalism skill to gather these.
collect Earthroot##2449 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Grave Moss",{
author="support@zygorguides.com",
},[[
step
Click herbs around this area
|tip Track them on your minimap with "Find Herbs".
|tip They spawn in this small area.
|tip You will need at least 120 Herbalism skill to gather these.
collect Grave Moss##3369 |n |goto Wetlands 44.07,26.40
You can find more inside the crypt at [44.27,25.39]
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Liferoot",{
author="support@zygorguides.com",
},[[
step
label "Path_One"
map Wetlands
path follow smart; loop off; dist 20
path	39.88,29.56	42.39,32.16	44.42,36.02	50.85,37.60	53.92,41.52
path	55.96,45.32	59.97,50.83	61.97,56.83	64.42,68.06	63.29,74.88
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 150 Herbalism skill to gather these.
collect Liferoot##3357 |n
'|goto 63.29,74.88 < 20 |noway |c
step
map Wetlands
path follow smart; loop off; dist 20
path	63.29,74.88	64.42,68.06	61.97,56.83	59.97,50.83	55.96,45.32
path	53.92,41.52	50.85,37.60	44.42,36.02	42.39,32.16	39.88,29.56
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 150 Herbalism skill to gather these.
collect Liferoot##3357 |n
'|goto 39.88,29.56 < 20 |noway |c |next "Path_One"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Fadeleaf",{
author="support@zygorguides.com",
},[[
step
map The Cape of Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	49.45,10.57	48.12,15.04	49.07,18.49	46.62,19.50	42.69,17.68
path	43.11,22.88	41.16,27.28	44.83,34.99	45.80,43.54	40.95,44.14
path	37.46,47.35	37.28,51.60	39.19,56.20	42.32,61.61	45.84,65.53
path	47.45,61.68	47.26,57.65	49.85,55.73	50.58,49.54	49.59,41.91
path	51.92,33.55	53.22,31.69	54.47,27.92	58.38,28.73	62.17,31.34
path	62.14,27.41
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip Watch out for horde guards along the main road.
|tip You will need at least 160 Herbalism skill to gather these.
collect Fadeleaf##3818 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Wildvine",{
author="support@zygorguides.com",
},[[
step
Kill Vilebranch Enemies around this area
collect Wildvine##8153 |n |goto The Hinterlands 66.46,71.42
|tip They have a 10% chance to be gathered from Purple Lotus around the Altar.
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 210 Herbalism skill to gather these.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Blindweed",{
author="support@zygorguides.com",
},[[
step
map Feralas/0
path follow smart; loop on; ants straight; dist 30
path	53.38,7.89	51.46,6.46	49.81,5.77	49.72,7.88	49.28,11.08
path	47.71,12.05	47.87,14.71	49.76,14.27	51.85,14.75	53.36,11.89
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 235 Herbalism skill to gather these.
collect Blindweed##8839 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Ghost Mushroom",{
author="support@zygorguides.com",
},[[
step
map The Hinterlands
path follow smart; loop on; ants curved; dist 20
path	57.75,46.26	59.21,44.51	59.83,40.90	57.54,38.67	55.82,38.52
path	54.48,40.89	54.34,43.82	55.65,46.02
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 245 Herbalism skill to gather these.
|tip They spawn inside of the cave along this path as well as outside of it.
collect Ghost Mushroom##8845 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Mountain Silversage",{
author="support@zygorguides.com",
},[[
step
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	69.50,80.51	66.73,78.96	62.06,80.45	60.17,83.38	57.90,84.92
path	56.43,85.63	52.59,86.79	50.45,85.64	47.59,86.84	44.06,85.48
path	40.43,83.69	37.58,82.20	36.74,80.02	34.35,78.80	30.60,79.47
path	29.81,78.29	29.45,73.80	29.51,71.95	30.47,70.66	30.12,68.78
path	26.87,68.47	26.22,63.87	24.35,55.86	24.60,51.19	24.66,49.08
path	24.29,47.04	24.87,40.95	26.12,37.25	26.47,32.27	28.16,29.95
path	29.28,30.78	30.53,29.41	29.59,24.96	30.56,20.83	33.11,20.72
path	34.48,21.20	36.41,20.34	38.57,16.60	42.23,16.10	44.74,14.15
path	48.26,13.20	49.78,17.80	51.76,16.54	52.14,13.12	54.40,13.42
path	56.79,14.48	59.79,16.53	62.08,16.53	63.95,19.36	65.85,21.43
path	66.83,23.10	67.79,22.98	68.24,20.16	70.91,20.97	71.45,25.67
path	71.86,28.59	74.60,32.13	74.81,36.14	76.10,40.85	76.77,46.27
path	76.23,50.57	76.85,54.91	75.63,60.70	74.66,64.47	74.30,69.24
path	71.82,70.72	70.92,71.71	71.15,74.12	70.59,75.37	70.92,79.06
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 280 Herbalism skill to gather these.
collect Mountain Silversage##13465 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Icecap",{
author="support@zygorguides.com",
},[[
step
map Winterspring/0
path follow smart; loop on; ants straight; dist 30
path	22.42,57.71	22.19,61.90	24.41,62.07	25.90,57.83	28.15,57.73
path	30.01,58.79	33.34,59.63	36.12,58.61	37.72,57.57	41.87,53.30
path	42.37,56.65	47.15,60.90	49.65,58.66	52.13,58.02	53.47,63.96
path	53.44,67.10	55.13,69.75	55.67,73.09	55.70,76.15	57.96,75.83
path	60.19,72.78	61.19,69.92	61.14,67.07	61.38,62.85	62.74,61.72
path	65.10,60.73	67.03,61.17	67.14,57.10	66.70,52.77	65.40,50.58
path	63.77,49.22	65.55,45.93	68.20,45.58	68.56,43.10	67.70,40.22
path	67.74,37.68	66.91,35.23	67.08,32.77	66.70,30.51	65.97,26.46
path	64.59,29.09	62.41,31.24	60.89,31.57	59.82,29.78	58.81,27.51
path	59.22,24.40	59.88,22.11	57.63,18.43	54.82,19.50	52.66,18.83
path	49.90,18.51	48.92,14.84	46.77,13.89	44.89,14.63	44.82,16.63
path	44.90,19.96	44.89,22.91	45.39,25.33	46.78,29.13	47.65,32.26
path	47.37,33.81	48.66,37.63	48.80,42.57	48.06,44.53	44.26,47.48
path	42.29,46.73	40.02,46.26	38.31,45.75	35.60,47.41	31.24,47.64
path	27.43,47.39	25.05,46.58
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 290 Herbalism skill to gather these.
collect Icecap##13467 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Black Lotus",{
author="support@zygorguides.com",
},[[
step
label "Path_One"
map Burning Steppes
path follow smart; loop off; dist 20
path	75.56,48.10	67.51,44.35	65.55,42.14	64.07,37.82	63.48,37.82
path	60.30,40.06	49.65,36.46	46.29,34.47	43.06,33.76	41.88,37.36
path	41.46,40.03	42.68,42.14	42.11,43.86	39.76,44.39	35.84,48.89
path	33.34,55.11	31.73,57.80	27.13,61.16	25.14,54.29	22.87,50.09
path	18.10,44.02	15.47,40.51	15.42,34.23	15.35,30.51
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 300 Herbalism skill to gather these.
collect Black Lotus##13468 |n
|tip These are extremely rare.
|tip Pick other herbs on the path to have a chance to spawn them.
'|goto 15.35,30.51 < 20 |noway |c
step
map Burning Steppes
path follow smart; loop off; dist 20
path	15.35,30.51	15.42,34.23	15.47,40.51	18.10,44.02	22.87,50.09
path	25.14,54.29	27.13,61.16	31.73,57.80	33.34,55.11	35.84,48.89
path	39.76,44.39	42.11,43.86	42.68,42.14	41.46,40.03	41.88,37.36
path	43.06,33.76	46.29,34.47	49.65,36.46	60.30,40.06	63.48,37.82
path	64.07,37.82	65.55,42.14	67.51,44.35	75.56,48.10
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 300 Herbalism skill to gather these.
collect Black Lotus##13468 |n
|tip These are extremely rare.
|tip Pick other herbs on the path to have a chance to spawn them.
'|goto 75.56,48.10 < 20 |noway |c |next "Path_One"
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Mageroyal",{
author="support@zygorguides.com",
},[[
step
map Loch Modan/0
path follow smart; loop on; ants straight; dist 30
path	41.50,13.82	45.48,20.65	47.42,23.92	47.07,28.70	50.19,31.13
path	55.12,27.07	56.72,20.58	58.43,20.04	60.23,24.41	62.23,26.69
path	55.76,35.39	53.76,40.36	58.01,40.64	61.62,44.81	64.15,46.10
path	66.55,47.59	67.58,50.15	66.06,55.14	64.09,57.07	60.35,52.90
path	54.46,52.08	55.15,59.94	54.00,65.69	49.60,61.93	47.74,59.21
path	45.43,55.43	37.73,46.14	39.69,43.10	40.83,33.03
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 50 Herbalism skill to gather these.
collect Mageroyal##785 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Stranglekelp",{
author="support@zygorguides.com",
},[[
step
map Wetlands/0
path follow smart; loop on; ants straight; dist 30
path	7.71,72.28	8.64,69.34	10.22,66.09	13.44,62.57	17.65,59.72
path	19.38,57.25	16.89,53.45	5.99,53.34	3.69,53.64	4.32,49.07
path	7.46,44.87	10.27,40.32	11.35,33.11	12.45,27.89	13.62,23.90
path	16.90,21.24	20.12,19.01
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip They are underwater along the path.
|tip You will need at least 85 Herbalism skill to gather these.
collect Stranglekelp##3820 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Briarthorn",{
author="support@zygorguides.com",
},[[
step
map Loch Modan/0
path follow smart; loop on; ants straight; dist 30
path	56.98,15.26	61.49,21.17	68.60,23.19	70.65,22.23	72.67,25.79
path	77.21,30.71	72.97,37.47	71.59,38.08	67.26,38.34	68.83,40.71
path	73.59,41.67	77.00,42.54	74.86,47.01	74.63,52.50	75.68,64.15
path	75.06,66.38	77.51,66.56	78.64,71.51	76.44,72.20	70.89,71.61
path	68.52,73.74	64.48,71.81	57.98,66.30	61.67,57.11	64.07,54.51
path	69.60,51.49	67.50,48.59	63.83,43.43	65.43,41.83	62.71,39.61
path	61.89,36.89	60.66,33.83	61.31,30.01	55.32,26.14	50.10,21.67
Click herbs as you follow the path around this area
|tip Briarthorn can share a spawn with other herbs in the area, so pick them all.
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 70 Herbalism skill to gather these.
collect Briarthorn##2450 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Swiftthistle",{
author="support@zygorguides.com",
},[[
step
map Loch Modan/0
path follow smart; loop on; ants straight; dist 30
path	56.98,15.26	61.49,21.17	68.60,23.19	70.65,22.23	72.67,25.79
path	77.21,30.71	72.97,37.47	71.59,38.08	67.26,38.34	68.83,40.71
path	73.59,41.67	77.00,42.54	74.86,47.01	74.63,52.50	75.68,64.15
path	75.06,66.38	77.51,66.56	78.64,71.51	76.44,72.20	70.89,71.61
path	68.52,73.74	64.48,71.81	57.98,66.30	61.67,57.11	64.07,54.51
path	69.60,51.49	67.50,48.59	63.83,43.43	65.43,41.83	62.71,39.61
path	61.89,36.89	60.66,33.83	61.31,30.01	55.32,26.14	50.10,21.67
Click herbs as you follow the path around this area
|tip Briarthorn can share a spawn with other herbs in the area, so pick them all.
|tip Swiftthistle has a chance to be gathered from Briarthorn and Mageroyal.
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 70 Herbalism skill to gather these.
collect Swiftthistle##2452 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Bruiseweed",{
author="support@zygorguides.com",
},[[
step
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
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Wild Steelbloom",{
author="support@zygorguides.com",
},[[
step
map Stranglethorn Vale
path follow smart; loop on; ants curved; dist 20
path	35.19,24.89	34.15,16.96	32.35,17.29	29.81,16.22	28.04,17.47
path	25.80,17.04	23.47,14.43	23.84,13.79	26.85,13.53	26.47,10.74
path	26.96,10.08	26.83,8.41	28.93,7.53	31.07,9.11	33.66,7.50
path	35.36,6.91	37.47,8.17	40.26,7.17	42.31,8.80	43.43,9.07
path	44.02,6.96	46.87,7.20	49.23,10.26	46.15,12.93	46.18,15.78
path	48.55,20.93	49.87,26.32	48.46,42.77	46.45,44.95	42.29,44.37
path	39.61,44.79	38.13,35.79
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 115 Herbalism skill to gather these.
collect Wild Steelbloom##3355 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Kingsblood",{
author="support@zygorguides.com",
},[[
step
map Western Plaguelands/0
path follow smart; loop on; ants curved; dist 60
path	31.87,59.33	36.90,57.16	43.53,53.27	45.91,44.70	45.21,35.23
path	49.51,35.12	51.02,47.42	55.22,51.34	61.82,52.02	67.25,44.52
path	63.60,56.06	56.61,60.11	52.61,67.55	46.40,59.23	37.91,62.21
path	33.73,62.71
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 170 Herbalism skill to gather these.
collect Kingsblood##3356 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Goldthorn",{
author="support@zygorguides.com",
},[[
step
map Northern Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	63.96,65.99	63.05,62.20	64.55,58.27	64.12,55.92	63.70,52.51
path	62.57,49.88	60.62,47.74	61.76,38.56	62.39,32.52	61.21,28.17
path	58.78,27.10	55.91,28.12	53.10,25.81	42.45,23.59	39.65,21.95
path	37.94,21.19	36.23,21.95	33.54,25.55	30.98,30.62	35.70,35.18
path	35.17,41.49	37.05,44.46	40.60,46.24	48.49,45.42	51.70,48.76
path	54.08,48.34	54.17,57.96	55.21,62.17	57.42,61.55	59.86,63.63
path	63.26,66.36	61.63,61.17	59.25,58.85	59.51,51.62
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 170 Herbalism skill to gather these.
collect Goldthorn##3821 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Khadgar's Whisker",{
author="support@zygorguides.com",
},[[
step
map Western Plaguelands/0
path follow smart; loop on; ants curved; dist 60
path	31.87,59.33	36.90,57.16	43.53,53.27	45.91,44.70	45.21,35.23
path	49.51,35.12	51.02,47.42	55.22,51.34	61.82,52.02	67.25,44.52
path	63.60,56.06	56.61,60.11	52.61,67.55	46.40,59.23	37.91,62.21
path	33.73,62.71
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 185 Herbalism skill to gather these.
collect Khadgar's Whisker##3358 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Dragon's Teeth",{
author="support@zygorguides.com",
},[[
step
map Badlands/0
path follow smart; loop on; ants straight; dist 30
path	26.15,60.42	31.32,53.08	36.97,46.77	40.47,44.60	37.57,50.16
path	35.91,53.69	30.91,59.25	27.43,60.93
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 195 Herbalism skill to gather these.
collect Dragon's Teeth##3819 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Firebloom",{
author="support@zygorguides.com",
},[[
step
map Searing Gorge/0
path follow smart; loop on; ants curved
path	66.96,42.21	64.77,45.07	62.15,45.87	60.53,49.35	59.31,53.04
path	56.48,61.80	55.17,68.25	49.61,67.64	44.84,70.37	40.79,73.38
path	36.75,73.46	31.44,67.49	31.13,59.44	28.96,55.58	27.38,50.10
path	29.56,44.58	31.72,41.24	35.79,45.59	38.99,42.72	43.55,41.63
path	46.74,42.22	51.97,39.92	57.25,36.61	60.63,34.56	64.32,33.64
path	68.22,35.32
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 205 Herbalism skill to gather these.
collect Firebloom##4625 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Purple Lotus",{
author="support@zygorguides.com",
},[[
step
label "Start_Path"
Search the area |goto Felwood/0 57.68,85.44 < 20 |c
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect Purple Lotus##8831 |n
step
Search the area |goto 56.28,84.52 < 20 |c
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect Purple Lotus##8831 |n
step
Search the area |goto 39.19,69.90 < 20 |c
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect Purple Lotus##8831 |n
step
Search the area |goto 37.46,68.04 < 20 |c
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect Purple Lotus##8831 |n
step
Search the area |goto 37.51,65.66 < 20 |c
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect Purple Lotus##8831 |n
step
Search the area |goto 39.7,45.1 < 20 |c
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect Purple Lotus##8831 |n
step
Search the area |goto 42.6,36.2 < 20 |c
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect Purple Lotus##8831 |n
step
Search the area |goto 49.60,31.52 < 20 |c
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect Purple Lotus##8831 |n
step
Search the area |goto 49.08,30.02 < 20 |c |next "Start_Path"
click Purple Lotus##142140+
|tip They spawn near the pillars in this area.
|tip This herb has a limited spawn, so if someone else is gathering, it may not be easy to collect.
collect Purple Lotus##8831 |n
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Sungrass",{
author="support@zygorguides.com",
},[[
step
map Searing Gorge/0
path follow smart; loop on; ants curved
path	66.96,42.21	64.77,45.07	62.15,45.87	60.53,49.35	59.31,53.04
path	56.48,61.80	55.17,68.25	49.61,67.64	44.84,70.37	40.79,73.38
path	36.75,73.46	31.44,67.49	31.13,59.44	28.96,55.58	27.38,50.10
path	29.56,44.58	31.72,41.24	35.79,45.59	38.99,42.72	43.55,41.63
path	46.74,42.22	51.97,39.92	57.25,36.61	60.63,34.56	64.32,33.64
path	68.22,35.32
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 230 Herbalism skill to gather these.
collect Sungrass##8838 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Gromsblood",{
author="support@zygorguides.com",
},[[
step
map Felwood/0
path follow smart; loop on; ants curved
path	48.25,74.18	45.57,71.52	45.19,67.93	44.99,64.81	43.75,63.75
path	42.60,61.94	42.10,60.44	42.52,58.39	42.19,55.80	42.12,53.77
path	42.52,51.99	42.46,49.04	43.22,46.66	42.28,45.26	43.25,43.10
path	44.86,43.11	46.09,41.05	45.72,36.88	46.03,33.95	47.65,33.39
path	51.14,32.99	51.89,29.81	53.84,27.92	55.31,24.24	55.39,22.27
path	56.09,21.01	57.54,18.62	56.84,16.17	55.09,15.09	53.16,14.49
path	50.54,15.11	49.43,15.94	47.64,18.21	46.30,21.16	45.98,22.93
path	43.76,23.67	42.49,24.58	40.74,26.31	41.42,27.63	41.25,30.12
path	40.28,31.55	39.63,32.74	40.28,34.49	39.88,36.76	39.02,41.56
path	38.95,44.99	40.65,46.99	39.91,49.88	39.07,53.19	38.83,55.66
path	39.72,58.29	41.23,59.18	41.60,60.63	42.10,62.62	41.71,64.52
path	40.58,65.26	40.40,68.00	39.31,70.23	39.26,71.58	41.53,72.75
path	41.89,74.07	40.92,76.49	41.72,78.38	43.01,80.29	44.69,81.19
path	45.84,83.32	47.74,82.92	49.87,80.73
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 250 Herbalism skill to gather these.
collect Gromsblood##8846 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Golden Sansam",{
author="support@zygorguides.com",
},[[
step
map Swamp of Sorrows/0
path follow smart; loop on; ants curved; dist 60
path	17.62,52.92	21.60,54.68	30.93,60.71	39.41,56.93	51.73,59.62
path	64.51,67.32	73.31,81.92	82.02,76.03	85.30,62.66	87.62,39.95
path	84.93,31.21	80.12,20.61	66.51,22.72	56.81,31.92	47.01,36.01
path	36.11,39.86	26.93,42.92
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 260 Herbalism skill to gather these.
collect Golden Sansam##13464 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Dreamfoil",{
author="support@zygorguides.com",
},[[
step
map Felwood/0
path follow smart; loop on; ants curved
path	48.25,74.18	45.57,71.52	45.19,67.93	44.99,64.81	43.75,63.75
path	42.60,61.94	42.10,60.44	42.52,58.39	42.19,55.80	42.12,53.77
path	42.52,51.99	42.46,49.04	43.22,46.66	42.28,45.26	43.25,43.10
path	44.86,43.11	46.09,41.05	45.72,36.88	46.03,33.95	47.65,33.39
path	51.14,32.99	51.89,29.81	53.84,27.92	55.31,24.24	55.39,22.27
path	56.09,21.01	57.54,18.62	56.84,16.17	55.09,15.09	53.16,14.49
path	50.54,15.11	49.43,15.94	47.64,18.21	46.30,21.16	45.98,22.93
path	43.76,23.67	42.49,24.58	40.74,26.31	41.42,27.63	41.25,30.12
path	40.28,31.55	39.63,32.74	40.28,34.49	39.88,36.76	39.02,41.56
path	38.95,44.99	40.65,46.99	39.91,49.88	39.07,53.19	38.83,55.66
path	39.72,58.29	41.23,59.18	41.60,60.63	42.10,62.62	41.71,64.52
path	40.58,65.26	40.40,68.00	39.31,70.23	39.26,71.58	41.53,72.75
path	41.89,74.07	40.92,76.49	41.72,78.38	43.01,80.29	44.69,81.19
path	45.84,83.32	47.74,82.92	49.87,80.73
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 270 Herbalism skill to gather these.
collect Dreamfoil##13463 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Sorrowbloom",{
author="support@zygorguides.com",
},[[
step
map Swamp of Sorrows/0
path follow smart; loop on; ants curved
path	79.43,23.24	80.24,29.00	82.21,34.79	82.97,38.90	78.73,41.57
path	73.59,37.34	72.42,28.75	70.52,27.66	68.03,29.89	64.63,31.51
path	60.85,35.55	62.39,40.76	61.54,47.25	60.82,53.13	61.60,58.25
path	64.65,62.71	68.42,64.96	70.44,64.80	74.33,64.93	77.84,60.88
path	81.94,61.08	86.01,64.26	84.08,70.58	81.74,75.79	78.79,76.80
path	75.71,77.78	72.47,78.28	69.87,74.91	67.39,73.78	64.65,67.59
path	62.31,64.70	57.94,61.25	53.18,57.17	52.23,52.27	51.62,48.12
path	47.97,46.03	44.54,47.68	42.03,51.93	39.10,57.14	36.33,58.75
path	32.35,58.59	27.32,55.05	24.51,50.78	23.21,46.57	26.76,41.34
path	30.64,39.58	33.75,38.86	37.68,40.21	41.52,38.80	45.01,37.32
path	49.19,35.80	54.20,35.02	56.53,34.96	60.47,27.47	62.18,25.26
path	65.76,20.96	68.69,20.85
Click herbs as you follow the path around this area
|tip Track them on your minimap with "Find Herbs".
|tip You will need at least 285 Herbalism skill to gather these.
collect Sorrowbloom##13466 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Inscription\\Inscription (1-525)",{
author="support@zygorguides.com",
condition_suggested=function() return skill("Inscription") > 0 and skill("Inscription") < 525 end,
description="This guide will walk you through leveling your Inscription skill from 1-525.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
talk Catarina Stanford##30713
|tip Inside the building.
Train Apprentice Inscription |skillmax Inscription,75 |goto Stormwind City/0 49.82,74.82
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Classic-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Inscription |confirm |next "Begin_Profession_Leveling_Classic" |or
'|complete skill("Inscription") >= 300 |or |next "Begin_Profession_Leveling_Classic"
stickystart "Collect_Dusky_Pigment_Total"
stickystart "Collect_Golden_Pigment_Total"
stickystart "Collect_Emerald_Pigment_Total"
stickystart "Collect_Violet_Pigment_Total"
stickystart "Collect_Silvery_Pigment_Total"
step
map Elwynn Forest/0
path follow smart; loop on; ants curved; dist 20
path	35.16,58.15	35.80,61.90	34.96,66.91	35.08,70.72	34.97,74.55
path	31.26,76.29	29.39,72.28	26.34,77.16	26.78,84.53	26.01,88.87
path	28.95,85.90	31.32,84.53	34.00,86.31	35.63,87.61	40.33,90.30
path	42.44,85.05	42.33,79.53	44.78,75.63	57.19,75.30	61.71,78.02
path	64.64,80.21	66.96,82.28	71.53,82.34	74.86,79.96	85.15,82.86
path	88.50,76.38	87.13,70.90	86.64,64.81	83.70,60.88	78.23,58.27
path	74.68,59.68	70.59,61.28	67.25,64.47	63.72,65.35	60.60,62.03
path	56.21,61.31	51.67,60.44	49.08,59.49	44.65,55.81	42.02,54.40
path	39.16,55.56
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
'|complete skill("Inscription") >= 53 |or
step
label "Collect_Dusky_Pigment_Total"
map Loch Modan/0
path follow smart; loop on; ants straight; dist 30
path	41.50,13.82	45.48,20.65	47.42,23.92	47.07,28.70	50.19,31.13
path	55.12,27.07	56.72,20.58	58.43,20.04	60.23,24.41	62.23,26.69
path	55.76,35.39	53.76,40.36	58.01,40.64	61.62,44.81	64.15,46.10
path	66.55,47.59	67.58,50.15	66.06,55.14	64.09,57.07	60.35,52.90
path	54.46,52.08	55.15,59.94	54.00,65.69	49.60,61.93	47.74,59.21
path	45.43,55.43	37.73,46.14	39.69,43.10	40.83,33.03
click Mageroyal##1620+ |notinsticky
|tip They look like bushy pink flowers on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 42 Dusky Pigment##39334 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house. |notinsticky
|tip Dusky Pigment can be Milled from Briarthorn, Bruiseweed, Mageroyal, Stranglekelp, and Swiftthistle. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Inscription") >= 80 |or
step
label "Collect_Golden_Pigment_Total"
map Western Plaguelands/0
path follow smart; loop on; ants curved; dist 60
path	31.87,59.33	36.90,57.16	43.53,53.27	45.91,44.70	45.21,35.23
path	49.51,35.12	51.02,47.42	55.22,51.34	61.82,52.02	67.25,44.52
path	63.60,56.06	56.61,60.11	52.61,67.55	46.40,59.23	37.91,62.21
path	33.73,62.71
click Kingsblood##1624+ |notinsticky
|tip They look like bushy purple, pink, and green plants on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 80 Golden Pigment##39338 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house. |notinsticky
|tip Golden Pigment can be Milled from Grave Moss, Kingsblood, Liferoot, and Wild Steelbloom. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Inscription") >= 105 |or
step
label "Collect_Emerald_Pigment_Total"
map Western Plaguelands/0
path follow smart; loop on; ants curved; dist 60
path	31.87,59.33	36.90,57.16	43.53,53.27	45.91,44.70	45.21,35.23
path	49.51,35.12	51.02,47.42	55.22,51.34	61.82,52.02	67.25,44.52
path	63.60,56.06	56.61,60.11	52.61,67.55	46.40,59.23	37.91,62.21
path	33.73,62.71
click Khadgar's Whisker##2043+ |notinsticky
|tip They look like clumps of gold and green grass on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 94 Emerald Pigment##39339 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house. |notinsticky
|tip Emerald Pigment can be Milled from Fadeleaf, Goldthorn, Khadgar's Whisker, and Wintersbite. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Inscription") >= 155 |or
step
label "Collect_Violet_Pigment_Total"
map Felwood/0
path follow smart; loop on; ants curved; dist 30
path	48.25,74.18	45.57,71.52	45.19,67.93	44.99,64.81	43.75,63.75
path	42.60,61.94	42.10,60.44	42.52,58.39	42.19,55.80	42.12,53.77
path	42.52,51.99	42.46,49.04	43.22,46.66	42.28,45.26	43.25,43.10
path	44.86,43.11	46.09,41.05	45.72,36.88	46.03,33.95	47.65,33.39
path	51.14,32.99	51.89,29.81	53.84,27.92	55.31,24.24	55.39,22.27
path	45.98,22.93 52.60,22.73 51.41,24.65 50.01,21.04 46.67,25.21
path	43.76,23.67	42.49,24.58	40.74,26.31	41.42,27.63	41.25,30.12
path	40.28,31.55	39.63,32.74	40.28,34.49	39.88,36.76	39.02,41.56
path	38.95,44.99	40.65,46.99	39.91,49.88	39.07,53.19	38.83,55.66
path	39.72,58.29	41.23,59.18	41.60,60.63	42.10,62.62	41.71,64.52
path	40.58,65.26	40.40,68.00	39.31,70.23	39.26,71.58	41.53,72.75
path	41.89,74.07	40.92,76.49	41.72,78.38	43.01,80.29	44.69,81.19
path	45.84,83.32	47.74,82.92	49.87,80.73
click Gromsblood##142145+ |notinsticky
|tip They look like purple and green weeds on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
|tip You will need level 250 Herbalism to gather these. |notinsticky
collect 110 Violet Pigment##39340 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house. |notinsticky
|tip Violet Pigment can be Milled from Blindweed, Firebloom, Ghost Mushroom, Gromsblood, Purple Lotus, and Sungrass. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Inscription") >= 205 |or
step
label "Collect_Silvery_Pigment_Total"
map Winterspring/0
path follow smart; loop on; ants straight; dist 30
path	22.42,57.71	22.19,61.90	24.41,62.07	25.90,57.83	28.15,57.73
path	30.01,58.79	33.34,59.63	36.12,58.61	37.72,57.57	41.87,53.30
path	42.37,56.65	47.15,60.90	49.65,58.66	52.13,58.02	53.47,63.96
path	53.44,67.10	55.13,69.75	55.67,73.09	55.70,76.15	57.96,75.83
path	60.19,72.78	61.19,69.92	61.14,67.07	61.38,62.85	62.74,61.72
path	65.10,60.73	67.03,61.17	67.14,57.10	66.70,52.77	65.40,50.58
path	63.77,49.22	65.55,45.93	68.20,45.58	68.56,43.10	67.70,40.22
path	67.74,37.68	66.91,35.23	67.08,32.77	66.70,30.51	65.97,26.46
path	64.59,29.09	62.41,31.24	60.89,31.57	59.82,29.78	58.81,27.51
path	59.22,24.40	59.88,22.11	57.63,18.43	54.82,19.50	52.66,18.83
path	49.90,18.51	48.92,14.84	46.77,13.89	44.89,14.63	44.82,16.63
path	44.90,19.96	44.89,22.91	45.39,25.33	46.78,29.13	47.65,32.26
path	47.37,33.81	48.66,37.63	48.80,42.57	48.06,44.53	44.26,47.48
path	42.29,46.73	40.02,46.26	38.31,45.75	35.60,47.41	31.24,47.64
path	27.43,47.39	25.05,46.58
click Icecap##176588+ |notinsticky
|tip They look like plants topped with white balls on the ground along the path. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
|tip You will need level 290 Herbalism to gather these. |notinsticky
collect 120 Silvery Pigment##39341 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house. |notinsticky
|tip Silvery Pigment can be Milled from Dreamfoil, Golden Sansam, Icecap, Mountain Silversage, and Plaguebloom. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip If you receive Sapphire Pigment from Milling, you will need less of these. |notinsticky
'|complete skill("Inscription") >= 255 |or
step
label "Begin_Profession_Leveling_Classic"
map Elwynn Forest/0
path follow smart; loop on; ants curved; dist 20
path	35.16,58.15	35.80,61.90	34.96,66.91	35.08,70.72	34.97,74.55
path	31.26,76.29	29.39,72.28	26.34,77.16	26.78,84.53	26.01,88.87
path	28.95,85.90	31.32,84.53	34.00,86.31	35.63,87.61	40.33,90.30
path	42.44,85.05	42.33,79.53	44.78,75.63	57.19,75.30	61.71,78.02
path	64.64,80.21	66.96,82.28	71.53,82.34	74.86,79.96	85.15,82.86
path	88.50,76.38	87.13,70.90	86.64,64.81	83.70,60.88	78.23,58.27
path	74.68,59.68	70.59,61.28	67.25,64.47	63.72,65.35	60.60,62.03
path	56.21,61.31	51.67,60.44	49.08,59.49	44.65,55.81	42.02,54.40
path	39.16,55.56
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
talk Stanly McCormick##30730
|tip Inside the building.
buy 1 Virtuoso Inking Set##39505 |goto Stormwind City/0 49.57,74.94 |or
'|complete skill("Inscription") >= 19 |or
step
talk Catarina Stanford##30713
|tip Inside the building.
Train Ivory Ink |learn Ivory Ink##52738 |goto Stormwind City/0 49.82,74.82
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
talk Stanly McCormick##30730
buy 16 Light Parchment##39354 |goto Stormwind City/0 49.57,74.94 |or
'|complete skill("Inscription") >= 35 |or
step
talk Catarina Stanford##30713
|tip Inside the building.
Train Scroll of Stamina |learn Scroll of Stamina##45382 |goto Stormwind City/0 49.82,74.82
step
create 16 Scroll of Stamina##45382,Inscription,35
|tip You may need to create more or less of these.
|tip Each additional Scroll of Stamina requires 1 Ivory Ink and 1 Light Parchment.
step
collect 44 Alabaster Pigment##39151 |or
|tip You collected these in a previous step.
'|complete skill("Inscription") >= 53 |or
step
talk Catarina Stanford##30713
|tip Inside the building.
Train Moonglow Ink |learn Moonglow Ink##52843 |goto Stormwind City/0 49.82,74.82
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
talk Stanly McCormick##30730
buy 44 Light Parchment##39354 |goto Stormwind City/0 49.57,74.94 |or
'|complete skill("Inscription") >= 75 |or
step
talk Catarina Stanford##30713
|tip Inside the building.
Train Armor Vellum |learn Armor Vellum##52739 |goto Stormwind City/0 49.82,74.82
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
talk Catarina Stanford##30713
|tip Inside the building.
Train Journeyman Inscription |skillmax Inscription,150 |goto Stormwind City/0 49.82,74.82
step
talk Catarina Stanford##30713
|tip Inside the building.
Train Midnight Ink |learn Midnight Ink##53462 |goto Stormwind City/0 49.82,74.82
step
map Loch Modan/0
path follow smart; loop on; ants straight; dist 30
path	41.50,13.82	45.48,20.65	47.42,23.92	47.07,28.70	50.19,31.13
path	55.12,27.07	56.72,20.58	58.43,20.04	60.23,24.41	62.23,26.69
path	55.76,35.39	53.76,40.36	58.01,40.64	61.62,44.81	64.15,46.10
path	66.55,47.59	67.58,50.15	66.06,55.14	64.09,57.07	60.35,52.90
path	54.46,52.08	55.15,59.94	54.00,65.69	49.60,61.93	47.74,59.21
path	45.43,55.43	37.73,46.14	39.69,43.10	40.83,33.03
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
talk Stanly McCormick##30730
buy 20 Light Parchment##39354 |goto Stormwind City/0 49.57,74.94 |or
'|complete skill("Inscription") >= 100 |or
step
_<Create any orange-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 20 points, continue training new orange-difficulty glyphs as you gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is orange.
Reach 100 Inscription Skill |skill Inscription,100
step
map Western Plaguelands/0
path follow smart; loop on; ants curved; dist 60
path	31.87,59.33	36.90,57.16	43.53,53.27	45.91,44.70	45.21,35.23
path	49.51,35.12	51.02,47.42	55.22,51.34	61.82,52.02	67.25,44.52
path	63.60,56.06	56.61,60.11	52.61,67.55	46.40,59.23	37.91,62.21
path	33.73,62.71
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
talk Catarina Stanford##30713
|tip Inside the building.
Train Lion's Ink |learn Lion's Ink##57704 |goto Stormwind City/0 49.82,74.82
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
talk Stanly McCormick##30730
buy 20 Common Parchment##10648 |goto Stormwind City/0 49.57,74.94 |or
'|complete skill("Inscription") >= 125 |or
step
_<Create any orange-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 20 points, continue training new orange-difficulty glyphs as you gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is orange.
Reach 125 Inscription Skill |skill Inscription,125
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Catarina Stanford##30713
|tip Inside the building.
Train Expert Inscription |skillmax Inscription,225 |goto Stormwind City/0 49.82,74.82
|tip Also train any orange-difficulty glyphs you would like to make.
step
_<Create any orange-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 20 points, continue training new orange-difficulty glyphs as you gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is orange.
Reach 130 Inscription Skill |skill Inscription,130
|tip If you have any Burnt Pigment, you can turn it into Dawnstar Ink for points first.
step
collect 17 Lion's Ink##43116 |or
|tip You collected these in a previous step.
'|complete skill("Inscription") >= 147 |or
step
talk Stanly McCormick##30730
buy 17 Common Parchment##10648 |goto Stormwind City/0 49.57,74.94 |or
'|complete skill("Inscription") >= 147 |or
step
_<Create any orange-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 17 points, continue training new orange-difficulty glyphs as you gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is orange.
Reach 147 Inscription Skill |skill Inscription,147
step
_<Create any orange-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 17 points, continue training new orange-difficulty glyphs as you gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is orange.
Reach 150 Inscription Skill |skill Inscription,150
|tip If you made Dawnstar Ink, make Strange Tarot cards instead.
step
label "Collect_Emerald_Pigment_155"
map Western Plaguelands/0
path follow smart; loop on; ants curved; dist 60
path	31.87,59.33	36.90,57.16	43.53,53.27	45.91,44.70	45.21,35.23
path	49.51,35.12	51.02,47.42	55.22,51.34	61.82,52.02	67.25,44.52
path	63.60,56.06	56.61,60.11	52.61,67.55	46.40,59.23	37.91,62.21
path	33.73,62.71
click Khadgar's Whisker##2043+
|tip They look like clumps of gold and green grass on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 94 Emerald Pigment##39339 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Emerald Pigment can be Milled from Fadeleaf, Goldthorn, Khadgar's Whisker, and Wintersbite.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Inscription") >= 155
step
talk Catarina Stanford##30713
|tip Inside the building.
Train Jadefire Ink |learn Jadefire Ink##57707 |goto Stormwind City/0 49.82,74.82
step
create 47 Jadefire Ink##57707,Inscription,47 total
|tip Save these, you will need them for future steps.
step
create 1 Jadefire Ink##57707,Inscription,155
|tip You may need to create more or less of these.
|tip Each additional Jadefire Ink requires 2 Emerald Pigment.
step
collect 40 Jadefire Ink##43118 |or
|tip You collected these in a previous step.
'|complete skill("Inscription") >= 195 |or
step
talk Stanly McCormick##30730
buy 40 Common Parchment##10648 |goto Stormwind City/0 49.57,74.94 |or
'|complete skill("Inscription") >= 195 |or
step
_<Create any orange-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 40 points, continue training new orange-difficulty glyphs as you gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is orange.
Reach 195 Inscription Skill |skill Inscription,195
|tip At skill 175, stop and convert Indigo Pigment into Royal Ink if you have any.
step
_<Create any yellow-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 5 points, continue creating yellow-difficulty glyphs to gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is yellow.
Reach 200 Inscription Skill |skill Inscription,200
|tip If you made Indigo Pigment, make Arcane Tarot cards instead.
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
talk Catarina Stanford##30713
|tip Inside the building.
Train Artisan Inscription |skillmax Inscription,300 |goto Stormwind City/0 49.82,74.82
step
talk Catarina Stanford##30713
|tip Inside the building.
Train Celestial Ink |learn Celestial Ink##57709 |goto Stormwind City/0 49.82,74.82
step
map Felwood/0
path follow smart; loop on; ants curved
path	48.25,74.18	45.57,71.52	45.19,67.93	44.99,64.81	43.75,63.75
path	42.60,61.94	42.10,60.44	42.52,58.39	42.19,55.80	42.12,53.77
path	42.52,51.99	42.46,49.04	43.22,46.66	42.28,45.26	43.25,43.10
path	44.86,43.11	46.09,41.05	45.72,36.88	46.03,33.95	47.65,33.39
path	51.14,32.99	51.89,29.81	53.84,27.92	55.31,24.24	55.39,22.27
path	56.09,21.01	57.54,18.62	56.84,16.17	55.09,15.09	53.16,14.49
path	50.54,15.11	49.43,15.94	47.64,18.21	46.30,21.16	45.98,22.93
path	43.76,23.67	42.49,24.58	40.74,26.31	41.42,27.63	41.25,30.12
path	40.28,31.55	39.63,32.74	40.28,34.49	39.88,36.76	39.02,41.56
path	38.95,44.99	40.65,46.99	39.91,49.88	39.07,53.19	38.83,55.66
path	39.72,58.29	41.23,59.18	41.60,60.63	42.10,62.62	41.71,64.52
path	40.58,65.26	40.40,68.00	39.31,70.23	39.26,71.58	41.53,72.75
path	41.89,74.07	40.92,76.49	41.72,78.38	43.01,80.29	44.69,81.19
path	45.84,83.32	47.74,82.92	49.87,80.73
click Gromsblood##142145+
|tip They look like purple and green weeds on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
|tip You will need level 250 Herbalism to gather these.
collect 110 Violet Pigment##39340 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Violet Pigment can be Milled from Blindweed, Firebloom, Ghost Mushroom, Gromsblood, Purple Lotus, and Sungrass.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Inscription") >= 205 |or
step
create 55 Celestial Ink##57709,Inscription,55 total
|tip Save these, you will need them for future steps.
step
create 1 Celestial Ink##57709,Inscription,205
|tip You may need to create more or less of these.
|tip Each additional Celestial Ink requires 2 Violet Pigment.
step
collect 40 Celestial Ink##43120 |or
|tip You collected these in a previous step.
'|complete skill("Inscription") >= 245 |or
step
talk Stanly McCormick##30730
buy 40 Heavy Parchment##39501 |goto Stormwind City/0 49.57,74.94 |or
'|complete skill("Inscription") >= 245 |or
step
_<Create any orange-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 40 points, continue training new orange-difficulty glyphs as you gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is orange.
Reach 245 Inscription Skill |skill Inscription,245
|tip At skill 225, stop and convert Ruby Pigment into Fiery Ink if you have any.
step
_<Create any yellow-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 5 points, continue creating yellow-difficulty glyphs to gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is yellow.
Reach 250 Inscription Skill |skill Inscription,250
|tip If you made Ruby Pigment, make Weapon Vellum II instead.
step
map Winterspring
path follow smart; loop on; ants curved; dist 20
path	51.15,36.38	49.02,37.97	47.29,38.82	46.26,37.85	44.98,36.98
path	43.34,37.35	42.00,36.66	40.04,36.95	37.55,36.29	37.03,38.50
path	37.04,40.67	36.22,41.42	34.89,40.49	32.81,37.93	31.53,36.07
path	29.97,36.02	29.97,39.23	29.90,42.23	30.63,44.36	31.61,44.78
path	32.31,44.29	34.16,43.86	34.79,42.97	35.73,43.41	36.55,44.20
path	37.95,44.18	40.05,43.83	41.97,43.60	43.29,44.09	44.44,42.87
path	45.25,41.37	45.82,40.53	46.38,39.95	47.29,40.48	48.43,42.60
path	49.89,44.73	50.67,45.63	52.44,46.41	53.08,44.56	53.42,43.72
path	55.09,43.38	56.62,42.13	57.86,40.63	58.81,39.07	58.04,36.73
path	56.38,36.22	54.08,33.77
click Icecap##176588+
|tip They look like plants topped with white balls on the ground along the path.
|tip Track them on your minimap with "Find Herbs".
|tip You will need level 290 Herbalism to gather these.
collect 130 Silvery Pigment##39341 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Silvery Pigment can be Milled from Dreamfoil, Golden Sansam, Icecap, Mountain Silversage, and Plaguebloom.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip If you receive Sapphire Pigment from Milling, you will around 30 fewer.
'|complete skill("Inscription") >= 255 |or
step
talk Catarina Stanford##30713
|tip Inside the building.
Train Shimmering Ink |learn Shimmering Ink##57711 |goto Stormwind City/0 49.82,74.82
step
create 65 Shimmering Ink##57711,Inscription,65 total
|tip Save these, you will need them for future steps.
|tip If you receive Sapphire Pigment from Milling, you will around 15 fewer.
step
create 1 Shimmering Ink##57711,Inscription,255
|tip You may need to create more or less of these.
|tip Each additional Shimmering Ink requires 2 Violet Pigment.
|tip If you receive Sapphire Pigment from Milling, you will around 15 fewer.
step
collect 5 Shimmering Ink##43122 |or
|tip You collected these in a previous step.
'|complete skill("Inscription") >= 260 |or
step
talk Stanly McCormick##30730
buy 10 Heavy Parchment##39501 |goto Stormwind City/0 49.57,74.94 |or
'|complete skill("Inscription") >= 260 |or
step
talk Catarina Stanford##30713
|tip Inside the building.
Train Scroll of Spirit V |learn Scroll of Spirit V##50608 |goto Stormwind City/0 49.82,74.82
step
create 5 Scroll of Spirit V##50608,Inscription,265
step
collect 60 Shimmering Ink##43122 |or
|tip You collected these in a previous step.
|tip If you receive Sapphire Pigment from Milling, you will around 15 fewer.
'|complete skill("Inscription") >= 290 |or
step
talk Stanly McCormick##30730
buy 60 Heavy Parchment##39501 |goto Stormwind City/0 49.57,74.94 |or
|tip If you receive Sapphire Pigment from Milling, you will around 15 fewer.
'|complete skill("Inscription") >= 290 |or
step
_<Create any orange-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 25 points, continue training new orange-difficulty glyphs as you gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is orange.
Reach 290 Inscription Skill |skill Inscription,290
|tip At skill 275, stop and convert Sapphire Pigment into Ink of the Sky if you have any.
step
Reach Level 58 |ding 58
|tip You must be at least level 58 to train Master professions in Outland.
|tip Use the leveling guides to accomplish this.
step
talk Michael Schwan##30721
|tip Inside the building.
Train Master Inscription |skillmax Inscription,375 |goto Hellfire Peninsula/0 54.0,65.6
step
talk Michael Schwan##30721
|tip Inside the building.
Train Ethereal Ink |learn Ethereal Ink##57713 |goto Hellfire Peninsula/0 54.0,65.6
step
map Terokkar Forest/0
path follow smart; loop on; ants curved
path	31.60,45.71	32.29,42.68	32.86,38.44	32.61,35.72	34.85,34.70
path	36.60,32.54	36.98,30.09	38.61,28.59	39.20,26.76	40.64,25.10
path	41.40,22.16	43.06,19.91	43.81,17.68	43.32,15.01	43.95,12.48
path	45.94,12.75	48.58,14.35	50.45,17.02	49.36,20.09	49.79,22.32
path	50.98,24.83	53.08,25.59	55.63,25.32	58.26,25.33	59.93,23.87
path	61.12,26.59	62.13,28.15	63.46,29.60	65.02,31.32	67.13,31.63
path	69.82,31.74	69.61,35.63	68.73,39.39	69.79,42.02	70.46,45.89
path	70.51,48.71	68.94,53.17	68.11,54.89	65.38,54.27	63.87,51.31
path	61.59,50.51	59.04,49.28	56.48,46.30	53.96,42.43	54.33,38.20
path	53.25,35.66	50.24,35.67	48.92,34.53	46.58,34.04	43.68,34.49
path	40.40,35.76	38.35,36.51	36.62,38.18	36.01,39.93	36.50,42.94
path	35.72,43.53	33.66,44.98
click Felweed##181270+
|tip They look like small white flowers on the ground along the path.
|tip You will need level 300 Herbalism to gather these.
click Dreaming Glory##181271+
|tip They look like bushy blue and green plants on the ground along the path.
|tip You will need level 315 Herbalism to gather these.
|tip Track them on your minimap with "Find Herbs".
collect 90 Nether Pigment##39342 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Nether Pigment can be Milled from any Outland herb.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Inscription") >= 305 |or
step
create 45 Ethereal Ink##57713,Inscription,45 total
|tip Save these, you will need them for future steps.
step
create 1 Ethereal Ink##57713,Inscription,305
|tip You may need to create more or less of these.
|tip Each additional Ethereal Ink requires 2 Nether Pigment.
step
collect 45 Ethereal Ink##43124 |or
|tip You collected these in a previous step.
'|complete skill("Inscription") >= 350 |or
step
talk Jezebel Bican##30734
|tip Inside the building.
buy 45 Resilient Parchment##39502 |goto Hellfire Peninsula/0 54.0,65.4 |or
'|complete skill("Inscription") >= 350 |or
step
_<Create any orange-difficulty glyphs>_
|tip Train the glyphs of your choosing from the trainer.
|tip For the next 45 points, continue training new orange-difficulty glyphs as you gain points.
|tip Open your Inscription panel and create any trained glyph of your choice that is orange.
Reach 350 Inscription Skill |skill Inscription,350
step
Reach Level 68 |ding 68
|tip You must be at least level 68 to train Grand Master professions in Northrend.
|tip Use the leveling guides to accomplish this.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Lich King-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Inscription |confirm |next "Begin_Profession_Leveling_Northrend" |or
'|complete skill("Inscription") >= 450 |or |next "Begin_Profession_Leveling_Northrend"
stickystart "Colelct_Azure_Pigment_Total"
step
map The Storm Peaks/0
path follow smart; loop on; ants curved; dist 30
path	40.48,84.72	38.66,87.17	37.60,88.31	36.46,88.65	35.02,88.40
path	33.04,87.96	32.36,87.32	31.15,86.01	31.26,83.85	32.88,82.55
path	34.41,82.23	37.43,81.32	38.61,80.09	38.42,77.89	38.35,76.11
path	38.74,73.99	37.68,73.22	36.73,71.76	36.68,69.14	36.32,67.06
path	34.88,65.94	30.85,65.94	29.52,67.06	29.48,69.42	29.23,70.90
path	27.57,72.50	26.02,72.85	25.60,71.51	26.75,67.96	27.06,65.35
path	26.93,62.88	26.18,62.34	24.08,61.56	23.06,60.72	21.86,57.73
path	22.87,55.34	24.36,56.14	27.01,56.95	27.90,55.75	28.61,53.06
path	29.83,51.20	31.85,50.00	32.80,49.22	33.11,48.06	33.67,45.40
path	34.61,43.60	35.58,42.52	36.26,43.24	37.45,45.62	39.00,47.32
path	39.40,48.12	39.25,49.56	38.64,51.52	37.74,54.90	37.82,57.96
path	37.92,61.22	37.98,63.22	38.43,63.67	39.29,63.34	41.71,62.19
path	43.54,59.60	43.96,56.47	43.76,55.08	45.37,54.72	46.71,56.45
path	48.25,58.99	48.84,60.33	48.86,63.66	49.78,64.45	51.20,64.42
path	52.87,65.09	54.07,66.91	54.51,68.66	52.51,70.07	50.76,72.23
path	49.99,73.68	49.17,77.80	46.82,77.95	44.64,78.02	41.03,78.62
path	41.08,81.81
click Icethorn##190172+
|tip They look like blue and white thorns growing out of the ground along the path.
|tip You will need level 435 Herbalism to gather these.
|tip Track them on your minimap with "Find Herbs".
collect 42 Icy Pigment##43109 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Icy Pigment can be Milled from any Northrend herb, but most commonly from Icethorn and Lichbloom.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip The final 20 points are cheaper and more practical to obtain with a daily cooldown using these.
'|complete skill("Inscription") >= 450 |or
step
label "Colelct_Azure_Pigment_Total"
map The Storm Peaks/0
path follow smart; loop on; ants curved; dist 30
path	40.48,84.72	38.66,87.17	37.60,88.31	36.46,88.65	35.02,88.40
path	33.04,87.96	32.36,87.32	31.15,86.01	31.26,83.85	32.88,82.55
path	34.41,82.23	37.43,81.32	38.61,80.09	38.42,77.89	38.35,76.11
path	38.74,73.99	37.68,73.22	36.73,71.76	36.68,69.14	36.32,67.06
path	34.88,65.94	30.85,65.94	29.52,67.06	29.48,69.42	29.23,70.90
path	27.57,72.50	26.02,72.85	25.60,71.51	26.75,67.96	27.06,65.35
path	26.93,62.88	26.18,62.34	24.08,61.56	23.06,60.72	21.86,57.73
path	22.87,55.34	24.36,56.14	27.01,56.95	27.90,55.75	28.61,53.06
path	29.83,51.20	31.85,50.00	32.80,49.22	33.11,48.06	33.67,45.40
path	34.61,43.60	35.58,42.52	36.26,43.24	37.45,45.62	39.00,47.32
path	39.40,48.12	39.25,49.56	38.64,51.52	37.74,54.90	37.82,57.96
path	37.92,61.22	37.98,63.22	38.43,63.67	39.29,63.34	41.71,62.19
path	43.54,59.60	43.96,56.47	43.76,55.08	45.37,54.72	46.71,56.45
path	48.25,58.99	48.84,60.33	48.86,63.66	49.78,64.45	51.20,64.42
path	52.87,65.09	54.07,66.91	54.51,68.66	52.51,70.07	50.76,72.23
path	49.99,73.68	49.17,77.80	46.82,77.95	44.64,78.02	41.03,78.62
path	41.08,81.81
click Icethorn##190172+ |notinsticky
|tip They look like blue and white thorns growing out of the ground along the path. |notinsticky
|tip You will need level 435 Herbalism to gather these. |notinsticky
|tip Track them on your minimap with "Find Herbs". |notinsticky
collect 180 Azure Pigment##39343 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house. |notinsticky
|tip Azure Pigment can be Milled from any Northrend herb. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Inscription") >= 430 |or
step
label "Begin_Profession_Leveling_Northrend"
talk Professor Pallin##92195
|tip Inside the building.
Train Grand Master Inscription |skillmax Inscription,450 |goto Dalaran/1 41.61,37.15
step
talk Professor Pallin##92195
|tip Inside the building.
Train Ink of the Sea |learn Ink of the Sea##57715 |goto Dalaran/1 41.61,37.15
step
map The Storm Peaks/0
path follow smart; loop on; ants curved; dist 30
path	40.48,84.72	38.66,87.17	37.60,88.31	36.46,88.65	35.02,88.40
path	33.04,87.96	32.36,87.32	31.15,86.01	31.26,83.85	32.88,82.55
path	34.41,82.23	37.43,81.32	38.61,80.09	38.42,77.89	38.35,76.11
path	38.74,73.99	37.68,73.22	36.73,71.76	36.68,69.14	36.32,67.06
path	34.88,65.94	30.85,65.94	29.52,67.06	29.48,69.42	29.23,70.90
path	27.57,72.50	26.02,72.85	25.60,71.51	26.75,67.96	27.06,65.35
path	26.93,62.88	26.18,62.34	24.08,61.56	23.06,60.72	21.86,57.73
path	22.87,55.34	24.36,56.14	27.01,56.95	27.90,55.75	28.61,53.06
path	29.83,51.20	31.85,50.00	32.80,49.22	33.11,48.06	33.67,45.40
path	34.61,43.60	35.58,42.52	36.26,43.24	37.45,45.62	39.00,47.32
path	39.40,48.12	39.25,49.56	38.64,51.52	37.74,54.90	37.82,57.96
path	37.92,61.22	37.98,63.22	38.43,63.67	39.29,63.34	41.71,62.19
path	43.54,59.60	43.96,56.47	43.76,55.08	45.37,54.72	46.71,56.45
path	48.25,58.99	48.84,60.33	48.86,63.66	49.78,64.45	51.20,64.42
path	52.87,65.09	54.07,66.91	54.51,68.66	52.51,70.07	50.76,72.23
path	49.99,73.68	49.17,77.80	46.82,77.95	44.64,78.02	41.03,78.62
path	41.08,81.81
click Icethorn##190172+
|tip They look like blue and white thorns growing out of the ground along the path.
|tip Track them on your minimap with "Find Herbs".
collect 180 Azure Pigment##39343 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Azure Pigment can be Milled from any Northrend herb.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Inscription") >= 430 |or
step
create 90 Ink of the Sea##57715,Inscription,90 total
|tip Save these, you will need them for future steps.
step
create 1 Ink of the Sea##57715,Inscription,355
|tip Save these, you will need them for future steps.
step
collect 5 Ink of the Sea##43126 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 360 |or
step
talk Larana Drome##28723
|tip Inside the building.
buy 10 Resilient Parchment##39502 |goto Dalaran/1 41.37,36.70 |or
'|complete skill("Inscription") >= 360 |or
step
talk Professor Pallin##92195
|tip Inside the building.
Train Scroll of Spirit VII |learn Scroll of Spirit VII##50610 |goto Dalaran/1 41.61,37.15
step
create 5 Scroll of Spirit VII##50610,Inscription,360
step
collect 5 Ink of the Sea##43126 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 365 |or
step
talk Larana Drome##28723
|tip Inside the building.
buy 10 Resilient Parchment##39502 |goto Dalaran/1 41.37,36.70 |or
'|complete skill("Inscription") >= 365 |or
step
talk Professor Pallin##92195
|tip Inside the building.
Train Scroll of Intellect VII |learn Scroll of Intellect VII##50603 |goto Dalaran/1 41.61,37.15
step
create 5 Scroll of Intellect VII##50603,Inscription,365
step
collect 5 Ink of the Sea##43126 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 370 |or
step
talk Larana Drome##28723
|tip Inside the building.
buy 10 Resilient Parchment##39502 |goto Dalaran/1 41.37,36.70 |or
'|complete skill("Inscription") >= 370 |or
step
talk Professor Pallin##92195
|tip Inside the building.
Train Scroll of Strength VII |learn Scroll of Strength VII##58490 |goto Dalaran/1 41.61,37.15
step
create 5 Scroll of Strength VII##58490,Inscription,370
step
collect 5 Ink of the Sea##43126 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 375 |or
step
talk Larana Drome##28723
|tip Inside the building.
buy 10 Resilient Parchment##39502 |goto Dalaran/1 41.37,36.70 |or
'|complete skill("Inscription") >= 375 |or
step
talk Professor Pallin##92195
|tip Inside the building.
Train Scroll of Agility VII |learn Scroll of Agility VII##58482 |goto Dalaran/1 41.61,37.15
step
create 5 Scroll of Agility VII##58482,Inscription,375
step
map The Storm Peaks/0
path follow smart; loop on; ants curved; dist 30
path	40.48,84.72	38.66,87.17	37.60,88.31	36.46,88.65	35.02,88.40
path	33.04,87.96	32.36,87.32	31.15,86.01	31.26,83.85	32.88,82.55
path	34.41,82.23	37.43,81.32	38.61,80.09	38.42,77.89	38.35,76.11
path	38.74,73.99	37.68,73.22	36.73,71.76	36.68,69.14	36.32,67.06
path	34.88,65.94	30.85,65.94	29.52,67.06	29.48,69.42	29.23,70.90
path	27.57,72.50	26.02,72.85	25.60,71.51	26.75,67.96	27.06,65.35
path	26.93,62.88	26.18,62.34	24.08,61.56	23.06,60.72	21.86,57.73
path	22.87,55.34	24.36,56.14	27.01,56.95	27.90,55.75	28.61,53.06
path	29.83,51.20	31.85,50.00	32.80,49.22	33.11,48.06	33.67,45.40
path	34.61,43.60	35.58,42.52	36.26,43.24	37.45,45.62	39.00,47.32
path	39.40,48.12	39.25,49.56	38.64,51.52	37.74,54.90	37.82,57.96
path	37.92,61.22	37.98,63.22	38.43,63.67	39.29,63.34	41.71,62.19
path	43.54,59.60	43.96,56.47	43.76,55.08	45.37,54.72	46.71,56.45
path	48.25,58.99	48.84,60.33	48.86,63.66	49.78,64.45	51.20,64.42
path	52.87,65.09	54.07,66.91	54.51,68.66	52.51,70.07	50.76,72.23
path	49.99,73.68	49.17,77.80	46.82,77.95	44.64,78.02	41.03,78.62
path	41.08,81.81
click Icethorn##190172+
|tip They look like blue and white thorns growing out of the ground along the path.
|tip You will need level 435 Herbalism to gather these.
|tip Track them on your minimap with "Find Herbs".
collect 42 Icy Pigment##43109 |or
|tip Mill them from herbs with Inscription or purchase them from the auction house.
|tip Icy Pigment can be Milled from any Northrend herb, but most commonly from Icethorn and Lichbloom.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip The final 20 points are cheaper and more practical to obtain with a daily cooldown using these.
'|complete skill("Inscription") >= 450 |or
step
talk Professor Pallin##92195
|tip Inside the building.
Train Snowfall Ink |learn Snowfall Ink##57716 |goto Dalaran/1 41.61,37.15
step
create 21 Snowfall Ink##57716,Inscription,21 total
|tip Save these, you will need them for future steps.
step
create 1 Snowfall Ink##57716,Inscription,380
|tip Save these, you will need them for future steps.
step
collect 7 Ink of the Sea##43126 |or
|tip You created these in a previous step.
|tip From 375-380 you can also turn Icy Pigment into Snowfall Ink.
'|complete skill("Inscription") >= 385 |or
step
talk Larana Drome##28723
|tip Inside the building.
buy 7 Resilient Parchment##39502 |goto Dalaran/1 41.37,36.70 |or
'|complete skill("Inscription") >= 385 |or
step
talk Professor Pallin##92195
|tip Inside the building.
Train Glyph of Focus |learn Glyph of Focus##62162 |goto Dalaran/1 41.61,37.15
|tip You can also create any other similar-level glyph.
step
create 7 Glyph of Focus##62162,Inscription,385
|tip You can also create any other similar-level glyph.
step
collect 3 Ink of the Sea##43126 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 386 |or
step
collect 1 Snowfall Ink##43127 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 386 |or
step
talk Larana Drome##28723
|tip Inside the building.
buy 5 Resilient Parchment##39502 |goto Dalaran/1 41.37,36.70 |or
'|complete skill("Inscription") >= 386 |or
step
talk Professor Pallin##92195
|tip Inside the building.
Train Northrend Inscription Research |learn Northrend Inscription Research##61177 |goto Dalaran/1 41.61,37.15
step
create 1 Northrend Inscription Research##61177,Inscription,386
step
collect 25 Ink of the Sea##43126 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 400 |or
step
talk Larana Drome##28723
|tip Inside the building.
buy 25 Resilient Parchment##39502 |goto Dalaran/1 41.37,36.70 |or
'|complete skill("Inscription") >= 400 |or
step
<Create approximately 25 of any major glyph you discovered>
|tip Glyphs discovered with Northrend Inscription Research will be random.
|tip Keep performing Northrend Inscription Research every day.
|tip Each Northrend Inscription Research requires 3 Ink of the Sea, 5 Resilient Parchment, and 1 Snowfall Ink.
Reach 400 Inscription Skill |skill Inscription,400
step
collect 5 Ink of the Sea##43126 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 405 |or
step
talk Larana Drome##28723
|tip Inside the building.
buy 10 Resilient Parchment##39502 |goto Dalaran/1 41.37,36.70 |or
'|complete skill("Inscription") >= 405 |or
step
talk Professor Pallin##92195
|tip Inside the building.
Train Scroll of Stamina VIII |learn Scroll of Stamina VIII##50620 |goto Dalaran/1 41.61,37.15
step
create 5 Scroll of Stamina VIII##50620,Inscription,405
step
collect 5 Ink of the Sea##43126 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 410 |or
step
talk Larana Drome##28723
|tip Inside the building.
buy 10 Resilient Parchment##39502 |goto Dalaran/1 41.37,36.70 |or
'|complete skill("Inscription") >= 410 |or
step
talk Professor Pallin##92195
|tip Inside the building.
Train Scroll of Spirit VIII |learn Scroll of Spirit VIII##50611 |goto Dalaran/1 41.61,37.15
step
create 5 Scroll of Spirit VIII##50611,Inscription,410
step
collect 5 Ink of the Sea##43126 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 415 |or
step
talk Larana Drome##28723
|tip Inside the building.
buy 10 Resilient Parchment##39502 |goto Dalaran/1 41.37,36.70 |or
'|complete skill("Inscription") >= 415 |or
step
talk Professor Pallin##92195
|tip Inside the building.
Train Scroll of Intellect VIII |learn Scroll of Intellect VIII##50604 |goto Dalaran/1 41.61,37.15
step
create 5 Scroll of Intellect VIII##50604,Inscription,415
step
collect 5 Ink of the Sea##43126 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 420 |or
step
talk Larana Drome##28723
|tip Inside the building.
buy 10 Resilient Parchment##39502 |goto Dalaran/1 41.37,36.70 |or
'|complete skill("Inscription") >= 420 |or
step
talk Professor Pallin##92195
|tip Inside the building.
Train Scroll of Strength VIII |learn Scroll of Strength VIII##58491 |goto Dalaran/1 41.61,37.15
step
create 5 Scroll of Strength VIII##58491,Inscription,420
step
collect 13 Ink of the Sea##43126 |or
|tip You created these in a previous step.
'|complete skill("Inscription") >= 430 |or
step
talk Larana Drome##28723
|tip Inside the building.
buy 26 Resilient Parchment##39502 |goto Dalaran/1 41.37,36.70 |or
'|complete skill("Inscription") >= 430 |or
step
talk Professor Pallin##92195
|tip Inside the building.
Train Scroll of Agility VIII |learn Scroll of Agility VIII##58483 |goto Dalaran/1 41.61,37.15
step
create 13 Scroll of Agility VIII##58483,Inscription,430
step
create 1 Northrend Inscription Research##61177,Inscription,450
|tip For the last 20 points, Northrend Inscription Research is the most practical method.
|tip Darkmoon Cards and Runescrolls of Fortitude are options, but rely on rare ink and are more expensive.
step
talk Catarina Stanford##30713
|tip Inside the building.
Train Illustrious Grand Master Inscription |skillmax Inscription,525 |goto Stormwind City/0 49.83,74.82
|tip You must be at least level 75.
step
kill Schnottz Infantryman##48629+
|tip They spawn in large groups all around this area.
collect Technique: Origami Beetle##65651 |goto Uldum/0 39.82,11.67
step
use the Technique: Origami Beetle##65651
learn Origami Beetle##86646
step
talk Stanly McCormick##30730
|tip Inside the building.
buy 345 Light Parchment##39354 |goto Stormwind City/0 49.57,74.95
|only if skill("Inscription") < 510
step
Open Your Inscription Crafting Panel:
_<Create 80 Origami Beetle>_
|tip Keep making them until you reach skill 60.
Reach 510 Inscription |skill Inscription,510
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Blackfallow Ink##86004 |goto 49.83,74.82
step
talk Catarina Stanford##30713
|tip Inside the building.
learn Forged Documents##89244 |goto 49.83,74.82
step
collect 43 Blackfallow Ink##61978
|tip Create them with Inscription or purchase them from the Auction House.
|tip Ashen Pigment can be Milled from Azshara's Veil, Cinderbloom, Heartblossom, Stormvine, Twilight Jasmine, and Whiptail.
|only if skill("Inscription") < 525
step
Open Your Inscription Crafting Panel:
_<Create 15 Research: Blackfallow Ink>_
|tip If you are not Pandaren, you can get the first point from creating Forged Documents.
Reach 525 Inscription |skill Inscription,525
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
talk Farii##19778
Train Apprentice Jewelcrafting |skillmax Jewelcrafting,75 |goto The Exodar/0 44.87,24.23
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Classic-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Jewelcrafting |confirm |next "Begin_Profession_Leveling_Classic" |or
'|complete skill("Jewelcrafting") >= 300 |next "Begin_Profession_Leveling_Classic" |only if default |or
'|complete skill("Jewelcrafting") >= 305 |next "Begin_Profession_Leveling_Classic" |only if Draenei |or
stickystart "Collect_Bronze_Bar_Total"
stickystart "Collect_Mithril_Bar_Total"
stickystart "Collect_Truesilver_Bar_Total"
stickystart "Collect_Thorium_Bar_Total"
step
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
click Copper Vein##1731+
|tip They look like gray rocks with orange and yellow mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 110 Copper Ore##2770 |n
|tip Smelt the ore at a forge.
collect 110 Copper Bar##2840 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Jewelcrafting") >= 35 |only if default |or
'|complete skill("Jewelcrafting") >= 40 |only if Draenei |or
step
label "Collect_Bronze_Bar_Total"
collect 120 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip Smelting 2 Bronze Bars requires 1 Copper Bar and 1 Tin Bar. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 110 |only if default |or
'|complete skill("Jewelcrafting") >= 115 |only if Draenei |or
step
label "Collect_Mithril_Bar_Total"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+ |notinsticky
|tip They look like gray rocks with large white crystals along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 142 Mithril Ore##3858 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 142 Mithril Bar##3860 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 175 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 180 |only if default |or
'|complete skill("Jewelcrafting") >= 185 |only if Draenei |or
step
label "Collect_Truesilver_Bar_Total"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Truesilver Deposit##2047+ |notinsticky
|tip They look like gray rocks with large glowing crystals along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect Truesilver Ore##7911 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 28 Truesilver Bar##6037 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need level 230 Mining to collect these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 210 |only if default |or
'|complete skill("Jewelcrafting") >= 215 |only if Draenei |or
step
label "Collect_Thorium_Bar_Total"
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+ |notinsticky
click Rich Thorium Vein##175404+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 56 Thorium Ore##10620 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 56 Thorium Bar##12359 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip You will need level 245 Mining to collect these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 250 |only if default |or
'|complete skill("Jewelcrafting") >= 255 |only if Draenei |or
stickystart "Collect_Shadowgem_Total"
stickystart "Collect_Moss_Agate_Total"
stickystart "Collect_Aquamarine_Total"
stickystart "Collect_Heavy_Stone_Total"
stickystart "Collect_Solid_Stone_Total"
step
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
click Copper Vein##1731+
|tip They look like gray rocks with orange and yellow mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 15 Tigerseye##818 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Copper Ore with Jewelcrafting.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Jewelcrafting") >= 50 |only if default |or
'|complete skill("Jewelcrafting") >= 55 |only if Draenei |or
step
label "Collect_Shadowgem_Total"
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
collect 60 Shadowgem##1210 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 65 Mining skill to gather these. |notinsticky
|tip They can be Prospected from Copper Ore and Tin Ore with Jewelcrafting. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 110 |only if default |or
'|complete skill("Jewelcrafting") >= 115 |only if Draenei |or
step
label "Collect_Moss_Agate_Total"
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
|tip You will need at least 65 Mining skill to gather these. |notinsticky
|tip They can be Prospected from Copper Ore and Tin Ore with Jewelcrafting. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 150 |only if default |or
'|complete skill("Jewelcrafting") >= 155 |only if Draenei |or
step
label "Collect_Aquamarine_Total"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+ |notinsticky
|tip They look like gray rocks with large white crystals along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 35 Aquamarine##7909 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 175 Mining skill to gather these. |notinsticky
|tip They can be Prospected from Tin Ore, Iron Ore, and Mithril Ore with Jewelcrafting. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 225 |only if default |or
'|complete skill("Jewelcrafting") >= 230 |only if Draenei |or
step
label "Collect_Heavy_Stone_Total"
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
collect 80 Heavy Stone##2838 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 125 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 120 |only if default |or
'|complete skill("Jewelcrafting") >= 125 |only if Draenei |or
step
label "Collect_Solid_Stone_Total"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+ |notinsticky
|tip They look like gray rocks with large white crystals along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 90 Solid Stone##7912 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 185 |only if default |or
'|complete skill("Jewelcrafting") >= 190 |only if Draenei |or
stickystart "Collect_Large_Opal_Total"
stickystart "Collect_Azerothian_Diamond_Total"
stickystart "Collect_Huge_Emerald_Total"
step
label "Collect_Star_Ruby_Total"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals".
collect 10 Star Ruby##7910 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Iron Ore, Mithril Ore, and Thorium Ore with Jewelcrafting.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Jewelcrafting") >= 260 |only if default |or
'|complete skill("Jewelcrafting") >= 265 |only if Draenei |or
step
label "Collect_Large_Opal_Total"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+ |notinsticky
|tip They look like gray rocks with large white crystals along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 21 Large Opal##12799 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip They can be Prospected from Mithril Ore, and Thorium Ore with Jewelcrafting. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 281 |only if default |or
'|complete skill("Jewelcrafting") >= 286 |only if Draenei |or
step
label "Collect_Azerothian_Diamond_Total"
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+ |notinsticky
click Rich Thorium Vein##175404+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 20 Azerothian Diamond##12800 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need level 245 Mining to collect these. |notinsticky
|tip They can be Prospected from Mithril Ore, and Thorium Ore with Jewelcrafting. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 295 |only if default |or
'|complete skill("Jewelcrafting") >= 300 |only if Draenei |or
step
label "Collect_Huge_Emerald_Total"
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+ |notinsticky
click Rich Thorium Vein##175404+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 10 Huge Emerald##12364 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need level 245 Mining to collect these. |notinsticky
|tip They can be Prospected from Mithril Ore, and Thorium Ore with Jewelcrafting. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 300 |only if default |or
'|complete skill("Jewelcrafting") >= 305 |only if Draenei |or
step
label "Begin_Profession_Leveling_Classic"
talk Arred##17512
buy 1 Jeweler's Kit##20815 |goto The Exodar/0 45.08,26.13 |or 2
buy 1 Simple Grinder##20824 |goto 45.08,26.13 |or 2
|tip Save this, you will need it for future steps.
'|complete skill("Jewelcrafting") >= 375 |only if default |or
'|complete skill("Jewelcrafting") >= 380 |only if Draenei |or
stickystart "Collect_Tigerseye_50"
step
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
click Copper Vein##1731+
|tip They look like gray rocks with orange and yellow mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 110 Copper Ore##2770 |n
|tip Smelt the ore at a forge.
collect 110 Copper Bar##2840 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 35 |only if default |or
'|complete skill("Jewelcrafting") >= 40 |only if Draenei |or
step
label "Collect_Tigerseye_50"
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
click Copper Vein##1731+ |notinsticky
|tip They look like gray rocks with orange and yellow mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 15 Tigerseye##818 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip They can be Prospected from Copper Ore with Jewelcrafting. |notinsticky
'|complete skill("Jewelcrafting") >= 50 |only if default |or
'|complete skill("Jewelcrafting") >= 55 |only if Draenei |or
step
create 55 Delicate Copper Wire##25255,Jewelcrafting,55 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Jewelcrafting") >= 51 |only if default |or
'|complete skill("Jewelcrafting") >= 56 |only if Draenei |or
step
create 1 Delicate Copper Wire##25255,Jewelcrafting,35 |only if default |or
create 1 Delicate Copper Wire##25255,Jewelcrafting,40 |only if Draenei |or
|tip Save these, you will need them for future steps.
|tip You may need to make a few more of these.
|tip Each additional Delicate Copper Wire requires 2 Copper Bars.
stickystart "Collect_Delicate_Copper_Wire_50"
step
collect 15 Tigerseye##818 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 50 |only if default |or
'|complete skill("Jewelcrafting") >= 55 |only if Draenei |or
step
label "Collect_Delicate_Copper_Wire_50"
collect 15 Delicate Copper Wire##20816 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 50 |only if default |or
'|complete skill("Jewelcrafting") >= 55 |only if Draenei |or
step
talk Farii##19778
Train Tigerseye Band |learn Tigerseye Band##32179 |goto The Exodar/0 44.87,24.23
step
create 15 Tigerseye Band##32179,Jewelcrafting,50 |only if default |or
create 15 Tigerseye Band##32179,Jewelcrafting,55 |only if Draenei |or
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Farii##19778
Train Journeyman Jewelcrafting |skillmax Jewelcrafting,150 |goto The Exodar/0 44.87,24.23
step
talk Farii##19778
Train Bronze Setting |learn Bronze Setting##25278 |goto The Exodar/0 44.87,24.23
step
collect 120 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
|tip Smelting 2 Bronze Bars requires 1 Copper Bar and 1 Tin Bar.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save at least 20 of these; you will need them for future steps.
'|complete skill("Jewelcrafting") >= 80 |only if default |or
'|complete skill("Jewelcrafting") >= 85 |only if Draenei |or
step
create 50 Bronze Setting##25278,Jewelcrafting,50 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Jewelcrafting") >= 150 |only if default |or
'|complete skill("Jewelcrafting") >= 155 |only if Draenei |or
step
create 1 Bronze Setting##25278,Jewelcrafting,80 |only if default |or
create 1 Bronze Setting##25278,Jewelcrafting,85 |only if Draenei |or
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
'|complete skill("Jewelcrafting") >= 100 |or |only if default |or
'|complete skill("Jewelcrafting") >= 105 |only if Draenei |or
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
'|complete skill("Jewelcrafting") >= 150 |only if default |or
'|complete skill("Jewelcrafting") >= 155 |only if Draenei |or
step
label "Collect_Bronze_Setting_100"
collect 20 Bronze Setting##20817 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 100 |only if default |or
'|complete skill("Jewelcrafting") >= 105 |only if Draenei |or
step
label "Collect_Delicate_Copper_Wire_100"
collect 40 Delicate Copper Wire##20816 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 100 |only if default |or
'|complete skill("Jewelcrafting") >= 105 |only if Draenei |or
step
talk Farii##19778
Train Gloom Band |learn Gloom Band##25287 |goto The Exodar/0 44.87,24.23
step
create 20 Gloom Band##25287,Jewelcrafting,100 |only if default |or
create 20 Gloom Band##25287,Jewelcrafting,105 |only if Draenei |or
|tip You may need to create more or less of these.
|tip Each additional Gloom Band requires 2 Shadowgems and 1 Delicate Copper Wire.
stickystart "Collect_Shadowgem_110"
step
collect 20 Bronze Bar##2841 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 110 |only if default |or
'|complete skill("Jewelcrafting") >= 115 |only if Draenei |or
step
label "Collect_Shadowgem_110"
collect 20 Shadowgem##1210 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 110 |only if default |or
'|complete skill("Jewelcrafting") >= 115 |only if Draenei |or
step
talk Farii##19778
Train Ring of Twilight Shadows |learn Ring of Twilight Shadows##25318 |goto The Exodar/0 44.87,24.23
step
create 10 Ring of Twilight Shadows##25318,Jewelcrafting,110 |only if default |or
create 10 Ring of Twilight Shadows##25318,Jewelcrafting,115 |only if Draenei |or
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
|tip They look like dense gray rocks with small silver-green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals".
collect 80 Heavy Stone##2838 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 125 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Jewelcrafting") >= 120 |only if default |or
'|complete skill("Jewelcrafting") >= 125 |only if Draenei |or
step
talk Farii##19778
Train Heavy Stone Statue |learn Heavy Stone Statue##32807 |goto The Exodar/0 44.87,24.23
step
create 10 Heavy Stone Statue##32807,Jewelcrafting,120 |only if default |or
create 10 Heavy Stone Statue##32807,Jewelcrafting,125 |only if Draenei |or
stickystart "Collect_Bronze_Setting_150"
step
collect 30 Moss Agate##1206 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 150 |only if default |or
'|complete skill("Jewelcrafting") >= 155 |only if Draenei |or
step
label "Collect_Bronze_Setting_150"
collect 30 Bronze Setting##20817 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 150 |only if default |or
'|complete skill("Jewelcrafting") >= 155 |only if Draenei |or
step
talk Neal Allen##1448
|tip Inside the building.
buy 1 Design: Pendant of the Agate Shield##20970 |goto Wetlands/0 10.6,56.8 |or
|tip This design is a limited supply item.
|tip You may need to wait a short period of time (around 10 minutes) for it to resupply.
'|complete skill("Jewelcrafting") >= 150 |only if default |or
'|complete skill("Jewelcrafting") >= 155 |only if Draenei |or
step
use the Design: Pendant of the Agate Shield##20970
Train Pendant of the Agate Shield |learn Pendant of the Agate Shield##25610
step
create 30 Pendant of the Agate Shield##25610,Jewelcrafting,150 |only if default |or
create 30 Pendant of the Agate Shield##25610,Jewelcrafting,155 |only if Draenei |or
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Farii##19778
Train Expert Jewelcrafting |skillmax Jewelcrafting,225 |goto The Exodar/0 44.87,24.23
step
talk Farii##19778
Train Mithril Filigree |learn Mithril Filigree##25615 |goto 44.87,24.23
stickystart "Collect_Truesilver_Bar_210"
stickystart "Collect_Solid_Stone_185"
stickystart "Collect_Aquamarine_220"
step
label "Collect_Mithril_Bar_210"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals".
collect 142 Mithril Ore##3858 |n
|tip Smelt the ore at a forge.
collect 142 Mithril Bar##3860 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 175 Mining skill to gather these.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Jewelcrafting") >= 180 |only if default |or
'|complete skill("Jewelcrafting") >= 185 |only if Draenei |or
step
label "Collect_Truesilver_Bar_210"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Truesilver Deposit##2047+ |notinsticky
|tip They look like gray rocks with large glowing crystals along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect Truesilver Ore##7911 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 28 Truesilver Bar##6037 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 230 Mining skill to gather these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 210 |only if default |or
'|complete skill("Jewelcrafting") >= 215 |only if Draenei |or
step
label "Collect_Solid_Stone_185"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+ |notinsticky
|tip They look like gray rocks with large white crystals along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 90 Solid Stone##7912 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 175 Mining skill to gather these.
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 185 |only if default |or
'|complete skill("Jewelcrafting") >= 190 |only if Draenei |or
step
label "Collect_Aquamarine_220"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+ |notinsticky
|tip They look like gray rocks with large white crystals along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 35 Aquamarine##7909 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 175 Mining skill to gather these.
|tip They can be Prospected from Tin Ore, Iron Ore, and Mithril Ore with Jewelcrafting. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
|tip Save these, you will need them for future steps. |notinsticky
'|complete skill("Jewelcrafting") >= 220 |only if default |or
'|complete skill("Jewelcrafting") >= 225 |only if Draenei |or
step
create 71 Mithril Filigree##25615,Jewelcrafting,71 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Jewelcrafting") >= 180 |only if default |or
'|complete skill("Jewelcrafting") >= 185 |only if Draenei |or
step
create 1 Mithril Filigree##25615,Jewelcrafting,180 |only if default |or
create 1 Mithril Filigree##25615,Jewelcrafting,185 |only if Draenei |or
|tip Save at least 71 of these; you will need them for future steps.
|tip You may need to create more of these.
|tip Each additional Mithril Filigree requires 2 Mithril Bars.
step
collect 90 Solid Stone##7912 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 185 |only if default |or
'|complete skill("Jewelcrafting") >= 190 |only if Draenei |or
step
talk Farii##19778
Train Solid Stone Statue |learn Solid Stone Statue##32808 |goto The Exodar/0 44.87,24.23
step
create 9 Solid Stone Statue##32808,Jewelcrafting,185 |only if default |or
create 9 Solid Stone Statue##32808,Jewelcrafting,190 |only if Draenei |or
|tip You may need to create more or less of these.
|tip Each additional Solid Stone Statue requires 10 Solid Stone.
stickystart "Collect_Mithril_Filigree_210"
step
collect 28 Truesilver Bar##6037 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 210 |only if default |or
'|complete skill("Jewelcrafting") >= 215 |only if Draenei |or
step
label "Collect_Mithril_Filigree_210"
collect 56 Mithril Filigree##20963 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 210 |only if default |or
'|complete skill("Jewelcrafting") >= 215 |only if Draenei |or
step
talk Farii##19778
Train Engraved Truesilver Ring |learn Engraved Truesilver Ring##25620 |goto The Exodar/0 44.87,24.23
step
create 28 Engraved Truesilver Ring##25620,Jewelcrafting,210 |only if default |or
create 28 Engraved Truesilver Ring##25620,Jewelcrafting,215 |only if Draenei |or
|tip You may need to create more or less of these.
|tip Each additional Engraved Truesilver Ring requires 1 Truesilver Bars and 2 Mithril Filigrees.
step
collect 30 Aquamarine##7909 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 220 |only if default |or
'|complete skill("Jewelcrafting") >= 225 |only if Draenei |or
step
talk Farii##19778
Train Aquamarine Signet |learn Aquamarine Signet##26874 |goto The Exodar/0 44.87,24.23
step
create 10 Aquamarine Signet##26874,Jewelcrafting,220 |only if default |or
create 10 Aquamarine Signet##26874,Jewelcrafting,225 |only if Draenei |or
stickystart "Collect_Mithril_Filigree_225"
step
collect 5 Aquamarine##7909 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 225 |only if default |or
'|complete skill("Jewelcrafting") >= 230 |only if Draenei |or
step
label "Collect_Mithril_Filigree_225"
collect 15 Mithril Filigree##20963 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 225 |only if default |or
'|complete skill("Jewelcrafting") >= 230 |only if Draenei |or
step
talk Farii##19778
Train Aquamarine Pendant of the Warrior |learn Aquamarine Pendant of the Warrior##26876 |goto The Exodar/0 44.87,24.23
step
create 5 Aquamarine Pendant of the Warrior##26876,Jewelcrafting,225 |only if default |or
create 5 Aquamarine Pendant of the Warrior##26876,Jewelcrafting,230 |only if Draenei |or
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
talk Farii##19778
Train Artisan Jewelcrafting |skillmax Jewelcrafting,300 |goto The Exodar/0 44.87,24.23
step
talk Farii##19778
Train Thorium Setting |learn Thorium Setting##26880 |goto 44.87,24.23
stickystart "Collect_Large_Opals_281
stickystart "Collect_Azerothian_Diamonds_295"
stickystart "Collect_Huge_Emeralds_300"
step
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+
click Rich Thorium Vein##175404+
|tip They look like green mineral deposits along the path.
|tip Track them on your minimap with "Find Minerals".
collect 56 Thorium Ore##10620 |n
|tip Smelt the ore at a forge.
collect 56 Thorium Bar##12359 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 245 Mining skill to gather small veins and 275 skill to gather rich veins.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Jewelcrafting") >= 250 |only if default |or
'|complete skill("Jewelcrafting") >= 255 |only if Draenei |or
step
label "Collect_Large_Opals_281
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+ |notinsticky
click Rich Thorium Vein##175404+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 21 Large Opal##12799 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip They can be Prospected from Mithril Ore, and Thorium Ore with Jewelcrafting. |notinsticky
|tip You will need at least 245 Mining skill to gather small veins and 275 skill to gather rich veins. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 281 |only if default |or
'|complete skill("Jewelcrafting") >= 286 |only if Draenei |or
step
label "Collect_Azerothian_Diamonds_295"
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+ |notinsticky
click Rich Thorium Vein##175404+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 20 Azerothian Diamond##12800 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip They can be Prospected from Mithril Ore, and Thorium Ore with Jewelcrafting. |notinsticky
|tip You will need at least 245 Mining skill to gather small veins and 275 skill to gather rich veins. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 295 |only if default |or
'|complete skill("Jewelcrafting") >= 300 |only if Draenei |or
step
label "Collect_Huge_Emeralds_300"
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
click Small Thorium Vein##324+ |notinsticky
click Rich Thorium Vein##175404+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 10 Huge Emerald##12364 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip They can be Prospected from Mithril Ore, and Thorium Ore with Jewelcrafting. |notinsticky
|tip You will need at least 245 Mining skill to gather small veins and 275 skill to gather rich veins. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 300 |only if default |or
'|complete skill("Jewelcrafting") >= 305 |only if Draenei |or
step
create 56 Thorium Setting##26880,Jewelcrafting,56 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Jewelcrafting") >= 250 |only if default |or
'|complete skill("Jewelcrafting") >= 255 |only if Draenei |or
step
create 1 Thorium Setting##26880,Jewelcrafting,250 |only if default |or
create 1 Thorium Setting##26880,Jewelcrafting,255 |only if Draenei |or
|tip You may need to create more of these.
|tip Each additional Thorium Setting requires 1 Thorium Bar.
|tip Save these, you will need them for future steps.
stickystart "Collect_Thorium_Setting_260"
step
label "Collect_Star_Ruby_260"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals".
collect 10 Star Ruby##7910 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 175 Mining skill to gather these.
|tip They can be Prospected from Iron Ore, Mithril Ore, and Thorium Ore with Jewelcrafting.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Jewelcrafting") >= 260 |only if default |or
'|complete skill("Jewelcrafting") >= 265 |only if Draenei |or
step
label "Collect_Thorium_Setting_260"
collect 10 Thorium Setting##21752 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 260 |only if default |or
'|complete skill("Jewelcrafting") >= 265 |only if Draenei |or
step
talk Farii##19778
Train Ruby Pendant of Fire |learn Ruby Pendant of Fire##26883 |goto The Exodar/0 44.87,24.23
step
create 10 Ruby Pendant of Fire##26883,Jewelcrafting,260 |only if default |or
create 10 Ruby Pendant of Fire##26883,Jewelcrafting,265 |only if Draenei |or
stickystart "Collect_Thorium_Setting_281"
step
collect 21 Large Opal##12799 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 281 |only if default |or
'|complete skill("Jewelcrafting") >= 286 |only if Draenei |or
step
label "Collect_Thorium_Setting_281"
collect 21 Thorium Setting##21752 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 281 |only if default |or
'|complete skill("Jewelcrafting") >= 286 |only if Draenei |or
step
talk Farii##19778
Train Simple Opal Ring |learn Simple Opal Ring##26902 |goto The Exodar/0 44.87,24.23
step
create 21 Simple Opal Ring##26902,Jewelcrafting,281 |only if default |or
create 21 Simple Opal Ring##26902,Jewelcrafting,286 |only if Draenei |or
|tip You may need to create more or less of these.
|tip Each additional Simple Opal Ring requires 1 Large Opal and 1 Thorium Setting.
stickystart "Collect_Thorium_Setting_295"
step
collect 20 Azerothian Diamond##12800 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 295 |only if default |or
'|complete skill("Jewelcrafting") >= 300 |only if Draenei |or
step
label "Collect_Thorium_Setting_295"
collect 20 Thorium Setting##21752 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 295 |only if default |or
'|complete skill("Jewelcrafting") >= 300 |only if Draenei |or
step
talk Farii##19778
Train Diamond Focus Ring |learn Diamond Focus Ring##36526 |goto The Exodar/0 44.87,24.23
step
create 20 Diamond Focus Ring##36526,Jewelcrafting,295 |only if default |or
create 20 Diamond Focus Ring##36526,Jewelcrafting,300 |only if Draenei |or
|tip You may need to create more or less of these.
|tip Each additional Diamond Focus Ring requires 1 Azerothian Diamond and 1 Thorium Setting.
stickystart "Collect_Thorium_Setting_300"
step
collect 10 Huge Emerald##12364 |or
|tip You collected these in a previous step.
'|complete skill("Jewelcrafting") >= 300 |only if default |or
'|complete skill("Jewelcrafting") >= 305 |only if Draenei |or
step
label "Collect_Thorium_Setting_300"
collect 5 Thorium Setting##21752 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 300 |only if default |or
'|complete skill("Jewelcrafting") >= 305 |only if Draenei |or
step
talk Farii##19778
Train Emerald Lion Ring |learn Emerald Lion Ring##34961 |goto The Exodar/0 44.87,24.23
step
create 5 Emerald Lion Ring##34961,Jewelcrafting,300 |only if default |or
create 5 Emerald Lion Ring##34961,Jewelcrafting,305 |only if Draenei |or
step
Reach Level 58 |ding 58
|tip You must be at least level 58 to train Master professions in Outland.
|tip Use the leveling guides to accomplish this.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Burning Crusade-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Jewelcrafting |confirm |next "Begin_Profession_Leveling_Outland" |or
'|complete skill("Jewelcrafting") >= 350 |only if default |or |next "Begin_Profession_Leveling_Outland"
'|complete skill("Jewelcrafting") >= 355 |only if Draenei |or |next "Begin_Profession_Leveling_Outland"
step
Enter the building |goto Hellfire Peninsula/0 54.89,63.61 < 7 |walk
talk Tatiana##18774
|tip Inside the building.
Train Master Jewelcrafting |skillmax Jewelcrafting,375 |goto 54.63,63.68
step
talk Tatiana##18774
|tip Inside the building.
Learn Brilliant Golden Draenite |learn Brilliant Golden Draenite##28938 |goto 54.63,63.68
stickystart "Collect_Flame_Spessarite_Total"
stickystart "Collect_Shadow_Draenite_Total"
stickystart "Collect_Primal_Earth_Total"
stickystart "Collect_Adamantite_Ore_Total"
stickystart "Collect_Adamantite_Powder_Total"
stickystart "Collect_Mercurial_Stone_Total"
step
map Hellfire Peninsula/0
path follow smart; loop on; ants curved; dist 30
path	61.18,53.16	59.42,53.54	56.91,53.92	54.90,54.86	53.18,55.25
path	51.34,55.20	49.90,55.60	49.04,57.45	50.16,60.83	49.02,60.92
path	47.44,58.77	46.76,60.05	46.20,62.02	47.37,63.98	47.83,65.81
path	47.16,66.47	45.79,66.60	44.21,65.76	41.71,62.02	40.00,64.07
path	39.07,67.14	37.06,68.58	35.58,67.87	34.61,66.03	35.33,62.85
path	35.81,58.67	35.29,58.94	32.35,61.33	30.85,59.67	29.71,63.05
path	29.26,65.43	27.21,66.94	27.80,69.02	30.66,71.05	30.28,73.48
path	29.34,78.32	28.78,80.65	26.73,79.28	25.47,77.69	25.43,73.63
path	26.11,68.83	23.56,68.58	22.88,67.22	23.04,64.10	23.13,61.46
path	23.99,59.63	25.37,57.94	26.67,56.30	28.01,52.46	26.17,52.80
path	22.27,53.94	20.01,54.64	18.67,53.50	17.72,54.20	16.52,56.20
path	16.24,60.79	15.43,63.53	13.94,63.05	12.48,60.03	11.43,57.48
path	9.19,53.83	7.40,50.44	8.67,48.71	11.35,46.39	11.48,40.72
path	11.84,36.43	12.94,35.24	15.02,37.15	18.23,39.09	18.73,43.72
path	20.37,43.29	22.88,44.31	25.01,44.71	26.26,42.90	27.05,39.10
path	27.99,35.60	30.10,33.23	32.56,33.16	34.21,32.05	34.96,28.98
path	36.33,30.40	34.65,39.54	34.51,46.14	35.32,48.06	38.11,52.58
path	39.16,52.09	40.60,52.56	42.91,54.76	45.15,55.66	46.32,54.44
path	46.57,52.82	45.70,51.11	43.85,48.65	41.20,45.62	38.61,43.47
path	38.32,39.65	39.38,34.88	39.54,31.73	39.45,28.32	41.05,28.70
path	44.26,31.10	47.36,29.11	49.58,28.68	52.45,22.67	53.60,25.94
path	55.01,30.04	52.77,31.72	47.83,36.33	46.62,44.84	50.12,49.28
path	54.39,48.02	62.02,47.32
click Fel Iron Deposit##181555+
|tip They look like green mineral deposits along the path.
|tip Enter caves along the path.
|tip Track them on your minimap with "Find Minerals".
collect 30 Golden Draenite##23112 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip You will need at least 300 Mining skill to gather these.
|tip They can be Prospected from Thorium Ore, Fel Iron Ore, and Adamantite Ore with Jewelcrafting.
|tip You can cut any low level gem for points.
'|complete skill("Jewelcrafting") >= 320 |only if default |or
'|complete skill("Jewelcrafting") >= 325 |only if Draenei |or
step
label "Collect_Flame_Spessarite_Total"
map Hellfire Peninsula/0
path follow smart; loop on; ants curved; dist 30
path	61.18,53.16	59.42,53.54	56.91,53.92	54.90,54.86	53.18,55.25
path	51.34,55.20	49.90,55.60	49.04,57.45	50.16,60.83	49.02,60.92
path	47.44,58.77	46.76,60.05	46.20,62.02	47.37,63.98	47.83,65.81
path	47.16,66.47	45.79,66.60	44.21,65.76	41.71,62.02	40.00,64.07
path	39.07,67.14	37.06,68.58	35.58,67.87	34.61,66.03	35.33,62.85
path	35.81,58.67	35.29,58.94	32.35,61.33	30.85,59.67	29.71,63.05
path	29.26,65.43	27.21,66.94	27.80,69.02	30.66,71.05	30.28,73.48
path	29.34,78.32	28.78,80.65	26.73,79.28	25.47,77.69	25.43,73.63
path	26.11,68.83	23.56,68.58	22.88,67.22	23.04,64.10	23.13,61.46
path	23.99,59.63	25.37,57.94	26.67,56.30	28.01,52.46	26.17,52.80
path	22.27,53.94	20.01,54.64	18.67,53.50	17.72,54.20	16.52,56.20
path	16.24,60.79	15.43,63.53	13.94,63.05	12.48,60.03	11.43,57.48
path	9.19,53.83	7.40,50.44	8.67,48.71	11.35,46.39	11.48,40.72
path	11.84,36.43	12.94,35.24	15.02,37.15	18.23,39.09	18.73,43.72
path	20.37,43.29	22.88,44.31	25.01,44.71	26.26,42.90	27.05,39.10
path	27.99,35.60	30.10,33.23	32.56,33.16	34.21,32.05	34.96,28.98
path	36.33,30.40	34.65,39.54	34.51,46.14	35.32,48.06	38.11,52.58
path	39.16,52.09	40.60,52.56	42.91,54.76	45.15,55.66	46.32,54.44
path	46.57,52.82	45.70,51.11	43.85,48.65	41.20,45.62	38.61,43.47
path	38.32,39.65	39.38,34.88	39.54,31.73	39.45,28.32	41.05,28.70
path	44.26,31.10	47.36,29.11	49.58,28.68	52.45,22.67	53.60,25.94
path	55.01,30.04	52.77,31.72	47.83,36.33	46.62,44.84	50.12,49.28
path	54.39,48.02	62.02,47.32
click Fel Iron Deposit##181555+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Enter caves along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 7 Flame Spessarite##21929 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 300 Mining skill to gather these. |notinsticky
|tip They can be Prospected from Thorium Ore, Fel Iron Ore, and Adamantite Ore with Jewelcrafting. |notinsticky
|tip You can cut Flame Spessarite, Blood Garnet, Deep Peridot, and Azure Moonstone for points. |notinsticky
'|complete skill("Jewelcrafting") >= 325 |only if default |or
'|complete skill("Jewelcrafting") >= 330 |only if Draenei |or
step
label "Collect_Shadow_Draenite_Total"
map Hellfire Peninsula/0
path follow smart; loop on; ants curved; dist 30
path	61.18,53.16	59.42,53.54	56.91,53.92	54.90,54.86	53.18,55.25
path	51.34,55.20	49.90,55.60	49.04,57.45	50.16,60.83	49.02,60.92
path	47.44,58.77	46.76,60.05	46.20,62.02	47.37,63.98	47.83,65.81
path	47.16,66.47	45.79,66.60	44.21,65.76	41.71,62.02	40.00,64.07
path	39.07,67.14	37.06,68.58	35.58,67.87	34.61,66.03	35.33,62.85
path	35.81,58.67	35.29,58.94	32.35,61.33	30.85,59.67	29.71,63.05
path	29.26,65.43	27.21,66.94	27.80,69.02	30.66,71.05	30.28,73.48
path	29.34,78.32	28.78,80.65	26.73,79.28	25.47,77.69	25.43,73.63
path	26.11,68.83	23.56,68.58	22.88,67.22	23.04,64.10	23.13,61.46
path	23.99,59.63	25.37,57.94	26.67,56.30	28.01,52.46	26.17,52.80
path	22.27,53.94	20.01,54.64	18.67,53.50	17.72,54.20	16.52,56.20
path	16.24,60.79	15.43,63.53	13.94,63.05	12.48,60.03	11.43,57.48
path	9.19,53.83	7.40,50.44	8.67,48.71	11.35,46.39	11.48,40.72
path	11.84,36.43	12.94,35.24	15.02,37.15	18.23,39.09	18.73,43.72
path	20.37,43.29	22.88,44.31	25.01,44.71	26.26,42.90	27.05,39.10
path	27.99,35.60	30.10,33.23	32.56,33.16	34.21,32.05	34.96,28.98
path	36.33,30.40	34.65,39.54	34.51,46.14	35.32,48.06	38.11,52.58
path	39.16,52.09	40.60,52.56	42.91,54.76	45.15,55.66	46.32,54.44
path	46.57,52.82	45.70,51.11	43.85,48.65	41.20,45.62	38.61,43.47
path	38.32,39.65	39.38,34.88	39.54,31.73	39.45,28.32	41.05,28.70
path	44.26,31.10	47.36,29.11	49.58,28.68	52.45,22.67	53.60,25.94
path	55.01,30.04	52.77,31.72	47.83,36.33	46.62,44.84	50.12,49.28
path	54.39,48.02	62.02,47.32
click Fel Iron Deposit##181555+ |notinsticky
|tip They look like green mineral deposits along the path. |notinsticky
|tip Enter caves along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals".
collect 7 Shadow Draenite##23107 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip They can be Prospected from Thorium Ore, Fel Iron Ore, and Adamantite Ore with Jewelcrafting. |notinsticky
|tip You can cut Flame Spessarite, Shadow Draenite, and Golden Draenite for points. |notinsticky
'|complete skill("Jewelcrafting") >= 340 |only if default |or
'|complete skill("Jewelcrafting") >= 345 |only if Draenei |or
step
label "Collect_Primal_Earth_Total"
map Nagrand/0
path follow smart; loop off; ants curved; dist 30
path	46.19,77.20	41.98,78.72	40.31,82.83	32.13,80.25	29.34,79.24
path	28.40,73.85	28.94,66.76	28.17,63.58
kill Shattered Rumbler##17157+ |notinsticky
|tip Follow the path, killing any that you see. |notinsticky
use the Mote of Earth##22573 |notinsticky
|tip Combine 10 Motes of Earth into 1 Primal Earth. |notinsticky
collect 10 Primal Earth##22452 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
'|goto Nagrand/0 28.17,63.58 < 30 |c |noway
'|complete skill("Jewelcrafting") >= 335 |only if default |or
'|complete skill("Jewelcrafting") >= 340 |only if Draenei |or
step
map Nagrand/0
path follow smart; loop off; ants curved; dist 30
path	28.17,63.58	28.94,66.76	28.40,73.85	29.34,79.24	32.13,80.25
path	40.31,82.83	41.98,78.72	46.19,77.20
kill Shattered Rumbler##17157+
|tip Follow the path, killing any that you see.
use the Mote of Earth##22573
|tip Combine 10 Motes of Earth into 1 Primal Earth.
collect 10 Primal Earth##22452 |or
|tip Farm them with Mining or purchase them from the auction house.
'|goto Nagrand/0 46.19,77.20 < 30 |c |noway |next "Collect_Primal_Earth_Total"
'|complete skill("Jewelcrafting") >= 335 |only if default |or
'|complete skill("Jewelcrafting") >= 340 |only if Draenei |or
step
label "Collect_Adamantite_Ore_Total"
map Nagrand/0
path follow smart; loop on; ants curved; dist 30
path	49.90,71.01	48.62,71.28	48.51,75.60	46.76,77.91	42.77,74.39
path	42.08,76.76	41.94,80.24	41.11,84.55	38.45,83.23	36.21,82.30
path	33.57,82.12	31.13,80.54	28.19,78.49	27.67,72.30	28.58,69.31
path	28.20,63.62	27.06,62.92	26.75,57.07	23.44,56.18	20.07,55.07
path	19.35,47.46	20.31,41.40	21.27,38.46	23.05,33.49	26.76,32.99
path	31.77,28.76	31.71,24.26	30.40,20.66	35.78,15.50	36.87,18.62
path	39.06,20.24	41.69,21.71	42.81,19.43	50.53,20.11	54.00,21.00
path	56.63,24.36	60.66,33.11	64.21,35.14	66.06,36.31	66.14,32.27
path	67.70,35.36	70.24,37.57	74.08,37.81	72.33,43.08	73.43,46.30
path	73.01,50.47	72.77,56.93	74.94,58.55	71.99,61.95	72.67,64.73
path	72.21,67.00	71.71,71.30	72.96,76.49	70.91,75.13	68.49,75.92
path	66.66,79.00	63.17,76.97	61.93,79.13	58.74,80.27	56.19,79.78
path	54.59,81.99	51.75,79.79	49.42,82.67	47.62,81.24	48.39,79.11
click Adamantite Deposit##181556+ |notinsticky
click Rich Adamantite Deposit##181569+ |notinsticky
|tip They look like dark blue mineral deposits along the path. |notinsticky
|tip Enter caves along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 24 Adamantite Ore##23425 |n |notinsticky
|tip Smelt the ore at a forge. |notinsticky
collect 12 Adamantite Bar##23446 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip You will need at least 325 Mining skill to gather regular veins and 350 skill to gather rich veins. |notinsticky
'|complete skill("Jewelcrafting") >= 350 |only if default |or
'|complete skill("Jewelcrafting") >= 355 |only if Draenei |or
step
label "Collect_Adamantite_Powder_Total"
map Nagrand/0
path follow smart; loop on; ants curved; dist 30
path	49.90,71.01	48.62,71.28	48.51,75.60	46.76,77.91	42.77,74.39
path	42.08,76.76	41.94,80.24	41.11,84.55	38.45,83.23	36.21,82.30
path	33.57,82.12	31.13,80.54	28.19,78.49	27.67,72.30	28.58,69.31
path	28.20,63.62	27.06,62.92	26.75,57.07	23.44,56.18	20.07,55.07
path	19.35,47.46	20.31,41.40	21.27,38.46	23.05,33.49	26.76,32.99
path	31.77,28.76	31.71,24.26	30.40,20.66	35.78,15.50	36.87,18.62
path	39.06,20.24	41.69,21.71	42.81,19.43	50.53,20.11	54.00,21.00
path	56.63,24.36	60.66,33.11	64.21,35.14	66.06,36.31	66.14,32.27
path	67.70,35.36	70.24,37.57	74.08,37.81	72.33,43.08	73.43,46.30
path	73.01,50.47	72.77,56.93	74.94,58.55	71.99,61.95	72.67,64.73
path	72.21,67.00	71.71,71.30	72.96,76.49	70.91,75.13	68.49,75.92
path	66.66,79.00	63.17,76.97	61.93,79.13	58.74,80.27	56.19,79.78
path	54.59,81.99	51.75,79.79	49.42,82.67	47.62,81.24	48.39,79.11
click Adamantite Deposit##181556+ |notinsticky
click Rich Adamantite Deposit##181569+ |notinsticky
|tip They look like dark blue mineral deposits along the path. |notinsticky
|tip Enter caves along the path. |notinsticky
|tip Track them on your minimap with "Find Minerals". |notinsticky
collect 40 Adamantite Powder##24243 |or
|tip Prospect them from Adamantite Ore with Jewelcrafting or purchase them from the auction house. |notinsticky
|tip You will need at least 325 Mining skill to gather regular veins and 350 skill to gather rich veins. |notinsticky
'|complete skill("Jewelcrafting") >= 335 |only if default |or
'|complete skill("Jewelcrafting") >= 340 |only if Draenei |or
step
label "Collect_Mercurial_Stone_Total"
collect Mercurial Stone##31080 |or
|tip These are created by Alchemists and required to be present in your inventory to transmute Mercurial Adamantite. |notinsticky
|tip Crafting one requires 1 Primal Earth, 1 Primal Life, and 1 Primal Mana. |notinsticky
|tip Have an Alchemist craft one for you or purchase one from the auction house. |notinsticky
'|complete skill("Jewelcrafting") >= 335 |only if default |or
'|complete skill("Jewelcrafting") >= 340 |only if Draenei |or
step
label "Begin_Profession_Leveling_Outland"
map Hellfire Peninsula/0
path follow smart; loop on; ants curved; dist 30
path	61.18,53.16	59.42,53.54	56.91,53.92	54.90,54.86	53.18,55.25
path	51.34,55.20	49.90,55.60	49.04,57.45	50.16,60.83	49.02,60.92
path	47.44,58.77	46.76,60.05	46.20,62.02	47.37,63.98	47.83,65.81
path	47.16,66.47	45.79,66.60	44.21,65.76	41.71,62.02	40.00,64.07
path	39.07,67.14	37.06,68.58	35.58,67.87	34.61,66.03	35.33,62.85
path	35.81,58.67	35.29,58.94	32.35,61.33	30.85,59.67	29.71,63.05
path	29.26,65.43	27.21,66.94	27.80,69.02	30.66,71.05	30.28,73.48
path	29.34,78.32	28.78,80.65	26.73,79.28	25.47,77.69	25.43,73.63
path	26.11,68.83	23.56,68.58	22.88,67.22	23.04,64.10	23.13,61.46
path	23.99,59.63	25.37,57.94	26.67,56.30	28.01,52.46	26.17,52.80
path	22.27,53.94	20.01,54.64	18.67,53.50	17.72,54.20	16.52,56.20
path	16.24,60.79	15.43,63.53	13.94,63.05	12.48,60.03	11.43,57.48
path	9.19,53.83	7.40,50.44	8.67,48.71	11.35,46.39	11.48,40.72
path	11.84,36.43	12.94,35.24	15.02,37.15	18.23,39.09	18.73,43.72
path	20.37,43.29	22.88,44.31	25.01,44.71	26.26,42.90	27.05,39.10
path	27.99,35.60	30.10,33.23	32.56,33.16	34.21,32.05	34.96,28.98
path	36.33,30.40	34.65,39.54	34.51,46.14	35.32,48.06	38.11,52.58
path	39.16,52.09	40.60,52.56	42.91,54.76	45.15,55.66	46.32,54.44
path	46.57,52.82	45.70,51.11	43.85,48.65	41.20,45.62	38.61,43.47
path	38.32,39.65	39.38,34.88	39.54,31.73	39.45,28.32	41.05,28.70
path	44.26,31.10	47.36,29.11	49.58,28.68	52.45,22.67	53.60,25.94
path	55.01,30.04	52.77,31.72	47.83,36.33	46.62,44.84	50.12,49.28
path	54.39,48.02	62.02,47.32
click Fel Iron Deposit##181555+
|tip They look like green mineral clusters around this path.
|tip Enter caves along the path.
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
collect 30 Golden Draenite##23112 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Thorium Ore, Fel Iron Ore, and Adamantite Ore with Jewelcrafting.
|tip You can cut any low level gem for points.
'|complete skill("Jewelcrafting") >= 320 |only if default |or
'|complete skill("Jewelcrafting") >= 325 |only if Draenei |or
step
create 30 Brilliant Golden Draenite##28938,Jewelcrafting,320 |only if default |or
create 30 Brilliant Golden Draenite##28938,Jewelcrafting,325 |only if Draenei |or
|tip You can cut any low level gem for points.
step
talk Tatiana##18774
|tip Inside the building.
Learn Glinting Flame Spessarite |learn Glinting Flame Spessarite##28914 |goto Hellfire Peninsula/0 54.63,63.68
step
map Hellfire Peninsula/0
path follow smart; loop on; ants curved; dist 30
path	61.18,53.16	59.42,53.54	56.91,53.92	54.90,54.86	53.18,55.25
path	51.34,55.20	49.90,55.60	49.04,57.45	50.16,60.83	49.02,60.92
path	47.44,58.77	46.76,60.05	46.20,62.02	47.37,63.98	47.83,65.81
path	47.16,66.47	45.79,66.60	44.21,65.76	41.71,62.02	40.00,64.07
path	39.07,67.14	37.06,68.58	35.58,67.87	34.61,66.03	35.33,62.85
path	35.81,58.67	35.29,58.94	32.35,61.33	30.85,59.67	29.71,63.05
path	29.26,65.43	27.21,66.94	27.80,69.02	30.66,71.05	30.28,73.48
path	29.34,78.32	28.78,80.65	26.73,79.28	25.47,77.69	25.43,73.63
path	26.11,68.83	23.56,68.58	22.88,67.22	23.04,64.10	23.13,61.46
path	23.99,59.63	25.37,57.94	26.67,56.30	28.01,52.46	26.17,52.80
path	22.27,53.94	20.01,54.64	18.67,53.50	17.72,54.20	16.52,56.20
path	16.24,60.79	15.43,63.53	13.94,63.05	12.48,60.03	11.43,57.48
path	9.19,53.83	7.40,50.44	8.67,48.71	11.35,46.39	11.48,40.72
path	11.84,36.43	12.94,35.24	15.02,37.15	18.23,39.09	18.73,43.72
path	20.37,43.29	22.88,44.31	25.01,44.71	26.26,42.90	27.05,39.10
path	27.99,35.60	30.10,33.23	32.56,33.16	34.21,32.05	34.96,28.98
path	36.33,30.40	34.65,39.54	34.51,46.14	35.32,48.06	38.11,52.58
path	39.16,52.09	40.60,52.56	42.91,54.76	45.15,55.66	46.32,54.44
path	46.57,52.82	45.70,51.11	43.85,48.65	41.20,45.62	38.61,43.47
path	38.32,39.65	39.38,34.88	39.54,31.73	39.45,28.32	41.05,28.70
path	44.26,31.10	47.36,29.11	49.58,28.68	52.45,22.67	53.60,25.94
path	55.01,30.04	52.77,31.72	47.83,36.33	46.62,44.84	50.12,49.28
path	54.39,48.02	62.02,47.32
click Fel Iron Deposit##181555+
|tip They look like green mineral clusters around this path.
|tip Enter caves along the path.
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
collect 7 Flame Spessarite##21929 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Thorium Ore, Fel Iron Ore, and Adamantite Ore with Jewelcrafting.
|tip You can cut Flame Spessarite, Blood Garnet, Deep Peridot, and Azure Moonstone for points.
'|complete skill("Jewelcrafting") >= 325 |only if default |or
'|complete skill("Jewelcrafting") >= 330 |only if Draenei |or
step
create 7 Glinting Flame Spessarite##28914,Jewelcrafting,325 |only if default |or
create 7 Glinting Flame Spessarite##28914,Jewelcrafting,330 |only if Draenei |or
|tip You can cut Flame Spessarite, Blood Garnet, Deep Peridot, and Azure Moonstone for points.
step
talk Tatiana##18774
|tip Inside the building.
Train Mercurial Adamantite |learn Mercurial Adamantite##38068 |goto 54.63,63.68
stickystart "Collect_Adamantite_Powder_335"
stickystart "Collect_Mercurial_Stone"
step
label "Collect_Primal_Earth_335"
map Nagrand/0
path follow smart; loop off; ants curved; dist 30
path	46.19,77.20	41.98,78.72	40.31,82.83	32.13,80.25	29.34,79.24
path	28.40,73.85	28.94,66.76	28.17,63.58
kill Shattered Rumbler##17157+
|tip Follow the path, killing any that you see.
use the Mote of Earth##22573
|tip Combine 10 Motes of Earth into 1 Primal Earth.
collect 12 Primal Earth##22452 |or
|tip Farm them with Mining or purchase them from the auction house.
'|goto Nagrand/0 28.17,63.58 < 30 |c |noway
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 335 |only if default |or
'|complete skill("Jewelcrafting") >= 340 |only if Draenei |or
step
map Nagrand/0
path follow smart; loop off; ants curved; dist 30
path	28.17,63.58	28.94,66.76	28.40,73.85	29.34,79.24	32.13,80.25
path	40.31,82.83	41.98,78.72	46.19,77.20
kill Shattered Rumbler##17157+
|tip Follow the path, killing any that you see.
use the Mote of Earth##22573
|tip Combine 10 Motes of Earth into 1 Primal Earth.
collect 12 Primal Earth##22452 |or
|tip Farm them with Mining or purchase them from the auction house.
'|goto Nagrand/0 46.19,77.20 < 30 |c |noway |next "Collect_Primal_Earth_335"
'|complete skill("Jewelcrafting") >= 335 |only if default |or
'|complete skill("Jewelcrafting") >= 340 |only if Draenei |or
step
label "Collect_Adamantite_Powder_335"
map Nagrand/0
path follow smart; loop on; ants curved; dist 30
path	49.90,71.01	48.62,71.28	48.51,75.60	46.76,77.91	42.77,74.39
path	42.08,76.76	41.94,80.24	41.11,84.55	38.45,83.23	36.21,82.30
path	33.57,82.12	31.13,80.54	28.19,78.49	27.67,72.30	28.58,69.31
path	28.20,63.62	27.06,62.92	26.75,57.07	23.44,56.18	20.07,55.07
path	19.35,47.46	20.31,41.40	21.27,38.46	23.05,33.49	26.76,32.99
path	31.77,28.76	31.71,24.26	30.40,20.66	35.78,15.50	36.87,18.62
path	39.06,20.24	41.69,21.71	42.81,19.43	50.53,20.11	54.00,21.00
path	56.63,24.36	60.66,33.11	64.21,35.14	66.06,36.31	66.14,32.27
path	67.70,35.36	70.24,37.57	74.08,37.81	72.33,43.08	73.43,46.30
path	73.01,50.47	72.77,56.93	74.94,58.55	71.99,61.95	72.67,64.73
path	72.21,67.00	71.71,71.30	72.96,76.49	70.91,75.13	68.49,75.92
path	66.66,79.00	63.17,76.97	61.93,79.13	58.74,80.27	56.19,79.78
path	54.59,81.99	51.75,79.79	49.42,82.67	47.62,81.24	48.39,79.11
click Adamantite Deposit##181556+
|tip They look like light blue mineral clusters around this path.
click Rich Adamantite Deposit##181569+
|tip They look like dark blue mineral clusters around this path.
|tip Enter caves along the path.
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
collect Adamantite Ore##23425 |n
collect 48 Adamantite Powder##24243 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can also be Prospected from Adamantite Ore with Jewelcrafting.
'|complete skill("Jewelcrafting") >= 335 |only if default |or
'|complete skill("Jewelcrafting") >= 340 |only if Draenei |or
step
label "Collect_Mercurial_Stone"
collect Mercurial Stone##31080 |or
|tip These are created by Alchemists and required to be present in your inventory to transmute Mercurial Adamantite.
|tip Crafting one requires 1 Primal Earth, 1 Primal Life, and 1 Primal Mana.
|tip Have an Alchemist craft one for you or purchase one from the auction house.
'|complete skill("Jewelcrafting") >= 335 |only if default |or
'|complete skill("Jewelcrafting") >= 340 |only if Draenei |or
step
create 12 Mercurial Adamantite##38068,Jewelcrafting,12 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Jewelcrafting") >= 335 |only if default |or
'|complete skill("Jewelcrafting") >= 340 |only if Draenei |or
step
create 1 Mercurial Adamantite##38068,Jewelcrafting,335 |only if default |or
create 1 Mercurial Adamantite##38068,Jewelcrafting,340 |only if Draenei |or
|tip Save these, you will need them for future steps.
step
talk Tatiana##18774
|tip Inside the building.
Learn Sovereign Shadow Draenite |learn Sovereign Shadow Draenite##28936 |goto Hellfire Peninsula/0 54.63,63.68
step
map Hellfire Peninsula/0
path follow smart; loop on; ants curved; dist 30
path	61.18,53.16	59.42,53.54	56.91,53.92	54.90,54.86	53.18,55.25
path	51.34,55.20	49.90,55.60	49.04,57.45	50.16,60.83	49.02,60.92
path	47.44,58.77	46.76,60.05	46.20,62.02	47.37,63.98	47.83,65.81
path	47.16,66.47	45.79,66.60	44.21,65.76	41.71,62.02	40.00,64.07
path	39.07,67.14	37.06,68.58	35.58,67.87	34.61,66.03	35.33,62.85
path	35.81,58.67	35.29,58.94	32.35,61.33	30.85,59.67	29.71,63.05
path	29.26,65.43	27.21,66.94	27.80,69.02	30.66,71.05	30.28,73.48
path	29.34,78.32	28.78,80.65	26.73,79.28	25.47,77.69	25.43,73.63
path	26.11,68.83	23.56,68.58	22.88,67.22	23.04,64.10	23.13,61.46
path	23.99,59.63	25.37,57.94	26.67,56.30	28.01,52.46	26.17,52.80
path	22.27,53.94	20.01,54.64	18.67,53.50	17.72,54.20	16.52,56.20
path	16.24,60.79	15.43,63.53	13.94,63.05	12.48,60.03	11.43,57.48
path	9.19,53.83	7.40,50.44	8.67,48.71	11.35,46.39	11.48,40.72
path	11.84,36.43	12.94,35.24	15.02,37.15	18.23,39.09	18.73,43.72
path	20.37,43.29	22.88,44.31	25.01,44.71	26.26,42.90	27.05,39.10
path	27.99,35.60	30.10,33.23	32.56,33.16	34.21,32.05	34.96,28.98
path	36.33,30.40	34.65,39.54	34.51,46.14	35.32,48.06	38.11,52.58
path	39.16,52.09	40.60,52.56	42.91,54.76	45.15,55.66	46.32,54.44
path	46.57,52.82	45.70,51.11	43.85,48.65	41.20,45.62	38.61,43.47
path	38.32,39.65	39.38,34.88	39.54,31.73	39.45,28.32	41.05,28.70
path	44.26,31.10	47.36,29.11	49.58,28.68	52.45,22.67	53.60,25.94
path	55.01,30.04	52.77,31.72	47.83,36.33	46.62,44.84	50.12,49.28
path	54.39,48.02	62.02,47.32
click Fel Iron Deposit##181555+
|tip They look like green mineral clusters around this path.
|tip Enter caves along the path.
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
collect 7 Shadow Draenite##23107 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Thorium Ore, Fel Iron Ore, and Adamantite Ore with Jewelcrafting.
|tip You can cut Flame Spessarite, Shadow Draenite, and Golden Draenite for points.
'|complete skill("Jewelcrafting") >= 340 |only if default |or
'|complete skill("Jewelcrafting") >= 345 |only if Draenei |or
step
create 7 Sovereign Shadow Draenite##28936,Jewelcrafting,340 |only if default |or
create 7 Sovereign Shadow Draenite##28936,Jewelcrafting,345 |only if Draenei |or
|tip You can cut Flame Spessarite, Shadow Draenite, and Golden Draenite for points.
step
talk Tatiana##18774
|tip Inside the building.
Train Heavy Adamantite Ring |learn Heavy Adamantite Ring##31052 |goto 54.63,63.68
step
map Nagrand/0
path follow smart; loop on; ants curved; dist 30
path	49.90,71.01	48.62,71.28	48.51,75.60	46.76,77.91	42.77,74.39
path	42.08,76.76	41.94,80.24	41.11,84.55	38.45,83.23	36.21,82.30
path	33.57,82.12	31.13,80.54	28.19,78.49	27.67,72.30	28.58,69.31
path	28.20,63.62	27.06,62.92	26.75,57.07	23.44,56.18	20.07,55.07
path	19.35,47.46	20.31,41.40	21.27,38.46	23.05,33.49	26.76,32.99
path	31.77,28.76	31.71,24.26	30.40,20.66	35.78,15.50	36.87,18.62
path	39.06,20.24	41.69,21.71	42.81,19.43	50.53,20.11	54.00,21.00
path	56.63,24.36	60.66,33.11	64.21,35.14	66.06,36.31	66.14,32.27
path	67.70,35.36	70.24,37.57	74.08,37.81	72.33,43.08	73.43,46.30
path	73.01,50.47	72.77,56.93	74.94,58.55	71.99,61.95	72.67,64.73
path	72.21,67.00	71.71,71.30	72.96,76.49	70.91,75.13	68.49,75.92
path	66.66,79.00	63.17,76.97	61.93,79.13	58.74,80.27	56.19,79.78
path	54.59,81.99	51.75,79.79	49.42,82.67	47.62,81.24	48.39,79.11
click Adamantite Deposit##181556+
|tip They look like light blue mineral clusters around this path.
click Rich Adamantite Deposit##181569+
|tip They look like dark blue mineral clusters around this path.
|tip Enter caves along the path.
|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
collect 24 Adamantite Ore##23425 |n
|tip Smelt the ore at a forge.
collect 12 Adamantite Bar##23446 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 350 |only if default |or
'|complete skill("Jewelcrafting") >= 355 |only if Draenei |or
step
create 12 Heavy Adamantite Ring##31052,Jewelcrafting,350 |only if default |or
create 12 Heavy Adamantite Ring##31052,Jewelcrafting,355 |only if Draenei |or
step
Reach Level 68 |ding 68
|tip You must be at least level 68 to train Grand Master professions in Northrend.
|tip Use the leveling guides to accomplish this.
step
talk Timothy Jones##28701
|tip Inside the building.
Train Grand Master Jewelcrafting |skillmax Jewelcrafting,450 |goto Dalaran/1 40.67,35.35
step
collect 65 Chalcedony##36923 |or
|tip You can use any combination of Bloodstone, Chalcedony, Dark Jade, Huge Citrine, Shadow Crystal, or Sun Crystal.
|tip 5 of these gems must be either Bloodstone, Chalcedony, Huge Citrine, or Sun Crystals.
|tip Pick whichever is cheapest and skip this step if necessary.
'|complete skill("Jewelcrafting") >= 400 |only if default |or
'|complete skill("Jewelcrafting") >= 405 |only if Draenei |or
step
_<Create any uncommon Northrend gem>_
|tip Train the gems of your choosing from the trainer.
|tip For the next 45 points, continue training new gems as necessary to gain points.
|tip Open your Jewelcrafting panel and create any trained gem of your choice.
Create 60 Uncommon Northrend Gems |skill Jewelcrafting,395
|tip You may need to make more or less of these.
|tip Each additional gem will require on uncut gem of the base type.
step
talk Timothy Jones##28701
|tip Inside the building.
Train Crystal Chalcedony Amulet |learn Crystal Chalcedony Amulet##58142 |goto Dalaran/1 40.67,35.35
|tip You can also learn Bloodstone Band, Crystal Citrine Necklace, or Sun Rock Ring and make those.
step
collect 5 Chalcedony##36923 |or
|tip You collected these in a previous step.
|tip 5 of these gems must be either Bloodstone, Chalcedony, Huge Citrine, or Sun Crystals.
|tip Pick whichever is cheapest and skip this step if necessary.
'|complete skill("Jewelcrafting") >= 400 |only if default |or
'|complete skill("Jewelcrafting") >= 405 |only if Draenei |or
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	69.56,57.80	70.04,60.18	72.14,60.08	72.84,57.52	74.78,55.78
path	72.60,54.62	69.13,55.36
kill Lifeblood Elemental##29124+
collect 10 Crystallized Earth##37701 |or
|tip Farm them from earth elementals or purchase them from the auction house.
|tip You can also farm them from Mining nodes with Northrend Mining guides.
'|complete skill("Jewelcrafting") >= 400 |only if default |or
'|complete skill("Jewelcrafting") >= 405 |only if Draenei |or
step
create 5 Crystal Chalcedony Amulet##58142,Jewelcrafting,400
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	69.56,57.80	70.04,60.18	72.14,60.08	72.84,57.52	74.78,55.78
path	72.60,54.62	69.13,55.36
use Crystallized Earth##37701
|tip Combine 10 Crystallized Earth into 1 Eternal Earth.
kill Lifeblood Elemental##29124+
collect 46 Eternal Earth##35624 |or
|tip Farm them from earth elementals or purchase them from the auction house.
|tip You can also farm them from Mining nodes with Northrend Mining guides.
|tip You can also collect 23 Eternal Earth and 23 Eternal Shadow and make Shadowmight Rings.
|tip These totals are approximate.
|tip You may need more or less of these.
'|complete skill("Jewelcrafting") >= 420 |only if default |or
'|complete skill("Jewelcrafting") >= 425 |only if Draenei |or
step
talk Timothy Jones##28701
|tip Inside the building.
Train Stoneguard Band |learn Stoneguard Band##58145 |goto Dalaran/1 40.67,35.35
|tip You can also learn Shadowmight Ring and make those.
step
create 23 Stoneguard Band##58145,Jewelcrafting,420
|tip You may need more or less of these.
|tip Each additional Stoneguard Band requires 2 Eternal Earth.
|tip Each additional Shadowmight Ring requies 1 Eternal Earth and 1 Eternal Shadow.
step
_<Create any Northrend meta gem>_
|tip Train the meta gems of your choosing from the trainer.
|tip For the next 30 points, continue training new gems as necessary to gain points.
|tip Open your Jewelcrafting panel and create any trained meta gem of your choice.
|tip This is generally the best way to finish, as you can sell popular gems to recover gold.
Create Northrend Meta Gems |skill Jewelcrafting,450
|tip Each additional meta gem will require on uncut gem of the base type.
|tip Alternatively, you can make Icy Prisms on cooldown for 1 Frozen Orb, 1 Chalcedony, 1 Dark Jade, and 1 Shadow Crystal.
|tip You can also make Dream Signets for 1 Titanium Bar, 1 Forest Emerald, and 1 Dream Shard.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Cataclysm-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Jewelcrafting |confirm |next "Begin_Jewelcrafting_Leveling_Cataclysm" |or
'|complete skill("Jewelcrafting") >= 450 |only if default |or |next "Begin_Jewelcrafting_Leveling_Cataclysm"
'|complete skill("Jewelcrafting") >= 465 |only if Draenei |or |next "Begin_Jewelcrafting_Leveling_Cataclysm"
stickystart "Collect_Hessonite_Total"
stickystart "Collect_Volatile_Fire_Total"
stickystart "Collect_Volatile_Air_Total"
stickystart "Collect_Nightstone_Total"
stickystart "Collect_Ocean_Sapphire_Total"
stickystart "Collect_Shadowspirit_Total"
step
collect 30 Jasper##52182
|tip Farm them with Mining or purchase them from the Auction House.
|tip Jasper can be mined from Rich Pyrite and Obsidium Deposits, as well as Elementium Veins.
|tip It can also be Prospected from Pyrite, Elementium or Obsidium Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 468
step
label "Collect_Hessonite_Total"
collect 34 Hessonite##52181
|tip Farm them with Mining or purchase them from the Auction House.
|tip Hessonite can be mined from Rich Pyrite and Obsidium Deposits, as well as Elementium Veins.
|tip It can also be Prospected from Pyrite, Elementium or Obsidium Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 485
step
label "Collect_Nightstone_Total"
collect 40 Nightstone##52180
|tip Farm them with Mining or purchase them from the Auction House.
|tip Nightstone can be mined from Rich Pyrite and Obsidium Deposits, as well as Elementium Veins.
|tip It can also be Prospected from Pyrite, Elementium or Obsidium Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 500
step
label "Collect_Shadowspirit_Total"
collect 20 Shadowspirit Diamond##52303
|tip Transmute them with Alchemy or purchase them from the Auction House.
|tip Each Shadowspirit Diamond requires 3 Alicite, 3 Nightstone, 3 Zephyrite, 3 Carnelian, 3 Hessonite and 3 Jasper to make.
|only if skill("Jewelcrafting") < 520
step
label "Collect_Ocean_Sapphire_Total"
collect 25 Ocean Sapphire##52191
|tip Farm them with Mining or purchase them from the Auction House.
|tip Ocean Sapphires can be mined from Rich Pyrite and Obsidium Deposits, as well as Elementium Veins.
|tip It can also be Prospected from Pyrite, Elementium or Obsidium Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 525
step
label "Collect_Volatile_Air_Total"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	39.56,47.29	41.39,48.90	41.53,46.16	39.76,44.61
kill Storm Vortex##47728+
collect 40 Volatile Air##52328 |or
|tip Or purchase them from the auction house |notinsticky
|only if skill("Jewelcrafting") < 525
step
label "Collect_Volatile_Fire_Total"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 20 Volatile Fire##52325
|tip Farm them from elementals or purchase them from the Auction House.
|only if skill("Jewelcrafting") < 525
step
label "Begin_Jewelcrafting_Leveling_Cataclysm"
talk Theresa Denman##44582
Train Jewelcrafting |skillmax Jewelcrafting,525 |goto Stormwind City/0 63.48,61.84
|tip You must be at least level 75.
step
talk Theresa Denman##44582
learn Jasper Ring##73494 |goto 63.48,61.84
step
talk Terrance Denman##44583
buy 70 Jeweler's Setting##52188 |goto 63.20,61.68
|only if skill("Jewelcrafting") < 525
step
collect 18 Jasper##52182
|tip Farm them with Mining or purchase them from the Auction House.
|tip Jasper can be mined from Rich Pyrite and Obsidium Deposits, as well as Elementium Veins.
|tip It can also be Prospected from Pyrite, Elementium or Obsidium Ore with Jewelcrafting.
'|complete skill("Jewelcrafting") >= 468 |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 18 Jasper Ring>_
|tip You may need to craft a few more.
Reach 468 Jewelcrafting |skill Jewelcrafting,468
step
talk Theresa Denman##44582
learn Hessonite Band##73495 |goto 63.48,61.84
step
collect 34 Hessonite##52181
|tip Farm them with Mining or purchase them from the Auction House.
|tip Hessonite can be mined from Rich Pyrite and Obsidium Deposits, as well as Elementium Veins.
|tip It can also be Prospected from Pyrite, Elementium or Obsidium Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 485
step
Open Your Jewelcrafting Crafting Panel:
_<Create 17 Hessonite Band>_
Reach 485 Jewelcrafting |skill Jewelcrafting,485
step
talk Theresa Denman##44582
learn Nightstone Choker##73497 |goto 63.48,61.84
step
collect 40 Nightstone##52180
|tip Farm them with Mining or purchase them from the Auction House.
|tip Nightstone can be mined from Rich Pyrite and Obsidium Deposits, as well as Elementium Veins.
|tip It can also be Prospected from Pyrite, Elementium or Obsidium Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 500
step
Open Your Jewelcrafting Crafting Panel:
_<Create 15 Nightstone Choker>_
|tip You may need to craft a few more.
Reach 500 Jewelcrafting |skill Jewelcrafting,500
step
Collect #4# Illustrious Jewelcrafter's Token |complete curcount(361) >= 4
|tip It will take 4 days to collect these.
|tip Use the "Jewelcrafting Daily Guide" to complete dailies.
|only if skill("Jewelcrafting") < 520
step
talk Isabel Jones##50480
buy 1 Design: Forlorn Shadowspirit Diamond##52445 |goto 63.77,61.51
|only if skill("Jewelcrafting") < 520
step
use the Design: Forlorn Shadowspirit Diamond##52445
learn Forlorn Shadowspirit Diamond##73476
step
collect 20 Shadowspirit Diamond##52303
|tip Transmute them with Alchemy or purchase them from the Auction House.
|tip Each Shadowspirit Diamond requires 3 Alicite, 3 Nightstone, 3 Zephyrite, 3 Carnelian, 3 Hessonite and 3 Jasper to make.
|only if skill("Jewelcrafting") < 520
step
Open Your Jewelcrafting Crafting Panel:
_<Create 20 Forlorn Shadowspirit Diamond>_
Reach 520 Jewelcrafting |skill Jewelcrafting,520
step
talk Theresa Denman##44582
learn Vicious Sapphire Necklace##99542 |goto 63.48,61.84
stickystart "Collect_Volatile_Air_525"
stickystart "Collect_Volatile_Fire_525"
step
collect 25 Ocean Sapphire##52191
|tip Farm them with Mining or purchase them from the Auction House.
|tip Ocean Sapphires can be mined from Rich Pyrite and Obsidium Deposits, as well as Elementium Veins.
|tip It can also be Prospected from Pyrite, Elementium or Obsidium Ore with Jewelcrafting.
|only if skill("Jewelcrafting") < 525
step
label "Collect_Volatile_Air_525"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	39.56,47.29	41.39,48.90	41.53,46.16	39.76,44.61
kill Storm Vortex##47728+
collect 40 Volatile Air##52328 |or
|tip Or purchase them from the auction house |notinsticky
|only if skill("Jewelcrafting") < 525
step
label "Collect_Volatile_Fire_525"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 20 Volatile Fire##52325
|tip Farm them from elementals or purchase them from the Auction House.
|only if skill("Jewelcrafting") < 525
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Vicious Sapphire Necklace>_
Reach 525 Jewelcrafting |skill Jewelcrafting,525
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
talk Simon Tanner##5564
|tip Inside the building.
Train Apprentice Leatherworking |skillmax Leatherworking,75 |goto Stormwind City/0 71.68,62.99
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Leatherworking |confirm |next "Begin_Profession_Leveling_Classic" |or
'|complete skill("Leatherworking") >= 300 |or |next "Begin_Profession_Leveling_Classic"
stickystart "Collect_Light_Leather_Total"
stickystart "Collect_Medium_Leather_Total"
stickystart "Collect_Heavy_Hide_Total"
stickystart "Collect_Heavy_Leather_Total"
stickystart "Collect_Thick_Leather_Total"
stickystart "Collect_Rugged_Leather_Total"
step
kill Stonetusk Boar##113+
|tip Skin their corpses.
collect 57 Ruined Leather Scraps##2934 |or |goto Elwynn Forest 41.58,86.96
|tip Farm them with Skinning or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Leatherworking") >= 20 |or
step
label "Collect_Light_Leather_Total"
kill Stonetusk Boar##113+ |notinsticky
|tip Skin their corpses. |notinsticky
collect 375 Light Leather##2318 |goto Elwynn Forest 41.58,86.96 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Leatherworking") >= 125 |or
step
label "Collect_Medium_Leather_Total"
Kill Yeti enemies around this area |notinsticky
|tip Skin their corpses. |notinsticky
|tip You can find more inside the cave. |notinsticky
collect 352 Medium Leather##2319 |goto Hillsbrad Foothills 46.64,54.41 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip You will need level 155 Skinning to collect these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Leatherworking") >= 155 |or
step
label "Collect_Heavy_Hide_Total"
Kill enemies around this area |notinsticky
|tip Skin their corpses. |notinsticky
collect 20 Heavy Hide##4235 |goto The Hinterlands 16.19,50.97 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip You will need level 205 Skinning to collect these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Leatherworking") >= 171 |or
step
label "Collect_Heavy_Leather_Total"
Kill enemies around this area |notinsticky
|tip Only beast enemies will be skinnable. |notinsticky
|tip Skin their corpses. |notinsticky
collect 215 Heavy Leather##4234 |goto Dustwallow Marsh 40.73,58.37 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip You will need level 185 Skinning to collect these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
You can find more around: |notinsticky
[43.35,50.06]
[40.42,41.57]
'|complete skill("Leatherworking") >= 200 |or
step
label "Collect_Thick_Leather_Total"
Kill Ravasaur enemies around this area |notinsticky
|tip Skin their corpses. |notinsticky
collect 739 Thick Leather##4304 |goto Un'Goro Crater 67.37,72.59 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip You will need level 250 Skinning to collect these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
You can find more around: |notinsticky
[65.75,64.16]
[70.21,55.33]
'|complete skill("Leatherworking") >= 260 |or
step
label "Collect_Rugged_Leather_Total"
Kill Ice Thistle enemies around this area |notinsticky
|tip You can find more inside the cave. |notinsticky
|tip Skin their corpses. |notinsticky
collect 344 Rugged Leather##8170 |goto Winterspring 64.81,54.76 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip You will need level 275 Skinning to collect these. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
You can find more inside the cave at [66.87,54.64] |notinsticky
'|complete skill("Leatherworking") >= 300 |or
step
label "Begin_Profession_Leveling_Classic"
kill Stonetusk Boar##113+
|tip Skin their corpses.
collect 57 Ruined Leather Scraps##2934 |or |goto Elwynn Forest 41.58,86.96
|tip Farm them with Skinning or purchase them from the auction house.
|tip You can also use 20 Light Leather to make 20 Light Armor Kits.
'|complete skill("Leatherworking") >= 20 |or
step
create 19 Light Leather##2881,Leatherworking,20
|tip Save at least 19 of these; you will need them for future steps.
|tip You can also use 20 Light Leather to make 20 Light Armor Kits.
step
kill Stonetusk Boar##113+
|tip Skin their corpses.
collect 40 Light Leather##2318 |or |goto Elwynn Forest 41.58,86.96
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 45 |or
step
create 40 Light Armor Kit##2152,Leatherworking,45
|tip You may need to create more or less of these.
|tip Each additional Light Armor Kit requires 1 Light Leather.
step
kill Stonetusk Boar##113+
|tip Skin their corpses.
collect 42 Light Leather##2318 |or |goto Elwynn Forest 41.58,86.96
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 55 |or
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 21 Coarse Thread##2320 |goto Stormwind City/0 71.57,62.76 |or
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
talk Simon Tanner##5564
|tip Inside the building.
Train Journeyman Leatherworking |skillmax Leatherworking,150 |goto Stormwind City/0 71.68,62.99
step
talk Simon Tanner##5564
|tip Inside the building.
Train Embossed Leather Gloves |learn Embossed Leather Gloves##3756 |goto Stormwind City/0 71.68,62.99
step
kill Stonetusk Boar##113+
|tip Skin their corpses.
collect 165 Light Leather##2318 |or |goto Elwynn Forest 41.58,86.96
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 100 |or
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 180 Coarse Thread##2320 |goto Stormwind City/0 71.57,62.76 |or
|tip Save these, you will need them for future steps.
'|complete skill("Leatherworking") >= 100 |or
step
create 55 Embossed Leather Gloves##3756,Leatherworking,100
|tip You may need to create more or less of these.
|tip Each additional Embossed Leather Glove requires 3 Light Leather and 2 Coarse Thread.
step
talk Simon Tanner##5564
|tip Inside the building.
Train Fine Leather Belt |learn Fine Leather Belt##3763 |goto Stormwind City/0 71.68,62.99
step
kill Stonetusk Boar##113+
|tip Skin their corpses.
collect 210 Light Leather##2318 |or |goto Elwynn Forest 41.58,86.96
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 125 |or
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 70 Coarse Thread##2320 |goto Stormwind City/0 71.57,62.76 |or
|tip You bought these in a previous step.
'|complete skill("Leatherworking") >= 125 |or
step
create 35 Fine Leather Belt##3763,Leatherworking,125
|tip You may need to create more or less of these.
|tip Each additional Fine Leather Belt requires 6 Light Leather and 2 Coarse Thread.
step
talk Simon Tanner##5564
|tip Inside the building.
Train Dark Leather Boots |learn Dark Leather Boots##2167 |goto Stormwind City/0 71.68,62.99
step
Kill Yeti enemies around this area
|tip Skin their corpses.
|tip You can find more inside the cave.
|tip You will need level 155 Skinning to collect these.
collect 72 Medium Leather##2319 |or |goto Hillsbrad Foothills 46.64,54.41
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 137 |or
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 36 Fine Thread##2321 |goto Stormwind City/0 71.57,62.76 |or 2
buy 18 Gray Dye##4340 |goto Stormwind City/0 71.57,62.76 |or 2
'|complete skill("Leatherworking") >= 137 |or
step
create 18 Dark Leather Boots##2167,Leatherworking,137
|tip You may need to create more or less of these.
|tip Each additional Dark Leather Boot requires 4 Medium Leather, 2 Fine Thread, and 1 Gray Dye.
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Simon Tanner##5564
|tip Inside the building.
Train Expert Leatherworking |skillmax Leatherworking,225 |goto Stormwind City/0 71.68,62.99
step
talk Simon Tanner##5564
|tip Inside the building.
Train Dark Leather Pants |learn Dark Leather Pants##7135 |goto Stormwind City/0 71.68,62.99
step
Kill Yeti enemies around this area
|tip Skin their corpses.
|tip You can find more inside the cave.
|tip You will need level 155 Skinning to collect these.
collect 240 Medium Leather##2319 |or |goto Hillsbrad Foothills 46.64,54.41
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 150 |or
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 20 Fine Thread##2321 |goto Stormwind City/0 71.57,62.76 |or 2
buy 20 Gray Dye##4340 |goto Stormwind City/0 71.57,62.76 |or 2
'|complete skill("Leatherworking") >= 150 |or
step
create 20 Dark Leather Pants##7135,Leatherworking,150
|tip You may need to create more or less of these.
|tip Each additional Dark Leather Pant requires 12 Medium Leather, 1 Fine Thread, and 1 Gray Dye.
step
talk Simon Tanner##5564
|tip Inside the building.
Train Heavy Leather |learn Heavy Leather##20649 |goto Stormwind City/0 71.68,62.99
step
Kill Yeti enemies around this area
|tip Skin their corpses.
|tip You can find more inside the cave.
|tip You will need level 155 Skinning to collect these.
collect 40 Medium Leather##2319 |or |goto Hillsbrad Foothills 46.64,54.41
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 155 |or
step
create 8 Heavy Leather##20649,Leatherworking,155
|tip You may need to create more or less of these.
|tip Each additional Heavy Leather requires 5 Medium Leather.
step
talk Simon Tanner##5564
|tip Inside the building.
Train Cured Heavy Hide |learn Cured Heavy Hide##3818 |goto Stormwind City/0 71.68,62.99
step
Kill enemies around this area
|tip Skin their corpses.
|tip You will need level 205 Skinning to collect these.
collect 20 Heavy Hide##4235 |or |goto The Hinterlands 16.19,50.97
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 171 |or
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 60 Salt##4289 |goto Stormwind City/0 71.57,62.76 |or
'|complete skill("Leatherworking") >= 171 |or
step
create 20 Cured Heavy Hide##3818,Leatherworking,20 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Leatherworking") >= 171 |or
step
create 1 Cured Heavy Hide##3818,Leatherworking,165
|tip Save at least 20 of these; you will need them for future steps.
|tip You may need to create more of these.
|tip Each additional Cured Heavy Hide requires 1 Heavy Hide and 3 Salt.
step
talk Simon Tanner##5564
|tip Inside the building.
Train Heavy Armor Kit |learn Heavy Armor Kit##3780 |goto Stormwind City/0 71.68,62.99
step
Kill enemies around this area
|tip Only beast enemies will be skinnable.
|tip Skin their corpses.
|tip You will need level 185 Skinning to collect these.
collect 95 Heavy Leather##4234 |or |goto Dustwallow Marsh 40.73,58.37
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around: |notinsticky
[43.35,50.06]
[40.42,41.57]
'|complete skill("Leatherworking") >= 180 |or
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 39 Fine Thread##2321 |goto Stormwind City/0 71.57,62.76 |or
|tip Save these, you will need them for future steps.
'|complete skill("Leatherworking") >= 180 |or
step
create 19 Heavy Armor Kit##3780,Leatherworking,180
|tip You may need to create more of these.
|tip Each additional Heavy Armor Kit requires 5 Heavy Leather and 1 Fine Thread.
step
talk Simon Tanner##5564
|tip Inside the building.
Train Barbaric Shoulders |learn Barbaric Shoulders##7151 |goto Stormwind City/0 71.68,62.99
stickystart "Collect_Cured_Heavy_Hide_190"
step
Kill enemies around this area
|tip Only beast enemies will be skinnable.
|tip Skin their corpses.
|tip You will need level 185 Skinning to collect these.
collect 80 Heavy Leather##4234 |or |goto Dustwallow Marsh 40.73,58.37
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around: |notinsticky
[43.35,50.06]
[40.42,41.57]
'|complete skill("Leatherworking") >= 190 |or
step
label "Collect_Cured_Heavy_Hide_190"
collect 10 Cured Heavy Hide##4236 |or
|tip You created these in a previous step.
'|complete skill("Leatherworking") >= 190 |or
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 20 Fine Thread##2321 |goto Stormwind City/0 71.57,62.76 |or
|tip You purchased these in a previous step.
'|complete skill("Leatherworking") >= 190 |or
step
create 10 Barbaric Shoulders##7151,Leatherworking,190
step
talk Simon Tanner##5564
|tip Inside the building.
Train Guardian Gloves |learn Guardian Gloves##7156 |goto Stormwind City/0 71.68,62.99
stickystart "Collect_Cured_Heavy_Hide_200"
step
Kill enemies around this area
|tip Only beast enemies will be skinnable.
|tip Skin their corpses.
|tip You will need level 185 Skinning to collect these.
collect 40 Heavy Leather##4234 |or |goto Dustwallow Marsh 40.73,58.37
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around: |notinsticky
[43.35,50.06]
[40.42,41.57]
'|complete skill("Leatherworking") >= 200 |or
step
label "Collect_Cured_Heavy_Hide_200"
collect 10 Cured Heavy Hide##4236 |or
|tip You created these in a previous step.
'|complete skill("Leatherworking") >= 200 |or
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 15 Silken Thread##4291 |goto Stormwind City/0 71.57,62.76 |or
|tip Save these, you will need them for future steps.
'|complete skill("Leatherworking") >= 200 |or
step
create 10 Guardian Gloves##7156,Leatherworking,200
step
talk Simon Tanner##5564
|tip Inside the building.
Train Thick Armor Kit |learn Thick Armor Kit##10487 |goto Stormwind City/0 71.68,62.99
step
Kill Ravasaur enemies around this area
|tip Skin their corpses.
|tip You will need level 250 Skinning to collect these.
collect 25 Thick Leather##4304 |or |goto Un'Goro Crater 67.37,72.59
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around: |notinsticky
[65.75,64.16]
[70.21,55.33]
'|complete skill("Leatherworking") >= 205 |or
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 5 Silken Thread##4291 |goto Stormwind City/0 71.57,62.76 |or
|tip You purchased these in a previous step.
'|complete skill("Leatherworking") >= 205 |or
step
create 5 Thick Armor Kit##10487,Leatherworking,205
step
Reach Level 35 |ding 35
|tip You must be at least this level before you can learn the next rank of this profession.
|tip Use the leveling guides to accomplish this.
step
talk Simon Tanner##5564
|tip Inside the building.
Train Artisan Leatherworking |skillmax Leatherworking,300 |goto Stormwind City/0 71.68,62.99
step
talk Simon Tanner##5564
|tip Inside the building.
Train Nightscape Headband |learn Nightscape Headband##10507 |goto Stormwind City/0 71.68,62.99
step
Kill Ravasaur enemies around this area
|tip Skin their corpses.
|tip You will need level 250 Skinning to collect these.
collect 200 Thick Leather##4304 |or |goto Un'Goro Crater 67.37,72.59
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around: |notinsticky
[65.75,64.16]
[70.21,55.33]
'|complete skill("Leatherworking") >= 235 |or
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 166 Silken Thread##4291 |goto Stormwind City/0 71.57,62.76 |or
|tip Save these, you will need them for future steps.
'|complete skill("Leatherworking") >= 235 |or
step
create 40 Nightscape Headband##10507,Leatherworking,235
|tip You may need to make more or less of these.
|tip Each additional Nightscape Headband requires 5 Thick Leather and 2 Silken Thread.
step
talk Simon Tanner##5564
|tip Inside the building.
Train Nightscape Pants |learn Nightscape Pants##10548 |goto Stormwind City/0 71.68,62.99
step
Kill Ravasaur enemies around this area
|tip Skin their corpses.
|tip You will need level 250 Skinning to collect these.
collect 210 Thick Leather##4304 |or |goto Un'Goro Crater 67.37,72.59
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around: |notinsticky
[65.75,64.16]
[70.21,55.33]
'|complete skill("Leatherworking") >= 250 |or
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 60 Silken Thread##4291 |goto Stormwind City/0 71.57,62.76 |or
|tip You purchased these in a previous step.
'|complete skill("Leatherworking") >= 250 |or
step
create 15 Nightscape Pants##10548,Leatherworking,250
step
talk Simon Tanner##5564
|tip Inside the building.
Train Nightscape Boots |learn Nightscape Boots##10558 |goto Stormwind City/0 71.68,62.99
step
Kill Ravasaur enemies around this area
|tip Skin their corpses.
|tip You will need level 250 Skinning to collect these.
collect 304 Thick Leather##4304 |or |goto Un'Goro Crater 67.37,72.59
|tip Farm them with Skinning or purchase them from the auction house.
You can find more around: |notinsticky
[65.75,64.16]
[70.21,55.33]
'|complete skill("Leatherworking") >= 260 |or
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 38 Heavy Silken Thread##8343 |goto Stormwind City/0 71.57,62.76 |or
|tip You purchased these in a previous step.
'|complete skill("Leatherworking") >= 260 |or
step
create 19 Nightscape Boots##10558,Leatherworking,265
|tip You may need to make more or less of these.
|tip Each additional Nightscape Boot requires 16 Thick Leather and 2 Silken Thread.
step
talk Simon Tanner##5564
|tip Inside the building.
Train Wicked Leather Bracers |learn Wicked Leather Bracers##19052 |goto Stormwind City/0 71.68,62.99
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 28 Black Dye##2325 |goto Stormwind City/0 71.57,62.76 |or 2
buy 28 Rune Thread##14341 |goto Stormwind City/0 71.57,62.76 |or 2
'|complete skill("Leatherworking") >= 290 |or
step
Kill Ice Thistle enemies around this area
|tip You can find more inside the cave.
|tip Skin their corpses.
|tip You will need level 275 Skinning to collect these.
collect 224 Rugged Leather##8170 |or |goto Winterspring 64.81,54.76
|tip Farm them with Skinning or purchase them from the auction house.
You can find more inside the cave at [66.87,54.64]
'|complete skill("Leatherworking") >= 290 |or
step
create 28 Wicked Leather Bracers##19052,Leatherworking,290
|tip You may need to make more or less of these.
|tip Each additional Wicked Leather Bracer requires 8 Rugged Leather, 1 Black Dye, and 1 Rune Thread.
step
talk Simon Tanner##5564
|tip Inside the building.
Train Wicked Leather Headband |learn Wicked Leather Headband##19071 |goto Stormwind City/0 71.68,62.99
step
Kill Ice Thistle enemies around this area
|tip You can find more inside the cave.
|tip Skin their corpses.
|tip You will need level 275 Skinning to collect these.
collect 120 Rugged Leather##8170 |or |goto Winterspring 64.81,54.76
|tip Farm them with Skinning or purchase them from the auction house.
You can find more inside the cave at [66.87,54.64]
'|complete skill("Leatherworking") >= 300 |or
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 10 Black Dye##2325 |goto Stormwind City/0 71.57,62.76 |or 2
buy 10 Rune Thread##14341 |goto Stormwind City/0 71.57,62.76 |or 2
'|complete skill("Leatherworking") >= 300 |or
step
create 10 Wicked Leather Headband##19071,Leatherworking,300
step
Reach Level 58 |ding 58
|tip You must be at least level 58 to train Master professions in Outland.
|tip Use the leveling guides to accomplish this.
step
talk Brumman##18771
Learn Master Leatherworking |skillmax Leatherworking,375 |goto Hellfire Peninsula/0 54.11,63.97
step
talk Brumman##18771
Train Knothide Armor Kit |learn Knothide Armor Kit##32456 |goto 54.11,63.97
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Burning Crusade-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Leatherworking |confirm |next "Begin_Profession_Leveling_Outland" |or
'|complete skill("Leatherworking") >= 375 |or |next "Begin_Profession_Leveling_Outland"
stickystart "Collect_Fel_Hide_Total"
stickystart "Collect_Thick_Clefthoof_Leather_Total"
step
map Netherstorm/0
path follow smart; loop on; ants curved; dist 30
path	43.61,57.06	45.22,57.65	47.41,56.58	48.25,54.31	48.18,51.86
path	46.52,51.17	45.58,49.75	43.63,50.57	43.29,52.27	43.66,54.99
path	44.85,56.21
Kill enemies around this area
|tip Only Beast enemies will be skinnable.
|tip Skin their corpses.
collect 1355 Knothide Leather##21887 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Leatherworking") >= 336 |or
step
label "Collect_Fel_Hide_Total"
map Netherstorm/0
path follow smart; loop on; ants curved; dist 30
path	55.33,60.50	58.09,60.46	58.98,58.47	61.66,59.15	63.22,59.54
path	65.48,61.63	66.93,63.05	63.63,64.45	61.98,62.72
kill Warp Chaser##18884+ |notinsticky
|tip Skin their corpses. |notinsticky
collect 24 Fel Hide##25707 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Leatherworking") >= 375 |or
step
label "Collect_Thick_Clefthoof_Leather_Total"
map Nagrand/0
path follow smart; loop on; ants curved; dist 30
path	44.28,26.55	43.25,29.59	45.88,33.29	47.54,38.47	50.14,51.61
path	52.51,54.52	54.09,50.75	54.25,48.06	55.98,45.01	51.01,39.01
path	50.63,31.76	46.12,27.60
Kill Clefthoof enemies around this area |notinsticky
|tip Skin their corpses. |notinsticky
collect 24 Thick Clefthoof Leather##25708 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Leatherworking") >= 370 |or
step
label "Begin_Profession_Leveling_Outland"
map Netherstorm/0
path follow smart; loop on; ants curved; dist 30
path	43.61,57.06	45.22,57.65	47.41,56.58	48.25,54.31	48.18,51.86
path	46.52,51.17	45.58,49.75	43.63,50.57	43.29,52.27	43.66,54.99
path	44.85,56.21
Kill enemies around this area
|tip Only Beast enemies will be skinnable.
|tip Skin their corpses.
collect 470 Knothide Leather##21887 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip Save at least 330 of these; you will need them for future steps.
|tip You can also make Wicked Leather Belts to 325.
|tip Each Wicked Leather Belt requires 14 Rugged Leather, 2 Black Dye, and 2 Rune Thread.
'|complete skill("Leatherworking") >= 325 |or
step
create 35 Knothide Armor Kit##32456,Leatherworking,325
|tip You may need to create more or less of these.
|tip Each additional Knothide Armor Kit requires 4 Knothide Leather.
|tip You can also make Wicked Leather Belts to 325.
|tip Each Wicked Leather Belt requires 14 Rugged Leather, 2 Black Dye, and 2 Rune Thread.
step
talk Brumman##18771
Train Heavy Knothide Leather |learn Heavy Knothide Leather##32455 |goto Hellfire Peninsula/0 54.11,63.97
step
collect 330 Knothide Leather##21887 |or
|tip You collected these in a previous step..
'|complete skill("Leatherworking") >= 335 |or
step
create 66 Heavy Knothide Leather##32455,Leatherworking,66 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Leatherworking") >= 336 |or
step
create 1 Heavy Knothide Leather##32455,Leatherworking,335
|tip Save at least 66 of these; you will need them for future steps.
|tip You may need to create more or less of these.
|tip Each additional Heavy Knothide Leather requires 5 Knothide Leather.
step
talk Brumman##18771
Train Thick Draenic Vest |learn Thick Draenic Vest##32473 |goto Hellfire Peninsula/0 54.11,63.97
step
collect 66 Knothide Leather##21887 |or
|tip You created these in a previous step.
'|complete skill("Leatherworking") >= 350 |or
step
talk Brumman##18771
buy 66 Rune Thread##14341 |goto Hellfire Peninsula/0 54.11,63.97 |or
'|complete skill("Leatherworking") >= 350 |or
step
create 22 Thick Draenic Vest##32473,Leatherworking,350
|tip You may need to create more or less of these.
|tip Each additional Thick Draenic Vest requires 3 Heavy Knothide Leather and 3 Rune Thread.
step
Reach Level 68 |ding 68
|tip You must be at least level 68 to train Grand Master professions in Northrend.
|tip Use the leveling guides to accomplish this.
step
talk Diane Cannings##28700
|tip Inside the building.
Learn Grand Master Leatherworking |skillmax Leatherworking,450 |goto Dalaran/1 34.71,28.64
step
talk Diane Cannings##28700
|tip Inside the building.
Train Borean Leather |learn Borean Leather##64661 |goto 34.71,28.64
step
talk Diane Cannings##28700
|tip Inside the building.
Train Borean Armor Kit |learn Borean Armor Kit##50962 |goto 34.71,28.64
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Lich King-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Leatherworking |confirm |next "Begin_Profession_Leveling_Northrend" |or
'|complete skill("Leatherworking") >= 450 |or |next "Begin_Profession_Leveling_Northrend"
stickystart "Collect_Arctic_Fur_Total"
stickystart "Collect_Crystallized_Water_Total"
stickystart "Collect_Eternal_Water_Total"
stickystart "Collect_Eternal_Shadow_Total"
stickystart "Collect_Eternal_Fire_Total"
stickystart "Collect_Nerubian_Chitin_Total"
stickystart "Collect_Nerubian_Chitin_Total_2"
stickystart "Collect_Frozen_Orb_Total"
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	57.48,73.45	58.98,70.90	60.60,70.78	63.07,71.59	65.68,70.68
path	67.78,69.72	70.17,69.54	71.94,70.61	70.25,72.47	67.58,73.52
path	66.01,75.76	66.54,78.64	66.01,80.77	64.47,79.46	63.81,74.39
path	62.61,73.65	59.73,74.19	58.47,75.31	57.14,77.70	56.50,79.34
path	55.75,77.61	55.35,75.24
Kill Hardknuckle enemies along the path
|tip Skin their corpses.
|tip BEWARE of wandering Frenzyheart NPCs that will attack you close to Frenzyheart Hill! |only if rep("Frenzyheart Tribe") <= Hostile
collect 2200 Borean Leather##33568 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip You will need 385 Skinning skill minimum to skin all of these mobs.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Leatherworking") >= 410 |or
step
label "Collect_Arctic_Fur_Total"
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	57.48,73.45	58.98,70.90	60.60,70.78	63.07,71.59	65.68,70.68
path	67.78,69.72	70.17,69.54	71.94,70.61	70.25,72.47	67.58,73.52
path	66.01,75.76	66.54,78.64	66.01,80.77	64.47,79.46	63.81,74.39
path	62.61,73.65	59.73,74.19	58.47,75.31	57.14,77.70	56.50,79.34
path	55.75,77.61	55.35,75.24
Kill Hardknuckle enemies along the path |notinsticky
|tip Skin their corpses. |notinsticky
|tip BEWARE of wandering Frenzyheart NPCs that will attack you close to Frenzyheart Hill! |notinsticky |only if rep("Frenzyheart Tribe") <= Hostile
collect 12 Arctic Fur##44128 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip You will need 385 Skinning skill minimum to skin all of these mobs. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Leatherworking") >= 441 |or
step
label "Collect_Crystallized_Water_Total"
kill Boiling Spirit##25419+ |notinsticky
collect 65 Crystallized Water##37705 |goto Borean Tundra/0 46.94,13.40 |or
|tip You can also use Crystallized Shadow instead of Crystallized Water. |notinsticky
|tip Farm them from water elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Cobalt Deposits with the Northrend Mining guide. |notinsticky
'|complete skill("Leatherworking") >= 420 |or
step
label "Collect_Eternal_Water_Total"
kill Boiling Spirit##25419+ |notinsticky
use the Crystallized Water##37705 |notinsticky
|tip Combine 10 Crystallized Water into 1 Eternal Water. |notinsticky
collect 18 Eternal Water##35622 |goto Borean Tundra/0 46.94,13.40 |or
|tip Farm them from water elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Cobalt Deposits with the Northrend Mining guide. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Leatherworking") >= 435 |or
step
label "Collect_Eternal_Shadow_Total"
Enter the cave |goto Dragonblight/0 74.24,23.64 < 30 |walk |notinsticky
kill Deathbringer Revenant##27382+ |notinsticky
|tip Inside the cave. |notinsticky
use the Crystallized Shadow##37703 |notinsticky
|tip Combine 10 Crystallized Shadow into 1 Eternal Shadow. |notinsticky
collect 50 Eternal Shadow##35627 |or
|tip Farm them from shadow mobs or purchase them from the auction house. |notinsticky
|tip You can also farm them from Saronite Deposits with the Northrend Mining guide. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Leatherworking") >= 450 |or
step
label "Collect_Eternal_Fire_Total"
Enter the cave |goto The Storm Peaks/0 62.48,41.49 < 20 |walk |notinsticky
kill Wailing Winds##30450+ |notinsticky
|tip Inside the cave. |notinsticky
use the Crystallized Fire##37702 |notinsticky
|tip Combine 10 Crystallized Fire into 1 Eternal Fire. |notinsticky
collect 50 Eternal Fire##36860 |goto 61.43,39.48 |or
|tip Farm them from fire elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Titanium Veins with the Northrend Mining guide. |notinsticky
|tip You can also Transmute: Skyflare Diamond for points. |notinsticky
|tip Each Skyflare Diamond costs 1 Bloodstone, 1 Chalcedony, and 1 Eternal Air to transmute. |notinsticky
'|complete skill("Leatherworking") >= 450 |or
step
label "Collect_Nerubian_Chitin_Total"
map Icecrown/0
path follow smart; loop on; ants straight; dist 30
path	85.59,78.81	84.26,78.80	83.69,75.83	83.76,73.78	83.03,71.79
path	84.15,71.95	84.99,73.76	85.08,74.92	84.73,75.97	85.35,77.32
Kill Undead enemies around along the path |notinsticky
|tip Forgotten Depths Slayers and Carrion Fleshstrippers drop Nerubian Chitin. |notinsticky
|tip Skin their corpses. |notinsticky
collect 10 Nerubian Chitin##38558 |or
|tip Farm them from Undead enemies or purchase them from the auction house. |notinsticky
|tip You will need 390 Skinning skill minimum to skin all of these mobs. |notinsticky
'|complete skill("Leatherworking") >= 440 |or
|only if not completedq(13070)
step
label "Collect_Nerubian_Chitin_Total_2"
map Zul'Drak/0
path follow smart; loop on; ants curved; dist 30
path	58.36,76.22	57.40,79.28	57.83,81.42	58.35,82.42	59.32,82.30
path	59.19,83.49	57.27,84.74	55.84,85.74	54.57,85.67	53.52,84.01
path	54.74,82.05	55.99,79.99	56.22,78.21	56.80,76.69
Kill Hath'ar enemies around along the path |notinsticky
|tip Skin their corpses. |notinsticky
collect 10 Nerubian Chitin##38558 |or
|tip Farm them from Undead enemies or purchase them from the auction house. |notinsticky
|tip You will need 380 Skinning skill minimum to skin all of these mobs. |notinsticky
'|complete skill("Leatherworking") >= 450 |or
|only if completedq(13070)
step
label "Collect_Frozen_Orb_Total"
collect 15 Frozen Orb##43102 |or
|tip These drop from the final boss of Northred heroic dungeons.
'|complete skill("Leatherworking") >= 450 |or
stickystart "Collect_Arctic_Fur_380"
step
label "Begin_Profession_Leveling_Northrend"
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	57.48,73.45	58.98,70.90	60.60,70.78	63.07,71.59	65.68,70.68
path	67.78,69.72	70.17,69.54	71.94,70.61	70.25,72.47	67.58,73.52
path	66.01,75.76	66.54,78.64	66.01,80.77	64.47,79.46	63.81,74.39
path	62.61,73.65	59.73,74.19	58.47,75.31	57.14,77.70	56.50,79.34
path	55.75,77.61	55.35,75.24
Kill Hardknuckle enemies along the path
|tip Skin their corpses.
|tip BEWARE of wandering Frenzyheart NPCs that will attack you close to Frenzyheart Hill! |only if rep("Frenzyheart Tribe") <= Hostile
collect 2200 Borean Leather##33568 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip You will need 385 Skinning skill minimum to skin all of these mobs.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save all of these, you will need them for future steps.
'|complete skill("Leatherworking") >= 380 |or
step
label "Collect_Arctic_Fur_380"
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	57.48,73.45	58.98,70.90	60.60,70.78	63.07,71.59	65.68,70.68
path	67.78,69.72	70.17,69.54	71.94,70.61	70.25,72.47	67.58,73.52
path	66.01,75.76	66.54,78.64	66.01,80.77	64.47,79.46	63.81,74.39
path	62.61,73.65	59.73,74.19	58.47,75.31	57.14,77.70	56.50,79.34
path	55.75,77.61	55.35,75.24
Kill Hardknuckle enemies along the path |notinsticky
|tip Skin their corpses. |notinsticky
|tip BEWARE of wandering Frenzyheart NPCs that will attack you close to Frenzyheart Hill! |notinsticky |only if rep("Frenzyheart Tribe") <= Hostile
collect 12 Arctic Fur##44128 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip You will need 385 Skinning skill minimum to skin all of these mobs. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Leatherworking") >= 380 |or
step
create 35 Borean Armor Kit##50962,Leatherworking,380
|tip Convert any Borean Leather Scraps you have first using your skill panel.
|tip If you right-click scraps, you will not get skill points.
|tip You may need to create more or less of these.
|tip Each additional Borean Armor Kit requires 4 Borean Leather.
step
collect 48 Borean Leather##33568 |or
|tip You collected these in a previous step.
'|complete skill("Leatherworking") >= 386 |or
step
talk Diane Cannings##28700
|tip Inside the building.
Train Arctic Boots |learn Arctic Boots##50948 |goto Dalaran/1 34.71,28.64
step
create 6 Arctic Boots##50948,Leatherworking,386
step
collect 40 Borean Leather##33568 |or
|tip You collected these in a previous step.
'|complete skill("Leatherworking") >= 390 |or
step
talk Diane Cannings##28700
|tip Inside the building.
Train Arctic Gloves |learn Arctic Gloves##50947 |goto Dalaran/1 34.71,28.64
step
create 4 Arctic Gloves##50947,Leatherworking,390
step
collect 1800 Borean Leather##33568 |or
|tip You collected these in a previous step.
'|complete skill("Leatherworking") >= 405 |or
step
talk Diane Cannings##28700
|tip Inside the building.
Train Heavy Borean Leather |learn Heavy Borean Leather##50936 |goto Dalaran/1 34.71,28.
step
create 300 Heavy Borean Leather##50936,Leatherworking,300 total |or
'|complete skill("Leatherworking") >= 405 |or
step
create Heavy Borean Leather##50936,Leatherworking,405
step
collect 40 Borean Leather##33568 |or
|tip You collected these in a previous step.
'|complete skill("Leatherworking") >= 410 |or
step
talk Diane Cannings##28700
|tip Inside the building.
Train Arctic Wristguards |learn Arctic Wristguards##51571 |goto Dalaran/1 34.71,28.64
step
create 10 Arctic Wristguards##51571,Leatherworking,410
|tip You may need to make more of these.
|tip Each additional Arctic Wristguard requires 12 Borean Leather.
stickystart "Collect_Crystallized_Water_420"
stickystart "Collect_Heavy_Borean_Leather_420"
step
kill Boiling Spirit##25419+
use the Crystallized Water##37705
|tip Combine 10 Crystallized Water into 1 Eternal Water.
collect 18 Eternal Water##35622 |goto Borean Tundra/0 46.94,13.40 |or
|tip Farm them from water elementals or purchase them from the auction house.
|tip You can also farm them from Cobalt Deposits with the Northrend Mining guide.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
|tip Save these, you will need them for future steps.
'|complete skill("Leatherworking") >= 435 |or
step
label "Collect_Crystallized_Water_420"
kill Boiling Spirit##25419+ |notinsticky
collect 65 Crystallized Water##37705 |goto Borean Tundra/0 46.94,13.40 |or
|tip You can also use Crystallized Shadow instead of Crystallized Water and make Dark Iceborne Leggings. |notinsticky
|tip Farm them from water elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Cobalt Deposits with the Northrend Mining guide. |notinsticky
'|complete skill("Leatherworking") >= 420 |or
step
label "Collect_Heavy_Borean_Leather_420"
collect 52 Heavy Borean Leather##38425 |or
|tip You created these in a previous step. |notinsticky
'|complete skill("Leatherworking") >= 420 |or
step
talk Diane Cannings##28700
|tip Inside the building.
Train Dark Frostscale Leggings |learn Dark Frostscale Leggings##60601 |goto Dalaran/1 34.71,28.64
|tip You can also use Crystallized Shadow instead of Crystallized Water and make Dark Iceborne Leggings.
step
create 13 Dark Frostscale Leggings##60601,Leatherworking,420
|tip You may need to make more of these.
|tip Each additional Dark Frostscale Legging requires 4 Heavy Borean Leather and 5 Crystallized Water.
|tip Each additional Dark Iceborne Legging requires 4 Heavy Borean Leather and 5 Crystallized Shadow.
stickystart "Collect_Heavy_Borean_Leather_425"
step
collect 5 Eternal Water##35622 |or
|tip You collected these in a previous step.
'|complete skill("Leatherworking") >= 425 |or
step
label "Collect_Heavy_Borean_Leather_425"
collect 40 Heavy Borean Leather##38425 |or
|tip You created these in a previous step. |notinsticky
'|complete skill("Leatherworking") >= 425 |or
step
talk Diane Cannings##28700
|tip Inside the building.
Train Overcast Bracers |learn Overcast Bracers##60720 |goto Dalaran/1 34.71,28.64
step
create 10 Overcast Bracers##60720,Leatherworking,425
|tip You may need to make more of these.
step
collect 3 Heavy Borean Leather##38425 |or
|tip You created these in a previous step.
'|complete skill("Leatherworking") >= 435 |or
step
talk Braeg Stoutbeard##32515
buy Pattern: Overcast Handwraps##44525 |goto Dalaran/1 37.36,28.71 |or
'|complete skill("Leatherworking") >= 435 |or
step
use the Pattern: Overcast Handwraps##44525
Train Overcast Handwraps |learn Overcast Handwraps##60721
stickystart "Collect_Heavy_Borean_Leather_435"
step
collect 13 Eternal Water##35622 |or
|tip You collected these in a previous step.
'|complete skill("Leatherworking") >= 435 |or
step
label "Collect_Heavy_Borean_Leather_435"
collect 130 Heavy Borean Leather##38425 |or
|tip You created these in a previous step. |notinsticky
'|complete skill("Leatherworking") >= 435 |or
step
create 10 Overcast Handwraps##60721,Leatherworking,435
|tip You may need to make more of these.
|tip Each additional Overcast Handwraps requires 10 Heavy Borean Leather and 1 Eternal Water.
stickystart "Collect_Frozen_Orb_440"
stickystart "Collect_Arctic_Fur_440"
step
map Icecrown/0
path follow smart; loop on; ants straight; dist 30
path	85.59,78.81	84.26,78.80	83.69,75.83	83.76,73.78	83.03,71.79
path	84.15,71.95	84.99,73.76	85.08,74.92	84.73,75.97	85.35,77.32
Kill Undead enemies around along the path
|tip Forgotten Depths Slayers and Carrion Fleshstrippers drop Nerubian Chitin.
|tip Skin their corpses.
collect 10 Nerubian Chitin##38558 |or
|tip You can farm 10 Icy Dragonscale and make Icescale Leg Armor as well.
|tip Farm them from Undead enemies or purchase them from the auction house.
|tip You will need 390 Skinning skill minimum to skin all of these mobs.
'|complete skill("Leatherworking") >= 440 |or
|only if not completedq(13070)
step
map Zul'Drak/0
path follow smart; loop on; ants curved; dist 30
path	58.36,76.22	57.40,79.28	57.83,81.42	58.35,82.42	59.32,82.30
path	59.19,83.49	57.27,84.74	55.84,85.74	54.57,85.67	53.52,84.01
path	54.74,82.05	55.99,79.99	56.22,78.21	56.80,76.69
Kill Hath'ar enemies around along the path
|tip Skin their corpses.
collect 10 Nerubian Chitin##38558 |or
|tip You can farm 10 Icy Dragonscale and make Icescale Leg Armor as well.
|tip Farm them from Undead enemies or purchase them from the auction house.
|tip You will need 380 Skinning skill minimum to skin all of these mobs.
'|complete skill("Leatherworking") >= 440 |or
|only if completedq(13070)
step
label "Collect_Frozen_Orb_440"
collect 5 Frozen Orb##43102 |or
|tip These drop from the final boss of Northred heroic dungeons. |notinsticky
'|complete skill("Leatherworking") >= 440 |or
step
label "Collect_Arctic_Fur_440"
collect 10 Arctic Fur##44128 |or
|tip You collected these in a previous step. |notinsticky
'|complete skill("Leatherworking") >= 440 |or
step
talk Diane Cannings##28700
|tip Inside the building.
Train Frosthide Leg Armor |learn Frosthide Leg Armor##50965 |goto Dalaran/1 34.71,28.64
|tip You can farm 10 Icy Dragonscale and make Icescale Leg Armor as well.
step
create 10 Frosthide Leg Armor##50965,Leatherworking,440
|tip You can farm 10 Icy Dragonscale and make Icescale Leg Armor as well.
|tip You may need to make more of these.
|tip Each additional Frosthide Leg Armor requires 2 Arctic Fur, 2 Nerubian Chitin, and 1 Frozen Orb.
|tip Each additional Icescale Leg Armor requires 2 Arctic Fur, 2 Icy Dragonscale, and 1 Frozen Orb.
step
collect 2 Arctic Fur##44128 |or
|tip You collected these in a previous step. |notinsticky
'|complete skill("Leatherworking") >= 450 |or
step
talk Braeg Stoutbeard##32515
buy Pattern: Trollwoven Girdle##44551 |goto Dalaran/1 37.36,28.71 |or
|tip You can also farm Eternal Water or Eternal Air and make Revenant's Treads or Windripper Boots instead.
'|complete skill("Leatherworking") >= 450 |or
step
use the Pattern: Trollwoven Girdle##44551
Train Trollwoven Girdle |learn Trollwoven Girdle##60759
|tip You can also farm Eternal Water or Eternal Air and make Revenant's Treads or Windripper Boots instead.
stickystart "Collect_Eternal_Fire_450"
stickystart "Collect_Frozen_Orb_450"
stickystart "Collect_Heavy_Borean_Leather_450"
step
Enter the cave |goto Dragonblight/0 74.24,23.64 < 30 |walk
kill Deathbringer Revenant##27382+
|tip Inside the cave.
use the Crystallized Shadow##37703
|tip Combine 10 Crystallized Shadow into 1 Eternal Shadow.
collect 50 Eternal Shadow##35627 |or
|tip You can also farm Eternal Water or Eternal Air and make Revenant's Treads or Windripper Boots instead.
|tip Farm them from shadow mobs or purchase them from the auction house.
|tip You can also farm them from Saronite Deposits with the Northrend Mining guide.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Leatherworking") >= 450 |or
step
label "Collect_Eternal_Fire_450"
Enter the cave |goto The Storm Peaks/0 62.48,41.49 < 20 |walk |notinsticky
kill Wailing Winds##30450+ |notinsticky
|tip Inside the cave. |notinsticky
use the Crystallized Fire##37702 |notinsticky
|tip Combine 10 Crystallized Fire into 1 Eternal Fire. |notinsticky
collect 50 Eternal Fire##36860 |goto 61.43,39.48 |or
|tip You can also farm Eternal Water or Eternal Air and make Revenant's Treads or Windripper Boots instead. |notinsticky
|tip Farm them from fire elementals or purchase them from the auction house. |notinsticky
|tip You can also farm them from Titanium Veins with the Northrend Mining guide. |notinsticky
|tip You can also Transmute: Skyflare Diamond for points. |notinsticky
|tip Each Skyflare Diamond costs 1 Bloodstone, 1 Chalcedony, and 1 Eternal Air to transmute. |notinsticky
'|complete skill("Leatherworking") >= 450 |or
step
label "Collect_Frozen_Orb_450"
collect 10 Frozen Orb##43102 |or
|tip These drop from the final boss of Northred heroic dungeons. |notinsticky
'|complete skill("Leatherworking") >= 450 |or
step
label "Collect_Heavy_Borean_Leather_450"
collect 100 Heavy Borean Leather##38425 |or
|tip You created these in a previous step. |notinsticky
'|complete skill("Leatherworking") >= 450 |or
step
create 10 Trollwoven Girdle##60759,Leatherworking,450
|tip You can farm 10 Icy Dragonscale and make Icescale Leg Armor as well.
|tip You may need to make more of these.
|tip Revenant's Treads require 10 Heavy Borean Leather, 10 Eternal Water, and 1 Frozen Orb.
|tip Windripper Boots require 10 Heavy Borean Leather, 5 Eternal Water, 5 Eternal Air, and 1 Frozen Orb.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Cataclysm-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Leatherworking |confirm |next "Begin_Leatherworking_Leveling_Cataclysm" |or
'|complete skill("Leatherworking") >= 525 |or |next "Begin_Leatherworking_Leveling_Cataclysm"
stickystart "Collect_Volatile_Fire_Total"
stickystart "Collect_Volatile_Water_Total"
step
map Twilight Highlands/0
path follow smart; loop on; ants curved
path	65.90,16.51	66.11,19.43	70.01,21.02	66.31,24.52	63.41,22.82
path	59.82,21.32	56.53,20.52	58.00,13.33	56.60,8.71	61.20,9.91
path	62.71,10.41	64.61,12.82
Kill enemies around this area.
|tip Skin their corpses.
collect 1600 Savage Leather##52976
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 495
step
label "Collect_Volatile_Fire_Total"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 112 Volatile Fire##52325
|tip Farm them or purchase them from the Auction House.
|only if skill("Leatherworking") < 520
step
label "Collect_Volatile_Water_Total"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	29.60,66.46	28.77,62.37	31.51,59.47	33.77,56.98	35.75,60.13
path	34.61,63.05
kill Enslaved Waterspout##46329+
collect 50 Volatile Water##52326
|tip Farm them or purchase them from the Auction House.
|only if skill("Leatherworking") < 525
step
label "Begin_Leatherworking_Leveling_Cataclysm"
talk Simon Tanner##5564
|tip Inside the building.
Train Illustrious Grand Master Leatherworking |skillmax Leatherworking,525 |goto Stormwind City/0 71.69,62.99
|tip You must be at least level 75.
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 30 Eternium Thread##38426 |goto Stormwind City/0 71.58,62.77
|only if skill("Leatherworking") < 495
step
map Twilight Highlands/0
path follow smart; loop on; ants curved
path	65.90,16.51	66.11,19.43	70.01,21.02	66.31,24.52	63.41,22.82
path	59.82,21.32	56.53,20.52	58.00,13.33	56.60,8.71	61.20,9.91
path	62.71,10.41	64.61,12.82
collect 25 Savage Leather##52976
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 455
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Savage Armor Kit>_
|tip You may need to make more.
Reach 455 Leatherworking |skill Leatherworking,455
step
talk Simon Tanner##5564
|tip Inside the building.
learn Tsunami Boots##78410 |goto Stormwind City/0 71.69,62.99
step
map Twilight Highlands/0
path follow smart; loop on; ants curved
path	65.90,16.51	66.11,19.43	70.01,21.02	66.31,24.52	63.41,22.82
path	59.82,21.32	56.53,20.52	58.00,13.33	56.60,8.71	61.20,9.91
path	62.71,10.41	64.61,12.82
collect 35 Savage Leather##52976
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 460
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Tsunami Boots>_
Reach 460 Leatherworking |skill Leatherworking,460
step
talk Simon Tanner##5564
|tip Inside the building.
learn Savage Cloak##78380 |goto Stormwind City/0 71.69,62.99
step
map Twilight Highlands/0
path follow smart; loop on; ants curved
path	65.90,16.51	66.11,19.43	70.01,21.02	66.31,24.52	63.41,22.82
path	59.82,21.32	56.53,20.52	58.00,13.33	56.60,8.71	61.20,9.91
path	62.71,10.41	64.61,12.82
collect 70 Savage Leather##52976
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 470
step
Open Your Leatherworking Crafting Panel:
_<Create 10 Savage Cloak>_
Reach 470 Leatherworking |skill Leatherworking,470
step
talk Simon Tanner##5564
|tip Inside the building.
learn Darkbrand Boots##78407 |goto Stormwind City/0 71.69,62.99
step
map Twilight Highlands/0
path follow smart; loop on; ants curved
path	65.90,16.51	66.11,19.43	70.01,21.02	66.31,24.52	63.41,22.82
path	59.82,21.32	56.53,20.52	58.00,13.33	56.60,8.71	61.20,9.91
path	62.71,10.41	64.61,12.82
collect 50 Savage Leather##52976
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 475
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Darkbrand Boots>_
Reach 475 Leatherworking |skill Leatherworking,475
step
talk Simon Tanner##5564
|tip Inside the building.
learn Darkbrand Shoulders##78411 |goto Stormwind City/0 71.69,62.99
step
map Twilight Highlands/0
path follow smart; loop on; ants curved
path	65.90,16.51	66.11,19.43	70.01,21.02	66.31,24.52	63.41,22.82
path	59.82,21.32	56.53,20.52	58.00,13.33	56.60,8.71	61.20,9.91
path	62.71,10.41	64.61,12.82
collect 120 Savage Leather##52976
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 485
step
Open Your Leatherworking Crafting Panel:
_<Create 10 Darkbrand Shoulders>_
Reach 485 Leatherworking |skill Leatherworking,485
step
talk Simon Tanner##5564
|tip Inside the building.
learn Heavy Savage Leather##78436 |goto Stormwind City/0 71.69,62.99
step
map Twilight Highlands/0
path follow smart; loop on; ants curved
path	65.90,16.51	66.11,19.43	70.01,21.02	66.31,24.52	63.41,22.82
path	59.82,21.32	56.53,20.52	58.00,13.33	56.60,8.71	61.20,9.91
path	62.71,10.41	64.61,12.82
collect 1200 Savage Leather##52976
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 490
step
Open Your Leatherworking Crafting Panel:
_<Create 240 Heavy Savage Leather>_
|tip Keep these, you'll need them later.
Reach 490 Leatherworking |skill Leatherworking,490
step
talk Simon Tanner##5564
|tip Inside the building.
learn Darkbrand Chestguard##78428 |goto Stormwind City/0 71.69,62.99
step
map Twilight Highlands/0
path follow smart; loop on; ants curved
path	65.90,16.51	66.11,19.43	70.01,21.02	66.31,24.52	63.41,22.82
path	59.82,21.32	56.53,20.52	58.00,13.33	56.60,8.71	61.20,9.91
path	62.71,10.41	64.61,12.82
collect 60 Savage Leather##52976
|tip Farm them with Skinning or purchase them from the Auction House.
|only if skill("Leatherworking") < 495
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Darkbrand Chestguard>_
Reach 495 Leatherworking |skill Leatherworking,495
step
collect 60 Heavy Savage Leather##56516
|tip You should have these from previous steps.
|only if skill("Leatherworking") < 507
step
talk Simon Tanner##5564
|tip Inside the building.
learn Darkbrand Helm##78424 |goto Stormwind City/0 71.69,62.99
step
Open Your Leatherworking Crafting Panel:
_<Create 12 Darkbrand Helm>_
|tip You may need to make more.
Reach 507 Leatherworking |skill Leatherworking,507
step
talk Simon Tanner##5564
|tip Inside the building.
learn Vicious Hide Cloak##99535 |goto Stormwind City/0 71.69,62.99
step
collect 30 Heavy Savage Leather##56516
|tip You should have these from previous steps.
|only if skill("Leatherworking") < 510
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 3 Pristine Hide##52980 |goto Stormwind City/0 71.58,62.77
|tip These will cost 10 Heavy Savage Leather each.
|only if skill("Leatherworking") < 510
step
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 12 Volatile Fire##52325
|tip Farm them or purchase them from the Auction House.
|only if skill("Leatherworking") < 510
step
Open Your Leatherworking Crafting Panel:
_<Create 3 Vicious Hide Cloak>_
Reach 510 Leatherworking |skill Leatherworking,510
step
collect 150 Heavy Savage Leather##56516
|tip You should have these from previous steps.
|only if skill("Leatherworking") < 515
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 1 Pattern: Vicious Leather Bracers##67046 |goto Stormwind City/0 71.58,62.77
step
use the Pattern: Vicious Leather Bracers##67046
learn Vicious Leather Bracers##78446
|only if skill("Leatherworking") < 515
step
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 50 Volatile Fire##52325
|tip Farm them or purchase them from the Auction House.
|only if skill("Leatherworking") < 520
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Vicious Leather Bracers>_
Reach 515 Leatherworking |skill Leatherworking,515
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 1 Pattern: Vicious Leather Boots##67060 |goto Stormwind City/0 71.58,62.77
|only if skill("Leatherworking") < 520
step
use the Pattern: Vicious Leather Boots##67060
learn Vicious Leather Boots##78454
step
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 50 Volatile Fire##52325
|tip Farm them or purchase them from the Auction House.
|only if skill("Leatherworking") < 520
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Vicious Leather Boots>_
Reach 520 Leatherworking |skill Leatherworking,520
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	29.60,66.46	28.77,62.37	31.51,59.47	33.77,56.98	35.75,60.13
path	34.61,63.05
kill Enslaved Waterspout##46329+
collect 50 Volatile Water##52326
|tip Farm them or purchase them from the Auction House.
|only if skill("Leatherworking") < 525
step
talk Jillian Tanner##5565
|tip Inside the building.
buy 1 Pattern: Vicious Leather Helm##67077 |goto Stormwind City/0 71.58,62.77
|only if skill("Leatherworking") < 525
step
use the Pattern: Vicious Leather Helm##67077
learn Vicious Leather Helm##78469
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Vicious Leather Helm>_
Reach 525 Leatherworking |skill Leatherworking,525
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Mining (1-525)",{
author="support@zygorguides.com",
description="This guide will walk you through leveling 1-525 Mining",
},[[
step
talk Periale##43431
Train Mining |skillmax Mining,75 |goto Darkshore/0 51.35,19.08
|tip She is outside the building
step
map Darkshore/0
path follow smart; loop on; ants straight
path	52.61,27.94	53.56,28.75	53.80,29.20	54.29,28.67	55.85,27.97
path	56.09,27.32	56.32,27.74	56.22,29.46	56.86,30.07	56.82,31.17
path	56.16,32.01	55.59,31.45	54.44,32.59	54.41,33.16	54.17,33.52
path	54.32,33.80	54.40,34.81	53.41,35.26	52.87,34.66	52.42,34.78
path	50.95,33.29	50.85,32.51	50.10,33.83	49.60,34.97	49.33,37.84
path	49.00,40.14	48.60,42.24	48.16,45.68	47.87,47.40	47.44,50.51
path	46.22,53.41	46.38,55.26	45.89,58.34	45.66,62.48	44.88,65.31
path	44.74,67.82	44.17,71.24	45.55,72.72	46.28,74.59	46.75,78.33
path	45.56,80.47	45.97,82.63	45.54,84.91	46.00,86.76	46.66,86.89
path	46.71,89.74	45.87,92.08	43.84,91.78	40.85,92.36	38.52,91.76
path	37.74,89.77	36.33,88.09	36.90,85.08	37.96,85.79	38.87,85.06
path	39.31,83.24	40.82,83.72	41.87,83.24	42.52,81.90	42.41,80.59
path	41.51,80.01	40.96,79.05	40.64,76.93	40.70,74.06	41.14,72.85
path	42.50,70.95	42.73,67.90	42.23,65.79	41.42,62.81	40.32,60.54
path	40.32,58.56	41.36,56.37	42.64,54.89	44.73,55.34	45.89,54.06
path	45.28,50.94	44.76,48.85	44.60,44.24	43.42,42.72	41.93,42.35
path	40.21,41.67	39.03,40.11	38.33,38.56	39.09,36.97	40.19,36.11
path	41.97,35.32	43.34,37.37	43.69,34.26	44.46,33.65	46.27,31.89
path	47.30,31.46	49.17,28.88	50.83,27.23
|tip Mine Copper Ore along the path
|tip Enter caves along the path to check for ore as well.
click Copper Vein##1731+
|tip You can smelt Copper Ore as well from 1-50.
Reach Level 50 Mining |skill Mining,50
step
talk Periale##43431
Train Journeyman Mining |skillmax Mining,150 |goto Darkshore/0 51.35,19.08
|tip She is outside the building
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
|tip Mine Tin Ore along the path.
|tip Enter caves along the path to check for ore as well.
click Tin Vein##1732+
|tip You can smelt Tin Ore as well from 50-75. Afterwards smelt Bronze til 115 and Silver up to 125.
Reach Level 125 Mining |skill Mining,125
step
talk Periale##43431
Train Expert Mining |skillmax Mining,225 |goto Darkshore/0 51.35,19.08
|tip She is outside the building
|tip You must be at least level 10 to learn Expert Mining. |only if level < 10
step
map Feralas/0
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
|tip Mine Iron Ore along the path.
click Iron Deposit##1735+
|tip You can smelt Iron Ore from 125-140 as well.
Reach Level 175 Mining |skill Mining,175
step
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
|tip Mine Mithril Ore along the path.
|tip Enter caves along the path to check for ore as well.
click Mithril Deposit##2040+
|tip You can smelt Mithril Ore from 175-230 as well.
Reach Level 225 Mining |skill Mining,225
step
talk Gelman Stonehand##5513
Train Artisan Mining |skillmax Mining,300 |goto Stormwind City/0 59.55,37.76
|tip He is inside the building
|tip You must be at least level 25 to learn Artisan Mining. |only if level < 25
step
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
|tip Mine Mithril Ore along the path.
|tip Enter caves along the path to check for ore as well.
click Mithril Deposit##2040+
|tip You can smelt Mithril Ore from 175-230 as well.
Reach Level 235 Mining |skill Mining,235
step
map Un'Goro Crater/0
path follow smart; loop on; ants straight; dist 30
path	76.74,42.05	73.74,30.89	69.66,20.70	63.51,16.72	59.87,15.96
path	56.36,12.61	49.73,13.57	36.10,20.32	26.67,30.68	24.84,39.93
path	23.80,50.02	24.09,58.91	26.24,66.95	29.29,72.74	31.69,79.87
path	37.12,81.23	39.59,84.18	44.39,86.33	50.01,79.90	54.71,86.32
path	59.99,84.20	65.04,79.87	74.01,69.76	76.30,60.04	76.90,54.28
|tip Mine Thorium Ore along the path.
|tip Enter caves along the path to check for ore as well.
click Small Thorium Vein##324+
click Rich Thorium Vein##175404+
Reach Level 300 Mining |skill Mining,300
step
talk Gelman Stonehand##5513
Train Master Mining |skillmax Mining,375 |goto Stormwind City/0 59.55,37.76
|tip He is inside the building
|tip You must be at least level 40 to learn Master Mining. |only if level < 40
step
map Hellfire Peninsula/0
path follow smart; loop on; ants curved; dist 30
path	40.75,42.50	40.26,40.96	40.59,36.51	41.36,33.28	43.83,33.24
path	44.70,32.04	44.07,29.69	41.52,29.31	40.39,28.06	39.18,28.60
path	38.78,31.28	39.45,34.58	38.84,37.75	38.00,41.81	37.29,44.05
path	34.94,45.10	33.47,44.99	32.33,43.34	31.25,41.56	31.18,38.16
path	33.35,35.12	34.81,36.51	36.88,34.23	36.38,31.00	36.65,27.50
path	34.86,27.64	34.18,30.27	33.95,32.60	32.82,32.93	30.49,32.56
path	29.46,34.09	29.89,36.50	29.26,38.76	28.50,39.00	27.60,36.52
path	26.16,37.69	25.80,40.12	24.27,41.44	21.50,41.64	20.34,41.76
path	19.47,39.60	18.10,38.61	16.12,37.94	14.31,37.73	13.47,36.02
path	12.48,35.85	12.11,38.86	13.09,40.80	12.81,43.48	12.08,46.56
path	11.32,48.30	9.56,49.23	8.57,51.37	9.57,52.68	10.84,55.14
path	12.17,55.31	12.26,58.81	12.81,59.93	14.07,61.24	14.96,63.01
path	15.77,59.56	17.36,57.29	19.16,56.46	21.27,57.56	22.06,59.04
path	23.61,61.30	22.10,63.38	21.62,65.68	22.34,67.89	23.43,69.32
path	25.05,71.45	26.07,71.93	25.79,75.23	25.80,78.02	27.25,79.15
path	28.84,78.89	29.38,76.72	29.62,73.24	29.96,69.53	30.61,66.72
path	32.37,65.87	33.99,66.14	35.61,70.00	36.83,67.98	39.60,68.47
path	40.74,70.17	42.73,73.61	42.33,76.12	43.05,79.48	41.89,82.43
path	40.80,84.01	39.64,86.19	38.83,87.20	36.99,88.84	34.33,90.22
path	34.22,92.33	35.51,92.08	37.34,90.33	38.44,88.67	40.48,86.49
path	44.73,81.62	46.22,84.73	48.19,84.16	51.50,82.91	53.54,84.94
path	55.09,86.21	55.59,83.18	56.70,82.04	58.55,79.67	58.63,77.75
path	57.99,75.75	56.39,74.03	57.13,72.33	58.10,70.83	59.03,68.99
path	61.00,68.45	63.04,67.10	63.48,64.36	65.00,63.16	65.82,67.02
path	67.49,69.37	68.20,70.18	66.71,72.92	65.89,73.70	64.97,73.80
path	64.55,75.74	66.07,77.99	67.88,76.49	68.96,73.63	70.44,70.80
path	70.78,66.63	69.81,64.01	68.32,62.59	65.54,61.99	64.51,60.64
path	65.42,57.87	67.00,57.51	69.46,58.76	72.80,60.39	74.27,58.69
path	72.07,56.26	70.55,54.02	71.34,51.09	70.09,49.47	69.18,47.28
path	67.71,41.84	65.81,40.93	64.46,40.63	64.00,38.40	64.00,34.75
path	62.89,32.54	61.87,29.33	60.44,30.36	59.24,29.85	57.33,29.47
path	55.07,28.81	53.89,27.91	53.69,30.17	55.04,30.78	55.79,32.59
path	54.46,34.59	52.34,34.35	50.66,34.27	49.00,34.34	47.97,37.12
path	47.88,40.46	46.11,43.55	45.00,44.24	43.34,43.21	41.71,43.80
click Fel Iron Deposit##181555+
|tip Gather Fel Iron Ore along the path.
Reach Level 350 Mining |skill Mining,350
step
talk Gelman Stonehand##5513
Train Grand Master Mining |skillmax Mining,450 |goto Stormwind City/0 59.55,37.76
|tip He is inside the building
|tip You must be at least level 55 to learn Grand Master Mining. |only if level < 55
step
map Howling Fjord/0
path follow smart; loop on; ants curved; dist 30
path	62.24,38.40	63.07,41.42	63.77,44.33	65.07,46.85	65.95,49.99
path	65.47,51.84	66.77,53.34	66.99,56.22	68.17,56.81	68.22,58.55
path	67.42,61.43	66.93,62.92	65.20,65.61	64.49,67.54	64.27,69.82
path	64.00,71.83	65.17,72.57	66.65,74.03	67.17,75.22	67.85,75.50
path	68.69,76.65	69.47,75.47	70.01,73.15	70.12,70.66	70.93,69.55
path	72.23,67.74	73.93,67.56	76.01,67.84	77.18,66.44	77.17,63.42
path	76.71,61.35	75.63,59.18	74.86,56.68	75.11,53.88	75.75,52.62
path	76.15,50.91	77.59,50.42	79.22,49.34	80.40,47.64	80.44,45.88
path	78.79,44.50	77.53,42.78	76.17,40.85	74.06,39.02	72.84,38.87
path	71.02,37.09	70.56,34.57	70.76,32.23	71.99,29.32	73.29,27.03
path	74.48,25.10	75.12,22.81	74.22,21.32	73.50,20.11	73.65,18.35
path	73.46,16.35	72.60,15.11	70.32,12.12	68.85,10.78	67.15,10.13
path	65.65,9.71	64.56,12.64	64.09,14.33	64.19,16.42	63.22,19.28
path	61.95,20.11	60.43,20.26	58.19,21.42	57.37,20.43	58.06,15.77
path	58.35,12.87	57.89,11.23	56.19,10.49	53.95,9.67	53.32,7.34
path	50.44,7.72	49.96,9.54	48.06,11.09	47.61,14.35	46.34,16.30
path	45.11,16.76	42.86,15.76	41.25,15.66	39.95,18.02	39.01,18.97
path	37.72,19.53	36.15,18.54	35.25,16.71	34.42,14.04	32.74,12.27
path	31.94,13.09	30.73,12.46	29.39,11.21	27.26,11.67	25.33,12.39
path	23.77,13.71	24.66,16.85	25.79,20.30	26.12,22.28	26.20,26.21
path	26.42,29.01	27.57,31.54	28.62,33.43	29.43,34.27	30.74,36.27
path	32.54,37.36	34.28,36.57	38.77,35.98	42.03,37.88	44.65,40.18
path	48.10,40.27	52.12,40.35	53.86,39.72	56.24,37.91	58.51,36.22
path	60.26,36.57
click Cobalt Deposit##189978+
click Rich Cobalt Deposit##189979+
|tip Gather Cobalt Ore along the path.
Reach Level 400 Mining |skill Mining,400
step
map Sholazar Basin/0
path follow smart; loop on; ants curved; dist 30
path	47.55,60.54	45.98,63.10	47.07,66.19	48.50,67.57	48.06,72.89
path	50.18,79.08	51.11,83.87	50.24,87.27	47.95,87.13	45.88,86.92
path	43.83,87.15	40.80,87.29	38.41,86.20	37.55,82.52	39.01,79.09
path	39.97,76.03	39.89,72.63	38.87,69.59	37.13,68.11	34.77,68.38
path	34.09,71.52	32.47,76.06	30.69,80.02	27.90,83.52	24.95,83.83
path	22.95,82.59	21.27,78.60	20.64,74.21	20.80,69.62	20.99,66.37
path	21.63,60.90	21.93,56.40	23.34,52.96	26.15,53.68	29.38,55.20
path	32.17,55.87	35.01,55.74	37.57,52.39	36.47,49.33	34.26,47.11
path	31.92,44.99	29.37,43.15	30.16,39.22	32.21,35.48	34.85,33.69
path	37.60,32.87	39.99,32.13	41.50,33.05	43.22,37.70	45.00,41.85
path	47.30,42.65	50.33,42.48	52.24,41.57	53.34,38.94	53.09,35.64
path	51.58,32.70	49.27,30.10	47.00,28.68	45.35,26.84	43.66,24.20
path	43.30,21.65	45.46,21.34	48.34,21.59	51.18,22.09	55.10,24.48
path	58.23,26.57	61.53,30.34	63.92,33.33	66.01,36.41	66.75,39.64
path	64.98,42.63	63.15,45.78	60.70,48.14	58.67,48.97	57.04,50.77
path	56.86,53.99	58.78,55.73	61.38,56.54	64.12,55.19	67.02,54.31
path	69.67,56.56	71.72,60.58	75.27,61.51	74.93,65.10	73.11,68.76
path	71.40,71.86	68.77,76.48	66.01,80.90	63.54,80.54	60.96,79.85
path	58.85,81.83	56.78,85.19	55.87,83.09	56.40,78.00	56.32,71.21
path	54.35,65.42	51.00,63.86
click Saronite Deposit##189980+
click Rich Saronite Deposit##189981+
click Cobalt Deposit##189978+
click Rich Cobalt Deposit##189979+
|tip Gather Saronite and Cobalt Ore along the path.
Reach Level 450 Mining |skill Mining,450 |or
|tip If you want to gather Cataclysm Ore as soon as possible, you can leave at 425.
Click Here Once You Are At 425 |confirm |or
step
talk Gelman Stonehand##5513
Train Illustrious Grand Master Mining |skillmax Mining,525 |goto Stormwind City/0 59.55,37.76
|tip He is inside the building
|tip You must be at least level 75 to learn Illustrious Grand Master Mining. |only if level < 75
step
map Mount Hyjal/0
path follow smart; loop on; ants straight; dist 30
path	64.52,32.82	59.54,32.60	54.43,28.82	51.95,17.39	46.03,25.96
path	43.53,26.94	41.14,21.81	35.52,23.56	33.12,24.51	32.25,29.77
path	33.96,33.62	30.51,39.40	27.14,38.97	27.15,36.08	24.15,32.92
path	13.59,37.50	10.03,36.02	15.27,46.43	17.82,54.98	20.48,59.09
path	24.63,59.77	29.20,55.47	33.08,52.54	35.89,51.99	36.52,57.46
path	33.75,64.34	39.87,63.17	49.68,58.94	55.81,57.37	58.34,56.00
path	62.24,58.01	65.04,53.21	68.69,55.16	72.55,58.55	74.49,62.92
path	78.12,59.42	83.94,60.29	87.31,54.46	87.18,49.22	80.70,51.98
|tip Gather Obsidium Ore along the path.
|tip Enter caves along the path for additional ore.
click Obsidium Deposit##202736+
Reach Level 500 Mining |skill Mining,500
step
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	37.63,88.45	41.95,87.09	45.86,86.00	51.33,81.88	55.69,79.72
path	57.97,77.60	49.80,75.94	43.68,75.44	40.53,71.45	39.24,68.14
path	38.23,62.09	38.59,58.11	45.30,51.07	49.00,46.94	50.07,44.64
path	50.95,37.93	55.43,38.55	58.32,38.52	60.65,37.79	63.05,41.91
path	65.17,42.27	67.34,37.88	64.34,33.11	61.76,28.47	57.60,25.19
path	54.90,22.38	52.20,20.68	47.53,20.83	42.75,20.33	40.20,23.77
path	41.81,28.12	38.78,30.69	37.34,37.09	37.22,39.43	36.85,46.91
path	37.04,52.83	34.85,59.65	29.33,66.94	31.85,71.82	35.72,73.45
path	37.97,78.84
|tip Gather Elementium Ore along the path.
|tip Enter caves along the path for additional ore.
click Elementium Vein##202738+
click Rich Elementium Vein##202741+
Reach Level 525 Mining |skill Mining,525
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Copper Ore",{
author="support@zygorguides.com",
},[[
step
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect Copper Ore##2770 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Rough Stone",{
author="support@zygorguides.com",
},[[
step
map Elwynn Forest
path follow smart; loop on; ants curved; dist 20
path	30.84,52.85	31.66,56.55	30.70,59.27	33.97,61.71	32.67,69.74
path	34.82,71.77	38.65,70.47	41.90,72.73	38.79,78.16	36.73,83.14
path	38.86,85.10	40.47,81.19	42.54,75.73	43.46,72.43	45.88,71.66
path	48.66,72.57	50.67,73.61	52.16,76.22	51.59,81.68	50.51,84.27
path	52.44,85.57	54.07,81.63	55.50,80.65	57.18,77.77	59.76,76.99
path	64.90,71.42	66.82,69.10	70.81,68.32	75.97,68.43	74.95,64.93
path	73.11,60.29	76.43,54.83	77.84,50.88	75.35,46.25	73.10,46.01
path	71.20,49.01	71.93,55.39	68.33,54.29	67.11,57.66	65.88,58.62
path	65.45,55.47	63.86,53.92	61.15,54.32	59.49,56.50	57.71,57.94
path	55.65,58.04	53.51,57.94	52.34,58.34	51.04,58.74	49.28,57.01
path	50.05,53.17	48.15,51.19	47.15,49.29	43.66,49.22	41.39,51.02
path	39.84,53.01	36.99,52.64	34.92,51.69	35.76,48.57	34.85,46.74
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
collect Rough Stone##2835 |n
'|confirm
]])
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
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Iron Ore",{
author="support@zygorguides.com",
},[[
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
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 125 Mining to collect these.
collect Iron Ore##2772 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Heavy Stone",{
author="support@zygorguides.com",
},[[
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
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 125 Mining to collect these.
collect Heavy Stone##2838 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Gold Ore",{
author="support@zygorguides.com",
},[[
step
map Arathi Highlands
path follow smart; loop on; ants curved; dist 20
path	76.64,42.59	75.00,44.93	72.65,48.07	70.58,55.05	69.99,58.40
path	72.92,59.03	72.28,63.63	72.78,66.86	71.75,66.15	69.15,72.54
path	67.17,70.90	63.52,73.55	59.48,74.71	59.32,70.74	56.16,71.89
path	50.82,78.41	47.96,82.44	42.53,80.75	43.02,77.16	40.39,71.86
path	37.95,67.63	38.52,68.50	33.94,66.02	34.59,61.64	33.70,56.77
path	33.45,53.94	33.65,50.19	35.00,47.28	32.96,46.68	31.68,45.41
path	32.34,42.64	31.42,41.24	25.23,43.10	20.94,39.12	20.02,35.80
path	19.12,33.36	22.43,31.28	23.48,24.90	26.93,20.65	28.65,14.18
path	28.96,16.96	31.62,18.63	30.96,20.36	33.19,21.23	36.35,24.61
path	39.97,25.62	40.21,28.79	43.97,30.51	45.70,33.02	48.08,33.60
path	49.78,36.76	52.14,36.11	52.75,31.99	54.80,33.13	58.19,32.50
path	58.02,34.22	59.94,35.97	62.25,32.06	64.69,35.58	64.49,26.56
path	66.77,27.64	70.39,27.07	70.47,30.74	71.07,38.63
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 155 Mining to collect these.
collect Gold Ore##2776 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Mithril Ore",{
author="support@zygorguides.com",
},[[
step
label "Begin_Farming_Mithril_Ore"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 175 Mining to collect these.
collect Mithril Ore##3858 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Solid Stone",{
author="support@zygorguides.com",
},[[
step
label "Begin_Farming_Solid_Stone"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Mithril Deposit##2040+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 175 Mining to collect these.
collect Solid Stone##7912 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Truesilver Ore",{
author="support@zygorguides.com",
},[[
step
label "Begin_Farming_Truesilver_Ore"
map Tanaris/0
path follow smart; loop on; ants straight; dist 30
path	41.35,22.41	37.40,23.15	38.08,28.44	36.86,33.87	38.23,42.08
path	37.78,44.80	33.64,46.79	31.88,44.50	30.70,47.06	28.38,60.77
path	30.90,63.50	31.94,66.31	29.73,70.62	28.95,73.69	29.49,77.01
path	44.87,76.24	47.38,76.98	49.08,78.82	52.92,76.78	55.35,69.14
path	58.88,64.71	63.17,62.71	63.41,59.12	65.21,56.55	69.29,51.69
path	70.11,47.78	70.46,44.88	69.02,42.59	61.32,41.61	56.28,38.90
path	47.40,25.38	44.76,24.36
click Truesilver Deposit##2047+
|tip They look like gray rocks with large white crystals along the path.
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 230 Mining to collect these.
collect Truesilver Ore##7911 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Dark Iron Ore",{
author="support@zygorguides.com",
},[[
step
map Burning Steppes
path follow smart; loop on; ants curved; dist 20
path	47.24,33.58	57.79,36.68	60.09,40.49	60.24,30.28	62.87,24.54
path	64.47,23.32	65.45,24.20	64.95,33.28	71.55,39.13	79.50,25.16
path	93.16,52.72	85.24,62.18	74.63,61.27	74.12,55.90	68.15,59.00
path	64.92,57.85	62.02,54.94	47.51,59.50	43.25,60.21
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 230 Mining to collect these.
|tip These are a rare spawn.
|tip However, they can be found more consistently inside the Blackrock Depths dungeon and Molten Core raid.
collect Dark Iron Ore##11370 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Thorium Ore",{
author="support@zygorguides.com",
},[[
step
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 245 Mining to collect these.
collect Thorium Ore##10620 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Dense Stone",{
author="support@zygorguides.com",
},[[
step
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
Click ore as you follow the path around this area
|tip Track them on your minimap with "Find Minerals".
|tip You will need level 245 Mining to collect these.
collect Dense Stone##12365 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Guardian Stone",{
author="support@zygorguides.com",
},[[
step
map Un'Goro Crater
path follow smart; loop on; ants curved; dist 20
path	40.24,18.78	37.48,20.20	33.48,23.57	40.40,25.92	43.96,29.92
path	44.56,36.72	43.43,40.74	44.16,43.79	48.24,41.64	51.27,39.78
path	56.65,39.87	54.16,36.20	55.85,31.39	57.79,26.10	56.20,21.10
path	56.97,14.88	53.59,13.78	51.39,17.24	48.13,13.45
Kill Stone Guardians as you follow the path around this area
|tip These are level 60-61 Elite enemies.
collect Guardian Stone##12809 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Farming Guides\\Elementium Ore",{
author="support@zygorguides.com",
},[[
step
Follow the path up |goto Searing Gorge 33.53,75.22 < 20 |only if walking
Enter Blackrock Mountain |goto Searing Gorge 34.76,83.98 < 7 |walk
Run up the chain |goto Eastern Kingdoms 48.73,63.79 < 5 |walk
Jump down here |goto 48.77,63.67 < 5 |walk
Follow the path up |goto 48.83,63.66 < 5 |walk
Enter the building |goto 48.91,63.92 < 5 |walk
click Orb of Command##179879 |goto 48.92,64.47
Teleport to Blackwing Lair |goto Blackwing Lair 0.00,0.00 < 1000 |noway |c
|tip You must be attuned to enter the raid.
step
Inside the Blackwing Lair Raid:
kill Blackwing Technician##13996+
collect Elementium Ore##18562 |n
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Skinning (1-525)",{
author="support@zygorguides.com",
description="This guide will walk you through 1-525 Skinning.",
},[[
step
talk Maris Granger##1292
Train Apprentice Skinning |skillmax Skinning,75 |goto Stormwind City/0 72.15,62.25
step
kill Stonetusk Boar##113+ |goto Elwynn Forest 41.58,86.96
|tip Skin their corpses.
Reach Level 60 Skinning |skill Skinning,60
step
talk Maris Granger##1292
Train Journeyman Skinning |skillmax Skinning,150 |goto Stormwind City/0 72.15,62.25
step
map Loch Modan/0
path follow smart; loop on; ants straight; dist 30
path	50.02,65.24	54.62,62.04	57.95,57.29	60.02,48.69	56.84,37.31
path	51.41,31.60	50.94,41.51	52.17,51.49	49.38,62.03
Kill Loch Crocolisks and Boars in the area.
|tip Skin their corpses.
Reach Level 110 Skinning |skill Skinning,110
step
map Wetlands/0
path follow smart; loop on; ants straight; dist 30
path	29.88,43.30	25.89,45.54	26.00,48.24	22.86,50.23	24.10,52.28
path	23.36,55.61
Kill Raptors in the area.
|tip Skin their corpses.
Reach Level 150 Skinning |skill Skinning,150
step
talk Balthus Stoneflayer##6291
Train Expert Skinning |skillmax Skinning,225 |goto Ironforge/0 39.83,32.45
|tip You must be at least level 10 to learn Expert Skinning. |only if level < 10
step
map Wetlands/0
path follow smart; loop on; ants straight; dist 30
path	65.17,31.50	67.73,34.57	69.71,37.53	69.72,39.17	72.55,40.59
path	75.75,43.09	74.34,47.16	71.58,47.06	68.67,46.65	66.43,42.33
path	68.50,37.57
Kill Raptors and Dragonkin in the area.
|tip Skin their corpses.
Reach 185 Skinning |skill Skinning,185
step
map The Hinterlands/0
path follow smart; loop on; ants straight; dist 30
path	18.94,47.89	20.33,50.63	22.02,51.87	24.64,52.68	22.12,55.79
path	20.24,56.87	18.33,55.42	15.26,54.04
kill Mangy Silvermane##2923+
|tip Skin their corpses.
Reach 205 Skinning |skill Skinning,205
step
talk Balthus Stoneflayer##6291
Train Artisan Skinning |skillmax Skinning,300 |goto Ironforge/0 39.83,32.45
|tip You must be at least level 25 to learn Artisan Skinning. |only if level < 25
step
map Thousand Needles/0
path follow smart; loop on; ants straight; dist 30
path	75.62,47.01	70.58,49.25	68.78,48.07	66.37,45.46	64.01,43.72
path	59.87,43.88	57.01,43.58	54.77,41.66	57.10,53.30	62.03,57.52
path	65.36,58.56	64.04,64.55	64.03,67.49	64.01,70.28	65.52,72.46
path	65.91,74.88	65.25,77.61	64.32,79.70
Kill Scorpions, Cobras and Wind Serpents along the path.
|tip Skin their corpses.
Reach 265 Skinning |skill Skinning,265
step
map Un'Goro Crater/0
path follow smart; loop on; ants straight; dist 30
path	71.50,51.89	68.37,50.13	66.83,49.45	64.55,50.01	62.23,51.83
path	62.73,56.71	63.99,59.59	63.75,62.76	62.89,66.14	65.36,70.11
path	67.29,72.47	70.55,63.82	70.89,60.76
kill Venomhide Ravasaur##6508+
|tip Skin their corpses.
Reach 300 Skinnning |skill Skinning,300
step
talk Maris Granger##1292
Train Master Skinning |skillmax Skinning,375 |goto Stormwind City/0 72.15,62.25
|tip You must be at least level 40 to learn Master Skinning. |only if level < 40
step
map Hellfire Peninsula/0
path follow smart; loop on; ants straight; dist 30
path	67.67,62.73	69.93,63.31	68.52,65.87	66.74,66.93	61.37,76.30
path	61.93,78.10	59.44,77.65	58.14,73.92
kill Starving Helboar##16879+
|tip Skin their corpses.
Reach 305 Skinning |skill Skinning,305
step
map Hellfire Peninsula/0
path follow smart; loop on; ants straight; dist 30
path	53.26,71.27	52.73,70.26	50.84,68.97	49.79,70.09	50.38,72.02
path	51.18,73.94	51.33,75.80
kill Deranged Helboar##16863+
|tip Skin their corpses.
Reach 310 Skinning |skill Skinning,310
step
map Hellfire Peninsula/0
path follow smart; loop on; ants straight; dist 30
path	41.25,83.55	40.47,84.73	38.69,86.68	37.48,88.25	36.69,90.47
path	37.80,89.87	39.49,88.08	40.61,86.62	41.85,85.56
Kill Ravagers in the area.
|tip Skin their corpses.
Reach 330 Skinning |skill Skinning,330
step
map Nagrand/0
path follow smart; loop on; ants straight; dist 30
path	62.06,44.42	59.47,44.66	58.06,45.14	57.00,45.96	55.04,44.81
path	53.28,43.00	52.14,42.31	51.03,40.98	50.19,39.58	50.09,37.13
path	51.20,32.74	52.07,29.94	49.70,29.32	48.27,30.45	47.68,39.20
path	49.49,42.11	49.25,45.08	50.85,48.34	52.43,48.11	56.05,47.54
Kill Talbuks and Clefthoofs in the area.
|tip Skin their corpses.
Reach 350 Skinning |skill Skinning,350
step
talk Maris Granger##1292
Train Grand Master Skinning |skillmax Skinning,450 |goto Stormwind City/0 72.15,62.25
|tip You must be at least level 55 to learn Grand Master Skinning. |only if level < 55
step
map Borean Tundra/0
path follow smart; loop on; ants straight; dist 30
path	44.51,48.38	45.85,47.32	46.44,44.34	45.02,41.41	43.61,41.61
path	42.56,43.29	41.23,43.73	42.93,46.90
Kill Rhinos in the area.
|tip Skin their corpses.
Reach 395 Skinning |skill Skinning,395
step
map Sholazar Basin/0
path follow smart; loop on; ants straight; dist 30
path	56.24,78.81	56.68,75.64	58.12,72.80	59.86,70.72	63.95,70.51
path	65.62,70.12	70.28,70.04	67.18,73.51	64.45,74.90
Kill Gorillas in the area.
|tip Skin their corpses.
Reach 450 Skinning |skill Skinning,450
step
talk Maris Granger##1292
Train Illustrious Grand Master Skinning |skillmax Skinning,525 |goto Stormwind City/0 72.15,62.25
|tip You must be at least level 75 to learn Illustrious Grand Master Skinning. |only if level < 75
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Green Whelp Scale",{
author="support@zygorguides.com",
},[[
step
map Feralas/0
path follow smart; loop on; ants straight; dist 30
path    48.14,6.64    48.72,7.91    48.27,10.45    46.87,11.04    46.84,14.19
path    50.11,15.51    53.01,15.15    54.11,10.94    54.53,8.34    54.49,6.37
path    52.34,5.60    50.63,4.94
kill Noxious Whelp##39384+
|tip Skin their corpses.
collect Green Whelp Scale##7392 |n
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Black Whelp Scale",{
author="support@zygorguides.com",
},[[
step
map Wetlands/0
path follow smart; loop on; ants straight; dist 30
path    62.31,48.99    64.01,49.48    64.65,52.28    65.76,54.25    67.71,51.84
path    70.12,48.67    71.74,46.81    69.07,44.89    66.58,43.19    63.75,40.89
path    61.29,38.83
kill Ebon Whelp##42042+
|tip Skin their corpses.
collect Black Whelp Scale##7286 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Ruined Leather Scraps",{
author="support@zygorguides.com",
},[[
step
kill Stonetusk Boar##113+
|tip Skin their corpses.
collect Ruined Leather Scraps##2934 |n |goto Elwynn Forest 41.58,86.96
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Light Leather",{
author="support@zygorguides.com",
},[[
step
kill Stonetusk Boar##113+
|tip Skin their corpses.
collect Light Leather##2318 |n |goto Elwynn Forest 41.58,86.96
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Slimy Murloc Scale",{
author="support@zygorguides.com",
},[[
step
Enter the Blackfathom Deeps dungeon:
Kill all murloc enemies within the dungeon
collect Slimy Murloc Scale##5784 |n |goto Ashenvale/0 14.44,14.28
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Medium Hide",{
author="support@zygorguides.com",
},[[
step
map Wetlands/0
path follow smart; loop on; ants straight; dist 30
path	65.17,31.50	67.73,34.57	69.71,37.53	69.72,39.17	72.55,40.59
path	75.75,43.09	74.34,47.16	71.58,47.06	68.67,46.65	66.43,42.33
path	68.50,37.57
Kill Raptor and Dragonkin enemies in the area.
|tip Skin their corpses.
|tip You will need level 115 Skinning to collect these.
collect Medium Hide##4232 |n
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Heavy Leather",{
author="support@zygorguides.com",
},[[
step
Kill enemies around this area
|tip Only beast enemies will be skinnable.
|tip You cannot skin the spiders.
|tip Skin their corpses.
|tip You will need level 185 Skinning to collect these.
collect Heavy Leather##4234 |n |goto Dustwallow Marsh 40.73,58.37
You can find more around: |notinsticky
[43.35,50.06]
[40.42,41.57]
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Raptor Hide",{
author="support@zygorguides.com",
},[[
step
map Northern Stranglethorn/0
path follow smart; loop on; ants straight; dist 30
path	25.65,30.22	27.84,30.72	29.96,31.83	31.18,32.26	32.43,30.42
path	31.93,27.74
Kill raptor enemies around this area
collect Raptor Hide##4461 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Heavy Hide",{
author="support@zygorguides.com",
},[[
step
Kill enemies around this area
|tip Skin their corpses.
|tip You will need level 205 Skinning to collect these.
collect Heavy Hide##4235 |n |goto The Hinterlands 16.19,50.97
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Turtle Scale",{
author="support@zygorguides.com",
},[[
step
kill Steeljaw Snapper##14123+
|tip Skin their corpses.
|tip You will need level 210 Skinning to collect these.
collect Turtle Scale##8167 |n |goto Tanaris/0 67.22,25.77
You can find more around: |notinsticky
[67.57,28.82]
[67.85,35.25]
[68.10,39.75]
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Thick Murloc Scale",{
author="support@zygorguides.com",
},[[
step
Kill Mirefin enemies around this area
collect Thick Murloc Scale##5785 |n |goto Dustwallow Marsh 58.78,9.45
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Thick Leather",{
author="support@zygorguides.com",
},[[
step
Kill Ravasaur enemies around this area
|tip Skin their corpses.
|tip You will need level 250 Skinning to collect these.
collect Thick Leather##4304 |n |goto Un'Goro Crater 67.37,72.59
You can find more around: |notinsticky
[65.75,64.16]
[70.21,55.33]
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Thick Hide",{
author="support@zygorguides.com",
},[[
step
Kill enemies around this area
|tip Only beast enemies will be skinnable.
|tip Skin their corpses.
|tip You will need level 245 Skinning to collect these.
collect Thick Hide##8169 |n |goto Un'Goro Crater 67.37,72.59
|tip These have a low drop rate.
You can find more around: |notinsticky
[65.75,64.16]
[70.21,55.33]
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Worn Dragonscale",{
author="support@zygorguides.com",
},[[
step
Enter the Sunken Temple dungeon:
Kill all dragonkin enemies within the dungeon
|tip Skin their corpses.
collect Worn Dragonscale##8165 |n |goto Swamp of Sorrows/0 69.63,53.77
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Scorpid Scale",{
author="support@zygorguides.com",
},[[
step
Kill Scorpid enemies around this area
|tip Skin their corpses.
|tip You will need level 215 Skinning to collect these.
collect Scorpid Scale##8154 |n |goto Tanaris/0 50.93,42.32
You can find more around: |notinsticky
[50.33,48.18]
[44.99,44.85]
[39.08,34.58]
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Devilsaur Leather",{
author="support@zygorguides.com",
},[[
step
Kill Devilsaur enemies around this area
|tip Skin their corpses.
|tip These are level 54-56 Elite enemies.
|tip It is recommended you clear the area of other enemies before fighting the Devilsaur.
|tip You will need level 270 Skinning to collect these.
collect Devilsaur Leather##15417 |n |goto Un'Goro Crater 34.25,38.82
You can find more around: |notinsticky
[40.02,62.25]
[57.66,70.17]
[71.30,51.78]
[68.80,26.05]
[31.30,25.52]
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Rugged Leather",{
author="support@zygorguides.com",
},[[
step
Kill Ice Thistle enemies around this area
|tip You can find more inside the cave.
|tip Skin their corpses.
|tip You will need level 275 Skinning to collect these.
collect Rugged Leather##8170 |n |goto Winterspring 64.81,54.76
You can find more inside the cave at [66.87,54.64]
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Green Dragonscale",{
author="support@zygorguides.com",
},[[
step
Enter the Sunken Temple dungeon:
Kill all dragonkin enemies within the dungeon
|tip Skin their corpses.
collect Green Dragonscale##15412 |n |goto Swamp of Sorrows/0 69.63,53.77
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Rugged Hide",{
author="support@zygorguides.com",
},[[
step
Kill Ice Thistle enemies around this area
|tip You can find more inside the cave.
|tip Skin their corpses.
|tip You will need level 275 Skinning to collect these.
collect Rugged Hide##8171 |n |goto Winterspring/0 64.81,54.76
You can find more inside the cave at [66.87,54.64]
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Black Dragonscale",{
author="support@zygorguides.com",
},[[
step
Enter the Blackwing Lair raid:
Kill all enemies within the raid
|tip Skin their corpses.
|tip Level 61's require 305 Skinning, level 62's require 310 Skinning, and bosses require 315 Skinning.
collect Black Dragonscale##15416 |n |goto Searing Gorge/0 40.57,95.81
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Heavy Scorpid Scale",{
author="support@zygorguides.com",
},[[
step
Kill Stonelash enemies around this area
|tip Skin their corpses.
|tip You will need level 270 Skinning to collect these.
collect Heavy Scorpid Scale##15408 |n |goto Silithus/0 31.40,38.23
You can find more around: |notinsticky
[26.71,43.66]
[34.12,45.88]
[39.13,52.28]
[42.85,58.57]
[47.97,61.32]
[46.67,70.30]
[45.02,83.62]
[40.32,81.44]
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Core Leather",{
author="support@zygorguides.com",
},[[
step
Enter the Molten Core Raid:
Kill Ancient Core Hounds and Magmadar
|tip They are trash mobs found throughout the raid and the second raid boss.
|tip Skin their corpses.
|tip Level 61's require 305 Skinning, level 62's require 310 Skinning, and bosses require 315 Skinning.
collect Core Leather##17012 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Light Hide",{
author="support@zygorguides.com",
},[[
step
map The Barrens/0
path follow smart; loop on; ants straight; dist 30
path	45.26,75.10	44.79,71.91	44.31,69.70	45.77,68.41	47.32,67.35
path	48.33,66.30	49.31,67.89	50.19,68.81	49.68,70.73	48.47,72.61
path	48.91,74.81
Kill enemies as you follow the path around this area
|tip Only beast enemies will be skinnable.
|tip Skin their corpses.
|tip You will need level 100 Skinning to collect these.
collect Light Hide##783 |n
|tip These have a low drop rate.
'|confirm
]])
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
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Farming Guides\\Warbear Leather",{
author="support@zygorguides.com",
},[[
step
map Blasted Lands/0
path follow smart; loop on; ants straight; dist 30
path	39.25,54.66	37.83,52.57	36.22,52.53	35.97,55.35	35.83,57.39
path	37.08,58.93	37.94,61.85	39.78,59.69
kill Tainted Black Bear##42336+
|tip Skin their corpses.
|tip You will need level 275 Skinning to collect these.
collect Warbear Leather##15419 |n
|tip These have a low drop rate.
'|confirm
]])
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
talk Georgio Bolero##1346
|tip Inside the building.
Train Apprentice Tailoring |skillmax Tailoring,75 |goto Stormwind City/0 53.07,81.34
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Tailoring |confirm |next "Begin_Profession_Leveling_Classic" |or
'|complete skill("Tailoring") >= 375 |or |next "Begin_Profession_Leveling_Classic"
stickystart "Collect_Wool_Cloth_Total"
stickystart "Collect_Silk_Cloth_Total"
stickystart "Collect_Mageweave_Cloth_Total"
stickystart "Collect_Runecloth_Total"
step
Kill enemies around this area
|tip Be sure to enter the mine as well.
collect 204 Linen Cloth##2589 |goto Westfall 44.55,25.01 |or
|tip Farm them from level 5-20 humanoid mobs or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Tailoring") >= 50 |or
step
label "Collect_Wool_Cloth_Total"
Follow the road up |goto Redridge Mountains 35.71,43.17 < 15 |only if walking |notinsticky
Continue following the road |goto 47.06,30.39 < 15 |only if walking |notinsticky
Follow the path up |goto 40.87,15.00 < 10 |only if walking |notinsticky
Kill Blackrock enemies around this area |notinsticky
collect 135 Wool Cloth##2592 |goto 36.22,9.93 |or
You can find more inside the cave at [33.21,6.91] |notinsticky
|tip Farm them from level 16-30 humanoid mobs or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Tailoring") >= 100 |or
step
label "Collect_Silk_Cloth_Total"
Kill Grimtotem enemies around this area |notinsticky
|tip You can find more inside the cave. |notinsticky
collect 804 Silk Cloth##4306 |goto Thousand Needles 13.26,5.84 |or
|tip Farm them from level 28-40 humanoid mobs or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Tailoring") >= 146 |or
step
label "Collect_Mageweave_Cloth_Total"
Kill Dunemaul enemies around this area |notinsticky
collect 500 Mageweave Cloth##4338 |goto Tanaris/0 40.50,55.50 |or
|tip Farm them from level 38-50 humanoid mobs or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Tailoring") >= 185 |or
step
label "Collect_Runecloth_Total"
Kill Blackrock enemies around this area |notinsticky
|tip You can find more inside the building. |notinsticky
collect 800 Runecloth###14047 |goto Burning Steppes 33.68,35.72 |or
|tip Farm them from level 50+ humanoid mobs or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Tailoring") >= 260 |or
step
label "Begin_Profession_Leveling_Classic"
Kill enemies around this area
|tip Be sure to enter the mine as well.
collect 204 Linen Cloth##2589 |or |goto Westfall 44.55,25.01
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
talk Alexandra Bolero##1347
|tip Inside the building.
buy 40 Coarse Thread##2320 |goto Stormwind City/0 53.14,81.75 |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 70 |or
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Linen Belt |learn Linen Belt##8776 |goto Stormwind City/0 53.07,81.34
step
create 40 Linen Belt##8776,Tailoring,70
|tip You may need to make a few more of these.
|tip Each additional Linen Belt requires 1 Bolt of Linen Cloth and 1 Coarse Thread.
step
collect 10 Bolt of Linen Cloth##2996 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 75 |or
step
talk Alexandra Bolero##1347
|tip Inside the building.
buy 15 Coarse Thread##2320 |goto Stormwind City/0 53.14,81.75 |or
|tip You purchased these in a previous step.
'|complete skill("Tailoring") >= 75 |or
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Reinforced Linen Cape |learn Reinforced Linen Cape##2397 |goto Stormwind City/0 53.07,81.34
step
create 5 Reinforced Linen Cape##2397,Tailoring,75
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Journeyman Tailoring |skillmax Tailoring,150 |goto Stormwind City/0 53.07,81.34
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Bolt of Woolen Cloth |learn Bolt of Woolen Cloth##2964 |goto Stormwind City/0 53.07,81.34
step
Follow the road up |goto Redridge Mountains 35.71,43.17 < 15 |only if walking
Continue following the road |goto 47.06,30.39 < 15 |only if walking
Follow the path up |goto 40.87,15.00 < 10 |only if walking
Kill Blackrock enemies around this area
collect 135 Wool Cloth##2592 |or |goto 36.22,9.93
You can find more inside the cave at [33.21,6.91]
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
talk Alexandra Bolero##1347
|tip Inside the building.
buy 43 Fine Thread##2321 |goto Stormwind City/0 53.14,81.75 |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 110 |or
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Simple Kilt |learn Simple Kilt##12046 |goto Stormwind City/0 53.07,81.34
step
create 13 Simple Kilt##12046,Tailoring,110
|tip You may need to make a few more of these.
|tip Each additional Simple Kilt requires 4 Bolts of Linen Cloth and 1 Fine Thread.
step
collect 45 Bolt of Woolen Cloth##2997 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 125 |or
step
talk Alexandra Bolero##1347
|tip Inside the building.
buy 30 Fine Thread##2321 |goto Stormwind City/0 53.14,81.75 |or
|tip You purchased these in a previous step.
'|complete skill("Tailoring") >= 125 |or
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Double-stitched Woolen Shoulders |learn Double-stitched Woolen Shoulders##3848 |goto Stormwind City/0 53.07,81.34
step
create 15 Double-stitched Woolen Shoulders##3848,Tailoring,125
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Expert Tailoring |skillmax Tailoring,225 |goto Stormwind City/0 53.07,81.34
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Bolt of Silk Cloth |learn Bolt of Silk Cloth##3839 |goto Stormwind City/0 53.07,81.34
step
Kill Grimtotem enemies around this area
|tip You can find more inside the cave.
collect 804 Silk Cloth##4306 |or |goto Thousand Needles 13.26,5.84
|tip Farm them from level 28-40 humanoid mobs or purchase them from the auction house.
'|complete skill("Tailoring") >= 146 |or
step
create 201 Bolt of Silk Cloth##3839,Tailoring,201 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 146 |or
step
create 1 Bolt of Silk Cloth##3839,Tailoring,145
|tip Save at least 201 of these; you will need them for future steps.
step
collect 36 Bolt of Silk Cloth##4305 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 160 |or
step
talk Alexandra Bolero##1347
|tip Inside the building.
buy 18 Fine Thread##2321 |goto Stormwind City/0 53.14,81.75 |or 2
buy 36 Blue Dye##6260 |goto Stormwind City/0 53.14,81.75 |or 2
'|complete skill("Tailoring") >= 160 |or
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Azure Silk Hood |learn Azure Silk Hood##8760 |goto Stormwind City/0 53.07,81.34
step
create 18 Azure Silk Hood##8760,Tailoring,160
|tip You may need to create more or less of these.
|tip Each additional Azure Silk Hood requires 2 Bolts of Silk Cloth, 2 Blue Dye, and 1 Fine Thread.
step
collect 30 Bolt of Silk Cloth##4305 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 170 |or
step
talk Alexandra Bolero##1347
|tip Inside the building.
buy 20 Fine Thread##2321 |goto Stormwind City/0 53.14,81.75 |or
'|complete skill("Tailoring") >= 170 |or
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Silk Headband |learn Silk Headband##8762 |goto Stormwind City/0 53.07,81.34
step
create 10 Silk Headband##8762,Tailoring,170
step
collect 15 Bolt of Silk Cloth##4305 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 175 |or
step
talk Alexandra Bolero##1347
|tip Inside the building.
buy 10 Bleach##2324 |goto Stormwind City/0 53.14,81.75 |or 2
buy 5 Fine Thread##2321 |goto Stormwind City/0 53.14,81.75 |or 2
'|complete skill("Tailoring") >= 175 |or
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Formal White Shirt |learn Formal White Shirt##3871 |goto Stormwind City/0 53.07,81.34
step
create 5 Formal White Shirt##3871,Tailoring,175
step
Kill Dunemaul enemies around this area
collect 500 Mageweave Cloth##4338 |or |goto Tanaris/0 40.50,55.50
|tip Farm them from level 38-50 humanoid mobs or purchase them from the auction house.
'|complete skill("Tailoring") >= 185 |or
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Bolt of Mageweave |learn Bolt of Mageweave##3865 |goto Stormwind City/0 53.07,81.34
step
create 100 Bolt of Mageweave##3865,Tailoring,100 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 186 |or
step
create 1 Bolt of Mageweave##3865,Tailoring,185
|tip Save at least 100 of these; you will need them for future steps.
step
collect 80 Bolt of Silk Cloth##4305 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 205 |or
step
talk Alexandra Bolero##1347
|tip Inside the building.
buy 40 Fine Thread##2321 |goto Stormwind City/0 53.14,81.75 |or 2
buy 40 Red Dye##2604 |goto Stormwind City/0 53.14,81.75 |or 2
'|complete skill("Tailoring") >= 205 |or
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Crimson Silk Vest |learn Crimson Silk Vest##8791 |goto Stormwind City/0 53.07,81.34
step
create 20 Crimson Silk Vest##8791,Tailoring,205
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Artisan Tailoring |skillmax Tailoring,300 |goto Stormwind City/0 53.07,81.34
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Crimson Silk Pantaloons |learn Crimson Silk Pantaloons##8799 |goto Stormwind City/0 53.07,81.34
step
collect 40 Bolt of Silk Cloth##4305 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 215 |or
step
talk Alexandra Bolero##1347
|tip Inside the building.
buy 30 Red Dye##2604 |goto Stormwind City/0 53.14,81.75 |or 2
buy 30 Silken Thread##4291 |goto Stormwind City/0 53.14,81.75 |or 2
'|complete skill("Tailoring") >= 215 |or
step
create 10 Crimson Silk Pantaloons##8799,Tailoring,215
step
collect 5 Bolt of Mageweave##4339 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 220 |or
step
talk Alexandra Bolero##1347
|tip Inside the building.
buy 5 Orange Dye##6261 |goto Stormwind City/0 53.14,81.75 |or 2
buy 5 Heavy Silken Thread##8343 |goto Stormwind City/0 53.14,81.75 |or 2
'|complete skill("Tailoring") >= 220 |or
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Orange Mageweave Shirt |learn Orange Mageweave Shirt##12061 |goto Stormwind City/0 53.07,81.34
step
create 5 Orange Mageweave Shirt##12061,Tailoring,220
step
collect 20 Bolt of Mageweave##4339 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 230 |or
step
talk Alexandra Bolero##1347
|tip Inside the building.
buy 20 Heavy Silken Thread##8343 |goto Stormwind City/0 53.14,81.75 |or
'|complete skill("Tailoring") >= 230 |or
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Black Mageweave Gloves |learn Black Mageweave Gloves##12053 |goto Stormwind City/0 53.07,81.34
step
create 10 Black Mageweave Gloves##12053,Tailoring,230
step
collect 75 Bolt of Mageweave##4339 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 250 |or
step
talk Alexandra Bolero##1347
|tip Inside the building.
buy 50 Heavy Silken Thread##8343 |goto Stormwind City/0 53.14,81.75 |or
'|complete skill("Tailoring") >= 250 |or
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Black Mageweave Headband |learn Black Mageweave Headband##12072 |goto Stormwind City/0 53.07,81.34
step
create 25 Black Mageweave Headband##12072,Tailoring,250
|tip You may need to create more or less of these.
|tip Each additional Black Mageweave Headband requires 3 Bolts of Mageweave and 2 Heavy Silken Thread.
step
Kill Blackrock enemies around this area
|tip You can find more inside the building.
collect 800 Runecloth###14047 |or |goto Burning Steppes 42.17,35.64
|tip Farm them from level 50+ humanoid mobs or purchase them from the auction house.
'|complete skill("Tailoring") >= 260 |or
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Bolt of Runecloth |learn Bolt of Runecloth##18401 |goto Stormwind City/0 53.07,81.34
step
create 200 Bolt of Runecloth##18401,Tailoring,200 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 261 |or
step
create 1 Bolt of Runecloth##18401,Tailoring,260
|tip Save at least 200 of these; you will need them for future steps.
step
collect 75 Bolt of Runecloth##14048 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 280 |or
step
talk Alexandra Bolero##1347
|tip Inside the building.
buy 25 Rune Thread##14341 |goto Stormwind City/0 53.14,81.75 |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 280 |or
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Runecloth Belt |learn Runecloth Belt##18402 |goto Stormwind City/0 53.07,81.34
step
create 25 Runecloth Belt##18402,Tailoring,280
|tip You may need to create more or less of these.
|tip Each additional Runecloth Belt requires 3 Bolts of Runecloth and 1 Rune Thread.
step
collect 125 Bolt of Runecloth##14048 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 300 |or
step
talk Alexandra Bolero##1347
|tip Inside the building.
buy 50 Rune Thread##14341 |goto Stormwind City/0 53.14,81.75 |or
'|complete skill("Tailoring") >= 300 |or
step
talk Georgio Bolero##1346
|tip Inside the building.
Train Runecloth Gloves |learn Runecloth Gloves##18417 |goto Stormwind City/0 53.07,81.34
step
create 25 Runecloth Gloves##18417,Tailoring,300
|tip You may need to create more or less of these.
|tip Each additional Runecloth Glove requires 5 Bolts of Runecloth and 2 Rune Thread.
step
Reach Level 58 |ding 58
|tip You must be at least level 58 to train Master professions in Outland.
|tip Use the leveling guides to accomplish this.
step
talk Hama##18772
|tip Upstairs inside the building.
Train Master Tailoring |skillmax Tailoring,375 |goto Hellfire Peninsula/0 54.63,63.71
step
talk Hama##18772
|tip Upstairs inside the building.
Train Bolt of Netherweave |learn Bolt of Netherweave##26745 |goto Hellfire Peninsula/0 54.63,63.71
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Burning Crusade-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Tailoring |confirm |next "Begin_Profession_Leveling_Outland" |or
'|complete skill("Tailoring") >= 375 |or |next "Begin_Profession_Leveling_Outland"
stickystart "Collect_Arcane_Dust_Total"
stickystart "Collect_Knothide_Leather_Total"
step
map Shadowmoon Valley/0
path follow smart; loop on; ants curved; dist 20
path	23.9,41.3	22.6,40.1	22.3,38.4	22.1,37.1	20.7,38.0
path	20.8,36.2	21.8,34.2	22.7,31.2	23.7,31.1	24.9,32.3
path	26.0,33.3	25.1,34.6	26.2,36.1	25.1,38.1	24.9,39.8
Kill enemies around this area
collect 740 Netherweave Cloth##21877 |or
|tip Farm them from Outland humanoid mobs or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Tailoring") >= 326 |or
step
label "Collect_Arcane_Dust_Total"
collect 12 Arcane Dust##22445 |or
|tip Disenchant them from Outland uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Tailoring") >= 331 |or
step
label "Collect_Knothide_Leather_Total"
map Netherstorm/0
path follow smart; loop on; ants curved; dist 30
path	43.61,57.06	45.22,57.65	47.41,56.58	48.25,54.31	48.18,51.86
path	46.52,51.17	45.58,49.75	43.63,50.57	43.29,52.27	43.66,54.99
path	44.85,56.21
Kill enemies around this area |notinsticky
|tip Only Beast enemies will be skinnable. |notinsticky
|tip Skin their corpses. |notinsticky
collect 20 Knothide Leather##21887 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Tailoring") >= 346 |or
step
label "Begin_Profession_Leveling_Outland"
map Shadowmoon Valley/0
path follow smart; loop on; ants curved; dist 20
path	23.9,41.3	22.6,40.1	22.3,38.4	22.1,37.1	20.7,38.0
path	20.8,36.2	21.8,34.2	22.7,31.2	23.7,31.1	24.9,32.3
path	26.0,33.3	25.1,34.6	26.2,36.1	25.1,38.1	24.9,39.8
Kill enemies around this area
collect 740 Netherweave Cloth##21877 |or
|tip Farm them from Outland humanoid mobs or purchase them from the auction house.
'|complete skill("Tailoring") >= 326 |or
step
create 148 Bolt of Netherweave##26745,Tailoring,148 total |or
|tip Save these, you will need them for future steps.
'|complete skill("Tailoring") >= 326 |or
step
create 1 Bolt of Netherweave##26745,Tailoring,325
|tip Save at least 148 of these; you will need them for future steps.
stickystart "Collect_Arcane_Dust_331"
step
collect 18 Bolt of Netherweave##21840 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 331 |or
step
label "Collect_Arcane_Dust_331"
collect 12 Arcane Dust##22445 |or
|tip Disenchant them from Outland uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Tailoring") >= 331 |or
step
talk Eiin##19213
buy Pattern: Bolt of Imbued Netherweave##21892 |goto Shattrath City/0 66.2,68.6 |complete skill("Tailoring") >= 331 or knowsrecipe(26747)
buy Pattern: Netherweave Tunic##21897 |goto Shattrath City/0 66.26,68.91 |complete skill("Tailoring") >= 350 or knowsrecipe(26774)
|tip Save this, you will need it later.
step
use the Pattern: Bolt of Imbued Netherweave##21892
Train Bolt of Imbued Netherweave |learn Bolt of Imbued Netherweave##26747
step
create 6 Bolt of Imbued Netherweave##26747,Tailoring,331 |goto Shattrath City/0 66.50,68.73
|tip You must be standing at the Mana Loom in Shattrath City to craft these.
step
collect 30 Bolt of Netherweave##21840 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 336 |or
step
talk Hama##18772
|tip Upstairs inside the building.
buy 5 Rune Thread##14341 |goto Hellfire Peninsula/0 54.63,63.71 |or
'|complete skill("Tailoring") >= 336 |or
step
talk Hama##18772
|tip Upstairs inside the building.
Train Netherweave Pants |learn Netherweave Pants##26771 |goto Hellfire Peninsula/0 54.63,63.71
step
create 5 Netherweave Pants##26771,Tailoring,336
|tip You may need to create more of these.
|tip Each additional Netherweave Pants requires 6 Bolts of Netherweave and 1 Rune Thread.
stickystart "Collect_Knothide_Leather_346"
step
collect 60 Bolt of Netherweave##21840 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 346 |or
step
label "Collect_Knothide_Leather_346"
map Netherstorm/0
path follow smart; loop on; ants curved; dist 30
path	43.61,57.06	45.22,57.65	47.41,56.58	48.25,54.31	48.18,51.86
path	46.52,51.17	45.58,49.75	43.63,50.57	43.29,52.27	43.66,54.99
path	44.85,56.21
Kill enemies around this area
|tip Only Beast enemies will be skinnable.
|tip Skin their corpses.
collect 20 Knothide Leather##21887 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Tailoring") >= 346 |or
step
talk Hama##18772
|tip Upstairs inside the building.
buy 10 Rune Thread##14341 |goto Hellfire Peninsula/0 54.63,63.71 |or
'|complete skill("Tailoring") >= 346 |or
step
talk Hama##18772
|tip Upstairs inside the building.
Train Netherweave Boots |learn Netherweave Boots##26772 |goto Hellfire Peninsula/0 54.63,63.71
step
create 10 Netherweave Boots##26772,Tailoring,346
step
collect 40 Bolt of Netherweave##21840 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 350 |or
step
talk Hama##18772
|tip Upstairs inside the building.
buy 10 Rune Thread##14341 |goto Hellfire Peninsula/0 54.63,63.71 |or
'|complete skill("Tailoring") >= 350 |or
step
use the Pattern: Netherweave Tunic##21897
|tip You purchased this in a previous step.
Learn Netherweave Tunic |learn Netherweave Tunic##26774
step
create 5 Netherweave Tunic##26774,Tailoring,350
step
Reach Level 68 |ding 68
|tip You must be at least level 68 to train Grand Master professions in Northrend.
|tip Use the leveling guides to accomplish this.
step
talk Charles Worth##28699
|tip Inside the building.
Learn Grand Master Tailoring |skillmax Tailoring,450 |goto Dalaran/1 36.14,33.55
step
talk Charles Worth##28699
|tip Inside the building.
Train Bolt of Frostweave |learn Bolt of Frostweave##55899 |goto Dalaran/1 36.14,33.55
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Lich King-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Tailoring |confirm |next "Begin_Profession_Leveling_Northrend" |or
'|complete skill("Tailoring") >= 450 |or |next "Begin_Profession_Leveling_Northrend"
stickystart "Collect_Infinite_Dust_Total"
step
Collect 5 Gold |complete _G.GetMoney() >= 50000 |q 13272 |future
|tip You will need 5 gold to complete the quest to obtain Northrend Cloth Scavenging.
|tip This will increase your Frostweave Cloth drops.
step
talk Charles Worth##28699
|tip Inside the building.
accept Cloth Scavenging##13272 |goto Dalaran/1 36.14,33.55
|tip You will train Northrend Cloth Scavenging.
|tip This will increase your Frostweave Cloth drops.
step
kill Mjordin Combatant##30037+
|tip They will continuously respawn when you deplete their numbers.
collect 2975 Frostweave Cloth##33470 |goto Icecrown/0 37.29,23.72 |or
|tip Farm them from Northrend humanoid mobs or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Tailoring") >= 450 |or
step
label "Collect_Infinite_Dust_Total"
collect 240 Infinite Dust##34054 |or
|tip Disenchant them from Northrend uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Tailoring") >= 405 |or
step
label "Begin_Profession_Leveling_Northrend"
Collect 5 Gold |complete _G.GetMoney() >= 50000 |q 13272 |future
|tip You will need 5 gold to complete the quest to obtain Northrend Cloth Scavenging.
|tip This will increase your Frostweave Cloth drops.
step
talk Charles Worth##28699
|tip Inside the building.
accept Cloth Scavenging##13272 |goto Dalaran/1 36.14,33.55
|tip You will train Northrend Cloth Scavenging.
|tip This will increase your Frostweave Cloth drops.
step
kill Mjordin Combatant##30037+
|tip They will continuously respawn when you deplete their numbers.
collect 2975 Frostweave Cloth##33470 |goto Icecrown/0 37.29,23.72 |or
|tip Farm them from Northrend humanoid mobs or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need more or less than the indicated amount.
'|complete skill("Tailoring") >= 375 |or
step
create 595 Bolt of Frostweave##55899,Tailoring,595 total
step
create 1 Bolt of Frostweave##55899,Tailoring,375
step
collect 15 Bolt of Frostweave##41510 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 380 |or
step
talk Dominique Stefano##28726
|tip Inside the building.
buy 5 Eternium Thread##38426 |goto Dalaran/1 35.60,34.40 |or
'|complete skill("Tailoring") >= 380 |or
step
talk Charles Worth##28699
|tip Inside the building.
Train Frostwoven Belt |learn Frostwoven Belt##55908 |goto Dalaran/1 36.14,33.55
step
create 5 Frostwoven Belt##55908,Tailoring,380
step
collect 20 Bolt of Frostweave##41510 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 385 |or
step
talk Dominique Stefano##28726
|tip Inside the building.
buy 5 Eternium Thread##38426 |goto Dalaran/1 35.60,34.40 |or
'|complete skill("Tailoring") >= 385 |or
step
talk Charles Worth##28699
|tip Inside the building.
Train Frostwoven Boots |learn Frostwoven Boots##55906 |goto Dalaran/1 36.14,33.55
step
create 5 Frostwoven Boots##55906,Tailoring,385
step
collect 65 Bolt of Frostweave##41510 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 395 |or
step
talk Dominique Stefano##28726
|tip Inside the building.
buy 13 Eternium Thread##38426 |goto Dalaran/1 35.60,34.40 |or
'|complete skill("Tailoring") >= 395 |or
step
talk Charles Worth##28699
|tip Inside the building.
Train Frostwoven Cowl |learn Frostwoven Cowl##55907 |goto Dalaran/1 36.14,33.55
step
create 13 Frostwoven Cowl##55907,Tailoring,395
|tip You may need to create more of these.
|tip Each additional Frostwoven Cowl requires 5 Bolts of Frostweave and 1 Eternium Thread.
step
collect 35 Bolt of Frostweave##41510 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 400 |or
step
talk Dominique Stefano##28726
|tip Inside the building.
buy 5 Eternium Thread##38426 |goto Dalaran/1 35.60,34.40 |or
'|complete skill("Tailoring") >= 400 |or
step
talk Charles Worth##28699
|tip Inside the building.
Train Duskweave Belt |learn Duskweave Belt##55914 |goto Dalaran/1 36.14,33.55
step
create 5 Duskweave Belt##55914,Tailoring,400
stickystart "Collect_Bolt_of_Frostweave_405"
step
collect 240  Infinite Dust##34054 |or
|tip Disenchant them from Northrend uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need more or less than the indicated amount. |notinsticky
'|complete skill("Tailoring") >= 405 |or
step
label "Collect_Bolt_of_Frostweave_405"
collect 240  Bolt of Frostweave##41510 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 405 |or
step
talk Charles Worth##28699
|tip Inside the building.
Train Bolt of Imbued Frostweave |learn Bolt of Imbued Frostweave##55900 |goto Dalaran/1 36.14,33.55
step
create 120 Bolt of Imbued Frostweave##55900,Tailoring,120 total
|tip Save these, you will need them for future steps.
step
create 1 Bolt of Imbued Frostweave##55900,Tailoring,405
|tip Save 120 of these, you will need them for future steps.
step
collect 40 Bolt of Frostweave##41510 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 410 |or
step
talk Dominique Stefano##28726
|tip Inside the building.
buy 5 Eternium Thread##38426 |goto Dalaran/1 35.60,34.40 |or
'|complete skill("Tailoring") >= 410 |or
step
talk Charles Worth##28699
|tip Inside the building.
Train Duskweave Wristwraps |learn Duskweave Wristwraps##55920 |goto Dalaran/1 36.14,33.55
step
create 5 Duskweave Wristwraps##55920,Tailoring,410
step
collect 45 Bolt of Frostweave##41510 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 415 |or
step
talk Dominique Stefano##28726
|tip Inside the building.
buy 5 Eternium Thread##38426 |goto Dalaran/1 35.60,34.40 |or
'|complete skill("Tailoring") >= 415 |or
step
talk Charles Worth##28699
|tip Inside the building.
Train Duskweave Gloves |learn Duskweave Gloves##55922 |goto Dalaran/1 36.14,33.55
step
create 5 Duskweave Gloves##55922,Tailoring,415
step
collect 130 Bolt of Frostweave##41510 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 425 |or
step
talk Dominique Stefano##28726
|tip Inside the building.
buy 13 Eternium Thread##38426 |goto Dalaran/1 35.60,34.40 |or
'|complete skill("Tailoring") >= 425 |or
step
talk Charles Worth##28699
|tip Inside the building.
Train Duskweave Boots |learn Duskweave Boots##55924 |goto Dalaran/1 36.14,33.55
step
create 13 Duskweave Boots##55924,Tailoring,425
|tip You may need to create more of these.
|tip Each additional Duskweave Boots requires 10 Bolts of Frostweave and 1 Eternium Thread.
step
collect 120 Bolt of Imbued Frostweave##41511 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 440 |or
step
talk Dominique Stefano##28726
|tip Inside the building.
buy 40 Eternium Thread##38426 |goto Dalaran/1 35.60,34.40 |or
'|complete skill("Tailoring") >= 440 |or
step
talk Charles Worth##28699
|tip Inside the building.
Train Frostweave Bag |learn Frostweave Bag##56007 |goto Dalaran/1 36.14,33.55
step
create 20 Frostweave Bag##56007,Tailoring,440
|tip You may need to create more of these.
|tip Each additional Frostweave Bag requires 6 Bolts of Imbued Frostweave and 2 Eternium Thread.
step
create 1 Frostweave Bag##56007,Tailoring,450
|tip From this point on, it's best to keep creating bags and selling them unless you need a piece of epic gear.
|tip If so, craft any for points with daily cooldown materials.
|tip Each additional Frostweave Bag requires 6 Bolts of Imbued Frostweave and 2 Eternium Thread.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
|tip This will have you collect all Cataclysm-level materials before beginning.
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Tailoring |confirm |next "Begin_Tailoring_Leveling_Cataclysm" |or
'|complete skill("Tailoring") >= 525 |or |next "Begin_Tailoring_Leveling_Cataclysm"
stickystart "Collect_Volatile_Fire_Total"
stickystart "Collect_Volatile_Air_Total"
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 1825 Embersilk Cloth##53010 |or
collect 365 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|tip Turn the cloth into Embersilk Bolts after.
|only if skill("Tailoring") < 525
step
label "Collect_Volatile_Fire_Total"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 70 Volatile Fire##52325 |or
'|complete skill("Tailoring") >= 525 |or
step
label "Collect_Volatile_Air_Total"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	39.56,47.29	41.39,48.90	41.53,46.16	39.76,44.61
kill Storm Vortex##47728+
collect 15 Volatile Air##52328 |or
|tip Or purchase them from the auction house |notinsticky
'|complete skill("Tailoring") >= 505 |or
step
label "Collect_Volatile_Water_Total"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	29.60,66.46	28.77,62.37	31.51,59.47	33.77,56.98	35.75,60.13
path	34.61,63.05
kill Enslaved Waterspout##46329+
collect 55 Volatile Water##52326
|tip Farm them or purchase them from the Auction House.
|only if skill("Tailoring") < 525
step
label "Begin_Tailoring_Leveling_Cataclysm"
talk Georgio Bolero##1346
Train Illustrious Grand Master Tailoring |skillmax Tailoring,525 |goto Stormwind City/0 53.08,81.35
|tip You must be at least level 75.
step
talk Georgio Bolero##1346
learn Deathsilk Bracers##75249 |goto Stormwind City/0 53.08,81.35
step
talk Alexandra Bolero##1347
buy 100 Eternium Thread##38426 |goto Stormwind City/0 53.17,81.71
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 125 Embersilk Cloth##53010 |or
collect 15 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|tip Turn the cloth into Embersilk Bolts after.
|only if skill("Tailoring") < 455
step
_<Create 5 Deathsilk Bracers>_
Reach 455 Tailoring |skill Tailoring,455
step
talk Georgio Bolero##1346
learn Deathsilk Boots##75252 |goto Stormwind City/0 53.08,81.35
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 75 Embersilk Cloth##53010 |or
collect 15 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|tip Turn the cloth into Embersilk Bolts after.
|only if skill("Tailoring") < 460
step
_<Create 5 Deathsilk Boots>_
Reach 460 Tailoring |skill Tailoring,460
step
talk Georgio Bolero##1346
learn Deathsilk Leggings##75254 |goto Stormwind City/0 53.08,81.35
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 75 Embersilk Cloth##53010 |or
collect 15 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|tip Turn the cloth into Embersilk Bolts after.
|only if skill("Tailoring") < 465
step
_<Create 5 Deathsilk Leggings>_
Reach 465 Tailoring |skill Tailoring,465
step
talk Georgio Bolero##1346
learn Deathsilk Cowl##75256 |goto Stormwind City/0 53.08,81.35
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 75 Embersilk Cloth##53010 |or
collect 15 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 470
step
_<Create 5 Deathsilk Cowl>_
Reach 470 Tailoring |skill Tailoring,470
step
talk Georgio Bolero##1346
learn Spiritmend Belt##75258 |goto Stormwind City/0 53.08,81.35
step
talk Georgio Bolero##1346
learn Deathsilk Cowl##75256 |goto Stormwind City/0 53.08,81.35
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 100 Embersilk Cloth##53010 |or
collect 20 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 475
step
_<Create 5 Spiritmend Belt>_
Reach 475 Tailoring |skill Tailoring,475
step
talk Georgio Bolero##1346
learn Spiritmend Boots##75261 |goto Stormwind City/0 53.08,81.35
step
talk Georgio Bolero##1346
learn Deathsilk Cowl##75256 |goto Stormwind City/0 53.08,81.35
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 100 Embersilk Cloth##53010 |or
collect 20 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 480
step
_<Create 5 Spiritmend Boots>_
Reach 480 Tailoring |skill Tailoring,480
step
talk Georgio Bolero##1346
learn Spiritmend Leggings##75263 |goto Stormwind City/0 53.08,81.35
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 100 Embersilk Cloth##53010 |or
collect 20 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 485
step
_<Create 5 Spiritmend Leggings>_
Reach 485 Tailoring |skill Tailoring,485
step
talk Georgio Bolero##1346
learn Spiritmend Robe##75267 |goto Stormwind City/0 53.08,81.35
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 450 Embersilk Cloth##53010 |or
collect 90 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 500
step
_<Create 15 Spiritmend Robe>_
Reach 500 Tailoring |skill Tailoring,500
step
talk Georgio Bolero##1346
learn Vicious Fireweave Bracers##75290 |goto Stormwind City/0 53.08,81.35
stickystart "Volatile_Air_505"
stickystart "Volatile_Fire_505"
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 150 Embersilk Cloth##53010 |or
collect 30 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 500
step
label "Volatile_Fire_505"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 15 Volatile Fire##52325 |or
'|complete skill("Tailoring") >= 505 |or
step
label "Volatile_Air_505"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	39.56,47.29	41.39,48.90	41.53,46.16	39.76,44.61
kill Storm Vortex##47728+
collect 15 Volatile Air##52328 |or
|tip Or purchase them from the auction house |notinsticky
'|complete skill("Tailoring") >= 505 |or
step
_<Create 5 Fireweave Bracers>_
Reach 505 Tailoring |skill Tailoring,505
step
talk Georgio Bolero##1346
learn Vicious Embersilk Shoulders##75291 |goto Stormwind City/0 53.08,81.35
stickystart "Volatile_Fire_510"
stickystart "Volatile_Water_510"
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 150 Embersilk Cloth##53010 |or
collect 30 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 510
step
label "Volatile_Fire_510"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 15 Volatile Fire##52325 |or
'|complete skill("Tailoring") >= 510 |or
step
label "Volatile_Water_510"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	29.60,66.46	28.77,62.37	31.51,59.47	33.77,56.98	35.75,60.13
path	34.61,63.05
kill Enslaved Waterspout##46329+
collect 15 Volatile Water##52326 |or
'|complete skill("Tailoring") >= 510 |or
step
_<Create 5 Vicious Embersilk Shoulders>_
Reach 510 Tailoring |skill Tailoring,510
step
talk Georgio Bolero##1346
learn Vicious Embersilk Belt##75293 |goto Stormwind City/0 53.08,81.35
stickystart "Volatile_Fire_516"
stickystart "Volatile_Water_516"
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 150 Embersilk Cloth##53010 |or
collect 30 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 516
step
label "Volatile_Fire_516"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 12 Volatile Fire##52325 |or
'|complete skill("Tailoring") >= 516 |or
step
label "Volatile_Water_516"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	29.60,66.46	28.77,62.37	31.51,59.47	33.77,56.98	35.75,60.13
path	34.61,63.05
kill Enslaved Waterspout##46329+
collect 12 Volatile Water##52326 |or
'|complete skill("Tailoring") >= 516 |or
step
_<Create 3 Vicious Embersilk Belt##75293,Tailoring
|tip Each craft gives two skill points.
Reach 516 Tailoring |skill Tailoring,516
step
talk Georgio Bolero##1346
learn Vicious Embersilk Gloves##75295 |goto Stormwind City/0 53.08,81.35
stickystart "Volatile_Fire_516"
stickystart "Volatile_Water_516"
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 100 Embersilk Cloth##53010 |or
collect 20 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 520
step
label "Volatile_Fire_516"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 8 Volatile Fire##52325 |or
'|complete skill("Tailoring") >= 520 |or
step
label "Volatile_Water_516"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	29.60,66.46	28.77,62.37	31.51,59.47	33.77,56.98	35.75,60.13
path	34.61,63.05
kill Enslaved Waterspout##46329+
collect 8 Volatile Water##52326 |or
'|complete skill("Tailoring") >= 520 |or
step
_<Create 2 Vicious Embersilk Gloves>_
|tip Each craft gives two skill points.
Reach 520 Tailoring |skill Tailoring,520
step
talk Georgio Bolero##1346
learn Vicious Embersilk Boots##75297
stickystart "Volatile_Fire_516"
stickystart "Volatile_Water_516"
step
map Deepholm/0
path follow loose; loop on; ants curved; dist 20
path	68.2,25.6	67.2,32.0	68.6,35.8	69.0,42.6	73.0,45.0
path	77.2,42.8	76.8,35.6	74.6,32.8	74.8,28.4	72.2,26.6
Kill humanoid enemies around this area
collect 250 Embersilk Cloth##53010 |or
collect 50 Bolt of Embersilk Cloth##74964 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
|only if skill("Tailoring") < 520
step
label "Volatile_Fire_516"
map Twilight Highlands/0
path	43.36,25.46	44.09,23.26	43.25,21.51	41.91,21.26	39.96,22.18
path	41.01,24.19	42.15,25.19
kill Unbound Emberfiend##48016+
collect 20 Volatile Fire##52325 |or
'|complete skill("Tailoring") >= 520 |or
step
label "Volatile_Water_516"
map Twilight Highlands/0
path follow smart; loop on; ants straight; dist 30
path	29.60,66.46	28.77,62.37	31.51,59.47	33.77,56.98	35.75,60.13
path	34.61,63.05
kill Enslaved Waterspout##46329+
collect 20 Volatile Water##52326 |or
'|complete skill("Tailoring") >= 520 |or
step
_<Create 5 Vicious Embersilk Boots>_
Reach 525 Tailoring |skill Tailoring,525
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Wool Cloth",{
author="support@zygorguides.com",
},[[
step
Kill Blackrock enemies around this area
collect Wool Cloth##2592 |n |goto Redridge Mountains/0 33.50,12.42
You can find more inside the cave at [31.45,9.43]
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Mageweave Cloth",{
author="support@zygorguides.com",
},[[
step
Kill Dunemaul enemies around this area
collect Mageweave Cloth##4338 |n |goto Tanaris/0 40.50,55.50
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Runecloth",{
author="support@zygorguides.com",
},[[
step
Kill Twilight enemies around this area
collect Runecloth###14047 |n |goto Silithus/0 45.01,41.82
You can find more around [33.53,34.87]
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Felcloth",{
author="support@zygorguides.com",
},[[
step
Kill Jadefire enemies around this area
collect Felcloth##14256 |n |goto Felwood 37.17,67.00
You can find more around [32.71,66.66]
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Spider's Silk",{
author="support@zygorguides.com",
},[[
step
Enter the cave |goto Wetlands 52.79,62.90 < 20 |walk
Kill enemies around this area
|tip Inside the cave.
collect Spider's Silk##3182 |n |goto 48.51,60.67
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Shadow Silk",{
author="support@zygorguides.com",
},[[
step
Kill spider enemies in the area
collect Shadow Silk##10285 |n |goto Swamp of Sorrows 58.74,62.39
|tip These have a low drop rate.
You can find more around [66.70,68.65]
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Ironweb Spider Silk",{
author="support@zygorguides.com",
},[[
step
map Silithus/0
path follow smart; loop on; ants straight; dist 30
path    43.57,18.27    43.69,22.64    42.26,26.41    42.46,30.77    44.03,32.55
path    46.79,35.78    49.05,33.88    55.67,27.14    59.72,29.48    62.13,25.47
path    61.16,20.41    61.54,17.33    57.50,17.51    54.11,19.10
kill Sand Skitterer##11738+
collect Ironweb Spider Silk##14227 |n
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Dropped\\Farming Guides\\Righteous Orb",{
author="support@zygorguides.com",
},[[
step
Enter the Stratholme Dungeon
|tip You will need to join and form a group for this.
Click Here Once You Have Entered the Dungeon |confirm
step
Make your way to the Crusaders' Square
|tip It will be to the left of the rat gate.
Kill Crimson enemies around this area
|tip All Crimson enemies in The Scarlet Bastion have a chance to drop the orb.
collect Righteous Orb##12811 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Dropped\\Farming Guides\\Demonic Rune",{
author="support@zygorguides.com",
},[[
step
Follow the path up |goto Felwood 38.44,59.39 < 20 |only if walking
Continue following the path |goto 37.63,60.96 < 20 |only if walking
Continue following the path |goto 36.04,61.32 < 20 |only if walking
Enter the building |goto 36.20,58.53 < 20 |walk
Kill Jaedenar enemies around this area
collect Demonic Rune##12662 |n |goto 37.61,54.67
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Dropped\\Farming Guides\\Dark Rune",{
author="support@zygorguides.com",
},[[
step
Enter the Scholomance Dungeon
|tip You will need to join and form a group for this.
Click Here Once You Have Entered the Dungeon |confirm
step
Kill enemies around this area
|tip Scholomance Necromancers and Scholomance Dark Summoners are the only enemies besides bosses that will drop them.
collect Dark Rune##20520 |n
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Dropped\\Farming Guides\\Sharp Claw",{
author="support@zygorguides.com",
},[[
step
map Ghostlands/0
path follow smart; loop on; ants straight; dist 30
path    43.39,55.71    42.71,57.16    42.30,60.70    43.08,63.02    46.57,63.18
path    48.57,62.30    51.30,61.69    52.36,60.47    52.95,58.40    51.54,57.55
Kill Ghostclaw Ravager enemies around this area
|tip They share spawns with Greater Spindlewebs
collect Sharp Claw##5635 |n
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Dropped\\Farming Guides\\Ogre Tannin",{
author="support@zygorguides.com",
},[[
step
Enter the Dire Maul West Dungeon Entrance
|tip You will need to join and form a group for this.
Click Here Once You Have Entered the Dungeon |confirm
step
click Ogre Tannin Basket##179499
|tip It will be up the ramp past the broken trap.
|tip Once up the first ramp, it will be in the far northwest corner of the room.
|tip Only one person will be able to loot it.
collect Ogre Tannin##18240 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Dropped\\Farming Guides\\Small Venom Sac",{
author="support@zygorguides.com",
},[[
step
map Redridge Mountains
path follow smart; loop on; ants curved; dist 20
path	51.04,41.76	53.70,43.86	53.45,46.07	55.68,47.30	57.57,44.98
path	55.62,41.71	53.83,37.42	51.30,38.07
Kill tarantula enemies around this area
collect Small Venom Sac##1475 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Dropped\\Farming Guides\\Huge Venom Sac",{
author="support@zygorguides.com",
},[[
step
map Silithus/0
path follow smart; loop on; ants straight; dist 30
path    43.57,18.27    43.69,22.64    42.26,26.41    42.46,30.77    44.03,32.55
path    46.79,35.78    49.05,33.88    55.67,27.14    59.72,29.48    62.13,25.47
path    61.16,20.41    61.54,17.33    57.50,17.51    54.11,19.10
Kill enemies around this area
collect Huge Venom Sac##19441 |n
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Dropped\\Farming Guides\\Iridescent Pearl",{
author="support@zygorguides.com",
},[[
step
map Wetlands
path follow smart; loop on; ants curved; dist 20
path	15.21,40.13	17.36,39.06	19.36,38.16	22.88,37.14	24.91,36.76
path	24.41,33.77	23.10,33.59	21.34,34.34	19.64,31.98	18.24,31.36
path	16.84,29.42	15.14,30.74	14.96,33.33	14.32,35.71	13.91,38.13
path	14.03,40.90
Kill Bluegill enemies around this area
collect Thick-shelled Clam##5524 |n
use the Thick-shelled Clam##5524
collect Iridescent Pearl##5500 |n
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Dropped\\Farming Guides\\Black Pearl",{
author="support@zygorguides.com",
},[[
step
map The Hinterlands
path follow smart; loop on; ants curved; dist 20
path	77.17,61.30	76.67,63.69	75.25,66.52	74.76,70.67	76.93,70.62
path	78.28,68.54	78.37,65.51	79.09,61.95	80.38,59.45	81.70,56.06
path	81.78,52.32	80.30,55.82	79.00,57.73
Kill Snapjaw enemies around this area
collect Big-mouth Clam##7973 |n
use the Big-mouth Clam##7973
collect Black Pearl##7971 |n
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Dropped\\Farming Guides\\Golden Pearl",{
author="support@zygorguides.com",
},[[
step
map The Hinterlands
path follow smart; loop on; ants curved; dist 20
path	77.17,61.30	76.67,63.69	75.25,66.52	74.76,70.67	76.93,70.62
path	78.28,68.54	78.37,65.51	79.09,61.95	80.38,59.45	81.70,56.06
path	81.78,52.32	80.30,55.82	79.00,57.73
Kill Snapjaw enemies around this area
collect Big-mouth Clam##7973 |n
use the Big-mouth Clam##7973
collect Golden Pearl##13926 |n
|tip These have a low drop rate.
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Dropped\\Farming Guides\\Giant Egg",{
author="support@zygorguides.com",
},[[
step
Kill Roc enemies around this area
|tip They are found all around the zone.
collect Giant Egg##12207 |n |goto Tanaris/0 49.30,36.17
You can find more around: |notinsticky
[45.55,38.57]
[44.01,40.45]
[47.27,46.81]
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Dropped\\Farming Guides\\Zesty Clam Meat",{
author="support@zygorguides.com",
},[[
step
map The Hinterlands
path follow smart; loop on; ants curved; dist 20
path	77.17,61.30	76.67,63.69	75.25,66.52	74.76,70.67	76.93,70.62
path	78.28,68.54	78.37,65.51	79.09,61.95	80.38,59.45	81.70,56.06
path	81.78,52.32	80.30,55.82	79.00,57.73
Kill Snapjaw enemies around this area
collect Big-mouth Clam##7973 |n
use the Big-mouth Clam##7973
collect Zesty Clam Meat##7974 |n
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Linen Cloth",{
author="support@zygorguides.com",
},[[
step
Kill enemies around this area
|tip Be sure to enter the mine as well.
collect Linen Cloth##2589 |n |goto Westfall 44.55,25.01
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Silk Cloth",{
author="support@zygorguides.com",
},[[
step
Kill Grimtotem enemies around this area
collect Silk Cloth##4306 |n |goto Thousand Needles 13.26,5.84
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Mooncloth",{
author="support@zygorguides.com",
},[[
step
label "Farm_Felcloth"
Kill Jadefire enemies around this area
collect Felcloth##14256 |n |goto Felwood 37.17,67.00
Click here to transmute Felcloth into Mooncloth |confirm
|tip It only takes 2 Felcloth to make a Mooncloth, but it requires a rare Tailoring pattern and has a 4 day cooldown.
step
collect Mooncloth##14342 |n |goto Ashenvale/0 60.19,72.90
|tip This spell has a 4 day cooldown.
Click here to farm more Felcloth |confirm |next "Farm_Felcloth"
'|confirm
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Farming Guides\\Thick Spider's Silk",{
author="support@zygorguides.com",
},[[
step
Kill Spider enemies around this area
|tip You can find more inside the nearby cave
collect Thick Spider's Silk##4337 |n |goto Dustwallow Marsh/0 34.67,22.20
|tip These have a low drop rate.
'|confirm
]])
