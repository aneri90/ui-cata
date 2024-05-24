local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHWOTLK") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Eastern Kingdoms (1-60)\\Eversong Woods (1-13) [Blood Elf Starter]",{
author="support@zygorguides.com",
condition_suggested=function() return raceclass('BloodElf') and level<=14 end,
next="Leveling Guides\\Eastern Kingdoms (1-60)\\Ghostlands (13-21)",
startlevel=1.00,
},[[
step
talk Magistrix Erona##15278
accept Reclaiming Sunstrider Isle##8325 |goto Eversong Woods 38.02,21.01
|only if BloodElf
step
kill 6 Mana Wyrm##15274 |q 8325/1 |goto 35.45,20.07
|only if BloodElf
step
talk Magistrix Erona##15278
turnin Reclaiming Sunstrider Isle##8325 |goto 38.02,21.01
accept Unfortunate Measures##8326 |goto 38.02,21.01
|only if BloodElf
step
Enter the building |goto 38.56,21.00 < 10 |walk
talk Well Watcher Solanian##15295
|tip Upstairs inside the building.
accept Solanian's Belongings##8330 |goto 38.97,20.26
accept The Shrine of Dath'Remar##8345 |goto 38.97,20.26
step
talk Arcanist Ithanas##15296
accept A Fistful of Slivers##8336 |goto 38.27,19.13
|only if BloodElf
step
talk Arcanist Helion##15297
accept Thirst Unending##8346 |goto 37.18,18.94
|only if BloodElf
stickystart "Collect_Arcane_Slivers"
stickystart "Collect_Lynx_Collars"
step
cast Arcane Torrent##28730
|tip Use it on a Mana Wyrm around this area.
Unleash an Arcane Torrent |q 8346/1 |goto 35.39,19.72
|only if haveq(8346) or completedq(8346)
step
label "Collect_Arcane_Slivers"
kill Mana Wyrm##15274+
collect 6 Arcane Sliver##20482 |q 8336/1 |goto 35.39,19.72
|only if haveq(8336) or completedq(8336)
step
label "Collect_Lynx_Collars"
Kill Springpaw enemies around this area
|tip They look like large orange cats.
collect 8 Lynx Collar##20797 |q 8326/1 |goto 35.76,23.62
step
talk Arcanist Helion##15297
turnin Thirst Unending##8346 |goto 37.18,18.94
|only if haveq(8346) or completedq(8346)
step
talk Arcanist Ithanas##15296
turnin A Fistful of Slivers##8336 |goto 38.27,19.13
|only if haveq(8336) or completedq(8336)
step
talk Magistrix Erona##15278
turnin Unfortunate Measures##8326 |goto 38.02,21.01
accept Report to Lanthan Perilon##8327 |goto 38.02,21.01
accept Hunter Training##9393 |goto 38.02,21.01 |only if BloodElf Hunter
accept Paladin Training##9676 |goto 38.02,21.01 |only if BloodElf Paladin
accept Rogue Training##9392 |goto 38.02,21.01 |only if BloodElf Rogue
accept Priest Training##8564 |goto 38.02,21.01 |only if BloodElf Priest
accept Mage Training##8328 |goto 38.02,21.01 |only if BloodElf Mage
accept Warlock Training##8563 |goto 38.02,21.01 |only if BloodElf Warlock
|only if BloodElf
step
Enter the building |goto Eversong Woods 38.56,21.00 < 10 |walk
talk Ranger Sallina##15513
|tip Inside the building.
turnin Hunter Training##9393 |goto Eversong Woods 39.05,20.01
accept Steady Shot##10070 |goto Eversong Woods 39.05,20.01
|only if BloodElf Hunter
step
talk Ranger Sallina##15513
|tip Inside the building.
Learn Steady Shot |q 10070/2 |goto 39.05,20.01
|only if BloodElf Hunter
step
Practice Steady Shot #5# Times |q 10070/1 |goto 38.55,21.54
|tip Use your Steady Shot ability on the Training Dummy.
|only if BloodElf Hunter
step
Enter the building |goto 38.56,21.00 < 10 |walk
talk Ranger Sallina##15513
|tip Inside the building.
turnin Steady Shot##10070 |goto 39.05,20.01
|only if BloodElf Hunter
step
Enter the building |goto Eversong Woods 38.56,21.00 < 10 |walk
talk Jesthenis Sunstriker##15280
|tip Inside the building.
turnin Paladin Training##9676 |goto Eversong Woods 39.47,20.56
accept Ways of the Light##10069 |goto Eversong Woods 39.47,20.56
|only if BloodElf Paladin
step
talk Jesthenis Sunstriker##15280
|tip Inside the building.
Learn Judgement |q 10069/1 |goto 39.47,20.56
Learn Seal of Righteousness |q 10069/3 |goto 39.47,20.56
|only if BloodElf Paladin
step
Practice Judgement #1# Time |q 10069/2 |goto 38.55,21.54
|tip Use your Seal of Righteousness ability, then use your Judgement ability on the Training Dummy.
|only if BloodElf Paladin
step
Enter the building |goto 38.56,21.00 < 10 |walk
talk Jesthenis Sunstriker##15280
|tip Inside the building.
turnin Ways of the Light##10069 |goto 39.47,20.56
|only if BloodElf Paladin
step
Enter the building |goto Eversong Woods 38.56,21.00 < 10 |walk
talk Pathstalker Kariel##15285
|tip Inside the building.
turnin Rogue Training##9392 |goto Eversong Woods 38.93,20.02
accept Evisceration##10071 |goto Eversong Woods 38.93,20.02
|only if BloodElf Rogue
step
talk Pathstalker Kariel##15285
|tip Inside the building.
Learn Eviscerate |q 10071/2 |goto 38.93,20.02
|only if BloodElf Rogue
step
Practice Eviscerate #3# Times |q 10071/1 |goto 38.55,21.54
|tip Use your Eviscerate ability on the Training Dummy.
|only if BloodElf Rogue
step
Enter the building |goto 38.56,21.00 < 10 |walk
talk Pathstalker Kariel##15285
|tip Inside the building.
turnin Evisceration##10071 |goto 38.93,20.02
|only if BloodElf Rogue
step
Enter the building |goto Eversong Woods 38.56,21.00 < 10 |walk
talk Matron Arena##15284
|tip Inside the building.
turnin Priest Training##8564 |goto Eversong Woods 39.42,20.38
accept Healing the Wounded##10072 |goto Eversong Woods 39.42,20.38
|only if BloodElf Priest
step
talk Matron Arena##15284
|tip Inside the building.
Learn Flash Heal |q 10072/2 |goto 39.42,20.38
|only if BloodElf Priest
step
Practice Flash Heal #5# Times |q 10072/1 |goto 39.48,20.30
|tip Use your Flash Heal ability on the Wounded Outrunner.
|tip Inside the building.
|only if BloodElf Priest
step
talk Matron Arena##15284
|tip Inside the building.
turnin Healing the Wounded##10072 |goto 39.42,20.38
|only if BloodElf Priest
step
Enter the building |goto Eversong Woods 38.56,21.00 < 10 |walk
talk Julia Sunstriker##15279
|tip Inside the building.
turnin Mage Training##8328 |goto Eversong Woods 39.23,21.46
accept Arcane Missiles##10068 |goto Eversong Woods 39.23,21.46
|only if BloodElf Mage
step
talk Julia Sunstriker##15279
|tip Inside the building.
Learn Arcane Missiles |q 10068/2 |goto 39.23,21.46
|only if BloodElf Mage
step
Practice Arcane Missiles #2# Times |q 10068/1 |goto 38.55,21.54
|tip Use your Arcane Missiles ability on the Training Dummy.
|only if BloodElf Mage
step
Enter the building |goto 38.56,21.00 < 10 |walk
talk Julia Sunstriker##15279
|tip Inside the building.
turnin Arcane Missiles##10068 |goto 39.23,21.46
|only if BloodElf Mage
step
Enter the building |goto Eversong Woods 38.56,21.00 < 10 |walk
talk Summoner Teli'Larien##15283
|tip Inside the building.
turnin Warlock Training##8563 |goto Eversong Woods 38.93,21.44
accept Immolation##10073 |goto Eversong Woods 38.93,21.44
|only if BloodElf Warlock
step
talk Summoner Teli'Larien##15283
|tip Inside the building.
Learn Immolate |q 10073/2 |goto 38.93,21.44
|only if BloodElf Warlock
step
Practice Immolate #5# Times |q 10073/1 |goto 38.55,21.54
|tip Use your Immolate ability on the Training Dummy.
|only if BloodElf Warlock
step
Enter the building |goto 38.56,21.00 < 10 |walk
talk Summoner Teli'Larien##15283
|tip Inside the building.
turnin Immolation##10073 |goto 38.93,21.44
|only if BloodElf Warlock
step
talk Lanthan Perilon##15281
turnin Report to Lanthan Perilon##8327 |goto Eversong Woods 35.37,22.52
accept Aggression##8334 |goto Eversong Woods 35.37,22.52
|only if BloodElf
stickystart "Kill_Tenders"
stickystart "Kill_Feral_Tenders"
step
click Shrine of Dath'Remar##180516
Read the Shrine of Dath'Remar |q 8345/1 |goto 29.64,19.41
|only if BloodElf
step
click Scroll of Scourge Magic##180511
collect Scroll of Scourge Magic##20471 |q 8330/2 |goto 31.33,22.74
|only if BloodElf
step
click Solanian's Scrying Orb##180510
collect Solanian's Scrying Orb##20470 |q 8330/1 |goto Eversong Woods 35.13,28.91
|only if BloodElf
step
label "Kill_Tenders"
kill 7 Tender##15271 |q 8334/1 |goto 33.86,26.95
|tip They look like small walking trees.
You can find more around [31.99,23.11]
|only if not subzone("Falthrien Academy")
|only if BloodElf
step
label "Kill_Feral_Tenders"
kill 7 Feral Tender##15294 |q 8334/2 |goto 33.86,26.95
|tip They look like slightly larger walking trees.
You can find more around [31.99,23.11]
|only if not subzone("Falthrien Academy")
|only if BloodElf
step
click Solanian's Journal##180512
collect Solanian's Journal##20472 |q 8330/3 |goto 37.70,24.91
step
talk Lanthan Perilon##15281
turnin Aggression##8334 |goto 35.37,22.52
accept Felendren the Banished##8335 |goto 35.37,22.52
|only if BloodElf
step
Enter the building |goto 38.56,21.00 < 10 |walk
talk Well Watcher Solanian##15295
|tip Upstairs inside the building.
turnin Solanian's Belongings##8330 |goto 38.97,20.26
turnin The Shrine of Dath'Remar##8345 |goto 38.97,20.26
|only if BloodElf
stickystart "Accept_Tainted_Arcane_Sliver"
stickystart "Slay_Tainted_Arcane_Wraiths"
stickystart "Slay_Arcane_Wraiths"
step
Run up the ramp and follow the path to the top |goto 32.60,25.54 < 15 |only if walking and not subzone("Falthrien Academy")
kill Felendren the Banished##15367
|tip At the top of the floating structures.
|tip Follow the ramps up to the top.
collect Felendren's Head##20799 |q 8335/3 |goto 30.84,27.13
|only if BloodElf
step
label "Accept_Tainted_Arcane_Sliver"
kill Tainted Arcane Wraith##15298+
|tip They look like green and black voidwalkers.
collect Tainted Arcane Sliver##20483 |n
use the Tainted Arcane Sliver##20483
accept Tainted Arcane Sliver##8338 |goto 30.84,27.13
|only if BloodElf
step
label "Slay_Tainted_Arcane_Wraiths"
kill 2 Tainted Arcane Wraith##15298 |q 8335/2 |goto 30.84,27.13
|tip They look like green and black voidwalkers.
|only if BloodElf
step
label "Slay_Arcane_Wraiths"
kill 8 Arcane Wraith##15273 |q 8335/1 |goto 30.84,27.13
|tip They look like pink ghosts.
|only if BloodElf
step
talk Arcanist Helion##15297
turnin Tainted Arcane Sliver##8338 |goto 37.18,18.94
|only if haveq(8338) or completedq(8338)
step
talk Lanthan Perilon##15281
turnin Felendren the Banished##8335 |goto 35.37,22.52
accept Aiding the Outrunners##8347 |goto 35.37,22.52
|only if BloodElf
step
talk Outrunner Alarion##15301
turnin Aiding the Outrunners##8347 |goto 40.42,32.21 |only if haveq(8347) or completedq(8347)
accept Slain by the Wretched##9704 |goto 40.42,32.21
step
clicknpc Slain Outrunner##17849
turnin Slain by the Wretched##9704 |goto 42.02,35.65
accept Package Recovery##9705 |goto 42.02,35.65
step
talk Outrunner Alarion##15301
turnin Package Recovery##9705 |goto 40.42,32.21
accept Completing the Delivery##8350 |goto 40.42,32.21
step
talk Magister Jaronis##15418
|tip Follow the road.
accept Major Malfunction##8472 |goto 47.26,46.31
step
Enter the building |goto 47.77,47.30 < 10 |walk
talk Innkeeper Delaniel##15433
|tip Inside the building.
turnin Completing the Delivery##8350 |goto 48.16,47.66
step
talk Kanaria##16272
|tip Upstairs inside the building.
Train Apprentice First Aid |skillmax First Aid,75 |goto 48.58,47.58
step
_NOTE:_
Create Bandages in Downtime
|tip While you wait for zeppelins, it's a good time to make bandages and increase your First Aid skill.
|tip You'll need higher skill to make better bandages later, so make sure to level it up as you go.
|tip Keep bandages on hand for another way to heal yourself.
Click Here to Continue |confirm |q 8472 |future
step
talk Innkeeper Delaniel##15433
|tip Inside the building.
home Falconwing Inn |goto 48.16,47.66 |q 8472 |future
step
click Wanted: Thaelis the Hungerer##180918
|tip Outside the building.
accept Wanted: Thaelis the Hungerer##8468 |goto 48.17,46.31
step
talk Aeldon Sunbrand##15403
accept Unstable Mana Crystals##8463 |goto 48.17,46.00
stickystart "Collect_Unstable_Mana_Crystals"
stickystart "Collect_Arcane_Cores"
step
kill Thaelis the Hungerer##15949
|tip Inside the building.
collect Thaelis's Head##21781 |q 8468/1 |goto 45.02,37.68
step
label "Collect_Unstable_Mana_Crystals"
click Unstable Mana Crystal Crate##180600+
|tip They look like yellow glowing light brown wooden boxes on the ground around this area.
collect 6 Unstable Mana Crystal##20743 |q 8463/1 |goto 45.51,39.96
step
label "Collect_Arcane_Cores"
kill Arcane Patroller##15638+
|tip They look metal robots that walk around this area.
|tip Check for them along the roads all around this area.
collect 6 Arcane Core##21808 |q 8472/1 |goto 46.95,39.95
You can find more around [41.83,39.64]
step
talk Magister Jaronis##15418
turnin Major Malfunction##8472 |goto 47.26,46.31
accept Delivery to the North Sanctum##8895 |goto 47.26,46.31
step
talk Sergeant Kan'ren##16924
turnin Wanted: Thaelis the Hungerer##8468 |goto 47.77,46.58
step
talk Aeldon Sunbrand##15403
turnin Unstable Mana Crystals##8463 |goto 48.17,46.00
accept Darnassian Intrusions##9352 |goto 48.17,46.00
step
talk Skymaster Skyles##44244
fpath Falconwing Square |goto 46.24,46.80
step
talk Ley-Keeper Caidanis##15405
turnin Delivery to the North Sanctum##8895 |goto 44.63,53.13
accept Malfunction at the West Sanctum##9119 |goto 44.63,53.13
step
talk Apprentice Ralen##15941
accept Roadside Ambush##9035 |goto 45.19,56.43
step
talk Apprentice Meledor##15945
turnin Roadside Ambush##9035 |goto 44.88,61.03
accept Soaked Pages##9062 |goto 44.88,61.03
step
click Soaked Tome##181110
|tip Underwater.
collect Antheol's Elemental Grimoire##22414 |q 9062/1 |goto 44.34,61.99
step
talk Apprentice Meledor##15945
turnin Soaked Pages##9062 |goto 44.88,61.03
accept Taking the Fall##9064 |goto 44.88,61.03
step
talk Ranger Jaela##15416
accept The Dead Scar##8475 |goto 50.34,50.77
step
talk Instructor Antheol##15970
turnin Taking the Fall##9064 |goto 55.70,54.51
accept Swift Discipline##9066 |goto 55.70,54.51
step
kill 8 Plaguebone Pillager##15654 |q 8475/1 |goto 50.32,55.21
|tip They look like skeletons.
step
talk Ranger Jaela##15416
turnin The Dead Scar##8475 |goto 50.34,50.77
step
use Antheol's Disciplinary Rod##22473
|tip Use it on Apprentice Ralen.
Discipline Apprentice Ralen |q 9066/2 |goto 45.19,56.43
step
use Antheol's Disciplinary Rod##22473
|tip Use it on Apprentice Meledor.
Discipline Apprentice Meledor |q 9066/1 |goto 44.88,61.03
step
talk Ley-Keeper Velania##15401
turnin Malfunction at the West Sanctum##9119 |goto 36.70,57.44
accept Arcane Instability##8486 |goto 36.70,57.44
stickystart "Kill_Manawraiths"
stickystart "Kill_Mana_Stalkers"
step
kill Darnassian Scout##15968+
|tip They look like night elves spread out along the small hills around this area, circling the building.
collect Incriminating Documents##20765 |goto 33.72,59.08 |q 8482 |future
Defeat an Intruder |q 9352/1 |goto 33.72,59.08
step
use the Incriminating Documents##20765
accept Incriminating Documents##8482
step
label "Kill_Manawraiths"
kill 5 Manawraith##15648 |q 8486/1 |goto 35.40,57.56
You can find more around [33.51,61.51]
step
label "Kill_Mana_Stalkers"
kill 5 Mana Stalker##15647 |q 8486/2 |goto 35.40,57.56
You can find more around [33.51,61.51]
step
talk Ley-Keeper Velania##15401
turnin Arcane Instability##8486 |goto 36.70,57.44
turnin Darnassian Intrusions##9352 |goto 36.70,57.44
step
talk Hathvelion Sungaze##15920
|tip He walks around this area.
accept Fish Heads, Fish Heads...##8884 |goto 30.22,58.33
stickystart "Collect_Grimscale_Murloc_Heads"
step
Kill Grimscale enemies around this area |kill Grimscale Forager##15670, Grimscale Seer##15950
|tip They look like murlocs.
collect Captain Kelisendra's Lost Rutters##21776 |n
use Captain Kelisendra's Lost Rutters##21776
accept Captain Kelisendra's Lost Rutters##8887 |goto 27.14,59.02
You can find more around [25.35,66.74]
step
label "Collect_Grimscale_Murloc_Heads"
Kill Grimscale enemies around this area |kill Grimscale Forager##15670, Grimscale Seer##15950 |notinsticky
|tip They look like murlocs. |notinsticky
collect 8 Grimscale Murloc Head##21757 |q 8884/1 |goto 27.14,59.02
You can find more around [25.35,66.74]
step
talk Hathvelion Sungaze##15920
|tip He walks around this area.
turnin Fish Heads, Fish Heads...##8884 |goto 30.22,58.33
accept The Ring of Mmmrrrggglll##8885 |goto 30.22,58.33
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |complete isdead |goto 27.14,59.02 |q 8885
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |complete not isdead |goto 44.33,71.19 |q 8885 |zombiewalk
step
talk Magistrix Landra Dawnstrider##16210
accept The Wayward Apprentice##9254 |goto 44.03,70.76
accept Saltheril's Haven##9395 |goto 44.03,70.76
step
talk Sathiel##16261
|tip Inside the building.
accept Goods from Silvermoon City##9130 |goto Eversong Woods 43.70,71.56
|only if BloodElf
step
talk Marniel Amberlight##15397
|tip Inside the building.
accept Ranger Sareyn##9358 |goto Eversong Woods 43.67,71.31
step
talk Ranger Degolien##15939
|tip Outside, upstairs on the balcony of the building.
accept Situation at Sunsail Anchorage##8892 |goto 43.34,70.82
step
talk Halis Dawnstrider##16444
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Halis Dawnstrider##16444 |goto 44.04,70.35 |q 8892
step
talk Skymaster Brightdawn##44036
fpath Fairbreeze Village |goto 43.94,69.99
step
talk Skymaster Brightdawn##44036
turnin Goods from Silvermoon City##9130 |goto Eversong Woods 43.94,69.99
accept Fly to Silvermoon City##9133 |goto Eversong Woods 43.94,69.99
|only if BloodElf
step
Enter the building |goto Silvermoon City 55.33,71.05 < 10 |walk
talk Sathren Azuredawn##16191
|tip Inside the building.
turnin Fly to Silvermoon City##9133 |goto Silvermoon City 53.94,71.02
accept Skymistress Gloaming##9134 |goto Silvermoon City 53.94,71.02
|only if BloodElf
step
talk Skymistress Gloaming##16192
turnin Skymistress Gloaming##9134 |goto Eversong Woods 54.38,50.73
accept Return to Sathiel##9135 |goto Eversong Woods 54.38,50.73
|only if BloodElf
step
talk Sathiel##16261
|tip Inside the building.
turnin Return to Sathiel##9135 |goto 43.70,71.56
|only if BloodElf
step
talk Velan Brightoak##15417
accept Pelt Collection##8491 |goto Eversong Woods 44.72,69.63
step
talk Ranger Sareyn##15942
turnin Ranger Sareyn##9358 |goto 46.93,71.79
accept Defending Fairbreeze Village##9252 |goto 46.93,71.79
step
kill Springpaw Stalker##15651+
|tip They look like lynx cats.
collect 6 Springpaw Pelt##20772 |q 8491/1 |goto 45.68,65.78
You can find more around: |notinsticky
[43.02,65.27]
[39.10,65.42]
step
talk Lord Saltheril##16144
|tip Inside the building.
turnin Saltheril's Haven##9395 |goto 38.14,73.56
accept The Party Never Ends##9067 |goto 38.14,73.56
step
talk Captain Kelisendra##15921
turnin Captain Kelisendra's Lost Rutters##8887 |goto 36.36,66.62
accept Grimscale Pirates!##8886 |goto 36.36,66.62
step
talk Velendris Whitemorn##15404
accept Lost Armaments##8480 |goto 36.36,66.77
stickystart "Kill_Wretched_Thugs"
stickystart "Kill_Wretched_Hooligans"
step
click Weapon Container##181107+
|tip They look like wooden crates on the ground around this area.
|tip They can also be inside the large building nearby.
collect 8 Sin'dorei Armaments##22413 |q 8480/1 |goto 32.79,70.50
step
label "Kill_Wretched_Thugs"
kill 5 Wretched Thug##15645 |q 8892/1 |goto 32.79,70.50
step
label "Kill_Wretched_Hooligans"
kill 5 Wretched Hooligan##16162 |q 8892/2 |goto 32.79,70.50
step
talk Velendris Whitemorn##15404
turnin Lost Armaments##8480 |goto 36.36,66.77
accept Wretched Ringleader##9076 |goto 36.36,66.77
step
kill Aldaron the Reckless##16294
|tip He walks around this area.
|tip At the top of the building.
collect Aldaron's Head##22487 |q 9076/1 |goto 32.80,69.40
stickystart "Collect_Captain_Kelisendras_Cargo"
step
kill Mmmrrrggglll##15937
|tip He looks like a larger orange murloc that walks along the beach around this area.
|tip Use your "Arcane Torrent" ability on him when he starts casting his healing spell.
collect Ring of Mmmrrrggglll##21770 |q 8885/1 |goto 24.54,72.30
step
talk Hathvelion Sungaze##15920
|tip He walks around this area.
turnin The Ring of Mmmrrrggglll##8885 |goto 29.89,58.43
step
label "Collect_Captain_Kelisendras_Cargo"
Kill Grimscale enemies around this area |kill Grimscale Murloc##15668, Grimscale Oracle##15669
|tip They look like murlocs.
click Captain Kelisendra's Cargo##180917+
|tip They look like wooden barrels on the ground next to murloc huts around this area.
collect 6 Captain Kelisendra's Cargo##21771 |q 8886/1 |goto 24.79,69.28
step
talk Captain Kelisendra##15921
turnin Grimscale Pirates!##8886 |goto 36.36,66.62
step
talk Velendris Whitemorn##15404
turnin Wretched Ringleader##9076 |goto 36.36,66.77
step
talk Ranger Degolien##15939
|tip Upstairs on the balcony of the building.
turnin Situation at Sunsail Anchorage##8892 |goto 43.34,70.82
accept Farstrider Retreat##9359 |goto 43.34,70.82
step
talk Halis Dawnstrider##16444
|tip If you can afford it, and you need more bag space, buy bags.
Visit the Vendor |vendor Halis Dawnstrider##16444 |goto 44.04,70.35 |q 8491
step
talk Velan Brightoak##15417
turnin Pelt Collection##8491 |goto 44.72,69.63
stickystart "Kill_Rotlimb_Marauders"
step
label "Kill_Darkwraiths"
kill 4 Darkwraith##15657 |q 9252/2 |goto 50.91,78.76
|tip They look like grey ghosts.
step
label "Kill_Rotlimb_Marauders"
kill 4 Rotlimb Marauder##15658 |q 9252/1 |goto 51.48,69.91
|tip They look like ghouls.
step
talk Apprentice Mirveda##15402
turnin The Wayward Apprentice##9254 |goto 54.28,70.98
accept Corrupted Soil##8487 |goto 54.28,70.98
step
click Tainted Soil Sample##180921+
|tip They look like green glowing piles of dirt on the ground around this area.
collect 8 Tainted Soil Sample##20771 |q 8487/1 |goto 51.48,69.91
step
talk Apprentice Mirveda##15402
turnin Corrupted Soil##8487 |goto 54.28,70.98
step
Watch the dialogue
talk Apprentice Mirveda##15402
accept Unexpected Results##8488 |goto 54.28,70.98
step
Kill the enemies that attack |kill Angershade##15656
kill Gharsul the Remorseless##15958
|tip Apprentice Mirveda must stay alive.
Protect Apprentice Mirveda |q 8488/1 |goto 53.88,70.17
step
talk Apprentice Mirveda##15402
turnin Unexpected Results##8488 |goto 54.28,70.98
accept Research Notes##9255 |goto 54.28,70.98
step
talk Aeldon Sunbrand##15403
turnin Incriminating Documents##8482 |goto 48.17,46.00
accept The Dwarven Spy##8483 |goto 48.17,46.00
step
Locate Prospector Anvilward |goto 44.57,53.30 < 7 |c |q 8483
step
talk Prospector Anvilward##15420
Tell him _"I need a moment of your time, sir."_
Begin Following Prospector Anvilward |goto 44.57,53.30 > 10 |q 8483
step
Watch the dialogue
|tip Follow Prospector Anvilward as he walks.
|tip He eventually walks to this location.
kill Prospector Anvilward##15420
|tip Upstairs inside the building.
collect Prospector Anvilward's Head##20764 |q 8483/1 |goto 44.07,53.31
step
talk Aeldon Sunbrand##15403
turnin The Dwarven Spy##8483 |goto 48.17,46.00
step
Enter the building |goto Silvermoon City 78.23,59.28 < 10 |walk
talk Vinemaster Suntouched##16442
|tip Inside the building.
buy Suntouched Special Reserve##22775 |q 9067/1 |goto Silvermoon City 79.51,58.52
step
talk Instructor Antheol##15970
turnin Swift Discipline##9066 |goto 55.70,54.51
step
Enter the building |goto Silvermoon City 75.65,44.91 < 10 |walk
talk Talionia##16647
|tip Downstairs inside the building.
accept The Stone##9529 |goto Silvermoon City 74.39,47.15
|only if BloodElf Warlock
step
click Voidstone
turnin The Stone##9529 |goto Ghostlands 43.66,15.98
accept The Rune of Summoning##9619 |goto Ghostlands 43.66,15.98
|only if BloodElf Warlock
step
Follow the shore along the river |goto Eversong Woods 44.26,91.08 < 40 |only if walking
Follow the path down |goto Ghostlands 29.35,7.87 < 30 |only if walking
use the Voidstone##23732
|tip Use it near the pink symbol on the ground.
|tip All way at the top of the building.
|tip Inside the building.
kill Summoned Voidwalker##5676 |q 9619/1 |goto Ghostlands 27.00,15.25
|only if BloodElf Warlock
step
Enter the building |goto Silvermoon City 75.65,44.91 < 10 |walk
talk Talionia##16647
|tip Downstairs inside the building.
turnin The Rune of Summoning##9619 |goto Silvermoon City 74.39,47.15
|only if BloodElf Warlock
step
talk Zalene Firstlight##16443
|tip Inside the building.
buy Springpaw Appetizers##22776 |q 9067/2 |goto Eversong Woods 60.41,62.46
step
talk Lieutenant Dawnrunner##15399
|tip Inside the building.
turnin Farstrider Retreat##9359 |goto 60.32,62.77
accept Amani Encroachment##8476 |goto 60.32,62.77
step
talk Arathel Sunforge##15400
|tip On the balcony of the building.
accept The Spearcrafter's Hammer##8477 |goto 59.52,62.60
stickystart "Kill_Amani_Berserkers"
stickystart "Kill_Amani_Axe_Throwers"
step
kill Spearcrafter Otembe##15408
collect Otembe's Hammer##20759 |q 8477/1 |goto 70.10,72.28
step
talk Ven'jashi##15406
accept Zul'Marosh##8479 |goto 70.50,72.33
step
kill Chieftain Zul'Marosh##15407
|tip Upstairs on top of the building.
collect Chieftain Zul'Marosh's Head##20760 |q 8479/1 |goto 62.51,79.68
collect Amani Invasion Plans##23249 |goto 62.51,79.68 |q 9360 |future
step
use the Amani Invasion Plans##23249
accept Amani Invasion##9360
step
talk Ven'jashi##15406
turnin Zul'Marosh##8479 |goto 70.50,72.33
step
label "Kill_Amani_Berserkers"
kill 5 Amani Berserker##15643 |q 8476/1 |goto 69.48,74.13
step
label "Kill_Amani_Axe_Throwers"
kill 5 Amani Axe Thrower##15641 |q 8476/2 |goto 69.48,74.13
step
talk Lieutenant Dawnrunner##15399
|tip Inside the building.
turnin Amani Encroachment##8476 |goto 60.32,62.77
turnin Amani Invasion##9360 |goto 60.32,62.77
accept Warning Fairbreeze Village##9363 |goto 60.32,62.77
step
talk Arathel Sunforge##15400
|tip On the balcony of the building.
turnin The Spearcrafter's Hammer##8477 |goto 59.52,62.60
step
talk Magister Duskwither##15951
|tip Upstairs on the balcony of the building.
accept The Magister's Apprentice##8888 |goto 60.32,61.38
step
talk Apprentice Loralthalis##15924
|tip She walks around this area.
turnin The Magister's Apprentice##8888 |goto 67.81,56.51
accept Deactivating the Spire##8889 |goto 67.81,56.51
accept Where's Wyllithen?##9394 |goto 67.81,56.51
step
click Orb of Translocation##184500 |goto 68.92,51.97
|tip At the top of the stairs.
Teleport Up to the Building |goto 67.49,52.11 < 7 |noway |c |q 8889
step
click Duskwither Spire Power Source##180920
|tip On the floating platform.
Deactivate the First Power Source |q 8889/1 |goto 68.95,51.93
step
click Duskwither Spire Power Source##180920
|tip Upstairs inside the floating building.
Deactivate the Second Power Source |q 8889/2 |goto 68.96,51.97
step
click Magister Duskwither's Journal##181011
|tip Upstairs inside the floating building.
accept Abandoned Investigations##8891 |goto 69.24,52.10
step
click Duskwither Spire Power Source##180920
|tip On the floating platform.
Deactivate the Third Power Source |q 8889/3 |goto 69.65,53.33
step
click Orb of Translocation##184500 |goto 69.62,53.42
|tip On the floating platform.
Teleport to the Ground |goto 68.89,52.00 < 7 |noway |c |q 8889
step
talk Groundskeeper Wyllithen##15969
turnin Where's Wyllithen?##9394 |goto 68.71,46.95
accept Cleaning up the Grounds##8894 |goto 68.71,46.95
stickystart "Kill_Ether_Fiends"
step
kill 6 Mana Serpent##15966 |q 8894/1 |goto 69.17,47.84
step
label "Kill_Ether_Fiends"
kill 6 Ether Fiend##15967 |q 8894/2 |goto 69.17,47.84
step
talk Groundskeeper Wyllithen##15969
turnin Cleaning up the Grounds##8894 |goto 68.71,46.95
step
talk Apprentice Loralthalis##15924
|tip She walks around this area.
turnin Deactivating the Spire##8889 |goto 67.81,56.51
accept Word from the Spire##8890 |goto 67.81,56.51
step
talk Magister Duskwither##15951
|tip Upstairs on the balcony of the building.
turnin Word from the Spire##8890 |goto 60.32,61.38
turnin Abandoned Investigations##8891 |goto 60.32,61.38
step
Enter the building |goto Silvermoon City 88.79,37.54 < 10 |walk
talk Knight-Lord Bloodvalor##17717
|tip Inside the building.
accept The First Trial##9678 |goto Silvermoon City 89.26,35.20
|only if BloodElf Paladin
step
talk Ranger Sareyn##15942
turnin Defending Fairbreeze Village##9252 |goto Eversong Woods 46.93,71.79
accept Runewarden Deryan##9253 |goto Eversong Woods 46.93,71.79
step
talk Halis Dawnstrider##16444
|tip If you can afford it, and you need more bag space, buy bags.
buy Bundle of Fireworks##22777 |q 9067/3 |goto 44.04,70.35
step
talk Magistrix Landra Dawnstrider##16210
turnin Research Notes##9255 |goto 44.03,70.76
accept Missing in the Ghostlands##9144 |goto 44.03,70.76
step
talk Ardeyn Riverwind##16397
|tip Inside the building.
accept The Scorched Grove##9258 |goto 43.57,71.20
step
talk Ranger Degolien##15939
|tip Upstairs on the balcony of the building.
turnin Warning Fairbreeze Village##9363 |goto 43.34,70.82
step
talk Lord Saltheril##16144
|tip Inside the building.
turnin The Party Never Ends##9067 |goto 38.14,73.56
step
talk Larianna Riverwind##15398
|tip Run around the mountain and follow the road.
|tip Inside the building.
turnin The Scorched Grove##9258 |goto 34.06,80.02
accept A Somber Task##8473 |goto 34.06,80.02
stickystart "Kill_Withered_Green_Keepers"
step
kill Old Whitebark##15409
|tip He looks like a slightly larger tree that walks around this area.
collect Old Whitebark's Pendant##23228 |n
use Old Whitebark's Pendant##23228
accept Old Whitebark's Pendant##8474 |goto 35.08,84.12
step
label "Kill_Withered_Green_Keepers"
kill 10 Withered Green Keeper##15637 |q 8473/1 |goto 35.28,85.58
step
talk Larianna Riverwind##15398
|tip Inside the building.
turnin A Somber Task##8473 |goto 34.06,80.02
turnin Old Whitebark's Pendant##8474 |goto 34.06,80.02
accept Whitebark's Memory##10166 |goto 34.06,80.02
step
use Old Whitebark's Pendant##28209
kill Whitebark's Spirit##19456
|tip He will eventually surrender and become friendly.
talk Whitebark's Spirit##19456
turnin Whitebark's Memory##10166 |goto 37.53,86.22
step
talk Runewarden Deryan##16362
turnin Runewarden Deryan##9253 |goto 44.19,85.47
accept Powering our Defenses##8490 |goto 44.19,85.47
step
use the Infused Crystal##22693
Kill the enemies that attack in waves
|tip Protect the Infused Crystal.
|tip It appears on the ground next to you.
|tip This will take 1 minute.
Energize the Runestone |q 8490/1 |goto 55.19,84.23
step
Enter the cave |goto Ghostlands 68.51,8.74 < 15 |walk
click Gilded Brazier
|tip Inside the cave.
kill Sangrias Stillblade##17716
Undergo the First Trial |q 9678/1 |goto Ghostlands 68.42,7.51
|only if BloodElf Paladin
step
talk Runewarden Deryan##16362
turnin Powering our Defenses##8490 |goto Eversong Woods 44.19,85.47
step
talk Courier Dawnstrider##16183
turnin Missing in the Ghostlands##9144 |goto 48.98,88.99
step
talk Apothecary Thedra##16196
accept The Fallen Courier##9147 |goto 49.02,89.05
step
Kill enemies around this area |kill Mistbat##16353, Starving Ghostclaw##16347
|tip They look like bats and cats.
|tip Try to stay near these locations.
collect 4 Plagued Blood Sample##22570 |q 9147/1 |goto Ghostlands 49.26,16.16
You can find more around [Ghostlands 44.96,18.40]
step
talk Apothecary Thedra##16196
turnin The Fallen Courier##9147 |goto Eversong Woods 49.02,89.05
step
talk Courier Dawnstrider##16183
accept Delivery to Tranquillien##9148 |goto Eversong Woods 48.98,88.99
step
talk Arcanist Vandril##16197
|tip He walks around this area.
turnin Delivery to Tranquillien##9148 |goto Ghostlands 46.34,28.36
step
talk Skymaster Sunwing##16189
fpath Tranquillien |goto 45.42,30.52
step
Enter the building |goto Silvermoon City 88.79,37.54 < 15 |walk
talk Knight-Lord Bloodvalor##17717
|tip Inside the building.
turnin The First Trial##9678 |goto Silvermoon City 89.26,35.20
accept A Study in Power##9681 |goto Silvermoon City 89.26,35.20 |or
'|accept A Study in Power##64319 |goto Silvermoon City 89.26,35.20 |or
|only if BloodElf Paladin
step
Jump down the hole inside the building |goto 92.40,37.00 < 10 |walk
talk Magister Astalor Bloodsworn##17718
|tip Downstairs inside the building.
turnin A Study in Power##9681 |goto 92.06,36.24 |only if haveq(9681) or completedq(9681)
turnin A Study in Power##64319 |goto 92.06,36.24 |only if haveq(64319) or completedq(64319)
accept Claiming the Light##9684 |goto 92.06,36.24 |or
'|accept Claiming the Light##63866 |goto 92.06,36.24 |or
|only if BloodElf Paladin
step
use the Shimmering Vessel##24157 |only if haveq(9684) or completedq(9684)
use the Shimmering Vessel##185956 |only if haveq(63866) or completedq(63866)
|tip Downstairs inside the building.
collect Filled Shimmering Vessel##24156 |q 9684/1 |goto 92.64,37.54 |only if haveq(9684) or completedq(9684)
collect Filled Shimmering Vessel##24156 |q 63866/1 |goto 92.64,37.54 |only if haveq(63866) or completedq(63866)
|only if BloodElf Paladin
step
talk Knight-Lord Bloodvalor##17717
|tip Follow the path up and out of the building, then enter the building again.
|tip Inside the building.
turnin Claiming the Light##9684 |goto 89.26,35.20 |only if haveq(9684) or completedq(9684)
turnin Claiming the Light##63866 |goto 89.26,35.20 |only if haveq(63866) or completedq(63866)
accept Redeeming the Dead##9685 |goto 89.26,35.20
|only if BloodElf Paladin
step
Enter the building |goto 81.89,58.32 < 10 |walk
use the Filled Shimmering Vessel##24184
|tip Use it one the Blood Knight Stillblade.
|tip Upstairs inside the building.
Resurrect Sangrias Stillblade |q 9685/1 |goto 80.12,60.30
|only if BloodElf Paladin
step
Enter the building |goto 88.78,37.56 < 15 |walk
talk Knight-Lord Bloodvalor##17717
|tip Inside the building.
turnin Redeeming the Dead##9685 |goto 89.26,35.20
|only if BloodElf Paladin
step
_NOTE:_
Want to Level in Ghostlands?
|tip If you want to continue leveling in the Ghostlands, load the extra Ghostlands leveling guide.
|tip By continuing to follow this guide, you will be taken to the Barrens to continue leveling.
|tip If you choose to level in the Ghostlands, you will need to use the Smart Injection System to get back on track and continue leveling after.
Click Here to Continue |confirm |q 840 |future
step
talk Takrin Pathseeker##3336
accept Conscript of the Horde##840 |goto Durotar 50.84,43.59
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Eastern Kingdoms (1-60)\\Ghostlands (13-21)",{
author="support@zygorguides.com",
next="Zygor's Horde Leveling Guides\\Eastern Kingdoms (1-60)\\Hillsbrad Foothills (20-26)",
},[[
step
talk Arcanist Vandril##16197
|tip He walks around this area.
accept The Forsaken##9327 |goto Ghostlands 46.34,28.36 |only if BloodElf
accept the Forsaken##9329 |goto Ghostlands 46.34,28.36 |only if not BloodElf
step
talk High Executor Mavren##16252
|tip Inside the building.
turnin The Forsaken##9329 |goto 44.77,32.45 |only if haveq(9329) or completedq(9329)
turnin The Forsaken##9327 |goto 44.77,32.45 |only if haveq(9327) or completedq(9327)
accept Return to Arcanist Vandril##9758 |goto 44.77,32.45
step
talk Apothecary Renzithen##16198
accept The Plagued Coast##9149 |goto 47.67,34.86
step
Enter the building |goto 48.34,31.98 < 10 |walk
talk Innkeeper Kalarin##16542
|tip Inside the building.
home Tranquillien |goto 48.91,32.42
step
talk Rathis Tomber##16224
|tip He walks around the area.
accept Tomber's Supplies##9152 |goto 47.15,28.59
step
talk Arcanist Vandril##16197
turnin Return to Arcanist Vandril##9758 |goto 46.34,28.36
accept Suncrown Village##9138 |goto 46.34,28.36
stickystart "Kill_Nerubis_Guards"
step
talk Dying Blood Elf##16601
accept Anok'suten##9315 |goto 57.55,14.92
step
kill Anok'suten##16357 |q 9315/1 |goto 60.05,12.76
|tip It looks like a larger elite purple undead spider that walks along the road around this area.
|tip He calls for help from nearby enemies once he's around 50% health, so try to pull him far away from other enemies to fight him.
|tip If you find it too difficult, try to find someone to help you, or skip the quest.
step
label "Kill_Nerubis_Guards"
kill 10 Nerubis Guard##16313 |q 9138/1 |goto 60.05,12.76
step
talk Ranger Valanna##16219
accept Dealing with Zeb'Sora##9143 |goto 69.40,15.18
step
talk Geranis Whitemorn##16201
accept Forgotten Rituals##9157 |goto 72.29,19.09
step
Kill Shadowpine enemies around this area |kill Shadowpine Witch##16341, Shadowpine Ripper##16340
|tip They look like trolls.
collect 6 Zeb'Sora Troll Ear##22639 |q 9143/1 |goto 75.90,11.50
step
talk Farstrider Sedina##16202
|tip Inside the building.
accept Bearers of the Plague##9158 |goto 72.49,32.13
step
kill 10 Ghostclaw Lynx##16348 |q 9158/1 |goto 75.87,28.39
|tip They look like mountain lions with manes.
You can find more around [71.31,40.14]
step
talk Farstrider Sedina##16202
|tip Inside the building.
turnin Bearers of the Plague##9158 |goto 72.49,32.13
accept Curbing the Plague##9159 |goto 72.49,32.13
step
talk Ranger Krenn'an##16462
accept Spirits of the Drowned##9274 |goto 72.21,29.77
stickystart "Kill_Ravening_Apparitions"
stickystart "Kill_Vengeful_Apparitions"
step
click Glistening Mud##181151+
|tip They look like brown piles of dirt on the ground.
|tip Underwater around this area.
collect 8 Wavefront Medallion##22674 |q 9157/1 |goto 73.36,22.28
step
label "Kill_Ravening_Apparitions"
kill 8 Ravening Apparition##16327 |q 9274/1 |goto 73.36,22.28
|tip They look like blue ghosts.
|tip Underwater around this area. |notinsticky
step
label "Kill_Vengeful_Apparitions"
kill 8 Vengeful Apparition##16328 |q 9274/2 |goto 73.36,22.28
|tip They look like pink ghosts.
|tip Underwater around this area. |notinsticky
step
talk Geranis Whitemorn##16201
turnin Forgotten Rituals##9157 |goto 72.29,19.09
accept Vanquishing Aquantion##9174 |goto 72.29,19.09
step
click Altar of Tidal Mastery##181157
|tip Underwater.
kill Aquantion##16292 |q 9174/1 |goto 71.34,15.04
step
talk Geranis Whitemorn##16201
turnin Vanquishing Aquantion##9174 |goto 72.29,19.09
step
talk Ranger Valanna##16219
turnin Dealing with Zeb'Sora##9143 |goto 69.40,15.18
accept Report to Captain Helios##9146 |goto 69.40,15.18
step
talk Master Chef Mouldier##16253
accept Culinary Crunch##9171 |goto 48.43,30.93
step
talk Arcanist Vandril##16197
|tip Follow the road back to Tranquillien.
|tip He walks around this area.
turnin Suncrown Village##9138 |goto 46.34,28.36
accept Goldenmist Village##9139 |goto 46.34,28.36
turnin Anok'suten##9315 |goto 46.34,28.36
step
talk Magister Darenis##16199
accept Salvaging the Past##9150 |goto 46.03,31.96
step
talk Dame Auriferous##16231
|tip Inside the building.
accept Investigate An'daroth##9160 |goto 44.88,32.51
step
talk Deathstalker Maltendis##16251
|tip Inside the building.
accept Trouble at the Underlight Mines##9192 |goto 44.75,32.28
step
talk Advisor Valwyn##16289
|tip Inside the building.
accept Investigate the Amani Catacombs##9193 |goto 44.84,32.81
step
talk Deathstalker Rathiel##16200
accept Down the Dead Scar##9155 |goto 46.02,33.57
stickystart "Kill_Gangled_Cannibals"
step
kill 10 Risen Hungerer##16301 |q 9155/1 |goto 38.69,37.95
|tip They look like zombies.
You can find more around [39.23,32.36]
step
label "Kill_Gangled_Cannibals"
kill 10 Gangled Cannibal##16309 |q 9155/2 |goto 38.69,37.95
|tip They look like ghouls.
You can find more around [39.23,32.36]
step
Kill enemies around this area |kill Arcane Devourer##16304, Mana Shifter##16310
|tip They look like voidwalkers and mana wyrms.
collect 8 Crystallized Mana Essence##22580 |q 9150/1 |goto 34.10,32.96
step
click Rathis Tomber's Supplies##181133
collect Rathis Tomber's Supplies##22583 |q 9152/1 |goto 33.56,26.54
stickystart "Kill_Sentinel_Spies"
step
Follow the path up |goto 38.08,20.46 < 40 |only if walking and not subzone("An'daroth")
Investigate An'daroth |q 9160/2 |goto 37.23,16.15
step
label "Kill_Sentinel_Spies"
kill 12 Sentinel Spy##16330 |q 9160/1 |goto 37.24,16.46
|tip They look like night elves.
stickystart "Kill_Queldorei_Ghosts"
step
kill 4 Quel'dorei Wraith##16326 |q 9139/2 |goto 27.29,16.24
|tip They look like blood elf ghosts wearing brown armor.
step
label "Kill_Queldorei_Ghosts"
kill 6 Quel'dorei Ghost##16325 |q 9139/1 |goto 27.29,16.24
|tip They look like blood elf ghosts wearing blue robes.
step
Kill Grimscale enemies around this area |kill Withered Grimscale##16403, Zombified Grimscale##16402
|tip They look like murlocs.
collect 6 Plagued Murloc Spine##22579 |q 9149/1 |goto 19.72,19.62
You can find more around [18.78,30.27]
stickystart "Kill_Spindleweb_Lurkers"
stickystart "Kill_Vampiric_Mistbats"
step
Kill Spindleweb enemies |kill Spindleweb Lurker##16351
|tip They look like spiders.
collect 5 Crunchy Spider Leg##22644 |q 9171/1 |goto 16.51,36.87
|tip Be careful not to accidentally sell these to a vendor.
You can find more around: |notinsticky
[23.75,39.70]
[30.49,39.87]
step
label "Kill_Spindleweb_Lurkers"
kill 8 Spindleweb Lurker##16351 |q 9159/2 |goto 16.51,36.87
|tip They look like spiders. |notinsticky
You can find more around: |notinsticky
[23.75,39.70]
[30.49,39.87]
step
label "Kill_Vampiric_Mistbats"
kill 10 Vampiric Mistbat##16354 |q 9159/1 |goto 16.51,36.87
|tip They look like bats.
You can find more around: |notinsticky
[23.75,39.70]
[30.49,39.87]
step
talk Apprentice Shatharia##16293
accept Underlight Ore Samples##9207 |goto 31.43,48.33
stickystart "Kill_Blackpaw_Shamans"
stickystart "Kill_Blackpaw_Scavengers"
stickystart "Kill_Blackpaw_Gnolls"
step
Kill Blackpaw enemies around this area
|tip They look like gnolls.
|tip You can find more inside the two nearby caves.
collect 6 Underlight Ore##22634 |q 9207/1 |goto 29.08,48.45
step
label "Kill_Blackpaw_Shamans"
kill 4 Blackpaw Shaman##16337 |q 9192/3 |goto 29.08,48.45
|tip They look like gnolls wearing robes.
|tip You can find more inside the two nearby caves. |notinsticky
step
label "Kill_Blackpaw_Scavengers"
kill 6 Blackpaw Scavenger##16335 |q 9192/2 |goto 29.08,48.45
|tip They look like gnolls wearing brown armor.
|tip You can find more inside the two nearby caves. |notinsticky
step
label "Kill_Blackpaw_Gnolls"
kill 8 Blackpaw Gnoll##16334 |q 9192/1 |goto 29.08,48.45
|tip They look like gnolls carrying swords.
|tip You can find more inside the two nearby caves. |notinsticky
step
use the Hearthstone##6948
Hearth to Tranquillien |complete subzone("Tranquillien") |q 9192
|only if subzone("Underlight Mines")
step
talk Master Chef Mouldier##16253
turnin Culinary Crunch##9171 |goto 48.43,30.93
step
talk Rathis Tomber##16224
|tip He walks around this area.
turnin Tomber's Supplies##9152 |goto 47.15,28.59
step
talk Arcanist Vandril##16197
|tip He walks around this area.
turnin Goldenmist Village##9139 |goto 46.34,28.36
accept Windrunner Village##9140 |goto 46.34,28.36
step
talk Magister Darenis##16199
turnin Salvaging the Past##9150 |goto 46.03,31.96
step
talk Dame Auriferous##16231
|tip Inside the building.
turnin Investigate An'daroth##9160 |goto 44.89,32.50
accept Into Occupied Territory##9163 |goto 44.89,32.50
step
talk Deathstalker Maltendis##16251
|tip Inside the building.
turnin Trouble at the Underlight Mines##9192 |goto 44.74,32.28
accept Troll Juju##9199 |goto 44.74,32.28
step
talk High Executor Mavren##16252
|tip Inside the building.
accept Retaking Windrunner Spire##9173 |goto 44.77,32.45
step
talk Deathstalker Rathiel##16200
turnin Down the Dead Scar##9155 |goto 46.02,33.57
step
talk Apothecary Renzithen##16198
turnin The Plagued Coast##9149 |goto 47.66,34.86
step
talk Apprentice Vor'el##16480
accept Clearing the Way##9281 |goto 46.40,56.42
stickystart "Kill_Ghostclaw_Ravagers"
step
kill 10 Greater Spindleweb##16352 |q 9281/1 |goto 30.28,60.26
|tip They look like spiders.
You can find more around: |notinsticky
[25.09,61.23]
[19.02,62.49]
step
label "Kill_Ghostclaw_Ravagers"
kill 10 Ghostclaw Ravager##16349 |q 9281/2 |goto 30.28,60.26
|tip They look like mountain lions with manes.
You can find more around: |notinsticky
[25.09,61.23]
[19.02,62.49]
stickystart "Kill_Deatholme_Acolytes"
stickystart "Kill_Fallen_Rangers"
step
Follow the path up |goto 18.84,58.43 < 30 |only if walking
Kill enemies around this area |kill Deatholme Acolyte##16315, Fallen Ranger##16314
collect The Lady's Necklace##22597 |n
use The Lady's Necklace##22597
accept The Lady's Necklace##9175 |goto 12.46,56.91
step
label "Kill_Deatholme_Acolytes"
kill 8 Deatholme Acolyte##16315 |q 9173/1 |goto 12.46,56.91
|tip They look like humans wearing robes.
step
label "Kill_Fallen_Rangers"
kill 10 Fallen Ranger##16314 |q 9173/2 |goto 12.46,56.91
|tip They look like ghosts.
stickystart "Collect_Gargoyle_Fragments"
step
kill Phantasmal Seeker##16323+
|tip They look like grey ghosts.
collect 6 Phantasmal Substance##22566 |q 9140/1 |goto 18.67,46.01
step
label "Collect_Gargoyle_Fragments"
kill Stonewing Slayer##16324+
|tip They look like gargoyles.
collect 4 Gargoyle Fragment##22567 |q 9140/2 |goto 18.67,46.01
step
click Night Elf Plans: An'daroth##181138
|tip It looks like an unrolled white scroll.
collect Night Elf Plans: An'daroth##22590 |q 9163/1 |goto 12.52,26.51
It can also spawn at [13.71,26.82]
step
click Night Elf Plans: An'owyn##181139
|tip It looks like an unrolled brown scroll.
collect Night Elf Plans: An'owyn##22591 |q 9163/2 |goto 12.86,23.94
It can also spawn at: |notinsticky
[12.78,25.14]
[12.54,24.81]
step
click Night Elf Plans: Scrying on the Sin'dorei##181140
|tip On the top deck of the ship.
collect Night Elf Plans: Scrying on the Sin'dorei##22592 |q 9163/3 |goto 10.45,22.58
step
Allow Enemies to Kill You
|tip Don't worry about the resurrection sickness, it will only last a few minutes.
|tip By the time you need to kill enemies again, it will be gone.
Die on Purpose |havebuff Ghost##8326 |goto 12.41,25.66 |q 9163
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff Ghost##8326 |goto 43.87,25.74 |q 9163 |zombiewalk
step
talk Arcanist Vandril##16197
|tip He walks around this area.
turnin Windrunner Village##9140 |goto 46.34,28.36
step
talk Dame Auriferous##16231
|tip Inside the building.
turnin Into Occupied Territory##9163 |goto 44.88,32.51
accept Deliver the Plans to An'telas##9166 |goto 44.88,32.51
step
talk High Executor Mavren##16252
|tip Inside the building.
turnin Retaking Windrunner Spire##9173 |goto 44.77,32.45
turnin The Lady's Necklace##9175 |goto 44.77,32.45
step
talk Magister Darenis##16199
accept The Sanctum of the Sun##9151 |goto 46.03,31.96
step
Enter the building |goto 54.75,49.45 < 10 |walk
talk Magister Kaendris##16239
|tip Inside the building.
accept The Farstrider Enclave##9282 |goto 55.07,48.83
step
talk Magister Quallestis##16291
|tip Inside the building.
turnin Underlight Ore Samples##9207 |goto 54.95,48.49
step
talk Magister Idonis##16204
|tip Upstairs inside the building.
turnin The Sanctum of the Sun##9151 |goto 54.87,48.55
step
Follow the path up |goto 60.59,41.69 < 30 |only if walking
talk Magister Sylastor##16237
turnin Deliver the Plans to An'telas##9166 |goto 60.29,35.63
accept Deactivate An'owyn##9169 |goto 60.29,35.63
step
talk Farstrider Sedina##16202
|tip Run around the mountain.
|tip Inside the building.
turnin Curbing the Plague##9159 |goto 72.49,32.13
step
talk Farstrider Solanna##16463
|tip Inside the building.
accept Attack on Zeb'Tela##9276 |goto 72.32,31.25
step
talk Ranger Krenn'an##16462
turnin Spirits of the Drowned##9274 |goto 72.21,29.77
step
talk Captain Helios##16220
turnin Report to Captain Helios##9146 |goto 72.37,29.64
accept Shadowpine Weaponry##9214 |goto 72.37,29.64
step
Run up the ramp |goto 71.83,30.05 < 7 |only if walking
talk Ranger Vynna##16203
|tip Upstairs inside the building.
turnin The Farstrider Enclave##9282 |goto 71.95,32.64
accept The Traitor's Shadow##9161 |goto 71.95,32.64
step
Run up the ramp |goto 72.64,29.94 < 7 |only if walking
talk Apothecary Venustus##16464
|tip Upstairs inside the building.
accept A Little Dash of Seasoning##9275 |goto 72.62,31.57
stickystart "Burn_Mummified_Troll_Remains"
step
Enter the crypt |goto 58.18,27.27 < 10 |walk |only if not (subzone("Amani Catacombs") and _G.IsIndoors())
Kill enemies around this area |kill Shadowpine Oracle##16343, Shadowpine Headhunter##16344
|tip They look like trolls.
|tip Inside the crypt.
collect 8 Troll Juju##22633 |q 9199/1 |goto 60.49,30.29
step
label "Burn_Mummified_Troll_Remains"
click Mummified Troll Remains##181148+
|tip They look like mummies laying on the ground.
|tip Inside the crypt, all throughout. |notinsticky
Burn #10# Mummified Troll Remains |q 9193/1 |goto 62.91,30.71
step
Investigate the Amani Catacombs |q 9193/2 |goto 62.95,31.33
|tip Inside the crypt.
step
talk Ranger Lilatha##16295
|tip Inside the crypt.
|tip If she's not there, someone else may be escorting her.
|tip Wait for her to respawn.
accept Escape from the Catacombs##9212 |goto 62.93,32.73
step
Watch the dialogue
|tip Follow Ranger Lilatha and protect her as she walks.
|tip She eventually walks to this location outside the crypt.
Escort Ranger Lilatha back to Farstrider Enclave |q 9212/1 |goto 72.23,30.14
step
talk Captain Helios##16220
turnin Escape from the Catacombs##9212 |goto 72.37,29.64
step
Enter the building |goto 78.79,19.82 < 10 |only if walking
click Dusty Journal##194341
|tip Upstairs on the balcony of the building.
turnin The Traitor's Shadow##9161 |goto 79.63,17.55
accept Hints of the Past##9162 |goto 79.63,17.55
stickystart "Collect_Shadowcaster_Maces"
stickystart "Kill_Shadowpine_Shadowcasters"
stickystart "Kill_Shadowpine_Headhunters"
step
kill Shadowpine Headhunter##16344+
collect 3 Headhunter Axe##23165 |q 9214/1 |goto 78.45,37.89
You can find more around [75.98,43.56]
step
label "Collect_Shadowcaster_Maces"
kill Shadowpine Shadowcaster##16469+
collect 3 Shadowcaster Mace##23167 |q 9214/2 |goto 78.45,37.89
You can find more around [75.98,43.56]
step
label "Kill_Shadowpine_Shadowcasters"
kill 8 Shadowpine Shadowcaster##16469 |q 9276/1 |goto 78.45,37.89
You can find more around [75.98,43.56]
step
label "Kill_Shadowpine_Headhunters"
kill 8 Shadowpine Headhunter##16344 |q 9276/2 |goto 78.45,37.89
You can find more around [75.98,43.56]
step
talk Farstrider Solanna##16463
|tip Inside the building.
turnin Attack on Zeb'Tela##9276 |goto 72.32,31.25
accept Assault on Zeb'Nowa##9277 |goto 72.32,31.25
step
Run up the ramp |goto 71.79,30.11 < 7 |only if walking
talk Ranger Vynna##16203
|tip Upstairs inside the building.
turnin Hints of the Past##9162 |goto 71.95,32.64
accept Report to Magister Kaendris##9172 |goto 71.95,32.64
stickystart "Collect_Catlord_Claws"
stickystart "Collect_Hexxer_Staves"
stickystart "Kill_Shadowpine_Catlords"
stickystart "Kill_Shadowpine_Hexxers"
step
Enter the building |goto 67.52,58.08 < 10 |walk
click Fresh Fish Rack##181252
|tip Inside the building.
Poison the Fresh Fish Rack |q 9275/3 |goto 68.23,57.79
step
click Raw Meat Rack##181250
Poison the Raw Meat Rack |q 9275/1 |goto 65.06,66.71
step
click Smoked Meat Rack##181251
Poison the Smoked Meat Rack |q 9275/2 |goto 62.99,75.02
step
label "Collect_Catlord_Claws"
kill Shadowpine Catlord##16345+
collect 3 Catlord Claws##22677 |q 9214/3 |goto 62.60,70.85
You can find more around [66.99,56.31]
step
label "Collect_Hexxer_Staves"
kill Shadowpine Hexxer##16346+
collect 3 Hexxer Stave##23166 |q 9214/4 |goto 62.60,70.85
You can find more around [66.99,56.31]
step
label "Kill_Shadowpine_Catlords"
kill 10 Shadowpine Catlord##16345 |q 9277/1 |goto 62.60,70.85
You can find more around [66.99,56.31]
step
label "Kill_Shadowpine_Hexxers"
kill 10 Shadowpine Hexxer##16346 |q 9277/2 |goto 62.60,70.85
You can find more around [66.99,56.31]
step
Kill enemies around this area |kill Shadowpine Catlord##16345, Shadowpine Hexxer##16346
|tip You should already be level 18, or very close.
ding 18 |goto 62.60,70.85
You can find more around [66.99,56.31]
step
kill Sentinel Infiltrator##16333+
|tip Run around the mountain.
collect Crystal Controlling Orb##23191 |goto 57.69,64.87 |q 9169
step
click Night Elf Moon Crystal##181359
Deactivate the Night Elf Moon Crystal |q 9169/1 |goto 58.22,64.93
step
talk Farstrider Solanna##16463
|tip Inside the building.
turnin Assault on Zeb'Nowa##9277 |goto 72.32,31.25
step
talk Captain Helios##16220
turnin Shadowpine Weaponry##9214 |goto 72.37,29.64
step
Run up the ramp |goto 72.82,30.06 < 7 |only if walking
talk Apothecary Venustus##16464
|tip Upstairs inside the building.
turnin A Little Dash of Seasoning##9275 |goto 72.62,31.57
step
Run around the mountain and follow the path up |goto 60.68,40.93 < 30 |only if walking
talk Magister Sylastor##16237
turnin Deactivate An'owyn##9169 |goto 60.29,35.63
step
Enter the building |goto 54.75,49.46 < 10 |walk
talk Magister Kaendris##16239
|tip Inside the building.
turnin Report to Magister Kaendris##9172 |goto 55.07,48.84
accept The Twin Ziggurats##9176 |goto 55.07,48.84
step
talk Magister Idonis##16204
|tip Upstairs inside the building.
accept War on Deatholme##9220 |goto 54.87,48.55
step
Run up the ramp |goto 48.87,30.93 < 10 |only if walking
talk Magistrix Aminel##16205
|tip Upstairs on the balcony of the building.
accept Rotting Hearts##9216 |goto 48.92,31.31
accept Spinal Dust##9218 |goto 48.92,31.31
step
talk Advisor Valwyn##16289
|tip Inside the building.
turnin Investigate the Amani Catacombs##9193 |goto 44.84,32.81
step
talk Deathstalker Maltendis##16251
|tip Inside the building.
turnin Troll Juju##9199 |goto 44.75,32.28
step
Enter the building |goto 40.60,48.36 < 10 |walk
click Worn Chest##181239
|tip Inside the building.
collect Stone of Flame##22599 |q 9176/1 |goto 40.37,49.76
step
Enter the building |goto 34.35,49.14 < 10 |walk
click Dented Chest##181238
|tip Inside the building.
collect Stone of Light##22598 |q 9176/2 |goto 34.30,47.66
stickystart "Collect_Rotting_Hearts"
step
Kill enemies around this area |kill Dreadbone Sentinel##16305, Deathcage Sorcerer##16308, Dreadbone Skeleton##16303, Deathcage Scryer##16307
|tip Only enemies that looks like skeletons will drop the quest item.
collect 10 Spinal Dust##22642 |q 9218/1 |goto 38.20,54.34
|tip Be careful not to accidentally sell these to a vendor.
You can find more around [36.74,67.81]
step
label "Collect_Rotting_Hearts"
Kill Risen enemies around this area |kill Risen Stalker##16302, Risen Hungerer##16301
|tip They look like zombies.
collect 10 Rotting Heart##22641 |q 9216/1 |goto 38.20,54.34
|tip Be careful not to accidentally sell these to a vendor.
You can find more around [36.74,67.81]
stickystart "Kill_Eyes_Of_DarKhan"
stickystart "Kill_Wailers"
step
label "Kill_Nerubis_Centurions"
Enter Deatholme |goto 36.15,71.20 < 40 |only if walking
kill 6 Nerubis Centurion##16319 |q 9220/2 |goto 37.78,76.97
|tip They look like undead spiders.
You can find more around [36.62,85.32]
step
label "Kill_Eyes_Of_DarKhan"
kill 5 Eye of Dar'Khan##16320 |q 9220/1 |goto 34.69,77.03
|tip They look like shadow ghosts.
step
label "Kill_Wailers"
kill 6 Wailer##16321 |q 9220/3 |goto 34.69,77.03
|tip They look like female ghost banshees.
step
use the Hearthstone##6948
Hearth to Tranquillien |complete subzone("Tranquillien") |q 9220
|only if subzone("Deatholme")
step
Run up the ramp |goto 48.90,30.97 < 10 |only if walking
talk Magistrix Aminel##16205
|tip Upstairs on the balcony of the building.
turnin Rotting Hearts##9216 |goto 48.92,31.31
turnin Spinal Dust##9218 |goto 48.92,31.31
step
Enter the building |goto 54.75,49.45 < 10 |walk
talk Magister Kaendris##16239
|tip Inside the building.
turnin The Twin Ziggurats##9176 |goto 55.07,48.84
step
talk Magister Idonis##16204
|tip Upstairs inside the building.
turnin War on Deatholme##9220 |goto 54.87,48.55
accept Dar'Khan's Lieutenants##9170 |goto 54.87,48.55
step
talk Arcanist Janeda##16240
|tip Upstairs inside the building.
accept A Restorative Draught##9877 |goto 54.83,48.35
step
talk Apothecary Renzithen##16198
turnin A Restorative Draught##9877 |goto 47.66,34.86
accept Captives at Deatholme##9164 |goto 47.66,34.86
step
talk Apprentice Vor'el##16480
turnin Clearing the Way##9281 |goto 46.40,56.42
step
Enter Deatholme |goto 36.15,71.20 < 40 |only if walking
Enter the crypt |goto 31.70,73.67 < 10 |walk
kill Jurion the Deceiver##16248 |q 9170/3 |goto 32.09,74.45
|tip Inside the crypt.
step
talk Apothecary Enith##16208
|tip Inside the crypt.
Choose _<Administer the restorative draught.>_
Rescue Apothecary Enith |q 9164/1 |goto 32.14,73.95
step
Leave the crypt and enter the building |goto 29.95,87.79 < 10 |walk
kill Masophet the Black##16249 |q 9170/4 |goto 29.28,88.89 |or
|tip Inside the building.
|tip He can spawn in multiple locations, so he may not be here.
Click Here if He's Not Here |confirm |q 9170 |or
step
Enter the building |goto 32.82,88.18 < 10 |walk
kill Borgoth the Bloodletter##16247 |q 9170/2 |goto 32.66,90.48 |or
|tip Inside the building.
|tip He can spawn in multiple locations, so he may not be here.
Click Here if He's Not Here |confirm |q 9170 |or
step
talk Ranger Vedoran##16209
|tip Downstairs inside the building.
Choose _<Administer the restorative draught.>_
Rescue Ranger Vedoran |q 9164/3 |goto 32.79,89.92
step
Enter the building |goto 35.06,87.96 < 10 |walk
kill Masophet the Black##16249 |q 9170/4 |goto 35.78,89.12
|tip Inside the building.
|tip He should be at this location, if he wasn't at the other location a few steps ago.
step
Follow the path up |goto 37.63,84.74 < 30 |only if walking
Follow the path up and enter the building |goto 39.77,83.43 < 10 |walk
talk Apprentice Varnis##16206
|tip Inside the building.
Choose _<Administer the restorative draught.>_
Rescue Ranger Vedoran |q 9164/2 |goto 40.98,83.22
step
kill Borgoth the Bloodletter##16247 |q 9170/2 |goto 41.26,83.04
|tip Inside the building.
|tip He should be at this location, if he wasn't at the other location a few steps ago.
step
kill Mirdoran the Fallen##16250 |q 9170/1 |goto 37.35,79.33
|tip Inside the building.
step
Allow Enemies to Kill You
|tip Don't worry about the resurrection sickness.
|tip By the time you need to kill enemies again, it will be gone.
Die on Purpose |havebuff Ghost##8326 |goto 35.04,80.32 |q 9170
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |nobuff Ghost##8326 |goto 61.45,56.97 |q 9170 |zombiewalk
step
Enter the building |goto 54.75,49.44 < 10 |walk
talk Arcanist Janeda##16240
|tip Upstairs inside the building.
turnin Captives at Deatholme##9164 |goto 54.84,48.35
step
talk Magister Idonis##16204
|tip Upstairs inside the building.
turnin Dar'Khan's Lieutenants##9170 |goto 54.87,48.55
step
talk High Executor Mavren##16252
|tip Inside the building.
accept Journey to Undercity##9180 |goto 44.77,32.45 |only if BloodElf
accept Journey to Undercity##9177 |goto 44.77,32.45 |only if not BloodElf
step
talk Michael Garrett##4551
fpath Undercity |goto Undercity 63.28,48.58
step
Follow the path |goto 52.25,64.25 < 10 |walk
talk Lady Sylvanas Windrunner##10181
turnin Journey to Undercity##9180 |goto 58.05,91.79 |only if BloodElf
turnin Journey to Undercity##9177 |goto 58.05,91.79 |only if not BloodElf
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Eastern Kingdoms (1-60)\\Death Knight (55-58)",{
author="support@zygorguides.com",
condition_invalid=function() return not raceclass('DeathKnight')  end,
condition_invalid_msg="Death Knight only.",
condition_suggested=function() return raceclass('DeathKnight') and not completedq(13189) end,
condition_suggested_exclusive=true,
condition_end=function() return completedq(13189) end,
next="Leveling Guides\\Eastern Kingdoms (1-60)\\Blasted Lands (57-60)\\Blasted Lands (57-60)",
startlevel=55,
dynamic=true,
},[[
step
talk The Lich King##25462
|tip On the upper floor of Acherus.
accept In Service Of The Lich King##12593 |goto Plaguelands: The Scarlet Enclave/0 51.34,35.21
step
talk Instructor Razuvious##28357
|tip He walks around this area.
|tip On the upper floor of Acherus.
turnin In Service Of The Lich King##12593 |goto 48.24,28.26
accept The Emblazoned Runeblade##12619 |goto 48.24,28.26
step
click Battle-worn Sword##190584
|tip On the upper floor of Acherus.
collect Battle-worn Sword##38607 |goto 47.51,31.34 |q 12619
step
use the Battle-worn Sword##38607
|tip On the upper floor of Acherus.
collect Runebladed Sword##38631 |q 12619/1 |goto 47.39,31.24
step
talk Instructor Razuvious##28357
|tip He walks around this area.
|tip On the upper floor of Acherus.
turnin The Emblazoned Runeblade##12619 |goto 48.24,28.26
accept Runeforging: Preparation For Battle##12842 |goto 48.24,28.26
step
cast Runeforging##53428
|tip Use your "Runeforging" ability near the Runeforge.
|tip Open your character's equipment window and engrave your weapon with a rune.
|tip On the upper floor of Acherus.
Emblazon Your Weapon |q 12842/1 |goto 47.39,31.24
step
talk Instructor Razuvious##28357
|tip He walks around this area.
|tip On the upper floor of Acherus.
turnin Runeforging: Preparation For Battle##12842 |goto 48.24,28.26
accept The Endless Hunger##12848 |goto 48.24,28.26
step
click Acherus Soul Prison##8115
|tip They look like horned skulls on the wall, chaining the prisoners around this area.
|tip On the upper floor of Acherus.
Watch the dialogue
kill Unworthy Initiate##29565
Dominate an Unworthy Initiate |q 12848/1 |goto 48.33,28.98
step
talk Instructor Razuvious##28357
|tip He walks around this area.
|tip On the upper floor of Acherus.
turnin The Endless Hunger##12848 |goto 48.24,28.26
accept The Eye Of Acherus##12636 |goto 48.24,28.26
step
talk The Lich King##25462
|tip On the upper floor of Acherus.
turnin The Eye Of Acherus##12636 |goto 51.34,35.21
accept Death Comes From On High##12641 |goto 51.34,35.21
step
click Eye of Acherus Control Mechanism##191609
|tip On the upper floor of Acherus.
Take Control of the Eye of Acherus |havebuff The Eye of Acherus##51852 |goto 52.16,35.18 |q 12641
step
_Go Northeast:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the blacksmith building with a floating red arrow above it.
Use the "Siphon of Acherus" ability |petaction 1
|tip Get near the floating red arrow.
Analyze the New Avalon Forge |q 12641/1
step
_Go South:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the big fort building with a floating red arrow above it.
Use the "Siphon of Acherus" ability |petaction 1
|tip Get near the floating red arrow.
Analyze the Scarlet Hold |q 12641/3
step
_Go West:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the town hall building with a clock tower, with a floating red arrow above it.
Use the "Siphon of Acherus" ability |petaction 1
|tip Get near the floating red arrow.
Analyze the New Avalon Town Hall |q 12641/2
step
_Go South:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the small church building with a floating red arrow above it.
Use the "Siphon of Acherus" ability |petaction 1
|tip Get near the floating red arrow.
Analyze the Chapel of the Crimson Flame |q 12641/4
step
Return to Ebon Hold |nobuff The Eye of Acherus##51852 |petaction 5 |q 12641
|tip Use the "Recall Eye of Acherus" ability.
step
talk The Lich King##25462
|tip On the upper floor of Acherus.
turnin Death Comes From On High##12641 |goto 51.34,35.21
accept The Might Of The Scourge##12657 |goto 51.34,35.21
step
Walk onto the teleporter to go downstairs |goto 50.49,33.37 < 5 |walk
talk Highlord Darion Mograine##28444
|tip On the bottom floor of Acherus.
turnin The Might Of The Scourge##12657 |goto 48.88,29.76
accept Report To Scourge Commander Thalanor##12850 |goto 48.88,29.76
step
talk Lord Thorval##28472
|tip On the bottom floor of Acherus.
accept The Power Of Blood, Frost And Unholy##12849 |goto 47.48,26.56
step
talk Scourge Commander Thalanor##28510
|tip He walks around this area.
|tip On the bottom floor of Acherus.
turnin Report To Scourge Commander Thalanor##12850 |goto 51.21,34.90
accept The Scarlet Harvest##12670 |goto 51.21,34.90
step
clicknpc Scourge Gryphon##29488
|tip On the bottom floor of Acherus.
Begin Flying Down to Death's Breach |invehicle |goto 50.96,36.15 |q 12670
step
Arrive at Death's Breach |outvehicle |goto 53.19,31.15 |q 12670 |notravel
step
talk Prince Valanar##28377
turnin The Scarlet Harvest##12670 |goto 52.28,33.96
accept If Chaos Drives, Let Suffering Hold The Reins##12678 |goto 52.28,33.96
step
talk Salanar the Horseman##28653
|tip He walks around this area.
accept Grand Theft Palomino##12680 |goto 52.51,34.54
step
talk Olrun the Battlecaller##29047
|tip She flies around this area.
accept Death's Challenge##12733 |goto 54.63,33.95
step
talk Death Knight Initiate##28406
|tip They are all around this area.
Tell them _"I challenge you, death knight!"_
kill Death Knight Initiate##28392+
Defeat #5# Death Knights in a Duel |q 12733/1 |goto 53.21,33.54
step
talk Olrun the Battlecaller##29047
|tip She flies around this area.
turnin Death's Challenge##12733 |goto 54.63,33.95
step
talk Orithos the Sky Darkener##28647
|tip He walks around this area.
accept Tonight We Dine In Havenshire##12679 |goto 53.42,36.65
stickystart "Slay_Scarlet_Crusaders"
stickystart "Slay_Citizens_Of_Havenshire"
stickystart "Collect_Saronite_Arrows"
step
click Abandoned Mail##190917
|tip It looks like a roll of parchment on top of the mailbox.
accept Abandoned Mail##12711 |goto 55.27,46.17 |instant
step
label "Slay_Scarlet_Crusaders"
Kill Scarlet enemies around this area |kill Scarlet Captain##28611, Scarlet Medic##28608, Scarlet Infantryman##28609, Scarlet Peasant##28557
Slay #10# Scarlet Crusaders |q 12678/1 |goto 54.25,44.45
step
label "Slay_Citizens_Of_Havenshire"
kill 10 Citizen of Havenshire##28660 |q 12678/2 |goto 54.25,44.45
step
label "Collect_Saronite_Arrows"
click Saronite Arrow##190691+
|tip They look like yellow and green arrows stuck in the ground around this area.
collect 15 Saronite Arrow##39160 |q 12679/1 |goto 56.41,50.97
step
click Havenshire Horse
|tip They look like horses around this area.
|tip Watch out for Stable Master Kitrik, he's elite and will pull you off the horse.
Ride the Havenshire Horse |invehicle |goto 55.74,43.39 |q 12680
step
Follow the path up |goto 50.95,41.71 < 30 |only if walking
Successfully Steal the Horse |q 12680/1 |goto 52.26,34.96
|tip Use the "Deliver Stolen Horse" ability next to Salanar the Horseman.
|tip He walks around this area.
step
talk Salanar the Horseman##28653
|tip He walks around this area.
turnin Grand Theft Palomino##12680 |goto 52.26,34.96
accept Into the Realm of Shadows##12687 |goto 52.26,34.96
step
kill Dark Rider of Acherus##28768
|tip They ride around on horses around this area.
clicknpc Acherus Deathcharger##28302
|tip It's the horse they were riding on before you killed them.
Steal an Acherus Deathcharger |invehicle |goto 55.67,42.41 |q 12687
step
Watch the dialogue
|tip Use the "Horseman's Call" ability.
Complete the Horseman's Challenge |q 12687/1 |goto 50.88,41.74
step
talk Salanar the Horseman##28653
|tip He walks around this area.
turnin Into the Realm of Shadows##12687 |goto 52.51,34.54
step
talk Prince Valanar##28377
turnin If Chaos Drives, Let Suffering Hold The Reins##12678 |goto 52.28,33.96
step
talk Orithos the Sky Darkener##28647
|tip He walks around this area.
turnin Tonight We Dine In Havenshire##12679 |goto 53.42,36.65
step
talk Prince Valanar##28377
accept Gothik the Harvester##12697 |goto 52.28,33.96
step
talk Gothik the Harvester##28658
turnin Gothik the Harvester##12697 |goto 54.07,35.03
accept The Gift That Keeps On Giving##12698 |goto 54.07,35.03
step
use Gift of the Harvester##39253
|tip Use it on Scarlet Miners.
|tip They look like humans inside the mine.
|tip Some will turn into a Scarlet Ghoul and start following you.
Click Here When 5 Scarlet Ghouls Are Following You |confirm |goto 58.27,30.94 |q 12698
step
Leave the mine and follow the path up |goto 55.98,31.05 < 30 |only if walking
Return #5# Scarlet Ghouls |q 12698/1 |goto 54.07,35.03
step
talk Gothik the Harvester##28658
turnin The Gift That Keeps On Giving##12698 |goto 54.07,35.03
accept An Attack Of Opportunity##12700 |goto 54.07,35.03
step
talk Prince Valanar##28377
turnin An Attack Of Opportunity##12700 |goto 52.28,33.96
accept Massacre At Light's Point##12701 |goto 52.28,33.96
step
click Inconspicuous Mine Car##190767
Hide in the Inconspicuous Mine Cart |invehicle |goto 58.50,33.03 |q 12701
step
Infiltrate the Scarlet Fleet Ship |outvehicle |goto Plaguelands: The Scarlet Enclave 67.94,46.09 |q 12701 |notravel
|only if Alliance
step
click Scarlet Cannon##176216
Mount the Cannon |invehicle |goto 67.58,46.08 |q 12701
|only if Alliance
step
kill Scarlet Fleet Defender##28834+
|tip Use the abilities on your action bar.
Slay #100# Scarlet Defenders |q 12701/1 |goto 67.61,46.10
|only if Alliance
step
Escape to Death's Breach |goto 67.61,46.10 > 10 |noway |c |q 12701
|tip Use the "Skeletal Gryphon Escape" ability on your action bar.
|only if Alliance
step
Infiltrate the Scarlet Fleet Ship |outvehicle |goto Plaguelands: The Scarlet Enclave 67.81,38.67 |q 12701 |notravel
|only if Horde
step
click Scarlet Cannon##176216
Mount the Cannon |invehicle |goto 67.70,39.02 |q 12701
|only if Horde
step
kill Scarlet Fleet Defender##28834+
|tip Use the abilities on your action bar.
Slay #100# Scarlet Defenders |q 12701/1 |goto 67.78,38.99
|only if Horde
step
Escape to Death's Breach |goto 67.78,38.99 > 10 |noway |c |q 12701
|tip Use the "Skeletal Gryphon Escape" ability on your action bar.
|only if Horde
step
Return to Death's Breach |outvehicle |goto Plaguelands: The Scarlet Enclave 52.57,34.46 |q 12701 |notravel
step
talk Prince Valanar##28377
turnin Massacre At Light's Point##12701 |goto 52.28,33.96
accept Victory At Death's Breach!##12706 |goto 52.28,33.96
step
clicknpc Scourge Gryphon##29501
Begin Flying Up to Acherus |invehicle |goto 53.09,32.48 |q 12706
step
Return to Acherus |outvehicle |goto 51.11,34.67 |q 12706 |notravel
step
talk Highlord Darion Mograine##28444
|tip On the bottom floor of Acherus.
turnin Victory At Death's Breach!##12706 |goto 48.87,29.76
accept The Will Of The Lich King##12714 |goto 48.87,29.76
step
clicknpc Scourge Gryphon##29488
|tip On the bottom floor of Acherus.
Begin Flying Down to Death's Breach |invehicle |goto 50.96,36.15 |q 12714
step
Arrive at Death's Breach |outvehicle |goto 53.19,31.15 |q 12714 |notravel
step
talk Prince Valanar##28907
turnin The Will Of The Lich King##12714 |goto 53.47,36.55
accept The Crypt of Remembrance##12715 |goto 53.47,36.55
step
talk Noth the Plaguebringer##28919
accept The Plaguebringer's Request##12716 |goto 55.89,52.39
step
Enter the crypt |goto 54.20,58.14 < 10 |walk
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin The Crypt of Remembrance##12715 |goto 54.30,57.31
accept Nowhere To Run And Nowhere To Hide##12719 |goto 54.30,57.31
step
talk Baron Rivendare##28910
|tip Downstairs inside the crypt.
accept Lambs To The Slaughter##12722 |goto 54.66,57.43
stickystart "Slay_Scarlet_Crusade_Soldiers"
stickystart "Collect_Crusader_Skulls"
stickystart "Slay_Citizens_Of_New_Avalaon"
step
Enter the building |goto 57.67,64.41 < 10 |walk
Run down the stairs |goto 57.55,62.37 < 7 |walk
click Empty Cauldron##190937
|tip Downstairs inside the building.
collect Empty Cauldron##39324 |q 12716/1 |goto 57.86,61.84
step
Enter the building |goto 61.49,60.72 < 7 |walk
click Iron Chain##190938
|tip Inside the building.
collect Iron Chain##39326 |q 12716/2 |goto 62.05,60.24
step
Enter the building |goto 53.13,71.07 < 7 |walk
kill Mayor Quimby##28945 |q 12719/1 |goto 52.24,71.17
|tip Inside the building.
step
click New Avalon Registry##190947
|tip Inside the building.
collect New Avalon Registry##39362 |q 12719/2 |goto 52.45,71.00
step
label "Slay_Scarlet_Crusade_Soldiers"
Kill Scarlet enemies around this area |kill Scarlet Crusader##28940, Scarlet Preacher##28939, Scarlet Commander##28936 |notinsticky
Slay #10# Scarlet Crusade Soldiers |q 12722/1 |goto 54.27,70.15
step
label "Collect_Crusader_Skulls"
Kill Scarlet enemies around this area |kill Scarlet Crusader##28940, Scarlet Preacher##28939, Scarlet Commander##28936 |notinsticky
kill Citizen of New Avalon##28942+
|tip Inside and outside the buildings around this area. |notinsticky
collect 10 Crusader Skull##39328 |q 12716/3 |goto 54.27,70.15
step
label "Slay_Citizens_Of_New_Avalaon"
kill 15 Citizen of New Avalon##28942 |q 12722/2 |goto 54.27,70.15
|tip Inside and outside the buildings around this area. |notinsticky
step
Enter the crypt |goto 54.20,58.14 < 10 |walk
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin Nowhere To Run And Nowhere To Hide##12719 |goto 54.30,57.31
accept How To Win Friends And Influence Enemies##12720 |goto 54.30,57.31
step
talk Baron Rivendare##28910
|tip Downstairs inside the crypt.
turnin Lambs To The Slaughter##12722 |goto 54.66,57.43
step
talk Noth the Plaguebringer##28919
turnin The Plaguebringer's Request##12716 |goto 55.89,52.39
accept Noth's Special Brew##12717 |goto 55.89,52.39
step
click Plague Cauldron##190936
turnin Noth's Special Brew##12717 |goto 56.15,51.98
step
use Ornate Jeweled Box##39418
collect Keleseth's Persuader##39371 |q 12720 |or
'|collect Keleseth's Persuader##142274 |q 12720 |or
step
Equip Keleseth's Persuaders |equipped Keleseth's Persuader##39371 |q 12720	|only if itemcount(39371) > 0
Equip Keleseth's Persuader |equipped Keleseth's Persuader##142274 |q 12720	|only if itemcount(142274) > 0
|tip Equip the two Keleseth's Persuaders in your bag.				|only if itemcount(39371) > 0
|tip Equip the Keleseth's Persuader in your bag.				|only if itemcount(142274) > 0
step
Kill Scarlet enemies around this area |kill Scarlet Crusader##28940, Scarlet Preacher##28939, Scarlet Commander##28936
|tip Try not to kill them too fast, and stop attacking them when they start talking.
|tip Eventually one of the enemies will give you information.
Watch the dialogue
Reveal the "Crimson Dawn" |q 12720/1 |goto 57.60,66.63
step
Equip Your Normal Weapon
Click Here After Equipping Your Normal Weapon |confirm |q 12720
step
Enter the crypt |goto 54.20,58.14 < 10 |walk
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin How To Win Friends And Influence Enemies##12720 |goto 54.30,57.31
accept Behind Scarlet Lines##12723 |goto 54.30,57.31
step
Enter the building |goto 56.14,79.97 < 7 |walk
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin Behind Scarlet Lines##12723 |goto 56.26,79.84
accept The Path Of The Righteous Crusader##12724 |goto 56.26,79.84
step
talk Thassarian##28913
|tip Upstairs inside the building.
accept Brothers In Death##12725 |goto 56.27,80.15
step
Enter the fort |goto 61.98,68.18 < 10 |walk
Run down the stairs |goto 62.76,68.63 < 7 |walk
talk Koltira Deathweaver##28912
|tip Downstairs in the building.
turnin Brothers In Death##12725 |goto 62.96,67.85
accept Bloody Breakout##12727 |goto 62.96,67.85
step
Watch the dialogue
|tip Downstairs in the building.
Kill the enemies that attack in waves
kill High Inquisitor Valroth##29001
|tip Stay inside the bubble Koltira Deathweaver forms.
|tip It reduces spell damage done to you, so you'll live.
click High Inquisitor Valroth's Remains##191092
|tip It will be wherever you ended up killing High Inquisitor Valroth.
collect Valroth's Head##39510 |q 12727/1 |goto 62.91,68.10
step
click New Avalon Patrol Schedule##191084
|tip Upstairs inside the building, in the large room.
collect New Avalon Patrol Schedule##39504 |q 12724/1 |goto 62.99,68.31
step
Leave the fort |goto 61.98,68.18 < 10 |walk
Enter the building |goto 56.14,79.97 < 7 |walk
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin The Path Of The Righteous Crusader##12724 |goto 56.26,79.84
step
talk Thassarian##28913
|tip Upstairs inside the building.
turnin Bloody Breakout##12727 |goto 56.27,80.15
accept A Cry For Vengeance!##12738 |goto 56.27,80.15
step
talk Knight Commander Plaguefist##29053
|tip He walks around this area.
turnin A Cry For Vengeance!##12738 |goto 53.04,81.84
accept A Special Surprise##12742 |goto 53.04,81.84 |only if Human
accept A Special Surprise##12743 |goto 53.04,81.84 |only if NightElf
accept A Special Surprise##12744 |goto 53.04,81.84 |only if Dwarf
accept A Special Surprise##12745 |goto 53.04,81.84 |only if Gnome
accept A Special Surprise##12746 |goto 53.04,81.84 |only if Draenei
accept A Special Surprise##28649 |goto 53.04,81.84 |only if Worgen
accept A Special Surprise##12739 |goto 53.04,81.84 |only if Tauren
accept A Special Surprise##12747 |goto 53.04,81.84 |only if BloodElf
accept A Special Surprise##12748 |goto 53.04,81.84 |only if Orc
accept A Special Surprise##12749 |goto 53.04,81.84 |only if Troll
accept A Special Surprise##12750 |goto 53.04,81.84 |only if Scourge
accept A Special Surprise##28650 |goto 53.04,81.84 |only if Goblin
step
Enter the building |goto 54.46,83.20 < 7 |walk
Watch the dialogue
|tip Inside the building.
kill Valok the Righteous##29070 |q 12746/1 |goto 54.55,83.42
|only if Draenei
step
Enter the building |goto 54.46,83.20 < 7 |walk
Watch the dialogue
|tip Inside the building.
kill Yazmina Oakenthorn##29065 |q 12743/1 |goto 54.25,83.92
|only if NightElf
step
Enter the building |goto 54.46,83.20 < 7 |walk
Watch the dialogue
|tip Inside the building.
kill Goby Blastenheimer##29068 |q 12745/1 |goto 53.93,83.82
|only if Gnome
step
Enter the building |goto 54.46,83.20 < 7 |walk
Watch the dialogue
|tip Inside the building.
kill Ellen Stanbridge##29061 |q 12742/1 |goto 53.53,83.79
|only if Human
step
Enter the building |goto 54.46,83.20 < 7 |walk
Watch the dialogue
|tip Inside the building.
kill Donovan Pulfrost##29067 |q 12744/1 |goto 54.02,83.27
|only if Dwarf
step
Enter the building |goto 54.46,83.20 < 7 |walk
Watch the dialogue
|tip Inside the building.
kill Lord Harford##49355 |q 28649/1 |goto 54.14,83.26
|only if Worgen
step
Enter the building |goto 54.46,83.20 < 7 |walk
Watch the dialogue
|tip Inside the building.
kill Malar Bravehorn##29032 |q 12739/1 |goto 54.51,83.87
|only if Tauren
step
Enter the building |goto 54.46,83.20 < 7 |walk
Watch the dialogue
|tip Inside the building.
kill Lady Eonys##29074 |q 12747/1 |goto 54.28,83.28
|only if BloodElf
step
Enter the building |goto 54.46,83.20 < 7 |walk
Watch the dialogue
|tip Inside the building.
kill Kug Ironjaw##29072 |q 12748/1 |goto 53.77,83.26
|only if Orc
step
Enter the building |goto 54.46,83.20 < 7 |walk
Watch the dialogue
|tip Inside the building.
kill Iggy Darktusk##29073 |q 12749/1 |goto 53.80,83.78
|only if Troll
step
Enter the building |goto 54.46,83.20 < 7 |walk
Watch the dialogue
|tip Inside the building.
kill Antoine Brack##29071 |q 12750/1 |goto 53.53,83.30
|only if Scourge
step
Enter the building |goto 54.46,83.20 < 7 |walk
Watch the dialogue
|tip Inside the building.
kill Gally Lumpstain##49356 |q 28650/1 |goto 54.12,83.77
|only if Goblin
step
talk Knight Commander Plaguefist##29053
|tip He walks around this area.
turnin A Special Surprise##12742 |goto 53.04,81.84 |only if Human
turnin A Special Surprise##12743 |goto 53.04,81.84 |only if NightElf
turnin A Special Surprise##12744 |goto 53.04,81.84 |only if Dwarf
turnin A Special Surprise##12745 |goto 53.04,81.84 |only if Gnome
turnin A Special Surprise##12746 |goto 53.04,81.84 |only if Draenei
turnin A Special Surprise##28649 |goto 53.04,81.84 |only if Worgen
turnin A Special Surprise##12739 |goto 53.04,81.84 |only if Tauren
turnin A Special Surprise##12747 |goto 53.04,81.84 |only if BloodElf
turnin A Special Surprise##12748 |goto 53.04,81.84 |only if Orc
turnin A Special Surprise##12749 |goto 53.04,81.84 |only if Troll
turnin A Special Surprise##12750 |goto 53.04,81.84 |only if Scourge
turnin A Special Surprise##28650 |goto 53.04,81.84 |only if Goblin
accept A Sort Of Homecoming##12751 |goto 53.04,81.84
step
Enter the building |goto 56.14,79.97 < 7 |walk
talk Thassarian##28913
|tip Upstairs inside the building.
turnin A Sort Of Homecoming##12751 |goto 56.27,80.15
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
accept Ambush At The Overlook##12754 |goto 56.26,79.84
step
use the Makeshift Cover##39645
kill Scarlet Courier##29076
collect Scarlet Courier's Belongings##39646 |q 12754/1 |goto 59.92,78.25
collect Scarlet Courier's Message##39647 |q 12754/2 |goto 59.92,78.25
step
Enter the building |goto 56.14,79.97 < 7 |walk
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin Ambush At The Overlook##12754 |goto 56.26,79.84
accept A Meeting With Fate##12755 |goto 56.26,79.84
step
talk High General Abbendis##29077
turnin A Meeting With Fate##12755 |goto 65.65,83.82
accept The Scarlet Onslaught Emerges##12756 |goto 65.65,83.82
step
Follow the path up and enter the building |goto 56.14,79.97 < 7 |walk
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin The Scarlet Onslaught Emerges##12756 |goto 56.26,79.84
accept Scarlet Armies Approach...##12757 |goto 56.26,79.84
step
Watch the dialogue
|tip Upstairs inside the building.
click Portal to Acherus##8046 |goto 56.18,80.05
Teleport to Acherus |goto 50.18,32.61 < 20 |noway |q 12757
step
talk Highlord Darion Mograine##28444
|tip On the bottom floor of Acherus.
turnin Scarlet Armies Approach...##12757 |goto 48.89,29.77
accept The Scarlet Apocalypse##12778 |goto 48.89,29.77
step
clicknpc Scourge Gryphon##29488
|tip On the bottom floor of Acherus.
Begin Flying Down to Death's Breach |invehicle |goto 50.96,36.15 |q 12778
step
Arrive at Death's Breach |outvehicle |goto 53.19,31.15 |q 12778 |notravel
step
talk The Lich King##29110
turnin The Scarlet Apocalypse##12778 |goto 53.57,36.85
accept An End To All Things...##12779 |goto 53.57,36.85
step
use the Horn of the Frostbrood##39700
Summon a Dragon to Ride |invehicle |goto 53.57,36.85 |q 12779
stickystart "Destroy_Scarlet_Ballistas"
step
kill 150 Scarlet Soldier##4286 |q 12779/1 |goto 55.90,61.84
|tip They look like humans on the ground.
|tip Use the abilities on your action bar.
step
label "Destroy_Scarlet_Ballistas"
Destroy #10# Scarlet Ballistas |q 12779/2 |goto 57.03,60.81
|tip They look like big wooden crossbow machines around this area.
|tip Use the abilities on your action bar.
step
Return to Death's Breach |goto 52.75,38.13 < 30 |q 12779
|tip Fly to this location.
step
Release the Frostbrood Vanquisher |outvehicle |goto 52.75,38.13 |q 12779
|tip Click the arrow on your action bar.
step
talk The Lich King##29110
turnin An End To All Things...##12779 |goto 53.57,36.85
accept The Lich King's Command##12800 |goto 53.57,36.85
step
Run through the tunnel |goto 49.13,28.35 < 15 |only if walking
Follow the path down |goto 40.02,19.25 < 30 |only if walking
talk Scourge Commander Thalanor##31082
|tip He walks around this area.
turnin The Lich King's Command##12800 |goto 33.99,30.36
accept The Light of Dawn##12801 |goto 33.99,30.36
step
talk Highlord Darion Mograine##29173
|tip If he's not here, then the battle has already started.
|tip You may be able to join the battle.  Skip to the next step, try to do it, and see if it works.
|tip If you're unable to join the battle, skip back to this step and wait for Highlord Darion Mograine to respawn.
Tell him _"I am ready, Highlord. Let the siege of Light's Hope begin!"_
|tip If he's here, but you can't choose this dialogue, that just means someone else already did it.
|tip Now you just need to wait for the battle to start.
|tip The battle starts 5 minutes after someone initiates this dialogue with him.
Click Here When the Battle Begins |confirm |goto 34.44,31.10 |q 12801
step
Kill enemies around this area
|tip Follow your allies into battle.
Watch the dialogue
Uncover The Light of Dawn |q 12801/1 |goto 38.79,38.34
step
talk Highlord Darion Mograine##29173
turnin The Light of Dawn##12801 |goto 39.00,39.17
accept Taking Back Acherus##13165 |goto 39.00,39.17
step
cast Death Gate##50977
|tip Click the purple Death Gate portal that appears nearby.
Travel to Ebon Hold |goto Eastern Plaguelands 83.72,50.03 < 20 |noway |c |q 13165
step
talk Highlord Darion Mograine##29173
|tip On the bottom floor of Acherus.
turnin Taking Back Acherus##13165 |goto 83.44,49.46
accept The Battle For The Ebon Hold##13166 |goto 83.44,49.46
stickystart "Slay_Scourge"
step
Walk onto the teleporter to go upstairs |goto 83.19,48.90 < 5 |walk
kill Patchwerk##31099 |q 13166/1 |goto 81.99,46.37
|tip He looks like a large abomination that fights around this area.
|tip On the upper floor of Acherus.
step
label "Slay_Scourge"
Kill enemies around this area |kill Terrifying Abomination##31098, Terrifying Abomination##31098, Val'kyr Battle-maiden##31095
|tip On the upper floor of Acherus. |notinsticky
Slay #10# Scourge |q 13166/2 |goto 82.35,47.13
step
Walk onto the teleporter to go downstairs |goto 83.28,49.12 < 5 |walk
talk Highlord Darion Mograine##31084
|tip On the bottom floor of Acherus.
turnin The Battle For The Ebon Hold##13166 |goto 83.44,49.46
accept Where Kings Walk##13188 |goto 83.44,49.46				|only if Alliance
accept Warchief's Blessing##13189 |goto 83.44,49.46				|only if Horde
step
clicknpc Portal to Stormwind##103186 |goto 83.65,51.34
|tip On the bottom floor of Acherus.
Teleport to Stormwind City |goto Elwynn Forest |noway |q 13188
|only if Alliance
step
Enter the building |goto Stormwind City 80.60,37.89 < 15 |walk
talk King Varian Wrynn##29611
|tip Inside the building.
turnin Where Kings Walk##13188 |goto Stormwind City 85.8,31.7
|only if Alliance
step
clicknpc Portal to Orgrimmar##103191 |goto Eastern Plaguelands 84.55,50.46
|tip On the bottom floor of Acherus.
Teleport to Orgrimmar |goto Durotar |noway |q 13189
|only if Horde
step
Enter the building |goto Orgrimmar 49.43,70.86 < 10 |walk
talk Garrosh Hellscream##39605
|tip Inside the building.
turnin Warchief's Blessing##13189 |goto Orgrimmar 47.23,64.62
|only if Horde
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Eastern Kingdoms (1-60)\\Tirisfal Glades (1-11) [Undead Starter]",{
author="support@zygorguides.com",
condition_suggested=function() return raceclass('Scourge') and level<=12 end,
next="Zygor's Horde Leveling Guides\\Eastern Kingdoms (1-60)\\Silverpine Forest (11-20)",
startlevel=1,
dynamic=true,
},[[
step
talk Agatha##49044
accept Fresh out of the Grave##24959 |goto Tirisfal Glades 29.43,70.95
|only if Scourge
step
talk Undertaker Mordo##1568
turnin Fresh out of the Grave##24959 |goto 30.07,71.30
accept The Shadow Grave##28608 |goto 30.07,71.30
|only if Scourge
step
Enter the crypt |goto 30.33,72.31 < 10 |walk
click Thick Embalming Fluid##207255
|tip It looks like a green globe sitting on the table.
|tip Inside the crypt.
collect Thick Embalming Fluid##64582 |q 28608/1 |goto 29.7,72.0
step
click Corpse-Stitching Twine##207256
|tip It looks like a red spool of thread sitting on the table.
collect Corpse-Stitching Twine##64581 |q 28608/2 |goto 29.66,72.02
|only if Scourge
step
talk Undertaker Mordo##1568
|tip Leave the crypt.
turnin The Shadow Grave##28608 |goto 30.07,71.30
accept Those That Couldn't Be Saved##26799 |goto 30.07,71.30
|only if Scourge
step
talk Caretaker Caice##2307
accept The Wakening##24960 |goto 30.67,71.42
|only if Scourge
stickystart "Kill_Mindless_Zombies"
step
talk Valdred Moray##49231
Ask him _"Don't you remember? You died."_
Speak with Valdred Moray |q 24960/3 |goto 29.41,69.61
|only if Scourge
step
talk Lilian Voss##38895
Tell her _"I'm not an abomination, I'm simply undead. I just want to speak with you."_
Speak with Lilian Voss |q 24960/1 |goto 30.26,69.04
|only if Scourge
step
talk Marshal Redpath##49230
Tell him _"I'm not here to fight. I've only been asked to speak with you."_
Speak with Marshal Redpath |q 24960/2 |goto  30.82,69.16
|only if Scourge
step
label "Kill_Mindless_Zombies"
kill 6 Mindless Zombie##1501 |q 26799/1 |goto 30.17,69.83
|only if Scourge
step
talk Undertaker Mordo##1568
turnin Those That Couldn't Be Saved##26799 |goto 30.07,71.30
|only if Scourge
step
talk Caretaker Caice##2307
turnin The Wakening##24960 |goto 30.67,71.42
accept Beyond the Graves##25089 |goto 30.67,71.42
|only if Scourge
step
talk Deathguard Saltain##1740
|tip He walks around this area.
turnin Beyond the Graves##25089 |goto 31.62,65.70
accept Recruitment##26800 |goto 31.62,65.70
|only if Scourge
step
Enter the building |goto 31.38,66.20 < 7 |walk
talk Shadow Priest Sarvis##1569
|tip Inside the building.
accept Scourge on our Perimeter##26801 |goto 30.83,66.20
stickystart "Slay_Deathknell_Scourge"
step
clicknpc Scarlet Corpse##49340+
|tip They look like dead humans in red outfits laying on the ground around this area.
Gather #6# Scarlet Corpses |q 26800/1 |goto 32.42,63.32
step
label "Slay_Deathknell_Scourge"
Kill enemies around this area |kill Rattlecage Skeleton##1890, Wretched Ghoul##37881
|tip They look like ghouls and skeletons.
Slay #8# Deathknell Scourge |q 26801/1 |goto 32.42,63.32
step
talk Deathguard Saltain##1740
|tip He walks around this area.
turnin Recruitment##26800 |goto 31.62,65.70
|only if Scourge
step
Enter the building |goto 31.38,66.20 < 7 |walk
talk Shadow Priest Sarvis##1569
|tip Inside the building.
turnin Scourge on our Perimeter##26801 |goto 30.83,66.20
accept Trail-Worn Scroll##24962 |goto 30.83,66.20	|only if Scourge Hunter
accept Simple Scroll##3095 |goto 30.83,66.20		|only if Scourge Warrior
accept Tainted Scroll##3099 |goto 30.83,66.20		|only if Scourge Warlock
accept Glyphic Scroll##3098 |goto 30.83,66.20		|only if Scourge Mage
accept Hallowed Scroll##3097 |goto 30.83,66.20		|only if Scourge Priest
accept Encrypted Scroll##3096 |goto 30.83,66.20		|only if Scourge Rogue
step
talk Novice Elreth##1661
|tip Inside the building.
accept The Truth of the Grave##24961 |goto 30.86,66.05
step
Enter the building |goto Tirisfal Glades 32.22,65.62 < 7 |walk
talk David Trias##2122
|tip Inside the building.
turnin Encrypted Scroll##3096 |goto Tirisfal Glades 32.54,65.65
accept Stab!##24967 |goto Tirisfal Glades 32.54,65.65
|only if Scourge Rogue
step
talk David Trias##2122
|tip Inside the building.
Learn Eviscerate |q 24967/2 |goto 32.54,65.65
|only if Scourge Rogue
step
Practice Eviscerate #3# Times |q 24967/1 |goto 31.65,66.94
|tip Use Sinister Strike on a Training Dummy to build up combo points, then use Eviscerate on it.
|only if Scourge Rogue
step
Enter the building |goto 32.22,65.62 < 7 |walk
talk David Trias##2122
|tip Inside the building.
turnin Stab!##24967 |goto 32.54,65.65
|only if Scourge Rogue
step
talk Dark Cleric Duesten##2123
|tip Inside the building.
turnin Hallowed Scroll##3097 |goto Tirisfal Glades 31.11,66.02
accept Of Light and Shadows##24966 |goto Tirisfal Glades 31.11,66.02
|only if Scourge Priest
step
talk Dark Cleric Duesten##2123
|tip Inside the building.
Learn Flash Heal |q 24966/2 |goto 31.11,66.02
|only if Scourge Priest
step
Practice Flash Heal #5# Times |q 24966/1 |goto 31.20,66.02
|tip Cast Flash Heal on the Wounded Deathguard.
|tip Inside the building.
|only if Scourge Priest
step
talk Dark Cleric Duesten##2123
|tip Inside the building.
turnin Of Light and Shadows##24966 |goto 31.11,66.02
|only if Scourge Priest
step
talk Isabella##2124
|tip Inside the building.
turnin Glyphic Scroll##3098 |goto Tirisfal Glades 30.93,66.06
accept Magic Training##24965 |goto Tirisfal Glades 30.93,66.06
|only if Scourge Mage
step
talk Isabella##2124
|tip Inside the building.
Learn Arcane Missiles |q 24965/2 |goto 30.93,66.06
|only if Scourge Mage
step
Practice Arcane Missiles #2# Times |q 24965/1 |goto 31.65,66.94
|tip Cast Arcane Missiles ability on a Training Dummy.
|only if Scourge Mage
step
Enter the building |goto 31.38,66.20 < 7 |walk
talk Isabella##2124
|tip Inside the building.
turnin Magic Training##24965 |goto 30.93,66.06
|only if Scourge Mage
step
talk Maximillion##2126
|tip Inside the building.
turnin Tainted Scroll##3099 |goto Tirisfal Glades 30.91,66.35
accept Dark Deeds##24968 |goto Tirisfal Glades 30.91,66.35
|only if Scourge Warlock
step
talk Maximillion##2126
|tip Inside the building.
Learn Immolate |q 24968/2 |goto 30.91,66.35
|only if Scourge Warlock
step
Practice Immolate #5# Times |q 24968/1 |goto 31.65,66.94
|tip Cast Immolate ability on a Training Dummy.
|only if Scourge Warlock
step
Enter the building |goto 31.38,66.20 < 7 |walk
talk Maximillion##2126
|tip Inside the building.
turnin Dark Deeds##24968 |goto 30.91,66.35
|only if Scourge Warlock
step
Enter the building |goto Tirisfal Glades 32.22,65.62 < 7 |walk
talk Dannal Stern##2119
|tip Inside the building.
turnin Simple Scroll##3095 |goto Tirisfal Glades 32.66,65.61
accept Charging into Battle##24969 |goto Tirisfal Glades 32.66,65.61
|only if Scourge Warrior
step
talk Dannal Stern##2119
|tip Inside the building.
Learn Charge |q 24969/2 |goto 32.66,65.61
|only if Scourge Warrior
step
Practice Charge |q 24969/1 |goto 31.65,66.94
|tip Use your Charge ability on a Training Dummy.
|only if Scourge Warrior
step
Enter the building |goto 32.22,65.62 < 7 |walk
talk Dannal Stern##2119
|tip Inside the building.
turnin Charging into Battle##24969 |goto 32.66,65.61
|only if Scourge Warrior
step
talk Xavier the Huntsman##38911
turnin Trail-Worn Scroll##24962 |goto Tirisfal Glades 31.45,65.60
accept The Thrill of the Hunt##24964 |goto Tirisfal Glades 31.45,65.60
|only if Scourge Hunter
step
talk Xavier the Huntsman##38911
Learn Steady Shot |q 24964/2 |goto 31.45,65.60
|only if Scourge Hunter
step
Practice Steady Shot #5# Times |q 24964/1 |goto 31.65,66.94
|tip Use your Steady Shot ability on a Training Dummy.
|only if Scourge Hunter
step
talk Xavier the Huntsman##38911
turnin The Thrill of the Hunt##24964 |goto 31.45,65.60
|only if Scourge Hunter
step
Enter the building |goto Tirisfal Glades 32.22,65.62 < 7 |walk |only if not (Rogue or Warrior)
talk Lilian Voss##38910
|tip Inside the building.
|tip She can also be upstairs.
Tell her _"You're not hideous, Lillian... you're one of us.  Here, look in this mirror, see for yourself."_
Watch the dialogue
Show Lilian Her Reflection |q 24961/1 |goto Tirisfal Glades 32.70,65.75
step
Enter the building |goto 31.38,66.20 < 7 |walk
talk Novice Elreth##1661
|tip Inside the building.
turnin The Truth of the Grave##24961 |goto 30.86,66.05
accept The Executor In the Field##28672 |goto 30.86,66.05
step
talk Executor Arren##1570
turnin The Executor In the Field##28672 |goto 32.97,61.12
accept The Damned##26802 |goto 32.97,61.12
stickystart "Collect_Duskbat_Wings"
step
Kill Scavenger enemies around this area |kill Young Scavenger##1508, Ragged Scavenger##1509
|tip They look like wolves.
collect 4 Scavenger Paw##3265 |q 26802/1 |goto 31.86,59.03
step
label "Collect_Duskbat_Wings"
Kill Duskbat enemies around this area |kill Duskbat##1512
|tip They look like bats.
collect 4 Duskbat Wing##3264 |q 26802/2 |goto 31.86,59.03
step
talk Executor Arren##1570
turnin The Damned##26802 |goto 32.97,61.12
accept Night Web's Hollow##24973 |goto 32.97,61.12
stickystart "Kill_Young_Night_Web_Spiders"
step
kill 5 Night Web Spider##1505 |q 24973/2 |goto 26.81,59.42
|tip They look like black and red spider.
|tip Inside the mine.
step
label "Kill_Young_Night_Web_Spiders"
kill 8 Young Night Web Spider##1504 |q 24973/1 |goto 28.45,58.06
|tip They look like brown spiders.
|tip Outside the mine.
step
talk Executor Arren##1570
turnin Night Web's Hollow##24973 |goto 32.97,61.12
accept No Better Than the Zombies##24970 |goto 32.97,61.12
step
talk Darnell##49425
turnin No Better Than the Zombies##24970 |goto 35.76,62.23
accept Assault on the Rotbrain Encampment##24971 |goto 35.76,62.23
stickystart "Slay_Rotbrain_Undead"
step
kill Marshal Redpath##49424 |q 24971/1 |goto 36.49,68.84
step
label "Slay_Rotbrain_Undead"
Kill Rotbrain enemies around this area |kill Rotbrain Magus##49423, Rotbrain Berserker##49422
|tip They look like Scourge.
Slay #8# Rotbrain Undead |q 24971/2 |goto 37.14,68.39
step
Enter the building |goto 31.38,66.20 < 7 |walk
talk Shadow Priest Sarvis##1569
|tip Inside the building.
turnin Assault on the Rotbrain Encampment##24971 |goto 30.83,66.20
accept Vital Intelligence##24972 |goto 30.83,66.20
step
Follow the road and enter the building |goto 44.53,53.40 < 7 |walk
talk Deathguard Simmer##1519
|tip Inside the building.
turnin Vital Intelligence##24972 |goto 44.75,53.68
accept Reaping the Reapers##24978 |goto 44.75,53.68
step
talk Apothecary Johaan##1518
|tip Inside the building.
accept Fields of Grief##24975 |goto 44.6,53.8
step
talk Sedrick Calston##38925
|tip Upstairs inside the building.
accept Ever So Lonely##24974 |goto 44.75,53.65
stickystart "Slay_Tirisfal_Farmers"
step
click Tirisfal Pumpkin##375+
|tip They look like large orange pumpkins on the ground around this area.
collect 10 Tirisfal Pumpkin##2846 |q 24975/1 |goto 36.50,50.80
step
label "Slay_Tirisfal_Farmers"
Kill Tirisfal enemies around this area
|tip They look like humans.
Slay #10# Tirisfal Farmers |q 24978/1 |goto 37.60,51.01
step
use the Murloc Leash##52059
|tip Fight a Vile Fin murloc.
|tip Don't kill it, just weaken it.
|tip Use it on the Vile Fin murloc when it is weak.
|tip You will see a message in your chat box letting you know when it is ready to be captured.
Capture a Vile Fin |q 24974/1 |goto 36.2,44.2
step
Enter the building |goto 44.53,53.40 < 7 |walk
talk Deathguard Simmer##1519
|tip Inside the building.
turnin Reaping the Reapers##24978 |goto 44.75,53.67
accept The Scarlet Palisade##24980 |goto 44.75,53.67
step
talk Apothecary Johaan##1518
|tip Inside the building.
turnin Fields of Grief##24975 |goto 44.6,53.8
accept Variety is the Spice of Death##24976 |goto 44.6,53.8
step
Return the Vile Fine |q 24974/2 |goto 44.75,53.65
|tip Upstairs inside the building.
step
talk Sedrick Calston##38925
|tip Upstairs inside the building.
turnin Ever So Lonely##24974 |goto 44.75,53.65
step
click Marrowpetal Stalk##202422+
|tip They look like plants with red flowers.
|tip Underwater around this area.
collect 4 Marrowpetal##52067 |q 24976/1 |goto 48.90,53.73
step
click Xavren's Thorn##202421+
|tip They look like small yellow plants on the hills around this area.
collect 4 Xavren's Thorn##52066 |q 24976/2 |goto 39.66,36.89
step
clicknpc Briny Sea Cucumber##38933+
|tip They look like small pink and yellow grubs underwater around this area.
collect 8 Briny Sea Creature##52068 |q 24976/3 |goto 35.38,39.72
stickystart "Kill_Scarlet_Warriors"
step
kill Scarlet Warrior##1535+
collect A Scarlet Letter##52079 |n
use A Scarlet Letter##52079
accept A Scarlet Letter##24979 |goto 33.00,48.24
step
Enter the tower |goto 31.99,46.56 < 7 |walk
talk Lilian Voss##38999
|tip At the top of the tower.
Tell her _"I'm here to rescue you."_
Watch the dialogue
Find the Scarlet Prisoner |q 24979/1 |goto 31.67,46.33
step
label "Kill_Scarlet_Warriors"
kill 10 Scarlet Warrior##1535 |q 24980/1 |goto 33.00,48.24
step
Enter the building |goto 44.53,53.40 < 7 |walk
talk Deathguard Simmer##1519
|tip Inside the building.
turnin A Scarlet Letter##24979 |goto 44.75,53.68
turnin The Scarlet Palisade##24980 |goto 44.75,53.68
step
talk Apothecary Johaan##1518
|tip Inside the building.
turnin Variety is the Spice of Death##24976 |goto 44.62,53.79
accept Johaan's Experiment##24977 |goto 44.62,53.79
step
talk Captured Scarlet Zealot##1931
turnin Johaan's Experiment##24977 |goto 44.70,52.62
step
talk Gordo##10666
|tip He looks like an abomination that walks around this area.
accept Gordo's Task##25038 |goto 44.16,53.84
step
click Gloom Weed##175566+
|tip They look like wilted green and purple plants underwater around this area.
collect 3 Gloom Weed##12737 |q 25038/1 |goto 49.37,54.75
step
talk Deathguard Dillinger##1496
accept A Putrid Task##25090 |goto 52.55,54.81
accept The New Forsaken##24982 |goto 52.55,54.81
step
Kill enemies around this area
|tip They look like zombies.
collect 7 Putrid Claw##2855 |q 25090/1 |goto 52.83,52.88
step
talk Deathguard Dillinger##1496
turnin A Putrid Task##25090 |goto 52.54,54.82
step
talk Anette Williams##43124
fpath Brill |goto 58.84,51.94
step
talk Deathguard Morris##1745
accept Supplying Brill##6321 |goto Tirisfal Glades 60.13,52.40
|only if Scourge
step
talk Anette Williams##43124
turnin Supplying Brill##6321 |goto 58.84,51.94
accept Ride to the Undercity##6323 |goto 58.84,51.94
|only if Scourge
step
talk Gordon Wendham##4556
turnin Ride to the Undercity##6323 |goto Undercity 61.47,41.81
accept Michael Garrett##6322 |goto Undercity 61.47,41.81
|only if Scourge
step
talk Michael Garrett##4551
turnin Michael Garrett##6322 |goto 63.26,48.57
accept Return to Morris##6324 |goto 63.26,48.57
|only if Scourge
step
talk Deathguard Morris##1745
turnin Return to Morris##6324 |goto Tirisfal Glades 60.13,52.40
|only if Scourge
step
talk Junior Apothecary Holland##10665
|tip He walks around inside the building, on both floors.
turnin Gordo's Task##25038 |goto Tirisfal Glades 60.07,52.81
accept Darkhound Pounding##24990 |goto Tirisfal Glades 60.07,52.81
step
talk Executor Zygand##1515
accept A Thorn in our Side##24981 |goto 60.54,51.86
step
talk Innkeeper Renee##5688
|tip Inside the building.
home Brill |goto 60.87,51.50 |q 24981
step
talk Magistrate Sevren##1499
|tip He walks around upstairs inside the building.
turnin The New Forsaken##24982 |goto 60.99,50.57
accept Forsaken Duties##24983 |goto 60.99,50.57
step
kill Cursed Darkhound##1548+
|tip They look like blue dogs. |notinsticky
collect 5 Darkhound Blood##2858 |q 24990/1 |goto 58.12,60.74
stickystart "Slay_Scarlet_Zealots"
stickystart "Slay_Scarlet_Missionaries"
step
Kill enemies around this area
|tip They look like humans.
collect Urgent Scarlet Memorandum##52077 |q 24981/3 |goto 51.47,67.69
step
label "Slay_Scarlet_Zealots"
kill 3 Scarlet Zealot##1537 |q 24981/1 |goto 51.47,67.69
|tip They look like humans. |notinsticky
step
label "Slay_Scarlet_Missionaries"
kill 3 Scarlet Missionary##1536 |q 24981/2 |goto 51.47,67.69
|tip They look like humans. |notinsticky
step
talk Executor Zygand##1515
turnin A Thorn in our Side##24981 |goto 60.54,51.87
step
talk Junior Apothecary Holland##10665
|tip He walks around inside the building, on both floors.
turnin Darkhound Pounding##24990 |goto 60.07,52.81
accept Holland's Experiment##24996 |goto 60.07,52.81
step
talk Captured Mountaineer##2211
|tip Upstairs inside the building.
turnin Holland's Experiment##24996 |goto 60.04,52.87
step
talk Junior Apothecary Holland##10665
|tip He walks around inside the building, on both floors.
accept Garren's Haunt##24991 |goto 60.07,52.81
step
talk Deathguard Linnea##1495
turnin Forsaken Duties##24983 |goto 65.49,60.26
step
talk Gretchen Dedmar##1521
accept The Chill of Death##24988 |goto 65.25,60.42
step
Kill Duskbat enemies around this area
|tip They look like bats.
collect 5 Duskbat Pelt##2876 |q 24988/1 |goto 65.64,57.02
step
talk Gretchen Dedmar##1521
turnin The Chill of Death##24988 |goto 65.25,60.42
step
talk Deathguard Linnea##1495
accept Return to the Magistrate##24989 |goto 65.49,60.26
step
Enter the building |goto 60.81,51.90 < 7 |walk
talk Magistrate Sevren##1499
|tip He walks around upstairs inside the building.
turnin Return to the Magistrate##24989 |goto 60.99,50.57
step
talk Apothecary Jerrod##38977
turnin Garren's Haunt##24991 |goto 61.65,34.55
accept Doom Weed##24994 |goto 61.65,34.55
step
talk Apprentice Crispin##38978
accept Graverobbers##24997 |goto 61.61,34.39
stickystart "Collect_Doom_Weed"
stickystart "Slay_Rot_Hide_Mongrels"
stickystart "Collect_Embalming_Ichor"
step
kill 8 Rot Hide Graverobber##1941 |q 24997/1 |goto 55.18,42.38
step
label "Collect_Doom_Weed"
click Doom Weed##176753+
|tip They look like small green and purple plants on the ground around this area.
collect 10 Doom Weed##13702 |q 24994/1 |goto 56.83,39.52
step
label "Slay_Rot_Hide_Mongrels"
kill 5 Rot Hide Mongrel##1675 |q 24997/2 |goto 57.64,34.87
step
label "Collect_Embalming_Ichor"
Kill Rot Hide enemies around this area
|tip They look like gnolls.
collect 6 Embalming Ichor##2834 |q 24997/3 |goto 57.36,39.34
step
talk Apothecary Jerrod##38977
turnin Doom Weed##24994 |goto 61.65,34.55
accept Off the Scales##24995 |goto 61.65,34.55
step
talk Apprentice Crispin##38978
turnin Graverobbers##24997 |goto 61.61,34.39
accept Maggot Eye##24998 |goto 61.61,34.39
accept Planting the Seed of Fear##24999 |goto 61.61,34.39
step
kill Maggot Eye##1753
|tip Inside the building.
collect Maggot Eye's Paw##3635 |q 24998/1 |goto 58.66,30.74
stickystart "Collect_Vile_Fin_Scales"
step
Frighten #12# Vile Fin Tadpoles |q 24999/1 |goto 59.76,27.74
|tip Run next to Vile Fin Tadpoles.
|tip They look like tiny murlocs.
|tip Keep chasing them when they run away.
You can find more around [65.01,28.62]
step
label "Collect_Vile_Fin_Scales"
Kill Vile Fin enemies around this area
|tip They look like murlocs.
collect 5 Vile Fin Scale##2859 |q 24995/1 |goto 61.20,27.42
step
talk Apprentice Crispin##38978
turnin Maggot Eye##24998 |goto 61.61,34.39
turnin Planting the Seed of Fear##24999 |goto 61.61,34.39
step
talk Apothecary Jerrod##38977
turnin Off the Scales##24995 |goto 61.65,34.56
accept Head for the Mills##25031 |goto 61.65,34.56
step
talk Coleman Farthing##1500
|tip Follow the road.
turnin Head for the Mills##25031 |goto 54.59,29.90
accept The Family Crypt##25003 |goto 54.59,29.90
stickystart "Kill_Rotting_Ancestors"
step
kill 8 Wailing Ancestor##1534 |q 25003/1 |goto 52.08,29.69
|tip They look like ghosts.
step
label "Kill_Rotting_Ancestors"
kill 8 Rotting Ancestor##1530 |q 25003/2 |goto 52.08,29.69
|tip They look like zombies.
step
talk Coleman Farthing##1500
turnin The Family Crypt##25003 |goto 54.59,29.90
accept The Mills Overrun##25004 |goto 54.59,29.90
accept Deaths in the Family##25029 |goto 54.59,29.90
stickystart "Collect_Notched_Ribs"
stickystart "Collect_Blackened_Skulls"
step
kill Thurman Agamand##1656
|tip He walks around this area.
collect Thurman's Remains##2830 |q 25029/3 |goto 46.04,30.22
step
kill Gregor Agamand##1654
|tip He walks around this area.
collect Gregor's Remains##2829 |q 25029/2 |goto 45.63,29.58
step
kill Devlin Agamand##1657
collect Devlin's Remains##2831 |q 25029/4 |goto 48.95,33.92
step
kill Nissa Agamand##1655
|tip Inside the building.
|tip She can also be upstairs.
collect Nissa's Remains##2828 |q 25029/1 |goto 49.67,36.15
step
label "Collect_Notched_Ribs"
kill Cracked Skull Soldier##1523+
|tip They look like skeletons wearing armor.
collect 5 Notched Rib##3162 |q 25004/1 |goto 46.62,31.46
step
label "Collect_Blackened_Skulls"
kill Darkeye Bonecaster##1522+
|tip They look like skeletons holding staves.
collect 3 Blackened Skull##3163 |q 25004/2 |goto 46.62,31.46
step
talk Coleman Farthing##1500
turnin The Mills Overrun##25004 |goto 54.59,29.90
turnin Deaths in the Family##25029 |goto 54.59,29.90
accept Speak with Sevren##25005 |goto 54.59,29.90
step
talk Magistrate Sevren##1499
|tip He walks around upstairs inside the building.
turnin Speak with Sevren##25005 |goto 60.99,50.57
accept The Grasp Weakens##25006 |goto 60.99,50.57
step
talk Shadow Priestess Malia##39117 |goto 62.03,52.95
|tip Inside the building.
Tell her _"I am ready."_
Watch the dialogue
|tip Follow her as she walks upstairs.
kill Spirit of Devlin Agamand##38980
Complete the Procedure |q 25006/1 |goto 62.03,53.25
step
Enter the building |goto 60.82,51.86 < 7 |walk
talk Magistrate Sevren##1499
|tip He walks around upstairs inside the building.
turnin The Grasp Weakens##25006 |goto 60.99,50.57
accept East... Always to the East##25007 |goto 60.99,50.57
step
talk High Executor Derrington##10837
turnin East... Always to the East##25007 |goto 83.26,68.99
accept At War With The Scarlet Crusade##25009 |goto 83.26,68.99
step
talk Apothecary Dithers##11057
accept Grisly Grizzlies##25056 |goto 83.28,69.23
step
talk Timothy Cunningham##37915
fpath The Bulwark |goto 83.57,69.94
step
kill Plagued Bruin##39049+
|tip They look like bears.
collect 5 Plagued Bruin Hide##52270 |q 25056/1 |goto 77.73,66.45
stickystart "Slay_Scarlet_Friars"
step
kill 3 Scarlet Zealot##1537 |q 25009/1 |goto 79.81,56.11
step
label "Slay_Scarlet_Friars"
kill 4 Scarlet Friar##1538 |q 25009/2 |goto 79.81,56.11
step
talk Apothecary Dithers##11057
turnin Grisly Grizzlies##25056 |goto 83.28,69.23
accept A Little Oomph##25013 |goto 83.28,69.23
step
talk High Executor Derrington##10837
turnin At War With The Scarlet Crusade##25009 |goto 83.26,68.99
accept A Deadly New Ally##25010 |goto 83.26,68.99
step
talk Provisioner Elda##46271
home The Bulwark |goto 83.08,72.00 |q 25046
step
kill Vicious Night Web Spider##1555+
|tip Run around the mountain.
collect 4 Vicious Night Web Spider Venom##2872 |q 25013/1 |goto 85.74,52.56
step
talk Lieutenant Sanders##13158
|tip He's hanging upside down from a chain.
turnin A Deadly New Ally##25010 |goto 87.50,43.30
accept A Daughter's Embrace##25046 |goto 87.50,43.30
step
Follow the road |goto 78.82,38.17 < 30 |only if walking
Watch the dialogue
|tip Inside of the tower.
|tip Note: Kill every human enemy you see while traveling here.
|tip Try to tag the enemies before she attacks them.
|tip Lilian Voss will kill them quickly and you will still get full experience.
Accomplish Lillian's Mission |q 25046/1 |goto 79.49,25.35
step
talk High Executor Derrington##10837
turnin A Daughter's Embrace##25046 |goto 83.26,68.99
accept To Bigger and Better Things##25011 |goto 83.26,68.99
step
talk Apothecary Dithers##11057
turnin A Little Oomph##25013 |goto 83.28,69.23
step
talk Timothy Cunningham##37915
turnin To Bigger and Better Things##25011 |goto 83.57,69.94
accept Take to the Skies##25012 |goto 83.57,69.94
step
talk Timothy Cunningham##37915
Tell him _"I'll take that flight to Brill now."_
Take a Flight to Brill |invehicle |goto 83.57,69.94 |q 25012
step
Fly to Brill |outvehicle |goto 58.89,51.94 |q 25012 |notravel
step
talk Executor Zygand##1515
turnin Take to the Skies##25012 |goto 60.53,51.87
accept Warchief's Command: Silverpine Forest!##26964 |goto 60.53,51.87
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Eastern Kingdoms (1-60)\\Silverpine Forest (11-20)",{
author="support@zygorguides.com",
next="Leveling Guides\\Eastern Kingdoms (1-60)\\Hillsbrad Foothills (20-26)",
dynamic=true,
},[[
step
talk Grand Executor Mortuus##44615
turnin Warchief's Command: Silverpine Forest!##26964 |goto Silverpine Forest 57.4,10.1 |only if haveq(26964) or completedq(26964)
accept The Warchief Cometh##26965 |goto Silverpine Forest57.41,10.14
step
talk Bat Handler Maggotbreath##44825
fpath Forsaken High Command |goto 57.90,8.70
step
Watch the dialogue
Stand by for Warchief Garrosh Hellscream's Arrival |q 26965/1 |goto 57.75,10.33
step
talk Grand Executor Mortuus##44615
turnin The Warchief Cometh##26965 |goto 57.41,10.14
accept The Gilneas Liberation Front##26989 |goto 57.41,10.14
step
talk High Apothecary Shana T'veen##44784
accept Guts and Gore##26995 |goto 56.26,8.40
step
talk Apothecary Witherbloom##44778
accept Agony Abounds##26992 |goto 56.76,9.19
stickystart "Collect_Clean_Beast_Guts"
stickystart "Kill_Worgen_Renegades"
step
click Ferocious Doomweed##205099+
|tip They look like purple and blue spikey plants on the ground around this area.
collect 8 Ferocious Doomweed##60741 |q 26992/1 |goto 58.00,15.50
You can find more around [60.68,8.79]
step
label "Collect_Clean_Beast_Guts"
Kill enemies around this area |kill Ferocious Grizzled Bear##1778, Worg##1765
|tip Only Ferocious Grizzled Bears and Worgs will drop this quest item.
collect 6 "Clean" Beast Guts##60742 |q 26995/1 |goto 58.00,15.50
You can find more around [60.68,8.79]
step
label "Kill_Worgen_Renegades"
kill 10 Worgen Renegade##44793 |q 26989/1 |goto 56.69,13.51
step
talk Grand Executor Mortuus##44615
turnin The Gilneas Liberation Front##26989 |goto 57.41,10.12
step
talk Apothecary Witherbloom##44778
turnin Agony Abounds##26992 |goto 56.77,9.19
step
talk High Apothecary Shana T'veen##44784
turnin Guts and Gore##26995 |goto 56.27,8.41
accept Iterating Upon Success##26998 |goto 56.27,8.41
step
talk Bat Handler Maggotbreath##44825
Tell him _"I need to take a bat to the Dawning Isles."_
Requisition a Bat from Bat Handler Maggotbreath |q 26998/1 |goto 57.91,8.70
step
Kill Vile Fin enemies around this area
|tip Use the "Blight Concoction" ability on your action bar.
|tip They are on the ground as you fly.
Slay #50# Vile Fin Murlocs |q 26998/2 |goto 76.85,19.66
step
Return to Forsaken High Command |outvehicle |goto 57.90,8.95 |q 26998 |notravel
step
talk High Apothecary Shana T'veen##44784
turnin Iterating Upon Success##26998 |goto 56.27,8.41
step
talk Deathstalker Commander Belmont##44789
accept Dangerous Intentions##27039 |goto 58.08,8.98
step
click Abandoned Outhouse##205143
turnin Dangerous Intentions##27039 |goto 53.89,12.96
accept Waiting to Exsanguinate##27045 |goto 53.89,12.96
step
clicknpc Armoire##44894
|tip Upstairs inside the building.
Watch the dialogue
|tip Don't cancel the cinematic, or the quest goal won't complete.
Learn of Darius Crowley's Plans |q 27045/1 |goto 53.30,12.56
step
talk Deathstalker Commander Belmont##44789
turnin Waiting to Exsanguinate##27045 |goto 58.08,8.99
accept Belmont's Report##27056 |goto 58.08,8.99
step
talk Lady Sylvanas Windrunner##44365
turnin Belmont's Report##27056 |goto 57.37,10.19
accept The Warchief's Fleet##27065 |goto 57.37,10.19
step
talk Franny Mertz##50463
fpath Forsaken Rear Guard |goto 45.93,21.87
step
talk Admiral Hatchet##44916
turnin The Warchief's Fleet##27065 |goto 44.01,21.35
accept Steel Thunder##27069 |goto 44.01,21.35
step
talk Warlord Torok##44917
accept Give 'em Hell!##27073 |goto 44.00,21.28
step
talk Apothecary Wormcrud##44912
accept Playing Dirty##27082 |goto 44.80,20.91
step
talk Commander Hickley##45496
|tip Inside the building.
home Forsaken Rear Guard |goto 44.35,20.33
step
Kill enemies around this area |kill Giant Rabid Bear##1797, Rabid Worg##1766
collect 8 Diseased Organ##60793 |q 27082/1 |goto 42.40,20.21
step
talk Admiral Hatchet##44916
Tell her _"I seem to have misplaced my sea pup, admiral. Do you have another that you could lend me?"_
Gain an Orc Sea Pup Follower |havebuff Orc Sea Pup##83839 |goto 44.01,21.35 |q 27069
stickystart "Slay_Bloodfang_Scavengers"
step
click Sea Dog Crate##44915+
|tip They look like small wooden boxes with the Horde symbol on them.
Recover #5# Sea Dog Crates |q 27069/1 |goto 38.69,27.82
step
label "Slay_Bloodfang_Scavengers"
kill 10 Bloodfang Scavenger##44549 |q 27073/1 |goto 38.69,27.82
step
talk Warlord Torok##44917
turnin Give 'em Hell!##27073 |goto 44.00,21.29
step
talk Admiral Hatchet##44916
turnin Steel Thunder##27069 |goto 44.02,21.35
accept Lost in the Darkness##27093 |goto 44.02,21.35
step
talk Warlord Torok##44917
accept Skitterweb Menace##27095 |goto 44.00,21.28
step
talk Apothecary Wormcrud##44912
turnin Playing Dirty##27082 |goto 44.80,20.91
accept It's Only Poisonous if You Ingest It##27088 |goto 44.80,20.91
step
use the Mutant Bush Chicken Cage##60808
|tip Use it on a Forest Ettin.
|tip They look like large brutes that walk around this area.
kill Forest Ettin##44367 |q 27088/1 |goto 41.95,29.92
stickystart "Rescue_Orc_Sea_Dogs"
step
Kill Skitterweb enemies around this area |kill Skitterweb Striker##1780, Skitterweb Lurker##1781
|tip They look like spiders.
|tip Inside and outside the mine.
|tip If you go inside the mine, avoid killing the Skitterweb Matriarch in the back of the mine.
|tip You will be killing her in the next quest soon.
Slay #12# Skitterweb Spiders |q 27095/1 |goto 35.65,13.58
step
_Click the Complete Quest Box:_
turnin Skitterweb Menace##27095
accept Deeper into Darkness##27094
step
Enter the mine |goto 35.65,13.58 < 15 |walk |only if not (subzone("The Skittering Dark") and indoors())
kill Skitterweb Matriarch##44906 |q 27094/1 |goto 36.02,8.82
|tip It looks like a huge spider hanging from the ceiling.
|tip Inside the mine.
step
label "Rescue_Orc_Sea_Dogs"
kill Webbed Victim##44941+
|tip They look like squirming white cocoons on the ground around this area.
|tip Inside the mine.
Rescue #6# Orc Sea Dogs |q 27093/1 |goto 35.65,13.58
step
use the Hearthstone##6948
Hearth to Forsaken Rear Guard |goto 44.35,20.33 < 30 |noway |c |q 27093
|only if subzone("The Skittering Dark")
step
talk Apothecary Wormcrud##44912
turnin It's Only Poisonous if You Ingest It##27088 |goto 44.80,20.91
step
talk Warlord Torok##44917
turnin Deeper into Darkness##27094 |goto 44.00,21.29 |autoscript function goal:IsComplete() return completedq(self.questid),true end
step
talk Admiral Hatchet##44916
turnin Lost in the Darkness##27093 |goto 44.02,21.35
accept Orcs are in Order##27096 |goto 44.02,21.35
step
talk Lady Sylvanas Windrunner##44365
turnin Orcs are in Order##27096 |goto 57.36,10.20
accept Rise, Forsaken##27097 |goto 57.36,10.20
step
kill Hillsbrad Refugee##44954+*
Raise #15# Forsaken |q 27097/1 |goto 65.59,25.79
step
_Click the Complete Quest Box:_
turnin Rise, Forsaken##27097
accept No Escape##27099
step
Watch the dialogue
|tip Upstairs inside the fort.
|tip Don't cancel the cinematic, or the quest goal won't complete.
Find the Human Leaders |q 27099/1 |goto 65.74,24.46
step
Begin Traveling to Forsaken High Command |invehicle |goto 65.74,24.46 |q 27099
step
Escape to Forsaken High Command |outvehicle |goto 57.54,10.65 |q 27099 |notravel
step
talk Lady Sylvanas Windrunner##44365
turnin No Escape##27099 |goto 57.37,10.19
accept Lordaeron##27098 |goto 57.37,10.19
step
Watch the dialogue
Ride with Lady Sylvanas Windrunner to the Sepulcher |q 27098/1 |goto 44.94,41.74 |notravel
step
talk Lady Sylvanas Windrunner##44365
turnin Lordaeron##27098 |goto 44.90,41.65
accept Honor the Dead##27180 |goto 44.90,41.65
step
talk Karos Razok##2226
fpath The Sepulcher |goto 45.40,42.49
step
talk Warlord Torok##44917
accept Hair of the Dog##27226 |goto 45.75,41.91
step
talk Admiral Hatchet##44916
accept Reinforcements from Fenris##27231 |goto 45.81,41.95
step
talk Innkeeper Bates##6739
|tip Inside the building.
home The Sepulcher |goto 46.41,42.69 |q 27746 |future
stickystart "Kill_Hillsbrad_Worgen"
step
use the Barrel of Explosive Ale##60870
|tip Use it on Orc Sea Dogs.
|tip They look like orc pirates laying on the ground around this area.
Rouse #8# Orc Sea Dogs |q 27226/1 |goto 54.40,34.23
step
label "Kill_Hillsbrad_Worgen"
kill 10 Hillsbrad Worgen##45254 |q 27231/1 |goto 54.40,34.23
step
click Horde Communication Panel##205350
|tip On the dock.
turnin Reinforcements from Fenris##27231 |goto 59.18,34.20
accept The Waters Run Red...##27232 |goto 59.18,34.20
step
clicknpc Horde Cannon##45263
Enter the Turret |invehicle |goto 59.79,33.78 |q 27232
step
kill Hillsbrad Worgen##45270+
|tip They swim across the water from the east.
|tip Use the ability on your action bar.
Slay #50# Hillsbrad Worgen |q 27232/1 |goto 63.35,33.59
step
talk Warlord Torok##44917
turnin Hair of the Dog##27226 |goto 45.75,41.92
step
talk Admiral Hatchet##44916
turnin The Waters Run Red...##27232 |goto 45.81,41.95
stickystart "Collect_Forsaken_Insignias"
step
kill Bloodfang Stalker##45195+
accept Excising the Taint##27181 |goto 47.14,50.75
|tip You will eventually automatically accept this quest.
step
kill 10 Bloodfang Stalker##45195 |q 27181/1 |goto 47.14,50.75
step
_Click the Complete Quest Box:_
turnin Excising the Taint##27181
accept Seek and Destroy##27193
step
kill Caretaker Smithers##45219
|tip He will jump down and attack you when you walk into the main room inside the building.
collect Smithers' Logbook##60867 |q 27193/1 |goto 45.87,54.38
step
_Click the Complete Quest Box:_
turnin Seek and Destroy##27193
accept Cornered and Crushed!##27194
step
label "Collect_Forsaken_Insignias"
clicknpc Veteran Forsaken Trooper##45197+
|tip They look like undead corpses laying on the ground around this area.
collect 6 Forsaken Insignia##60862 |q 27180/1 |goto 47.14,50.75
step
talk Master Forteski##45228
turnin Cornered and Crushed!##27194 |goto 55.89,46.35
accept Nowhere to Run##27195 |goto 55.89,46.35
step
Watch the dialogue
|tip Follow Master Forteski and protect him as he walks.
|tip He eventually walks to this location inside the mine.
Escort Master Forteski Through the Deep Elem Mine |q 27195/1 |goto 58.14,44.93
step
Leave the mine |goto 56.55,46.01 < 15 |walk |only if subzone("Deep Elem Mine") and indoors()
talk Lady Sylvanas Windrunner##44365
turnin Honor the Dead##27180 |goto 44.90,41.65
turnin Nowhere to Run##27195 |goto 44.90,41.65
accept To Forsaken Forward Command##27290 |goto 44.90,41.65
step
Begin Flying to Forsaken Forward Command |invehicle |goto 44.90,41.65 |q 27290
step
Fly to Forsaken Forward Command |outvehicle |goto Ruins of Gilneas/0 57.33,18.68 |q 27290 |notravel
step
talk Deathstalker Commander Belmont##45312
|tip He walks around this area.
turnin To Forsaken Forward Command##27290 |goto 57.47,18.89
accept In Time, All Will Be Revealed##27342 |goto 57.47,18.89
step
talk Forward Commander Onslaught##45315
accept Losing Ground##27333 |goto 57.55,18.24
accept The F.C.D.##27345 |goto 57.55,18.24
step
talk Bat Handler Doomair##45479
fpath Forsaken Forward Command |goto 57.28,17.74
stickystart "Kill_Worgen_Rebels"
step
click Forsaken Communication Device##205363
|tip Avoid the elite giant that walks around this area.
collect Forsaken Communication Device##60953 |q 27345/1 |goto 45.76,21.96
step
label "Kill_Worgen_Rebels"
kill 12 Worgen Rebel##45292 |q 27333/1 |goto 54.15,20.90
step
talk Forward Commander Onslaught##45315
turnin Losing Ground##27333 |goto 57.55,18.24
turnin The F.C.D.##27345 |goto 57.55,18.24
step
click Wolfsbane##205367+
|tip They look like small green plants with purple berries at the base of trees around this area.
collect 6 Wolfsbane##60958 |q 27342/1 |goto 63.77,26.53
step
talk Deathstalker Commander Belmont##45312
|tip He walks around this area.
turnin In Time, All Will Be Revealed##27342 |goto 57.47,18.89
step
talk Forward Commander Onslaught##45315
accept Break in Communications: Dreadwatch Outpost##27349 |goto 57.55,18.24
step
Investigate Dreadwatch Outpost |q 27349/1 |goto 52.0,32.1
step
_Click the Complete Quest Box:_
turnin Break in Communications: Dreadwatch Outpost##27349
accept Break in Communications: Rutsak's Guard##27350
step
talk Captain Rutsak##45389
|tip Inside the building.
turnin Break in Communications: Rutsak's Guard##27350 |goto 65.64,34.11
accept Vengeance for Our Soldiers##27360 |goto 65.64,34.11
accept On Whose Orders?##27364 |goto 65.64,34.11
stickystart "Slay_7th_Legion_Submariners"
step
kill Master Sergeant Pietro Zaren##45405
collect Orders from High Command##60977 |q 27364/1 |goto 58.87,47.45
step
_Click the Complete Quest Box:_
turnin On Whose Orders?##27364
accept What Tomorrow Brings##27401
step
click 7th Legion Telescope##9146
Watch the dialogue
|tip Don't cancel the cinematic, the quest goal won't complete.
Use the 7th Legion Telescope to Scout the Harbor |q 27401/1 |goto 54.91,44.28
step
_Click the Complete Quest Box:_
turnin What Tomorrow Brings##27401
accept Fall Back!##27405
step
label "Slay_7th_Legion_Submariners"
kill 10 7th Legion Submariner##45403 |q 27360/1 |goto 57.57,45.93
step
talk Captain Rutsak##45389
|tip Inside the building.
turnin Vengeance for Our Soldiers##27360 |goto 65.64,34.11
step
talk Deathstalker Commander Belmont##45312
turnin Fall Back!##27405 |goto 72.95,30.11
accept A Man Named Godfrey##27406 |goto 72.95,30.11
step
accept Resistance is Futile##27423 |goto 73.84,33.50
|tip You will accept this quest automatically.
step
Kill enemies around this area |kill Bloodfang Scout##45458
Slay #20# Worgen Combatants |q 27423/1 |goto 74.79,46.09
step
_Next to you:_
talk Deathstalker Commander Belmont##45474
turnin Resistance is Futile##27423 |autoscript function goal:IsComplete() return completedq(self.questid),true end
step
clicknpc Lord Godfrey##44369
Find Lord Vincent Godfrey's Corpse |q 27406/1 |goto 79.72,75.68
step
_Next to you:_
talk Deathstalker Commander Belmont##45474
|tip If mounted dismount for him to appear.
turnin A Man Named Godfrey##27406
step
talk Deathstalker Commander Belmont##45312
accept The Great Escape##27438 |goto 79.75,75.75
step
Watch the dialogue
Fly with the Valkyrie |invehicle |goto 79.70,75.67 |q 27438
step
Watch the dialogue
Escape the Ruins of Gilneas |q 27438/1 |goto Silverpine Forest 51.82,66.60 |notravel
step
talk Lady Sylvanas Windrunner##45525
turnin The Great Escape##27438 |goto 51.78,66.07
accept Rise, Godfrey##27472 |goto 51.78,66.07
step
Watch the dialogue
|tip Follow Lady Sylvanas Windrunner as she walks.
|tip She eventually walks to this location.
Witness Lord Godfrey Be Reborn |q 27472/1 |goto 51.90,65.01
step
talk Lady Sylvanas Windrunner##45617
turnin Rise, Godfrey##27472 |goto 51.90,65.01
accept Breaking the Barrier##27474 |goto 51.90,65.01
step
talk Daschla##45626
accept Unyielding Servitors##27475 |goto 51.90,64.70
step
talk Steven Stutzka##46552
fpath The Forsaken Front |goto 50.87,63.62
stickystart "Collect_Servitor_Cores"
step
click Ambermill Codex##205534
|tip Inside the building.
collect Ambermill Codex##61306 |q 27474/1 |goto 63.48,64.25
step
label "Collect_Servitor_Cores"
kill Elemental Servitor##45711+
collect 6 Servitor Core##61307 |q 27475/1 |goto 59.78,64.30
step
talk Daschla##45626
turnin Unyielding Servitors##27475 |goto 51.90,64.70
step
talk Lady Sylvanas Windrunner##45617
turnin Breaking the Barrier##27474 |goto 51.90,65.01
accept Dalar Dawnweaver##27476 |goto 51.90,65.01
step
talk Dalar Dawnweaver##1938
|tip Downstairs inside the building.
turnin Dalar Dawnweaver##27476 |goto 47.08,43.22
accept Relios the Relic Keeper##27478 |goto 47.08,43.22
accept Practical Vengeance##27483 |goto 47.08,43.22
step
clicknpc Portal to Dalaran Crater##45731 |goto 47.25,43.37
|tip Downstairs inside the building.
Teleport to Dalaran Crater |goto Hillsbrad Foothills 30.27,36.64 < 30 |c |noway |q 27483
step
kill Arcane Remnant##45728+
collect Arcane Remnant##61310 |n
use the Arcane Remnant##61310
accept Ley Energies##27480 |goto 30.26,37.00
step
kill Arcane Remnant##45728+
|tip All around in the crater.
collect 8 Arcane Remnant##61311 |q 27480/1 |goto 30.26,37.00
stickystart "Slay_Dalaran_Humans"
step
kill Relios the Relic Keeper##45734
|tip He looks like a human mage wearing a purple robe that walks around this area.
|tip Run up out of the crater.
collect Dalaran Archmage's Signet Ring##61312 |q 27478/1 |goto 33.41,41.92
Also check around [31.61,43.42]
step
label "Slay_Dalaran_Humans"
Kill Dalaran enemies around this area |kill Dalaran Worker##2628, Dalaran Summoner##2358
Slay #12# Dalaran Humans |q 27483/1 |goto 31.05,43.47
step
clicknpc Portal to the Sepulcher##45732 |goto 30.28,36.62
|tip Down in the crater.
Teleport to the Sepulcher |goto Silverpine Forest 47.23,43.35 < 30 |noway |c |q 27478
step
talk Dalar Dawnweaver##1938
|tip Downstairs inside the building.
turnin Relios the Relic Keeper##27478 |goto 47.08,43.22
accept Only One May Enter##27484 |goto 47.08,43.22
turnin Practical Vengeance##27483 |goto 47.08,43.22
turnin Ley Energies##27480 |goto 47.08,43.22
step
talk Lady Sylvanas Windrunner##45617
turnin Only One May Enter##27484 |goto 51.90,65.01
accept Transdimensional Warfare: Chapter I##27512 |goto 51.90,65.01
step
talk High Warlord Cromush##45631
|tip He walks around this area.
accept A Wolf in Bear's Clothing##27510 |goto 51.82,65.82
step
kill 10 Inconspicuous Bear##45750 |q 27510/1 |goto 55.05,71.68
You can find more around [61.51,76.76]
step
Enter the cave |goto 60.24,72.20 < 15 |walk
clicknpc Ambermill Dimensional Portal##45752
|tip Inside the cave.
turnin Transdimensional Warfare: Chapter I##27512 |goto 58.08,69.91
accept Transdimensional Warfare: Chapter II##27513 |goto 58.08,69.91
step
clicknpc Ambermill Dimensional Portal##45752
|tip Inside the cave.
Choose _<Use the Ambermill Dimensional Portal.>_
Enter the Transdimensional Shift |havebuff Transdimensional Shift##85361 |goto 58.08,69.91 |q 27513
step
Kill Ambermill enemies around this area |kill Ambermill Witchalok##1889, Ambermill Magister##1914, Ambermill Watcher##1888
Slay #20# Ambermill Mages |q 27513/1 |goto 61.77,64.24
step
_Click the Complete Quest Box:_
turnin Transdimensional Warfare: Chapter II##27513
accept Transdimensional Warfare: Chapter III##27518
step
Watch the dialogue
kill Arcane Fiend##45766+
|tip Archmage Ataeric will spawn Arcane Fiends to attack you.
|tip Kill them next to Archmage Ataeric to destroy his shield.
|tip He will eventually die.
Destroy the Transdimensional Shield |q 27518/1 |goto 56.64,64.36
step
talk Lady Sylvanas Windrunner##45617
turnin Transdimensional Warfare: Chapter III##27518 |goto 51.90,65.01
accept Taking the Battlefront##27542 |goto 51.90,65.01
step
_Next to you:_
talk Baron Ashbury##45880
|tip If mounted dismount for him to appear.
accept Of No Consequence##27547
step
_Next to you:_
talk Lord Walden##45879
|tip If mounted dismount for him to appear.
accept Lessons in Fear##27548
step
_Next to you:_
talk Lord Godfrey##45878
|tip If mounted dismount for him to appear.
accept Pyrewood's Fall##27550
step
talk High Warlord Cromush##45631
|tip He walks around this area.
turnin A Wolf in Bear's Clothing##27510 |goto 52.15,66.18
accept Warchief's Command: Hillsbrad Foothills!##28089 |goto 51.77,67.15 |only if not haveq(28096) and not completedq(28096)
stickystart "Rescue_Cowering_Troops"
stickystart "Slay_7th_Legion_Scouts"
step
use the Bundle of Torches##61374
Torch the Pyrewood Chapel |q 27550/2 |goto 46.61,72.81
step
use the Bundle of Torches##61374
Torch the Pyrewood Inn |q 27550/1 |goto 45.19,72.03
step
use the Bundle of Torches##61374
Torch the Pyrewood Town Hall |q 27550/3 |goto 44.12,73.14
step
_Next to you:_
talk Lord Godfrey##45878
turnin Pyrewood's Fall##27550
step
label "Rescue_Cowering_Troops"
talk Cowering Troop##45910+
|tip They look like frightened friendly Horde NPCs behind and inside buildings around this area.
Rescue #8# Cowering Troops |q 27547/1 |goto 44.58,74.05
step
_Next to you:_
talk Baron Ashbury##45880
turnin Of No Consequence##27547
step
label "Slay_7th_Legion_Scouts"
kill 7th Legion Scout##45883+
|tip They look like stealthed Alliance enemies around this area.
Slay #12# 7th Legion Scouts |q 27548/1 |goto 44.23,73.07
step
_Next to you:_
talk Lord Walden##45879
turnin Lessons in Fear##27548
accept 7th Legion Battle Plans##27577
step
_Next to you:_
talk Lord Godfrey##45878
accept Sowing Discord##27580
step
kill Marsh Crocolisk##45896+
collect Partially Digested Head##61505 |n
use the Partially Digested Head##61505
accept I Never Forget a Face##27574 |goto 45.75,78.06
step
_Next to you:_
talk Lord Godfrey##45878
turnin I Never Forget a Face##27574
accept From the Belly of the Beast##27575
step
kill Marsh Crocolisk##45896+
collect Dempsey's Torso##61506 |q 27575/1 |goto 45.75,78.06
collect Dempsey's Appendages##61507 |q 27575/2 |goto 45.75,78.06
collect Dempsey's Giblets##61508 |q 27575/3 |goto 45.75,78.06
step
_Next to you:_
talk Lord Godfrey##45878
turnin From the Belly of the Beast##27575
stickystart "Collect_7th_Legion_Battle_Plans"
step
kill General Marstone##45995 |q 27580/1 |goto 42.38,79.11
|tip He walks around this area.
step
_Next to you:_
talk Lord Godfrey##45878
turnin Sowing Discord##27580
step
label "Collect_7th_Legion_Battle_Plans"
kill Dwarven Infantry##45855+
collect 7th Legion Battle Plan##61510 |q 27577/1 |goto 42.65,81.49
step
_Next to you:_
talk Lord Walden##45879
turnin 7th Legion Battle Plans##27577
step
_Next to you:_
talk Lord Godfrey##45878
accept On Her Majesty's Secret Service##27594
step
Watch the dialogue
kill Commander Lorna Crowley##45997
Capture Commander Lorna Crowley |q 27594/1 |goto 50.32,88.29
step
talk Lady Sylvanas Windrunner##45617
turnin On Her Majesty's Secret Service##27594 |goto 51.90,65.01
accept Cities in Dust##27601 |goto 51.90,65.01
step
Watch the dialogue
|tip Follow Lady Sylvanas Windrunner as she walks.
|tip Stay close to her or the quest will fail.
Kill the enemies that attack
|tip They will eventually retreat.
Achieve Victory: Final and Absolute |q 27601/1 |goto 45.30,84.99
step
talk Lady Sylvanas Windrunner##46124
turnin Cities in Dust##27601 |goto 45.32,84.47
accept Empire of Dirt##27746 |goto 45.32,84.47
step
talk High Executor Darthalia##2215
turnin Empire of Dirt##27746 |goto Hillsbrad Foothills 29.23,63.35
turnin Warchief's Command: Hillsbrad Foothills!##28089 |goto Hillsbrad Foothills 29.23,63.35 |only if haveq(28089) or completedq(28089)
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\Hillsbrad Foothills (20-26)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\Northern Stranglethorn (26-31)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\The Cape of Stranglethorn (31-36)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\Arathi Highlands (26-30)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\The Hinterlands (30-34)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\Western Plaguelands (34-39)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\Eastern Plaguelands (39-44)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\Badlands (44-47)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\Searing Gorge (47-49)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\Burning Steppes (49-52)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\Swamp of Sorrows (52-54)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\Winterspring (54-58)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Eastern Kingdoms (1-60)\\Blasted Lands (57-60)")
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Kalimdor (1-60)\\Orc (1-5)",{
author="support@zygorguides.com",
condition_suggested=function() return raceclass('Orc') and level<=6 end,
next="Leveling Guides\\Kalimdor (1-60)\\Durotar (5-11)",
startlevel=1,
dynamic=true,
},[[
step
talk Kaltuk##10176
accept Your Place In The World##25152 |goto Durotar 43.30,68.76
step
talk Gornek##3143
turnin Your Place In The World##25152 |goto 43.23,68.26
accept Cutting Teeth##25126 |goto 43.23,68.26
step
kill Mottled Boar##3098+
Slaughter #8# Mottled Boars |q 25126/1 |goto 44.45,64.41
step
talk Gornek##3143
turnin Cutting Teeth##25126 |goto 43.23,68.26
accept Invaders in Our Home##25172 |goto 43.23,68.26
step
talk Galgar##9796
accept Galgar's Cactus Apple Surprise##25136 |goto 42.73,67.24
stickystart "Collect_Cactus_Apples"
step
kill 7 Northwatch Scout##39317 |q 25172/1 |goto 43.99,71.98
step
Kill enemies around this area
|tip Getting this far into level 3 will allow you to reach level 3 after turning in the quest soon.
|tip You need to be at least level 3 to accept the next quest.
ding 2,625 |goto 43.99,71.98
step
talk Gornek##3143
turnin Invaders in Our Home##25172 |goto 43.23,68.26
accept Sting of the Scorpid##25127 |goto 43.23,68.26
accept Etched Parchment##3087 |goto 43.23,68.26			|only if Orc Hunter
accept Simple Parchment##2383 |goto 43.23,68.26			|only if Orc Warrior
accept Encrypted Parchment##3088 |goto 43.23,68.26		|only if Orc Rogue
accept Rune-Inscribed Parchment##3089 |goto 43.23,68.26		|only if Orc Shaman
accept Glyphic Parchment##25138 |goto 43.23,68.26		|only if Orc Mage
accept Tainted Parchment##3090 |goto 43.23,68.26		|only if Orc Warlock
stickystop "Collect_Cactus_Apples"
step
talk Nartok##3156
turnin Tainted Parchment##3090 |goto Durotar 42.38,68.06
accept Immolate##25145 |goto Durotar 42.38,68.06
|only if Orc Warlock
step
talk Nartok##3156
Learn Immolate |q 25145/2 |goto 42.38,68.06
|only if Orc Warlock
step
Practice Immolate #5# Times |q 25145/1 |goto 43.04,67.40
|tip Use your Immolate ability on the Training Dummy.
|only if Orc Warlock
step
talk Nartok##3156
turnin Immolate##25145 |goto 42.38,68.06
|only if Orc Warlock
step
talk Acrypha##39206
turnin Glyphic Parchment##25138 |goto Durotar 42.51,69.04
accept Arcane Missiles##25149 |goto Durotar 42.51,69.04
|only if Orc Mage
step
talk Acrypha##39206
Learn Arcane Missiles |q 25149/2 |goto 42.51,69.04
|only if Orc Mage
step
Practice Arcane Missiles #2# Times |q 25149/1 |goto 43.06,69.49
|tip Use your Arcane Missiles ability on the Training Dummy.
|only if Orc Mage
step
talk Acrypha##3920
turnin Arcane Missiles##25149 |goto 42.51,69.04
|only if Orc Mage
step
talk Shikrik##3157
turnin Rune-Inscribed Parchment##3089 |goto Durotar 42.39,69.00
accept Primal Strike##25143 |goto Durotar 42.39,69.00
|only if Orc Shaman
step
talk Shikrik##3157
Learn Primal Strike |q 25143/2 |goto 42.39,69.00
|only if Orc Shaman
step
Practice Primal Strike #3# Times |q 25143/1 |goto 43.06,69.49
|tip Use your Primal Strike ability on the Training Dummy.
|only if Orc Shaman
step
talk Shikrik##3157
turnin Primal Strike##25143 |goto 42.39,69.00
|only if Orc Shaman
step
talk Rwag##3155
turnin Encrypted Parchment##3088 |goto Durotar 42.37,68.81
accept Eviscerate##25141 |goto Durotar 42.37,68.81
|only if Orc Rogue
step
talk Rwag##3155
Learn Eviscerate |q 25141/2 |goto 42.37,68.81
|only if Orc Rogue
step
Practice Eviscerate #3# Times |q 25141/1 |goto 43.06,69.49
|tip Use your Eviscerate ability on the Training Dummy.
|only if Orc Rogue
step
talk Rwag##3155
turnin Eviscerate##25141 |goto 42.37,68.81
|only if Orc Rogue
step
talk Frang##3153
turnin Simple Parchment##2383 |goto Durotar 42.88,69.46
accept Charge##25147 |goto Durotar 42.88,69.46
|only if Orc Warrior
step
talk Frang##3153
Learn Charge |q 25147/2 |goto 42.88,69.46
|only if Orc Warrior
step
Practice Charge |q 25147/1 |goto 43.06,69.49
|tip Use your Charge ability on a Training Dummy.
|only if Orc Warrior
step
talk Frang##3153
turnin Charge##25147 |goto 42.88,69.46
|only if Orc Warrior
step
talk Karranisha##39214
turnin Etched Parchment##3087 |goto Durotar 42.84,69.33
accept Steady Shot##25139 |goto Durotar 42.84,69.33
|only if Orc Hunter
step
talk Karranisha##39214
Learn Steady Shot |q 25139/2 |goto 42.84,69.33
|only if Orc Hunter
step
Practice Steady Shot #5# Times |q 25139/1 |goto 43.06,69.49
|tip Use your Steady Shot ability on a Training Dummy.
|only if Orc Hunter
step
talk Karranisha##39214
turnin Steady Shot##25139 |goto 42.84,69.33
|only if Orc Hunter
step
talk Foreman Thazz'ril##11378
accept Lazy Peons##25134 |goto Durotar 43.54,67.41
stickystart "Collect_Cactus_Apples"
stickystart "Collect_Scorpid_Worker_Tails"
step
use the Foreman's Blackjack##16114
|tip Use it on Lazy Peons around this area.
|tip They look like orcs sleeping on the ground around this area.
|tip If they aren't sleeping, don't wait, go to the next location.
Awaken #4# Peons |q 25134/1 |goto 44.13,69.87
You can find more around: |notinsticky
[44.98,69.13] [47.56,69.35] [45.65,65.81] [47.18,65.27]
[46.74,60.79] [46.98,57.95]
step
label "Collect_Cactus_Apples"
click Cactus Apple##171938+
|tip They look like green cactuses with small round red balls on them.
|tip All around this area. |notinsticky
collect 6 Cactus Apple##11583 |q 25136/1 |goto 45.16,64.25
step
label "Collect_Scorpid_Worker_Tails"
kill Scorpid Worker##3124+
collect 10 Scorpid Worker Tail##4862 |q 25127/1 |goto 44.82,63.04
step
talk Foreman Thazz'ril##11378
turnin Lazy Peons##25134 |goto 43.54,67.41
step
talk Galgar##9796
turnin Galgar's Cactus Apple Surprise##25136 |goto 42.73,67.24
step
talk Gornek##3143
turnin Sting of the Scorpid##25127 |goto 43.23,68.26
step
talk Canaga Earthcaller##5887
accept Hana'zua##25128 |goto 42.40,69.17
step
talk Zureetha Fargaze##3145
accept Vile Familiars##25131 |goto 43.45,67.47
step
kill 8 Vile Familiar##3101 |q 25131/1 |goto 45.01,57.97
|tip Don't go inside the cave, if you can.
|tip The next step is outside the cave.
step
talk Hana'zua##3287
turnin Hana'zua##25128 |goto 40.60,62.59
accept Sarkoth##25129 |goto 40.60,62.59
step
kill Sarkoth##3281
|tip It looks like a darker colored scorpion that walks around this area.
collect Sarkoth's Mangled Claw##4905 |q 25129/1 |goto 40.50,66.82
step
talk Hana'zua##3287
turnin Sarkoth##25129 |goto 40.60,62.59
accept Back to the Den##25130 |goto 40.60,62.59
step
talk Gornek##3143
turnin Back to the Den##25130 |goto 43.23,68.26
step
talk Zureetha Fargaze##3145
turnin Vile Familiars##25131 |goto 43.45,67.47
accept Burning Blade Medallion##25132 |goto 43.45,67.47
step
talk Foreman Thazz'ril##11378
accept Thazz'ril's Pick##25135 |goto 43.54,67.41
step
Enter the cave |goto 45.34,56.36 < 15 |walk
click Thazz'ril's Pick
|tip Inside the cave.
collect Thazz'ril's Pick##16332 |q 25135/1 |goto 43.73,53.79
stickystart "Kill_Felstalkers"
step
kill Yarrog Baneshadow##3183
|tip Inside the cave.
collect Burning Blade Medallion##4859 |q 25132/2 |goto 42.43,53.49
step
label "Kill_Felstalkers"
kill 7 Felstalker##3102 |q 25132/1 |goto 45.34,56.36
|tip Inside the cave. |notinsticky
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |complete isdead |goto 45.34,56.36 |q 25132
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |complete not isdead |goto 44.12,69.39 |q 25132 |zombiewalk
step
talk Foreman Thazz'ril##11378
turnin Thazz'ril's Pick##25135 |goto 43.54,67.41
step
talk Zureetha Fargaze##3145
turnin Burning Blade Medallion##25132 |goto 43.45,67.47
accept Report to Sen'jin Village##25133 |goto 43.45,67.47
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Kalimdor (1-60)\\Troll (1-5)",{
author="support@zygorguides.com",
condition_suggested=function() return raceclass('Troll') and level<=6 end,
next="Leveling Guides\\Kalimdor (1-60)\\Durotar (5-11)",
startlevel=1,
dynamic=true,
},[[
step
talk Jin'thala##37951
accept The Rise of the Darkspear##24776 |goto Durotar 62.46,84.44 |only if Troll Hunter
accept The Rise of the Darkspear##24607 |goto Durotar 62.46,84.44 |only if Troll Warrior
accept The Rise of the Darkspear##24770 |goto Durotar 62.46,84.44 |only if Troll Rogue
accept The Rise of the Darkspear##24782 |goto Durotar 62.46,84.44 |only if Troll Priest
accept The Rise of the Darkspear##24764 |goto Durotar 62.46,84.44 |only if Troll Druid
accept The Rise of the Darkspear##26272 |goto Durotar 62.46,84.44 |only if Troll Warlock
accept The Rise of the Darkspear##24750 |goto Durotar 62.46,84.44 |only if Troll Mage
accept The Rise of the Darkspear##24758 |goto Durotar 62.46,84.44 |only if Troll Shaman
step
talk Nekali##38242
turnin The Rise of the Darkspear##24758 |goto Durotar 64.94,84.21
accept The Basics: Hitting Things##24759 |goto Durotar 64.94,84.21
|only if Troll Shaman
step
kill 6 Tiki Target##38038 |q 24759/1 |goto 65.34,84.58
|only if Troll Shaman
step
talk Nekali##38242
turnin The Basics: Hitting Things##24759 |goto 64.94,84.21
accept A Rough Start##24761 |goto 64.94,84.21
|only if Troll Shaman
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24761/1 |goto 64.86,80.84
You can find more around [67.35,80.21]
|only if Troll Shaman
step
talk Nekali##38242
turnin A Rough Start##24761 |goto 64.94,84.21
accept Proving Pit##24762 |goto 64.94,84.21
|only if Troll Shaman
step
talk Darkspear Jailor##39062
Tell him _"I'm ready to face my challenge."_
Speak to a Darkspear Jailor |q 24762/1 |goto 65.58,83.73
|only if Troll Shaman
step
Watch the dialogue
kill Captive Spitescale Scout##38142 |q 24762/2 |goto 65.35,83.84
|only if Troll Shaman
step
talk Nekali##38242
turnin Proving Pit##24762 |goto 65.15,83.99
accept The Arts of a Shaman##24760 |goto 65.15,83.99
|only if Troll Shaman
step
talk Nekali##38242
Learn Primal Strike |q 24760/2 |goto 65.15,83.99
|only if Troll Shaman
step
Practice Primal Strike #3# Times |q 24760/1 |goto 64.85,84.70
|tip Use your Primal Strike ability on a Tiki Target.
|only if Troll Shaman
step
talk Nekali##38242
turnin The Arts of a Shaman##24760 |goto 65.15,83.99
accept More Than Expected##24763 |goto 65.15,83.99
|only if Troll Shaman
step
talk Soratha##38246
turnin The Rise of the Darkspear##24750 |goto Durotar 68.22,83.98
accept The Basics: Hitting Things##24751 |goto Durotar 68.22,83.98
|only if Troll Mage
step
kill 6 Tiki Target##38038 |q 24751/1 |goto 67.88,82.57
|only if Troll Mage
step
talk Soratha##38246
turnin The Basics: Hitting Things##24751 |goto 68.22,83.98
accept A Rough Start##24753 |goto 68.22,83.98
|only if Troll Mage
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24753/1 |goto 67.35,80.21
You can find more around [64.86,80.84]
|only if Troll Mage
step
talk Soratha##38246
turnin A Rough Start##24753 |goto 68.22,83.98
accept Proving Pit##24754 |goto 68.22,83.98
|only if Troll Mage
step
talk Darkspear Jailor##39062
Tell him _"I'm ready to face my challenge."_
Speak to a Darkspear Jailor |q 24754/1 |goto 67.47,84.19
|only if Troll Mage
step
Watch the dialogue
kill Captive Spitescale Scout##38142 |q 24754/2 |goto 67.49,83.89
|only if Troll Mage
step
talk Soratha##38246
turnin Proving Pit##24754 |goto 67.72,83.81
accept The Arts of a Mage##24752 |goto 67.72,83.81
|only if Troll Mage
step
talk Soratha##38246
Learn Arcane Missiles |q 24752/2 |goto 67.72,83.81
|only if Troll Mage
step
Practice Arcane Missiles #5# Times |q 24752/1 |goto 68.61,84.30
|tip Use your Arcane Missiles ability on a Tiki Target.
|only if Troll Mage
step
talk Soratha##38246
turnin The Arts of a Mage##24752 |goto 67.72,83.81
accept More Than Expected##24755 |goto 67.72,83.81
|only if Troll Mage
step
talk Voldreka##42618
turnin The Rise of the Darkspear##26272 |goto Durotar 64.93,83.26
accept The Basics: Hitting Things##26273 |goto Durotar 64.93,83.26
|only if Troll Warlock
step
kill 6 Tiki Target##38038 |q 26273/1 |goto 65.85,82.98
|only if Troll Warlock
step
talk Voldreka##42618
turnin The Basics: Hitting Things##26273 |goto 64.93,83.26
accept A Rough Start##26275 |goto 64.93,83.26
|only if Troll Warlock
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 26275/1 |goto 64.86,80.84
You can find more around [67.35,80.21]
|only if Troll Warlock
step
talk Voldreka##42618
turnin A Rough Start##26275 |goto 64.93,83.26
accept Proving Pit##26276 |goto 64.93,83.26
|only if Troll Warlock
step
talk Darkspear Jailor##39062
Tell him _"I'm ready to face my challenge."_
Speak to a Darkspear Jailor |q 26276/1 |goto 65.58,83.73
|only if Troll Warlock
step
Watch the dialogue
kill Captive Spitescale Scout##38142 |q 26276/2 |goto 65.35,83.84
|only if Troll Warlock
step
talk Voldreka##42618
turnin Proving Pit##26276 |goto 65.15,83.92
accept The Arts of a Warlock##26274 |goto 65.15,83.92
|only if Troll Warlock
step
talk Voldreka##42618
Learn Immolate |q 26274/2 |goto 65.15,83.92
|only if Troll Warlock
step
Practice Immolate #5# Times |q 26274/1 |goto 64.72,84.03
|tip Use your Immolate ability on a Tiki Target.
|only if Troll Warlock
step
talk Voldreka##42618
turnin The Arts of a Warlock##26274 |goto 65.15,83.92
accept More Than Expected##26277 |goto 65.15,83.92
|only if Troll Warlock
step
talk Zen'tabra##38243
turnin The Rise of the Darkspear##24764 |goto Durotar 67.67,84.65
accept The Basics: Hitting Things##24765 |goto Durotar 67.67,84.65
|only if Troll Druid
step
kill 6 Tiki Target##38038 |q 24765/1 |goto 67.10,84.37
|only if Troll Druid
step
talk Zen'tabra##38243
turnin The Basics: Hitting Things##24765 |goto 67.67,84.65
accept A Rough Start##24767 |goto 67.67,84.65
|only if Troll Druid
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24767/1 |goto 67.35,80.21
You can find more around [64.86,80.84]
|only if Troll Druid
step
talk Zen'tabra##38243
turnin A Rough Start##24767 |goto 67.67,84.65
accept Proving Pit##24768 |goto 67.67,84.65
|only if Troll Druid
step
talk Darkspear Jailor##39062
Tell him _"I'm ready to face my challenge."_
Speak to a Darkspear Jailor |q 24768/1 |goto 67.47,84.19
|only if Troll Druid
step
Watch the dialogue
kill Captive Spitescale Scout##38142 |q 24768/2 |goto 67.49,83.89
|only if Troll Druid
step
talk Zen'tabra##38243
turnin Proving Pit##24768 |goto 67.53,84.17
accept The Arts of a Druid##24766 |goto 67.53,84.17
|only if Troll Druid
step
talk Zen'tabra##38243
Learn Healing Touch |q 24766/2 |goto 67.53,84.17
|only if Troll Druid
step
Practice Healing Touch #5# Times |q 24766/1 |goto 67.52,84.89
|tip Use your Healing Touch ability on the Wounded Darkspear Watcher.
|only if Troll Druid
step
talk Zen'tabra##38243
turnin The Arts of a Druid##24766 |goto 67.53,84.17
accept More Than Expected##24769 |goto 67.53,84.17
|only if Troll Druid
step
talk Tunari##38245
turnin The Rise of the Darkspear##24782 |goto Durotar 67.66,83.02
accept The Basics: Hitting Things##24783 |goto Durotar 67.66,83.02
|only if Troll Priest
step
kill 6 Tiki Target##38038 |q 24783/1 |goto 67.83,82.59
|only if Troll Priest
step
talk Tunari##38245
turnin The Basics: Hitting Things##24783 |goto 67.66,83.02
accept A Rough Start##24785 |goto 67.66,83.02
|only if Troll Priest
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24785/1 |goto 67.35,80.21
You can find more around [64.86,80.84]
|only if Troll Priest
step
talk Tunari##38245
turnin A Rough Start##24785 |goto 67.66,83.02
accept Proving Pit##24786 |goto 67.66,83.02
|only if Troll Priest
step
talk Darkspear Jailor##39062
Tell him _"I'm ready to face my challenge."_
Speak to a Darkspear Jailor |q 24786/1 |goto 67.47,84.19
|only if Troll Priest
step
Watch the dialogue
kill Captive Spitescale Scout##38142 |q 24786/2 |goto 67.49,83.89
|only if Troll Priest
step
talk Tunari##38245
turnin Proving Pit##24786 |goto 67.44,83.56
accept The Arts of a Priest##24784 |goto 67.44,83.56
|only if Troll Priest
step
talk Tunari##38245
Learn Flash Heal |q 24784/2 |goto 67.44,83.56
|only if Troll Priest
step
Practice Flash Heal #5# Times |q 24784/1 |goto 67.83,83.64
|tip Use your Flash Heal ability on the Wounded Darkspear Watcher.
|only if Troll Priest
step
talk Tunari##38245
turnin The Arts of a Priest##24784 |goto 67.44,83.56
accept More Than Expected##24787 |goto 67.44,83.56
|only if Troll Priest
step
talk Legati##38244
turnin The Rise of the Darkspear##24770 |goto Durotar 65.90,83.24
accept The Basics: Hitting Things##24771 |goto Durotar 65.90,83.24
|only if Troll Rogue
step
kill 6 Tiki Target##38038 |q 24771/1 |goto 65.85,82.98
|only if Troll Rogue
step
talk Legati##38244
turnin The Basics: Hitting Things##24771 |goto 65.90,83.24
accept A Rough Start##24773 |goto 65.90,83.24
|only if Troll Rogue
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24773/1 |goto 64.86,80.84
You can find more around [67.35,80.21]
|only if Troll Rogue
step
talk Legati##38244
turnin A Rough Start##24773 |goto 65.90,83.24
accept Proving Pit##24774 |goto 65.90,83.24
|only if Troll Rogue
step
talk Darkspear Jailor##39062
Tell him _"I'm ready to face my challenge."_
Speak to a Darkspear Jailor |q 24774/1 |goto 65.58,83.73
|only if Troll Rogue
step
Watch the dialogue
kill Captive Spitescale Scout##38142 |q 24774/2 |goto 65.35,83.84
|only if Troll Rogue
step
talk Legati##38244
turnin Proving Pit##24774 |goto 65.58,83.83
accept The Arts of a Rogue##24772 |goto 65.58,83.83
|only if Troll Rogue
step
talk Legati##38244
Learn Eviscerate |q 24772/2 |goto 65.58,83.83
|only if Troll Rogue
step
Practice Eviscerate #3# Times |q 24772/1 |goto 65.85,83.67
|tip Use your Eviscerate ability on a Tiki Target.
|only if Troll Rogue
step
talk Legati##38244
turnin The Arts of a Rogue##24772 |goto 65.58,83.83
accept More Than Expected##24775 |goto 65.58,83.83
|only if Troll Rogue
step
talk Ortezza##38247
turnin The Rise of the Darkspear##24776 |goto Durotar 67.09,83.30
accept The Basics: Hitting Things##24777 |goto Durotar 67.09,83.30
|only if Troll Hunter
step
kill 6 Tiki Target##38038 |q 24777/1 |goto 67.18,83.22
|only if Troll Hunter
step
talk Ortezza##38247
turnin The Basics: Hitting Things##24777 |goto 67.09,83.30
accept A Rough Start##24779 |goto 67.09,83.30
|only if Troll Hunter
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24779/1 |goto 67.35,80.21
You can find more around [64.86,80.84]
|only if Troll Hunter
step
talk Ortezza##38247
turnin A Rough Start##24779 |goto 67.09,83.30
accept Proving Pit##24780 |goto 67.09,83.30
|only if Troll Hunter
step
talk Darkspear Jailor##39062
Tell him _"I'm ready to face my challenge."_
Speak to a Darkspear Jailor |q 24780/1 |goto 67.47,84.19
|only if Troll Hunter
step
Watch the dialogue
kill Captive Spitescale Scout##38142 |q 24780/2 |goto 67.49,83.89
|only if Troll Hunter
step
talk Ortezza##38247
turnin Proving Pit##24780 |goto 67.38,83.54
accept The Arts of a Hunter##24778 |goto 67.38,83.54
|only if Troll Hunter
step
talk Ortezza##38247
Learn Steady Shot |q 24778/2 |goto 67.38,83.54
|only if Troll Hunter
step
Practice Steady Shot #5# Times |q 24778/1 |goto 67.18,83.22
|tip Use your Steady Shot ability on a Tiki Target.
|only if Troll Hunter
step
talk Ortezza##38247
turnin The Arts of a Hunter##24778 |goto 67.38,83.54
accept More Than Expected##24781 |goto 67.38,83.54
|only if Troll Hunter
step
talk Nortet##38037
turnin The Rise of the Darkspear##24607 |goto Durotar 65.78,84.53
accept The Basics: Hitting Things##24639 |goto Durotar 65.78,84.53
|only if Troll Warrior
step
kill 6 Tiki Target##38038 |q 24639/1 |goto 65.62,84.55
|only if Troll Warrior
step
talk Nortet##38037
turnin The Basics: Hitting Things##24639 |goto 65.78,84.53
accept A Rough Start##24641 |goto 65.78,84.53
|only if Troll Warrior
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24641/1 |goto 64.86,80.84
You can find more around [67.35,80.21]
|only if Troll Warrior
step
talk Nortet##38037
turnin A Rough Start##24641 |goto 65.78,84.53
accept Proving Pit##24642 |goto 65.78,84.53
|only if Troll Warrior
step
talk Darkspear Jailor##39062
Tell him _"I'm ready to face my challenge."_
Speak to a Darkspear Jailor |q 24642/1 |goto 65.58,83.73
|only if Troll Warrior
step
Watch the dialogue
kill Captive Spitescale Scout##38142 |q 24642/2 |goto 65.35,83.84
|only if Troll Warrior
step
talk Nortet##38037
turnin Proving Pit##24642 |goto 65.41,84.18
accept The Arts of a Warrior##24640 |goto 65.41,84.18
|only if Troll Warrior
step
talk Nortet##38037
Learn Charge |q 24640/2 |goto 65.41,84.18
|only if Troll Warrior
step
Practice Charge |q 24640/2 |goto 65.41,84.52
|tip Use your Charge ability on a Tiki Target.
|only if Troll Warrior
step
talk Nortet##38037
turnin The Arts of a Warrior##24640 |goto 65.41,84.18
accept More Than Expected##24643 |goto 65.41,84.18
|only if Troll Warrior
step
talk Vol'jin##38966
|tip Inside the building.
turnin More Than Expected##24781 |goto Durotar 68.86,88.69 |only if Troll Hunter
turnin More Than Expected##24643 |goto Durotar 68.86,88.69 |only if Troll Warrior
turnin More Than Expected##24775 |goto Durotar 68.86,88.69 |only if Troll Rogue
turnin More Than Expected##24787 |goto Durotar 68.86,88.69 |only if Troll Priest
turnin More Than Expected##24769 |goto Durotar 68.86,88.69 |only if Troll Druid
turnin More Than Expected##26277 |goto Durotar 68.86,88.69 |only if Troll Warlock
turnin More Than Expected##24755 |goto Durotar 68.86,88.69 |only if Troll Mage
turnin More Than Expected##24763 |goto Durotar 68.86,88.69 |only if Troll Shaman
accept Moraya##25064 |goto Durotar 68.86,88.69
step
talk Tora'jin##39007
accept Crab Fishin'##25037 |goto 68.51,87.68
step
kill Pygmy Surf Crawler##39004+
collect 5 Fresh Crawler Meat |q 25037/1 |goto 70.2,85.3
step
talk Tora'jin##39007
turnin Crab Fishin'##25037 |goto 68.51,87.68
step
talk Moraya##38005
turnin Moraya##25064 |goto 67.25,87.95
accept A Troll's Truest Companion##24622 |goto 67.25,87.95
step
talk Kijara##37969
|tip She walks around this area.
turnin A Troll's Truest Companion##24622 |goto 63.40,95.27
accept Saving the Young##24623 |goto 63.40,95.27
step
talk Tegashi##37987
accept Mercy for the Lost##24624 |goto 63.45,95.23
accept Consort of the Sea Witch##24625 |goto 63.45,95.23
stickystart "Kill_Corrupted_Bloodtalons"
stickystart "Rescue_Bloodtalon_Hatchlings"
step
kill Naj'tess##39072
|tip On top of the hill.
collect Naj'tess' Orb of Corruption |q 24625/1 |goto 60.39,89.66
step
label "Kill_Corrupted_Bloodtalons"
kill 8 Corrupted Bloodtalon##37961 |q 24624/1 |goto 60.39,89.66
step
label "Rescue_Bloodtalon_Hatchlings"
use the Bloodtalon Whistle##52283
|tip Use it near Lost Bloodtalon Hatchlings.
|tip They look like tiny red raptors around this area.
Rescue #12# Bloodtalon Hatchlings |q 24623/1 |goto 60.39,89.66
step
talk Kijara##37969
|tip She walks around this area.
turnin Saving the Young##24623 |goto 63.40,95.27
step
talk Tegashi##37987
turnin Mercy for the Lost##24624 |goto 63.45,95.23
turnin Consort of the Sea Witch##24625 |goto 63.45,95.23
step
talk Kijara##37969
|tip She walks around this area.
accept Young and Vicious##24626 |goto 63.40,95.27
step
use the Bloodtalon Lasso##50053
|tip Use it on on Swiftclaw.
|tip He looks like a dark colored raptor that runs really fast around this area.
|tip Wait here and he will run to you.
Capture Swiftclaw |q 24626/1 |goto 63.10,95.34
step
Return Swiftclaw to the Raptor Pens |q 24626/2 |goto 65.96,88.52
|tip He won't swim, so run across the bridge.
step
talk Moraya##38005
turnin Young and Vicious##24626 |goto 67.25,87.95
step
talk Tortunga##38440
accept Breaking the Line##25035 |goto 67.97,89.03
step
talk Jornun##38989
Tell him _"Yes. Do you have a raptor that can take me there?"_
Begin Traveling to Join the Attack on the Naga |invehicle |goto goto 68.02,89.06 |q 25035
step
Join the Attack on the Naga |outvehicle |goto 67.88,74.19 |q 25035 |notravel
step
talk Morakki##38442
turnin Breaking the Line##25035 |goto 67.96,74.08
accept No More Mercy##24812 |goto 67.96,74.08
accept Territorial Fetish##24813 |goto 67.96,74.08
stickystart "Slay_Spitelash_Naga"
step
use the Territorial Fetish##52065
|tip Use it next to Spitescale Flags.
|tip They look like red penant flags on spiked poles.
|tip Inside the cave.
Place 8 Territorial Fetishes |q 24813/1 |goto 68.09,73.55
step
label "Slay_Spitelash_Naga"
Kill Spitelash enemies around this area.
|tip They look like naga.
|tip Inside the cave. |notinsticky
Slay #12# Spitelash Naga |q 24812/1 |goto 68.09,73.55
'|kill Spitescale Wavethrasher##38300, Spitescale Siren##38301
step
Leave the cave |goto 68.09,73.55 < 15 |walk |only if subzone("Spitescale Cavern") and indoors()
talk Morakki##38442
turnin No More Mercy##24812 |goto 67.96,74.08
turnin Territorial Fetish##24813 |goto 67.96,74.08
accept An Ancient Enemy##24814 |goto 67.96,74.08
step
talk Vol'jin##10540
|tip Outside, above the cave.
Tell him _"I am ready, Vol'jin"_
Speak with Vol'jin at Spitescale Cove |q 24814/1 |goto 69.09,72.34
step
Watch the dialogue
|tip During the fight, a message will display on the screen.
|tip When the message appears, click the 3 braziers behind Zar'jira.
kill Zar'jira##38306 |q 24814/2 |goto 68.47,71.43
step
Watch the dialogue
talk Vanira##39027 |goto 68.43,71.57
Tell her _"Take me back to Darkspear Hold if you would, Vanira."_
Return to Darkspear Hold |goto 68.17,87.80 < 30 |noway |c |q 24814
step
talk Vol'jin##10540
|tip Inside the building.
turnin An Ancient Enemy##24814 |goto 68.86,88.70
accept Sen'jin Village##25073 |goto 68.86,88.70
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Kalimdor (1-60)\\Durotar (5-11)",{
author="support@zygorguides.com",
next="Leveling Guides\\Kalimdor (1-60)\\The Barrens (10-20)",
dynamic=true,
},[[
step
talk Handler Marnlek##41142
fpath Sen'jin Village |goto Durotar 55.38,73.31
step
talk Master Gadrin##3188
turnin Report to Sen'jin Village##25133 |goto 55.95,74.72 |only if haveq(25133) or completedq(25133)
turnin Sen'jin Village##25073 |goto 55.95,74.72 |only if haveq(25073) or completedq(25073)
accept Breaking the Chain##25167 |goto 55.95,74.72
step
talk Bom'bay##10578
|tip He walks around this area.
accept Cleaning Up the Coastline##25170 |goto 55.72,75.37
step
kill Surf Crawler##3106+
|tip Underwater and along the shore around this area.
collect 5 Crawler Mucus##4888 |q 25170/1 |goto 57.98,79.11
stickystart "Slay_Northwatch_Lugs"
step
click Northwatch Supply Crate##202405+
|tip They look like large wooden crates with red plus signs on them.
|tip They're being carried by Northwatch Lugs around this area.
Destroy #3# Northwatch Supply Crates |q 25167/1 |goto 51.85,80.25
step
label "Slay_Northwatch_Lugs"
kill 10 Northwatch Lug##39249 |q 25167/2 |goto 51.85,80.25
|tip They are carrying huge wooden crates around this area. |notinsticky
step
talk Bom'bay##10578
|tip He walks around this area.
turnin Cleaning Up the Coastline##25170 |goto 55.72,75.37
accept Never Trust a Big Barb and a Smile##25165 |goto 55.72,75.37
step
talk Master Gadrin##3188
turnin Breaking the Chain##25167 |goto 55.95,74.72
accept Purge the Valley##25168 |goto 55.95,74.72
step
talk Lar Prowltusk##3140
|tip Inside the building.
accept The War of Northwatch Aggression##25169 |goto 55.42,75.10
step
kill Clattering Scorpid##3125+
|tip They will start to cast their Envenom ability.
use Poison Extraction Totem##52505
|tip Use it when they are casting Envenom.
|tip The Totem will catch the venom.
Collect #6# Samples of Scorpid Venom |q 25165/1 |goto 53.06,75.75
stickystart "Slay_Northwatch_Troops"
step
Enter the canyon |goto 50.92,79.14 < 20 |only if walking
click the Attack Plan: Valley of Trials##3189
|tip It looks like an white unrolled scroll around this camp.
Burn the Attack Plan: Valley of Trials |q 25169/1 |goto 49.73,81.61
step
click the Attack Plan: Sen'jin Village##3190
|tip It looks like an white unrolled scroll around this camp.
Burn the Attack Plan: Sen'jin Village |q 25169/2 |goto 47.94,77.50
step
click the Attack Plan: Orgrimmar##3192
|tip It looks like an white unrolled scroll around this camp.
Burn the Attack Plan: Orgrimmar |q 25169/3 |goto 46.43,78.92
step
label "Slay_Northwatch_Troops"
Kill Northwatch enemies around this area
Slay #12# Northwatch Troops |q 25168/1 |goto 48.73,79.39
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |complete isdead |goto 48.73,79.39 |q 25169
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |complete not isdead |goto 57.49,73.26 |q 25169 |zombiewalk
step
talk Master Gadrin##3188
turnin Purge the Valley##25168 |goto 55.95,74.72
step
talk Bom'bay##10578
|tip He walks around this area.
turnin Never Trust a Big Barb and a Smile##25165 |goto 55.72,75.37
step
talk Lar Prowltusk##3140
turnin The War of Northwatch Aggression##25169 |goto 55.42,75.10
step
talk Master Gadrin##3188
accept Riding On##25171 |goto 55.95,74.72
step
talk Raider Jhash##10676
Ask him _"Can I catch a ride to Razor Hill?"_
Begin Riding to Razor Hill |invehicle |goto 55.26,74.65 |q 25171
step
Ride to Razor Hill |outvehicle |goto 52.49,44.22 |q 25171 |notravel
step
talk Burok##41140
fpath Razor Hill |goto 53.09,43.58
step
talk Gar'Thok##3139
|tip Upstiars inside the building.
turnin Riding On##25171 |goto 51.95,43.50
accept From Bad to Worse##25173 |goto 51.95,43.50
step
talk Innkeeper Grosk##6928
|tip Inside the building.
home Razor Hill |goto 51.51,41.65
step
talk Gail Nozzywig##39423
accept Exploiting the Situation##25176 |goto 53.11,43.13
stickystart "Collect_Kul_Tiras_Treasure"
stickystart "Slay_Northwatch_Sharpshooters"
stickystart "Slay_Northwatch_Marines"
step
kill Lieutenant Palliter##39269 |q 25173/3 |goto 59.70,58.31
|tip Upstairs inside the fort, in the large room.
step
label "Collect_Kul_Tiras_Treasure"
click Kul Tiras Treasure##202648+
|tip They look like wooden chests on the ground around this area.
collect 6 Kul Tiras Treasure##52558 |q 25176/1 |goto 58.03,57.23
step
label "Slay_Northwatch_Sharpshooters"
kill 6 Northwatch Sharpshooter##39268 |q 25173/2 |goto 58.03,57.23
step
label "Slay_Northwatch_Marines"
kill 6 Northwatch Marine##39267 |q 25173/1 |goto 58.03,57.23
step
Allow Enemies to Kill You
|tip Since you are less than level 11, you will not receive resurrection sickness when you revive.
|tip This basically makes dying have no real penalty at this level.
|tip This will allow you to travel a long distance quickly.
Die on Purpose |complete isdead |goto 58.03,57.23 |q 25173
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer |complete not isdead |goto 53.50,44.45 |q 25173 |zombiewalk
step
talk Gar'Thok##3139
|tip Upstairs inside the building.
turnin From Bad to Worse##25173 |goto 51.95,43.50
accept Storming the Beaches##25177 |goto 51.95,43.50
step
talk Gail Nozzywig##39423
turnin Exploiting the Situation##25176 |goto 53.11,43.13
accept Shipwreck Searching##25178 |goto 53.11,43.13
stickystart "Collect_Gnomish_Tools"
stickystart "Kill_Foaming_Sea_Elementals"
step
talk Injured Razor Hill Grunt##39270+
|tip They look like orcs laying on the ground around this area.
accept Loss Reduction##25179 |goto 58.75,46.24
step
talk Injured Razor Hill Grunt##39270+
|tip They look like orcs laying on the ground around this area.
Rescue #4# Injured Razor Hill Grunts |q 25179/1 |goto 58.75,46.24
step
label "Collect_Gnomish_Tools"
click Gnomish Toolboxes##3236+
|tip They look like small metal chests on the ground around this area.
collect 4 Gnomish Tools##4863 |q 25178/1 |goto 58.75,46.24
step
label "Kill_Foaming_Sea_Elementals"
kill 11 Foaming Sea Elemental##39272 |q 25177/1 |goto 58.75,46.24
step
talk Gail Nozzywig##39423
turnin Shipwreck Searching##25178 |goto 53.11,43.13
accept Thonk##25227 |goto 53.11,43.13
step
talk Gar'Thok##3139
|tip Upstairs inside the building.
turnin Storming the Beaches##25177 |goto 51.95,43.50
turnin Loss Reduction##25179 |goto 51.95,43.50
step
talk Orgnil Soulscar##3142
accept The Burning Blade##25232 |goto 52.24,43.15
step
talk Grimtak##3881
accept Meats to Orgrimmar##6365 |goto Durotar 50.74,42.84
|only if Orc or Troll
step
talk Burok##41140
turnin Meats to Orgrimmar##6365 |goto 53.09,43.58
accept Ride to Orgrimmar##6384 |goto 53.09,43.58
|only if Orc or Troll
step
talk Innkeeper Gryshka##6929
|tip Inside the building.
turnin Ride to Orgrimmar##6384 |goto Orgrimmar 53.63,78.76
accept Doras the Wind Rider Master##6385 |goto Orgrimmar 53.63,78.76
|only if Orc or Troll
step
talk Doras##3310
|tip On top of the plateau.
|tip Ride the elevator up to reach her.
turnin Doras the Wind Rider Master##6385 |goto 49.66,59.22
accept Return to Razor Hill##6386 |goto 49.66,59.22
|only if Orc or Troll
step
talk Grimtak##3881
turnin Return to Razor Hill##6386 |goto Durotar 50.74,42.84
|only if Orc or Troll
step
talk Thonk##39323
|tip At the top of the tower.
turnin Thonk##25227 |goto Durotar 49.59,40.17
accept Lost in the Floods##25187 |goto Durotar 49.59,40.17
step
use Thonk's Spyglass##52514
|tip Use it at the top of the tower.
|tip Don't cancel the cinematic.
Find Raggaran |q 25187/1 |goto 49.54,40.38
step
use Thonk's Spyglass##52514
|tip Use it at the top of the tower.
|tip Don't cancel the cinematic.
Find the Flooded Hut |q 25187/2 |goto 49.54,40.38
step
use Thonk's Spyglass##52514
|tip Use it at the top of the tower.
|tip Don't cancel the cinematic.
Find Misha |q 25187/3 |goto 49.54,40.38
step
use Thonk's Spyglass##52514
|tip Use it at the top of the tower.
|tip Don't cancel the cinematic.
Find Zen'Taji |q 25187/4 |goto 49.54,40.38
step
talk Thonk##39323
|tip At the top of the tower.
turnin Lost in the Floods##25187 |goto 49.59,40.17
accept Watershed Patrol##25188 |goto 49.59,40.17
step
talk Misha Tor'kren##3193
|tip She walks around this area.
accept Lost But Not Forgotten##25193 |goto 43.38,30.63
step
kill Dreadmaw Toothgnasher##39452+
|tip Underwater.
collect 250 Durotar Crocolisk Tooth##60615 |q 25193/1 |goto 38.80,35.06
step
talk Misha Tor'kren##3193
|tip She walks around this area.
turnin Lost But Not Forgotten##25193 |goto 43.38,30.63
step
Help Misha Tor'kren |q 25188/3 |goto 43.38,30.63
step
talk Grandmatron Tekla##39325
|tip In the doorway of the building.
accept Spirits Be Praised##25189 |goto 40.49,35.36
step
Escort Grandmatron Tekla to Raggaran |q 25189/1 |goto 42.60,49.95 |notravel
|tip Follow Grandmatron Tekla and protect her as she walks.
|tip She eventually walks to this location.
step
talk Raggaran##39326
turnin Spirits Be Praised##25189 |goto 42.70,49.90
accept Raggaran's Rage##25190 |goto 42.70,49.90
step
Help Grandmatron Tekla |q 25188/1 |goto 42.70,49.90
stickystart "Slay_Razormane_Scouts"
step
kill 4 Razormane Quilboar##3111 |q 25190/1 |goto 47.34,49.31
step
label "Slay_Razormane_Scouts"
kill 4 Razormane Scout##3112 |q 25190/2 |goto 44.15,49.57
step
talk Raggaran##39326
turnin Raggaran's Rage##25190 |goto 42.70,49.90
accept Raggaran's Fury##25192 |goto 42.70,49.90
stickystart "Slay_Razormane_Battleguards"
step
kill 5 Razormane Dustrunner##3113 |q 25192/1 |goto 38.02,55.22
step
label "Slay_Razormane_Battleguards"
kill 5 Razormane Battleguard##3114 |q 25192/2 |goto 38.02,55.22
step
talk Raggaran##39326
turnin Raggaran's Fury##25192 |goto 42.70,49.90
step
Help Raggaran |q 25188/2 |goto 42.70,49.90
step
talk Zen'Taji##39324
accept Unbidden Visitors##25194 |goto 35.85,41.37
step
kill Wayward Plainstrider##39337+
|tip Don't kill them, just get them to low health.
|tip They will run away.
|tip You can find more along the coastline.
Return #3# Wayward Plainstriders |q 25194/1 |goto 35.3,39.6
step
talk Zen'Taji##39324
turnin Unbidden Visitors##25194 |goto 35.85,41.37
accept That's the End of That Raptor##25195 |goto 35.85,41.37
step
kill Screamslash##39385 |q 25195/1 |goto 35.55,29.25
|tip It looks like a dark green raptor that walks around this area.
Also check around [35.55,33.10]
step
talk Zen'Taji##39324
turnin That's the End of That Raptor##25195 |goto 35.85,41.37
step
Help Zen'Taji |q 25188/4 |goto 35.85,41.37
step
talk Thonk##39323
|tip At the top of the tower.
turnin Watershed Patrol##25188 |goto 49.59,40.17
step
Kill Burning Blade enemies around this area
|tip Inside the cave.
|tip Run across the huge flat rocks to cross over the canyon and reach the cave.
collect 6 Burning Blade Spellscroll##52564 |q 25232/1 |goto 52.83,28.80
step
Leave the cave |goto 52.83,28.80 < 15 |walk |only if subzone("Dustwind Cave") and indoors()
talk Orgnil Soulscar##3142
turnin The Burning Blade##25232 |goto 52.24,43.15
accept The Dranosh'ar Blockade##25196 |goto 52.24,43.15
step
talk Rezlak##3293
accept Winds in the Desert##834 |goto 46.37,22.94
accept Securing the Lines##835 |goto 46.37,22.94
stickystart "Slay_Durotar_Harpies"
step
click Stolen Supply Sack##3290+
|tip They look like small tan sacks on the ground around this area.
collect 5 Sack of Supplies##111735 |q 834/1 |goto 49.34,22.19
You can find more around [50.65,26.39]
step
label "Slay_Durotar_Harpies"
Kill Dustwind enemies around this area |kill Dustwind Pillager##3116, Dustwind Harpy##3115
|tip They look like harpies.
Slay #12# Durotar Harpies |q 835/1 |goto 49.34,22.19
You can find more around [50.65,26.39]
step
talk Rezlak##3293
turnin Winds in the Desert##834 |goto 46.37,22.94
turnin Securing the Lines##835 |goto 46.37,22.94
step
talk Gor the Enforcer##39379
|tip Inside the building.
turnin The Dranosh'ar Blockade##25196 |goto 45.00,14.77
accept Fizzled##25260 |goto 45.00,14.77
accept Thunder Down Under##25236 |goto 45.00,14.77
step
talk Shin Stonepillar##39380
|tip Inside the building.
accept The Wolf and The Kodo##25205 |goto 44.90,14.83
step
talk Shin Stonepillar##39380
|tip Inside the building.
Ask him _"Can you tell me your fable, Shin?"_
Begin the Shaman's Tale |invehicle |goto 44.90,14.83 |q 25205
step
Watch the dialogue
|tip Stand near the 2 kodos fighting.
|tip They can be in other locations around this area.
Listen to the Shaman's Fable |q 25205/1 |goto 52.95,13.54
step
talk Shin Stonepillar##39380
|tip Inside the building.
turnin The Wolf and The Kodo##25205 |goto 44.90,14.83
step
talk Gor the Enforcer##39379
|tip Inside the building.
accept Ignoring the Warnings##25206 |goto 45.00,14.77
step
Kill enemies around this area |kill Furious Earthguard##39595, Teeming Waterguard##39596
|tip They look like rock and water elementals.
Slay #12# Warring Elementals |q 25206/1 |goto 38.69,19.03
stickystart "Remove_Drowned_Thunder_Lizards"
step
clicknpc Fizzle Darkclaw##3203
|tip Underwater.
Choose _<Attempt to remove the orb.>_
Then choose _<Attempt to remove Fizzle's hand, then.>_
collect Fizzle's Orb##52580 |q 25260/1 |goto 42.11,26.67
step
label "Remove_Drowned_Thunder_Lizards"
clicknpc Drowned Thunder Lizard##39464+
|tip They look like dead dinosaurs.
|tip Underwater around this area. |notinsticky
Remove #8# Drowned Thunder Lizards |q 25236/1 |goto 41.70,24.82
step
talk Gor the Enforcer##39379
|tip Inside the building.
turnin Ignoring the Warnings##25206 |goto 45.00,14.77
turnin Thunder Down Under##25236 |goto 45.00,14.77
turnin Fizzled##25260 |goto 45.00,14.77
accept Margoz##25261 |goto 45.00,14.77
accept Beyond Durotar##25648 |goto 45.00,14.77
step
talk Margoz##3208
turnin Margoz##25261 |goto 56.41,20.04
accept Skull Rock##25262 |goto 56.41,20.04
step
talk Vek'nag##39604
|tip He walks around this area.
accept Sent for Help##25256 |goto 56.34,20.28
step
talk Spiketooth##39590
turnin Sent for Help##25256 |goto 58.83,23.17
accept Ghislania##25257 |goto 58.83,23.17
accept Griswold Hanniston##25258 |goto 58.83,23.17
accept Gaur Icehorn##25259 |goto 58.83,23.17
step
talk Griswold Hanniston##39353
Tell him _"I'm here to challenge you in combat."_
kill Griswold Hanniston##39353
|tip He will eventually surrender.
Defeat Griswold Hanniston |q 25258/1 |goto 59.05,22.26
step
talk Ghislania##39351
Tell her _"I'm here to challenge you in combat."_
kill Ghislania##39351
|tip She will eventually surrender.
Defeat Ghislania |q 25257/1 |goto 59.67,22.61
step
talk Gaur Icehorn##39352
Tell him _"I'm here to challenge you in combat."_
kill Gaur Icehorn##39352
|tip He will eventually surrender.
Defeat Gaur Icehorn |q 25259/1 |goto 59.42,23.46
step
talk Spiketooth##39590
turnin Ghislania##25257 |goto 58.83,23.17
turnin Griswold Hanniston##25258 |goto 58.83,23.17
turnin Gaur Icehorn##25259 |goto 58.83,23.17
step
Kill Burning Blade enemies around this area
|tip Inside the cave.
collect 6 Searing Collar##4871 |q 25262/1 |goto 54.99,9.71
step
Leave the cave |goto 54.99,9.71 < 15 |walk |only if subzone("Skull Rock") and indoors()
talk Margoz##3208
turnin Skull Rock##25262 |goto 56.41,20.04
accept Neeru Fireblade##25263 |goto 56.41,20.04
step
talk Gotura Fourwinds##35068
|tip Inside the building.
accept Preserving the Barrens##26642 |goto Orgrimmar/0 47.64,71.21
step
talk Neeru Fireblade##3216
|tip Inside the building, inside The Drag.
turnin Neeru Fireblade##25263 |goto Orgrimmar/1 58.18,54.62
accept Ak'Zeloth##25264 |goto Orgrimmar/1 58.18,54.62
step
talk Takrin Pathseeker##3336
accept Conscript of the Horde##840 |goto Durotar 50.85,43.59
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Kalimdor (1-60)\\Mulgore (1-10) [Tauren Starter]",{
author="support@zygorguides.com",
condition_suggested=function() return raceclass('Tauren') and level<=11 end,
next="Leveling Guides\\Kalimdor (1-60)\\The Barrens (10-20)",
startlevel=1,
dynamic=true,
},[[
step
talk Chief Hawkwind##2981
accept The First Step##14449 |goto Mulgore 45.15,75.44
step
talk Grull Hawkwind##2980
turnin The First Step##14449 |goto 48.95,78.35
accept Rite of Strength##14452 |goto 48.95,78.35
step
kill 6 Bristleback Invader##36943 |q 14452/1 |goto 50.32,79.12
step
talk Grull Hawkwind##2980
turnin Rite of Strength##14452 |goto 48.95,78.35
accept Our Tribe, Imprisoned##24852 |goto 48.95,78.35
step
click Quilboar Cage##202112+
|tip The ylook like yellow wooden cages.
Free #4# Braves |q 24852/1 |goto 52.24,77.24
step
talk Grull Hawkwind##2980
turnin Our Tribe, Imprisoned##24852 |goto 48.95,78.35
accept Go to Adana##14458 |goto 48.95,78.35
step
talk Adana Thunderhorn##36694
turnin Go to Adana##14458 |goto 46.18,82.68
accept Stop the Thorncallers##14455 |goto 46.18,82.68
accept Rite of Courage##14456 |goto 46.18,82.68
stickystart "Kill_Bristleback_Thorncallers"
step
kill Bristleback Gun Thief##36708+
collect 7 Stolen Rifle |q 14456/1 |goto 47.08,87.44
step
label "Kill_Bristleback_Thorncallers"
kill 7 Bristleback Thorncaller##36697 |q 14455/1 |goto 47.08,87.44
step
talk Adana Thunderhorn##36694
turnin Stop the Thorncallers##14455 |goto 46.18,82.68
turnin Rite of Courage##14456 |goto 46.18,82.68
accept The Battleboars##14459 |goto 46.18,82.68
accept Feed of Evil##14461 |goto 46.18,82.68
step
talk Rohaku Stonehoof##44927
accept Etched Note##3092 |goto 46.15,82.30		|only if Tauren Hunter
accept Simple Note##3091 |goto 46.15,82.30		|only if Tauren Warrior
accept Verdant Note##3094 |goto 46.15,82.30		|only if Tauren Druid
accept Rune-Inscribed Note##3093 |goto 46.15,82.30	|only Tauren Shaman
accept Hallowed Note##27014 |goto 46.15,82.30		|only if Tauren Priest
accept Consecrated Note##27015 |goto 46.15,82.30	|only Tauren Paladin
stickystart "Kill_Armored_Battleboars"
step
use Adana's Torch##49539
Burn the First Trough |q 14461/1 |goto 44.71,87.74
step
use Adana's Torch##49539
Burn the Second Trough |q 14461/2 |goto 44.35,88.68
step
use Adana's Torch##49539
Burn the Third Trough |q 14461/3 |goto 45.29,89.05
step
label "Kill_Armored_Battleboars"
kill 10 Armored Battleboar##36696 |q 14459/1 |goto 44.83,88.77
step
talk Adana Thunderhorn##36694
turnin The Battleboars##14459 |goto 46.18,82.68
turnin Feed of Evil##14461 |goto 46.18,82.68
accept Rite of Honor##14460 |goto 46.18,82.68
step
kill Chief Squealer Thornmantle##36712
collect Mane of Thornmantle |q 14460/1 |goto 41.09,81.41
step
talk Chief Hawkwind##2981
turnin Rite of Honor##14460 |goto 45.15,75.44
accept Last Rites, First Rites##24861 |goto 45.15,75.44
step
use the Water Pitcher##50465
Place the Offering |q 24861/1 |goto 45.12,75.38
step
talk Chief Hawkwind##2981
turnin Last Rites, First Rites##24861 |goto 45.15,75.44
accept Rites of the Earthmother##23733 |goto 45.15,75.44
step
talk Sunwalker Helaku##37737
turnin Consecrated Note##27015 |goto 44.96,75.34
accept The Way of the Sunwalkers##27023 |goto 44.96,75.34
|only if Tauren Paladin
step
talk Sunwalker Helaku##37737
Learn Judgement |q 27023/2 |goto 44.96,75.34
|only if Tauren Paladin
step
Practice Judgement |q 27023/1 |goto 45.43,75.40
|tip |tip Use your Seal of Righteousness ability, then use Judgement on a Training Dummy.
|only if Tauren Paladin
step
talk Sunwalker Helaku##37737
turnin The Way of the Sunwalkers##27023 |goto 44.96,75.34
|only if Tauren Paladin
step
talk Seer Ravenfeather##37724
turnin Hallowed Note##27014 |goto 44.99,75.17
accept Healing in a Flash##27066 |goto 44.99,75.17
|only if Tauren Priest
step
talk Seer Ravenfeather
Learn Flash Heal |q 27066/2 |goto 44.99,75.17
|only if Tauren Priest
step
Practice Flash Heal #5# Times |q 27066/1 |goto 45.64,75.34
|tip Use your Flash Heal ability on the Wounded Brave.
|only if Tauren Priest
step
talk Seer Ravenfeather##37724
turnin Healing in a Flash##27066 |goto 44.99,75.17
|only if Tauren Priest
step
talk Meela Dawnstrider##3062
turnin Rune-Inscribed Note##3093 |goto 45.09,75.06
accept Primal Strike##27027 |goto 45.09,75.06
|only if Tauren Shaman
step
talk Meela Dawnstrider##3062
Learn Primal Strike |q 27027/2 |goto 45.09,75.06
|only if Tauren Shaman
step
Practice Primal Strike #3# Times |q 27027/1 |goto 45.43,75.40
|tip Use your Primal Strike ability on a Training Dummy.
|only if Tauren Shaman
step
talk Meela Dawnstrider##3062
turnin Primal Strike##27027 |goto 45.09,75.06
|only if Tauren Shaman
step
talk Gart Mistrunner##3060
turnin Verdant Note##3094 |goto 45.22,75.13
accept Rejuvenating Touch##27067 |goto 45.22,75.13
|only if Tauren Druid
step
talk Gart Mistrunner##3060
Learn Rejuvenation |q 27067/2 |goto 45.22,75.13
|only if Tauren Druid
step
Practice Rejuvenation |q 27067/1 |goto 45.64,75.34
|tip Use your Rejuvenation ability on the Wounded Brave.
|only if Tauren Druid
step
talk Gart Mistrunner##3060
turnin Rejuvenating Touch2##27067 |goto 45.22,75.13
|only if Tauren Druid
step
talk Harutt Thunderhorn##3059
turnin Simple Note##3091 |goto 44.99,75.51
accept The First Lesson##27020 |goto 44.99,75.51
|only if Tauren Warrior
step
talk Harutt Thunderhorn##3059
Learn Charge |q 27020/2 |goto 44.99,75.51
|only if Tauren Warrior
step
Practice Charge |q 27020/1 |goto 45.43,75.40
|tip Use your Charge ability on a Training Dummy.
|only if Tauren Warrior
step
talk Harutt Thunderhorn##3059
turnin The First Lesson##27020 |goto 44.99,75.51
|only if Tauren Warrior
step
talk Lanka Farshot##3061
turnin Etched Note##3092 |goto 45.27,75.31
accept The Hunter's Path##27021 |goto 45.27,75.31
|only if Tauren Hunter
step
talk Lanka Farshot##3061
Learn Steady Shot |q 27021/2 |goto 45.27,75.31
|only if Tauren Hunter
step
Practice Steady Shot #5# Times |q 27021/1 |goto 45.43,75.40
|tip Use your Steady Shot ability on a Training Dummy.
|only if Tauren Hunter
step
talk Lanka Farshot##3061
turnin The Hunter's Path##27021 |goto 45.27,75.31
|only if Tauren Hunter
step
talk Dyami Windsoar##36803
|tip On top of the mountain.
turnin Rites of the Earthmother##23733 |goto Mulgore 41.23,76.09
accept Rite of the Winds##24215 |goto Mulgore 41.23,76.09
step
use Water of Vision##49652
|tip On top of the mountain.
Begin Flying to Bloodhoof Village |invehicle |goto 41.23,76.09 |q 24215
step
Fly to Bloodhoof Village |outvehicle |goto 47.82,59.87 |q 24215 |notravel
step
talk Ahmo Thunderhorn##36644
turnin Rite of the Winds##24215 |goto 47.66,59.59 |only if haveq(24215) or completedq(24215)
accept Sharing the Land##14438 |goto 47.66,59.59
step
talk Tak##40809
fpath Bloodhoof Village |goto 47.44,58.64
step
talk Innkeeper Kauth##6747
|tip Inside the building.
home Bloodhoof Village |goto 46.82,60.45 |q 761 |future
step
talk Mull Thunderhorn##2948
accept Poison Water##20440 |goto Mulgore 48.61,59.81
|only if Tauren
step
talk Harken Windtotem##2947
|tip Inside the building.
accept Swoop Hunting##761 |goto Mulgore 48.79,58.79
stickystart "Collect_Prairie_Wolf_Paws"
stickystart "Collect_Trophy_Swoop_Quills"
step
kill Adult Plainstrider##2956+
|tip All around this area.
collect 4 Plainstrider Talon##4759 |q 20440/2 |goto Mulgore 54.00,62.34
|only if Tauren
step
label "Collect_Prairie_Wolf_Paws"
kill Prairie Wolf##2958+
|tip All around this area. |notinsticky
collect 6 Prairie Wolf Paw##4758 |q 20440/1 |goto 54.00,62.34
|only if Tauren
step
label "Collect_Trophy_Swoop_Quills"
kill Swoop##2970+
|tip All around this area. |notinsticky
collect 8 Trophy Swoop Quill##4769 |q 761/1 |goto Mulgore 54.00,62.34
step
Kill Palemane enemies around this area |kill Palemane Poacher##2951, Palemane Tanner##2949, Palemane Skinner##2950
|tip They look like gnolls.
Slay #15# Palemane Gnolls |q 14438/1 |goto 53.50,71.22
step
talk Harken Windtotem##2947
|tip Inside the building.
turnin Swoop Hunting##761 |goto 48.79,58.79
step
talk Mull Thunderhorn##2948
turnin Poison Water##20440 |goto Mulgore 48.61,59.81
accept Winterhoof Cleansing##24440 |goto Mulgore 48.61,59.81
|only if Tauren
step
talk Ruul Eagletalon##2985
accept Dangers of the Windfury##743 |goto Mulgore 47.51,61.32
step
talk Ahmo Thunderhorn##36644
turnin Sharing the Land##14438 |goto 47.66,59.59
accept The Restless Earth##14491 |goto 47.66,59.59
accept Morin Cloudstalker##24459 |goto 47.66,59.59
step
talk Maur Raincaller##3055
accept Mazzranache##26188 |goto 47.16,56.66
step
talk Ahab Wheathoof##23618
accept Kyle's Gone Missing!##11129 |goto 48.34,53.09
step
kill Adult Plainstrider##2956+
collect Tender Strider Meat##33009 |q 11129 |goto 54.94,62.68
step
use the Winterhoof Cleansing Totem##5411
Cleanse the Well |q 24440/1 |goto Mulgore 53.51,65.22
|only if Tauren
step
talk Morin Cloudstalker##2988
turnin Morin Cloudstalker##24459 |goto Mulgore 57.05,60.43
accept The Ravaged Caravan##749 |goto Mulgore 57.05,60.43
step
Kill Windfury enemies around this area |kill Windfury Harpy##2962, Windfury Wind Witch##2963
|tip They look like harpies.
collect 8 Windfury Talon##4751 |q 743/1 |goto 62.98,69.72
step
talk Ruul Eagletalon##2985
turnin Dangers of the Windfury##743 |goto 47.51,61.32
step
use the Tender Strider Meat##33009
|tip Use it on Kyle the Frenzied.
|tip He looks like a white wolf that runs around Bloodhoof Village.
|tip Wait here and he will eventually run near you.
Feed Kyle |q 11129/1 |goto 48.60,61.33
step
talk Mull Thunderhorn##2948
turnin Winterhoof Cleansing##24440 |goto Mulgore 48.61,59.81
accept Thunderhorn Totem##24441 |goto Mulgore 48.61,59.81
|only if Tauren
step
talk Ahab Wheathoof##23618
turnin Kyle's Gone Missing!##11129 |goto Mulgore 48.34,53.09
step
click Sealed Supply Crate##2908
turnin The Ravaged Caravan##749 |goto 53.52,48.28
accept The Ravaged Caravan##751 |goto 53.52,48.28
stickystart "Collect_Flatland_Cougar_Items"
step
kill Prairie Stalker##2959+
|tip They look like wolves.
|tip All around this area.
collect 6 Stalker Claws##4801 |q 24441/1 |goto 56.44,54.84
step
label "Collect_Flatland_Cougar_Items"
kill Flatland Cougar##3035+
|tip They look like mountain lions.
|tip All around this area. |notinsticky
collect Flatland Cougar Femur##4805 |q 26188/1 |goto 56.44,54.84
collect 6 Cougar Claws##4802 |q 24441/2 |goto 56.44,54.84
step
talk Morin Cloudstalker##2988
turnin The Ravaged Caravan##751 |goto 57.05,60.43 |autoscript function goal:IsComplete() return completedq(self.questid),true end
accept The Venture Co.##26179 |goto 57.05,60.43
accept Supervisor Fizsprocket##26180 |goto 57.05,60.43
stickystart "Slay_Venture_Co_Workers"
step
Follow the path up and enter the mine |goto 60.91,47.03 < 15 |walk
kill Supervisor Fizsprocket##3051
|tip Inside the mine.
collect Fizsprocket's Clipboard##4819 |q 26180/1 |goto 61.21,46.31
step
label "Slay_Venture_Co_Workers"
kill 7 Venture Co. Worker##2978 |q 26179/1 |goto 60.91,47.03
|tip Inside and outside the mine. |notinsticky
step
Leave the mine |goto 60.91,47.03 < 15 |walk |only if subzone("The Venture Co. Mine") and indoors()
talk Morin Cloudstalker##2988
turnin The Venture Co.##26179 |goto 57.05,60.43
turnin Supervisor Fizsprocket##26180 |goto 57.05,60.43
step
talk Mull Thunderhorn##2948
turnin Thunderhorn Totem##24441 |goto Mulgore 48.61,59.81
accept Thunderhorn Cleansing##24456 |goto Mulgore 48.61,59.81
|only if Tauren
step
talk Varg Windwhisper##3079
|tip Inside the building.
accept A Bundle of Hides##6361 |goto 46.06,58.20
|only if Tauren
step
talk Tak##40809
turnin A Bundle of Hides##6361 |goto 47.44,58.64
accept Ride to Thunder Bluff##6362 |goto 47.44,58.64
|only if Tauren
step
talk Ahanu##8359
|tip Inside the building.
turnin Ride to Thunder Bluff##6362 |goto Thunder Bluff 45.74,55.84
accept Tal the Wind Rider Master##6363 |goto Thunder Bluff 45.74,55.84
|only if Tauren
step
talk Tal##2995
|tip At the top of the tower.
turnin Tal the Wind Rider Master##6363 |goto 47.02,49.61
accept Return to Varg##6364 |goto 47.02,49.61
|only if Tauren
step
talk Varg Windwhisper##3079
|tip Inside the building.
turnin Return to Varg##6364 |goto Mulgore 46.06,58.20
|only if Tauren
step
talk Maur Raincaller##3055
turnin Mazzranache##26188 |goto Mulgore 47.16,56.66
step
use the Thunderhorn Cleansing Totem##5415
Cleanse the Well |q 24456/1 |goto Mulgore 44.80,45.73
|only if Tauren
step
use the Drum of Soothed Earth##49647
|tip Use it on Agitated Earth Spirits.
|tip They look like rock elementals.
Calm #6# Spirits |q 14491/1 |goto Mulgore 32.92,48.84
step
talk Ahmo Thunderhorn##36644
turnin The Restless Earth##14491 |goto 47.66,59.59
step
talk Mull Thunderhorn##2948
turnin Thunderhorn Cleansing##24456 |goto Mulgore 48.61,59.81
accept Rite of Vision##24457 |goto Mulgore 48.61,59.81
|only if Tauren
step
talk Zarlman Two-Moons##3054
turnin Rite of Vision##24457 |goto 47.89,57.10
accept Rite of Vision##20441 |goto 47.89,57.10
|only if Tauren
step
use the Water of Vision##49651
Consume the Water of Vision |q 20441/1 |goto 47.89,57.10
|only if Tauren
step
Begin Traveling to Camp Sungraze |invehicle |goto 47.89,57.10 |q 20441
step
Travel to Camp Sungraze |outvehicle |goto 49.37,17.49 |q 20441 |notravel
|only if Tauren
step
talk Una Wildmane##37024
turnin Rite of Vision##20441 |goto 49.37,17.32
accept Wildmane Totem##24523 |goto 49.37,17.32
|only if Tauren
step
talk Lorekeeper Raintotem##3233
accept A Sacred Burial##833 |goto Mulgore 49.52,17.10
step
talk Skorn Whitecloud##3052
accept The Hunter's Way##861 |goto Mulgore 49.68,17.23
|only if Tauren and not (haveq(844) or completedq(844))
step
talk Eyahn Eagletalon##2987
accept Preparation for Ceremony##744 |goto Mulgore 49.59,17.59
stickystart "Collect_Flatland_Prowler_Claws"
step
kill Prairie Wolf Alpha##2960+
|tip They look like wolves.
|tip All around this area.
collect 4 Prairie Alpha Tooth##4803 |q 24523/1 |goto 49.65,21.13
step
label "Collect_Flatland_Prowler_Claws"
kill Flatland Prowler##3566+
|tip They look like stealthed cougars.
|tip All around this area. |notinsticky
collect 4 Flatland Prowler Claw |q 861/1 |goto Mulgore 49.65,21.13
|only if haveq(861) or completedq(861)
stickystart "Collect_Azure_Feathers"
step
kill Windfury Matriarch##2965+
|tip They look like white harpies.
collect 6 Bronze Feather##4753 |q 744/2 |goto Mulgore 55.35,14.49
step
label "Collect_Azure_Feathers"
kill Windfury Sorceress##2964+
|tip They look like blue harpies.
collect 6 Azure Feather##4752 |q 744/1 |goto 55.35,14.49
step
label "Kill_Bristleback_Interlopers"
kill 8 Bristleback Interloper##3232 |q 833/1 |goto 60.06,23.80
step
talk Eyahn Eagletalon##2987
turnin Preparation for Ceremony##744 |goto 49.59,17.59
step
talk Skorn Whitecloud##3052
turnin The Hunter's Way##861 |goto Mulgore 49.68,17.23
|only if Tauren and not (haveq(844) or completedq(844))
step
talk Lorekeeper Raintotem##3233
turnin A Sacred Burial##833 |goto Mulgore 49.52,17.10
step
talk Una Wildmane##37024
turnin Wildmane Totem##24523 |goto Mulgore 49.37,17.32
accept Wildmane Cleansing##24524 |goto Mulgore 49.37,17.32
|only if Tauren
step
use the Wildmane Cleansing Totem##5416
Cleanse the Wildmane Well |q 24524/1 |goto 43.26,16.25
|only if Tauren
step
talk Una Wildmane##37024
turnin Wildmane Cleansing##24524 |goto 49.37,17.32
accept Journey into Thunder Bluff##24550 |goto 49.37,17.32
|only if Tauren
step
talk Baine Bloodhoof##2993
|tip In the doorway of the building.
|tip Ride an elevator up to enter Thunder Bluff.
turnin Journey into Thunder Bluff##24550 |goto Thunder Bluff 60.26,51.66
accept War Dance##24540 |goto Thunder Bluff 60.26,51.66
|only if Tauren
step
kill Orno Grimtotem##36931 |q 24540/1 |goto Mulgore 36.96,11.89
|tip Don't worry that he's elite, you only need to reduce his health a small amount.
|tip Baine Bloodhoof will appear and kill him for you.
|tip Ride an elevator down to leave Thunder Bluff.
|only if Tauren
step
talk Baine Bloodhoof##2993
|tip In the doorway of the building.
|tip Ride an elevator up to enter Thunder Bluff.
turnin War Dance##24540 |goto Thunder Bluff 60.26,51.66
accept Walk With The Earth Mother##26397 |goto Thunder Bluff 60.26,51.66
|only if Tauren
step
talk Tal##2995
|tip At the top of the tower.
Tell him _"Send me to Orgrimmar."_
Begin Flying to Orgrimmar |invehicle |goto 47.03,49.58 |q 26397
step
Fly to Orgrimmar |outvehicle |goto Orgrimmar/0 49.27,59.37 |q 26397 |notravel
|only if Tauren
step
talk Doras##3310
|tip Up on the plateau.
fpath Orgrimmar |goto Orgrimmar/0 49.66,59.22
step
talk Garrosh Hellscream##25237
|tip Inside the building.
|tip Ride the elevator down from the plateau.
turnin Walk With The Earth Mother##26397 |goto 48.11,70.48
step
talk Gotura Fourwinds##35068
|tip Inside the building.
accept Preserving the Barrens##26642 |goto 47.64,71.21
step
talk Takrin Pathseeker##3336
accept Conscript of the Horde##840 |goto Durotar 50.85,43.59
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Kalimdor (1-60)\\The Barrens (10-20)",{
author="support@zygorguides.com",
next="Leveling Guides\\Kalimdor (1-60)\\Ashenvale (20-26)",
dynamic=true,
},[[
step
talk Kargal Battlescar##3337
turnin Preserving the Barrens##26642 |goto The Barrens 67.67,39.40 |only if haveq(26642) or completedq(26642)
accept In Defense of Far Watch##871 |goto The Barrens 67.67,39.40
step
talk Halga Bloodeye##34258
|tip She walks around this area.
accept Plainstrider Menace##844 |goto 67.50,38.74
step
Kill Plainstrider enemies around this area |kill Greater Plainstrider##3244, Fleeting Plainstrider##3246
|tip They look like large walking birds.
collect 7 Plainstrider Beak##5087 |q 844/1 |goto 67.08,36.01
You can find more Greater Plainstriders at [64.33,43.54]
step
talk Halga Bloodeye##34258
|tip She walks around this area.
turnin Plainstrider Menace##844 |goto 67.50,38.74
step
talk Ak'Zeloth##3521
turnin Ak'Zeloth##25264 |goto 67.81,40.56
only if haveq(25264)
step
talk Dorak##34284
|tip He walks around this area.
accept Through Fire and Flames##13878 |goto 66.76,45.46
stickystart "Slay_Razormane_Hunters"
stickystart "Slay_Razormane_Plunderers"
step
click Wolf Chains##8721+
|tip They look like large spikes sticking out of the ground, chained to wolves.
|tip Inside the building.
Free #3# Wolves |q 13878/1 |goto 66.81,47.46
step
label "Slay_Razormane_Hunters"
kill 3 Razormane Hunter##3265 |q 871/2 |goto 67.57,50.52
step
label "Slay_Razormane_Plunderers"
kill 8 Razormane Plunderer##3267 |q 871/1 |goto 67.57,50.52
step
talk Dorak##34284
|tip He walks around this area.
turnin Through Fire and Flames##13878 |goto 66.76,45.46
step
talk Kargal Battlescar##3337
turnin In Defense of Far Watch##871 |goto 67.67,39.40
accept The Far Watch Offensive##872 |goto 67.67,39.40
step
talk Halga Bloodeye##34258
|tip She walks around this area.
accept Supplies for the Crossroads##5041 |goto 67.50,38.74
stickystart "Collect_Crossroads_Supply_Crates"
stickystart "Kill_Razormane_Thornweavers"
stickystart "Kill_Razormane_Defenders"
step
Enter the cave |goto 65.94,52.49 < 15 |walk
kill Kreenig Snarlsnout##3438
|tip Upstairs inside the cave.
collect Kreenig Snarlsnout's Tusk##5063 |q 872/3 |goto 64.24,55.15
step
label "Collect_Crossroads_Supply_Crates"
click Crossroads Supply Crate##175708+
|tip They look like wooden crates.
|tip Inside the cave. |notinsticky
collect 5 Crossroads Supply Crate##12708 |q 5041/1 |goto 65.94,52.49
step
label "Kill_Razormane_Thornweavers"
kill 5 Razormane Thornweaver##3268 |q 872/1 |goto 65.94,52.49
|tip Inside the cave. |notinsticky
step
label "Kill_Razormane_Defenders"
kill 5 Razormane Defender##3266 |q 872/2 |goto 65.94,52.49
|tip Inside the cave. |notinsticky
step
Leave the cave |goto 65.94,52.49 < 15 |walk |only if (subzone("Thorn Hill") or subzone("Northern Barrens")) and indoors()
talk Kargal Battlescar##3337
turnin The Far Watch Offensive##872 |goto 67.67,39.40
step
talk Halga Bloodeye##34258
|tip She walks around this area.
turnin Supplies for the Crossroads##5041 |goto 67.50,38.74
accept Crossroads Caravan Pickup##13949 |goto 67.50,38.74
step
talk Halga Bloodeye##34258
|tip She walks around this area.
Tell her _"Yes, I'm ready. Let's do this thing!"_
clicknpc Lead Caravan Kodo##34430
Begin Escorting the Caravan |invehicle |goto 67.50,38.74 |q 13949
step
kill Razormane Raider##34487+
|tip They attack in waves.
|tip Use the ability on your action bar.
Escort the Caravan |q 13949/1 |goto 56.42,42.12 |notravel
step
talk Kranal Fiss##5907
|tip He walks around this area.
turnin Crossroads Caravan Pickup##13949 |goto 56.50,40.38
step
talk Togrik##34513
accept Drag it Out of Them##13961 |goto 56.58,40.29
step
use Grol'dom Net##46722
|tip Use it on a Razormane Pillager.
|tip They look like quilboars that attack nearby.
talk Razormane Pillager##34503
Choose _<Pound this chump.>_
Drag a Razormane |havebuff Dragging a Razormane##65601 |goto 56.48,43.39 |q 13961
step
Deliver the Razormane Prisoner |q 13961/1 |goto 56.58,40.29
step
talk Togrik##34513
turnin Drag it Out of Them##13961 |goto 56.58,40.29
accept By Hook Or By Crook##13963 |goto 56.58,40.29
step
talk Captured Razormane##34523
Choose _<Punch him in the mouth.>_
Choose _<Kick him in his big fat face.>_
|tip Choose either of these options until the Captured Razormane gives in.
Interrogate the Razormane Prisoner |q 13963/1 |goto 56.61,39.85
step
talk Togrik##34513
turnin By Hook Or By Crook##13963 |goto 56.58,40.29
accept The Tortusk Takedown##13968 |goto 56.58,40.29
step
talk Kranal Fiss##5907
|tip He walks around this area.
accept Grol'dom's Missing Kodo##13969 |goto 56.50,40.38
step
talk Mankrik##3432
accept Consumed by Hatred##899 |goto 55.17,41.02
step
talk Una Wolfclaw##34560
|tip She walks around inside the building.
accept The Grol'dom Militia##13973 |goto 54.02,40.93
step
kill 6 Razormane Pillager##34503 |q 13973/1 |goto 52.08,41.49
step
talk Una Wolfclaw##34560
|tip She walks around inside the building.
turnin The Grol'dom Militia##13973 |goto 54.02,40.93
step
talk Grol'dom Kodo##34547
turnin Grol'dom's Missing Kodo##13969 |goto 58.00,49.27
accept Animal Services##13970 |goto 58.00,49.27
stickystart "Collect_Stolen_Grain"
stickystart "Collect_Quilboar_Tusks"
step
kill Tortusk##34544 |q 13968/1 |goto 62.12,48.63
|tip He rides a small raptor around this area.
step
label "Collect_Stolen_Grain"
click Stolen Grain Sack##195118+
|tip They look like small tan sacks on the ground and inside buildings.
collect 5 Stolen Grain##46742 |q 13970/1 |goto 62.53,48.24
You can find more around [61.33,53.02]
step
label "Collect_Quilboar_Tusks"
Kill Razormane enemies around this area |kill Razormane Frenzy##34545, Razormane Geomancer##3269, Razormane Hunter##3265, Razormane  Mystic##3271
|tip They look like quilboars. |notinsticky
collect 30 Quilboar Tusk##5085 |q 899/1 |goto 61.88,48.73
step
talk Grol'dom Kodo##34547
turnin Animal Services##13970 |goto 58.00,49.27
accept The Kodo's Return##13971 |goto 58.00,49.27
step
talk Kranal Fiss##5907
|tip He walks around this area.
turnin The Kodo's Return##13971 |goto 56.50,40.38
step
talk Togrik##34513
turnin The Tortusk Takedown##13968 |goto 56.58,40.29
step
talk Mankrik##3432
turnin Consumed by Hatred##899 |goto 55.17,41.02
step
talk Rocco Whipshank##34578
accept Crossroads Caravan Delivery##13975 |goto 54.62,41.48
step
talk Rocco Whipshank##34578
Tell him _"Bring it on, Rocco."_
clicknpc Head Caravan Kodo##34577
|tip It will walk up to you.
Begin Escorting the Crossroads Caravan |invehicle |goto 54.62,41.48 |q 13975
step
kill Burning Blade Raider##34594+
|tip They attack in waves.
|tip Use the abilities on your action bar.
Escort the Crossroads Caravan |q 13975/1 |goto 49.62,59.43 |notravel
step
talk Thork##3429
turnin Crossroads Caravan Delivery##13975 |goto 48.70,59.60
step
talk Sergra Darkthorn##3338
accept The Zhevra##845 |goto 49.99,59.84
accept Hunting the Huntress##903 |goto 49.99,59.84
step
talk Tonga Runetotem##3448
accept The Forgotten Pools##870 |goto 49.48,58.66
step
talk Innkeeper Boorand Plainswind##3934
|tip Inside the building.
home The Crossroads |goto 49.55,57.89 |q 13998 |future
step
talk Devrak##3615
fpath The Crossroads |goto 48.70,58.67
step
talk Apothecary Helbrim##3390
accept Fungal Spores##848 |goto 48.59,58.34
stickystart "Collect_Huntress_Claws"
step
kill Zhevra Runner##3242+
|tip They look like zebras.
|tip You can find more all around the perimeter of the Crossroads.
collect 4 Zhevra Hooves##5086 |q 845/1 |goto 48.63,53.31
step
label "Collect_Huntress_Claws"
kill Savannah Huntress##3415+
|tip They look like mountain lions.
|tip You can find more all around the perimeter of the Crossroads. |notinsticky
collect 5 Huntress Claws##5096 |q 903/1 |goto 48.63,53.31
step
talk Sergra Darkthorn##3338
turnin The Zhevra##845 |goto 49.99,59.84
turnin Hunting the Huntress##903 |goto 49.99,59.84
accept Echeyakee##881 |goto 49.99,59.84
step
use Horn of Echeyakee##10327
kill Echeyakee##3475
Conquer Echeyakee |q 881/1 |goto 44.98,47.82
step
talk Telar Highstrider##34841
|tip He walks around on top of the hill.
accept Kolkar Leaders##850 |goto 38.05,46.44
step
talk Ta'jari##34613
accept A Little Diversion##13992 |goto 37.53,45.87
stickystart "Collect_Fungal_Spores"
stickystart "Slay_Kolkar_Centaurs"
step
Explore the Waters of the Forgotten Pools |q 870/1 |goto 37.28,44.86
step
kill Barak Kodobane##3394
collect Kodobane's Head##5022 |q 850/1 |goto 33.37,46.65
step
label "Collect_Fungal_Spores"
click Laden Mushroom##3640+
|tip They look like large blue mushrooms.
collect 5 Fungal Spores##5012 |q 848/1 |goto 36.56,45.15
step
label "Slay_Kolkar_Centaurs"
Kill Kolkar enemies around this area |kill Kolkar Stormer##3273, Kolkar Wrangler##3272
|tip They look like centaurs. |notinsticky
Slay #8# Kolkar Centaurs |q 13992/1 |goto 36.38,43.99
step
talk Ta'jari##34613
turnin A Little Diversion##13992 |goto 37.53,45.87
step
talk Telar Highstrider##34841
|tip He walks around on top of the hill.
turnin Kolkar Leaders##850 |goto 38.05,46.44
step
talk Tonga Runetotem##3448
turnin The Forgotten Pools##870 |goto 49.48,58.66
accept A Growing Problem##13988 |goto 49.48,58.66
step
talk Apothecary Helbrim##3390
turnin Fungal Spores##848 |goto 48.59,58.34
accept In Fungus We Trust##13998 |goto 48.59,58.34
step
talk Sergra Darkthorn##3338
turnin Echeyakee##881 |goto 49.99,59.84
accept Into the Raptor's Den##905 |goto 49.99,59.84
step
kill Sunscale Lashtail##3254+
|tip They look like raptors.
collect 3 Sunscale Feather##5165 |q 13988 |goto 48.58,72.23
step
use Sunscale Feather##5165
|tip Up on the hill.
Visit the Yellow Raptor Nest |q 905/2 |goto 48.02,76.13
step
use Sunscale Feather##5165
Visit the Blue Raptor Nest |q 905/3 |goto 48.57,74.82
step
use Sunscale Feather##5165
Visit the Red Raptor Nest |q 905/1 |goto 49.68,75.14
step
talk Shoe##34638
accept Flushing Out Verog##14072 |goto 55.20,78.40
step
use Fungal Cultures##46789
Plant the Fungal Culture |q 13998/1 |goto 55.00,78.70
step
talk Gorgal Angerscar##34634
|tip He walks around this area.
accept King of Centaur Mountain##13995 |goto 54.98,78.76
step
Watch the dialogue
|tip Up on the hill.
Kill the enemies that attack in waves |kill Kolkar Wrangler##3272, Kolkar Stormer##3273
kill Kurak##34635 |q 13995/1 |goto 54.28,78.38
Cause Some Trouble |q 13995/2 |goto 54.28,78.38
step
talk Shoe##34638
turnin King of Centaur Mountain##13995 |goto 55.20,78.40
step
click Centaur Intelligence##195240+
|tip They look like tan piece of paper inside tents and buildings.
collect 4 Centaur Intelligence##46857 |q 14072/1 |goto 52.16,76.29
You can find more around: |notinsticky
[51.32,83.80]
[53.88,87.55]
[56.36,86.09]
[57.83,82.08]
[58.45,77.60]
step
talk Shoe##34638
turnin Flushing Out Verog##14072 |goto 55.20,78.40
accept Verog the Dervish##851 |goto 55.20,78.40
step
kill Wyneth##34846
|tip Inside the building.
kill Verog the Dervish##3395
|tip He will attack after you kill Wyneth.
collect Verog's Head##5023 |q 851/1 |goto 50.93,78.86
step
talk Shoe##34638
turnin Verog the Dervish##851 |goto 55.20,78.40
step
Follow the path up the mountain |goto 58.92,81.28 < 20 |only if walking
use Tonga's Totem##46782
|tip On top of the mountain.
Watch the dialogue
Take Tonga's Eyes to the Summit |q 13988/1 |goto 60.88,85.82
step
talk Jerrik Highmountain##34626
|tip He walks around this area.
|tip On top of the mountain.
turnin A Growing Problem##13988 |goto 60.65,85.39
accept The Stagnant Oasis##877 |goto 60.65,85.39
accept Altered Beings##880 |goto 60.65,85.39
stickystart "Collect_Altered_Snapjaw_Shells"
step
click Bubbling Fissure##3737
|tip Underwater.
Test the Dried Seeds |q 877/1 |goto 55.94,80.54
step
label "Collect_Altered_Snapjaw_Shells"
kill Oasis Snapjaw##3461+
|tip They look like turtles.
|tip Underwater and all around the pond.
collect 6 Altered Snapjaw Shell##5098 |q 880/1 |goto 55.79,80.29
step
talk Sergra Darkthorn##3338
turnin Into the Raptor's Den##905 |goto 49.99,59.84
accept The Purloined Payroll##13991 |goto 49.99,59.84
step
talk Tonga Runetotem##3448
turnin The Stagnant Oasis##877 |goto 49.48,58.66
turnin Altered Beings##880 |goto 49.48,58.66
step
talk Apothecary Helbrim##3390
turnin In Fungus We Trust##13998 |goto 48.59,58.34
accept Who's Shroomin' Who?##13999 |goto 48.59,58.34
step
talk Gazrog##3464
turnin The Purloined Payroll##13991 |goto 66.86,72.79
accept Investigate the Wreckage##14066 |goto 66.86,72.79
step
talk Captain Thalo'thas Brightsun##3339
accept A Captain's Vengeance##891 |goto 67.72,74.00
step
talk Sashya##34651
|tip Inside the building.
turnin Who's Shroomin' Who?##13999 |goto 67.02,74.80
step
talk Innkeeper Wiley##6791
|tip Inside the building.
home Ratchet |goto 67.30,74.66 |q 26769 |future
step
talk Mebok Mizzyrix##3446
accept It's Gotta be the Horn##865 |goto 67.86,71.50
step
click WANTED Poster##15
accept WANTED: Cap'n Garvey##895 |goto 68.26,71.24
step
talk Bragok##16227
fpath Ratchet |goto 69.13,70.70
step
talk Gazlowe##3391
|tip Upstairs inside the building.
accept Club Foote##14034 |goto 68.41,69.07
accept Find Baron Longshore##14045 |goto 68.41,69.07
step
talk Wharfmaster Dizzywig##3453
accept Southsea Freebooters##887 |goto 69.60,72.98
accept Take it up with Tony##14052 |goto 69.60,72.98
step
talk Chief Engineer Foote##34754
|tip Inside the building.
Choose _<Club him unconscious.>_
Choose _<Rifle through his pockets.>_
collect Ship Schematics##46827 |q 14034/1 |goto 66.98,74.70
step
talk Gazlowe##3391
|tip Upstairs inside the building.
turnin Club Foote##14034 |goto 68.41,69.07
accept Love it or Limpet##14038 |goto 68.41,69.07
step
Search the Caravan Scene |q 14066/1 |goto 59.00,67.32
step
_Click the Complete Quest Box:_
turnin Investigate the Wreckage##14066
accept To Track a Thief##869
step
talk Kala'ma##34828
accept Waptor Twapping##14068 |goto 62.37,63.91
step
Discover the Source of the Tracks |q 869/1 |goto 62.57,61.68
step
_Click the Complete Quest Box:_
turnin To Track a Thief##869
accept The Stolen Silver##14067
stickystart "Collect_Wittle_Waptors"
stickystart "Slay_Sunscale_Scytheclaws"
stickystart "Slay_Sunscale_Ravagers"
step
click Stolen Silver Lockbox##195224
|tip It looks like a small grey metal chest.
collect Stolen Silver##5061 |q 14067/3 |goto 63.72,58.79
step
kill King Reaperclaw##34829
|tip It looks like a larger green raptor that walks around this area.
collect King Reaperclaw's Horn##46850 |q 865/1 |goto 64.59,56.68
Also check around [64.38,61.43]
step
label "Collect_Wittle_Waptors"
use Waptor Twap##46853
|tip Use it next to Sunscale enemies.
|tip They look like raptors around this area.
|tip Run away and wait for the raptor to be trapped.
click Woaded Waptor Twap##195239+
|tip They appear on the ground after you trap a raptor.
collect 5 Wittle Waptor##46851 |q 14068/1 |goto 64.19,59.75
step
label "Slay_Sunscale_Scytheclaws"
kill 4 Sunscale Scytheclaw##3256 |q 14067/2 |goto 64.19,59.75
step
label "Slay_Sunscale_Ravagers"
kill 8 Sunscale Ravager##44164 |q 14067/1 |goto 64.19,59.75
step
talk Kala'ma##34828
turnin Waptor Twapping##14068 |goto 62.37,63.91
step
talk Gazrog##3464
turnin The Stolen Silver##14067 |goto 66.86,72.79
step
talk Mebok Mizzyrix##3446
turnin It's Gotta be the Horn##865 |goto 67.86,71.50
stickystart "Collect_Theramore_Medals"
step
kill Lieutenant Pyre##34752 |q 891/2 |goto 70.49,84.17
|tip She walks around this area.
step
talk Baron Longshore##3467
turnin Find Baron Longshore##14045 |goto 69.91,85.20
accept The Baron's Demands##14046 |goto 69.91,85.20
step
talk Baron Longshore##3467
Choose _<Break Longshore's manacles and free him.>_
Strike a Deal with Baron Longshore |q 14046/1 |goto 69.91,85.20
step
_Click the Complete Quest Box:_
turnin The Baron's Demands##14046
accept A Most Unusual Map##14049
step
click Hanging Pirate Head##195205
collect Tattooed Pirate Head##46832 |q 14049/1 |goto 69.37,81.61
step
kill Lieutenant Buckland##34753 |q 891/1 |goto 70.88,84.76
|tip He walks around this area.
Also check around [71.55,86.59]
step
use Limpet Mine##46829
|tip Underwater.
|tip Use it next to the Thinnest Part of the Hull.
Mine the Bellipotent |q 14038/1 |goto 72.60,85.39
step
_Click the Complete Quest Box:_
turnin Love it or Limpet##14038
accept Ammo Kerblammo##14042
step
click Theramore Ammunition Stockpile##195203+
|tip They look like wooden carts full of barrels.
Destroy #5# Ammo Dumps |q 14042/1 |goto 70.39,84.25
You can find more at [71.01,91.31]
step
label "Collect_Theramore_Medals"
Kill Theramore enemies around this area |kill Theramore Preserver##3386, Theramore Marine##3385, Theramore Sharpshooter##34706, Theramore Deck Hand##34707
|tip They look like human soldiers.
collect 10 Theramore Medal##5078 |q 891/3 |goto 70.61,88.23
step
talk Tony Two-Tusk##34749
|tip Inside the building.
turnin Take it up with Tony##14052 |goto 77.25,91.39
accept Glomp is Sitting On It##14056 |goto 77.25,91.39
step
kill Glomp##34747
collect Glomp's Booty##46834 |q 14056/1 |goto 76.90,90.78
step
talk Tony Two-Tusk##34749
|tip Inside the building.
turnin Glomp is Sitting On It##14056 |goto 77.25,91.39
accept Guns. We Need Guns.##14057 |goto 77.25,91.39
stickystart "Collect_Heavy_Dwarven_Rifles"
stickystart "Slay_Fray_Island_Pirates"
step
kill Cap'n Garvey##34750
|tip Inside the building.
collect Cap'n Garvey's Head##5084 |q 895/1 |goto 77.85,89.26
step
label "Collect_Heavy_Dwarven_Rifles"
click Southsea Gun Rack##195211+
|tip They look like wooden racks holding rifles.
|tip Inside the building.
collect 6 Heavy Dwarven Rifle##46836 |q 14057/1 |goto 77.71,89.42
step
talk Tony Two-Tusk##34749
|tip Inside the building.
turnin Guns. We Need Guns.##14057 |goto 77.25,91.39
accept Mutiny, Mon!##14063 |goto 77.25,91.39
step
use Pirate Signal Horn##46838
|tip On the deck of the ship.
Watch the dialogue
|tip Follow Tony Two-Tusk downstairs inside the ship.
kill Alicia Cuthbert##34782
|tip Downstairs inside the ship, on the middle floor.
Capture the Maiden's Dagger |q 14063/1 |goto 79.77,91.06
step
label "Slay_Fray_Island_Pirates"
Kill Southsea enemies around this area |kill Southsea Privateer##3384, Southsea Cutthroat##3383
Slay #8# Fray Island Pirates |q 887/1 |goto 77.46,90.11
step
talk Captain Thalo'thas Brightsun##3339
turnin A Captain's Vengeance##891 |goto 67.72,74.00
step
talk Wharfmaster Dizzywig##3453
turnin Mutiny, Mon!##14063 |goto 69.60,72.98
turnin Southsea Freebooters##887 |goto 69.60,72.98
step
talk Gazlowe##3391
|tip Upstairs inside the building.
turnin A Most Unusual Map##14049 |goto 68.41,69.07
turnin Ammo Kerblammo##14042 |goto 68.41,69.07
turnin WANTED: Cap'n Garvey##895 |goto 68.41,69.07
accept Gazlowe's Fortune##14050 |goto 68.41,69.07
step
Follow the path up |goto 65.63,75.19 < 15 |only if walking
click the Curious Pirate Landmark##195206
collect Gazlowe's Treasure Chest##46833 |q 14050/1 |goto 66.27,77.59
step
talk Gazlowe##3391
|tip Upstairs inside the building.
turnin Gazlowe's Fortune##14050 |goto 68.41,69.07
accept Raging River Ride##26769 |goto 68.41,69.07
step
clicknpc Riverboat##44057
Board the Riverboat to Nozzlepot |q 26769/1 |goto 72.91,65.59
step
talk Nozzlepot##34698
turnin Raging River Ride##26769 |goto 62.50,16.75
accept Sludge Investigation##29087 |goto 62.50,16.75
accept Hyena Extermination##29088 |goto 62.50,16.75
step
talk Innkeeper Kritzle##43945
home Nozzlepot's Outpost |goto 62.53,16.59 |q 29015 |future
step
talk Gazrix##40558
fpath Nozzlepot's Outpost |goto 62.31,17.11
step
talk Sputtervalve##3442
accept Competition Schmompetition##29086 |goto 62.29,17.48
accept Samophlange##29021 |goto 62.29,17.48
stickystart "Collect_Sputtervalves_Blueprints"
step
clicknpc Muddy Tracks##52171+
|tip They look like muddy animal tracks on the shore all around the pond.
Examine #5# Muddy Tracks |q 29087/1 |goto 57.53,20.29
step
_Click the Complete Quest Box:_
turnin Sludge Investigation##29087
accept Sludge Beast!##29089
step
click Sludge Pile##208343
|tip Underwater.
kill Sludge Beast##52165 |q 29089/1 |goto 58.17,19.35
step
talk Wizzlecrank's Shredder##3439
accept Ignition##858 |goto 57.54,18.30
step
kill Supervisor Lugwizzle##3445
|tip Inside the small building at the top of the platform.
collect Ignition Key##5050 |q 858/1 |goto 57.11,20.67
step
label "Collect_Sputtervalves_Blueprints"
Kill Venture Co. enemies around this area |kill Venture Co. Drudger##3284, Venture Co. Mercenary##3282
|tip They look like goblins.
collect 6 Sputtervalve's Blueprints##68820 |q 29086/1 |goto 57.53,20.29
step
talk Wizzlecrank's Shredder##3439
turnin Ignition##858 |goto 57.54,18.30
accept The Escape##863 |goto 57.54,18.30
step
Watch the dialogue
|tip Follow Wizzlecrank's Shredder and protect it as it walks.
|tip It eventually walks to this location.
Escort Wizzlecrank Out of the Venture Co |q 863/1 |goto 54.75,20.75
step
kill 6 Hecklefang Hyena##4127 |q 29088/1 |goto 54.59,24.19
step
click Control Console##268617
turnin Samophlange##29021 |goto 50.28,25.70
accept Samophlange##29022 |goto 50.28,25.70
step
click Main Control Valve##4072
|tip It looks like a small red wheel handle on the pipe, near the ground.
Shut Off the Main Control Valve |q 29022/1 |goto 50.15,25.57
step
click Regulator Valve##61935
|tip It looks like a small red wheel handle on the pipe, near the ground.
Shut Off the Regulator Valve |q 29022/3 |goto 50.09,25.28
step
click Fuel Control Valve##61936
|tip It looks like a small red wheel handle on the side of the barrel.
Shut Off the Fuel Control Valve |q 29022/2 |goto 50.29,25.28
step
click Control Console##268617
turnin Samophlange##29022 |goto 50.28,25.70
accept Samophlange##29023 |goto 50.28,25.70
step
kill Tinkerer Sniggles##3471
|tip Inside the building.
collect Console Key##5089 |q 29023/1 |goto 51.06,23.50
step
click Control Console##268617
turnin Samophlange##29023 |goto 50.28,25.70
accept Samophlange##29024 |goto 50.28,25.70
step
talk Nozzlepot##34698
turnin Sludge Beast!##29089 |goto 62.50,16.75
turnin Hyena Extermination##29088 |goto 62.50,16.75
step
talk Sputtervalve##3442
turnin The Escape##863 |goto 62.29,17.48
turnin Samophlange##29024 |goto 62.29,17.48
accept Samophlange Repair##14003 |goto 62.29,17.48
turnin Competition Schmompetition##29086 |goto 62.29,17.48
step
talk Brak Blusterpipe##34674
turnin Samophlange Repair##14003 |goto 62.66,16.97
step
Watch the dialogue
talk Brak Blusterpipe##34674
accept Wenikee Boltbucket##29026 |goto 62.66,16.97
step
talk Brak Blusterpipe##34674 |goto 62.66,16.97
Tell him _"I'm ready to teleport. I think."_
Teleport to Wenikee Boltbucket |goto 44.15,25.10 < 30 |noway |q 29026
step
talk Wenikee Boltbucket##9316
turnin Wenikee Boltbucket##29026 |goto 44.37,24.86
accept Nugget Slugs##29027 |goto 44.37,24.86
step
talk Brogor##52192
accept A Burning Threat##29090 |goto 44.34,25.10
stickystart "Slay_Members_of_Burning_Blade"
step
click Tool Buckets##161752+
|tip They look like wooden buckets with tools in them.
collect 10 Nugget Slug##11143 |q 29027/1 |goto 41.42,32.33
step
label "Slay_Members_of_Burning_Blade"
Kill Burning Blade enemies around this area |kill Burning Blade Acolyte##3380, Burning Blade Bruiser##52196
|tip They look like orcs. |notinsticky
Slay #8# Members of the Burning Blade |q 29090/1 |goto 41.42,32.33
step
talk Brogor##52192
turnin A Burning Threat##29090 |goto 44.34,25.10
step
talk Wenikee Boltbucket##9316
turnin Nugget Slugs##29027 |goto 44.37,24.86
accept Return to Samophlanger##14004 |goto 44.37,24.86
step
talk Wenikee Boltbucket##9316 |goto 44.37,24.86
Tell her to _"Send me back to Nozzlepot's Outpost."_
Return to Nozzlepot |goto 62.56,17.25 < 30 |noway |q 14004
step
talk Sputtervalve##3442
turnin Return to Samophlanger##14004 |goto 62.29,17.48
accept Read the Manual##14006 |goto 62.29,17.48
step
talk Brak Blusterpipe##34674
accept Miner's Fortune##29015 |goto 62.66,16.97
step
Kill Venture Co. enemies around this area |kill Venture Co. Enforcer##3283, Venture Co. Overseer##3286
|tip They look like goblins.
collect Cats Eye Emerald##5097 |q 29015/1 |goto 66.46,13.03
collect 5 Samophlange Manual Page##11148 |goto 66.46,13.03 |q 14006
step
kill Boss Copperplug##9336
|tip He walks around inside the mine.
collect Samophlange Manual Cover##11147 |q 14006 |goto 65.28,11.90
step
use Samophlange Manual Cover##11147
collect Samophlange Manual##11149 |q 14006/1
step
Leave the mine |goto 65.28,11.90 < 10 |walk |only if subzone("Boulder Lode Mine") and indoors()
talk Sputtervalve##3442
turnin Read the Manual##14006 |goto 62.29,17.48
step
Watch the dialogue
talk Brak Blusterpipe##34674
turnin Miner's Fortune##29015 |goto 62.66,16.97
step
talk Sputtervalve##3442
accept The Short Way Home##29094 |goto 62.29,17.48
step
clicknpc Silver Bullet X-831##52203
Take a Ride on the Rocket |invehicle |goto 62.16,17.42 |q 29094
step
Travel to Darsok Swiftdagger |outvehicle |goto 30.80,46.12 |q 29094 |notravel
step
talk Darsok Swiftdagger##3449
turnin The Short Way Home##29094 |goto 30.58,45.93
accept Harpy Raiders##867 |goto 30.58,45.93
accept Harpy Lieutenants##875 |goto 30.58,45.93
step
Kill Witchwing enemies around this area | kill Witchwing Harpy##3276, Witchwing Roguefeather##3277
|tip They look like harpies.
collect 6 Witchwing Talon##5064 |q 867/1 |goto 28.39,34.63
step
_Click the Complete Quest Box:_
turnin Harpy Raiders##867
step
kill 6 Witchwing Slayer##3278 |q 875/1 |goto 26.74,31.75
step
_Click the Complete Quest Box:_
turnin Harpy Lieutenants##875
accept Serena Bloodfeather##876
step
kill Serena Bloodfeather##3452
|tip She looks like a blue harpy.
collect Serena's Head##5067 |q 876/1 |goto 26.94,26.62
step
talk Darsok Swiftdagger##3449
turnin Serena Bloodfeather##876 |goto 30.58,45.93
accept Report to Thork##29095 |goto 30.58,45.93
step
talk Innkeeper Boorand Plainswind##3934
|tip Inside the building.
home The Crossroads |goto 49.55,57.88 |q 29111 |future
step
talk Thork##3429
turnin Report to Thork##29095 |goto 48.69,59.60
accept Mor'shan Caravan Pick-Up##29109 |goto 48.69,59.60
accept Deathgate's Reinforcements##14073 |goto 48.69,59.60
step
talk Regthar Deathgate##3389
|tip Upstairs inside the building.
turnin Deathgate's Reinforcements##14073 |goto 37.84,55.27
accept Hezrul Bloodmark##852 |goto 37.84,55.27
accept Centaur Bracers##855 |goto 37.84,55.27
stickystart "Collect_Centaur_Bracers"
step
kill Hezrul Bloodmark##3396
|tip He looks like a larger centaur that walks all around Lushwater Oasis with 2 guards.
collect Hezrul's Head##5025 |q 852/1 |goto 39.90,72.29
step
label "Collect_Centaur_Bracers"
Kill Kolkar enemies around this area |kill Kolkar Stormseer##9523, Kolkar Marauder##3275
|tip They look like centaurs. |notinsticky
collect 10 Centaur Bracers##5030 |q 855/1 |goto 39.90,72.29
step
talk Regthar Deathgate##3389
|tip Upstairs inside the building.
turnin Hezrul Bloodmark##852 |goto 37.84,55.27
turnin Centaur Bracers##855 |goto 37.84,55.27
step
talk Rocco Whipshank##52220
Tell him _"I'm ready. Let's go!"_
Speak to Rocco Whipshank |q 29109/1 |goto 50.33,57.19
step
clicknpc Chief Caravan Kodo##52209
Ride the Kodo |invehicle |goto 50.17,57.16 |q 29109
step
Watch the dialogue
Ride Caravan to Dreadmist Peak |q 29109/2 |goto 48.24,38.88 |notravel
step
talk Nagala Whipshank##52207
turnin Mor'shan Caravan Pick-Up##29109 |goto 47.53,39.58
accept Mor'shan Caravan Rescue##29110 |goto 47.53,39.58
step
Follow the path of torches up the mountain |goto 46.88,37.85 < 20 |only if walking
talk Balgor Whipshank##52309
|tip At the top of the mountain.
turnin Mor'shan Caravan Rescue##29110 |goto 41.07,39.20
accept Demon Seed##29112 |goto 41.07,39.20
step
click The Demon Seed##3524
|tip It looks like a floating red crystal.
|tip Inside the small cave, at the top of the mountain.
collect Demon Seed##68837 |q 29112/1 |goto 42.48,38.80
step
talk Nagala Whipshank##52207
turnin Demon Seed##29112 |goto 47.53,39.58
accept Mor'shan Caravan Delivery##29111 |goto 47.53,39.58
step
talk Nagala Whipshank##52207
Tell her _"I'm ready to ride."_
Speak to Nagala Whipshank |q 29111/1 |goto 47.53,39.58
step
clicknpc Chief Caravan Kodo##52209
Ride the Kodo |invehicle |goto 47.81,39.54 |q 29111
step
Kill the enemies that attack in waves
|tip Use the abilities on your action bar.
Defend the Mor'shan Caravan Ride |q 29111/2 |goto 42.85,15.04 |notravel
step
talk Kadrak##8582
|tip He walks around this area.
turnin Mor'shan Caravan Delivery##29111 |goto 42.48,15.08
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Kalimdor (1-60)\\Azshara (10-22)",{
author="support@zygorguides.com",
next="Leveling Guides\\Kalimdor (1-60)\\Ashenvale (20-26)",
dynamic=true,
},[[
step
talk Ag'tor Bloodfist##8576
turnin Beyond Durotar##25648 |goto Azshara/0 26.81,76.95 |only if haveq(25648) or completedq(25648)
accept Venison for the Troops##14118 |goto 26.81,76.95
accept The Eyes of Ashenvale##14117 |goto 26.81,76.95
step
talk Labor Captain Grabbit##35086
turnin Warchief's Command: Azshara!##28496 |goto 27.00,77.08 |only if haveq(28496) or completedq(28496)
turnin Report to the Labor Captain##25275 |goto 27.00,77.08 |only if haveq(25275) or completedq(25275)
accept Runaway Shredder!##14129 |goto 27.00,77.08
stickystart "Collect_Slabs_of_Venison"
step
kill Runaway Shredder##35111+
|tip They look like humanoid metal machines.
clicknpc Runaway Shredder##35111
Capture a Runaway Shredder |q 14129/1 |goto 27.95,74.06
step
_Click the Complete Quest Box:_
turnin Runaway Shredder!##14129
accept The Captain's Logs##14134
step
collect 6 Azshara Lumber##47050 |q 14134/1 |goto 29.29,75.54
|tip Use the "Gather Lumber" ability on your action bar next to Azshara Lumber Piles.
|tip They look like piles of logs.
step
_Click the Complete Quest Box:_
turnin The Captain's Logs##14134
accept Up a Tree##14135
step
kill 9 Talrendis Sniper##35149 |q 14135/1 |goto 32.06,76.15
|tip Use the "Buzzsaw" ability on your action bar next to Azshara Saplings.
|tip They look like smaller trees.
step
_Click the Complete Quest Box:_
turnin Up a Tree##14135
accept Defend the Gates!##14146
step
kill 20 Talrendis Raider##35177 |q 14146/1 |goto 27.02,76.83
step
_Click the Complete Quest Box:_
turnin Defend the Gates!##14146
accept Arborcide##14155
step
kill Talrendis Ancient##35198 |q 14155/1 |goto 21.38,75.93
|tip Use the abilities on your action bar.
step
Release the Shredder |outvehicle |q 14155
|tip Click the arrow on your action bar.
stickystart "Accept_Return_Of_The_Highborne"
stickystart "Kill_Talrendis_Scouts"
step
label "Collect_Slabs_of_Venison"
kill Weakened Mosshoof Stag##35096+
|tip They look like brown deer with antlers.
collect 15 Slab of Venison##47038 |q 14118/1 |goto 27.96,73.67
step
label "Accept_Return_Of_The_Highborne"
kill Talrendis Scout##35095+
|tip They are stealthed around this area.
collect Scout's Orders##47039 |n
use the Scout's Orders##47039
accept Return of the Highborne?##14127 |goto 28.65,75.82
step
label "Kill_Talrendis_Scouts"
kill 8 Talrendis Scout##35095 |q 14117/1 |goto 28.65,75.82
|tip They are stealthed around this area.
step
talk Labor Captain Grabbit##35195
turnin Arborcide##14155 |goto 27.00,77.08
accept Report to Horzak##14162 |goto 27.00,77.08
step
talk Ag'tor Bloodfist##35194
turnin Venison for the Troops##14118 |goto 26.81,76.95
turnin The Eyes of Ashenvale##14117 |goto 26.81,76.95
turnin Return of the Highborne?##14127 |goto 26.81,76.95
accept Return of the Highborne?##14128 |goto 26.81,76.95
step
talk Malynea Skyreaver##35087
turnin Return of the Highborne?##14128 |goto 29.68,66.88
step
talk Foreman Fisk##35085
|tip She walks around this area.
accept A Quota to Meet##14197 |goto 29.20,66.35
step
talk Horzak Zignibble##35091
turnin Report to Horzak##14162 |goto 29.15,66.24
accept Basilisk Bashin'##14161 |goto 29.15,66.24
accept Stone Cold##14165 |goto 29.15,66.24
stickystart "Kill_Greystone_Basilisks"
step
click Iron Ingot##6455+
|tip They look like single silver bars.
click Iron Stockpile##6478+
|tip They look like piles of silver bars.
collect 20 Mountainfoot Iron##48128 |q 14197/1 |goto 24.61,70.59
step
label "Kill_Greystone_Basilisks"
kill 10 Greystone Basilisk##35245 |q 14161/1 |goto 24.47,69.83
step
clicknpc Mountainfoot Miner##35257
|tip They look like goblins frozen in place.
Carry the Mountainfoot Miner |havebuff Lugging a Goblin##67032 |goto 24.47,69.83 |q 14165
step
Deliver the Stonified Miner |q 14165/1 |goto 29.14,66.43
|tip Don't mount, or you'll drop the miner.
step
talk Horzak Zignibble##35091
turnin Basilisk Bashin'##14161 |goto 29.15,66.24
turnin Stone Cold##14165 |goto 29.15,66.24
accept The Perfect Prism##14190 |goto 29.15,66.24
step
talk Foreman Fisk##35085
|tip She walks around this area.
turnin A Quota to Meet##14197 |goto 29.20,66.35
step
kill Talrendis Saboteur##35312+
collect Crystal Pendant##47819 |q 14190/1 |goto 21.23,69.20
step
click Headquarters Radio##195431
|tip Inside the building.
turnin The Perfect Prism##14190 |goto 20.26,70.40
accept Prismbreak##14192 |goto 20.26,70.40
step
click Weapons Cabinet##195435
|tip Inside the building.
turnin Prismbreak##14192 |goto 20.04,69.98
accept Refleshification##14194 |goto 20.04,69.98
step
use The Refleshifier##48104
|tip Use it on Mountainfoot Miners.
|tip They look like goblins frozen in place around this area.
Destone #8# Mountainfoot Miners |q 14194/1 |goto 24.52,69.04
step
talk Horzak Zignibble##35091
turnin Refleshification##14194 |goto 29.15,66.24
step
talk Private Worcester##36752
accept Another Warm Body##14468 |goto 29.52,66.83
step
talk Commander Molotov##36749
turnin Another Warm Body##14468 |goto 29.45,57.68
accept Hand-me-downs##14469 |goto 29.45,57.68
step
talk Glix Grindlock##36744
accept Military Breakthrough##14470 |goto 29.37,57.62
step
talk Xiz "The Eye" Salvoblast##36746
accept First Degree Mortar##14471 |goto 29.11,57.94
step
clicknpc Bligewater Mortar##36768
Control the Cannon |invehicle |goto 31.20,57.38 |q 14471
step
Kill enemies around this area
|tip Use the "Mortar Round" ability on your action bar.
Blow #60# Spitelash Attackers to Bits |q 14471/1 |goto 32.89,57.59
step
Release the Cannon |outvehicle |q 14471
|tip Click the arrow on your action bar.
step
talk Xiz "The Eye" Salvoblast##36746
turnin First Degree Mortar##14471 |goto 29.11,57.94
stickystart "Collect_Military_Supplies"
step
kill Warlord Krellian##8408 |q 14470/1 |goto 27.61,51.95
|tip Up on the cliff.
step
click SFG##201572
|tip It looks like a small red dynamite rocket.
collect SFG##49700 |q 14470/2 |goto 27.70,51.88
step
label "Collect_Military_Supplies"
clicknpc Dead Soldier##36756+
|tip They look like orcs and goblins laying on the ground.
collect 12 Military Supplies##49599 |q 14469/1 |goto 28.54,53.84
step
talk Glix Grindlock##36744
turnin Military Breakthrough##14470 |goto 29.37,57.62
accept In The Face!##14472 |goto 29.37,57.62
step
talk Commander Molotov##36749
turnin Hand-me-downs##14469 |goto 29.45,57.68
step
use the SFG##49700
|tip Use it on an Enslaved Son of Arkkoroc.
|tip They look like green giants walking around this area.
kill Enslaved Son of Arkkoroc##36868 |q 14472/1 |goto 32.83,58.65
step
talk Glix Grindlock##36744
turnin In The Face!##14472 |goto 29.37,57.62
step
talk Commander Molotov##36749
accept Profitability Scouting##24452 |goto 29.45,57.68
step
use the Stealth Field Generator##49701
|tip If you become unstealthed at any time, use the Stealth Field Generator again.
|tip If you have a pet, dismiss it.
Identify the Heart of Arkkoroc |q 24452/1 |goto 31.43,50.54
step
talk Commander Molotov##36749
turnin Profitability Scouting##24452 |goto 29.45,57.68
accept Private Chat##24453 |goto 29.45,57.68
step
talk Private Worcester##36752
turnin Private Chat##24453 |goto 29.52,66.83
step
talk Custer Clubnik##35088
|tip He walks around this area.
accept Survey the Lakeshore##14202 |goto 29.59,66.86
step
talk Malynea Skyreaver##35087
accept A Thousand Stories in the Sand##14201 |goto 29.68,66.88
stickystart "Collect_Recovered_Artifacts"
step
Survey the North Marker |q 14202/2 |goto 34.70,71.57
|tip Protect the goblin surveyor while the test is conducted.
step
Survey the East Marker |q 14202/3 |goto 37.37,74.62
|tip Protect the goblin surveyor while the test is conducted.
step
Survey the West Marker |q 14202/1 |goto 34.28,76.64
|tip Protect the goblin surveyor while the test is conducted.
step
label "Collect_Recovered_Artifacts"
click Ancient Debris Pile##195455+
|tip They look like slightly-buried pots.
|tip Underwater and along the shore.
collect 5 Recovered Artifacts##48525 |q 14201/1 |goto 35.63,74.92
step
talk Malynea Skyreaver##35087
turnin A Thousand Stories in the Sand##14201 |goto 29.68,66.88
accept Memories of the Dead##14215 |goto 29.68,66.88
step
talk Custer Clubnik##35088
|tip He walks around this area.
turnin Survey the Lakeshore##14202 |goto 29.59,66.86
accept Gunk in the Trunk##14209 |goto 29.59,66.86
step
clicknpc Clubnik's Dozer##35526
kill Ectoplasmic Exhaust##35558
collect Ectosplatter Sample##48780 |q 14209/1 |goto 30.11,67.23
step
talk Custer Clubnik##35088
|tip He walks around this area.
turnin Gunk in the Trunk##14209 |goto 29.59,66.86
accept Dozercism##14423 |goto 29.59,66.86
step
use the Blessed Flaregun##49350
kill Clubnik's Dozer##35526
Exorcise Clubnik's Dozer |q 14423/1 |goto 30.01,67.22
step
talk Custer Clubnik##35088
|tip He walks around this area.
turnin Dozercism##14423 |goto 29.59,66.86
accept Need More Science##14424 |goto 29.59,66.86
step
talk Spirit of Kalytha##35567
|tip She walks around this area.
Choose _<Merge with the spirit.>_
Explore the Memories of Kalytha |havebuff Memories of the Dead##67704 |goto 36.43,72.36 |q 14215
step
talk Archmage Selwyn##35595
Tell her _"Yes Archmage. I will hide the stone."_
Learn Kalytha's Secret |q 14215/1 |goto 37.52,74.52
step
_Click the Complete Quest Box:_
turnin Memories of the Dead##14215
accept Mystery of the Sarcen Stone##14216
step
click Ancient Stone Cask##195513
|tip Underwater.
collect Sarcen Stone##48921 |q 14216/1 |goto 35.57,75.32
step
talk Malynea Skyreaver##35087
turnin Mystery of the Sarcen Stone##14216 |goto 29.68,66.88
step
talk Bilgewater Rocket-jockey##43217
|tip At the top of the tower.
Tell him _"Southern Rocketway Terminus, please."_
Request a Rocket |invehicle |goto 29.48,66.20 |q 14424
step
Ride the Rocket to the Southern Rocketway Terminus |outvehicle |goto 51.0,74.1 |q 14424 |notravel
step
talk Assistant Greely##39199
turnin Need More Science##14424 |goto 50.41,74.29
accept When Science Attacks##14308 |goto 50.41,74.29
step
talk Friz Groundspin##37005
fpath Southern Rocketway |goto 51.49,74.28
step
talk Bombardier Captain Smooks##35817
accept Mortar the Point##14258 |goto 52.22,74.24
step
talk Twistex Happytongs##36146
accept Bad Science! Bad!##14322 |goto 45.06,75.49
step
talk Subject Nine##36500
|tip Up on the cliff.
accept Nine's Plan##14408 |goto 42.21,76.09
step
kill 8 Static-Charged Hippogryph##36147 |q 14322/1 |goto 43.27,79.50
stickystart "Collect_Goblin_Mortar_Shells"
step
use the Fireliminator X-21##49132
|tip Use it on Research Interns and fires.
|tip They look like burning goblins running around.
Extinguish #8# Lab Fires |q 14308/1 |goto 44.11,75.56
Rescue #6# Research Interns |q 14308/2 |goto 44.11,75.56
step
label "Collect_Goblin_Mortar_Shells"
click Goblin Mortar Shell##195623+
|tip They look like small white cylindrical objects.
collect 5 Goblin Mortar Shell##49062 |q 14258/1 |goto 44.11,75.56
step
click Secret Lab Squawkbox##195676
turnin When Science Attacks##14308 |goto 43.83,77.35
accept Segmentation Fault: Core Dumped##14310 |goto 43.83,77.35
step
click Reactor Control Console##195683
Begin Following the Hulking Labgoblin |goto 43.81,77.29 > 10 |q 14310
step
use Fireliminator X-21##49132
|tip Use it on the Azsharite Core every few seconds to keep it cool.
|tip Follow the Hulking Labgoblin.
|tip He eventually walks to this location.
Deliver the Azsharite Core |q 14310/1 |goto 49.47,74.65 |notravel
step
talk Assistant Greely##39199
turnin Segmentation Fault: Core Dumped##14310 |goto 50.41,74.29
accept Mysterious Azsharite##14370 |goto 50.41,74.29
accept A Gigantic Snack##14371 |goto 50.41,74.29
step
talk Bombardier Captain Smooks##35817
turnin Mortar the Point##14258 |goto 52.22,74.24
step
talk Torg Twocrush##35657
accept To Gut a Fish##14262 |goto 50.68,75.30
accept Investigating the Sea Shrine##14267 |goto 50.68,75.30
step
clicknpc Door Buzzer##36472
Choose _<Ring the Buzzer>_
kill Mutant Goblin##36156
collect Secret Rocket Plans##49204 |q 14408/2 |goto 45.93,76.09
step
talk Twistex Happytongs##36146
turnin Bad Science! Bad!##14322 |goto 45.06,75.49
step
talk Subject Nine##36500
|tip Up on the cliff.
turnin Nine's Plan##14408 |goto 42.21,76.09
accept Raptor Raptor Rocket##14422 |goto 42.21,76.09
step
click Specimen Cage##196486+
|tip They look like grey metal cages.
|tip Each time you click a cage, you will get 1 stack of a buff.
|tip You need to get 5 stacks of the buff.
|tip Don't mount or stealth, or you will have to start over.
Rescue the Raptors |complete hasbuff(69704,5) |goto 43.73,75.60 |q 14422
step
Deliver #5# Experimental Raptors |q 14422/1 |goto 42.21,76.09
|tip Up on the cliff.
step
talk Subject Nine##36500
turnin Raptor Raptor Rocket##14422 |goto 42.21,76.09
stickystart "Collect_Mutilated_Mistwing_Carcasses"
step
click Azsharite Formation##152620+
|tip They look like frozen people and large blue crystals.
collect 5 Azsharite Sample##49207 |q 14370/1 |goto 40.92,74.12
You can find more around: |notinsticky
[42.06,70.82] [43.21,68.39] [43.89,70.02] [47.79,73.37]
[47.69,80.24] [41.67,77.99]
step
label "Collect_Mutilated_Mistwing_Carcasses"
kill Mistwing Cliffdweller##36304+
collect 8 Mutilated Mistwing Carcass##49208 |q 14371/1 |goto 39.61,76.65
step
talk Assistant Greely##39199
turnin Mysterious Azsharite##14370 |goto 50.41,74.29
turnin A Gigantic Snack##14371 |goto 50.41,74.29
accept Befriending Giants##14377 |goto 50.41,74.29
step
talk Gormungan##36297
Tell him _"I brought you something to eat."_
Discover the Secret of Azsharite |q 14377/1 |goto 47.75,75.53
step
talk Assistant Greely##39199
turnin Befriending Giants##14377 |goto 50.41,74.29
accept Azsharite Experiment Number One##14385 |goto 50.41,74.29
step
talk Hobart Grapplehammer##38120
|tip He walks around this area.
accept The Terrible Tinkers of the Ruined Reaches##14383 |goto 50.53,74.74
stickystart "Kill_Spitelash_Stormfuries"
stickystart "Kill_Spitelash_Seacallers"
step
click Naga Power Stone##195642
|tip Up on the cliff.
turnin Investigating the Sea Shrine##14267 |goto 58.98,71.85
accept The Keystone Shard##14270 |goto 58.98,71.85
step
click Keystone Shard##201579
collect Keystone Shard##49094 |q 14270/1 |goto 57.52,70.95
step
click Naga Power Stone##195642
turnin The Keystone Shard##14270 |goto 58.98,71.85
accept Report to Twocrush##14271 |goto 58.98,71.85
step
label "Kill_Spitelash_Stormfuries"
kill 6 Spitelash Stormfury##35831 |q 14262/1 |goto 57.84,76.42
step
label "Kill_Spitelash_Seacallers"
kill 6 Spitelash Seacaller##35832 |q 14262/2 |goto 57.84,76.42
step
talk Torg Twocrush##35657
turnin To Gut a Fish##14262 |goto 50.68,75.30
turnin Report to Twocrush##14271 |goto 50.68,75.30
accept Sisters of the Sea##14295 |goto 50.68,75.30
step
kill Lady Silisthra##35880 |q 14295/1 |goto 62.82,76.26
|tip Click the Silisthra's Power Stone in the building behind her to make her not elite.
step
kill Lady Vesthra##35881 |q 14295/2 |goto 63.24,79.37
|tip Click the Vesthra's Power Stone in the building behind her to make her not elite.
step
talk Torg Twocrush##35657
turnin Sisters of the Sea##14295 |goto 50.68,75.30
stickystart "Kill_Netgim_Gnomes"
stickystart "Kill_Zapper_Gnomes"
step
kill Bingham Gadgetspring##36407 |q 14383/1 |goto 39.83,84.70
|tip Inside the building, down on the beach.
step
click Giant-Sized Laxative##196462
|tip Upstairs inside the building.
collect Giant-Sized Laxative##49230 |q 14385/2 |goto 39.89,84.76
step
label "Kill_Netgim_Gnomes"
kill 4 Netgun Gnome##36385 |q 14383/2 |goto 40.34,84.36
step
label "Kill_Zapper_Gnomes"
kill 6 Zapper Gnome##36384 |q 14383/3 |goto 40.34,84.36
step
talk Gormungan##36297
Tell him _"Here, eat this! It's a special chocolate rock."_
Try to Feed Gormungan |q 14385/1 |goto 47.75,75.53
step
talk Assistant Greely##39199
turnin Azsharite Experiment Number One##14385 |goto 50.41,74.29
accept Azsharite Experiment Number Two##14388 |goto 50.41,74.29
step
talk Assistant Greely##39199
Tell her "_I'm ready. Shrink me!"_
Become Mouse-sized! |havebuff Shrunkified##68710 |goto 50.41,74.29 |q 14388
step
clicknpc Rocketway Rat##36437
|tip They walk around this area.
Ride a Rat |invehicle |q 14388 |goto 50.30,74.27
step
talk Gormungan##36297
Tell him _"SQUEAK!!"_
Scare Gormungan |q 14388/1 |goto 47.75,75.53
step
talk Assistant Greely##39199
turnin Azsharite Experiment Number Two##14388 |goto 50.41,74.29
step
talk Hobart Grapplehammer##38120
|tip He walks around this area.
turnin The Terrible Tinkers of the Ruined Reaches##14383 |goto 50.53,74.74
accept A Hello to Arms##24458 |goto 50.53,74.74
step
talk Friz Groundspin##37005
Tell him _"Just give me the 'copter, Friz."_
Begin Flying to Bilgewater Harbor |invehicle |goto 51.49,74.28 |q 14478 |future
step
Fly to Bilgewater Harbor |outvehicle |goto 57.60,50.60 |q 14478 |future |notravel
step
click Wrenchmen Recruitment Poster##203755
|tip Inside the building.
accept Operation Fishgut##14478 |goto 56.98,50.09
step
talk Mixi##43771
|tip Inside the building.
home Bilgewater Harbor |goto 57.05,50.42
step
talk Teemo##36999
accept Azshara Blues##14407 |goto 59.33,50.75
step
talk Bleenik Fizzlefuse##37009
|tip He walks around inside the building.
turnin A Hello to Arms##24458 |goto 60.56,51.01
step
talk Commander Molotov##36749
|tip Inside the building.
turnin Operation Fishgut##14478 |goto 60.63,50.59
accept Rapid Deployment##24455 |goto 60.63,50.59
step
talk Captain Desoto##36956
turnin Rapid Deployment##24455 |goto 58.10,52.31
accept There Are Many Like It##14479 |goto 58.10,52.31
step
talk Kalec##35867
|tip Underneath the bridge.
turnin Azshara Blues##14407 |goto 55.49,52.13
accept Friends Come In All Colors##14130 |goto 55.49,52.13
step
talk Kroum##8610
fpath Bilgewater Harbor |goto 52.92,49.86
step
clicknpc Surface to Other Surface Transport##36917
|tip Up on the mountain.
Get in the Rocket |invehicle |goto 57.89,52.22 |q 14479
step
Fly to The Shattered Strand |outvehicle |goto 39.07,51.34 |q 14479 |notravel
step
talk Ruckus##36795
accept First Come, First Served##24437 |goto 39.14,51.77
step
talk Lieutenant Drex##36920
turnin There Are Many Like It##14479 |goto 41.50,53.65
accept Mop Up##24435 |goto 41.50,53.65
step
talk Sergeant Hort##36921
accept Halo Drops##24436 |goto 41.39,53.93
stickystart "Rescue_Wounded_Soldiers"
stickystart "Slay_Defending_Nagas"
step
use the Flag of Territorial Claim##49685
Claim the Southern Pagoda |q 24437/1 |goto 43.88,59.92
step
use the Flag of Territorial Claim##49685
Claim the Big ol' Tower |q 24437/2 |goto 43.60,43.40
step
use the Flag of Territorial Claim##49685
Claim the Northern Vista |q 24437/3 |goto 45.46,38.52
step
label "Rescue_Wounded_Soldiers"
use the Sanctified Flaregun##49679
|tip Use it on Wounded Soldiers.
|tip They look like dead goblins.
Rescue #8# Wounded Soldiers |q 24436/1 |goto 40.69,49.68
step
label "Slay_Defending_Nagas"
Kill Spitelash enemies around this area |kill Spitelash Siren##6195, Spitelash Warrior##6190
|tip They look like nagas. |notinsticky
Slay #12# Defending Naga |q 24435/1 |goto 40.69,49.68
step
talk Ruckus##36795
turnin First Come, First Served##24437 |goto 39.14,51.77
step
talk Lieutenant Drex##36920
turnin Mop Up##24435 |goto 41.50,53.65
step
talk Sergeant Hort##36921
turnin Halo Drops##24436 |goto 41.39,53.93
step
talk Lieutenant Drex##36920
accept Field Promotion##24448 |goto 41.50,53.65
step
talk Captain Tork##36745
turnin Field Promotion##24448 |goto 34.31,44.90
accept Still Beating Heart##14487 |goto 34.31,44.90
step
talk Sergeant Zelks##36895
accept Extermination##14480 |goto 34.46,44.73
accept Head of the Snake##14484 |goto 34.46,44.73
accept Ticker Required##14485 |goto 34.46,44.73
step
talk Tora Halotrix##36894
accept Handling the Goods##14486 |goto 34.53,44.68
stickystart "Collect_Highborne_Tablets"
stickystart "Slay_Spitelash_Naga"
step
use the Gob Squad Flare##49629
|tip Use it to summon a team of goblins to help you.
Watch the dialogue
|tip Inside the building.
Kill the enemies that attack in waves
|tip Protect Ticker as he destroys the Spitelash Runestone.
Destroy the First Spitelash Runestones |q 14485/1 |goto 35.99,47.57 |count 1
step
use the Gob Squad Flare##49629
|tip Use it to summon a team of goblins to help you.
Watch the dialogue
Kill the enemies that attack in waves
|tip Protect Ticker as he destroys the Spitelash Runestone.
Destroy the Second Spitelash Runestones |q 14485/1 |goto 34.33,48.19 |count 2
step
use the Gob Squad Flare##49629
|tip Use it to summon a team of goblins to help you.
Watch the dialogue
Kill the enemies that attack in waves
|tip Protect Ticker as he destroys the Spitelash Runestone.
Destroy the Third Spitelash Runestones |q 14485/1|goto 34.1,51.6 |count 3
step
use Gob Squad Flare##49629
|tip Use it to summon a team of goblins to help you.
click Heart of Arkkoroc##200298
collect Heart of Arkkoroc##49642 |q 14487/1 |goto 31.88,50.09
step
kill Lord Kassarus##36822 |q 14484/1 |goto 35.99,49.86
|tip Click the Impaling Spines he throws at you.
|tip You can throw them back at him to do extra damage.
|tip Inside the building.
step
label "Collect_Highborne_Tablets"
click Highborne Tablet##203211+
|tip They look like small square objects with a colored symbol on them.
collect 12 Highborne Tablet##49639 |q 14486/1 |goto 33.33,51.39
step
label "Slay_Spitelash_Naga"
Kill Spitelash enemies around this area |kill Spitelash Battlemaster##7885, Spitelash Enchantress##7886
|tip They look like nagas. |notinsticky
Slay #30# Spitelash Naga |q 14480/1 |goto 33.33,51.39
step
talk Captain Tork##36745
turnin Still Beating Heart##14487 |goto 34.31,44.90
step
talk Sergeant Zelks##36895
turnin Extermination##14480 |goto 34.46,44.73
turnin Head of the Snake##14484 |goto 34.46,44.73
turnin Ticker Required##14485 |goto 34.46,44.73
step
talk Tora Halotrix##36894
turnin Handling the Goods##14486 |goto 34.53,44.68
step
talk Captain Tork##36745
accept Shore Leave##24449 |goto 34.31,44.90
step
clicknpc Military Gyrocopter##37145
Begin Flying to Bilgewater Harbor |invehicle |goto 34.51,44.52 |q 24449
step
Fly to Bilgewater Harbor |outvehicle |goto 60.14,50.34 |q 24449 |notravel
step
talk Uncle Bedlam##36959
|tip Inside the building.
turnin Shore Leave##24449 |goto 60.61,50.53
step
talk Bilgewater Rocket-jockey##43217
|tip At the top of the tower.
Tell him _"Northern Rocketway Terminus, please."_
Begin Flying to the Northern Rocketway Terminus |invehicle |goto 50.70,74.22 |q 14130
step
Fly to the Northern Rocketway Terminus |outvehicle |goto 66.98,21.39 |q 14130 |notravel
step
talk Blitz Blastospazz##43328
|tip At the top of the tower.
fpath Northern Rocketway |goto 66.50,21.01
step
talk Ergll##35142
turnin Friends Come In All Colors##14130 |goto 70.36,36.25
accept A Little Pick-me-up##14131 |goto 70.36,36.25
accept That's Just Rude!##14132 |goto 70.36,36.25
accept Absorbent##14323 |goto 70.36,36.25
stickystart "Collect_Kawphi_Beans"
stickystart "Kill_Makrinni_Scrabblers"
step
collect 20 Simmering Water Droplet##49172 |q 14323/1 |goto 75.72,36.15
|tip Run around Vile Splashes.
|tip They look like small water elementals.
You can find more around [77.88,37.22]
step
_Click the Complete Quest Box:_
turnin Absorbent##14323
accept Full of Hot Water##14324
step
use the Engorged Azshari Sea Sponge##49176
kill Scalding Water Lord##36130
collect Globe of Boiling Water##49174 |q 14324/1 |goto 81.24,30.65
step
label "Collect_Kawphi_Beans"
click Kawphi Plant##195686+
|tip They look like small green and brown plants.
collect 10 Kawphi Bean##49162 |q 14131/1 |goto 70.41,34.87
step
label "Kill_Makrinni_Scrabblers"
kill 10 Makrinni Scrabbler##6370 |q 14132/1 |goto 72.85,32.23
step
talk Ergll##35142
turnin A Little Pick-me-up##14131 |goto 70.36,36.25
turnin That's Just Rude!##14132 |goto 70.36,36.25
turnin Full of Hot Water##14324 |goto 70.36,36.25
accept Wash Out##14345 |goto 70.36,36.25
step
Begin Traveling to the Northern Rocketway Exchange |invehicle |goto 70.36,36.25 |q 14345
step
Travel to the Northern Rocketway Exchange |outvehicle |goto 42.73,25.20 |q 14345 |notravel
step
talk Sorata Firespinner##36210
turnin Wash Out##14345 |goto 42.70,25.11
accept Dressed to Impress##14340 |goto 42.70,25.11
step
talk Andorel Sunsworn##36596
accept Amberwind's Journal##14428 |goto 42.61,23.70
step
talk Haggrum Bloodfist##8586
accept The Blackmaw Scar##14431 |goto 42.42,23.61
stickystart "Kill_Talrendis_Biologists"
step
kill Talrendis Biologist##36611+
|tip They look like furbolgs.
collect Blackmaw Intelligence##49364 |q 14431/2 |goto 38.05,30.01
step
label "Kill_Talrendis_Biologists"
kill 8 Talrendis Biologist##36611 |q 14431/1 |goto 38.05,30.01
|tip They look like furbolgs. |notinsticky
step
talk Haggrum Bloodfist##8586
turnin The Blackmaw Scar##14431 |goto 42.42,23.61
accept A Pale Brew##14432 |goto 42.42,23.61
accept Diplomacy by Another Means##14433 |goto 42.42,23.61
step
use the Dingy Wizard Hat##49201
Convey the Appearance of a Mage |havebuff Dingy Wizard Hat##68531 |q 14340
step
Approach Archmage Xylem While Wearing Your Wizard Hat |q 14340/1 |goto 47.17,20.89
|tip On top of the hill.
step
talk Image of Archmage Xylem##35187
turnin Dressed to Impress##14340 |goto 47.23,20.85
step
talk Quarla Whistlebreak##35754
accept Waste of Thyme##14263 |goto 47.01,21.04
step
talk Will Robotronic##37151
accept Shear Will##14249 |goto 47.15,21.05
step
talk Tharkul Ironskull##35755
accept Renewable Resource##14250 |goto 47.29,21.19
stickystart "Collect_Living_Ire_Thymes"
stickystart "Collect_Pristine_Thunderhead_Feathers"
step
use Arcane Charge##49038
|tip Use it to place a charge on the ground.
|tip Place the charge so that Balboa walks.
|tip Balboa looks like a large rock giant that walks along this path.
click Animate Besalt Chunks##195602+
|tip They appear after Balboa walks over the charge.
collect 5 Animate Besalt##49036 |q 14250/1 |goto 46.53,15.41
Also check around [54.28,21.48]
step
label "Collect_Living_Ire_Thymes"
click Living Ire Thyme##195587+
|tip They look like small clusters of golden leaves.
collect 8 Living Ire Thyme##49082 |q 14263/1 |goto 50.73,20.64
You can find more around [44.86,18.66]
step
label "Collect_Pristine_Thunderhead_Feathers"
Kill Thunderhead enemies around this area |kill Thunderhead Hippogryph##6375
|tip They look like hippgryphs. |notinsticky
collect 80 Pristine Thunderhead Feather##49068 |q 14249/1 |goto 49.09,20.74
step
kill Lorekeeper Amberwind##36594
collect Amberwind's Journal##49356 |q 14428/1 |goto 49.79,28.48
step
click Upper Scrying Stone##196832
turnin Amberwind's Journal##14428 |goto 49.52,28.78
accept Arcane De-Construction##14429 |goto 49.52,28.78
step
Kill Apprentice enemies around this area |kill Apprentice Investigator##365922, Apprentice Illuminator##36593
|tip They look like night elves.
collect 10 Attuned Runestone##49359 |q 14429/1 |goto 50.73,27.59
step
click Lower Scrying Stone##196833
turnin Arcane De-Construction##14429 |goto 52.99,29.03
accept Hacking the Construct##14430 |goto 52.99,29.03
step
talk Arcane Construct##36599
Choose _"Um ... Al'teth ... la c'tolgar? Or something."_
Hack the Arcane Construct |q 14430/1 |goto 52.98,29.95
step
talk Quarla Whistlebreak##35754
|tip On top of the hill.
turnin Waste of Thyme##14263 |goto 47.01,21.04
step
talk Will Robotronic##37151
turnin Shear Will##14249 |goto 47.15,21.05
step
talk Tharkul Ironskull##35755
turnin Renewable Resource##14250 |goto 47.29,21.19
step
talk Teresa Spireleaf##35756
|tip She walks around this area.
accept Manual Labor##14230 |goto 47.07,21.07
step
talk Image of Archmage Xylem##35187
accept Trouble Under Foot##14226 |goto 47.23,20.85
stickystart "Kill_Polymorphed_Cockroaches"
step
click Stolen Manual##195583+
|tip They look like various colored small books.
collect Abjurer's Manual##49012 |q 14230/1 |goto 54.81,24.21
step
label "Kill_Polymorphed_Cockroaches"
kill 12 Polymorphed Cockroach##35628 |q 14226/1 |goto 54.60,23.86
|tip Use the "Polymorph Insect" ability on your pet action bar on Legashi enemies.
|tip They look like satyrs.
step
Return to Camp |goto 47.1,20.3 < 30 |noway |c |q 14226
|tip Use the "Return to Camp" ability on your pet action bar.
step
talk Image of Archmage Xylem##35187
|tip On top of the hill.
turnin Trouble Under Foot##14226 |goto 47.23,20.85
step
talk Teresa Spireleaf##35756
|tip She walks around this area.
turnin Manual Labor##14230 |goto 47.07,21.07
step
talk Image of Archmage Xylem##35187
accept The Pinnacle of Learning##14413 |goto 47.23,20.85
step
Begin Flying to the Island |invehicle |goto 47.23,20.85 |q 14413
step
Fly to the Island |outvehicle |goto 55.67,14.66 |q 14413 |notravel
step
talk Image of Archmage Xylem##36334
turnin The Pinnacle of Learning##14413 |goto 55.71,14.77
accept Watch Your Step##14296 |goto 55.71,14.77
step
click Energy Conduits+
|tip They look like small stone pillars with lights on top of them.
|tip Click each pillar as you follow the path up.
|tip You will gain 1 stack of a buff each time you click a pillar.
|tip You need to stack the buff 6 times.
|tip Walk onto the blue rings to jump further up the path.
Become Fully Energized |complete hasbuff(68613,6) |goto 55.74,14.76 |q 14296
step
Complete the Arcane Trial |q 14296/1 |goto 55.95,12.16
|tip Follow the path to the top of the mountain.
step
talk Image of Archmage Xylem##36361
|tip On top of the mountain.
turnin Watch Your Step##14296 |goto 55.95,12.16
accept The Trial of Fire##14300 |goto 55.95,12.16
accept The Trial of Frost##24478 |goto 55.95,12.16
accept The Trial of Shadow##24479 |goto 55.95,12.16
step
click Frost Portal Stone
|tip Click Icy Morality portal nearby, after clicking the crystal.
Teleport to the Trial of Frost |condition subzone("Trial of Frost") |goto 56.05,11.93 |q 24478
step
Complete the Trial of Frost |q 24478/1 |goto 61.78,20.36
|tip Gather the floating white orbs by getting next to them.
|tip When you gather an orb, you will get a stack of a buff.
|tip You need to reach 20 stacks of the buff.
|tip Don't step on the snowy ground and try not to let the blue mist hit you.
|tip Dismiss your pet, if you have one.
step
talk Image of Archmage Xylem##36336
turnin The Trial of Frost##24478 |goto 62.20,21.07
step
click Waning Sanity
Leave the Trial of Frost |condition not subzone("Trial of Frost") |goto 62.11,21.25 |q 14299 |future
step
click Fire Portal Stone
|tip Click Burning Determination portal nearby, after clicking the crystal.
Teleport to the Trial of Fire |condition subzone("Trial of Fire") |goto 56.08,11.95 |q 14300
step
Complete the Trial of Fire |q 14300/1 |goto 33.41,23.47
|tip You have to stand on the red fire runes without getting hit by fire.
|tip You will see an NPC named Darwin, dancing on the runes.
|tip Quickly move where Darwin moves to.
|tip Each time you successfully avoid the fire, you will gain a stack of a buff.
|tip You need to reach 10 stacks of the buff.
step
talk Image of Archmage Xylem##36335
turnin The Trial of Fire##14300 |goto 32.97,23.55
step
click Waning Sanity
Leave the Trial of Fire |condition not subzone("Trial of Fire") |goto 32.85,23.39 |q 14299 |future
step
click Shadow Portal Stone
|tip Click Grim Intention portal nearby, after clicking the crystal.
Teleport to the Trial of Shadow |condition subzone("Trial of Shadow") |goto 56.11,11.96
step
click Touch to Begin
|tip It looks like a floating purple crystal.
Complete the Trial of Shadow |q 24479/1 |goto 30.78,27.26
|tip A shadow will shoot out of you and you can see it on the ground heading to one of the portals.
|tip Weeping Souls will emerge from the portals and chase you.
|tip Position yourself so that the Weeping Souls walk over the shadow runes.
|tip Each time a rune catches a soul, you will gain a stack of a buff.
|tip You need to reach 20 stacks of the buff.
step
talk Image of Archmage Xylem##36337
turnin The Trial of Shadow##24479 |goto 31.06,26.78
step
click Waning Sanity
Leave the Trial of Shadow |condition not subzone("Trial of Shadow") |goto 31.17,26.64 |q 14299 |future
step
talk Image of Archmage Xylem##36361
accept Xylem's Asylum##14299 |goto 55.95,12.16
step
click Xylem's Retreat Portal
Teleport to Xylem's Retreat |condition not subzone("Bear's Head") |goto 56.18,12.07 |q 14299
step
talk Joanna##36372
|tip Inside the building.
turnin Xylem's Asylum##14299 |goto 25.59,37.96
accept Wasn't It Obvious?##14389 |goto 25.59,37.96
step
click Ambitious Reach Portal
|tip Inside the building.
|tip You will die, it's part of the quest.
Teleport to the Ambitious Reach |goto 25.72,37.97 > 50 |c |q 14389
step
Find Anara, and Hopefully, Azuregos |q 14389/1 |goto 27.80,40.61
step
_Click the Complete Quest Box:_
turnin Wasn't It Obvious?##14389
accept Easy is Boring##14390
step
talk Spirit of Azuregos##36436
Tell him _"Kalec sent me..."_
Convince Azuregos to Meet with Kalecgos |q 14390/1 |goto 27.81,40.09
step
_Click the Complete Quest Box:_
turnin Easy is Boring##14390
accept Turning the Tables##14391
step
talk Anara##37040
Tell her _"Return me to life."_
Return to Life |complete not isdead |goto 27.89,40.04 |q 14391
stickystart "Collect_Ambassadors_Robes"
stickystart "Collect_Briaroot_Brews"
step
click Important Documents##196835
collect Blackmaw Meeting Agenda##49367 |q 14433/1 |goto 29.81,38.56
step
label "Collect_Ambassadors_Robes"
kill Talrendis Ambassador##36614+
|tip They look like night elves. |notinsticky
collect Ambassador's Robes##49366 |q 14433/2 |goto 30.86,36.41
step
label "Collect_Briaroot_Brews"
Kill Blackmaw enemies around this area
|tip They look like furbolgs. |notinsticky
click Briaroot Brew##196834+
|tip They look like small bowls with yellow liquid in them.
collect 10 Briaroot Brew##49365 |q 14432/1 |goto 30.86,36.41
step
talk Bilgewater Rocket-jockey##43217
|tip At the top of the tower.
Tell him _"Northern Rocketway Exchange, please."_
Begin Flying to the Northern Rocketway Exchange |invehicle |goto 25.93,49.64 |q 14430
step
Fly to the Northern Rocketway Exchange |outvehicle |goto 44.25,24.34 |q 14430 |notravel
step
talk Andorel Sunsworn##36596
turnin Hacking the Construct##14430 |goto 42.61,23.70
step
talk Haggrum Bloodfist##8586
turnin A Pale Brew##14432 |goto 42.42,23.61
turnin Diplomacy by Another Means##14433 |goto 42.42,23.61
accept The Blackmaw Doublecross##14435 |goto 42.42,23.61
step
use Ambassador Disguise##49368
Take on the Appearance of a Night Elf Ambassador |havebuff Ambassador Disguise##69054 |q 14435
step
talk Andorel Sunsworn##36596 |goto 42.61,23.70
Tell him _"I am ready. Teleport me to Blackmaw Hold."_
Teleport to Blackmaw Hold |goto 31.17,29.86 < 30 |noway |c |q 14435
step
talk Ungarl##36618
|tip Choose any of the conversation options.
|tip Inside the cave.
Sabotage the Negotiations |q 14435/1 |goto 30.98,29.99
stickystart "Kill_Blackmaw_Shamans"
step
kill 4 Blackmaw Warrior##36013 |q 14435/2 |goto 32.47,31.75
|tip Inside and outside the cave. |notinsticky
step
label "Kill_Blackmaw_Shamans"
kill 4 Blackmaw Shaman##36012 |q 14435/3 |goto 32.47,31.75
|tip Inside and outside the cave. |notinsticky
step
Leave the cave |goto 32.47,31.75 < 15 |walk |only if subzone("Blackmaw Hold") and indoors()
talk Haggrum Bloodfist##8586
turnin The Blackmaw Doublecross##14435 |goto 42.42,23.61
step
talk Bilgewater Rocket-jockey##43217
|tip At the top of the tower.
Tell him _"Northern Rocketway Terminus, please."_
Begin Flying to the Northern Rocketway Terminus |invehicle |goto 42.53,24.56 |q 14391
step
Fly to the Northern Rocketway Terminus |outvehicle |goto 67.76,22.13 |q 14391 |notravel
step
talk Kalec##35867
turnin Turning the Tables##14391 |goto 66.55,20.36
accept Fade to Black##24467 |goto 66.55,20.36
step
talk Jellix Fuselighter##37061
accept Pro-liberation##14297 |goto 66.34,20.25
step
talk Feno Blastnoggin##37064
accept Ice Cold##14261 |goto 66.54,19.60
step
kill Twilight Lord Katrana##36638 |q 24467/1 |goto 71.60,16.67
kill Malicion##36649 |q 24467/2 |goto 71.60,16.67
|tip On top of the hill.
step
talk Kalecgos##36689
turnin Fade to Black##24467 |goto 71.81,16.70
stickystart "Rescue_Bilgewater_Laborers"
step
kill 8 Sable Drake##36640 |q 14261/1 |goto 65.92,15.00
|tip They look like red dragons on hilltops and flying in the air.
step
label "Rescue_Bilgewater_Laborers"
Kill Twilight enemies around this area
collect Ironwrought Key##49533+ |n
click Twilight Cage##202787+
|tip They look like grey metal cages.
Rescue #4# Bilgewater Laborers |q 14297/1 |goto 66.93,15.95
step
talk Feno Blastnoggin##37064
turnin Ice Cold##14261 |goto 66.54,19.60
step
talk Jellix Fuselighter##37061
turnin Pro-liberation##14297 |goto 66.34,20.25
step
talk Azuregos##36676
accept Farewell, Minnow##14392 |goto 67.05,20.50
step
talk Sorata Firespinner##36210
turnin Farewell, Minnow##14392 |goto 53.26,49.96
step
talk Gurlorn##37142
accept Airborne Again##24497 |goto 52.98,49.78
step
clicknpc Wings of Steel##37139
Secure a Ride to Valormok |invehicle |goto 60.47,52.20 |q 24497
step
Land in Valormok |outvehicle |goto 13.50,64.90 |q 24497 |notravel
step
talk Chawg##36730
turnin Airborne Again##24497 |goto 14.01,64.84
accept Where's My Head?##14462 |goto 14.01,64.84
accept Let Them Feast on Fear##24433 |goto 14.01,64.84
step
talk Andorel Sunsworn##36919
accept Commando Drop##24434 |goto 13.85,64.49
step
talk Kroum##36728
accept Grounded!##14475 |goto 14.35,65.02
step
talk Slinky Sharpshiv##36729
|tip Dismiss your pet, if you have one.
turnin Where's My Head?##14462 |goto 12.52,67.45
accept Lightning Strike Assassination##14464 |goto 12.52,67.45
step
Watch the dialogue
kill Captain Grunwald##36680
|tip At the top of the tower.
collect Grunwald's Head##49540 |q 14464/1 |goto 11.78,68.23
step
clicknpc Sharpshiv's Parachute##36761
|tip Slinky is wearing it on her back.
Parachute Down to the Ground |invehicle |goto 11.83,68.16 |q 14464
step
talk Chawg##36730
turnin Lightning Strike Assassination##14464 |goto 14.01,64.84
step
talk Bombardier Captain Smooks##36785
turnin Grounded!##14475 |goto 14.45,75.57
accept Rigged to Blow##14476 |goto 14.45,75.57
step
click Detonator Charge 1##197344
Arm Detonator Charge 1 |q 14476/1 |goto 15.03,74.27
step
click Detonator Charge 2##197345
|tip Outside of the building.
Arm Detonator Charge 2 |q 14476/2 |goto 15.46,73.73
step
click Detonator Charge 3##197346
|tip Outside of the building.
Arm Detonator Charge 3 |q 14476/3 |goto 15.57,74.46
step
talk Bombardier Captain Smooks##36785
turnin Rigged to Blow##14476 |goto 14.45,75.57
accept Push the Button!##14477 |goto 14.45,75.57
step
click the Goblin Detonator
|tip It looks like a red button on the side of the crate.
Detonate the Explosives |q 14477/1 |goto 14.41,75.74
stickystart "Kill_Talrendis_Sentinels"
stickystart "Kill_Talrendis_Lorekeepers"
step
kill 12 Talrendis Defender##36816 |q 24433/1 |goto 13.10,69.91
step
label "Kill_Talrendis_Sentinels"
kill 6 Talrendis Sentinel##36914 |q 24433/2 |goto 13.10,69.91
step
label "Kill_Talrendis_Lorekeepers"
kill 5 Talrendis Lorekeeper##36849 |q 24434/1 |goto 10.59,70.60
|tip They look like night elves wearing purple robes.
step
clicknpc Lorekeeper's Summoning Stone##36918
turnin Commando Drop##24434 |goto 10.55,69.85
step
clicknpc Lorekeeper's Summoning Stone##36918
Choose _<Use the stone to teleport back to Valormok.>_
Return to Valormok |condition not subzone("Talrendis Point") |goto 10.55,69.85 |q 24433
step
talk Chawg##36730
turnin Let Them Feast on Fear##24433 |goto 14.01,64.84
step
talk Kroum##36728
turnin Push the Button!##14477 |goto 14.35,65.02
step
talk Jr. Bombardier Hackel##36903
accept Blacken the Skies##24430 |goto 14.47,65.71
step
Borrow a Wind Rider |invehicle |goto 14.46,65.77 |q 24430
stickystart "Kill_Talrendis_Glaive_Throwers"
step
Bomb the Command Center |q 24430/2 |goto 9.29,72.48
|tip Use the "Bomb Toss" ability on your action bar on the Command Center.
|tip It looks like a large building with a purple roof.
|tip Fly high, so you don't get shot at.
step
label "Kill_Talrendis_Glaive_Throwers"
kill 6 Talrendis Glaive Thrower##36890 |q 24430/1 |goto 15.71,71.12
|tip Use the "Bomb Toss" ability on your action bar on Talrendis Glaive Throwers.
|tip They look like artillery machines.
|tip Fly high, so you don't get shot at.
You can find more around [12.31,71.52]
step
Return to Valormok |outvehicle |goto 14.47,65.71 |q 24430
|tip Click the arrow on your action bar.
|tip Fly to this location first.
step
talk Jr. Bombardier Hackel##36903
turnin Blacken the Skies##24430 |goto 14.47,65.71
step
talk Chawg##36730
accept The Conquest of Azshara##24439 |goto 14.01,64.84
step
kill Commander Jarrodenus##36884
|tip Upstairs inside the building.
collect The Head of Jarrodenus##49674 |q 24439/1 |goto 9.15,72.82
step
clicknpc Lorekeeper's Summoning Stone##36918
Choose _<Use the stone to teleport back to Valormok.>_
Return to Valormok |condition not subzone("Talrendis Point") |goto 10.55,69.85 |q 24439
step
talk Chawg##36730
turnin The Conquest of Azshara##24439 |goto 14.01,64.84
step
talk Kroum##8610
accept Probing into Ashenvale##24463 |goto 14.35,65.02
step
talk Kulg Gorespatter##34195
turnin Probing into Ashenvale##24463 |goto Ashenvale 94.40,46.82
accept To The Ramparts!##13866 |goto Ashenvale 94.40,46.82
step
talk Kulg Gorespatter##34195
Tell him _"Send me to the Mor'shan Ramparts, Kulg."_
Begin Traveling to the Mor'shan Ramparts |invehicle |goto 94.40,46.82 |q 13866
step
Travel to the Mor'shan Ramparts |outvehicle |goto The Barrens 42.69,15.26 |q 13866 |notravel
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Kalimdor (1-60)\\Ashenvale (20-26)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Kalimdor (1-60)\\Stonetalon Mountains (26-31)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Kalimdor (1-60)\\Desolace (31-36)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Kalimdor (1-60)\\Feralas (36-40)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Kalimdor (1-60)\\Southern Barrens (31-35)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Kalimdor (1-60)\\Dustwallow Marsh (35-39)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Kalimdor (1-60)\\Thousand Needles (39-44)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Kalimdor (1-60)\\Tanaris (44-47)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Kalimdor (1-60)\\Felwood (47-51)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Kalimdor (1-60)\\Winterspring (51-55)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Kalimdor (1-60)\\Silithus (55-57)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Kalimdor (1-60)\\Un'Goro Crater (55-57)")
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Outland (60-70)\\Hellfire Peninsula (60-62)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Hellfire",
next="Leveling Guides\\Outland (60-70)\\Zangarmarsh (62-63)",
condition_suggested=function() return level >= 60 and level <= 62 and not completedq(9472) end,
},[[
step
Follow the road |goto Swamp of Sorrows/0 35.60,58.30 < 50 |only if walking
Continue following the road |goto Blasted Lands/0 50.46,21.74 < 50 |only if walking
Follow the path down |goto Blasted Lands/0 57.28,47.04 < 20 |only if walking
talk Warlord Dar'toon##19254
accept Through the Dark Portal##9407 |goto Blasted Lands/0 58.10,56.00
step
talk Lieutenant General Orion##19253
turnin Through the Dark Portal##9407 |goto Hellfire Peninsula/0 87.35,49.78
accept Arrival in Outland##10120 |goto Hellfire Peninsula/0 87.35,49.78
step
talk Vlagga Freyfeather##18930
turnin Arrival in Outland##10120 |goto 87.34,48.14
accept Journey to Thrallmar##10289 |goto 87.34,48.14
step
talk Vlagga Freyfeather##18930 |goto 87.34,48.14
Tell her _"Send me to Thrallmar!"_
Begin Flying to Thrallmar |invehicle |goto 56.27,36.38 |q 10289
step
Fly to Thrallmar |outvehicle |goto 56.26,36.42 |q 10289 |notravel
step
talk General Krakork##19255
|tip He walks around this area.
turnin Journey to Thrallmar##10289 |goto 55.87,36.87
accept Report to Nazgrel##10291 |goto 55.87,36.87
step
Enter the building |goto 56.43,37.77 < 10 |walk
talk Floyd Pinkus##16602
|tip Inside the building.
home Thrallmar |goto 56.71,37.47 |q 10291
step
Enter the building |goto 55.14,37.34 < 10 |walk
talk Nazgrel##3230
|tip Inside the building.
turnin Report to Nazgrel##10291 |goto 55.02,35.96
accept Eradicate the Burning Legion##10121 |goto 55.02,35.96
step
talk Vurtok Axebreaker##21256
|tip Inside the building.
accept Bonechewer Blood##10450 |goto 55.13,36.39
step
talk Megzeg Nukklebust##21283
accept I Work... For the Horde!##10086 |goto 55.18,38.79
step
Follow the path |goto 55.64,41.80 < 15 |only if walking
talk Sergeant Shatterskull##19256
|tip He walks around this area.
turnin Eradicate the Burning Legion##10121 |goto 58.09,41.28
accept Felspark Ravine##10123 |goto 58.09,41.28
stickystart "Slay_Flamewaker_Imps"
stickystart "Slay_Infernal_Warbringers"
step
kill 1 Dreadcaller##19434 |q 10123/1 |goto 63.80,37.41
step
label "Slay_Flamewaker_Imps"
kill 4 Flamewaker Imp##19136 |q 10123/2 |goto 63.80,37.41
step
label "Slay_Infernal_Warbringers"
kill 6 Infernal Warbringer##19261 |q 10123/3 |goto 63.80,37.41
stickystart "Collect_Salvaged_Woods"
stickystart "Collect_Bonechewer_Bloods"
step
click Salvageable Metal##182938+
|tip They look like metal cogs and piles on the ground around this area.
collect 8 Salvaged Metal##67419 |q 10086/1 |goto 61.28,47.49
You can find more around: |notinsticky
[58.63,46.69]
[55.69,46.55]
[53.15,47.13]
step
label "Collect_Salvaged_Woods"
click Salvageable Wood##182936+
|tip They look like piles of wooden planks and barrels on the ground around this area.
collect 8 Salvaged Wood##67420 |q 10086/2 |goto 61.28,47.49
You can find more around: |notinsticky
[58.63,46.69]
[55.69,46.55]
[53.15,47.13]
step
label "Collect_Bonechewer_Bloods"
Kill Bonechewer enemies around this area
collect 12 Bonechewer Blood##30327 |q 10450/1 |goto 61.28,47.49
You can find more around: |notinsticky
[58.63,46.69]
[55.69,46.55]
[53.15,47.13]
step
Follow the path |goto 55.63,41.77 < 15 |only if walking
talk Megzeg Nukklebust##21283
turnin I Work... For the Horde!##10086 |goto 55.18,38.79
accept Burn It Up... For the Horde!##10087 |goto 55.18,38.79
step
Enter the building |goto 55.14,37.34 < 10 |walk
talk Vurtok Axebreaker##21256
|tip Inside the building.
turnin Bonechewer Blood##10450 |goto 55.13,36.39
accept Apothecary Zelana##10449 |goto 55.13,36.39
step
Follow the path |goto 55.64,41.80 < 15 |only if walking
talk Sergeant Shatterskull##19256
|tip He walks around this area.
turnin Felspark Ravine##10123 |goto 58.09,41.28
accept Forward Base: Reaver's Fall##10124 |goto 58.09,41.28
step
Follow the path up |goto 63.45,45.96 < 30 |only if walking
talk Forward Commander To'arch##19273
turnin Forward Base: Reaver's Fall##10124 |goto 65.89,43.59
accept Disrupt Their Reinforcements##10208 |goto 65.89,43.59
step
talk Apothecary Zelana##21257
turnin Apothecary Zelana##10449 |goto 66.17,41.95
accept Spinebreaker Post##10242 |goto 66.17,41.95
step
Kill enemies around this area
collect 4 Demonic Rune Stone##28513+ |n
click Portal Xilus##184290
Disrupt Port Xilus |q 10208/1 |goto 70.83,45.48
step
Kill enemies around this area
collect 4 Demonic Rune Stone##28513+ |n
click Portal Kruul##184289
Disrupt Port Kruul |q 10208/2 |goto 74.01,38.73
step
Follow the path up |goto 68.18,45.06 < 30 |only if walking
talk Forward Commander To'arch##19273
turnin Disrupt Their Reinforcements##10208 |goto 65.89,43.59
accept Mission: Gateways Murketh and Shaadraz##10129 |goto 65.89,43.59
step
talk Wing Commander Brack##19401
Tell him _"I'm on a bombing mission for Forward Commander To'arch. I need a wyvern destroyer!"_
Mount a Wyvern Destroyer |invehicle |goto 66.10,43.72 |q 10129
step
use the Seaforium PU-36 Explosive Nether Modulator##28038
|tip Use it on the demon building on the ground as you fly.
Destroy Gateway Shaadraz |q 10129/2 |goto 77.73,51.81 |notravel
step
use the Seaforium PU-36 Explosive Nether Modulator##28038
|tip Use it on the demon building on the ground as you fly.
Destroy Gateway Murketh |q 10129/1 |goto 78.02,47.19 |notravel
step
Return to Reaver's Fall |outvehicle |goto 66.10,43.72 |q 10129 |notravel
step
talk Forward Commander To'arch##19273
turnin Mission: Gateways Murketh and Shaadraz##10129 |goto 65.89,43.59
accept Mission: The Abyssal Shelf##10162 |goto 65.89,43.59
accept Return to Thrallmar##10388 |goto 65.89,43.59
step
talk Wing Commander Brack##19401
Tell him _"Send me to the Abyssal Shelf!"_
Mount a Wyvern Destroyer |invehicle |goto 66.10,43.72 |q 10162
stickystart "Destroy_Fel_Cannons"
stickystart "Slay_Ganarg_Peons"
step
use the Area 52 Special##28132
|tip Use it to bomb the area below you as you fly. |notinsticky
|tip If you don't complete this in the first run, you can try again by talking to the same NPC. |notinsticky
kill 5 Mo'arg Overseer##19397 |q 10162/2 |goto 72.62,20.81 |notravel
|tip They look like enemies with a drill hand.
step
label "Destroy_Fel_Cannons"
use the Area 52 Special##28132
|tip Use it on the enemies on the ground as you fly. |notinsticky
|tip If you don't complete this in the first run, you can try again by talking to the same NPC. |notinsticky
Destroy #5# Fel Cannons |q 10162/3 |goto 72.62,20.81 |notravel
|tip They look like brown and green metal demon cannons on the ground around this area as you fly.
step
label "Slay_Ganarg_Peons"
use the Area 52 Special##28132
|tip Use it on the enemies on the ground as you fly. |notinsticky
|tip If you don't complete this in the first run, you can try again by talking to the same NPC. |notinsticky
kill 20 Gan'arg Peon##19398 |q 10162/1 |goto 72.62,20.81 |notravel
step
Return to Reaver's Fall |outvehicle |goto 66.10,43.72 |q 10162 |notravel
step
talk Forward Commander To'arch##19273
turnin Mission: The Abyssal Shelf##10162 |goto 65.89,43.59
step
talk Wing Commander Brack##19401
Tell him _"Lend me a Windrider. I'm going to Spinebreaker Post!"_
Begin Flying to Spinebreaker Post |invehicle |goto 66.10,43.71 |q 10278 |future
step
Fly to Spinebreaker Post |outvehicle |goto 61.54,81.29 |q 10278 |future |notravel
step
talk Amilya Airheart##19558
fpath Spinebreaker Ridge |goto 61.65,81.20
step
talk Ogath the Mad##19683
accept The Warp Rifts##10278 |goto 61.87,81.53
step
talk Emissary Mordiba##19682
accept Make Them Listen##10220 |goto 61.78,81.70
step
talk Apothecary Albreck##21279
turnin Spinebreaker Post##10242 |goto 61.14,81.77
accept Boiling Blood##10538 |goto 61.14,81.77
step
talk Grelag##16858
accept Preparing the Salve##9345 |goto 60.93,81.67
step
click Wanted Poster##184945
accept Wanted: Worg Master Kruush##10809 |goto 61.22,80.61
step
click Hellfire Spineleaf##181372+
|tip They look like small brown and green plants all around this area.
collect 12 Hellfire Spineleaf##23205 |q 9345/1 |goto 61.87,73.51
You can find more around: |notinsticky
[66.77,68.57]
[64.84,63.39]
[63.12,58.68]
step
Avoid the Alliance guards near the large wooden cart |goto 62.76,57.04 < 50 |only if walking
use Flaming Torch##27479
Burn the Western Cannon |q 10087/2 |goto 55.34,53.76
step
use Flaming Torch##27479
Burn the Eastern Cannon |q 10087/1 |goto 60.66,52.43
step
Kill enemies around this area
|tip Being a level higher will make the next few quests easier.
Reach Level 59 |ding 59 |goto 57.47,53.42
stickystart "Collect_Bleeding_Hollow_Blood"
step
Avoid the Alliance guards near the large wooden cart |goto 63.71,60.49 < 50 |only if walking
Follow the path |goto 68.17,69.78 < 20 |only if walking
kill Worg Master Kruush##19442
|tip He walks around this area.
collect Worg Master's Head##31374 |q 10809/1 |goto 68.46,73.62
step
label "Collect_Bleeding_Hollow_Blood"
Kill Bleeding Hollow enemies around this area
collect 12 Bleeding Hollow Blood##30425 |q 10538 |goto 67.37,74.60
step
click Cursed Cauldron##184715
|tip You will have to click it 12 times.
|tip Each time you click the cauldron, scarabs will run out that will attack you.
|tip Immediately after clicking the cauldron, run away and wait until the scarabs disappear.
collect 12 Boiled Blood##30430 |q 10538/1 |goto 65.20,71.20
step
Follow the path |goto 61.09,80.81 < 30 |only if walking
talk Captain Darkhowl##22107
turnin Wanted: Worg Master Kruush##10809 |goto 61.21,81.32
accept Zeth'Gor Must Burn!##10792 |goto 61.21,81.32
step
talk Grelag##16858
turnin Preparing the Salve##9345 |goto 60.93,81.67
accept Investigate the Crash##10213 |goto 60.93,81.67
step
talk Apothecary Albreck##21279
turnin Boiling Blood##10538 |goto 61.14,81.77
accept Apothecary Antonivich##10835 |goto 61.14,81.77
step
_Destroy These Items:_
|tip They are no longer needed.
trash Bleeding Hollow Blood##30425
step
talk Zezzak##22231
accept The Eyes of Grillok##10813 |goto 61.66,81.85
step
talk Megzeg Nukklebust##21283
turnin Burn It Up... For the Horde!##10087 |goto 55.18,38.79
step
Enter the building |goto 55.14,37.34 < 10 |walk
talk Nazgrel##3230
|tip Inside the building.
turnin Return to Thrallmar##10388 |goto 55.02,35.97
accept Forge Camp: Mageddon##10390 |goto 55.02,35.97
step
Follow the path up |goto 53.77,38.88 < 20 |only if walking
Enter the building |goto 52.75,36.44 < 7 |walk
talk Apothecary Antonivich##16588
|tip Inside the building.
turnin Apothecary Antonivich##10835 |goto 52.29,36.46
accept A Burden of Souls##10864 |goto 52.29,36.46
stickystart "Slay_Ganarg_Servants"
step
Follow the path up |goto 61.26,36.40 < 30 |only if walking
Follow the path |goto 63.26,30.39 < 30 |only if walking
kill Razorsaw##20798
|tip He walks around this area.
collect Head of Forgefiend Razorsaw##29586 |q 10390/2 |goto 64.95,31.81
collect Burning Legion Missive##29590 |q 10393 |future
step
use the Burning Legion Missive##29590
accept Vile Plans##10393
step
label "Slay_Ganarg_Servants"
kill 10 Gan'arg Servant##16947 |q 10390/1 |goto 64.95,31.81
step
Enter the building |goto 55.14,37.34 < 10 |walk
talk Magister Bloodhawk##21175
|tip Inside the building.
turnin Vile Plans##10393 |goto 55.12,36.03
step
talk Nazgrel##3230
|tip Inside the building.
turnin Forge Camp: Mageddon##10390 |goto 55.02,35.97
accept Cannons of Rage##10391 |goto 55.02,35.97
step
Follow the path up |goto 61.26,36.40 < 30 |only if walking
Follow the path |goto 63.26,30.39 < 30 |only if walking
kill Fel Cannon MKI##22461+
|tip They are lined up along the cliff edge around this area.
Slay #3# Fel Cannon MKI |q 10391/1 |goto 64.95,31.81
step
Enter the building |goto 55.14,37.34 < 10 |walk
talk Nazgrel##3230
|tip Inside the building.
turnin Cannons of Rage##10391 |goto 55.02,35.96
accept Doorway to the Abyss##10392|goto 55.02,35.96
step
Follow the path up |goto 57.24,35.15 < 15 |only if walking
Follow the path |goto 53.83,27.75 < 30 |only if walking
kill Warbringer Arix'Amal##19298 |q 10392/1 |goto 53.09,26.47
collect Burning Legion Gate Key##29795 |q 10392/3 |goto 53.09,26.47
step
click Rune of Spite##182935
|tip It looks like a small green floating glyph inside the portal.
|tip Stand right underneath it to be able to click it.
Close the Burning Legion Gate |q 10392/2 |goto 53.05,27.63
step
Enter the building |goto 55.14,37.34 < 10 |walk
talk Nazgrel##3230
|tip Inside the building.
turnin Doorway to the Abyss##10392 |goto 55.02,35.96
step
Follow the path down |goto 53.49,34.58 < 30 |only if walking
talk Foreman Razelcraz##16915
|tip He walks around this area.
accept Outland Sucks!##10236 |goto 51.37,30.53
stickystart "Collect_Shredder_Spare_Parts"
step
kill Crust Burster##16844+
|tip They are under the jumping piles of rocks, they come up to fight when you get close.
collect Eroded Leather Case##23338 |n
use the Eroded Leather Case##23338
accept Missing Missive##9373 |goto 48.83,37.27
You can find more around [47.51,42.94]
step
label "Collect_Shredder_Spare_Parts"
click Shredder Parts##235310+
|tip They look like wooden crates on the ground around this area.
collect 6 Shredder Spare Parts##28554 |q 10236/1 |goto 48.83,37.27
You can find more around [47.51,42.94]
step
talk Foreman Razelcraz##16915
|tip He walks around this area.
turnin Outland Sucks!##10236 |goto 51.37,30.53
accept How to Serve Goblins##10238 |goto 51.37,30.53
stickystart "Reap_Shattered_Hand_Souls"
step
click Manni's Cage##183936
Save Manni |q 10238/1 |goto 45.12,41.09
step
click Moh's Cage##183940
Save Moh |q 10238/2 |goto 46.46,45.15
step
click Jakk's Cage##183941
Save Jakk |q 10238/3 |goto 47.49,46.60
step
label "Reap_Shattered_Hand_Souls"
Kill Shattered Hand enemies around this area
Reap #20# Shattered Hand Souls |q 10864/1 |goto 47.12,45.59
step
talk Foreman Razelcraz##16915
|tip He walks around this area.
turnin How to Serve Goblins##10238 |goto 51.37,30.53
accept Shizz Work##10629 |goto 51.37,30.53
step
use the Felhound Whistle##30803
|tip This will summon a Fel Guard Hound next to you.
Click Here After Summoning the Hound |confirm |q 10629 |goto 51.31,30.55
step
kill Deranged Helboar##16863+
|tip The Fel Guard Hound will eat their corpses.
click Felhound Poo+
|tip Small piles of poop will appear on the ground.
collect Shredder Keys##30794 |q 10629/1 |goto 49.23,30.16
step
talk Foreman Razelcraz##16915
|tip He walks around this area.
turnin Shizz Work##10629 |goto 51.37,30.53
accept Beneath Thrallmar##10630 |goto 51.37,30.53
step
Enter the mine |goto 51.59,31.74 < 7 |walk
kill Urga'zz##18976 |q 10630/1 |goto 54.38,31.34
|tip He walks around this area.
|tip Inside the mine.
step
Follow the path |goto 53.40,31.68 < 7 |walk
Leave the mine |goto 51.59,31.74 < 7 |walk
talk Foreman Razelcraz##16915
|tip He walks around this area.
turnin Beneath Thrallmar##10630 |goto 51.37,30.53
step
Follow the path up |goto 52.13,33.54 < 30 |only if walking
Follow the path up |goto 53.66,38.50 < 20 |only if walking
Enter the building |goto 52.76,36.44 < 7 |walk
talk Apothecary Antonivich##16588
|tip Inside the building.
turnin A Burden of Souls##10864 |goto 52.28,36.46
step
Kill enemies around this area
|tip You need to be at least level 60 to be able to accept the next quests.
Reach Level 60 |ding 60 |goto 55.78,46.75
step
talk Martik Tor'seldori##16577
accept Falcon Watch##9498 |goto 55.18,39.12 |only if not BloodElf
accept Falcon Watch##9499 |goto 55.18,39.12 |only BloodElf
step
Enter the building |goto 55.14,37.37 < 10 |walk
talk Magister Bloodhawk##21175
|tip Inside the building.
accept The Agony and the Darkness##10389 |goto 55.13,36.03
step
talk Nazgrel##3230
|tip Inside the building.
accept The Assassin##9400 |goto 55.02,35.97
stickystart "Kill_Unyielding_Sorcerers"
stickystart "Kill_Unyielding_Knights"
stickystart "Kill_Unyielding_Footmen"
step
label "Accept_Decipher_the_Tome"
Kill Unyielding enemies around this area
collect A Mysterious Tome##28552 |n
use A Mysterious Tome##28552
accept Decipher the Tome##10229 |goto 55.54,80.84
step
label "Kill_Unyielding_Sorcerers"
kill 6 Unyielding Sorcerer##16905 |q 10220/3 |goto 55.10,80.50
|tip You can find a few more on the outside of the walls around this area, but they are mostly concentrated in this area. |notinsticky
step
label "Kill_Unyielding_Knights"
kill 8 Unyielding Knight##16906 |q 10220/2 |goto 54.45,85.49
You can find more around: |notinsticky
[55.58,77.08]
[52.35,78.08]
step
label "Kill_Unyielding_Footmen"
kill 12 Unyielding Footman##16904 |q 10220/1 |goto 57.68,75.69
You can find more around: |notinsticky
[54.99,77.48]
[51.70,79.11]
[54.26,85.48]
step
talk "Screaming" Screed Luckheed##19367
turnin Investigate the Crash##10213 |goto 49.15,74.86
accept In Case of Emergency...##10161 |goto 49.15,74.86
step
talk Legassi##19344
accept Ravager Egg Roundup##9349 |goto 49.24,74.83
step
click Zeppelin Debris##183397+
|tip They look like pieces of metal and wood around this area.
collect 30 Zeppelin Debris##28116 |q 10161/1 |goto 65.30,65.93
You can find more around: |notinsticky
[61.75,68.94]
[61.00,75.45]
[59.08,70.25]
[56.49,72.87]
step
Follow the path |goto 61.04,80.73 < 30 |only if walking
talk Emissary Mordiba##19682
turnin Make Them Listen##10220 |goto 61.78,81.70
step
talk Althen the Historian##19736
turnin Decipher the Tome##10229 |goto 61.74,81.78
accept The Battle Horn##10230 |goto 61.74,81.78
step
kill Lieutenant Commander Thalvos##16978
|tip He walks around this area.
collect Unyielding Battle Horn##28562 |q 10230/1 |goto 54.77,83.72
step
talk "Screaming" Screed Luckheed##19367
turnin In Case of Emergency...##10161 |goto 49.15,74.86
accept Voidwalkers Gone Wild##9351 |goto 49.15,74.86
stickystart "Collect_Condensed_Voidwalker_Essences"
step
use the Unstable Warp Rift Generator##29027
|tip Use it next to warp rifts.
|tip They look like big black balls of lightning around this area.
kill Unstable Voidwalker##20145+
collect 3 Warp Nether##29051 |q 10278/1 |goto 46.30,83.13
You can find another warp rift at [50.04,83.14]
step
label "Collect_Condensed_Voidwalker_Essences"
Kill Voidwalker enemies around this area
|tip Unstable Voidwalkers will not drop the quest item.
collect 10 Condensed Voidwalker Essence##23218 |q 9351/1 |goto 46.31,83.29
You can find more around [50.04,83.14]
step
Follow the path |goto 44.95,80.65 < 40 |only if walking
kill Razorfang Ravager##16933+
|tip The Razorfang Hatchlings will not drop the quest item.
click Ravager Egg+
|tip They look like large white eggs on the ground around this area.
collect 12 Ravager Egg##23217 |q 9349/1 |goto 40.90,85.11
You can find more around [36.30,90.18]
step
Follow the path |goto 35.65,90.23 < 30 |only if walking
Follow the road |goto Terokkar Forest/0 54.37,20.55 < 30 |only if walking
Continue following the road |goto Terokkar Forest/0 47.22,27.06 < 30 |only if walking
Cross the bridge |goto Shattrath City/0 78.05,56.78 < 20 |only if walking
talk Nutral##18940
fpath Shattrath |goto Shattrath City/0 64.07,41.11
step
Cross the bridge |goto 66.93,51.13 < 20 |only if walking
Follow the road |goto Terokkar Forest/0 38.68,26.61 < 30 |only if walking
Continue following the road |goto Terokkar Forest/0 47.53,26.91 < 30 |only if walking
Continue following the road |goto Terokkar Forest/0 53.21,22.18 < 30 |only if walking
Follow the path |goto Hellfire Peninsula/0 36.53,90.02 < 30 |only if walking
Follow the path |goto Hellfire Peninsula/0 44.69,81.04 < 40 |only if walking
talk "Screaming" Screed Luckheed##19367
turnin Voidwalkers Gone Wild##9351 |goto Hellfire Peninsula/0 49.15,74.86
step
talk Legassi##19344
turnin Ravager Egg Roundup##9349 |goto 49.24,74.84
accept Helboar, the Other White Meat##9361 |goto 49.24,74.84
step
kill Deranged Helboar##16863+
collect Tainted Helboar Meat##23270+ |n
use the Purification Mixture##23268
|tip Use it when you have Tainted Helboar Meat.
|tip They may not all become Purified.
collect 8 Purified Helboar Meat##23248 |q 9361/1 |goto 51.15,77.96
You can find more around:
[50.50,70.03]
[54.69,70.85]
step
talk Legassi##19344
turnin Helboar, the Other White Meat##9361 |goto 49.24,74.84
accept Smooth as Butter##9356 |goto 49.24,74.84
step
kill Bonestripper Buzzard##16972+
collect 12 Plump Buzzard Wing##23239 |q 9356/1 |goto 57.40,72.19
You can find more around:
[59.09,69.04]
[62.96,67.81]
[64.53,64.36]
step
talk Legassi##19344
turnin Smooth as Butter##9356 |goto 49.24,74.84
step
Follow the path |goto 55.78,72.34 < 50 |only if walking
talk Ogath the Mad##19683
turnin The Warp Rifts##10278 |goto 61.87,81.53
accept Void Ridge##10294 |goto 61.87,81.53
step
talk Althen the Historian##19736
turnin The Battle Horn##10230 |goto 61.74,81.78
accept Bloody Vengeance##10250 |goto 61.74,81.78
step
use the Unyielding Battle Horn##28651
kill Urtrak##19862 |q 10250/1 |goto 63.49,77.55
|tip Allies will appear and help you fight.
step
Follow the path |goto 62.57,71.47 < 70 |only if walking
Continue following the path |goto 67.39,64.94 < 70 |only if walking
Follow the path up |goto 71.83,67.25 < 20 |only if walking
Kill Voidwalker enemies around this area
collect 40 Void Ridge Soul Shard##29161 |q 10294/1 |goto 77.41,69.43
step
Follow the path |goto 72.62,67.09 < 20 |only if walking
kill Bleeding Hollow Peon##16907+
collect 4 Bleeding Hollow Torch##31347 |goto 68.89,69.75 |q 10792
step
use Bleeding Hollow Torch##31347
collect 4 Burning Bleeding Hollow Torch##31346 |goto 69.18,69.23 |q 10792
|tip These will only last for 5 minutes, so try to hurry when doing the next 4 steps.
step
use the Burning Bleeding Hollow Torch##31346
Burn the Eastern Hovel |q 10792/2 |goto 69.50,70.23
|tip If your torches burn out, kill Bleeding Hollow Peons to get more torches.
|tip You can use the torches at the Forge to get more Burning Torches to complete the quest with.
The Forge is located at [69.18,69.23]
step
use the Burning Bleeding Hollow Torch##31346
Burn the Stable |q 10792/4 |goto 68.62,72.90
|tip If your torches burn out, kill Bleeding Hollow Peons to get more torches.
|tip You can use the torches at the Forge to get more Burning Torches to complete the quest with.
The Forge is located at [69.18,69.23]
step
use the Burning Bleeding Hollow Torch##31346
Burn the Western Hovel |q 10792/3 |goto 67.49,75.73
|tip If your torches burn out, kill Bleeding Hollow Peons to get more torches.
|tip You can use the torches at the Forge to get more Burning Torches to complete the quest with.
The Forge is located at [69.18,69.23]
step
use the Burning Bleeding Hollow Torch##31346
Burn the Barracks |q 10792/1 |goto 69.26,76.13
|tip If your torches burn out, kill Bleeding Hollow Peons to get more torches.
|tip You can use the torches at the Forge to get more Burning Torches to complete the quest with.
The Forge is located at [69.18,69.23]
step
use Zezzak's Shard##31463
|tip Use it on an Eye of Grillok.
|tip They look like floating green eyes around this area.
|tip Try to do it with no other enemies around.
|tip You have to let it channel until you get the debuff.
|tip You will gain a debuff that will make enemies attack you from further away.
|tip After you absorb the eye, try to mount up and run out of the Zeth'Gor area as fast as you can, and try to stay away from enemies.
|tip They are pretty rare, so just kill enemies all around this area until you find one.
|tip It may take a while, but you will be reducing how much you need to grind in later levels.
Absorb an Eye of Grillok |havebuff Eye of Grillok##38495 |goto 66.87,72.82 |q 10813
step
Follow the path |goto 61.06,80.76 < 30 |only if walking
Return the Eye of Grillok |q 10813/1 |goto 61.64,81.81
step
talk Zezzak##22231
turnin The Eyes of Grillok##10813 |goto 61.66,81.85
step
talk Althen the Historian##19736
turnin Bloody Vengeance##10250 |goto 61.74,81.78
accept Honor the Fallen##10258 |goto 61.74,81.78
step
talk Ogath the Mad##19683
turnin Void Ridge##10294 |goto 61.87,81.53
step
talk Captain Darkhowl##22107
turnin Zeth'Gor Must Burn!##10792 |goto 61.21,81.32
step
Enter the building |goto 56.62,77.63 < 7 |walk
talk Commander Hogarth##19937
|tip Inside the building.
turnin Honor the Fallen##10258 |goto 56.92,77.37
step
Kill enemies around this area
|tip You need to be at least level 61 to be able to accept some quests soon.
Reach Level 61 |ding 61 |goto 55.78,46.75
step
Follow the road |goto 45.73,44.35 < 40 |only if walking
Follow the path |goto 33.43,45.12 < 20 |only if walking
Find Krun Spinebreaker |q 9400/1 |goto 33.61,43.53
step
clicknpc Fel Orc Corpse##17062
turnin The Assassin##9400 |goto 33.61,43.53
accept A Strange Weapon##9401 |goto 33.61,43.53
step
Follow the road |goto 27.81,57.82 < 30 |only if walking
Follow the path up |goto 25.92,61.35 < 20 |only if walking
talk Magistrix Carinda##16793
accept Arelion's Journal##9374 |goto 26.37,60.32
step
Enter the building |goto 26.83,60.06 < 7 |walk
talk Apothecary Azethen##16794
|tip Inside the building.
accept Source of the Corruption##9387 |goto 26.79,59.71
step
talk Ryathen the Somber##16791
|tip Inside the building.
accept In Need of Felblood##9366 |goto 26.98,59.54
step
talk Arcanist Calesthris Dawnstar##16792
|tip Inside the building.
accept Magic of the Arakkoa##9396 |goto 27.05,59.77
step
Follow the path up |goto 27.37,62.68 < 20 |only if walking
talk Falconer Drenna Riverwind##16790
|tip She walks around this area.
accept Trueflight Arrows##9381 |goto 27.71,60.34
accept Birds of a Feather##9397 |goto 27.71,60.34
accept Helping the Cenarion Post##10442 |goto 27.71,60.34
step
talk Innalia##18942
fpath Falcon Watch |goto 27.79,59.99
step
Enter the building |goto 28.20,60.32 < 7 |walk
click Orb of Translocation##184500 |goto 28.35,60.20
|tip Inside the building.
Teleport to the Balcony |goto 28.28,60.12 < 2 |noway |q 9340 |future
step
talk Ranger Captain Venn'ren##16789
|tip On top of the building.
turnin Falcon Watch##9498 |goto 28.49,60.24 |only if not BloodElf
turnin Falcon Watch##9499 |goto 28.49,60.24 |only BloodElf
accept The Great Fissure##9340 |goto 28.49,60.24
accept Report to Zurai##10103 |goto 28.49,60.24
step
click Orb of Translocation##184500 |goto 28.39,60.20
|tip On top of the building.
Teleport Back Down |goto 28.28,60.26 < 2 |noway |q 9340
step
Enter the building |goto 55.14,37.38 < 10 |walk
talk Nazgrel##3230
|tip Inside the building.
turnin A Strange Weapon##9401 |goto 55.02,35.96
accept The Warchief's Mandate##9405 |goto 55.02,35.96
step
talk Far Seer Regulkut##16574
turnin The Warchief's Mandate##9405 |goto 54.23,37.90
accept A Spirit Guide##9410 |goto 54.23,37.90
stickystart "Collect_Felblood_Samples"
stickystart "Slay_Terrorfiends"
step
Follow the road |goto 45.73,44.35 < 40 |only if walking
Follow the path |goto 40.95,43.57 < 30 |only if walking
click Arelion's Knapsack##184115
collect Arelion's Knapsack##31955 |n
use Arelion's Knapsack##31955
collect Arelion's Journal##23339 |q 9374/1 |goto 40.04,37.18
step
label "Collect_Felblood_Samples"
kill Terrorfiend##16951+
collect 6 Felblood Sample##23269 |q 9366/1 |goto 39.81,33.29
step
label "Slay_Terrorfiends"
kill 10 Terrorfiend##16951 |q 10389/1 |goto 39.81,33.29
step
Follow the path |goto 37.73,44.39 < 30 |only if walking
Follow the path |goto 33.43,45.12 < 20 |only if walking
use the Ancestral Spirit Wolf Totem##23669
Summon an Ancestral Spirit Wolf |havebuff Guided by the Spirits##29938 |goto 33.62,43.53 |q 9410
step
Watch the dialogue
|tip Follow the Ancestral Spirit Wolf as it walks.
|tip Stay close to the wolf and follow it until it stops, or you will not be able to turn in the quest.
|tip It eventually walks to this location.
Follow the Ancestral Spirit Wolf |goto 31.99,27.79 < 10 |q 9410
step
talk Gorkan Bloodfist##16845
turnin A Spirit Guide##9410 |goto 31.99,27.79
accept The Mag'har##9406 |goto 31.99,27.79
step
Follow the path |goto 34.38,31.33 < 30 |only if walking
kill Bonestripper Vulture##16973+
collect 8 Bonestripper Tail Feather##23387 |q 9381/1 |goto 26.02,46.15
You can find more around [29.61,55.02]
stickystart "Kill_Stonescythe_Whelps"
step
kill 3 Stonescythe Alpha##16929 |q 9340/2 |goto 34.16,63.05
|tip There are a few inside this cave.
|tip You can find more outside the cave, but they are more rare and spread out.
|tip Be careful of the elite enemy inside the cave.
step
label "Kill_Stonescythe_Whelps"
kill 8 Stonescythe Whelp##16927 |q 9340/1 |goto 34.26,61.82
step
Follow the path |goto 27.37,58.22 < 30 |only if walking
Follow the path up |goto 25.94,61.33 < 20 |only if walking
talk Magistrix Carinda##16793
turnin Arelion's Journal##9374 |goto 26.37,60.32
accept Arelion's Secret##10286 |goto 26.37,60.32
step
Enter the building |goto 26.84,60.04 < 7 |walk
talk Ryathen the Somber##16791
|tip Inside the building.
turnin In Need of Felblood##9366 |goto 26.98,59.54
accept The Cleansing Must Be Stopped##9370 |goto 26.98,59.54
step
Follow the path up |goto 27.28,62.71 < 15 |only if walking
talk Falconer Drenna Riverwind##16790
|tip She walks around this area.
turnin Trueflight Arrows##9381 |goto 27.71,60.34
step
Enter the building |goto 28.20,60.32 < 7 |walk
click Orb of Translocation##184500 |goto 28.35,60.20
|tip Inside the building.
Teleport to the Balcony |goto 28.28,60.12 < 2 |noway |q 9391 |future
step
talk Ranger Captain Venn'ren##16789
|tip On top of the building.
turnin The Great Fissure##9340 |goto 28.49,60.24
accept Marking the Path##9391 |goto 28.49,60.24
step
click Orb of Translocation##184500 |goto 28.39,60.20
|tip On top of the building.
Teleport Back Down |goto 28.28,60.26 < 2 |noway |q 9391
step
Enter the building |goto 55.14,37.37 < 10 |walk
talk Magister Bloodhawk##21175
|tip Inside the building.
turnin The Agony and the Darkness##10389 |goto 55.12,36.03
step
talk Nazgrel##3230
|tip Inside the building.
turnin The Mag'har##9406 |goto 55.02,35.97
accept Messenger to Thrall##9438 |goto 55.02,35.97
step
Enter the building |goto Orgrimmar/0 40.28,36.96 < 10 |walk
talk Thrall##4949
|tip Inside the building.
turnin Messenger to Thrall##9438 |goto Orgrimmar/0 31.61,37.83
accept Envoy to the Mag'har##9441 |goto Orgrimmar/0 31.61,37.83
step
Follow the road |goto Hellfire Peninsula/0 45.85,44.30 < 40 |only if walking
Follow the path |goto Hellfire Peninsula/0 40.91,43.42 < 30 |only if walking
use the Signaling Gem##23358
kill Draenei Anchorite##16994 |q 9370/1 |goto Hellfire Peninsula/0 39.04,40.33
|tip He appears with 2 bodyguards, so be ready to fight.
step
Follow the road |goto 36.74,44.91 < 40 |only if walking
Follow the path |goto 33.40,45.30 < 30 |only if walking
Follow the path up |goto 30.07,34.94 < 20 |only if walking
Follow the path |goto 34.27,34.48 < 30 |only if walking
Follow the path |goto 32.58,28.41 < 10 |only if walking
talk Gorkan Bloodfist##16845
turnin Envoy to the Mag'har##9441 |goto 31.99,27.79
step
talk Earthcaller Ryga##17123
accept A Debilitating Sickness##9442 |goto 32.09,28.36
step
Follow the path |goto 34.48,30.93 < 30 |only if walking
Follow the path down |goto 33.77,34.61 < 30 |only if walking
Follow the path |goto 30.69,39.83 < 70 |only if walking
click Southern Beacon
Light the Southern Beacon |q 9391/3 |goto 36.10,65.31
step
Enter the cave |goto 34.16,63.03 < 7 |walk
click Drycap Mushroom
|tip They look like brown mushrooms on the ground around this area.
|tip Inside the cave.
|tip Be careful to avoid Blacktalon the Savage, an elite enemy inside the cave.
collect Drycap Mushroom##23753 |q 9442/1 |goto 34.21,64.53
step
Leave the cave |goto 34.16,63.03 < 7 |walk
click Central Beacon
Light the Central Beacon |q 9391/2 |goto 34.09,60.08
step
click Western Beacon
Light the Western Beacon |q 9391/1 |goto 30.07,60.57
stickystart "Collect_Haaleshi_Scrolls"
stickystart "Cage_A_Female_Kaliri_Hatchling"
step
Follow the path |goto 26.20,71.39 < 20 |only if walking
Follow the path up |goto 26.04,77.31 < 7 |only if walking
kill Avruu##17084
|tip He walks along this ledge around this area.
collect Avruu's Orb##23580 |n
use Avruu's Orb##23580
accept Avruu's Orb##9418 |goto 25.66,76.40
step
click Haal'eshi Altar##181606
Choose _"Place Avruu's Orb on the Altar."_
kill Aeranas##17085
|tip He will eventually surrender.
talk Aeranas##17085
turnin Avruu's Orb##9418 |goto 28.92,81.46
step
label "Collect_Haaleshi_Scrolls"
Kill Haal'eshi enemies around this area
collect 4 Haal'eshi Scroll##23483 |q 9396/1 |goto 25.88,75.23
step
label "Cage_A_Female_Kaliri_Hatchling"
click Kaliri Nest##181582+
|tip They look like bird nests with pink eggs in them on the ground around this area.
|tip Either a male or female hatchling will appear.
use the Empty Birdcage##23485
|tip Use it on a Female Kaliri Hatchling.
Cage the Female Kaliri Hatchling |q 9397/1 |goto 25.88,75.23
step
talk Wounded Blood Elf Pilgrim##16993
|tip Inside the cave.
|tip If she's not there, someone else may be escorting her.
|tip Wait for her to respawn.
accept The Road to Falcon Watch##9375 |goto 24.57,76.05
step
Watch the dialogue
|tip Follow the Wounded Blood Elf Pilgrim and protect her as she walks.
|tip Let her walk ahead and get attacked first, so she can tank the enemies.
|tip Focus on killing the enemy she is fighting.
|tip She eventually walks to this location.
|tip If you find this quest too difficult, try to find someone to help you, or skip it.
Escort the Wounded Blood Elf Pilgrim to Falcon Watch |q 9375/1 |goto 27.17,61.89
step
talk Taleris Dawngazer##17015
turnin The Road to Falcon Watch##9375 |goto 27.16,61.90
accept A Pilgrim's Plight##9376 |goto 27.16,61.90
step
Enter the building |goto 26.83,60.05 < 7 |walk
talk Arcanist Calesthris Dawnstar##16792
|tip Inside the building.
turnin Magic of the Arakkoa##9396 |goto 27.05,59.77
step
talk Ryathen the Somber##16791
|tip Inside the building.
turnin The Cleansing Must Be Stopped##9370 |goto 26.99,59.54
step
Follow the path up |goto 27.27,62.70 < 15 |only if walking
talk Falconer Drenna Riverwind##16790
|tip She walks around this area.
turnin Birds of a Feather##9397 |goto 27.71,60.34
step
Enter the building |goto 28.20,60.32 < 7 |walk
click Orb of Translocation##184500 |goto 28.35,60.20
|tip Inside the building.
Teleport to the Balcony |goto 28.28,60.12 < 2 |noway |q 9391
step
talk Ranger Captain Venn'ren##16789
|tip On top of the building.
turnin Marking the Path##9391 |goto 28.49,60.24
step
click Orb of Translocation##184500 |goto 28.39,60.20
|tip On top of the building.
Teleport Back Down |goto 28.28,60.26 < 2 |noway |q 9376
step
click Torn Pilgrim's Pack##184478
collect Torn Pilgrim's Pack##23343 |q 9376/1 |goto 22.12,68.30
step
talk Taleris Dawngazer##17015
turnin A Pilgrim's Plight##9376 |goto 27.16,61.90
step
Enter the building |goto 26.83,60.05 < 7 |walk
talk Innkeeper Bazil Olof'tazun##18905
|tip Inside the building.
home Falcon Watch |goto 26.88,59.53
step
talk Magister Aledis##20159
|tip He rides along the road on a hawkstrider mount, going between Falcon Watch and Zangarmarsh.
Ask him _"Magistrix Carinda has sent me to ask you about Arelion's secret. Who was he seeing?"_
kill Magister Aledis##20159
|tip He will eventually surrender.
turnin Arelion's Secret##10286 |goto 25.62,61.21
accept The Mistress Revealed##10287 |goto 25.62,61.21
Also check around: |notinsticky
[26.83,58.54]
[32.50,56.73]
[29.36,50.77]
[21.29,49.04]
[8.52,50.14]
step
talk Thiah Redmane##16991
turnin Missing Missive##9373 |goto 15.70,52.09
turnin Helping the Cenarion Post##10442 |goto 15.70,52.09
accept Demonic Contamination##9372 |goto 15.70,52.09
step
talk Mahuram Stouthoof##16888
|tip He walks around this area.
accept Keep Thornfang Hill Clear!##10159 |goto 15.68,52.16
step
talk Amythiel Mistwalker##16885
accept The Cenarion Expedition##9912 |goto 16.03,52.15
step
kill Hulking Helboar##16880+
collect 6 Helboar Blood Sample##23336 |q 9372/1 |goto 22.82,55.58
You can find more around: |notinsticky
[18.96,55.46]
[23.82,60.38]
step
talk Thiah Redmane##16991
turnin Demonic Contamination##9372 |goto 15.70,52.09
accept Testing the Antidote##10255 |goto 15.70,52.09
step
use the Cenarion Antidote##23337
|tip Use it on a Hulking Helboar around this area.
kill Dreadtusk
Administer the Antidote |q 10255/1 |goto 22.82,55.58
step
talk Thiah Redmane##16991
turnin Testing the Antidote##10255 |goto 15.70,52.09
stickystart "Collect_Demonic_Essences"
step
Enter the building |goto 15.44,58.79 < 7 |walk
talk Akoru the Firecaller##20678
|tip Inside the building.
accept Naladu##10403 |goto 15.59,58.75
step
Run up the stairs |goto 14.30,61.14 < 20 |only if walking
Enter the building |goto 16.18,64.76 < 7 |walk
talk Naladu##19361
|tip Inside the building.
turnin Naladu##10403 |goto 16.27,65.08
accept A Traitor Among Us##10367 |goto 16.27,65.08
step
Enter the building |goto 14.37,62.66 < 7 |walk
click Metal Coffer##184466
|tip Inside the building.
|tip Wait for Arzeth the Merciless, an elite enemy who walks around nearby, to walk down the stairs before trying to enter the building.
collect Sha'naar Key##29501 |q 10367/1 |goto 14.34,63.49
step
Enter the building |goto 16.18,64.76 < 7 |walk
talk Naladu##19361
|tip Inside the building.
turnin A Traitor Among Us##10367 |goto 16.27,65.08
accept The Dreghood Elders##10368 |goto 16.27,65.08
step
Enter the building |goto 15.44,58.79 < 7 |walk
talk Akoru the Firecaller##20678
|tip Inside the building.
Tell him _"Walk free, elder. Bring the spirits back to your tribe."_
Free Akoru |q 10368/2 |goto 15.59,58.75
step
Enter the building |goto 13.03,58.64 < 7 |walk
talk Aylaan the Waterwaker##20679
|tip Inside the building.
Tell him _"Walk free, elder. Bring the spirits back to your tribe."_
Free Aylaan |q 10368/3 |goto 13.00,58.43
step
Enter the building |goto 13.29,60.77 < 7 |walk
talk Morod the Windstirrer##20677
|tip Inside the building.
Tell him _"Walk free, elder. Bring the spirits back to your tribe."_
Free Morod |q 10368/1 |goto 13.13,61.04
step
Enter the building |goto 16.18,64.76 < 7 |walk
talk Naladu##19361
|tip Inside the building.
turnin The Dreghood Elders##10368 |goto 16.27,65.08
accept Arzeth's Demise##10369 |goto 16.27,65.08
step
use the Staff of the Dreghood Elders##29513
|tip Use it on Arzeth the Merciless.
|tip He will become weakened and easier to kill.
|tip He spawns at this location, but walks around this area.
kill Arzeth the Powerless##20680 |q 10369/1 |goto 14.33,62.17
step
Enter the building |goto 16.18,64.76 < 7 |walk
talk Naladu##19361
|tip Inside the building.
turnin Arzeth's Demise##10369 |goto 16.27,65.081
step
label "Collect_Demonic_Essences"
kill Illidari Taskmaster##17058+
|tip Kill the Illidari Taskmasters, and ignore their helpers.
|tip They will stop attacking you after you kill the taskmasters.
collect 5 Demonic Essence##29113 |q 9387/1 |goto 14.91,58.72
stickystart "Kill_Thornfang_Venomspitters"
step
kill 8 Thornfang Ravager##19349 |q 10159/1 |goto 10.10,50.68
step
label "Kill_Thornfang_Venomspitters"
kill 8 Thornfang Venomspitter##19350 |q 10159/2 |goto 10.10,50.68
step
Enter the building |goto Zangarmarsh/0 78.67,63.27 < 5 |walk
talk Innkeeper Coryth Stoktron##18907
|tip Inside the building.
buy Cenarion Spirits##29112 |goto Zangarmarsh/0 78.49,62.95 |q 9472
step
talk Mahuram Stouthoof##16888
|tip He walks around this area.
turnin Keep Thornfang Hill Clear!##10159 |goto Hellfire Peninsula/0 15.68,52.16
step
Follow the path |goto 27.59,48.43 < 100 |only if walking
Follow the path up |goto 30.07,34.94 < 20 |only if walking
Follow the path |goto 34.27,34.48 < 30 |only if walking
Follow the path |goto 32.58,28.41 < 10 |only if walking
talk Earthcaller Ryga##17123
turnin A Debilitating Sickness##9442 |goto 32.09,28.36
accept Administering the Salve##9447 |goto 32.09,28.36
step
use the Healing Salve##23394
|tip Use it on Debilitated Mag'har Grunts.
|tip They look like orcs that aren't wearing shoulder armor on the ground around this whole area.
|tip They tend to be near bonfires.
Heal #10# Debilitated Grunts |q 9447/1 |goto 35.77,32.80
You can find more around [32.39,32.74]
step
Follow the path |goto 32.58,28.41 < 10 |only if walking
talk Earthcaller Ryga##17123
turnin Administering the Salve##9447 |goto 32.09,28.36
step
talk Apothecary Azethen##16794
|tip Inside the building.
turnin Source of the Corruption##9387 |goto 26.79,59.71
step
talk Magistrix Carinda##16793
turnin The Mistress Revealed##10287 |goto 26.37,60.32
accept Arelion's Mistress##9472 |goto 26.37,60.32
step
talk Viera Sunwhisper##17226
|tip Accept the "Life's Finer Pleasures" quest.
Click Here After Accepting the Quest |confirm |goto 27.15,62.11 |q 9472
step
Watch the dialogue
|tip Follow Viera Sunwhisper as she walks.
|tip She eventually walks to this location.
clicknpc Viera Sunwhisper##17226
use Carinda's Scroll of Retribution##23693
|tip Use it on Viera Sunwhisper when she stops walking.
Use Carinda's Scroll of Retribution |q 9472/1 |goto 26.54,63.91
step
talk Magistrix Carinda##16793
turnin Arelion's Mistress##9472 |goto 26.37,60.32
step
Kill enemies around this area
|tip We are grinding a little bit now, to prevent having to grind a lot all at once later.
Reach Level 62 |ding 62 |goto 9.27,50.30
step
|next "Leveling Guides\\Outland (60-70)\\Zangarmarsh (62-63)"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Outland (60-70)\\Zangarmarsh (62-63)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Zangarmarsh",
next="Leveling Guides\\Outland (60-70)\\Terokkar Forest (63-65)",
condition_suggested=function() return level >= 62 and level <= 63 and not completedq(9817) end,
},[[
step
talk Ikeyen##17956
accept The Umbrafen Tribe##9747 |goto Zangarmarsh/0 80.39,64.16
step
talk Lauranna Thar'well##17909
accept Plants of Zangarmarsh##9802 |goto 80.32,64.17
step
Enter the building |goto 78.69,63.34 < 7 |walk
talk Lethyn Moonfire##17834
|tip Inside the building.
accept The Dying Balance##9895 |goto 78.53,63.15
step
talk Innkeeper Coryth Stoktron##18907
|tip Inside the building.
home Cenarion Refuge |goto 78.49,62.94 |q 9785 |future
step
talk Ysiel Windsinger##17841
|tip Outside on the balcony of the building.
turnin The Cenarion Expedition##9912 |goto 78.40,62.02
accept Disturbance at Umbrafen Lake##9716 |goto 78.40,62.02
accept Warden Hamoot##9778 |goto 78.40,62.02
step
Enter the building |goto 79.14,65.21 < 5 |only if walking
talk Warden Hamoot##17858
|tip Upstairs at the top of the tower.
turnin Warden Hamoot##9778 |goto 79.08,65.27
accept A Warm Welcome##9728 |goto 79.08,65.27
step
talk Gur'zil##20762
fpath Swamprat Post |goto 84.77,55.11
step
talk Zurai##18011
turnin Report to Zurai##10103 |goto 85.28,54.75 |only if haveq(10103) or completedq(10103)
accept Thick Hydra Scales##9774 |goto 85.28,54.75
step
talk Reavij##18012
accept Menacing Marshfangs##9770 |goto 84.96,54.04
step
talk Magasha##18016
accept There's No Explanation for Fashion##9769 |goto 84.36,54.34
accept No More Mushrooms!##9773 |goto 84.36,54.34
step
use the Potion of Water Breathing##25539
|tip Use it next to the lake around this area.
|tip You will be killing enemies underwater in the lake in the next step.
Gain Greater Water Breathing |havebuff Greater Water Breathing##22807 |goto 73.67,61.43 |q 9773
|only if not (Undead or Druid or Warlock or Shaman)
stickystart "Collect_Thick_Hydra_Scales"
step
kill Umbrafen Eel##18138+
|tip Underwater in the whole lake around this area.
collect 8 Eel Filet##24374 |q 9773/1 |goto 75.09,73.78
step
label "Collect_Thick_Hydra_Scales"
kill Mire Hydra##18213+
|tip Along the edge of the lake around this area.
collect 12 Thick Hydra Scale##24375 |q 9774/1 |goto 73.67,61.43
You can find more around [77.41,74.42]
stickystart "Collect_Unidentified_Plant_Parts"
stickystart "Collect_Naga_Claws"
stickystart "Collect_Diaphanous_Wings"
step
Investigate Umbrafen Lake |q 9716/1 |goto 71.15,81.89
|tip Outside the cave.
step
label "Collect_Unidentified_Plant_Parts"
Kill enemies around this area
collect 10 Unidentified Plant Parts##24401 |q 9802/1 |goto 71.65,76.32
You can find more around: |notinsticky
[70.31,72.95]
[70.23,81.82]
step
label "Collect_Naga_Claws"
Kill Darkcrest enemies around this area
collect 30 Naga Claws##24280 |q 9728/1 |goto 71.65,76.32
You can find more around: |notinsticky
[70.31,72.95]
[70.23,81.82]
step
label "Collect_Diaphanous_Wings"
kill Umbraglow Stinger##18132+
collect 8 Diaphanous Wing##24372 |q 9769/1 |goto 80.35,71.69
You can find more around [78.57,81.53]
step
kill Boglash##18281 |q 9895/1 |goto 81.68,72.37
|tip He walks around this area in the water.
|tip He spawns near this location.
|tip He's elite, but you should be able to solo him fairly easily.
|tip If you find it too difficult, try to find someone to help you, or skip it.
Also check around [83.50,77.87]
stickystart "Kill_Umbrafen_Oracles"
stickystart "Kill_Umbrafen_Seers"
stickystart "Kill_Umbrafen_Witchdoctors"
step
Enter the building |goto 84.94,90.15 < 10 |only if walking
kill Kataru##18080 |q 9747/1 |goto 85.29,90.93
|tip At the top of the tower.
step
label "Kill_Umbrafen_Oracles"
kill 6 Umbrafen Oracle##18077 |q 9747/2 |goto 84.66,86.90
step
label "Kill_Umbrafen_Seers"
kill 8 Umbrafen Seer##18079 |q 9747/3 |goto 84.66,86.90
step
label "Kill_Umbrafen_Witchdoctors"
kill 6 Umbrafen Witchdoctor##20115 |q 9747/4 |goto 84.66,86.90
step
talk Kayra Longmane##17969
|tip Inside the building.
|tip If she's not there, someone else may be escorting her.
|tip Wait for her to respawn.
accept Escape from Umbrafen##9752 |goto 83.37,85.54
step
Watch the dialogue
|tip Follow Kayra Longmane and protect her as she walks.
|tip She eventually walks to this location.
Escort Kayra Longmane |q 9752/1 |goto 79.83,71.20
step
talk Ikeyen##17956
turnin The Umbrafen Tribe##9747 |goto 80.39,64.15
accept A Damp, Dark Place##9788 |goto 80.39,64.15
step
talk Lauranna Thar'well##17909
turnin Plants of Zangarmarsh##9802 |goto 80.32,64.17
accept Saving the Sporeloks##10096 |goto 80.32,64.17
step
talk Windcaller Blackhoof##18070
accept Safeguarding the Watchers##9894 |goto 80.37,64.72
step
talk Warden Hamoot##17858
|tip At the top of the tower.
turnin A Warm Welcome##9728 |goto 79.09,65.27
step
Enter the building |goto 78.69,63.34 < 7 |walk
talk Lethyn Moonfire##17834
|tip Inside the building.
turnin The Dying Balance##9895 |goto 78.53,63.15
accept Watcher Leesa'oh##9697 |goto 78.53,63.15 |only if (rep('Cenarion Expedition') >= Friendly) and not completedq(9701)
accept What's Wrong at Cenarion Thicket?##9957 |goto 78.53,63.15 |only if (rep('Cenarion Expedition') >= Friendly) and not completedq(9968)
step
talk Ysiel Windsinger##17841
|tip On the balcony of the building.
turnin Disturbance at Umbrafen Lake##9716 |goto 78.40,62.02
accept As the Crow Flies##9718 |goto 78.40,62.02
turnin Escape from Umbrafen##9752 |goto 78.40,62.02
step
use the Stormcrow Amulet##25465
Watch the dialogue
Explore the Lakes of Zangarmarsh |q 9718/1 |goto 78.40,62.02
step
talk Ysiel Windsinger##17841
|tip Outside on the balcony of the building.
turnin As the Crow Flies##9718 |goto 78.40,62.02
accept Balance Must Be Preserved##9720 |goto 78.40,62.02
step
talk Zurai##18011
turnin Thick Hydra Scales##9774 |goto 85.28,54.75
accept Searching for Scout Jyoba##9771 |goto 85.28,54.75
accept Report to Shadow Hunter Denjai##9775 |goto 85.28,54.75
step
talk Magasha##18016
turnin There's No Explanation for Fashion##9769 |goto 84.36,54.34
turnin No More Mushrooms!##9773 |goto 84.36,54.34
accept A Job Undone##9899 |goto 84.36,54.34
stickystart "Kill_Marshfang_Rippers"
step
kill Sporewing##18280 |q 9899/1 |goto 77.2,45.9
|tip He looks like a larger brown sporebat flies low to the ground around this area.
step
label "Kill_Marshfang_Rippers"
kill 10 Marshfang Ripper##18130 |q 9770/1 |goto 85.18,49.64
You can find more around: |notinsticky
[76.64,49.21]
[72.21,47.21]
stickystart "Collect_Bog_Lord_Tendrils"
step
talk Scout Jyoba##18035
turnin Searching for Scout Jyoba##9771 |goto 80.75,36.28
accept Jyoba's Report##9772 |goto 80.75,36.28
stickystart "Collect_Scout_Jyobas_Report"
step
kill Withered Giant##18124+
collect Withered Basidium##24484 |n
use the Withered Basidium##24484
accept Withered Basidium##9828 |goto 81.11,41.33
step
label "Collect_Scout_Jyobas_Report"
kill Withered Giant##18124+
collect Scout Jyoba's Report##24373 |q 9772/1 |goto 81.11,41.33
step
label "Collect_Bog_Lord_Tendrils"
kill Withered Bog Lord##19402+
collect 6 Bog Lord Tendril##24291 |goto 81.11,41.33 |q 9743 |future
|tip Save these, you will need them for a later quest.
|tip Be careful to not accidenatally sell these to a vendor.
stickystart "Accept_Drain_Schematics"
step
use the Ironvine Seeds##24355
|tip You will be attacked.
Disable the Serpent Lake Controls |q 9720/3 |goto 61.99,40.83
step
label "Accept_Drain_Schematics"
Kill Bloodscale enemies around this area
collect Drain Schematics##24330 |n
use the Drain Schematics##24330
accept Drain Schematics##9731 |goto 60.65,37.90
step
use the Ironvine Seeds##24355
|tip An enemy will appear.
Disable the Lagoon Pump Controls |q 9720/4 |goto 63.13,64.12
step
use the Ironvine Seeds##24355
|tip You will be attacked.
Disable the Umbrafen Lake Pump Controls |q 9720/1 |goto 70.59,80.31
stickystart "Kill_Marsh_Lurkers"
stickystart "Kill_Marsh_Dredgers"
step
Follow the path up |goto 75.10,89.17 < 10 |only if walking
Enter the cave |goto 74.45,92.05 < 15 |walk
Follow the path |goto 71.85,93.00 < 10 |walk
click Ikeyen's Belongings##182122
|tip Inside the cave.
collect Ikeyen's Belongings##24411 |q 9788/1 |goto 70.53,97.90
step
Follow the path |goto 72.25,96.81 < 10 |walk
kill Lord Klaq##18282 |q 9894/1 |goto 72.50,94.03
|tip He walks around this area.
|tip Downstairs inside the cave.
|tip If you find it too difficult, try to find someone to help you, or skip it.
step
label "Kill_Marsh_Lurkers"
kill 10 Marsh Lurker##18136 |q 10096/2 |goto 74.45,92.05
|tip Inside and outside the cave. |notinsticky
step
label "Kill_Marsh_Dredgers"
kill 10 Marsh Dredger##18137 |q 10096/1 |goto 74.45,92.05
|tip Inside and outside the cave. |notinsticky
step
talk Lauranna Thar'well##17909
turnin Saving the Sporeloks##10096 |goto 80.32,64.17
step
talk Ikeyen##17956
turnin A Damp, Dark Place##9788 |goto 80.39,64.16
step
talk Windcaller Blackhoof##18070
turnin Safeguarding the Watchers##9894 |goto 80.37,64.72
accept Blessings of the Ancients##9785 |goto 80.37,64.72
step
talk Ashyen##17900
|tip It looks like a large tree that walks around this area.
Tell him _"Grant me your mark, wise ancient."_
Receive the Mark of Lore |q 9785/1 |goto 81.09,63.91
step
talk Keleth##17901
|tip It looks like a large tree that walks around this area.
Tell him _"Grant me your mark, mighty ancient."_
Receive the Mark of War |q 9785/2 |goto 78.98,67.42
step
talk Windcaller Blackhoof##18070
turnin Blessings of the Ancients##9785 |goto 80.37,64.72
step
talk Zurai##18011
turnin Jyoba's Report##9772 |goto 85.28,54.75
step
talk Reavij##18012
turnin Menacing Marshfangs##9770 |goto 84.96,54.04
accept Nothin' Says Lovin' Like a Big Stinger##9898 |goto 84.96,54.04
turnin Withered Basidium##9828 |goto 84.96,54.04
step
talk Magasha##18016
turnin A Job Undone##9899 |goto 84.36,54.34
step
Follow the path |goto 35.51,53.00 < 20 |only if walking
Continue following the path |goto 33.56,50.15 < 15 |only if walking
talk Du'ga##18791
fpath Zabra'jin |goto 33.07,51.07
step
talk Seer Janidi##18017
accept Spirits of the Feralfen##9846 |goto 32.38,51.96
step
talk Zurjaya##18018
accept Angling to Beat the Competition##9845 |goto 32.25,49.60
step
talk Witch Doctor Tor'gash##18014
accept Burstcap Mushrooms, Mon!##9814 |goto 32.89,48.90
step
click Wanted Poster##184945
accept WANTED: Boss Grog'ak##9820 |goto 31.99,49.33
accept Wanted: Chieftain Mummaki##10117 |goto 31.99,49.33
step
talk Gambarinka##18015
accept Stinging the Stingers##9841 |goto 31.63,49.20
step
Run up the stairs |goto 30.40,50.85 < 7 |walk
talk Shadow Hunter Denjai##18013
|tip Upstairs on the roof of the building.
turnin Report to Shadow Hunter Denjai##9775 |goto 30.74,50.89
step
_Note:_
|tip While completing the many quests coming up, keep an eye out for Glowcaps.
|tip They look like small orange glowing mushrooms on the ground.
|tip You will need 10 of them for a later quest, so just collect them as you walk around.
|tip You will be reminded to get them later, also.
Click Here to Continue |confirm |q 9808 |future
step
Follow the path |goto 30.10,52.16 < 15 |only if walking
click Burstcap Mushroom##182095+
|tip They look like small, blue and brown mushrooms around this area.
collect 6 Burstcap Mushroom##24468 |q 9814/1 |goto 28.92,52.56
You can find more around: |notinsticky
[34.60,49.06]
[37.51,47.67]
stickystart "Kill_Fenclaw_Thrashers"
step
Locate the Drain |q 9731/1 |goto 50.38,40.87
|tip Underwater.
|tip Swim straight down at this location.
step
label "Kill_Fenclaw_Thrashers"
kill 10 Fenclaw Thrasher##18214 |q 9845/1 |goto 49.99,40.92
|tip Underwater around this area.
step
kill Blacksting##18283
|tip He flies low to the ground around this area.
collect Blacksting's Stinger##25448 |q 9898/1 |goto 49.69,59.67
step
Kill Feralfen enemies around this area
collect 10 Feralfen Protection Totem##24497 |q 9846/1 |goto 46.21,60.62
step
kill "Count" Ungula##18285
|tip He flies low to the ground around this area.
collect "Count" Ungula's Mandible##25459 |n
use "Count" Ungula's Mandible##25459
accept The Count of the Marshes##9911 |goto 32.90,59.52
step
Kill enemies around this area
|tip Only Sporebats and Marsh Walkers will drop these.
collect 6 Fertile Spores##24449 |goto 37.02,58.64 |q 9806 |future
|tip Save these, you will need them for a later quest.
step
Follow the road |goto 29.69,56.20 < 50 |only if walking
talk Watcher Leesa'oh##17831
turnin Watcher Leesa'oh##9697 |goto 23.32,66.20 |only if haveq(9697) or completedq(9697)
accept Observing the Sporelings##9701 |goto 23.32,66.20
turnin The Count of the Marshes##9911 |goto 23.32,66.20
step
talk Fahssn##17923
|tip He walks around this area.
accept The Sporelings' Plight##9739 |goto 19.07,63.86
accept Natural Enemies##9743 |goto 19.07,63.86
step
talk Fahssn##17923
|tip He walks around this area.
turnin Natural Enemies##9743 |goto 19.07,63.86
stickystart "Collect_Mature_Spore_Sacs"
step
Investigate the Spawning Glen |q 9701/1 |goto 14.89,61.18
step
label "Collect_Mature_Spore_Sacs"
click Mature Spore Sac##182069+
|tip They look like pink balls swaying on the ground around this area.
collect 10 Mature Spore Sac##24290 |q 9739/1 |goto 14.10,60.87
step
talk Fahssn##17923
|tip He walks around this area.
turnin The Sporelings' Plight##9739 |goto 19.07,63.86
step
click Mature Spore Sac##182069+
|tip They look like pink balls swaying on the ground around this area.
collect 10 Mature Spore Sac##24290 |n
_And_
Kill enemies around this area
collect 6 Bog Lord Tendril##24291 |n
|tip Once you've collected either of these, turn them in to Fahssn.
Reach Neutral Reputation with the Sporeggar |complete (rep('Sporeggar') >= Neutral) or "incomplete" |goto 14.10,60.87
Talk to Fahssn around [19.07,63.86]
|tip He walks around this area.
|tip Repeatedly complete the "More Spore Sacs" and "More Tendrils!" quests until you reach Neutral reputation with Sporeggar.
step
talk Fahssn##17923
|tip He walks around this area.
accept Sporeggar##9919 |goto 19.07,63.86
step
talk Watcher Leesa'oh##17831
turnin Observing the Sporelings##9701 |goto 23.32,66.21
accept A Question of Gluttony##9702 |goto 23.32,66.21
step
click Discarded Nutriment##182256+
|tip They look like small green-glowing dark colored mushrooms on the ground around this area.
collect 10 Discarded Nutriment##24233 |q 9702/1 |goto 30.03,62.90
step
talk Watcher Leesa'oh##17831
turnin A Question of Gluttony##9702 |goto 23.32,66.21
accept Familiar Fungi##9708 |goto 23.32,66.21
step
use the Ironvine Seeds##24355
|tip You will be attacked.
Disable the Marshlight Lake Pump Controls |q 9720/2 |goto 25.42,42.87
stickystart "Collect_Mushroom_Samples"
step
kill Boss Grog'ak##18159
|tip He looks like a larger armored ogre that walks around this area.
collect Boss Grog'ak's Head##24472 |q 9820/1 |goto 34.42,34.59
step
label "Collect_Mushroom_Samples"
Kill Ango'rosh enemies around this area
collect 15 Mushroom Sample##24238 |q 9708/1 |goto 32.97,32.57
step
Kill enemies around this area
|tip We are grinding a little bit now, to prevent having to grind a lot all at once later.
Reach Level 63 |ding 63 |goto 32.97,32.57
step
Follow the path |goto 32.30,46.95 < 20 |only if walking
talk Witch Doctor Tor'gash##18014
turnin Burstcap Mushrooms, Mon!##9814 |goto 32.89,48.90
accept Have You Ever Seen One of These?##9816 |goto 32.89,48.90
step
talk Zurjaya##18018
turnin Angling to Beat the Competition##9845 |goto 32.25,49.60
accept The Biggest of Them All##9903 |goto 32.25,49.60
accept Pursuing Terrorclaw##9904 |goto 32.25,49.60
step
talk Seer Janidi##18017
turnin Spirits of the Feralfen##9846 |goto 32.38,51.96
accept A Spirit Ally?##9847 |goto 32.38,51.96
step
Enter the building |goto 31.07,50.66 < 7 |only if walking
Run up the stairs |goto 30.40,50.85 < 7 |only if walking
talk Shadow Hunter Denjai##18013
|tip Upstairs on the roof of the building.
turnin WANTED: Boss Grog'ak##9820 |goto 30.74,50.89
accept Impending Attack##9822 |goto 30.74,50.89
step
Follow the path |goto 30.15,49.28 < 15 |only if walking
talk Watcher Leesa'oh##17831
turnin Familiar Fungi##9708 |goto 23.32,66.20
accept Stealing Back the Mushrooms##9709 |goto 23.32,66.20
step
Enter the building |goto 19.54,51.83 < 7 |walk
talk Msshi'fn##17924
|tip Inside the building.
turnin Sporeggar##9919 |goto 19.68,52.06
accept Glowcap Mushrooms##9808 |goto 19.68,52.06
step
Enter the building |goto 19.23,49.72 < 7 |walk
talk Gshaff##17925
|tip Inside the building.
accept Fertile Spores##9806 |goto 19.15,49.39
step
talk Gshaff##17925
|tip Inside the building.
turnin Fertile Spores##9806 |goto 19.15,49.39
step
click Glowcap##182053+
|tip They look like small orange glowing mushrooms on the ground around this area.
collect 10 Glowcap Mushroom##24245 |q 9808/1 |goto 32.71,36.34
step
Enter the building |goto 19.54,51.83 < 7 |walk
talk Msshi'fn##17924
|tip Inside the building.
turnin Glowcap Mushrooms##9808 |goto 19.68,52.06
step
kill Terrorclaw##20477 |q 9904/1 |goto 22.33,45.90
step
kill 8 Marshlight Bleeder##18133 |q 9841/1 |goto 15.81,41.93
You can find more around [21.01,31.65]
step
Run up the ramp |goto 19.51,27.09 < 7 |only if walking
click Ango'rosh Attack Plans##182166
|tip At the top of the tower.
collect Ango'rosh Attack Plans##24471 |q 9822/1 |goto 19.89,27.09
step
kill Mragesh##18286 |q 9903/1 |goto 42.21,41.43
|tip Underwater.
step
Follow the path |goto 35.08,52.00 < 20 |only if walking
Follow the path |goto 33.56,50.15 < 20 |only if walking
talk Zurjaya##18018
turnin The Biggest of Them All##9903 |goto 32.25,49.60
turnin Pursuing Terrorclaw##9904 |goto 32.25,49.60
step
talk Gambarinka##18015
turnin Stinging the Stingers##9841 |goto 31.63,49.20
accept The Sharpest Blades##9842 |goto 31.63,49.20
step
Enter the building |goto 31.07,50.66 < 7 |only if walking
Run up the stairs |goto 30.40,50.85 < 7 |only if walking
talk Shadow Hunter Denjai##18013
|tip Upstairs on the roof of the building.
turnin Impending Attack##9822 |goto 30.74,50.89
accept Us or Them##9823 |goto 30.74,50.89
accept Message to the Daggerfen##10118 |goto 30.74,50.89
step
Follow the path |goto 33.52,50.13 < 20 |only if walking
use the Feralfen Totem##24498
kill Feralfen Serpent Spirit##18185 |q 9847/1 |goto 44.33,66.53
step
kill Marshfang Slicer##18131+
collect 10 Marshfang Slicer Blade##24493 |q 9842/1 |goto 35.90,58.70
You can find more around [25.34,57.53]
step
Follow the path |goto 35.51,53.01 < 20 |only if walking
Follow the path |goto 33.55,50.17 < 20 |only if walking
talk Seer Janidi##18017
turnin A Spirit Ally?##9847 |goto 32.38,51.96
step
talk Gambarinka##18015
turnin The Sharpest Blades##9842 |goto 31.63,49.20
step
Enter the building |goto 31.08,50.65 < 7 |walk
talk Merajit##18245
|tip Inside the building.
home Zabra'jin |goto 30.66,50.93 |q 9775
stickystart "Slay_Daggerfen_Assassins"
stickystart "Slay_Daggerfen_Muckdwellers"
step
Follow the path |goto 32.29,47.05 < 20 |only if walking
Enter the building |goto 24.31,26.75 < 7 |only if walking
kill Chieftain Mummaki##19174
|tip Upstairs, at the top of the building..
collect Chieftain Mummaki's Totem##27943 |q 10117/1 |goto 23.78,26.75
step
use the Murloc Cage##24470
Release Murlocs at Daggerfen Village |q 9816/1 |goto 26.78,22.60
step
label "Slay_Daggerfen_Assassins"
kill 3 Daggerfen Assassin##18116 |q 10118/1 |goto 26.78,22.60
|tip They are stealthed around this area.
step
label "Slay_Daggerfen_Muckdwellers"
kill 15 Daggerfen Muckdweller##18115 |q 10118/2 |goto 26.78,22.60
stickystart "Collect_Boxes_of_Mushrooms"
stickystart "Kill_Angorosh_Maulers"
stickystart "Kill_Angorosh_Souleaters"
step
Cross the bridge |goto 17.08,13.11 < 15 |only if walking
Follow the path up |goto 17.77,9.83 < 10 |only if walking
Enter the building |goto 18.69,7.80 < 10 |walk
kill Overlord Gorefist##18160 |q 9823/1 |goto 18.40,7.79
|tip Inside the building.
step
label "Collect_Boxes_of_Mushrooms"
Kill Ango'rosh enemies around this area
click Box of Mushrooms##182050+
|tip They look like wooden boxes on the ground around this area.
collect 10 Box of Mushrooms##24240 |q 9709/1 |goto 19.74,6.90
step
label "Kill_Angorosh_Maulers"
kill 10 Ango'rosh Mauler##18120 |q 9823/2 |goto 19.74,6.90
step
label "Kill_Angorosh_Souleaters"
kill 10 Ango'rosh Souleater##18121 |q 9823/3 |goto 20.08,4.75
step
Run up the stairs |goto 30.40,50.85 < 7 |only if walking
talk Shadow Hunter Denjai##18013
|tip Upstairs on the roof of the building.
turnin Us or Them##9823 |goto 30.74,50.89
turnin Message to the Daggerfen##10118 |goto 30.74,50.89
turnin Wanted: Chieftain Mummaki##10117 |goto 30.74,50.89
accept News for Rakoria##10105 |goto 30.74,50.89
step
talk Witch Doctor Tor'gash##18014
turnin Have You Ever Seen One of These?##9816 |goto 32.89,48.90
step
Follow the path |goto 30.09,52.16 < 20 |only if walking
talk Watcher Leesa'oh##17831
turnin Stealing Back the Mushrooms##9709 |goto 23.32,66.20
step
Follow the path |goto 30.11,52.11 < 15 |only if walking
talk Reavij##18012
turnin Nothin' Says Lovin' Like a Big Stinger##9898 |goto 84.96,54.04
step
Enter the building |goto 78.67,63.27 < 7 |only if walking
talk Ysiel Windsinger##17841
|tip Outside, on the balcony of the building.
turnin Balance Must Be Preserved##9720 |goto 78.40,62.02
turnin Drain Schematics##9731 |goto 78.40,62.02
accept Warning the Cenarion Circle##9724 |goto 78.40,62.02
step
talk Amythiel Mistwalker##16885
turnin Warning the Cenarion Circle##9724 |goto Hellfire Peninsula/0 16.03,52.15
accept Return to the Marsh##9732 |goto Hellfire Peninsula/0 16.03,52.15
step
Enter the building |goto Zangarmarsh/0 78.67,63.27 < 7 |only if walking
talk Ysiel Windsinger##17841
|tip Outside, on the balcony of the building.
turnin Return to the Marsh##9732 |goto Zangarmarsh/0 78.40,62.02
step
|next "Leveling Guides\\Outland (60-70)\\Terokkar Forest (63-65)"
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Outland (60-70)\\Terokkar Forest (63-65)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Outland (60-70)\\Nagrand (65-67)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Outland (60-70)\\Blade's Edge Mountains (67-68)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Outland (60-70)\\Netherstorm (68-70)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Outland (60-70)\\Shadowmoon Valley (68-70)")
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Northrend (70-80)\\Howling Fjord (69-71)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Howling",
condition_suggested=function() return level >= 69 and level <= 71 and not completedq(11572) end,
next="Leveling Guides\\Northrend (70-80)\\Borean Tundra (70-72)",
},[[
step
talk Apothecary Lysander##24126
accept The New Plague##11167 |goto Howling Fjord 78.55,28.98
step
talk Bat Handler Adeline##27344
fpath Vengeance Landing |goto 79.04,29.71
step
Enter the building |goto 79.04,30.37 < 7 |walk
talk Timothy Holland##24342
|tip Downstairs inside the building.
home Vengeance Landing |goto 79.73,30.84
step
Leave the building |goto 79.04,30.37 < 7 |walk |only if subzone("Vengeance Landing Inn, Howling Fjord")
talk Pontius##23938
|tip Outside, next to the building.
accept Let Them Eat Crow##11227 |goto 79.15,31.22
step
talk High Executor Anselm##23780
accept War is Hell##11270 |goto 78.61,31.23
stickystart "Burn_Fallen_Combatants"
step
use Plaguehound Cage##33221
|tip A Plaguehound will appear and start following you.
kill Fjord Crow##23945+
|tip They look like black birds flying in the air.
|tip You can find them all around the Bleeding Vale area.
collect 5 Crow Meat##33238+ |n
use Crow Meat##33238
|tip Use it multiple times.
Feed Your Plaguehound #5# Times |q 11227/1 |goto 75.28,33.32
step
label "Burn_Fallen_Combatants"
use Burning Torch##33278
|tip Use it on Corpses.
|tip They look like Horde and Alliance dead bodies on the ground.
|tip You can find them all around the Bleeding Vale area.
Burn #10# Fallen Combatants |q 11270/1 |goto 75.26,32.60
step
click Plague Containers##186390+
|tip They look like dark barrels with a green ring around the middle of them.
|tip They can also be underwater inside the ship.
collect 10 Intact Plague Container##33099 |q 11167/1 |goto 80.81,35.32
step
talk High Executor Anselm##23780
turnin War is Hell##11270 |goto 78.61,31.23
accept Reports from the Field##11221 |goto 78.61,31.23
step
talk Pontius##23938
turnin Let Them Eat Crow##11227 |goto 79.15,31.22
accept Sniff Out the Enemy##11253 |goto 79.15,31.22
step
talk Apothecary Lysander##24126
turnin The New Plague##11167 |goto 78.54,28.98
accept Spiking the Mix##11168 |goto 78.54,28.98
stickystart "Collect_Giant_Toxic_Glands"
step
Enter the cave |goto 76.30,19.99 < 20 |walk
click Dragonskin Scroll##186585
|tip Inside the cave.
turnin Sniff Out the Enemy##11253 |goto 75.93,19.75
accept The Dragonskin Map##11254 |goto 75.93,19.75
step
label "Collect_Giant_Toxic_Glands"
kill Giant Tidecrawler##23929+
|tip They look like red and white crabs.
|tip You can find them all along the beach and in the water nearby.
collect 3 Giant Toxin Gland##33337 |q 11168/1 |goto 77.92,22.36
step
talk Apothecary Lysander##24126
|tip Outside, in front of the building.
turnin Spiking the Mix##11168 |goto 78.54,28.98
accept Test at Sea##11170 |goto 78.54,28.98
step
talk High Executor Anselm##23780
turnin The Dragonskin Map##11254 |goto 78.61,31.23
accept The Offensive Begins##11295 |goto 78.61,31.23
step
talk Bat Handler Camille##23816
Tell her _"I need a riding bat to intercept the Alliance reinforcements."_
Borrow a Bat |invehicle |goto 79.05,29.81 |q 11170
step
use Plague Vials##33349
|tip Use it on North Fleet Reservists as you fly.
|tip They look like humans on the decks of the ships around this area.
Infect #16# North Fleet Reservists |q 11170/1 |goto 89.72,82.98 |notravel
step
Return to Vengeance Landing |outvehicle |goto 79.06,29.84 |q 11170 |notravel
step
talk Apothecary Lysander##24126
turnin Test at Sea##11170 |goto 78.54,28.98
step
talk Deathstalker Razael##23998
Tell him _"High Executor Anseim wants a report on the situation."_
Listen to Razael's Report |q 11221/1 |goto 77.59,34.70
step
talk Dark Ranger Lyana##23778
|tip She runs around this area.
Tell her _"High Executor Anseim requests your report."_
Listen to Lyana's Report |q 11221/2 |goto 78.68,37.13
step
talk High Executor Anselm##23780
turnin Reports from the Field##11221 |goto 78.61,31.23
accept The Windrunner Fleet##11229 |goto 78.61,31.23
step
talk Bat Handler Camille##23816
Tell her _"I need to fly to the Windrunner. Official business!"_
Begin Flying to the Windrunner |invehicle |goto 79.05,29.82 |q 11229
step
Fly to the Windrunner |outvehicle |goto 84.59,36.31 |q 11229 |notravel
step
talk Captain Harker##24037
|tip On the top deck of the ship.
turnin The Windrunner Fleet##11229 |goto 84.66,36.46
accept Ambushed!##11230 |goto 84.66,36.46
step
kill 15 North Fleet Marine##23983 |q 11230/1 |goto 84.36,35.85
|tip On the deck and inside the ship.
You can find more on another ship around [83.47,37.94]
step
talk Captain Harker##24037
|tip On the top deck of the ship.
turnin Ambushed!##11230 |goto 84.66,36.46
accept Guide Our Sights##11232 |goto 84.66,36.46
step
Run up the stairs |goto 80.44,38.37 < 10 |only if walking
use Cannoneer's Smoke Flare##33335
|tip Next to cannon on top of the makeshift wooden wall.
Mark the Eastern Cannon |q 11232/1 |goto 80.35,38.21
step
Run up the stairs |goto 79.40,40.36 < 10 |only if walking
use Cannoneer's Smoke Flare##33335
|tip Next to cannon on top of the makeshift wooden wall.
Mark the Western Cannon |q 11232/2 |goto 79.33,40.16
step
talk Dark Ranger Lyana##23778
|tip She will eventually run to this location.
turnin Guide Our Sights##11232 |goto 78.68,37.13
accept Landing the Killing Blow##11233 |goto 78.68,37.13
step
kill Sergeant Lorric##23963 |q 11233/3 |goto 82.22,40.72
step
kill Captain Olster##23962 |q 11233/1 |goto 81.50,43.37
step
kill Lieutenant Celeyne##23964 |q 11233/2 |goto 83.20,43.15
step
talk Apothecary Hanes##23784
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
accept Trail of Fire##11241 |goto 83.23,43.10
step
Watch the dialogue
|tip Follow Apothecary Hanes and protect him as he walks.
|tip He will eventually walk to this location.
Escort Apothecary Hanes to Safety |q 11241/1 |goto 78.73,37.25
step
talk Dark Ranger Lyana##23778
turnin Landing the Killing Blow##11233 |goto 78.68,37.13
accept Report to Anselm##11234 |goto 78.68,37.13
step
talk High Executor Anselm##23780
turnin Report to Anselm##11234 |goto 78.61,31.23
step
talk Apothecary Lysander##24126
turnin Trail of Fire##11241 |goto 78.54,28.98
accept New Agamand##11304 |goto 78.54,28.98
step
Ride the lift up the cliff |goto 73.33,35.44 < 20 |only if walking
talk Longrunner Nanik##28314
accept Help for Camp Winterhoof##12566 |goto 71.47,39.21
step
talk Sergeant Gorth##24027
turnin The Offensive Begins##11295 |goto 71.11,39.08
accept A Lesson in Fear##11282 |goto 71.11,39.08
stickystart "Impale_Gunnar_Thorvardsson"
stickystart "Impale_Ulf_The_Bloodletter"
step
kill Winterskorn Defender##24015+
|tip They look like large humans.
|tip You can find them all around the Balejar Watch area.
|tip Kill them around this area until Oric the Baleful spawns at this location.
kill Oric the Baleful##24161
use Forsaken Banner##33563
|tip Use it on his corpse.
Impale Oric the Baleful |q 11282/1 |goto 69.12,38.47
step
label "Impale_Gunnar_Thorvardsson"
kill Winterskorn Defender##24015+ |notinsticky
|tip They look like large humans. |notinsticky
|tip You can find them all around the Balejar Watch area. |notinsticky
|tip Kill them around this area until Gunnar Thorvardsson spawns at this location. |notinsticky
kill Gunnar Thorvardsson##24162
use Forsaken Banner##33563
|tip Use it on his corpse.
Impale Gunnar Thorvardsson |q 11282/3 |goto 69.62,40.06
step
label "Impale_Ulf_The_Bloodletter"
kill Winterskorn Defender##24015+ |notinsticky
|tip They look like large humans. |notinsticky
|tip You can find them all around the Balejar Watch area. |notinsticky
|tip Kill them around this area until Ulf the Bloodletter spawns at this location. |notinsticky
kill Ulf the Bloodletter##24016
use Forsaken Banner##33563
|tip Use it on his corpse.
Impale Ulf the Bloodletter |q 11282/2 |goto 69.38,39.56
step
talk Sergeant Gorth##24027
turnin A Lesson in Fear##11282 |goto 71.11,39.08
accept Baleheim Bodycount##11283 |goto 71.11,39.08
accept Baleheim Must Burn!##11285 |goto 71.11,39.08
stickystart "Slay_Winterskorn_Vrykuls"
step
use Gorth's Torch##33472
|tip Use it near the building.
|tip You don't have to use it in this exact location.
Burn the Winterskorn Watchtower |q 11285/2 |goto 67.12,39.44
step
use Gorth's Torch##33472
|tip Use it near the building.
|tip You don't have to use it in this exact location.
Burn the Winterskorn Bridge |q 11285/3 |goto 66.18,39.79
step
use Gorth's Torch##33472
|tip Use it near the building.
|tip You don't have to use it in this exact location.
Burn the Winterskorn Dwelling |q 11285/1 |goto 65.00,41.01
step
Follow the path up |goto 63.55,41.80 < 20 |only if walking
use Gorth's Torch##33472
|tip Use it near the building.
|tip You don't have to use it in this exact location.
Burn the Winterskorn Barracks |q 11285/4 |goto 63.95,40.65
step
label "Slay_Winterskorn_Vrykuls"
Kill Winterskorn enemies around this area
|tip They look like large humans.
|tip You can find them all around the Baleheim area. |notinsticky
Slay #16# Winterskorn Vrykuls |q 11283/1 |goto 65.18,40.46
step
talk Sergeant Gorth##24027
turnin Baleheim Bodycount##11283 |goto 71.11,39.08
turnin Baleheim Must Burn!##11285 |goto 71.11,39.08
accept The Ambush##11303 |goto 71.11,39.08
step
talk Lydell##24458
turnin The Ambush##11303 |goto 65.87,36.78
accept Adding Injury to Insult##12481 |goto 65.87,36.78
step
use Vrykul Insult##33581
|tip Use it on Bjorn Halgurdsson.
|tip You don't have to be very close to him, so try to use it at max range.
|tip After you use it on him, start running back to Lydell, the NPC who just gave you the quest.
|tip You don't have to kite Born Halgurdsson, he will follow you the whole way.
Insult Bjorn Halgurdsson |q 12481/1 |goto 64.02,39.80
step
kill Bjorn Halgurdsson##24238
|tip Lead him back to Lydell, where he and the other NPCs will help you to defeat him.
|tip You must lead him here for the quest to complete.
Defeat Bjorn Halgurdsson |q 12481/2 |goto 65.87,36.78
step
talk Lydell##24458
turnin Adding Injury to Insult##12481 |goto 65.87,36.78
step
Follow the path up to Camp Winterhoof |goto 48.31,15.15 < 50 |only if walking and not subzone("Camp Winterhoof")
talk Celea Frozenmane##24032
fpath Camp Winterhoof |goto 49.57,11.59
step
talk Chieftain Ashtotem##24129
turnin Help for Camp Winterhoof##12566 |goto 48.04,10.75
step
talk Ahota Whitefrost##24127
accept Hasty Preparations##11271 |goto 48.38,11.04
step
talk Wind Tamer Kagan##24256
accept Suppressing the Elements##11311 |goto 48.92,11.98
step
talk Nokoma Snowseer##24123
accept Making the Horn##11275 |goto 49.32,11.98
stickystart "Collect_Spotted_Hippogryph_Down"
step
kill Frosthorn Ram##23740+
collect 6 Undamaged Ram Horn##33351 |q 11275/1 |goto 46.05,17.03
You can find more around: |notinsticky
[56.96,15.74]
[52.58,10.15]
[50.97,3.19]
stickystop "Collect_Spotted_Hippogryph_Down"
step
talk Nokoma Snowseer##24123
turnin Making the Horn##11275 |goto 49.32,11.98
accept Mimicking Nature's Call##11281 |goto 49.32,11.98
accept The Frozen Glade##11312 |goto 49.32,11.98
step
talk Longrunner Pembe##24362
accept The Book of Runes##11350 |goto 49.23,12.24
step
Enter the building |goto 49.42,10.91 < 10 |walk
talk Bori Wintertotem##24033
|tip Inside the building.
home Camp Winterhoof |goto 49.50,10.79
step
talk Junat the Wanderer##24234
accept Keeping Watch on the Interlopers##11297 |goto 48.43,10.43
stickystart "Collect_Spotted_Hippogryph_Down"
stickystart "Kill_Iceshard_Elementals"
step
use the Carved Horn##33450
Watch the dialogue
|tip Frostgore will run up to you.
kill Frostgore##24173
Test Nokoma's Horn |q 11281/1 |goto 52.42,3.83
step
label "Kill_Iceshard_Elementals"
kill Iceshard Elemental##24228+
|tip They look like grey rock elementals.
Slay #8# Mountain Elementals |q 11311/1 |goto 52.37,2.77
step
talk Lurielle##24117
|tip Avoid Fort Wildervar while traveling here.
turnin The Frozen Glade##11312 |goto 61.49,22.86
accept Spirits of the Ice##11313 |goto 61.49,22.86
step
kill Ice Elemental##23919+
|tip They look like small grey rock elementals.
|tip You can find them all around the Frozen Glade area.
collect 15 Icy Core##33605 |q 11313/1 |goto 60.85,22.08
step
talk Lurielle##24117
turnin Spirits of the Ice##11313 |goto 61.49,22.86
accept The Fallen Sisters##11314 |goto 61.49,22.86
accept Wild Vines##11315 |goto 61.49,22.86
stickystart "Collect_Book_of_Runes_Chapter_2"
stickystart "Collect_Book_of_Runes_Chapter_3"
step
Kill Iron Rune enemies around this area
|tip They look like dwarves wearing dark colored armor.
|tip You can find them all around the Giant's Run area. |notinsticky
collect Book of Runes - Chapter 1##33778 |goto 65.04,28.94 |q 11350
You can find more around [67.78,28.95]
step
label "Collect_Book_of_Runes_Chapter_2"
Kill Iron Rune enemies around this area |notinsticky
|tip They look like dwarves wearing dark colored armor. |notinsticky
|tip You can find them all around the Giant's Run area. |notinsticky
collect Book of Runes - Chapter 2##33779 |goto 65.04,28.94 |q 11350
You can find more around [67.78,28.95]
step
label "Collect_Book_of_Runes_Chapter_3"
Kill Iron Rune enemies around this area |notinsticky
|tip They drop from Iron Rune Stonecallers and Iron Rune Binders. |notinsticky
|tip They look like dwarves wearing dark colored armor. |notinsticky
|tip You can find them all around the Giant's Run area. |notinsticky
collect Book of Runes - Chapter 3##33780 |goto 65.04,28.94 |q 11350
You can find more around [67.78,28.95]
step
use Book of Runes - Chapter 1##33778
collect The Book of Runes##33781 |q 11350/1
step
use the Hearthstone##6948
Hearth to Camp Winterhoof |complete subzone("Camp Winterhoof") |q 11350
|only if (subzone("Giant's Run"))
stickystop "Collect_Spotted_Hippogryph_Down"
step
talk Nokoma Snowseer##24123
turnin Mimicking Nature's Call##11281 |goto 49.32,11.98
step
talk Longrunner Pembe##24362
turnin The Book of Runes##11350 |goto 49.23,12.24
accept Mastering the Runes##11351 |goto 49.23,12.24
step
talk Wind Tamer Kagan##24256
turnin Suppressing the Elements##11311 |goto 48.92,11.98
step
talk Chieftain Ashtotem##24129
accept Skorn Must Fall!##11256 |goto 48.04,10.75
stickystart "Collect_Spotted_Hippogryph_Down"
stickystart "Kill_Scarlet_Ivy"
step
kill Chill Nymph##23678+
|tip Don't kill them, just weaken them.
use Lurielle's Pendant##33606
|tip Use it on weakened Chill Nymphs.
|tip They look like female centaurs.
|tip You can find them all around the Vibrant Glade area.
Free #7# Chill Nymphs |q 11314/1 |goto 51.57,27.61
step
label "Kill_Scarlet_Ivy"
kill 8 Scarlet Ivy##23763 |q 11315/1 |goto 51.57,27.61
|tip They look like large walking flowers.
|tip You can find them all around the Vibrant Glade area. |notinsticky
step
talk Lurielle##24117
turnin The Fallen Sisters##11314 |goto 61.49,22.86
turnin Wild Vines##11315 |goto 61.49,22.86
accept Spawn of the Twisted Glade##11316 |goto 61.49,22.86
accept Seeds of the Blacksouled Keepers##11319 |goto 61.49,22.86
stickystart "Kill_Thornvine_Creepers"
step
kill Spore##23876+
|tip They look like orange spikey balls.
|tip You can find them all around the Twisted Glade area.
use the Enchanted Ice Core##33607
|tip Use it on their corpses.
Freeze #8# Spores |q 11319/1 |goto 54.05,17.75
step
label "Kill_Thornvine_Creepers"
kill 10 Thornvine Creeper##23874+ |q 11316/1 |goto 54.05,17.75
|tip They look like black and purple swamp elementals.
|tip You can find them all around the Twisted Glade area. |notinsticky
step
talk Lurielle##24117
turnin Spawn of the Twisted Glade##11316 |goto 61.49,22.86
turnin Seeds of the Blacksouled Keepers##11319 |goto 61.49,22.86
accept Keeper Witherleaf##11428 |goto 61.49,22.86
step
click Iron Rune Carving Tools##186684
|tip It looks like a small metal chest.
|tip It can spawn in multiple locations.
collect Iron Rune Carving Tools##33794 |q 11351/1 |goto 67.54,23.33
It can also be located at: |notinsticky
[72.40,17.80]
[69.10,22.80]
[67.50,29.20]
[71.20,28.70]
[73.30,24.89]
step
kill Keeper Witherleaf##24638 |q 11428/1 |goto 53.64,18.34
|tip He looks like a green and brown centaur that walks around this area.
step
label "Collect_Spotted_Hippogryph_Down"
click Spotted Hippogryph Down##186591+
|tip They look like brown feathers on the ground around this area.
|tip You can find them all around this area. |notinsticky
collect 10 Spotted Hippogryph Down##33348 |q 11271/1 |goto 52.80,18.98
step
Follow the path up to Camp Winterhoof |goto 48.31,15.15 < 50 |only if walking and not subzone("Camp Winterhoof")
talk Longrunner Pembe##24362
turnin Mastering the Runes##11351 |goto 49.23,12.24
accept The Rune of Command##11352 |goto 49.23,12.24
step
talk Ahota Whitefrost##24127
turnin Hasty Preparations##11271 |goto 48.38,11.04
step
talk Lurielle##24117
turnin Keeper Witherleaf##11428 |goto 61.49,22.86
step
use the Rune of Command##33796
|tip Use it on a neutral Stone Giant around this area.
|tip It will not work on a Runed Stone Giant.
Test the Rune of Command |q 11352/1 |goto 70.41,23.92
step
kill Binder Murdis##24334 |q 11352/2 |goto 71.85,24.56
|tip Your Captive Stone Giant minion from the previous step will help you fight.
step
Jump across the rocks |goto Howling Fjord/0 64.62,23.21 < 20
use Winterhoof Emblem##33340
talk Winterhoof Brave##24130
|tip He appears next to you.
turnin Skorn Must Fall!##11256 |goto 44.37,26.36
accept Gruesome, But Necessary##11257 |goto 44.37,26.36
accept Burn Skorn, Burn!##11258 |goto 44.37,26.36
accept Towers of Certain Doom##11259 |goto 44.37,26.36
stickystart "Dismember_Winterskorn_Vrykul"
stickystart "Accept_Stop_The_Ascension"
step
Enter the building |goto 43.73,28.31 < 10 |walk
use the Brave's Torch##33343
|tip Use it inside this building.
Set the Northwest Longhouse Ablaze |q 11258/1 |goto 43.66,28.57
step
use the Brave's Flare##33344
Target the Northwest Tower |q 11259/1 |goto 43.66,28.57
step
Enter the building |goto 46.18,28.36 < 10 |walk
use the Brave's Torch##33343
|tip Use it inside this building.
Set the Northeast Longhouse Ablaze |q 11258/2 |goto 46.33,28.21
step
Enter the building |goto 45.74,30.38 < 10 |walk
use the Brave's Torch##33343
|tip Use it inside this building.
Set the Barracks Ablaze |q 11258/3 |goto 45.93,30.71
step
_Next to you:_
use Winterhoof Emblem##33340
talk Winterhoof Brave##24130
|tip He should already be next to you.
|tip Use the item if he's not there.
turnin Burn Skorn, Burn!##11258
step
Follow the path up |goto 44.90,32.14 < 30 |only if walking
use the Brave's Flare##33344
Target the East Tower |q 11259/2 |goto 46.44,33.21
step
use the Brave's Flare##33344
Target the Southeast Tower |q 11259/4 |goto 46.95,36.37
step
label "Accept_Stop_The_Ascension"
Kill Winterskorn enemies around this area
collect Vrykul Scroll of Ascension##33345 |n
use the Vrykul Scroll of Ascension##33345
accept Stop the Ascension!##11260 |goto 44.86,35.07
step
use the Vrykul Scroll of Ascension##33346
Watch the dialogue
|tip Halfdan the Ice-Hearted appears nearby.
kill Halfdan the Ice-Hearted##23671 |q 11260/1 |goto 44.86,35.07
step
label "Dismember_Winterskorn_Vrykul"
Kill Winterskorn enemies around this area
use The Brave's Machete##33342
|tip Use it on their corpses.
Dismember #20# Winterskorn Vrykul |q 11257/1 |goto 44.78,31.41
step
_Next to you:_
use Winterhoof Emblem##33340
talk Winterhoof Brave##24130
|tip He should already be next to you.
|tip Use the item if he's not there.
turnin Gruesome, But Necessary##11257
step
use the Brave's Flare##33344
Target the Southwest Tower |q 11259/3 |goto 43.30,35.93
step
use Winterhoof Emblem##33340
talk Winterhoof Brave##24130
|tip He should already be next to you.
|tip Use the item if he's not there.
turnin Towers of Certain Doom##11259
accept The Conqueror of Skorn!##11261
step
use the Hearthstone##6948
Hearth to Camp Winterhoof |complete subzone("Camp Winterhoof") |q 11261
|only if (subzone("Skorn"))
step
talk Chieftain Ashtotem##24129
turnin The Conqueror of Skorn!##11261 |goto 48.04,10.75
accept Dealing With Gjalerbron##11263 |goto 48.04,10.75
step
talk Greatmother Ankha##24135
turnin Stop the Ascension!##11260 |goto 48.16,10.66
accept Of Keys and Cages##11265 |goto 48.16,10.66
accept Find Sage Mistwalker##11287 |goto 48.16,10.66
step
talk Longrunner Pembe##24362
turnin The Rune of Command##11352 |goto 49.23,12.24
step
talk Longrunner Skycloud##24209
|tip On the wooden platform.
accept Rivenwood Captives##11296 |goto 31.28,24.34
step
talk Sage Mistwalker##24186
|tip On the wooden platform.
turnin Find Sage Mistwalker##11287 |goto 31.16,24.52
accept The Artifacts of Steel Gate##11286 |goto 31.16,24.52
step
Follow the path down |goto 32.01,24.30 < 40 |only if walking
click Steel Gate Artifact##186397+
|tip They look like grey broken stone tablets laying on the ground.
|tip You can find them all around the Steel Gate area.
collect 10 Steel Gate Artifact##33109 |q 11286/1 |goto 30.88,26.81
step
Follow the path up |goto 31.97,25.85 < 15 |only if walking and subzone("Steel Gate")
talk Sage Mistwalker##24186
|tip On the wooden platform.
turnin The Artifacts of Steel Gate##11286 |goto 31.16,24.52
accept The Cleansing##11317 |goto 31.16,24.52
step
talk Lilleth Radescu##26844
fpath Apothecary Camp |goto 25.98,25.07
step
talk Apothecary Anastasia##24359
|tip She walks around this area.
accept And You Thought Murlocs Smelled Bad!##11397 |goto 26.24,24.61
step
talk Apothecary Malthus##24152
turnin Keeping Watch on the Interlopers##11297 |goto 26.43,24.50
accept What's in That Brew?##11298 |goto 26.43,24.50
step
talk Apothecary Grick##24218
accept Brains! Brains! Brains!##11301 |goto 25.96,24.43
step
Follow the path to the top of the mountain |goto 54.30,8.23 < 30 |only if walking
click Frostblade Shrine##186649
|tip At the top of the mountain.
Watch the dialogue
kill Your Inner Turmoil##27959
Become Cleansed of Your Inner Turmoil |q 11317/1 |goto 61.12,2.02
step
_NOTE:_
Jump Off the Mountain Toward Camp Winterhoof
|tip You received a slow fall buff.
|tip Mount and jump off the mountain toward this location and float down to Camp Winterhoof.
Reach Camp Winterhoof |complete subzone("Camp Winterhoof") |goto 49.56,11.59 |q 11317
|only if hasbuff(50237)
step
talk Sage Mistwalker##24186
|tip On the wooden platform.
turnin The Cleansing##11317 |goto 31.16,24.52
accept In Worg's Clothing##11323 |goto 31.16,24.52
step
kill Riven Widow Cocoon##24210+
|tip They look like big squirming white cocoons.
|tip You can find them all around the Rivenwood area.
Free #7# Winterhoof Longrunners |q 11296/1 |goto 29.41,17.69
step
use Worg Disguise##33618
Wear the Worg Disguise |complete hasbuff(68347) |goto 29.21,7.56 |q 11323
step
Enter the cave |goto 29.30,6.01 < 15 |walk
talk Ulfang##24261
|tip Inside the small cave.
turnin In Worg's Clothing##11323 |goto 29.70,5.66
accept Brother Betrayers##11415 |goto 29.70,5.66
step
kill Bjomolf##24516 |q 11415/1 |goto 27.47,21.50
|tip He looks like a larger brown wolf that walks around this area.
step
talk Longrunner Skycloud##24209
|tip On the wooden platform.
turnin Rivenwood Captives##11296 |goto 31.28,24.34
step
kill Varg##24517 |q 11415/2 |goto 34.12,30.42
|tip He looks like a larger grey wolf that walks around this area.
stickystart "Kill_Gjalerbron_Warriors"
stickystart "Kill_Gjalerbron_Rune_Casters"
stickystart "Kill_Gjalerbron_Sleep_Watchers"
stickystart "Accept_Gjalerbron_Attack_Plans"
step
Kill Gjalerbron enemies around this area
|tip They look like large humans.
|tip You can find them all around the Gjalerbron area.
collect Gjalerbron Cage Key##33284+ |n
collect Large Gjalerbron Cage Key##33290 |n
|tip This key is rare to find.
|tip It can be used to open the Large Gjalerbron Cage at this location.
|tip The Large Gjalerbron Cage at this location contains multiple prisoners.
click Gjalerbron Cage+
|tip They look like wood and metal cages.
Free #10# Gjalerbron Prisoners |q 11265/1 |goto 35.80,11.46
step
label "Kill_Gjalerbron_Warriors"
kill 15 Gjalerbron Warrior##23991 |q 11263/1 |goto 35.37,11.30
|tip They look like large humans with an axe and a shield.
|tip You can find them all around the Gjalerbron area. |notinsticky
step
label "Kill_Gjalerbron_Rune_Casters"
kill 8 Gjalerbron Rune-Caster##23990 |q 11263/2 |goto 33.64,13.20
|tip They look like large humans wearing white robes.
|tip You can find them all around the Gjalerbron area. |notinsticky
step
label "Kill_Gjalerbron_Sleep_Watchers"
kill 8 Gjalerbron Sleep-Watcher##23989 |q 11263/3 |goto 35.37,11.30
|tip They look like large humans wearing brown robes.
|tip You can find them all around the Gjalerbron area. |notinsticky
step
label "Accept_Gjalerbron_Attack_Plans"
Kill Gjalerbron enemies around this area
|tip They look like large humans. |notinsticky
|tip You can find them all around the Gjalerbron area. |notinsticky
collect Gjalerbron Attack Plans##33347 |n
use the Gjalerbron Attack Plans##33347w
accept Gjalerbron Attack Plans##11266 |goto 33.69,13.12
step
Leave Gjalerbron and run around the mountain |goto 31.39,13.03 < 70 |only if walking and subzone("Gjalerbron")
use the Worg Disguise##33618
Wear the Worg Disguise |complete hasbuff(68347) |goto 29.21,7.56 |q 11415
step
Enter the cave |goto 29.30,6.01 < 15 |walk
talk Ulfang##24261
|tip Inside the small cave.
turnin Brother Betrayers##11415 |goto 29.69,5.67
accept Eyes of the Eagle##11417 |goto 29.69,5.67
step
click Talonshrike's Egg##190283
|tip At the bottom of the waterfall.
kill Talonshrike##24518
|tip It flies down to you.
collect Eyes of the Eagle##34027 |q 11417/1 |goto 41.46,37.69
stickystart "Collect_Deranged_Explorer_Brains"
step
Follow the path up out of the canyon |goto 40.64,35.93 < 15 |only if walking and not subzone("Whisper Gulch")
Follow the path down into Whisper Gulch |goto 37.64,36.05 < 15 |only if walking and not subzone("Whisper Gulch")
click Dwarven Kegs##186632+
|tip They look like large dark wooden kegs on the ground.
|tip You can find them all around inside the Whisper Gulch canyon.
collect 5 Dwarven Keg##33541 |q 11298/1 |goto 33.51,36.68
step
label "Collect_Deranged_Explorer_Brains"
kill Deranged Explorer##23967+
|tip They look like dwarves.
|tip You can find them all around inside the Whisper Gulch canyon. |notinsticky
use Grick's Bonesaw##33554
|tip Use it on their corpses.
collect 12 Deranged Explorer Brain##33558 |q 11301/1 |goto 33.51,36.68
stickystart "Kill_Chillmere_Coast_Scourge"
step
Jump down carefully to leave Whisper Gulch |goto 30.36,36.55 < 10 |only if walking and subzone("Whisper Gulch")
Follow the shore to leave Whisper Gulch |goto 28.39,38.00 < 40 |only if walking and subzone("Whisper Gulch")
Kill enemies around this area
collect Scourge Device##33962 |n
use the Scourge Device##33962
accept It's a Scourge Device##11398 |goto 22.73,31.08
step
Follow the path up the cliff |goto 23.71,21.80 < 15 |only if walking and subzone("Chillmere Coast")
talk Apothecary Malthus##24152
turnin What's in That Brew?##11298 |goto 26.43,24.50
stickystop "Kill_Chillmere_Coast_Scourge"
step
talk Apothecary Anastasia##24359
|tip She walks around this area.
turnin It's a Scourge Device##11398 |goto 26.24,24.61
accept Bring Down Those Shields##11399 |goto 26.24,24.61
step
talk Apothecary Grick##24218
turnin Brains! Brains! Brains!##11301 |goto 25.96,24.43
stickystart "Kill_Chillmere_Coast_Scourge"
step
Follow the path down the cliff |goto 25.48,20.01 < 30 |only if walking and not subzone("Chillmere Coast")
use the Scourging Crystal Controller##33960
|tip Use it near the Scourge Crystal.
|tip It looks like a large floating purple crystal.
kill Scourging Crystal##24464
|tip Attack the crystal when the purple bubble shield disappears.
|tip If you have a pet, make you you get the killing blow, not your pet, or you won't get credit.
Destroy the Scourging Crystal |q 11399/1 |goto 22.51,17.62 |count 1
step
use the Scourging Crystal Controller##33960
|tip Use it near the Scourge Crystal.
|tip It looks like a large floating purple crystal.
kill Scourging Crystal##24464
|tip Attack the crystal when the purple bubble shield disappears.
|tip If you have a pet, make you you get the killing blow, not your pet, or you won't get credit.
Destroy the Scourging Crystal |q 11399/1 |goto 22.91,20.07 |count 2
step
use the Scourging Crystal Controller##33960
|tip Use it near the Scourge Crystal.
|tip It looks like a large floating purple crystal.
kill Scourging Crystal##24464
|tip Attack the crystal when the purple bubble shield disappears.
|tip If you have a pet, make you you get the killing blow, not your pet, or you won't get credit.
Destroy the Scourging Crystal |q 11399/1 |goto 21.75,22.47 |count 3
step
talk Old Icefin##24544
accept Trident of the Son##11422 |goto 19.78,22.21
step
kill Rotgill##24546
|tip He looks like a white murloc that walks along the coast around this area.
collect Rotgill's Trident##34035 |q 11422/1 |goto 22.89,33.81
step
talk Old Icefin##24544
turnin Trident of the Son##11422 |goto 19.78,22.21
step
label "Kill_Chillmere_Coast_Scourge"
Kill enemies around this area
|tip You can find them all around the Chillmere Coast area.
Kill #15# Chillmere Coast Scourge |q 11397/1 |goto 22.27,22.02
step
Follow the path up the cliff |goto 23.71,21.80 < 15 |only if walking and subzone("Chillmere Coast")
talk Apothecary Anastasia##24359
|tip She walks around this area.
turnin And You Thought Murlocs Smelled Bad!##11397 |goto 26.24,24.61
turnin Bring Down Those Shields##11399 |goto 26.24,24.61
step
talk Celea Frozenmane##24032
turnin Gjalerbron Attack Plans##11266 |goto 49.57,11.59
step
talk Greatmother Ankha##24135
turnin Of Keys and Cages##11265 |goto 48.16,10.66
accept The Walking Dead##11268 |goto 48.16,10.66
step
talk Chieftain Ashtotem##24129
turnin Dealing With Gjalerbron##11263 |goto 48.04,10.75
accept Necro Overlord Mezhen##11264 |goto 48.04,10.75
step
talk Ahota Whitefrost##24127
accept Sleeping Giants##11433 |goto 48.38,11.04
step
use the Worg Disguise##33618
Wear the Worg Disguise |complete hasbuff(68347) |goto 29.21,7.56 |q 11417
step
Enter the cave |goto 29.33,5.97 < 15 |walk
talk Ulfang##24261
|tip Inside the small cave.
turnin Eyes of the Eagle##11417 |goto 29.69,5.67
accept Alpha Worg##11324 |goto 29.69,5.67
step
kill Garwal##24277 |q 11324/1 |goto 27.32,15.39
|tip He looks like a larger grey wolf that walks around this area.
stickystart "Kill_Deathless_Watchers"
stickystart "Collect_Awakening_Rods"
stickystart "Kill_Putrid_Wights"
step
Run up the ramp |goto 38.33,10.88 < 15 |only if walking
kill Necro Overlord Mezhen##24018 |q 11264/1 |goto 38.79,13.08
collect Mezhen's Writings##34091 |goto 38.79,13.08 |q 11453 |future
step
use Mezhen's Writings##34091
accept The Slumbering King##11453
step
Enter the building |goto 39.77,7.61 < 15 |walk
kill Queen Angerboda##24023 |q 11453/1 |goto 40.89,6.48
|tip Inside the building.
|tip Follow the path around inside the building to get to her.
step
label "Kill_Deathless_Watchers"
Leave the building |goto 39.77,7.61 < 15 |walk |only if subzone("Winter's Terrace")
kill 10 Deathless Watcher##24013 |q 11268/1 |goto 33.72,9.96
You can find more around: |notinsticky
[36.40,15.73]
[36.87,8.19]
step
label "Collect_Awakening_Rods"
kill Necrolord##24014+
collect 5 Awakening Rod##34083 |goto 38.50,12.53 |q 11433
You can find more around [33.25,9.33]
step
label "Kill_Putrid_Wights"
kill 2 Putrid Wight##23992 |q 11268/3 |goto 33.72,9.96
You can find more around: |notinsticky
[36.40,15.73]
[36.87,8.19]
stickystart "Kill_Fearsome_Horrors"
step
Enter the building |goto 34.43,13.16 < 15 |walk
use the Awakening Rod##34083+
|tip Use them on Dormant Vrykul.
|tip They look like vrykul sleeping upright inside the walls like mummies around this area inside the building.
kill 5 Dormant Vrykul##24669 |q 11433/1 |goto 35.12,11.70
step
label "Kill_Fearsome_Horrors"
kill 4 Fearsome Horror##24073 |q 11268/2 |goto 35.35,12.19
|tip Inside the building.
|tip They can be spread out in all of the rooms in this underground building.
step
use the Hearthstone##6948
Hearth to Camp Winterhoof |complete subzone("Camp Winterhoof") |q 11268
|only if (subzone("The Waking Halls"))
step
talk Ahota Whitefrost##24127
turnin Sleeping Giants##11433 |goto 48.38,11.04
step
talk Greatmother Ankha##24135
turnin The Walking Dead##11268 |goto 48.16,10.66
step
talk Chieftain Ashtotem##24129
turnin Necro Overlord Mezhen##11264 |goto 48.04,10.75
turnin The Slumbering King##11453 |goto 48.04,10.75
step
talk Sage Mistwalker##24186
turnin Alpha Worg##11324 |goto 31.16,24.52
step
talk Orfus of Kamagua##23804
accept The Dead Rise!##11504 |goto 40.29,60.25
step
Enter New Agamand |goto 51.30,67.81 < 30 |only if walking and not subzone("New Agamand")
talk Tobias Sarkhoff##24155
fpath New Agamand |goto 52.01,67.38
step
talk Plaguebringer Tillinghast##24157
accept Green Eggs and Whelps##11279 |goto 53.07,66.93
step
talk Chief Plaguebringer Harris##24251
turnin New Agamand##11304 |goto 53.59,66.36
accept A Tailor-Made Formula##11305 |goto 53.59,66.36
step
talk "Hacksaw" Jenny##24252
accept Shield Hill##11424 |goto 53.68,65.21
step
kill Thorvald##27926
collect Dragonflayer Patriarch's Blood##38098 |q 11305/1 |goto 46.80,68.09
step
Enter New Agamand |goto 51.30,67.81 < 30 |only if walking and not subzone("New Agamand")
talk Chief Plaguebringer Harris##24251
turnin A Tailor-Made Formula##11305 |goto 53.59,66.36
accept Apply Heat and Stir##11306 |goto 53.59,66.36
step
_Gather a Flask:_
use Empty Apothecary's Flask##33614
|tip Nearby, next to the metal cauldron.
|tip This will give you a Flask of Vrykul Blood.
collect Flask of Vrykul Blood##33614+ |n
_Test the Flask:_
use the Flask of Vrykul Blood##33615+
|tip Nearby, next to the table with chemistry instruments on it.
|tip Enemies may spawn after you use the flask, if you don't get the quest item.
_Repeat the Process:_
|tip Continue filling the Empty Apothecary's Flasks at the cauldron, and testing the Flasks of Vrykul Blood at the table.
|tip You will eventually create a Balanced Concoction.
collect Balanced Concoction##33617 |q 11306/1 |goto 53.57,66.39
step
talk Chief Plaguebringer Harris##24251
turnin Apply Heat and Stir##11306 |goto 53.59,66.36
accept Field Test##11307 |goto 53.59,66.36
step
use the Plague Spray##33621
|tip Use it on Plagued Dragonflayer enemies.
|tip They look like green large humans.
|tip You can find them all around the Halgrind area.
Spray #10# Plagued Vrykul |q 11307/1 |goto 49.78,54.61
stickystart "Collect_Plagued_Proto_Whelp_Specimens"
step
Follow the path to leave Halgrind |goto 49.50,50.28 < 30 |only if walking and subzone("Halgrind")
talk Ember Clutch Ancient##23870+
|tip They look like large trees that walks around this area.
accept Root Causes##11182 |goto 41.18,49.34
stickystart "Kill_Dragonflayer_Handlers"
step
Enter the building |goto 41.35,52.85 < 10 |walk
kill Skeld Drakeson##23940 |q 11182/2 |goto 41.46,52.35
|tip Inside the building.
step
label "Kill_Dragonflayer_Handlers"
kill 5 Dragonflayer Handler##23871 |q 11182/1 |goto 41.44,53.87
step
talk Ember Clutch Ancient##23870+
|tip They look like large trees that walks around this area.
turnin Root Causes##11182 |goto 41.18,49.34
step
label "Collect_Plagued_Proto_Whelp_Specimens"
use Tillinghast's Plague Canister##33418
|tip Use it on Proto-Drake Eggs.
|tip They look like large white eggs.
|tip You can find them all around the Ember Clutch area.
kill Plagued Proto-Whelp##24160+
|tip They appear after you destroy the eggs.
collect 10 Plagued Proto-Whelp Specimen##33420 |q 11279/1 |goto 39.38,50.75
step
Enter New Agamand |goto 51.30,67.81 < 30 |only if walking and not subzone("New Agamand")
talk Plaguebringer Tillinghast##24157
turnin Green Eggs and Whelps##11279 |goto 53.07,66.93
accept Draconis Gastritis##11280 |goto 53.07,66.93
step
talk Chief Plaguebringer Harris##24251
turnin Field Test##11307 |goto 53.59,66.36
accept Time for Cleanup##11308 |goto 53.59,66.36
step
talk "Hacksaw" Jenny##24252
turnin Time for Cleanup##11308 |goto 53.68,65.21
accept Parts for the Job##11309 |goto 53.68,65.21
step
map Howling Fjord
path	follow strictbounce;	loop off;	ants curved;	dist 30;	markers none
path	52.15,73.51		50.58,73.81		50.19,74.25		49.33,74.32		48.20,73.22
path	48.05,72.85		47.80,72.52		47.61,72.03		47.62,71.36		47.20,70.79
path	46.93,70.27		46.21,70.06		45.57,69.04
talk Anton##24291
|tip He looks like an undead in a black robe.
|tip He walks along the road.
buy Fresh Pound of Flesh##33612 |q 11309/2
stickystart "Collect_Ancient_Vrykul_Bones"
step
click Mound of Debris##187022
|tip It looks like a pile of dirt.
collect Fengir's Clue##34222 |q 11504/1 |goto 57.68,77.52
step
click Unlocked Chest##187023
|tip It looks like a small brown metal and wooden chest.
collect Rodin's Clue##34223 |q 11504/2 |goto 59.23,76.98
step
click Long Tail Feather##187026
|tip It looks like a blue feather.
collect Isuldof's Clue##34224 |q 11504/3 |goto 59.79,79.39
step
click Cannonball##187027
|tip It looks like a grey boulder.
collect Windan's Clue##34225 |q 11504/4 |goto 61.97,80.06
step
label "Collect_Ancient_Vrykul_Bones"
kill Risen Vrykul Ancestor##24871+
|tip They look like large skeletons.
|tip You can find them all around the Shield Hill area.
collect 5 Ancient Vrykul Bone##34043 |q 11424/1 |goto 59.95,78.45
step
Cross the bridge |goto 59.39,72.99 < 30 |only if walking and subzone("Shield Hill")
talk Ranger Captain Areiel##27922
accept Against Nifflevar##12482 |goto 67.45,60.58
step
talk Scribe Seguine##24548
accept The Enemy's Legacy##11423 |goto 67.35,60.32
stickystart "Slay_Dragonflayer_Warriors"
stickystart "Slay_Dragonflayer_RuneSeers"
stickystart "Slay_Dragonflayer_Hunting_Hounds"
step
Enter the building |goto 67.61,56.61 < 10 |walk
click Saga of the Val'kyr##186830
|tip It looks like an unrolled scroll.
|tip Inside the building.
collect Saga of the Val'kyr##34042 |q 11423/2 |goto 67.42,57.16
step
Enter the building |goto 66.18,53.95 < 20 |walk
click the Saga of the Twins##525
|tip It looks like an unrolled scroll.
|tip Inside the building.
collect Saga of the Twins##34040 |q 11423/1 |goto 64.68,53.57
step
Enter the building |goto 68.69,53.10 < 10 |walk
click the Saga of the Winter Curse##525
|tip It looks like an unrolled scroll.
|tip Inside the building.
collect Saga of the Winter Curse##34041 |q 11423/3 |goto 68.93,52.62
step
label "Slay_Dragonflayer_Warriors"
kill 5 Dragonflayer Warrior##23654 |q 12482/1 |goto 67.94,53.88
|tip They look like large humans holding an axe and a club.
|tip You can find them all around the Nifflevar area. |notinsticky
step
label "Slay_Dragonflayer_RuneSeers"
kill 4 Dragonflayer Rune-Seer##23656 |q 12482/2 |goto 67.94,53.88
|tip They look like large humans wearing robes.
|tip You can find them all around the Nifflevar area. |notinsticky
step
label "Slay_Dragonflayer_Hunting_Hounds"
kill 4 Dragonflayer Hunting Hound##23994 |q 12482/3 |goto 67.94,53.88
|tip They look like hyenas.
|tip You can find them all around the Nifflevar area. |notinsticky
step
talk Ranger Captain Areiel##27922
turnin Against Nifflevar##12482 |goto 67.45,60.58
step
talk Scribe Seguine##24548
turnin The Enemy's Legacy##11423 |goto 67.35,60.32
step
Kill Shoveltusk enemies around this area
|tip They look like buffalo.
collect 6 Shoveltusk Ligament##33611 |q 11309/1 |goto 67.93,62.99
You can: |notinsticky
Find more around [69.05,69.78]
Cross the bridge at [62.30,72.19]
Find more across the bridge around [54.04,71.38]
step
talk "Hacksaw" Jenny##24252
turnin Parts for the Job##11309 |goto 53.68,65.21
accept Warning: Some Assembly Required##11310 |goto 53.68,65.21
turnin Shield Hill##11424 |goto 53.68,65.21
step
use Abomination Assembly Kit##33613
|tip You will start to control a Mindless Abomination.
|tip Send your Mindless Abomination into groups of enemies.
|tip You can find them all around the Halgrind area.
|tip Gather them up so that a group of many are attacking your abomination.
|tip Use the "Plagued Blood Explosion" ability on your pet action bar when you have many attacking your abomination.
|tip Your abomination will blow up and kill the enemies.
|tip Do this multiple times.
|tip Blow up the Abomination before it dies, or the Vrykul he aggroed may attack you.
Exterminate #20# Plagued Vrykul |q 11310/1 |goto 49.50,57.29
step
use Tillinghast's Plagued Meat##33441
|tip Use it on a Proto-Drake.
|tip They look like dragons flying in the sky around this area.
|tip The drake will fly down and die.
Observe the Proto-Drake Plague Results |q 11280/1 |goto 39.18,50.38
step
talk Orfus of Kamagua##23804
turnin The Dead Rise!##11504 |goto 40.29,60.25
accept Elder Atuik and Kamagua##11507 |goto 40.29,60.25
step
Ride the lift |goto Howling Fjord/0 40.07,60.19 < 10 |only if walking
Enter the building |goto 25.09,57.20 < 15 |walk
talk Elder Atuik##24755
|tip Inside the building.
turnin Elder Atuik and Kamagua##11507 |goto 25.02,56.97
accept Grezzix Spindlesnap##11508 |goto 25.02,56.97
accept Feeding the Survivors##11456 |goto 25.02,56.97
step
talk Kip Trawlskip##28197
fpath Kamagua |goto 24.66,57.77
step
kill Island Shoveltusk##24681+
|tip They look like buffalo.
|tip The grey wolves will kill nearby Shoveltusks, so kill those too, if you need to.
|tip You can find them all around the Isle of Spears area.
collect 6 Island Shoveltusk Meat##36776 |q 11456/1 |goto 30.53,60.03
You can find more around:
[29.21,58.55]
[27.24,63.61]
[28.62,64.69]
[32.64,66.28]
[36.38,53.29]
[29.16,66.53]
[30.95,62.43]
step
Enter the building |goto 25.09,57.20 < 15 |walk
talk Elder Atuik##24755
|tip Inside the building.
turnin Feeding the Survivors##11456 |goto 25.02,56.97
accept Arming Kamagua##11457 |goto 25.02,56.97
step
kill Frostwing Chimaera##24673+
|tip They look like blue and white two-headed dragons.
collect 3 Chimaera Horn##34101 |q 11457/1 |goto 28.12,54.71
You can find more around [27.52,67.05]
step
Enter the building |goto 25.09,57.20 < 15 |walk
talk Elder Atuik##24755
|tip Inside the building.
turnin Arming Kamagua##11457 |goto 25.02,56.97
accept Avenge Iskaal##11458 |goto 25.02,56.97
step
Enter the underground building |goto 25.34,59.35 < 10 |walk
talk Caregiver Iqniq##27148
|tip Inside the building.
home Kamagua |goto 25.39,59.85
step
talk Grezzix Spindlesnap##24643
|tip On the small boat.
turnin Grezzix Spindlesnap##11508 |goto 23.08,62.66
accept Street "Cred"##11509 |goto 23.08,62.66
step
talk Lou the Cabin Boy##24896
|tip On the small canoe.
Tell him _"I don't have time for chit-chat, Lou. Take me to Scalawag Point."_
Begin Traveling to Scalawag Point |invehicle |goto 23.10,62.58 |q 11509
step
Watch the dialogue
|tip You will eventually travel to this location.
Travel to Scalawag Point |outvehicle |goto 35.51,82.40 |q 11509 |notravel
step
talk "Silvermoon" Harry##24539
|tip Inside the tent.
turnin Street "Cred"##11509 |goto 35.09,80.94
accept "Scoodles"##11510 |goto 35.09,80.94
step
talk Handsome Terry##24537
accept Forgotten Treasure##11434 |goto 35.60,80.22
step
Board the ship |goto 37.21,78.96 < 10 |only if walking
talk Scuttle Frostprow##24784
accept Swabbin' Soap##11469 |goto 37.75,79.58
step
kill "Scoodles"##24899
|tip It looks like an orca that swims in the water around this area.
collect Sin'dorei Scrying Crystal##34235 |q 11510/1 |goto 38.85,84.12
step
use the Fish Bladder##34076
|tip This will allow you to breathe underwater for 3 minutes.
Gain Water Breathing |havebuff Water Breathing##44235 |q 11434
step
Swim through the small window underwater |goto 38.15,84.45 < 7 |walk
click Eagle Figurine##186886
|tip It looks like a small grey and blue stone bird statue.
|tip Underwater, inside the ship.
collect Eagle Figurine##34070 |q 11434/2 |goto 37.77,84.62
step
click Amani Vase##186885
|tip It looks like a grey stone jar.
|tip Underwater, inside the broken boat.
collect Amani Vase##34069 |q 11434/1 |goto 37.15,85.49
step
talk Handsome Terry##24537
turnin Forgotten Treasure##11434 |goto 35.60,80.22
accept The Fragrance of Money##11455 |goto 35.60,80.22
step
talk Taruk##24541
accept Gambling Debt##11464 |goto 36.32,80.48
step
talk "Silvermoon" Harry##24539
|tip Inside the tent.
turnin "Scoodles"##11510 |goto 35.09,80.94
accept The Staff of Storm's Fury##11511 |goto 35.09,80.94
accept The Frozen Heart of Isuldof##11512 |goto 35.09,80.94
accept The Lost Shield of the Aesirites##11519 |goto 35.09,80.94
accept The Ancient Armor of the Kvaldir##11567 |goto 35.09,80.94
step
talk "Silvermoon" Harry##24539
|tip Inside the tent.
Tell him _"Taruk sent me to collect what you owe."_
kill "Silvermoon" Harry##24539
|tip Don't kill him, just get him to low health.
|tip You will eventually be able to talk to him again.
talk "Silvermoon" Harry##24539
Tell him _"Pay up, Harry!"_
collect "Silvermoon" Harry's Debt##34115 |q 11464/1 |goto 35.09,80.94
step
talk Taruk##24541
turnin Gambling Debt##11464 |goto 36.32,80.48
accept Jack Likes His Drink##11466 |goto 36.32,80.48
step
Enter the building |goto 35.28,80.22 < 10 |walk
talk Olga, the Scalawag Wench##24639
|tip Inside the building.
Tell her _"I'd like to buy Jack a drink. Perhaps something... extra strong."_
Click Here After You Buy Jack Adams a Drink |confirm |goto 35.31,79.59 |q 11466
step
Watch the dialogue
|tip Jack Adams will pass out on the table.
|tip Inside the building.
talk Jack Adams##24788
Choose _<Discreetly search the pirate's pockets for Taruk's payment.>_
collect Jack Adams' Debt##34116 |q 11466/1 |goto 35.49,79.38
step
Leave the building |goto 35.28,80.22 < 10 |walk |only if subzone("Scalawag Point") and _G.IsIndoors()
talk Taruk##24541
turnin Jack Likes His Drink##11466 |goto 36.32,80.48
accept Dead Man's Debt##11467 |goto 36.32,80.48
step
Follow the road to leave Scalawag Point |goto 36.51,77.46 < 40 |only if walking and subzone("Scalawag Point")
kill Rabid Brown Bear##24633+
|tip They look like brown bears.
|tip You can find them all around the Garvan's Reef area.
collect 4 Bear Musk##34084 |q 11455/1 |goto 34.09,77.91
step
kill Big Roy##24785
|tip He looks like a big seal that swims in the water around this area.
collect Big Roy's Blubber##34122 |q 11469/1 |goto 31.40,78.62
step
talk Handsome Terry##24537
turnin The Fragrance of Money##11455 |goto 35.60,80.22
accept A Traitor Among Us##11473 |goto 35.60,80.22
step
talk Zeh'gehn##24525
turnin A Traitor Among Us##11473 |goto 35.56,80.63
accept Zeh'gehn Sez##11459 |goto 35.56,80.63
step
talk Handsome Terry##24537
turnin Zeh'gehn Sez##11459 |goto 35.60,80.22
accept A Carver and a Croaker##11476 |goto 35.60,80.22
step
talk "Silvermoon" Harry##24539
|tip Inside the tent.
buy Shiny Knife##35813 |n
collect Shiny Knife##35813 |q 11476/2 |goto 35.1,80.9
step
clicknpc Scalawag Frog##26503
|tip They look like blue and green frogs that hop around on the ground around this area.
collect Scalawag Frog##35803 |q 11476/1 |goto 35.56,81.81
step
talk Zeh'gehn##24525
turnin A Carver and a Croaker##11476 |goto 35.56,80.63
step
Watch the dialogue
talk Zeh'gehn##24525
accept "Crowleg" Dan##11479 |goto 35.56,80.63
step
Board the ship |goto 35.85,82.26 < 10 |only if walking
talk "Crowleg" Dan##24713
Tell him _"Ummm... the frog says you're a traitor, "matey.""_
kill "Crowleg" Dan##24713 |q 11479/1 |goto 35.95,83.60
step
talk Handsome Terry##24537
turnin "Crowleg" Dan##11479 |goto 35.60,80.22
accept Meet Number Two##11480 |goto 35.60,80.22
step
Enter the building |goto 35.27,80.21 < 10 |walk
talk Annie Bonn##24741
|tip She walks around this area.
|tip Upstairs inside the building.
turnin Meet Number Two##11480 |goto 35.44,79.42
accept The Jig is Up##11471 |goto 35.44,79.42
step
Leave the building |goto 35.27,80.21 < 10 |walk |only if subzone("Scalawag Point") and _G.IsIndoors()
Board the ship |goto 37.21,78.96 < 10 |only if walking
talk Scuttle Frostprow##24784
turnin Swabbin' Soap##11469 |goto 37.75,79.58
step
talk Captain Ellis##24910
|tip He's on the top deck of a pirate ship that sails around this area.
|tip Board the ship when it stops at this location.
turnin The Lost Shield of the Aesirites##11519 |goto 37.85,74.79
accept Mutiny on the Mercy##11527 |goto 37.85,74.79
step
_Downstairs Inside the Ship:_
kill Mutinous Sea Dog##25026+
|tip Downstairs, on the bottom deck, inside the pirate ship that sails around this area.
collect 5 Barrel of Blasting Powder##34387 |q 11527/1
step
_On the Ship Desk:_
talk Captain Ellis##24910
|tip He's on the top deck of a pirate ship that sails around this area.
turnin Mutiny on the Mercy##11527
accept Sorlof's Booty##11529
step
clicknpc The Big Gun##24992
|tip At the front of the ship, on the top deck of the pirate ship that sails around this area.
|tip Keep clicking it repeatedly until Sorlof is dead on the shore.
kill Sorlof##24914
|tip He looks like a large tree that walks along the shore around this area.
click Sorlof's Booty##187238
|tip It looks like a yellow pile of gold that appears on the ground after Sorlof dies.
|tip Jump off the ship to loot it.
collect Sorlof's Booty##34468 |q 11529/1
step
Enter the cave |goto 33.57,75.64 < 10 |walk
kill "Mad" Jonah Sterling##24742
|tip He looks like a human wearing a red coat.
|tip He walks around this small area inside the cave.
|tip He eventually runs away and gets eaten by a large white bear on the bottom level of the cave.
|tip He is a level 70 elite enemy, but you should be able to kill him at this level.
|tip If you have trouble, try to find someone to help you, or skip the quest.
Click Here After Killing "Mad" Jonah Sterling |confirm |goto 33.78,78.02 |q 11471
step
kill Hozzer##24547
|tip He looks like a large white bear.
|tip Downstairs inside the cave.
|tip He is a level 71 elite enemy, but you should be able to kill him at this level.
|tip If you have trouble, try to find someone to help you, or skip the quest.
collect Jonah Sterling's Spyglass##34128 |q 11471/1 |goto 33.39,78.30
step
Follow the path up |goto 32.99,78.18 < 10 |walk
click The Frozen Heart of Isuldof##187032
|tip Downstairs inside the cave.
collect The Frozen Heart of Isuldof##34237 |q 11512/1 |goto 32.34,78.68
step
Follow the path back up and leave the cave |goto 33.57,75.64 < 10 |walk |only if subzone("Garvan's Reef") and _G.IsIndoors()
Follow the path up |goto 28.85,60.99 < 30 |only if walking
Cross the hanging bridge |goto 29.83,60.87 < 10 |only if walking
click Dirt Mound##186944
Watch the dialogue
Kill the enemies that attack
kill Black Conrad's Ghost##24790
collect Black Conrad's Treasure##34118 |q 11467/1 |goto 32.69,60.21
step
kill 8 Crazed Northsea Slaver##24676 |q 11458/1 |goto 33.71,63.84
step
Board the ship while being careful to avoid Abdul the Insane |goto 34.94,63.68 < 10 |only if walking
Wait for Adbul the Insane to walk to the top deck of the ship, then enter the ship here |goto 35.39,64.68 < 7 |walk
click The Staff of Storm's Fury##187033
|tip Downstairs inside the ship, on the bottom level.
collect The Staff of Storm's Fury##34236 |q 11511/1 |goto 35.26,64.84
step
use the Hearthstone##6948
Hearth to Kamagua |complete subzone("Kamagua") |q 11511
|only if subzone("Iskaal")
step
Enter the building |goto 25.09,57.20 < 15 |walk
talk Elder Atuik##24755
|tip Inside the building.
turnin Avenge Iskaal##11458 |goto 25.02,56.97
step
talk Anuniaq##24810
accept Travel to Moa'ki Harbor##12117 |goto 24.59,58.86 |or
accept Travel to Moa'ki Harbor##12118 |goto 24.59,58.86 |or
step
Enter the building |goto 35.27,80.21 < 10 |walk
talk Annie Bonn##24741
|tip Upstairs inside the building.
turnin The Jig is Up##11471 |goto 35.41,79.43
step
Leave the building |goto 35.27,80.21 < 10 |walk |only if subzone("Scalawag Point") and _G.IsIndoors()
talk Taruk##24541
turnin Dead Man's Debt##11467 |goto 36.32,80.48
step
talk Alanya##27933
Tell her _"Harry said I could take his bomber to Bael'gun's. I'm ready to go!"_
Begin Flying to Bael'gun's |invehicle |goto 36.09,81.60 |q 11567
step
Fly to Bael'gun's |outvehicle |goto 80.87,75.10 |q 11567 |notravel
step
Enter the ship |goto 82.26,74.77 < 10 |walk
click The Ancient Armor of the Kvaldir##187381
|tip It looks like a floating metal chest armor.
|tip Downstairs inside the ship.
collect The Ancient Armor of the Kvaldir##34239 |q 11567/1 |goto 81.78,73.91
step
clicknpc Harry's Bomber##28277
Choose _<Get in the bomber and return to Scalawag Point.>_
Begin Flying Back to Scalawag Point |invehicle |goto 80.89,75.10 |q 11567 |or
step
Return to Scalawag Point |outvehicle |goto 36.07,81.68 |q 11567 |notravel
step
talk Captain Ellis##24910
|tip He's on the top deck of a pirate ship that sails around this area.
|tip Board the ship when it stops at this location.
turnin Sorlof's Booty##11529 |goto 37.85,74.79
accept The Shield of the Aesirites##11530 |goto 37.85,74.79
step
Ride the lift up |goto 42.07,67.71 < 15 |only if walking and (subzone("Scalawag Point") or subzone("Garvan's Reef") or subzone("Sorlof's Strand"))
talk Orfus of Kamagua##23804
turnin The Shield of the Aesirites##11530 |goto 40.29,60.25
turnin The Staff of Storm's Fury##11511 |goto 40.29,60.25
turnin The Frozen Heart of Isuldof##11512 |goto 40.29,60.25
turnin The Ancient Armor of the Kvaldir##11567 |goto 40.29,60.25
accept A Return to Resting##11568 |goto 40.29,60.25
step
Enter New Agamand |goto 51.30,67.81 < 30 |only if walking and not subzone("New Agamand")
talk Plaguebringer Tillinghast##24157
turnin Draconis Gastritis##11280 |goto 53.07,66.93
step
talk "Hacksaw" Jenny##24252
turnin Warning: Some Assembly Required##11310 |goto 53.68,65.21
step
use the Bundle of Vrykul Artifacts##34624
Return the Shield of Aesirites |q 11568/1 |goto 57.64,77.41
step
use the Bundle of Vrykul Artifacts##34624
Return the Staff of Storm's Fury |q 11568/2 |goto 59.30,77.20
step
use the Bundle of Vrykul Artifacts##34624
Return the Frozen Heart of Isuldof |q 11568/3 |goto 59.78,79.40
step
use the Bundle of Vrykul Artifacts##34624
Return the Ancient Armor of the Kvaldir |q 11568/4 |goto 61.89,80.14
step
talk Orfus of Kamagua##23804
turnin A Return to Resting##11568 |goto 40.29,60.25
accept Return to Atuik##11572 |goto 40.29,60.25
step
Ride the lift |goto Howling Fjord/0 40.07,60.19 < 10 |only if walking
Enter the building |goto 25.09,57.20 < 15 |walk
talk Elder Atuik##24755
|tip Inside the building.
turnin Return to Atuik##11572 |goto 25.02,56.97
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Northrend (70-80)\\Borean Tundra (70-72)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Borean",
condition_suggested=function() return level >= 70 and level <= 72 and not completedq(12728) end,
next="Leveling Guides\\Northrend (70-80)\\Dragonblight (72-74)",
},[[
step
talk Warsong Recruitment Officer##25273
|tip Inside the building, on the top floor.
accept Hellscream's Vigil##11585 |goto Borean Tundra 41.62,53.99
step
talk Garrosh Hellscream##25237
|tip He walks around this area.
|tip Inside the building, on the bottom floor.
turnin Hellscream's Vigil##11585 |goto 41.35,53.58
step
talk High Overlord Saurfang##25256
|tip Inside the building, on the bottom floor.
accept The Defense of Warsong Hold##11596 |goto 41.36,53.70
step
talk Williamson##25278
|tip Inside the building, on the bottom floor.
home Warsong Hold |goto 41.92,54.48
step
Leave the building |goto 42.73,55.83 < 20 |walk |only if subzone("Warsong Hold") and _G.IsIndoors()
Enter the building |goto 43.28,55.07 < 10 |walk
talk Overlord Razgor##25279
|tip Inside the building.
turnin The Defense of Warsong Hold##11596 |goto 43.19,54.97
accept Taking Back Mightstone Quarry##11598 |goto 43.19,54.97
step
talk Quartermaster Holgoth##25327
accept Patience is a Virtue that We Don't Need##11606 |goto 43.33,55.36
step
talk Foreman Mortuus##25280
|tip He walks around this area.
accept Taken by the Scourge##11611 |goto 42.02,56.13
stickystart "Collect_Warsong_Munitions"
stickystart "Slay_Nerubar"
step
kill Nerub'ar Victim##25284+
|tip They look like white squirming cocoons on the ground.
|tip You can find them all around the Mightstone Quarry area.
|tip The Mightstone Quarry wraps around the entire building.
Free #5# Warsong Peons |q 11611/1 |goto 40.89,58.21
step
label "Collect_Warsong_Munitions"
click Warsong Munitions Crate##187661+
|tip They look like wooden crates on the ground.
|tip You can find them all around the Mightstone Quarry area. |notinsticky
|tip The Mightstone Quarry wraps around the entire building. |notinsticky
collect 15 Warsong Munitions##34709 |q 11606/1 |goto 40.89,58.21
step
label "Slay_Nerubar"
Kill Nerub'ar enemies around this area
|tip They look like insects.
|tip You can find them all around the Mightstone Quarry area. |notinsticky
|tip The Mightstone Quarry wraps around the entire building. |notinsticky
Slay #15# Nerub'ar |q 11598/1 |goto 40.89,58.21
step
talk Foreman Mortuus##25280
|tip He walks around this area.
turnin Taken by the Scourge##11611 |goto 42.02,56.13
step
talk Quartermaster Holgoth##25327
turnin Patience is a Virtue that We Don't Need##11606 |goto 43.33,55.36
accept Bury Those Cockroaches!##11608 |goto 43.33,55.36
step
Enter the building |goto 43.28,55.07 < 10 |walk
talk Overlord Razgor##25279
|tip Inside the building.
turnin Taking Back Mightstone Quarry##11598 |goto 43.19,54.97
accept Cutting Off the Source##11602 |goto 43.19,54.97
step
talk Shadowstalker Barthus##25394
|tip Inside the building.
accept Untold Truths##11614 |goto 43.20,55.05
step
Enter the building |goto 42.73,55.84 < 15 |walk |only if not (subzone("Warsong Hold") and _G.IsIndoors())
talk Endorah##25247
|tip Inside the building, on the bottom floor.
accept Too Close For Comfort##11574 |goto 41.73,54.73
step
talk Ambassador Talonga##25978
|tip Inside the building, on the bottom floor.
accept Ride to Taunka'le Village##11888 |goto 41.70,54.59
step
talk Sauranok the Mystic##25272
|tip He walks around this area.
|tip Inside the building, on the bottom floor.
accept To Bor'gorok Outpost, Quickly!##12486 |goto 41.36,53.23
stickystart "Destroy_Nerubar_Egg_Sacs"
step
Leave the building |goto 42.73,55.83 < 20 |walk |only if subzone("Warsong Hold") and _G.IsIndoors()
use Seaforium Depth Charge Bundle##34710
Watch the dialogue
|tip A countdown will take place before the bomb explodes.
Destroy the East Nerub'ar Sinkhole |q 11608/2 |goto 44.23,56.76
step
use Seaforium Depth Charge Bundle##34710
Watch the dialogue
|tip A countdown will take place before the bomb explodes.
Destroy the South Nerub'ar Sinkhole |q 11608/1 |goto 41.62,58.29
step
use Seaforium Depth Charge Bundle##34710
|tip Outside, behind the building.
|tip Follow the path around the building to travel here.
Watch the dialogue
|tip A countdown will take place before the bomb explodes.
Destroy the West Nerub'ar Sinkhole |q 11608/3 |goto 39.81,52.54
step
talk Shadowstalker Luther##25328
|tip Outside, behind the building.
turnin Untold Truths##11614 |goto 40.07,52.06
accept Nerub'ar Secrets##11615 |goto 40.07,52.06
step
use Seaforium Depth Charge Bundle##34710
|tip Outside, behind the building.
Watch the dialogue
|tip A countdown will take place before the bomb explodes.
Destroy the North Nerub'ar Sinkhole |q 11608/4 |goto 41.35,50.36
step
label "Destroy_Nerubar_Egg_Sacs"
click Nerub'ar Egg Sac##187655+
|tip They look like white eggs sitting upright on small brown stands.
|tip They can only be found on the metal and wooden platforms along the perimeter of Mightstone Quarry.
|tip Enemies may spawn when you break the eggs.
Destroy #10# Nerub'ar Egg Sacs |q 11602/1 |goto 40.04,50.86
You can find more around: |notinsticky
[39.12,55.10]
[40.08,58.19]
[42.46,61.67]
[43.90,59.12]
step
talk Quartermaster Holgoth##25327
|tip Outside, in front of the building.
turnin Bury Those Cockroaches!##11608 |goto 43.33,55.36
step
Enter the building |goto 43.28,55.07 < 10 |walk
talk Overlord Razgor##25279
|tip Inside the building.
turnin Cutting Off the Source##11602 |goto 43.19,54.97
accept Wind Master To'bor##11634 |goto 43.19,54.97
step
talk Shadowstalker Barthus##25394
|tip Inside the building.
turnin Nerub'ar Secrets##11615 |goto 43.20,55.05
accept Message to Hellscream##11616 |goto 43.20,55.05
step
Enter the building |goto 42.73,55.84 < 15 |walk |only if not (subzone("Warsong Hold") and _G.IsIndoors())
talk Garrosh Hellscream##25237
|tip Inside the building, on the bottom floor.
turnin Message to Hellscream##11616 |goto 41.35,53.59
accept Reinforcements Incoming...##11618 |goto 41.35,53.59
step
Run up the ramp and ride the elevator up |goto 40.71,52.54 < 15 |only if walking
talk Turida Coldwind##25288
|tip Outside, on top of the building.
fpath Warsong Hold |goto 40.36,51.40
step
talk Wind Master To'bor##25289
|tip He walks around this area.
|tip Outside, on top of the building.
turnin Wind Master To'bor##11634 |goto 42.48,55.21
accept Magic Carpet Ride##11636 |goto 42.48,55.21
step
talk Yanni##25459
|tip Outside, on top of the building.
Tell him _"Send me to Garrosh's Landing, Yanni."_
Begin Flying to Garrosh's Landing |invehicle |goto 42.29,55.68 |q 11636
step
Fly to Garrosh's Landing |outvehicle |goto 32.13,54.64 |q 11636 |notravel
step
talk Gorge the Corpsegrinder##25329
turnin Magic Carpet Ride##11636 |goto 32.25,54.07
accept Tank Ain't Gonna Fix Itself##11642 |goto 32.25,54.07
step
talk Waltor of Pal'ea##25476
accept Into the Mist##11655 |goto 32.34,54.27
accept Horn of the Ancient Mariner##11660 |goto 32.34,54.27
step
talk Mobu##25475
|tip He walks around this area.
turnin Tank Ain't Gonna Fix Itself##11642 |goto 32.10,54.21
accept Mobu's Pneumatic Tank Transjigamarig##11643 |goto 32.10,54.21
accept Super Strong Metal Plates!##11644 |goto 32.10,54.21
stickystart "Collect_Super_Strong_Metal_Plates"
stickystart "Collect_Tuskarr_Relics"
stickystart "Collect_Horn_of_the_Ancient_Mariner"
step
Enter the building |goto 32.20,48.85 < 10 |walk
click Pneumatic Tank Transjigamarig##187683
|tip Inside the building.
collect Pneumatic Tank Transjigamarig##34785 |q 11643/1 |goto 32.38,49.16
step
Enter the building |goto 31.73,51.88 < 10 |walk
talk Mootoo the Younger##25504
|tip Upstairs inside the building.
|tip This is an escort quest.
|tip If she's not here, someone may be escorting her.
|tip Wait until she respawns.
accept Escaping the Mist##11664 |goto Borean Tundra/0 31.88,52.32
step
Watch the dialogue
|tip Follow Mootoo the Younger and protect her as she walks.
|tip She eventually walks to this location.
Save Mootoo |q 11664/1 |goto 31.63,54.38
step
talk Elder Mootoo##25503
turnin Escaping the Mist##11664 |goto 31.68,54.37
step
label "Collect_Super_Strong_Metal_Plates"
click Super Strong Metal Plate##187687+
|tip They look like scraps of tan metal objects on the ground.
|tip You can find them all around the Garrosh's Landing area. |notinsticky
collect 10 Super Strong Metal Plate##34786 |q 11644/1 |goto 30.67,50.99
step
label "Collect_Tuskarr_Relics"
Kill Kvaldir enemies around this area
|tip They look like large humans.
|tip You can find them all around the Garrosh's Landing area. |notinsticky
collect 8 Tuskarr Relic##34814 |q 11655/1 |goto 30.67,50.99
step
label "Collect_Horn_of_the_Ancient_Mariner"
Kill Kvaldir enemies around this area
|tip They look like large humans.
|tip You can find them all around the Garrosh's Landing area. |notinsticky
collect Horn of the Ancient Mariner##34813 |q 11660/1 |goto 30.67,50.99
step
talk Mobu##25475
|tip He walks around this area.
turnin Mobu's Pneumatic Tank Transjigamarig##11643 |goto 32.10,54.21
turnin Super Strong Metal Plates!##11644 |goto 32.10,54.21
accept Tanks a lot...##11651 |goto 32.10,54.21
step
talk Gorge the Corpsegrinder##25329
turnin Tanks a lot...##11651 |goto 32.25,54.07
accept The Plains of Nasam##11652 |goto 32.25,54.07
step
talk Waltor of Pal'ea##25476
turnin Into the Mist##11655 |goto 32.34,54.27
accept Burn in Effigy##11656 |goto 32.34,54.27
turnin Horn of the Ancient Mariner##11660 |goto 32.34,54.27
accept Orabus the Helmsman##11661 |goto 32.34,54.27
step
use Tuskarr Torch##34830
Destroy Bor's Anvil |q 11656/4 |goto 30.00,61.67
step
use Horn of the Ancient Mariner##34844
Watch the dialogue
|tip A boat approaches and stops near you.
|tip Enemies will attack one at a time, then Orabus the Helmsman will attack.
kill Kvaldir Crewman##32577+
kill Orabus the Helmsman##32576 |q 11661/1 |goto 26.76,54.67
step
use the Tuskarr Torch##34830
|tip At the front of the ship.
Destroy Bor's Hammer |q 11656/3 |goto 29.78,52.57
step
use the Tuskarr Torch##34830
|tip At the front of the ship.
Destroy The Kur Drakkar |q 11656/2 |goto 31.00,48.94
step
use the Tuskarr Torch##34830
|tip At the front of the ship.
Destroy The Serpent's Maw |q 11656/1 |goto 31.69,48.32
step
talk Waltor of Pal'ea##25476
turnin Burn in Effigy##11656 |goto 32.34,54.27
turnin Orabus the Helmsman##11661 |goto 32.34,54.27
accept Seek Out Karuk!##11662 |goto 32.34,54.27
step
clicknpc Horde Siege Tank##25334+
|tip They look like horde wooden artillery machines.
|tip Click any of them.
Control a Horde Siege Tank |invehicle |goto 31.92,54.40 |q 11652
step
_NOTE:_
In the Next Steps:
|tip You will use the siege tank abilities to kill enemies and rescue allies.
|tip Drive over the red metal Abandoned Fuel Tank barrels to get more mana.
|tip Be careful to not aggro too many enemies at once, or you might lose the siege tank.
|tip If you lose the siege tank, go back a few steps to get another one.
Click to Continue |confirm |q 11652
stickystart "Rescue_Injured_Warsong_Soldiers"
stickystart "Obliterate_Scourge_Units"
step
Enter the Plains of Nasam |goto 33.51,56.87 < 40 |only if walking and not subzone("Plains of Nasam")
Identify the Scourge Leader |q 11652/3 |goto 36.15,63.75
step
label "Rescue_Injured_Warsong_Soldiers"
Rescue #3# Injured Warsong Soldiers |q 11652/2 |goto 36.15,63.75
|tip Use the "Rescue Injured Soldier" ability on your action bar on Injured Warsong Mages.
|tip They look like friendly Horde NPCs of various races.
|tip They are usually in the outskirts surrounding the undead enemies.
|tip You can find them all around the Plains of Nasam area. |notinsticky
step
label "Obliterate_Scourge_Units"
Kill enemies around this area
|tip They look like undead enemies.
|tip Use the abilities on your action bar.
|tip You can find them all around the Plains of Nasam area. |notinsticky
Obliterate #100# Scourge Units |q 11652/1 |goto 36.15,63.75
step
talk Karuk##25435
turnin Seek Out Karuk!##11662 |goto 47.13,75.48
accept Karuk's Oath##11613 |goto 47.13,75.48
stickystart "Kill_Skadir_Raiders"
stickystart "Kill_Skadir_Longboatsmen"
step
kill Riplash Myrmidon##24576
|tip Kill the cheering npc's nearby as well.
talk Captured Tuskarr Prisoner##25636
|tip Shortly after killing the attacking Myrmidon, he will have dialogue followed by a quest.
|tip The window to which you can accept the quest is short, so be ready.
|tip If he's not here, wait for him to respawn, or skip the quest.
|tip The quest becomes available to accept a few minutes after he spawns.
accept Cruelty of the Kvaldir##12471 |goto 44.09,77.90
step
label "Kill_Skadir_Raiders"
kill 6 Skadir Raider##25522 |q 11613/1 |goto 46.70,78.05
|tip They look like large green humans holding spears.
|tip You can find them all around the Riplash Strand area. |notinsticky
step
label "Kill_Skadir_Longboatsmen"
kill 5 Skadir Longboatsman##25521 |q 11613/2 |goto 46.70,78.05
|tip They look like large green humans holding wooden mallets.
|tip You can find them all around the Riplash Strand area. |notinsticky
step
talk Karuk##25435
turnin Karuk's Oath##11613 |goto 47.13,75.48
accept Gamel the Cruel##11619 |goto 47.13,75.48
turnin Cruelty of the Kvaldir##12471 |goto 47.13,75.48
step
Enter the cave |goto 46.15,79.32 < 20 |walk
kill Gamel the Cruel##26449 |q 11619/1 |goto 46.42,78.23
|tip Inside the small cave.
step
Leave the cave |goto 46.15,79.32 < 20 |walk |only if subzone("Riplash Strand") and _G.IsIndoors()
talk Karuk##25435
turnin Gamel the Cruel##11619 |goto 47.13,75.48
accept A Father's Words##11620 |goto 47.13,75.48
step
talk Veehja##25450
turnin A Father's Words##11620 |goto 43.61,80.52
step
use the Hearthstone##6948
Hearth to Warsong Hold |complete subzone("Warsong Hold") |q 11652
|only if (subzone("Shrine of Scales") or subzone("Riplash Strand"))
step
talk Garrosh Hellscream##25237
|tip He walks around this area.
|tip Inside the building, on the bottom floor.
turnin The Plains of Nasam##11652 |goto 41.35,53.59
step
Leave the building |goto 39.88,55.54 < 15 |walk |only if subzone("Warsong Hold") and _G.IsIndoors()
Run up the ramp to leave Mightstone Quarry |goto 39.18,55.53 < 10 |only if walking and (subzone("Warsong Hold") or subzone("Mightstone Quarry"))
talk Shadowstalker Ickoris##25437
|tip He walks around this area.
turnin Reinforcements Incoming...##11618 |goto 38.08,52.55
accept The Warsong Farms##11686 |goto 38.08,52.55
step
talk Shadowstalker Canarius##25438
accept Merciful Freedom##11676 |goto 37.92,52.58
step
talk Farmer Torp##25607
accept Damned Filthy Swine##11688 |goto 37.91,52.33
stickystart "Free_Scourge_Prisoners"
stickystart "Kill_Unliving_Swine"
step
Scout the Warsong Slaughterhouse |q 11686/3 |goto 39.65,48.15
|tip Be careful to avoid the elite enemy nearby.
step
Scout Torp's Farm |q 11686/2 |goto 36.43,52.20
step
Scout the Warsong Granary |q 11686/1 |goto 34.82,54.83
step
label "Free_Scourge_Prisoners"
Kill enemies around this area
|tip The Unliving Swine boars will not drop the cage keys.
collect Scourge Cage Key##34908+ |n
click Scourge Cage##45807+
|tip They look like tall metal cages with large white skulls on top of them around this area.
Free #5# Scourge Prisoners |q 11676/1 |goto 36.20,49.53
step
label "Kill_Unliving_Swine"
kill 10 Unliving Swine##25600 |q 11688/1 |goto 35.75,50.85
|tip They look like grey boars around this area.
step
talk Farmer Torp##25607
turnin Damned Filthy Swine##11688 |goto 37.91,52.33
accept Bring 'Em Back Alive##11690 |goto 37.91,52.33
step
talk Shadowstalker Canarius##25438
turnin Merciful Freedom##11676 |goto 37.92,52.58
step
talk Shadowstalker Ickoris##25437
|tip He walks around this area.
turnin The Warsong Farms##11686 |goto 38.08,52.55
accept Get to Getry##11703 |goto 38.08,52.55
step
use Torp's Kodo Snaffle##34954
|tip Use it on an Infected Kodo Beasts.
|tip They look like large green dinosaurs laying on the ground around this area.
Return the Infected Kodo Beasts
|tip Bring the kodos back to Farmer Torp, and use the "Deliver Kodo" ability on your action bar.
|tip Repeat this process.
Rescue #8# Kodos |q 11690/1 |goto 36.76,50.68
Bring the Kodos to [37.91,52.33]
step
talk Farmer Torp##25607
turnin Bring 'Em Back Alive##11690 |goto 37.91,52.33
step
talk Shadowstalker Getry##25729
|tip At the top of the tower.
turnin Get to Getry##11703 |goto 34.59,46.42
accept Foolish Endeavors##11705 |goto 34.59,46.42
step
Watch the dialogue
|tip Follow Shadowstalker Getry as he walks.
|tip You will become stunned.
kill Varidus the Flenser##25618
|tip Your allies will help you fight.
Defeat Varidus the Flenser |q 11705/1 |goto 35.25,46.25
step
Enter Warsong Hold |goto 39.88,55.54 < 15 |walk |only if not (subzone("Warsong Hold") and _G.IsIndoors())
talk Garrosh Hellscream##25237
|tip He walks around this area.
|tip Inside the building, on the bottom floor.
turnin Foolish Endeavors##11705 |goto 41.35,53.59
accept Nork Bloodfrenzy's Charge##11709 |goto 41.35,53.59
step
Leave the building |goto 42.73,55.85 < 15 |walk |only if subzone("Warsong Hold") and _G.IsIndoors()
talk Warden Nork Bloodfrenzy##25379
turnin Nork Bloodfrenzy's Charge##11709 |goto 43.72,54.43
accept Coward Delivery... Under 30 Minutes or it's Free##11711 |goto 43.72,54.43
step
Run up the ramp to leave Mightstone Quarry |goto 43.84,53.15 < 10 |only if walking and subzone("Mightstone Quarry")
talk Bloodmage Laurith##25381
|tip Make sure the Alliance Deserter follows you to this location.
|tip Don't get too far away from him, or you will lose him and have to restart the quest.
accept The Wondrous Bloodspore##11716 |goto 52.07,52.49
stickystart "Collect_Bloodspore_Carpels"
step
use Warsong Flare Gun##34971
|tip Make sure the Alliance Deserter follows you to this location.
|tip Don't get too far away from him, or you will lose him and have to restart the quest.
Watch the dialogue
Deliver the Alliance Deserter |q 11711/1 |goto 55.31,50.80
step
talk Scout Tungok##25440
|tip He walks around this area riding a grey and white wolf.
turnin Coward Delivery... Under 30 Minutes or it's Free##11711 |goto 52.55,52.19
accept Vermin Extermination##11714 |goto 52.55,52.19
stickystart "Kill_Bloodspore_Roasters"
stickystart "Kill_Bloodspore_Firestarters"
stickystart "Kill_Bloodspore_Harvesters"
step
label "Collect_Bloodspore_Carpels"
click Bloodspore Carpel##187902+
|tip They look like red flowery plant stalks with a bright red bulb at the top of them.
|tip You can find them all around the Bloodspore Plains area. |notinsticky
collect 10 Bloodspore Carpel##34974 |q 11716/1 |goto 51.76,51.93
You can find more around [51.54,61.35]
step
talk Bloodmage Laurith##25381
turnin The Wondrous Bloodspore##11716 |goto 52.07,52.49
accept Pollen from the Source##11717 |goto 52.07,52.49
step
kill Bloodspore Moth##25464+
|tip They look like large flying insects.
|tip You can find them all around the Bloodspore Plains area. |notinsticky
collect 5 Bloodspore Moth Pollen##34976 |q 11717/1 |goto 51.76,51.93
You can find more around [51.54,61.35]
step
label "Kill_Bloodspore_Roasters"
kill 2 Bloodspore Roaster##25468 |q 11714/3 |goto 51.76,51.93
|tip They look like blue kobolds.
|tip You can find them all around the Bloodspore Plains area. |notinsticky
You can find more around [51.54,61.35]
step
label "Kill_Bloodspore_Firestarters"
kill 5 Bloodspore Firestarter##25470 |q 11714/2 |goto 51.76,51.93
|tip They look like smaller kobolds with orange glowing fists.
|tip You can find them all around the Bloodspore Plains area. |notinsticky
You can find more around [51.54,61.35]
step
label "Kill_Bloodspore_Harvesters"
kill 8 Bloodspore Harvester##25467 |q 11714/1 |goto 51.76,51.93
|tip They look like slightly larger kobolds.
|tip You can find them all around the Bloodspore Plains area. |notinsticky
You can find more around [51.54,61.35]
step
talk Bloodmage Laurith##25381
turnin Pollen from the Source##11717 |goto 52.07,52.49
accept A Suitable Test Subject##11719 |goto 52.07,52.49
step
use Pollinated Bloodspore Flower##34978
Watch the dialogue
|tip You will receive a buff.
|tip The quest goal will complete when the buff expires.
Use the Bloodspore Flower |q 11719/1 |goto 52.07,52.49
step
talk Bloodmage Laurith##25381
turnin A Suitable Test Subject##11719 |goto 52.07,52.49
accept The Invasion of Gammoth##11720 |goto 52.07,52.49
step
talk Primal Mighthorn##25380
turnin The Invasion of Gammoth##11720 |goto 52.18,52.82
accept Gammothra the Tormentor##11721 |goto 52.18,52.82
step
talk Scout Tungok##25440
|tip He walks around this area riding a grey and white wolf.
turnin Vermin Extermination##11714 |goto 52.55,52.19
step
Follow the path up and around above the cave |goto  47.55,54.84 < 15 |only if walking and not (subzone("Gammoth") and _G.IsIndoors())
click Massive Glowing Egg##187905
accept Massive Moth Omelet?##11724 |goto 48.55,59.03
step
_In The Next Step:_
Use the Pouch of Crushed Bloodspore
|tip You can use the pouch on any large blue magnataur elites inside the cave.
|tip They will be become non-elite.
Click Here to Continue |confirm |q 11721
step
Jump down and enter the cave |goto 49.36,58.40 < 20 |walk |only if not (subzone("Gammoth") and _G.IsIndoors())
use Pouch of Crushed Bloodspore##34979
|tip Use it on Gammothra the Tormentor.
|tip He look like a large blue magnataur that walks around this area.
|tip Inside the cave, on the bottom floor.
|tip Follow the spiral path down, or jump down the center of the cave into the water, to get to this location.
kill Gammothra the Tormentor##25789
|tip He will become non-elite.
collect Head of Gammothra##34980 |q 11721/1 |goto 46.08,62.19
step
Follow the spiral path up |goto 46.13,60.52 < 10 |walk |only if subzone("Gammoth") and _G.IsIndoors()
Continue up the spiral path and leave the cave |goto 49.46,58.35 < 40 |walk |only if subzone("Gammoth") and _G.IsIndoors()
talk Primal Mighthorn##25380
turnin Gammothra the Tormentor##11721 |goto 52.18,52.82
accept Trophies of Gammoth##11722 |goto 52.18,52.82
step
talk Bloodmage Laurith##25381
turnin Massive Moth Omelet?##11724 |goto 52.07,52.49
step
use the Hearthstone##6948
Hearth to Warsong Hold |complete subzone("Warsong Hold") |q 11722
|only if subzone("Bloodspore Plains")
step
talk Garrosh Hellscream##25237
|tip He walks around this area.
|tip Inside the building, on the bottom floor.
turnin Trophies of Gammoth##11722 |goto 41.35,53.59
accept Hellscream's Champion##11916 |goto 41.35,53.59
step
talk Durkot Wolfbrother##26044
|tip He walks around this area.
|tip Inside the building, on the bottom floor.
Tell him _"I am ready to leave, Durkot."_
Begin Traveling to Taunka'le Village |invehicle |goto 40.23,55.09 |q 11916
step
Watch the dialogue
|tip You will travel automatically.
Travel to Taunka'le Village |outvehicle |goto 77.49,37.84 |q 11916 |notravel
step
talk Omu Spiritbreeze##26847
fpath Taunka'le Village |goto 77.76,37.77
step
talk Sage Earth and Sky##25982
turnin Ride to Taunka'le Village##11888 |goto 77.25,38.47
accept What Are They Up To?##11890 |goto 77.25,38.47
step
talk Greatfather Mahan##24702
accept Scouting the Sinkholes##11684 |goto 77.07,37.82
step
talk Fezzix Geartwist##25849
accept Load'er Up!##11881 |goto 77.49,36.96
step
Enter the building |goto 77.34,37.01 < 10 |walk
talk Greatmother Taiga##25602
|tip Inside the building.
accept Sage Highmesa is Missing##11674 |goto 77.30,36.88
step
Enter the building |goto 76.71,37.33 < 15 |walk
talk Chieftain Wintergale##24703
|tip Outside, on the balcony of the building.
turnin Hellscream's Champion##11916 |goto 75.89,37.25
step
use Map of the Geyser Fields##34920
Mark the Location of the South Sinkhole |q 11684/1 |goto 70.51,37.01
step
use Map of the Geyser Fields##34920
Mark the Location of the Northeast Sinkhole |q 11684/2 |goto 69.88,32.88
step
use Map of the Geyser Fields##34920
Mark the Location of the Northwest Sinkhole |q 11684/3 |goto 66.50,32.84
step
Inspect the Fizzcrank Pumping Station Environs |q 11890/1 |goto 64.68,24.49
step
talk Crashed Recon Pilot##25984
accept Emergency Supplies##11887 |goto 64.03,35.76
step
clicknpc Fizzcrank Recon Pilot##25841+
|tip They look like dead gnomes in black clothing laying on the ground.
|tip They are usually on the white parts of the ground next to water.
|tip You can find them all around the Scalding Pools area.
Choose _Search the body for the pilot's emergency toolkit._
collect 7 Gnomish Emergency Toolkit##35276 |q 11887/1 |goto 62.98,35.75
You can find more around: |notinsticky
[62.39,38.87]
[60.56,36.41]
step
use Jenny's Whistle##35272
|tip Jenny will appear next to you.
|tip She looks like a mule with cargo strapped to her back.
|tip You need to lead her back to safety at Taunka'le Village without her losing cargo.
|tip Be careful to not allow Jenny to get attacked as you travel.
|tip She will follow you as you walk.
Click Here Once Jenny is Following You |confirm |goto 63.49,36.90 |q 11881
step
Watch the dialogue
|tip Make sure Jenny follows you at all times, and protect her as she walks.
|tip Be careful to not allow Jenny to get attacked as you travel.
|tip You need to lead her back to safety at Taunka'le Village without her losing cargo.
|tip Don't get too far away from her, or you'll lose her and have to restart the quest.
Return Jenny to Safety Without Losing Cargo |q 11881/1 |goto 77.52,37.04 |notravel
step
talk Fezzix Geartwist##25849
turnin Load 'er Up!##11881 |goto 77.49,36.96
turnin Emergency Supplies##11887 |goto 77.49,36.96
step
talk Dorain Frosthoof##25983
accept The Power of the Elements##11893 |goto 77.62,36.95
step
talk Greatfather Mahan##24702
turnin Scouting the Sinkholes##11684 |goto 77.07,37.82
accept The Heart of the Elements##11685 |goto 77.07,37.82
step
talk Sage Earth and Sky##25982
turnin What Are They Up To?##11890 |goto 77.25,38.47
accept Master the Storm##11895 |goto 77.25,38.47
step
clicknpc Storm Totem##26048
|tip Inside the building.
|tip An air elemental will appear.
kill Storm Tempest##26045
Master the Storm |q 11895/1 |goto 77.06,38.71
step
talk Sage Earth and Sky##25982
turnin Master the Storm##11895 |goto 77.25,38.47
accept Weakness to Lightning##11896 |goto 77.25,38.47
step
talk Iron Eyes##26104
accept Cleaning Up the Pools##11906 |goto 76.92,37.63
step
Enter the building |goto 77.34,37.01 < 10 |walk
talk Greatmother Taiga##25602
|tip Inside the building.
accept Souls of the Decursed##11899 |goto 77.30,36.88
step
use the Windsoul Totem##35281
|tip This will plant a Windsoul Totem in the ground.
kill Steam Rager##24601+
|tip They look like white ghosts.
|tip Kill them near the Windsoul Totem.
|tip You can find them all around the Steam Springs area.
Collect #10# Energy |q 11893/1 |goto 72.12,31.43
stickystart "Capture_Gnome_Souls"
stickystart "Collect_Fizzcrank_Spare_Parts"
step
use Sage's Lightning Rod##35352
|tip Use it on enemies that look like robots.
|tip You can find them all around the Geyser Fields area.
|tip The gnomes will not count for the quest goal.
Kill enemies around this area
|tip Kill them after using the lightning rod on them.
Weaken and Destroy #15# Robots |q 11896/1 |goto 63.11,21.53
step
label "Capture_Gnome_Souls"
kill Fizzcrank Mechagnome##25814+
|tip They look like small mechanical gnomes.
|tip You can find them all around the Geyser Fields area. |notinsticky
use The Greatmother's Soulcatcher##35401
|tip Use it on their corpses.
Capture #10# Gnome Souls |q 11899/1 |goto 63.11,21.53
step
label "Collect_Fizzcrank_Spare_Parts"
click Fizzcrank Spare Parts##187901+
|tip They look like various shaped metal parts on the ground.
|tip You can find them all around the Geyser Fields area. |notinsticky
collect 15 Fizzcrank Spare Parts##34972 |q 11906/1 |goto 63.11,21.53
step
use the Hearthstone##6948
Hearth to Taunka'le Village |complete subzone("Taunka'le Village") |q 11906
|only if subzone("The Geyser Fields") or subzone("Festering Pools") or subzone("Fizzcrank Pumping Station") or subzone("Mid Point Station")
step
talk Iron Eyes##26104
turnin Cleaning Up the Pools##11906 |goto 76.92,37.63
step
talk Sage Earth and Sky##25982
turnin Weakness to Lightning##11896 |goto 77.25,38.47
accept The Sub-Chieftains##11907 |goto 77.25,38.47
step
Enter the building |goto 77.33,37.00 < 10 |walk
talk Greatmother Taiga##25602
|tip Inside the building.
turnin Souls of the Decursed##11899 |goto 77.30,36.88
accept Defeat the Gearmaster##11909 |goto 77.30,36.88
step
talk Dorain Frosthoof##25983
turnin The Power of the Elements##11893 |goto 77.62,36.95
step
talk Fezzix Geartwist##25849
accept Patching Up##11894 |goto 77.49,36.96
step
kill Marsh Caribou##25680+
|tip They look like brown deer bucks.
|tip You can find them all around the Flood Plains area.
collect 5 Uncured Caribou Hide##35288 |goto 78.11,40.29 |q 11894
You can find more around [78.29,32.61]
step
kill Frozen Elemental##25715+
|tip They look like white rock elementals.
|tip You can find them all around this icy beach area.
collect 5 Elemental Heart##34956 |q 11685/1 |goto 85.57,46.18
step
talk Wind Tamer Barah##24730
turnin The Heart of the Elements##11685 |goto 75.58,35.77
accept The Horn of Elemental Fury##11695 |goto 75.58,35.77
step
_Destroy These Items:_
|tip They are no longer needed.
trash The Legend of the Horn##34960
step
use Uncured Caribou Hide##35288
collect 5 Steam Cured Hide##35289 |q 11894/1 |goto 75.87,32.49
step
kill Chieftain Gurgleboggle##25725
|tip He looks like a larger green gremlin.
|tip He walks around this area.
collect Gurbleboggle's Key##34962 |goto 78.40,28.70 |q 11695
step
click Gurbleboggle's Bauble
|tip It looks like a large white pearl sitting on a stone table in the water.
collect Lower Horn Half##34963 |q 11695/2 |goto 78.72,28.33
step
click North Point Station Valve##188107
kill ED-210##25831 |q 11907/2 |goto 65.44,17.45
step
click West Point Station Valve##188106
kill Twonky##25830 |q 11907/1 |goto 60.19,20.38
step
click Mid Point Station Valve##188108
kill Max Blasto##25832 |q 11907/3 |goto 63.66,22.48
step
Run up the ramp and follow the path to the top of the platform |goto 65.55,23.03 < 15 |only if walking
Enter the building at the top of the platform |goto 64.59,23.15 < 10 |walk
click The Gearmaster's Manual##190335
|tip Inside the building at the top of the platform.
|tip Gearmaster Mechazod will appear and attack you after you click the book.
Research the Gearmaster's Manual |q 11909/1 |goto 64.42,23.40
step
Watch the dialogue
|tip Inside the building at the top of the platform.
kill Gearmaster Mechazod##25834
collect Mechazod's Head##35486 |q 11909/2 |goto 64.42,23.40
step
click South Point Station Valve##188109
kill The Grinder##25833 |q 11907/4 |goto 65.25,28.75
step
kill Chieftain Burblegobble##25726
|tip He looks like a larger red gremlin.
|tip He walks around this area.
collect Burblegobble's Key##34961 |goto 68.33,40.26 |q 11695
step
click Burblegobble's Bauble##187886
|tip It looks like a large white pearl sitting on a stone table in the water.
collect Upper Horn Half##34964 |q 11695/1 |goto 68.52,40.38
step
talk Wind Tamer Barah##24730
turnin The Horn of Elemental Fury##11695 |goto 75.58,35.77
step
Watch the dialogue
talk Wind Tamer Barah##24730
accept The Collapse##11706 |goto 75.58,35.77
step
talk Fezzix Geartwist##25849
turnin Patching Up##11894 |goto 77.49,36.96
step
Enter the building |goto 77.33,37.01 < 10 |walk
talk Greatmother Taiga##25602
|tip Inside the building.
turnin Defeat the Gearmaster##11909 |goto 77.30,36.88
step
talk Sage Earth and Sky##25982
turnin The Sub-Chieftains##11907 |goto 77.25,38.47
step
talk Chieftain Wintergale##24703
|tip Outside, on the balcony of the building.
accept Shrouds of the Scourge##11628 |goto 75.89,37.25
step
use The Horn of Elemental Fury##34968
Watch the dialogue
|tip Lord Kryxix will appear nearby.
Collapse the Nerubian Tunnels |q 11706/2 |goto 70.52,37.00
step
kill Lord Kryxix##25629 |q 11706/1 |goto 70.69,36.55
|tip He looks like a huge blue beetle that walks around this area.
step
talk Sage Highmesa##25604
turnin Sage Highmesa is Missing##11674 |goto 74.67,23.66
accept A Proper Death##11675 |goto 74.67,23.66
stickystart "Collect_Scourged_Mammoth_Pelts"
step
kill 10 Plagued Magnataur##25615 |q 11675/1 |goto 76.09,20.97
|tip They look like large blue centaurs.
step
label "Collect_Scourged_Mammoth_Pelts"
kill Scourged Mammoth##25452+
|tip They look like brown hairy elephants.
collect 5 Scourged Mammoth Pelt##34775 |q 11628/1 |goto 76.09,20.97
You can find more around [79.26,25.60]
step
talk Sage Highmesa##25604
turnin A Proper Death##11675 |goto 74.67,23.66
accept Stop the Plague##11677 |goto 74.67,23.66
step
Enter the cave |goto 77.93,18.80 < 20 |walk
use Highmesa's Cleansing Seeds##34913
|tip Inside the cave.
Neutralize the Plague Cauldron |q 11677/1 |goto 78.30,17.97
step
talk Sage Highmesa##25604
turnin Stop the Plague##11677 |goto 74.67,23.66
accept Find Bristlehorn##11678 |goto 74.67,23.66
accept Fallen Necropolis##11683 |goto 74.67,23.66
stickystart "Destroy_Talramas_Scourge"
step
Enter the building |goto 68.62,15.26 < 40 |walk
Follow the path up |goto 69.10,12.58 < 15 |walk
talk Longrunner Bristlehorn##25658
|tip Inside a cage.
|tip Upstairs inside the building.
turnin Find Bristlehorn##11678 |goto 69.76,12.62
accept The Doctor and the Lich-Lord##11687 |goto 69.76,12.62
step
Follow the winding path up to the very top of the building |goto 69.51,15.82 < 10 |only if walking
kill Lich-Lord Chillwinter##25682 |q 11687/2 |goto 70.13,13.40
|tip He walks around this area.
|tip On top of the building.
step
kill Doctor Razorgrin##25678 |q 11687/1 |goto 69.70,12.87
|tip He walks around this area inside the building.
|tip Jump down to him from on top of the building.
step
label "Destroy_Talramas_Scourge"
Kill enemies around this area
Destroy #20# Talramas Scourge |q 11683/1 |goto 68.24,19.13
step
talk Sage Highmesa##25604
turnin Fallen Necropolis##11683 |goto 74.67,23.66
turnin The Doctor and the Lich-Lord##11687 |goto 74.67,23.66
accept Return with the Bad News##11689 |goto 74.67,23.66
step
talk Wind Tamer Barah##24730
turnin The Collapse##11706 |goto 75.58,35.77
step
talk Chieftain Wintergale##24703
|tip Outside, on the balcony of the building.
turnin Shrouds of the Scourge##11628 |goto 75.89,37.25
accept The Bad Earth##11630 |goto 75.89,37.25
step
Enter the building |goto 77.33,37.00 < 10 |walk
talk Greatmother Taiga##25602
|tip Inside the building.
turnin Return with the Bad News##11689 |goto 77.30,36.88
step
click Scourged Earth##187677+
|tip They look like piles of brown dirt on the ground.
|tip You can find them all around this area.
collect 8 Scourged Earth##34774 |q 11630/1 |goto 80.58,32.38
step
talk Chieftain Wintergale##24703
|tip Outside, on the balcony of the building.
turnin The Bad Earth##11630 |goto 75.89,37.25
accept Blending In##11633 |goto 75.89,37.25
step
_NOTE:_
During the Next Steps:
|tip You will use an item to become invisible.
|tip As you travel around to complete the quest goals, avoid abomination enemies.
|tip They can see through your invisibility and will attack you.
|tip You won't lose your invisibility if you mount.
|tip If you get attacked and lose your invisibility, unequip the cloak, and equip it again to regain the invisibility buff.
Click Here to Continue |confirm |q 11633
step
use the Imbued Scourge Shroud##34782
|tip You will become invisible.
Gain the Shroud of the Scourge Buff |havebuff Shroud of the Scourge##45614 |goto 84.27,30.79 |q 11633
step
Enter the Temple City of En'kilah |goto 84.27,30.78 < 30 |only if walking and not subzone("Temple City of En'kilah")
Run up the stairs and enter the building |goto 88.64,28.33 < 15 |walk
Scout the Spire of Pain |q 11633/3 |goto 88.96,28.56
|tip Inside the building.
step
Run up the stairs |goto 89.02,26.70 < 30 |only if walking and subzone("Spire of Pain")
Run up the stairs |goto 87.54,22.36 < 30 |only if walking and not subzone("Spire of Blood")
Run up the stairs and enter the building |goto 88.56,21.31 < 15 |walk
Scout the Spire of Blood |q 11633/2 |goto 88.07,20.89
|tip Upstairs inside the building.
step
Enter the building |goto 84.24,21.82 < 15 |walk
Scout the Spire of Decay |q 11633/1 |goto 84.00,20.89
|tip Inside the building.
step
Follow the path to leave the Temple City of En'kilah |goto 85.07,28.76 < 40 |only if walking and (subzone("Temple City of En'kilah") or subzone("Spire of Pain") or subzone("Spire of Blood") or subzone("Spire of Decay"))
Enter the building |goto 76.72,37.34 < 15 |walk
talk Chieftain Wintergale##24703
|tip Outside, on the balcony of the building.
turnin Blending In##11633 |goto 75.89,37.25
accept Words of Power##11640 |goto 75.89,37.25
step
Equip Your Regular Back Armor
Click Here After Equipping Your Regular Back Armor |confirm |q 11640
step
talk Durm Icehide##24706
|tip Outside, on the balcony of the building.
accept A Courageous Strike##11641 |goto 75.96,37.16
step
talk Sage Aeire##24709
|tip Outside, on the balcony of the building.
accept Neutralizing the Cauldrons##11647 |goto 75.96,37.34
step
talk Pahu Frosthoof##26709
|tip Inside the building.
home Taunka'le Village |goto 76.25,37.19
stickystart "Skay_Enkilah_Necromancers"
stickystart "Slay_Enkilah_Ghouls"
step
Enter the Temple City of En'kilah |goto 84.27,30.78 < 30 |only if walking and not subzone("Temple City of En'kilah")
Run up the stairs |goto 87.32,27.41 < 30 |only if walking
use Sage Aeire's Totem##34806
|tip Next to the large cauldron with orange liquid in it.
Cleanse the East Cauldron |q 11647/1 |goto 87.73,29.78
step
Run up the stairs and enter the building |goto 88.63,28.33 < 5 |walk
kill High Priest Talet-Kha##26073
|tip Inside the building.
|tip You must kill the 2 cocoons next to him before you can attack him.
collect High Priest Talet-Kha's Scroll##35354 |q 11640/2 |goto 89.38,28.86
step
Run up the stairs |goto 89.02,26.70 < 30 |only if walking and subzone("Spire of Pain")
Run up the stairs |goto 87.54,22.36 < 30 |only if walking and not subzone("Spire of Blood")
kill Darkfallen Bloodbearer##26115
|tip He looks like a blood elf wearing black armor.
|tip He walks up and down the path around this area on the building.
collect Vial of Fresh Blood##34815 |n
use Vial of Fresh Blood##34815
accept The Spire of Blood##11654 |goto 87.22,21.24
step
Enter the bottom floor of the building |goto 87.78,21.67 < 15 |walk
talk Snow Tracker Grumm##25516
|tip Inside the building, on the bottom floor.
turnin The Spire of Blood##11654 |goto 87.57,19.95
accept Shatter the Orbs!##11659 |goto 87.57,19.95
step
kill En'Kilah Blood Globe##25534+
|tip They look like red globes sitting on golden pedestals.
|tip Inside the building, on the bottom floor.
Shatter #5# Blood Globes |q 11659/1 |goto 87.73,19.61
step
Run up the stairs and enter the building |goto 88.56,21.31 < 15 |walk
kill High Priest Andorath##25392
|tip Inside the building, on the top floor.
|tip To find him, follow the path up, outside the building, and enter the top floor of the building from either side.
collect High Priest Andorath's Scroll##35355 |q 11640/3 |goto 88.05,20.94
step
use Sage Aeire's Totem##34806
|tip Next to the large cauldron with orange liquid in it.
Cleanse the Central Cauldron |q 11647/2 |goto 86.20,22.61
step
use Sage Aeire's Totem##34806
|tip Next to the large cauldron with orange liquid in it.
Cleanse the West Cauldron |q 11647/3 |goto 85.51,20.22
step
Enter the building |goto 84.24,21.82 < 15 |walk
kill High Priest Naferset##26076
|tip Inside the building.
|tip You must kill the 3 enemies channeling on him before you can attack him.
collect High Priest Naferset's Scroll##35353 |q 11640/1 |goto 83.89,20.46
step
label "Skay_Enkilah_Necromancers"
kill 5 En'kilah Necromancer##25378 |q 11641/2 |goto 84.41,22.30
|tip They look like large humans wearing robes.
|tip You can find them all around the Temple City of En'kilah area. |notinsticky
step
label "Slay_Enkilah_Ghouls"
kill 15 En'kilah Ghoul##25393 |q 11641/1 |goto 86.60,25.15
|tip They look like zombies.
|tip You can find them all around the Temple City of En'kilah area. |notinsticky
step
use the Hearthstone##6948
Hearth to Taunka'le Village |complete subzone("Taunka'le Village") |q 11640
|only if subzone("Temple City of En'kilah") or subzone("Spire of Pain") or subzone("Spire of Blood") or subzone("Spire of Decay")
step
talk Durm Icehide##24706
|tip Outside, on the balcony of the building.
turnin A Courageous Strike##11641 |goto 75.96,37.16
step
talk Chieftain Wintergale##24703
|tip Outside, on the balcony of the building.
turnin Words of Power##11640 |goto 75.89,37.25
step
talk Sage Aeire##24709
|tip Outside, on the balcony of the building.
turnin Neutralizing the Cauldrons##11647 |goto 75.96,37.34
step
talk Snow Tracker Junek##24733
|tip Outside the building.
turnin Shatter the Orbs!##11659 |goto 76.75,37.88
step
talk Ataika##26169
accept Not Without a Fight!##11949 |goto 63.80,46.12
step
talk Utaik##26213
accept Preparing for the Worst##11945 |goto 63.95,45.72
|only if subzone("Kaskala")
stickystart "Kill_Kvaldir_Raiders"
step
click Kaskala Supplies+
|tip They look like brown wicker baskets on the ground around this area.
|tip They can also be inside the buildings.
collect 8 Kaskala Supplies##35711 |q 11945 |goto 65.51,47.45
|only if haveq(11945)
step
label "Kill_Kvaldir_Raiders"
kill 12 Kvaldir Raider##25760 |q 11949/1 |goto 67.27,53.03
|tip They look like large green humans.
|tip You can find them all around the Kaskala area. |notinsticky
You can find more around [67.51,47.93]
step
talk Ataika##26169
turnin Not Without a Fight!##11949 |goto 63.80,46.12
accept Muahit's Wisdom##11950 |goto 63.80,46.12
step
talk Utaik##26213
turnin Preparing for the Worst##11945 |goto 63.95,45.72
|only if haveq(11945) or completedq(11945)
step
talk Elder Muahit##26218
turnin Muahit's Wisdom##11950 |goto 67.20,54.85
accept Spirits Watch Over Us##11961 |goto 67.20,54.85
step
clicknpc Iruk##26219
|tip Underwater.
Choose _<Search corpse for Issliruk's Totem.>_
collect Issliruk's Totem##35701 |q 11961/1 |goto 67.64,50.41
step
talk Elder Muahit##26218
turnin Spirits Watch Over Us##11961 |goto 67.20,54.85
accept The Tides Turn##11968 |goto 67.20,54.85
step
kill Heigarr the Horrible##26266 |q 11968/1 |goto 67.60,56.70
|tip He fights around this area.
step
talk Elder Muahit##26218
turnin The Tides Turn##11968 |goto 67.20,54.85
step
Follow the road to leave Kaskala |goto 63.11,45.56 < 40 |only if walking and (subzone("Njord's Breath Bay") or subzone("Kaskala"))
talk Arch Druid Lathorius##25809
accept A Mission Statement##11864 |goto 57.05,44.32 |instant
step
talk Arch Druid Lathorius##25809
accept Ears of Our Enemies##11866 |goto 57.05,44.32
accept Help Those That Cannot Help Themselves##11876 |goto 57.05,44.32
step
talk Hierophant Cenius##25810
accept Happy as a Clam##11869 |goto 57.32,44.08
step
talk Zaza##25811
accept Unfit for Death##11865 |goto 56.80,44.03
step
use the Pile of Fake Furs##35127
|tip Use it next to Caribou Traps.
|tip They look like metal spiked traps on the ground around this area.
Trap #8# Nesingwary Trappers |q 11865/1 |goto 56.86,49.77
stickystart "Kill_Lootcrazed_Divers"
step
kill Loot Crazed Diver##25836+
|tip They look like human scuba divers.
|tip You can find them underwater all around the Lake Kum'uya area.
collect 15 Nesingwary Lackey Ear##35188 |q 11866/1 |goto 51.13,44.68
step
label "Kill_Lootcrazed_Divers"
kill 10 Loot Crazed Diver##25836 |q 11869/1 |goto 51.13,44.68
|tip They look like human scuba divers. |notinsticky
|tip You can find them underwater all around the Lake Kum'uya area. |notinsticky
step
use the D.E.H.T.A. Trap Smasher##35228
|tip Use it next to Trapped Mammoth Calves.
|tip They look like baby elephants stuck in metal traps on the ground around this area.
|tip Avoid killing any mammoths, since you'll get a debuff that will cause druid guards to attack you.
Free #8# Mammoth Calves |q 11876/1 |goto 56.38,39.08
You can find more around: |notinsticky
[55.79,32.94]
[54.72,28.92]
step
talk Zaza##25811
turnin Unfit for Death##11865 |goto 56.80,44.04
accept The Culler Cometh##11868 |goto 56.80,44.04
step
talk Arch Druid Lathorius##25809
turnin Ears of Our Enemies##11866 |goto 57.05,44.32
turnin Help Those That Cannot Help Themselves##11876 |goto 57.05,44.32
accept Khu'nok Will Know##11878 |goto 57.05,44.32
step
talk Hierophant Cenius##25810
turnin Happy as a Clam##11869 |goto 57.33,44.09
accept The Abandoned Reach##11870 |goto 57.33,44.09
step
Deliver the Orphaned Mammoth Calf to Khu'nok |q 11878/1 |goto 59.44,30.37
|tip Make sure the Orphaned Mammoth Calf continues following you.
|tip The calf that follows you is slow.
|tip Don't move too fast, or you'll lose it.
step
talk Khu'nok the Behemoth##25862
turnin Khu'nok Will Know##11878 |goto 59.44,30.37
accept Kaw the Mammoth Destroyer##11879 |goto 59.44,30.37
step
clicknpc Wooly Mammoth Bull##25743
|tip They look like larger brown hairy elephants.
|tip You can find them all around this area.
Ride a Wooly Mammoth Bull |invehicle |goto 55.88,31.39 |q 11879
step
Watch the dialogue
|tip Kaw the Mammoth Destroyer will jump on Moria, the mammoth.
kill Kaw the Mammoth Destroyer##25802
|tip Use the abilities on your action bar.
click Kaw's War Halberd##188066
|tip It looks like an axe that appears on the ground after you kill Kaw the Mammoth Destroyer.
|tip You will have to stop riding the mammoth to be able to loot it.
|tip Click the red arrow on your action bar to stop riding the mammoth.
collect Kaw's War Halberd##35234 |q 11879/1 |goto 53.99,24.29
step
talk Arch Druid Lathorius##25809
turnin Kaw the Mammoth Destroyer##11879 |goto 57.05,44.32
step
kill Karen "I Don't Caribou" the Culler##25803 |q 11868/1 |goto 57.26,56.45
|tip She walks around this area.
|tip Two enemies will appear and help her fight after you attack her.
|tip If you have trouble, try to find someone to help you, or skip the quest.
step
talk Hierophant Liandra##25838
turnin The Abandoned Reach##11870 |goto 57.80,55.11
accept Not On Our Watch##11871 |goto 57.80,55.11
step
kill Northsea Thug##25843+
|tip They look like humans carrying tan bags over their shoulders.
click Shipment of Animal Parts##188018+
|tip They look like brown bags and crates on the ground.
|tip You can find them all around the Abandoned Reach area.
collect 12 Shipment of Animal Parts##35222 |q 11871/1 |goto 59.53,58.66
step
talk Hierophant Liandra##25838
turnin Not On Our Watch##11871 |goto 57.80,55.11
accept The Nefarious Clam Master...##11872 |goto 57.80,55.11
step
kill Clam Master K##25800 |q 11872/1 |goto 61.72,66.42
|tip He walks east and west underwater around this area.
|tip Beware of Great Reef Sharks that will attack while you are fighting him.
|tip He respawns quickly.
step
Return to the Abandoned Reach |complete subzone("The Abandoned Reach") |goto 60.71,62.65 |q 11872
|only if (dist("Borean Tundra 60.71,62.65") < 1000) and not subzone("The Abandoned Reach")
step
Follow the path up to leave the Abandoned Reach |goto 57.63,55.03 < 20 |only if walking and subzone("The Abandoned Reach")
talk Hierophant Cenius##25810
turnin The Nefarious Clam Master...##11872 |goto 57.33,44.08
step
talk Zaza##25811
turnin The Culler Cometh##11868 |goto 56.80,44.04
step
click Elder Atkanok##187565
accept The Honored Ancestors##11605 |goto 54.60,36.00
step
talk Etaruk##25292
accept Reclaiming the Quarry##11612 |goto 54.29,36.10
step
talk Surristrasz##24795
|tip Follow the road to get to this location.
fpath Amber Ledge |goto 45.33,34.50
step
talk Librarian Donathan##25262
turnin Too Close for Comfort##11574|goto 45.26,33.35
accept Prison Break##11587 |goto 45.26,33.35
step
talk Librarian Garren##25291
accept Monitoring the Rift: Cleftcliff Anomaly##11576 |goto 44.98,33.38
step
kill Beryl Mage Hunter##25585+
collect Beryl Prison Key##34688 |goto 42.46,37.14 |q 11587
You can find more around [41.81,41.59]
step
click Arcane Prison##187561+
|tip They look like large boxes hovering above circular blue rune platforms around this area.
|tip If the Arcane Prison doesn't complete the quest goal, click others.
|tip It seems random as to which Arcane Prison contains the prisoners.
Rescue the Arcane Prisoners |q 11587/1 |goto 40.44,39.16
You can find more Arcane Prisons at: |notinsticky
[41.79,42.54]
[42.59,36.76]
step
use the Arcanometer##34669
|tip Next to the purple crack in the ground, next to the water.
Take the Cleftcliff Anomaly Reading |q 11576/1 |goto 34.36,42.06
step
Follow the path up |goto 39.96,42.04 < 30 |only if walking and subzone("The Westrift")
Follow the path up into Amber Ledge |goto 43.72,37.46 < 15 |only if walking and not subzone("Amber Ledge")
talk Librarian Garren##25291
turnin Monitoring the Rift: Cleftcliff Anomaly##11576 |goto 44.98,33.38
accept Monitoring the Rift: Sundered Chasm##11582 |goto 44.98,33.38
step
talk Librarian Donathan##25262
turnin Prison Break##11587 |goto 45.26,33.35
accept Abduction##11590 |goto 45.26,33.35
step
kill Beryl Sorcerer##25316+
|tip They look like humans in purple robes.
|tip Don't kill them, just weaken them.
|tip You can find them all around the Beryl Point area.
use the Arcane Binder##34691
|tip Use it on the Beryl Sorcerer when it is low health.
Capture a Beryl Sorcerer |q 11590/1 |goto 42.66,38.06
step
Follow the path up into Amber Ledge |goto 43.72,37.46 < 15 |only if walking and not subzone("Amber Ledge")
talk Librarian Donathan##25262
turnin Abduction##11590 |goto 45.26,33.35
accept The Borean Inquisition##11646 |goto 45.26,33.35
step
Enter the building |goto 46.11,33.12 < 10 |walk
talk Librarian Normantis##25480
|tip Upstairs inside the tower, on a middle floor.
turnin The Borean Inquisition##11646 |goto 46.33,32.85
accept The Art of Persuasion##11648 |goto 46.33,32.85
step
use the Neural Needler##34811
|tip Use it on the Imprisoned Beryl Sorcerer repeatedly.
|tip Upstairs inside the tower, on a middle floor.
Interrogate the Prisoner |q 11648/1 |goto 46.32,32.92
step
talk Librarian Normantis##25480
|tip Upstairs inside the tower, on a middle floor.
turnin The Art of Persuasion##11648 |goto 46.33,32.85
accept Sharing Intelligence##11663 |goto 46.33,32.85
step
Leave the building |goto 46.11,33.12 < 10 |walk |only if subzone("Amber Ledge") and _G.IsIndoors()
talk Librarian Donathan##25262
turnin Sharing Intelligence##11663 |goto 45.26,33.35
accept A Race Against Time##11671|goto 45.26,33.35
step
use the Beryl Shield Detonator##34897
|tip If it won't let you, wait until Inquisitor Salrand appears again.
kill Inquisitor Salrand##25584
click Salrand's Lockbox##187875
|tip It appears on the ground after you kill Inquisitor Salrand.
collect Salrand's Broken Key##34909 |q 11671/1 |goto 41.80,39.16
step
Follow the path up into Amber Ledge |goto 43.72,37.46 < 15 |only if walking and not subzone("Amber Ledge")
talk Librarian Donathan##25262
turnin A Race Against Time##11671 |goto 45.26,33.35
accept Reforging the Key##11679 |goto 45.26,33.35
step
talk Surristrasz##24795
turnin Reforging the Key##11679 |goto 45.32,34.52
accept Taking Wing##11680 |goto 45.32,34.52
step
talk Warmage Anzim##25356
turnin Taking Wing##11680 |goto 46.38,37.31
accept Rescuing Evanor##11681 |goto 46.38,37.31
step
Watch the dialogue
|tip You will automatically be teleported back to Amber Ledge.
Return to Amber Ledge |goto 46.45,32.55 < 20 |noway |c |q 11681
step
talk Archmage Evanor##25785
|tip Inside the tower, on the top floor.
turnin Rescuing Evanor##11681 |goto 46.37,32.40
accept Dragonspeak##11682 |goto 46.37,32.40
step
Leave the building |goto 46.11,33.12 < 10 |walk |only if subzone("Amber Ledge") and _G.IsIndoors()
talk Surristrasz##24795
turnin Dragonspeak##11682 |goto 45.32,34.52
step
use the Arcanometer##34669
|tip Swim down to the pink chasm underwater.
Take the Sundered Chasm Reading |q 11582/1 |goto 43.98,28.49
stickystart "Kill_Beryl_Treasure_Hunters"
step
Follow the path back up to cliff |goto 45.44,31.11 < 15 |only if walking and subzone("The Westrift")
click "Elder Kesuk"##187662
Identify the Elder Kesuk |q 11605/1 |goto 50.87,32.39
step
click "Elder Takret"##187664
Identify the Elder Takret |q 11605/3 |goto 52.31,31.15
step
click "Elder Sagani"##187663
Identify the Elder Sagani |q 11605/2 |goto 52.82,34.03
step
label "Kill_Beryl_Treasure_Hunters"
kill 12 Beryl Treasure Hunter##25353 |q 11612/1 |goto 51.97,32.61
|tip They look like humans in purple robes.
|tip You can find them all around the Coldrock Quarry area. |notinsticky
step
click Elder Atkanok##187565
turnin The Honored Ancestors##11605 |goto 54.62,35.74
accept The Lost Spirits##11607 |goto 54.62,35.74
step
talk Etaruk##25292
turnin Reclaiming the Quarry##11612 |goto 54.29,36.10
accept Hampering Their Escape##11617 |goto 54.29,36.10
stickystart "Free_Kaskala_Craftsman_Spirits"
stickystart "Free_Kaskala_Shaman_Spirits"
step
kill Beryl Reclaimer##25449+
|tip They look like gnomes.
|tip You can find them all around the Coldrock Quarry area.
collect 3 Gnomish Grenade##34772 |q 11617 |goto 51.62,35.90
step
use the Gnomish Grenade##34772
|tip Use it while standing near the floating platform.
Destroy the East Platform |q 11617/1 |goto 52.47,35.44
step
use the Gnomish Grenade##34772
|tip Use it while standing near the the floating platform.
Destroy the West Platform |q 11617/3 |goto 50.35,34.52
step
use the Gnomish Grenade##34772
|tip Use it while standing near the floating platform.
Destroy the North Platform |q 11617/2 |goto 52.26,31.80
step
label "Free_Kaskala_Craftsman_Spirits"
kill Beryl Hound##25355+
|tip They look like blue dogs.
collect Core of Malice##34711+ |n
use the Cores of Malice##34711
|tip Use them on Kaskala Craftsmen.
|tip They look like walrus people spirits holding hammers.
|tip You can find them all around the Coldrock Quarry area. |notinsticky
Free #3# Kaskala Craftsman Spirits |q 11607/1 |goto 51.49,31.33
step
label "Free_Kaskala_Shaman_Spirits"
kill Beryl Hound##25355+
|tip They look like blue dogs.
collect Core of Malice##34711+ |n
use the Cores of Malice##34711
|tip Use them on Kaskala Shamans.
|tip They look like walrus people spirits holding staves.
|tip You can find them all around the Coldrock Quarry area. |notinsticky
Free #3# Kaskala Shaman Spirits |q 11607/2 |goto 51.49,31.33
step
click Elder Atkanok##187565
turnin The Lost Spirits##11607 |goto 54.62,35.74
accept Picking Up the Pieces##11609 |goto 54.62,35.74
step
talk Etaruk##25292
turnin Hampering Their Escape##11617 |goto 54.29,36.10
accept A Visit to the Curator##11623 |goto 54.29,36.10
stickystart "Collect_Tuskarr_Ritual_Objects"
step
kill Curator Insivius##25448 |q 11623/1 |goto 50.09,32.56
|tip He walks around this area.
|tip Follow the path along the top of the cliff to get to him.
step
label "Collect_Tuskarr_Ritual_Objects"
click Tuskarr Ritual Object##187671+
|tip They look like stone fish and incense smoke bowls on the ground.
|tip You can find them all around the Coldrock Quarry area. |notinsticky
collect 6 Tuskarr Ritual Object##34713 |q 11609/1 |goto 51.95,32.94
step
click Elder Atkanok##187565
turnin Picking Up the Pieces##11609 |goto 54.62,35.74
accept Leading the Ancestors Home##11610 |goto 54.62,35.74
step
talk Etaruk##25292
turnin A Visit to the Curator##11623 |goto 54.29,36.10
step
use the Tuskarr Ritual Object##34715
|tip Next to the Elder Sagani totem.
Complete Elder Sagani's Ceremony |q 11610/2 |goto 52.82,34.04
step
use the Tuskarr Ritual Object##34715
|tip Next to the Elder Takret totem.
Complete Elder Takret's Ceremony |q 11610/3 |goto 52.31,31.15
step
use the Tuskarr Ritual Object##34715
|tip Next to the Elder Kesuk totem.
Complete Elder Kesuk's Ceremony |q 11610/1 |goto 50.87,32.39
step
click Elder Atkanok##187565
turnin Leading the Ancestors Home##11610 |goto 54.62,35.74
step
talk Librarian Garren##25291
|tip Follow the road to get to this location.
turnin Monitoring the Rift: Sundered Chasm##11582 |goto 44.98,33.38
accept Monitoring the Rift: Winterfin Cavern##12728 |goto 44.98,33.38
step
talk Surristrasz##24795
accept Traversing the Rift##11733 |goto 45.32,34.52
step
talk Surristrasz##24795
Ask him _"May I use a drake to fly elsewhere?"_
|tip Choose to fly to "Transitus Shield, Coldarra".
Begin Flying to Transitus Shield |invehicle |goto 45.32,34.52 |q 11733
step
Fly to Transitus Shield |outvehicle |goto 33.12,34.41 |notravel |q 11733
step
talk Warmage Adami##27046
fpath Transitus Shield |goto 33.13,34.44
step
talk Archmage Berinand##25314
|tip Inside the building.
turnin Traversing the Rift##11733 |goto 32.95,34.40
accept Reading the Meters##11900 |goto 32.95,34.40
accept Secrets of the Ancients##11910 |goto 32.95,34.40
step
talk Raelorasz##26117
accept Basic Training##11918 |goto 33.31,34.53
step
talk Librarian Serrah##26110
accept Nuts for Berries##11912 |goto 33.49,34.38
stickystart "Kill_Coldarra_Spellweavers"
step
kill Coldarra Spellbinder##25719+
|tip They look like large humans wearing purple robs.
collect Scintillating Fragment##35648 |n
use the Scintillating Fragment##35648
accept Puzzling...##11941 |goto 32.92,28.99
step
talk Raelorasz##26117
turnin Puzzling...##11941 |goto 33.31,34.53
accept The Cell##11943 |goto 33.31,34.53
stickystart "Collect_Glacial_Splinters"
stickystart "Collect_Magic_Bound_Splinters"
stickystart "Collect_Frostberries"
step
click Coldarra Geological Monitor##188100
|tip Right inside the doorway of the building.
Take the Southern Coldarra Reading |q 11900/2 |goto 28.27,35.02
step
kill Warbringer Goredrak##25712
|tip He looks like a large blue humanoid dragon in brown armor.
collect Energy Core##35669 |q 11943/1 |goto 24.13,29.59
step
_NOTE:_
Check for Frostberry Bushes
|tip There are usually a few Frostberry bushes around this area with the trees.
|tip They look like medium sized snow covered bushes with dark leaves on the ground around this area.
|tip Collect the few you can find here, and continue on.
Click Here to Continue |confirm |goto 21.62,26.80 |q 11912
step
click Coldarra Geological Monitor##188100
|tip Right inside the doorway of the building.
Take the Western Coldarra Reading |q 11900/4 |goto 22.62,23.45
step
_NOTE:_
Check for Frostberry Bushes
|tip There are usually a few Frostberry bushes around this area with the trees.
|tip They look like medium sized snow covered bushes with dark leaves on the ground around this area.
|tip Collect the few you can find here, and continue on.
Click Here to Continue |confirm |goto 23.86,21.70 |q 11912
step
_NOTE:_
Check for Frostberry Bushes
|tip There are usually a few Frostberry bushes around this area with the trees.
|tip They look like medium sized snow covered bushes with dark leaves on the ground around this area.
|tip Collect the few you can find here, and continue on.
Click Here to Continue |confirm |goto 25.41,19.93 |q 11912
step
kill General Cerulean##25716
|tip He looks like a large blue and white dragon.
collect Prison Casing##35668 |q 11943/2 |goto 27.32,20.40
step
label "Collect_Frostberries"
click Frostberry Bush##188113+
|tip They look like medium sized snow covered bushes with dark leaves on the ground.
|tip You should be able to finish up with these here. |notinsticky
|tip You can find them all around the Coldarra area. |notinsticky
collect 10 Frostberry##35492 |q 11912/1 |goto 29.53,20.54
step
click Coldarra Geological Monitor##188100
|tip Right inside the doorway of the building.
Take the Northern Coldarra Reading |q 11900/3 |goto 31.72,20.56
step
label "Collect_Glacial_Splinters"
kill Glacial Ancient##25709+
|tip They look like large white and brown walking trees.
|tip You can find them all around the Coldarra area. |notinsticky
collect 3 Glacial Splinter##35483 |q 11910/1 |goto 34.13,25.70
step
label "Collect_Magic_Bound_Splinters"
kill Magic-Bound Ancient##25707+
|tip They look like large purple and white walking trees.
|tip You can find them all around the Coldarra area. |notinsticky
collect 3 Magic-Bound Splinter##35484 |q 11910/2 |goto 34.13,25.70
step
label "Kill_Coldarra_Spellweavers"
kill 10 Coldarra Spellweaver##25722 |q 11918/1 |goto 31.45,29.44
|tip You can find them all around the Coldarra area. |notinsticky
step
talk Archmage Berinand##25314
|tip Inside the building.
turnin Secrets of the Ancients##11910 |goto 32.95,34.40
step
talk Raelorasz##26117
turnin Basic Training##11918 |goto 33.31,34.53
accept Hatching a Plan##11936 |goto 33.31,34.53
step
talk Raelorasz##26117
turnin The Cell##11943 |goto 33.31,34.53
step
talk Librarian Serrah##26110
turnin Nuts for Berries##11912 |goto 33.49,34.38
accept Keep the Secret Safe##11914 |goto 33.49,34.38
step
use the Augmented Arcane Prison##35671
talk Keristrasza##26206
|tip She appears next to you.
accept Keristrasza##11946 |goto 33.20,34.19
step
use the Augmented Arcane Prison##35671
talk Keristrasza##26206
|tip She appears next to you.
turnin Keristrasza##11946
accept Bait and Switch##11951 |goto 33.20,34.19
stickystart "Collect_Crystallized_Mana_Shards"
step
kill Coldarra Wyrmkin##25728+
|tip They look like larger armored blue dragonkin.
|tip You can find them all around the Coldarra area. |notinsticky
|tip You need these axes to destroy dragon eggs in a few steps.
collect 5 Frozen Axe##35586 |goto 29.57,30.52 |q 11936
You can find more around: |notinsticky
[25.27,35.16]
[24.14,25.21]
step
label "Collect_Crystallized_Mana_Shards"
click Crystallized Mana##188140+
|tip They look like clusters of pink crystals on the ground.
|tip They are usually near the 3 purple cracks in the ground around the perimeter of the large trench surrounding the Nexus building.
|tip You can find them all around the Coldarra area. |notinsticky
collect 10 Crystallized Mana Shard##35685 |q 11951/1 |goto 24.64,24.34
You can find more around: |notinsticky
[29.93,22.39]
[29.12,31.77]
stickystart "Destroy_Dragon_Eggs"
stickystart "Collect_Nexus_Mana_Essences"
step
click Coldarra Geological Monitor##188100
|tip On the ground in the trench, outside of the Nexus building.
Take the Nexus Geological Reading |q 11900/1 |goto 28.32,28.48
step
label "Destroy_Dragon_Eggs"
click Blue Dragon Egg##188133+
|tip They look like large dark colored eggs with white crystals on them on the ground around this area.
|tip In the trench, all around the perimeter of the Nexus building. |notinsticky
Destroy #5# Dragon Eggs |q 11936/1 |goto 28.08,29.18
step
label "Collect_Nexus_Mana_Essences"
kill Arcane Serpent##25721+
|tip They look like pink flying snakes in the air.
|tip In the trench, all around the perimeter of the Nexus building. |notinsticky
collect 5 Nexus Mana Essence##35493 |q 11914/1 |goto 27.95,24.20
step
use the Augmented Arcane Prison##35671
talk Keristrasza##26237
|tip She appears next to you.
turnin Bait and Switch##11951
accept Saragosa's End##11957
step
_Next to you:_
talk Keristrasza##26237
Tell her _"I am prepared to face Saragosa!"_
Teleport to Saragosa's Landing |complete subzone("Saragosa's Landing") |q 11957
step
use the Arcane Power Focus##35690
|tip In the middle of the floating platform.
Watch the dialogue
kill Saragosa##26232
|tip She will fly to the floating platform, and turn into her non-elite human form.
|tip You won't have to fight her elite dragon form.
collect Saragosa's Corpse##35709 |q 11957/1 |goto 21.59,22.55
step
use the Augmented Arcane Prison##35671
talk Keristrasza##26237
|tip She appears next to you.
turnin Saragosa's End##11957
accept Mustering the Reds##11967
step
_Next to you:_
talk Keristrasza##26237
Tell her _"Keristrasa, I am finished here. Please return me to the Transitus Shield."_
Return to Transitus Shield |complete subzone("Transitus Shield") |q 11967
step
talk Raelorasz##26117
turnin Hatching a Plan##11936 |goto 33.31,34.53
turnin Mustering the Reds##11967 |goto 33.31,34.53
step
talk Librarian Serrah##26110
turnin Keep the Secret Safe##11914 |goto 33.49,34.38
step
talk Archmage Berinand##25314
|tip Inside the building.
turnin Reading the Meters##11900 |goto 32.95,34.40
step
talk Spirit Talker Snarlfang##25339
turnin To Bor'gorok Outpost, Quickly!##12486 |goto 50.28,9.72
accept The Sky Will Know##11624 |goto 50.28,9.72
step
talk Kimbiza##26848
fpath Bor'gorok Outpost |goto 49.65,11.05
step
talk Overlord Bor'gorok##25326
accept Report to Steeljaw's Caravan##11591 |goto 49.62,10.58
step
talk Supply Master Taz'ishi##25736
accept King Mrgl-Mrgl##11702 |goto 48.96,10.27
step
talk Imperean##25376
turnin The Sky Will Know##11624 |goto 46.57,9.35
accept Boiling Point##11627 |goto 46.57,9.35
step
kill Churn##25418
|tip He looks like a water elemental.
|tip He will eventually surrender.
Fight Churn Until He Submits |q 11627/2 |goto 45.89,13.09
step
kill Simmer##25416
|tip He looks like a fire elemental.
|tip He will eventually surrender.
Fight Simmer Until He Submits |q 11627/1 |goto 50.95,15.30
step
talk Imperean##25376
turnin Boiling Point##11627 |goto 46.57,9.35
accept Motes of the Enraged##11649 |goto 46.57,9.35
step
kill Enraged Tempest##25415+
|tip They look like air elementals.
|tip You can find them all around the Ruins of Eldra'nath area.
collect 5 Tempest Mote##34800 |q 11649/1 |goto 44.06,9.13
step
talk King Mrgl-Mrgl##25197
turnin King Mrgl-Mrgl##11702 |goto 43.50,13.97
accept Learning to Communicate##11571 |goto 43.50,13.97
stickystart "Collect_Winterfin_Clams"
step
kill Scalder##25226
|tip He looks like a blue water elemental that swims along this purple trench underwater around this area.
use The King's Empty Conch##34598
|tip Use it on his corpse.
collect The King's Filled Conch##34623 |q 11571/1 |goto 42.78,17.07
step
label "Collect_Winterfin_Clams"
Kill Winterfin enemies around this area
|tip They look like murlocs.
click Winterfin Clam##187367+
|tip They look like small grey clams on the ground around this area.
collect 5 Winterfin Clam##34597 |goto 40.61,16.85 |q 11559 |future
|tip Be careful not to accidentally sell these to a vendor.
|tip You will need them for a quest soon.
step
talk King Mrgl-Mrgl##25197
turnin Learning to Communicate##11571 |goto 43.50,13.97
accept Winterfin Commerce##11559 |goto 43.50,13.97
step
talk Ahlurglgr##25206
turnin Winterfin Commerce##11559 |goto 43.04,13.81
step
talk King Mrgl-Mrgl##25197
accept Oh Noes, the Tadpoles!##11560 |goto 43.50,13.97
step
talk Brglmurgl##25199
accept Them!##11561 |goto 42.83,13.65
stickystart "Rescue_Winterfin_Tadpoles"
stickystart "Slay_Winterfin_Murlocs"
step
use the Arcanometer##34669
|tip At the entrance of the cave.
Take the Winterfin Cavern Reading |q 12728/1 |goto 39.88,19.76
step
label "Rescue_Winterfin_Tadpoles"
click Cage##238791+
|tip They look like yellow wooden cages on the ground around this area.
Rescue #20# Winterfin Tadpoles |q 11560/1 |goto 40.61,16.85
You can find more inside the cave at [39.88,19.76]
step
label "Slay_Winterfin_Murlocs"
Kill Winterfin enemies around this area
Slay #15# Winterfin Murlocs |q 11561/1 |goto 40.61,16.85
You can find more inside the cave at [39.88,19.76]
step
Leave the cave |goto 39.92,19.98 < 40 |walk |only if subzone("Winterfin Caverns")
talk Brglmurgl##25199
turnin Them!##11561 |goto 42.83,13.65
step
talk King Mrgl-Mrgl##25197
turnin Oh Noes, the Tadpoles!##11560 |goto 43.50,13.97
accept I'm Being Blackmailed By My Cleaner##11562 |goto 43.50,13.97
step
talk Mrmrglmr##25205
turnin I'm Being Blackmailed By My Cleaner##11562 |goto 42.00,12.77
accept Grmmurggll Mrllggrl Glrggl!!!##11563 |goto 42.00,12.77
step
talk Cleaver Bmurglbrm##25211
accept Succulent Orca Stew##11564 |goto 42.03,13.15
stickystart "Collect_Succulent_Orca_Blubber"
step
kill Glrggl##25203
|tip It looks like a larger orca that swims on the surface of the water around this area.
collect Glrggl's Head##34617 |q 11563/1 |goto 36.47,8.23
step
label "Collect_Succulent_Orca_Blubber"
kill Glimmer Bay Orca##25204+
|tip They look like black and white whales.
|tip Underwater around this area.
collect 7 Succulent Orca Blubber##34618 |q 11564/1 |goto 39.94,12.37
You can find more around: |notinsticky
[40.74,7.39]
[42.70,15.83]
step
talk Mrmrglmr##25205
turnin Grmmurggll Mrllggrl Glrggl!!!##11563 |goto 42.00,12.77
accept The Spare Suit##11565 |goto 42.00,12.77
step
talk Cleaver Bmurglbrm##25211
turnin Succulent Orca Stew##11564 |goto 42.03,13.15
step
talk King Mrgl-Mrgl##25197
turnin The Spare Suit##11565 |goto 43.50,13.97
accept Surrender... Not!##11566 |goto 43.50,13.97
step
use King Mrgl-Mrgl's Spare Suit##34620
Wear King Mrgl-Mrgl's Spare Suit |havebuff King Mrgl-Mrgl's Spare Suit##45278 |goto 40.33,19.21 |q 11566
step
Enter the cave |goto 39.92,19.97 < 40 |walk
Follow the path |goto 38.06,22.72 < 10 |walk
talk Glrglrglr##28375
|tip Inside the cave, on the top floor.
accept Keymaster Urmgrgl##11569 |goto 37.84,23.19
step
Remove King Mrgl-Mrgl's Spare Suit |nobuff King Mrgl-Mrgl's Spare Suit##45278 |q 11566
|tip Right-click the "King Mrgl-Mrgl's Spare Suit" buff near your minimap.
|tip Be careful, enemies will attack you.
step
Jump down and follow the path |goto 38.10,22.16 < 10 |walk
kill Keymaster Urmgrgl##25210
|tip He walks around this area.
|tip Inside the cave, on the bottom floor.
collect Urmgrgl's Key##34600 |q 11569/1 |goto 39.07,22.69
step
use King Mrgl-Mrgl's Spare Suit##34620
Wear King Mrgl-Mrgl's Spare Suit |havebuff King Mrgl-Mrgl's Spare Suit##45278 |q 11566
step
Follow the path |goto 37.50,21.87 < 10 |walk
kill Claximus##25209
|tip Inside the cave, on the top floor.
|tip To reach him, hug the right wall as you follow the path.
collect Claw of Claximus##34621 |q 11566/1 |goto 37.55,27.51
step
use King Mrgl-Mrgl's Spare Suit##34620
Wear King Mrgl-Mrgl's Spare Suit |havebuff King Mrgl-Mrgl's Spare Suit##45278 |q 11566
step
Hug the left wall as you walk and follow the path up |goto 37.49,21.57 < 10 |walk
Follow the path |goto 38.06,22.72 < 10 |walk
talk Glrglrglr##28375
|tip Inside the cave, on the top floor.
turnin Keymaster Urmgrgl##11569 |goto 37.84,23.19
step
Remove King Mrgl-Mrgl's Spare Suit |nobuff King Mrgl-Mrgl's Spare Suit##45278 |goto 37.75,23.02 |q 11570 |future
|tip Right-click the "King Mrgl-Mrgl's Spare Suit" buff near your minimap.
|tip Be careful, enemies will attack you.
step
talk Lurgglbr##25208
|tip Inside the cave, on the top floor.
accept Escape from the Winterfin Caverns##11570 |goto 37.75,23.02
step
Escort Lurgglbr to Safety |q 11570/1 |goto 41.34,16.34
|tip Follow Lurgglbr and protect him as he walks.
|tip Let him get attacked first, otherwise he won't stop to help you fight.
|tip He eventually walks to this location outside the cave.
step
talk King Mrgl-Mrgl##25197
turnin Surrender... Not!##11566 |goto 43.50,13.97
turnin Escape from the Winterfin Caverns##11570 |goto 43.50,13.97
step
Follow the path up the cliffside |goto 42.64,12.41 < 15 |only if walking and subzone("Winterfin Retreat")
talk Imperean##25376
turnin Motes of the Enraged##11649 |goto 46.57,9.35
accept Return to the Spirit Talker##11629 |goto 46.57,9.35
step
talk Spirit Talker Snarlfang##25339
turnin Return to the Spirit Talker##11629 |goto 50.28,9.72
accept Vision of Air##11631 |goto 50.28,9.72
step
use Imperean's Primal##34779
Watch the dialogue
Divine Farseer Grimwalker's Fate |q 11631/1 |goto 50.22,9.73
step
talk Spirit Talker Snarlfang##25339
turnin Vision of Air##11631 |goto 50.28,9.72
accept Farseer Grimwalker's Spirit##11635 |goto 50.28,9.72
step
Enter the building |goto 49.53,10.16 < 10 |walk
talk Matron Magah##27069
|tip Inside the building.
home Bor'gorok Outpost |goto 49.67,10.19
step
talk Ortrosh##25374
|tip He walks around this area.
accept Revenge Upon Magmoth##11639 |goto 50.07,10.14
stickystart "Kill_Magmoth_Foragers"
stickystart "Kill_Magmoth_Shamans"
step
kill 3 Magmoth Crusher##25434 |q 11639/3 |goto 56.49,11.92
|tip They look like large blue magnataurs.
|tip You can find them all around the Magmoth area.
step
label "Kill_Magmoth_Foragers"
kill 5 Magmoth Forager##25429 |q 11639/2 |goto 54.99,13.12
|tip They look like brown kobolds holding torches.
|tip You can find them all around the Magmoth area. |notinsticky
stickystart "Kill_Mates_of_Magmothregar"
step
Enter the cave |goto 54.01,13.48 < 20 |walk
Jump down carefully into the water here |goto 54.80,12.34 < 10 |walk
Follow the path at the bottom of the cave |goto 56.34,11.35 < 30 |walk
talk Farseer Grimwalker's Spirit##25425
|tip He looks like an armored tauren ghost.
|tip Inside the cave, on the bottom floor.
|tip Kill the Magmoth Shamans to free Farseer Grimwalker's Spirit, so that you can talk to him.
turnin Farseer Grimwalker's Spirit##11635 |goto 56.17,9.11
accept Kaganishu##11637 |goto 56.17,9.11
step
kill Kaganishu##25427
|tip Inside the cave, on the bottom floor.
collect Kaganishu's Fetish##34781 |q 11637/2 |goto 56.19,12.77
step
use Kaganishu's Fetish##34781
|tip Use it on Farseer Grimwalker's Spirit.
|tip He looks like an armored tauren ghost.
|tip Inside the cave, on the bottom floor.
Set Farseer Grimwalker Free |q 11637/1 |goto 56.17,9.11
step
talk Farseer Grimwalker's Spirit##25425
|tip He looks like an armored tauren ghost.
|tip Inside the cave, on the bottom floor.
turnin Kaganishu##11637 |goto 56.17,9.11
accept Return My Remains##11638 |goto 56.17,9.11
step
click Farseer Grimwalker's Remains##187673
|tip It looks like a skeleton on the ground.
|tip Inside the cave, on the bottom floor.
collect Farseer Grimwalker's Remains##34773 |q 11638/1 |goto 56.17,9.11
step
label "Kill_Mates_of_Magmothregar"
kill 3 Mate of Magmothregar##25432 |q 11639/4 |goto 54.01,13.48
|tip They look like large blue magnataurs.
|tip All around inside the cave.
step
label "Kill_Magmoth_Shamans"
kill 10 Magmoth Shaman##25428 |q 11639/1 |goto 54.01,13.48
|tip They look like blue kobolds next to fire totems channeling an orange fire spell on objects.
|tip Inside and outside the cave. |notinsticky
|tip You can find them all around the Magmoth area. |notinsticky
step
use the Hearthstone##6948
Hearth to Bor'gorok Outpost |complete subzone("Bor'gorok Outpost") |q 11638
|only if subzone("Magmoth")
step
talk Ortrosh##25374
|tip Inside the building.
turnin Revenge Upon Magmoth##11639 |goto 49.55,9.98
He can also be found here [50.07,10.15]
step
talk Spirit Talker Snarlfang##25339
turnin Return My Remains##11638 |goto 50.28,9.72
step
talk Grunt Ragefist##25336
|tip She walks around this area.
turnin Report to Steeljaw's Caravan##11591 |goto 48.39,19.32
accept The Honored Dead##11593 |goto 48.39,19.32
accept Put Them to Rest##11594 |goto 48.39,19.32
step
talk Longrunner Proudhoof##25335
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait for him to respawn.
accept We Strike!##11592 |goto 48.32,19.76
stickystart "Torch_Fallen_Caravan_Guards_And_Workers"
stickystart "Lay_Taunka_Spirits_to_Rest"
step
Watch the dialogue
|tip Follow Longrunner Proudhoof and protect him as he walks.
|tip He eventually walks to this location.
kill Force-Commander Steeljaw##25359
Successfully Assist Longrunner Proudhoof's Assault |q 11592/1 |goto 49.50,26.52
step
label "Torch_Fallen_Caravan_Guards_And_Workers"
use Ragefist's Torch##34692
|tip Use it next to Dead Caravan Guards and Dead Caravan Workers.
|tip They look like armored corpses of various Horde races laying on the ground.
|tip You can find them all around the Steeljaw's Caravan area. |notinsticky
Torch #10# Fallen Caravan Guards & Workers |q 11593/1 |goto 49.36,24.54
step
label "Lay_Taunka_Spirits_to_Rest"
Kill enemies around this area
|tip They look like Tauren ghosts.
|tip You can find them all around the Steeljaw's Caravan area. |notinsticky
Lay #20# Taunka Spirits to Rest |q 11594/1 |goto 49.36,24.54
step
talk Grunt Ragefist##25336
|tip She walks around this area.
turnin The Honored Dead##11593 |goto 48.39,19.32
turnin Put Them to Rest##11594 |goto 48.39,19.32
step
talk Overlord Bor'gorok##25326
turnin We Strike!##11592 |goto 49.62,10.58
step
talk Librarian Garren##25291
turnin Monitoring the Rift: Winterfin Cavern##12728 |goto 44.98,33.38
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Northrend (70-80)\\Dragonblight (72-74)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Northrend (70-80)\\Grizzly Hills (74-75)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Northrend (70-80)\\Zul'Drak (75-76)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Northrend (70-80)\\Sholazar Basin (76-77)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Northrend (70-80)\\The Storm Peaks (77-79)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Northrend (70-80)\\Icecrown (79-80)")
