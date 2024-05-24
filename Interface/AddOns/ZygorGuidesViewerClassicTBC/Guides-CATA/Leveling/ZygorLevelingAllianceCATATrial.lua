local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingACATA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Startup Guide Wizard")
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms (1-60)\\Worgen (1-13)",{
author="support@zygorguides.com",
condition_suggested=function() return raceclass('Worgen') and not completedq(28517) and not raceclass('DEATHKNIGHT') end,
condition_suggested_exclusive=true,
condition_end=function() return completedq(28517) or raceclass('DEATHKNIGHT') end,
condition_valid=function() return raceclass('Worgen')  end,
condition_valid_msg="Worgen only.",
next="Leveling Guides\\Kalimdor (1-60)\\Darkshore (11-22)",
startlevel=1,
dynamic=true,
},[[
step
talk Prince Liam Greymane##34850
accept Lockdown!##14078 |goto Gilneas City 59.14,23.88
step
talk Lieutenant Walden##34863
turnin Lockdown!##14078 |goto 54.63,16.72
accept Something's Amiss##14091 |goto 54.63,16.72
step
talk Prince Liam Greymane##34913
turnin Something's Amiss##14091 |goto 59.82,22.18
accept All Hell Breaks Loose##14093 |goto 59.82,22.18
accept Evacuate the Merchant Square##14098 |goto 59.82,22.18
step
talk Gwen Armstead##34936
accept Salvage the Supplies##14094 |goto 59.56,26.78
stickystart "Collect_Salvaged_Supplies"
stickystart "Kill_Rampaging_Worgen"
step
click Merchant Square Door##195327+
|tip They look like the wooden doors of the buildings around this area.
Evacuate #3# Market Homes |q 14098/1 |goto 63.20,34.78
step
label "Collect_Salvaged_Supplies"
click Supply Crate##234563+
|tip They look like wooden crates on the ground around this area.
collect 4 Salvaged Supplies##46896 |q 14094/1 |goto 58.45,28.96
step
label "Kill_Rampaging_Worgen"
kill 6 Rampaging Worgen##34884 |q 14093/1 |goto 60.86,32.45
step
talk Gwen Armstead##34936
turnin Salvage the Supplies##14094 |goto 59.56,26.78
step
talk Prince Liam Greymane##34913
turnin All Hell Breaks Loose##14093 |goto 59.82,22.18
turnin Evacuate the Merchant Square##14098 |goto 59.82,22.18
accept Royal Orders##14099 |goto 59.82,22.18
step
talk Gwen Armstead##35840
turnin Royal Orders##14099 |goto 70.77,55.04
accept Your Instructor##14265 |goto 70.77,55.04					|only if Worgen Warrior
accept Someone's Looking for You##14269 |goto 70.77,55.04			|only if Worgen Rogue
accept Shady Associates##14273 |goto 70.77,55.04				|only if Worgen Warlock
accept Someone's Keeping Track of You##14275 |goto 70.77,55.04			|only if Worgen Hunter
accept Arcane Inquiries##14277 |goto 70.77,55.04				|only if Worgen Mage
accept Seek the Sister##14278 |goto 70.77,55.04					|only if Worgen Priest
accept The Winds Know Your Name... Apparently##14280 |goto 70.77,55.04		|only if Worgen Druid
step
talk Sergeant Cleese##35839
turnin Your Instructor##14265 |goto Gilneas City 67.56,64.27
accept Charge##14266 |goto Gilneas City 67.56,64.27 |noobsolete
|only if Worgen Warrior
step
talk Sergeant Cleese##35839
Learn Charge |q 14266/2 |goto 67.56,64.27
|only if Worgen Warrior
step
Practice Charge |q 14266/1 |goto 67.24,64.19
|tip Use your Charge ability on one of the Bloodfang Worgen.
|only if Worgen Warrior
step
talk Sergeant Cleese##35839
turnin Charge##14266 |goto 67.56,64.27
accept Safety in Numbers##14286 |goto 67.56,64.27 |noobsolete
|only if Worgen Warrior
step
talk Loren the Fence##35871
turnin Someone's Looking for You##14269 |goto Gilneas City 71.40,65.74
accept Eviscerate##14272 |goto Gilneas City 71.40,65.74 |noobsolete
|only if Worgen Rogue
step
talk Loren the Fence##35871
Learn Eviscerate |q 14272/2 |goto 71.40,65.74
|only if Worgen Rogue
step
Practice Eviscerate |q 14272/1 |goto 67.24,64.19
|tip Use your Sinister Strike ability on one of the Bloodfang Worgens, to build up combo points, then use your Eviscerate ability on it.
|only if Worgen Rogue
step
talk Loren the Fence##35871
turnin Eviscerate##14272 |goto 71.40,65.74
accept Safety in Numbers##14285 |goto 71.40,65.74 |noobsolete
|only if Worgen Rogue
step
talk Vitus Darkwalker##35869
turnin Shady Associates##14273 |goto Gilneas City 71.42,64.43
accept Immolate##14274 |goto Gilneas City 71.42,64.43 |noobsolete
|only if Worgen Warlock
step
talk Vitus Darkwalker##35869
Learn Immolate |q 14274/2 |goto 71.42,64.43
|only if Worgen Warlock
step
Practice Immolate |q 14274/1 |goto 67.24,64.19
|tip Use your Immolate ability on a Bloodfang Worgen.
|only if Worgen Warlock
step
talk Vitus Darkwalker##35869
turnin Immolate##14274 |goto 71.42,64.43
accept Safety in Numbers##14287 |goto 71.42,64.43 |noobsolete
|only if Worgen Warlock
step
talk Huntsman Blake##35874
turnin Someone's Keeping Track of You##14275 |goto Gilneas City 71.50,61.30
accept Steady Shot##14276 |goto Gilneas City 71.50,61.30 |noobsolete
|only if Worgen Hunter
step
talk Huntsman Blake##35874
Learn Steady Shot |q 14276/2 |goto 71.50,61.30
|only if Worgen Hunter
step
Practice Steady Shot #2# Times |q 14276/1 |goto 67.24,64.19
|tip Use your Steady Shot ability on a Bloodfang Worgen.
|only if Worgen Hunter
step
talk Huntsman Blake##35874
turnin Steady Shot##14276 |goto 71.50,61.30
accept Safety in Numbers##14290 |goto 71.50,61.30 |noobsolete
|only if Worgen Hunter
step
talk Myriam Spellwaker##35872
turnin Arcane Inquiries##14277 |goto Gilneas City 68.04,64.69
accept Arcane Missiles##14281 |goto Gilneas City 68.04,64.69 |noobsolete
|only if Worgen Mage
step
talk Myriam Spellwaker##35872
Learn Arcane Missiles |q 14281/2 |goto 68.04,64.69
|only if Worgen Mage
step
Practice Arcane Missiles |q 14281/1 |goto 67.24,64.19
|tip Use your Arcane Missiles ability on a Bloodfang Worgen.
|only if Worgen Mage
step
talk Myriam Spellwaker##35872
turnin Arcane Missiles##14281 |goto 68.04,64.69
accept Safety in Numbers##14288 |goto 68.04,64.69 |noobsolete
|only if Worgen Mage
step
talk Sister Almyra##35870
turnin Seek the Sister##14278 |goto Gilneas City 70.43,65.54
accept Flash Heal##14279 |goto Gilneas City 70.43,65.54 |noobsolete
|only if Worgen Priest
step
talk Sister Almyra##35870
Learn Flash Heal |q 14279/2 |goto 70.43,65.54
|only if Worgen Priest
step
Practice Flash Heal #2# Times |q 14279/1 |goto 70.75,66.77
|tip Use your Flash Heal ability on Wounded Guards.
|tip They look like soldiers kneeling around this area.
|only if Worgen Priest
step
talk Sister Almyra##35870
turnin Flash Heal##14279 |goto 70.43,65.54
accept Safety in Numbers##14289 |goto 70.43,65.54 |noobsolete
|only if Worgen Priest
step
talk Celestine of the Harvest##35873
turnin The Winds Know Your Name... Apparently##14280 |goto Gilneas City 70.18,65.89
accept A Rejuvenating Touch##14283 |goto Gilneas City 70.18,65.89 |noobsolete
|only if Worgen Druid
step
talk Celestine of the Harvest##35873
Learn Rejuvenation |q 14283/2 |goto 70.18,65.89
|only if Worgen Druid
step
Practice Rejuvenation |q 14283/1 |goto 70.75,66.77
|tip Use your Rejuvenation ability on Wounded Guards.
|tip They look like soldiers kneeling around this area.
|only if Worgen Druid
step
talk Celestine of the Harvest##35873
turnin A Rejuvenating Touch##14283 |goto 70.18,65.89
accept Safety in Numbers##14291 |goto 70.18,65.89 |noobsolete
|only if Worgen Druid
step
talk King Genn Greymane##35112
turnin Safety in Numbers##14286 |goto 65.79,77.68 |only if Worgen Warrior
turnin Safety in Numbers##14285 |goto 65.79,77.68 |only if Worgen Rogue
turnin Safety in Numbers##14287 |goto 65.79,77.68 |only if Worgen Warlock
turnin Safety in Numbers##14290 |goto 65.79,77.68 |only if Worgen Hunter
turnin Safety in Numbers##14288 |goto 65.79,77.68 |only if Worgen Mage
turnin Safety in Numbers##14289 |goto 65.79,77.68 |only if Worgen Priest
turnin Safety in Numbers##14291 |goto 65.79,77.68 |only if Worgen Druid
accept Old Divisions##14157 |goto 65.79,77.68
step
talk Lord Godfrey##35115
accept While You're At It##24930 |goto 65.29,77.61
stickystart "Kill_Bloodfang_Worgen"
step
Enter the building |goto 57.75,73.32 < 10 |walk
talk Captain Broderick##50371
|tip Inside the building.
turnin Old Divisions##14157 |goto 57.93,75.57
accept The Prison Rooftop##28850 |goto 57.93,75.57
step
talk Lord Darius Crowley##35077
|tip On top of the building.
|tip Run up the spiral staircase to reach him.
turnin The Prison Rooftop##28850 |goto 55.22,62.93
accept By the Skin of His Teeth##14154 |goto 55.22,62.93
step
Kill the enemies that attack in waves
|tip You will receive a buff that lets you know how much time is remaining.
Survive While Holding Back the Worgen for 2 Minutes |q 14154/1 |goto 55.22,62.93
step
talk Lord Darius Crowley##35077
|tip On top of the building.
turnin By the Skin of His Teeth##14154 |goto 55.22,62.93
accept Brothers In Arms##26129 |goto 55.22,62.93
step
label "Kill_Bloodfang_Worgen"
kill 5 Bloodfang Worgen##35118 |q 24930/1 |goto 60.77,70.91
step
talk Lord Godfrey##35115
turnin While You're At It##24930 |goto 65.29,77.61
step
talk King Genn Greymane##35112
turnin Brothers In Arms##26129 |goto 65.79,77.68
accept The Rebel Lord's Arsenal##14159 |goto 65.79,77.68 |noobsolete
step
Click the Cellar Door and enter the cellar |goto 55.70,81.57 < 7 |walk
talk Josiah Avery##35369
|tip Downstairs inside the cellar.
turnin The Rebel Lord's Arsenal##14159 |goto 56.76,85.44
step
talk Lorna Crowley##35378
|tip Downstairs inside the cellar.
accept From the Shadows##14204 |goto 56.87,81.44
step
kill 6 Bloodfang Lurker##35463 |q 14204/1 |goto 48.14,76.57
|tip Use the "Mastiff's Attack Lurker" ability on your pet action bar to help you find the Bloodfang Lurkers.
step
Enter the cellar |goto 55.94,81.48 < 7 |walk
talk Lorna Crowley##35378
|tip Downstairs inside the cellar.
turnin From the Shadows##14204 |goto 56.87,81.44
accept Message to Greymane##14214 |goto 56.87,81.44
step
talk King Genn Greymane##35550
|tip Leave the cellar.
turnin Message to Greymane##14214 |goto 59.23,83.75
accept Save Krennan Aranas##14293 |goto 59.23,83.75
step
_While Riding the Horse:_
Rescue Krennan Aranas |q 14293/1
|tip Spam the "Rescue Krennan" ability on your action bar when your horse takes a big leap.
|tip You should see Krennan Aranas dangling in a tree.
step
Return to Lord Godfrey |goto 56.49,78.26 < 15 |q 14293
step
talk Lord Godfrey##35906
turnin Save Krennan Aranas##14293 |goto 55.70,80.70
accept Time to Regroup##14294 |goto 55.70,80.70
step
Cross the bridge |goto 44.59,83.19 < 20 |only if walking
talk King Genn Greymane##35911
turnin Time to Regroup##14294 |goto 30.39,73.15
step
talk Lord Darius Crowley##35552
accept Sacrifices##14212 |goto 31.10,72.36
step
clicknpc Click Crowley's Horse##44429
Ride Crowley's Horse |invehicle |goto 31.28,72.66 |q 14212
step
_While Riding the Horse:_
Use the Throw Torch ability on Bloodfang Stalkers
|tip They will chase you.
Round Up #30# Bloodfang Stalkers |q 14212/1
step
Reach Tobias Mantle |goto 40.25,39.55 < 15 |q 14212
step
talk Tobias Mistmantle##35618
turnin Sacrifices##14212 |goto 40.55,39.42
accept By Blood and Ash##14218 |goto 40.55,39.42
step
clicknpc Rebel Cannon##35317
Control the Cannon |invehicle |goto 38.79,37.41 |q 14218
step
kill 80 Bloodfang Stalker##35229 |q 14218/1 |goto 37.66,35.58
|tip Use the "Rebel Cannon" ability on your action bar.
step
talk Tobias Mistmantle##35618
turnin By Blood and Ash##14218 |goto 40.55,39.42
accept Never Surrender, Sometimes Retreat##14221 |goto 40.55,39.42
step
Enter the building |goto 40.76,40.33 < 10 |walk
talk Lord Darius Crowley##35566
|tip Inside the building.
turnin Never Surrender, Sometimes Retreat##14221 |goto 48.93,52.77
accept Last Stand##14222 |goto 48.93,52.77
step
kill 8 Frenzied Stalker##35627 |q 14222/1 |goto 42.70,43.28
|tip Inside the building.
step
talk Lord Darius Crowley##35566
|tip Inside the building.
turnin Last Stand##14222 |goto 48.93,52.77
step
Watch the dialogue
talk King Genn Greymane##36332
accept Last Chance at Humanity##14375 |goto Gilneas 36.41,61.25
step
talk Lord Godfrey##36170
accept Among Humans Again##14313 |goto 36.51,62.26
step
Enter the building |goto 37.17,63.59 < 7 |walk
talk Krennan Aranas##36132
|tip Inside the building.
turnin Among Humans Again##14313 |goto 37.41,63.24
accept In Need of Ingredients##14320 |goto 37.41,63.24
step
click Crate of Mandrake Essence##196394
|tip It looks like a busted wooden box.
turnin In Need of Ingredients##14320 |goto 32.77,66.40
step
clicknpc Slain Watchman##36205
accept Invasion##14321 |goto 32.76,66.15
|tip You will be attacked.
step
Enter the building |goto 37.17,63.59 < 7 |walk
talk Gwen Armstead##34571
|tip Inside the building.
turnin Invasion##14321 |goto 37.41,63.35
accept Kill or Be Killed##14336 |goto 37.41,63.35
step
talk Prince Liam Greymane##36140
|tip He walks around this area.
turnin Kill or Be Killed##14336 |goto 35.45,66.44
accept Hold the Line##14347 |goto 35.45,66.44
accept You Can't Take 'Em Alone##14348 |goto 35.45,66.44
stickystart "Slay_Forsaken_Invaders"
step
click Black Gunpowder Kegs##196403+
|tip They look like brown barrels on the ground around this area.
collect Black Gunpowder Keg##49202 |n
use the Black Gunpowder Keg##49202
|tip Use it on Horrid Abominations.
|tip They look like big flesh monsters around this area.
Throw Gunpowder Kegs at #4# Horrid Abominations |q 14348/1 |goto 35.07,69.94
step
label "Slay_Forsaken_Invaders"
kill 10 Forsaken Invader##34511 |q 14347/1 |goto 35.07,69.94
step
talk Prince Liam Greymane##36140
|tip He walks around this area.
turnin Hold the Line##14347 |goto 35.45,66.44
turnin You Can't Take 'Em Alone##14348 |goto 35.45,66.44
accept Holding Steady##14366 |goto 35.45,66.44
step
Enter the building |goto 37.17,63.59 < 7 |walk
talk Gwen Armstead##34571
|tip Inside the building.
turnin Holding Steady##14366 |goto 37.41,63.35
accept The Allens' Storm Cellar##14367 |goto 37.41,63.35
step
Enter the cellar |goto 28.44,64.27 < 7 |walk
talk Lord Godfrey##36290
|tip Downstairs inside the cellar.
turnin The Allens' Storm Cellar##14367 |goto 28.97,63.93
accept Unleash the Beast##14369 |goto 28.97,63.93
accept Two By Sea##14382 |goto 28.97,63.93
step
talk Melinda Hammond##36291
|tip Downstairs inside the cellar.
accept Save the Children!##14368 |goto 28.93,64.02
stickystart "Slay_Forsaken_Combatants"
step
talk James##36289
|tip He walks around this area.
Rescue James |q 14368/3 |goto 28.58,66.75
step
Enter the building |goto 27.83,66.85 < 7 |walk
talk Ashley##36288
|tip Upstairs inside the building.
Rescue Ashley |q 14368/2 |goto 27.89,66.66
step
talk Cynthia##36287
Rescue Cynthia |q 14368/1 |goto 29.59,69.31
step
kill Forsaken Machinist##36292
clicknpc Forsaken Catapult##36283
Take Control of a Forsaken Catapult |invehicle |goto 26.24,70.70 |q 14382
step
_Aim at the Ship:_
Launch Yourself Onto the Deck of the Forsaken Ship |goto 24.68,75.90 < 30 |q 14382
|tip Use the "Launch" ability on your action bar.
step
kill Captain Anson##36397 |q 14382/1 |goto 23.77,74.70
|tip Downstairs in the ship, on the bottom floor.
step
kill Forsaken Machinist##36292
clicknpc Forsaken Catapult##36283
Take Control of a Forsaken Catapult |invehicle |goto 29.60,74.13 |q 14382
step
_Aim at the Ship:_
Launch Yourself Onto the Deck of the Forsaken Ship |goto 27.81,80.73 < 30 |q 14382
|tip Use the "Launch" ability on your action bar.
step
kill Captain Morris##36399 |q 14382/2 |goto 26.85,79.32
|tip Downstairs in the ship, on the bottom floor.
step
label "Slay_Forsaken_Combatants"
Kill Forsaken enemies around this area
Slay #8# Forsaken Combatants |q 14369/1 |goto 25.29,70.30
step
Enter the cellar |goto 28.44,64.27 < 7 |walk
talk Lord Godfrey##36290
|tip Downstairs inside the cellar.
turnin Unleash the Beast##14369 |goto 28.97,63.93
turnin Two By Sea##14382 |goto 28.97,63.93
step
talk Melinda Hammond##36291
|tip Downstairs inside the cellar.
turnin Save the Children!##14368 |goto 28.93,64.02
step
talk Lord Godfrey##36290
|tip Downstairs inside the cellar.
accept Leader of the Pack##14386 |goto 28.97,63.93
step
use the Mastiff Whistle##49240
|tip Use it near Dark Ranger Thyala.
kill Dark Ranger Thyala##36312 |q 14386/1 |goto 23.48,67.53
step
Run down the stairs |goto 28.44,64.27 < 7 |walk
talk Lord Godfrey##36290
|tip Downstairs inside the cellar.
turnin Leader of the Pack##14386 |goto 28.97,63.93
accept As the Land Shatters##14396 |goto 28.97,63.93
step
talk Prince Liam Greymane##36451
turnin As the Land Shatters##14396 |goto 29.04,65.04
accept Gasping for Breath##14395 |goto 29.04,65.04
step
clicknpc Drowning Watchman##36440+
|tip They look like humans underwater around this area.
Start Carrying a Drowning Watchman |havebuff Rescue Drowning Watchman##68735 |goto 27.26,69.77 |q 14395
step
Rescue the Drowning Watchman |q 14395/1 |goto 29.04,65.04 |count 1
|tip Bring him to this location.
step
clicknpc Drowning Watchman##36440+
|tip They look like humans underwater around this area.
Start Carrying a Drowning Watchman |havebuff Rescue Drowning Watchman##68735 |goto 27.26,69.77 |q 14395
step
Rescue the Drowning Watchman |q 14395/1 |goto 29.04,65.04 |count 2
|tip Bring him to this location.
step
clicknpc Drowning Watchman##36440+
|tip They look like humans underwater around this area.
Start Carrying a Drowning Watchman |havebuff Rescue Drowning Watchman##68735 |goto 27.26,69.77 |q 14395
step
Rescue the Drowning Watchman |q 14395/1 |goto 29.04,65.04 |count 3
|tip Bring him to this location.
step
clicknpc Drowning Watchman##36440+
|tip They look like humans underwater around this area.
Start Carrying a Drowning Watchman |havebuff Rescue Drowning Watchman##68735 |goto 27.26,69.77 |q 14395
step
Rescue the Drowning Watchman |q 14395/1 |goto 29.04,65.04 |count 4
|tip Bring him to this location.
step
talk Prince Liam Greymane##36451
turnin Gasping for Breath##14395 |goto 29.04,65.04
accept Evacuation##14397 |goto 29.04,65.04
step
talk Gwen Armstead##36452
turnin Evacuation##14397 |goto 37.63,65.23
accept Grandma Wahl##14398 |goto 37.63,65.23
accept The Hayward Brothers##14403 |goto 37.63,65.23
accept The Crowley Orchard##14406 |goto 37.63,65.23
step
talk Lorna Crowley##36457
turnin The Crowley Orchard##14406 |goto 37.68,72.75
accept The Hungry Ettin##14416 |goto 37.68,72.75
step
clicknpc Mountain Horse##36540
Ride a Mountain Horse |invehicle |goto 39.70,79.03 |q 14416
step
Round Up 5 Mountain Horses
|tip Use the "Round Up Horse" ability on your action bar.
|tip Round up 5 horses, so that they are following you.
|tip Be careful to avoid the elite Ettin walking around this area.
Rescue #5# Mountain Horses |q 14416/1 |goto 39.70,79.03
To rescue them, bring the horses to [37.68,72.75]
step
talk Lorna Crowley##36457
turnin The Hungry Ettin##14416 |goto 37.68,72.75
step
Enter the building |goto 32.57,75.85 < 7 |walk
talk Grandma Wahl##36458
|tip Inside the building.
turnin Grandma Wahl##14398 |goto 32.52,75.48
accept Grandma's Lost It Alright##14399 |goto 32.52,75.48
step
click Linen-Wrapped Book##196473
|tip It looks like a yellow book on the ground.
collect Linen-Wrapped Book##49280 |q 14399/1 |goto 33.96,77.37
step
Enter the building |goto 32.57,75.85 < 7 |walk
talk Grandma Wahl##36458
|tip Inside the building.
turnin Grandma's Lost It Alright##14399 |goto 32.52,75.48
accept I Can't Wear This##14400 |goto 32.52,75.48
step
click Grandma's Good Clothes##196472
|tip Outside the building.
collect Grandma's Good Clothes##49279 |q 14400/1 |goto 32.03,75.45
step
Enter the building |goto 32.57,75.85 < 7 |walk
talk Grandma Wahl##36458
|tip Inside the building.
turnin I Can't Wear This##14400 |goto 32.52,75.48
accept Grandma's Cat##14401 |goto 32.52,75.48
step
clicknpc Chance##36459
|tip It looks like a small orange cat.
kill Lucius the Cruel##36461
collect Chance the Cat##49281 |q 14401/1 |goto 35.16,74.82
step
Enter the building |goto 32.57,75.85 < 7 |walk
talk Grandma Wahl##36458
|tip Inside the building.
turnin Grandma's Cat##14401 |goto 32.52,75.48
step
talk Sebastian Hayward##36456
turnin The Hayward Brothers##14403 |goto 36.88,84.19
accept Not Quite Shipshape##14404 |goto 36.88,84.19
accept Washed Up##14412 |goto 36.88,84.19
stickystart "Slay_Forsaken_Castaways"
step
click Planks of Wood##196809
collect Planks of Wood##49338 |q 14404/2 |goto 36.10,86.49
step
Enter the building |goto 37.03,86.81 < 7 |walk
click Shipwright's Tools##196810
|tip It looks like a wooden tool carrier.
|tip Inside the building.
collect Shipwright's Tools##49337 |q 14404/1 |goto 37.46,87.15
step
click Barrel of Coal Tar##196808
|tip It looks like a brown barrel.
collect Coal Tar##49339 |q 14404/3 |goto 37.57,85.97
step
label "Slay_Forsaken_Castaways"
kill 6 Forsaken Castaway##36488 |q 14412/1 |goto 36.88,85.00
step
talk Sebastian Hayward##36456
turnin Not Quite Shipshape##14404 |goto 36.88,84.19
turnin Washed Up##14412 |goto 36.88,84.19
accept Escape By Sea##14405 |goto 36.88,84.19
step
talk Gwen Armstead##36452
turnin Escape By Sea##14405 |goto 37.63,65.23
accept To Greymane Manor##14465 |goto 37.63,65.23
step
Travel to Greymane Manor |goto 29.23,54.17 < 20 |q 14465 |notravel
step
Follow the path up and enter the building |goto 28.71,51.08 < 10 |walk
talk Queen Mia Greymane##36606
|tip Inside the building.
turnin To Greymane Manor##14465 |goto 28.13,50.03
accept The King's Observatory##14466 |goto 28.13,50.03
step
talk King Genn Greymane##36743
|tip At the top of the tower.
|tip Follow the path up the stairs and up into the tower.
turnin The King's Observatory##14466 |goto 26.44,46.91
accept Alas, Gilneas##14467 |goto 26.44,46.91
step
talk King Genn Greymane##36743
|tip At the top of the tower.
accept Exodus##24438 |goto 26.44,46.91
step
Run down the tower and leave the building |goto 28.71,51.08 < 10 |walk
clicknpc Stagecoach Carriage##44928
Begin Traveling to the Stagecoach Crash Site |invehicle |goto 28.88,54.19 |q 24438
step
Travel to the Stagecoach Crash Site |outvehicle |goto 51.60,80.19 |q 24438 |notravel
step
talk Prince Liam Greymane##37065
turnin Exodus##24438 |goto 51.81,80.49
accept Stranded at the Marsh##24468 |goto 51.81,80.49
step
kill Swamp Crocolisk##37078+
|tip They look like alligators.
|tip Kill the ones that are fighting with humans.
Rescue #5# Crash Survivors |q 24468/1 |goto 52.76,72.38
step
talk Prince Liam Greymane##37065
turnin Stranded at the Marsh##24468 |goto 51.81,80.49
accept Introductions Are in Order##24472 |goto 51.81,80.49
stickystart "Slay_Ogre_Minions"
step
Follow the path up |goto 50.81,83.32 < 15 |only if walking
click Koroth's Banner##201594
collect Koroth's Banner##49742 |q 24472/2 |goto 46.75,83.20
step
label "Slay_Ogre_Minions"
kill 4 Ogre Minion##36293 |q 24472/1 |goto 46.73,86.38
step
talk Prince Liam Greymane##37065
turnin Introductions Are in Order##24472 |goto 51.81,80.49
accept Stormglen##24483 |goto 51.81,80.49
step
Enter the building |goto 59.84,91.94 < 7 |walk
talk Gwen Armstead##37102
|tip Inside the building.
turnin Stormglen##24483 |goto 59.86,91.70
accept Pest Control##24484 |goto 59.86,91.70
step
talk Willa Arnes##38792
|tip Inside the building.
home Stormglen Village |goto 60.06,91.67 |q 24495 |future
step
talk Lorna Crowley##37815
|tip Inside the building.
accept Pieces of the Past##24495 |goto 60.26,91.85
stickystart "Kill_Vilebrood_Skitterers"
step
click Old Journal Page##201607+
|tip They look like pieces of paper laying on the ground and on boxes around this area.
collect 6 Old Journal Page##49760 |q 24495/1 |goto 65.03,90.82
step
label "Kill_Vilebrood_Skitterers"
kill 6 Vilebrood Skitterer##36813 |q 24484/1 |goto 65.03,90.82
|tip They look like spiders.
step
Enter the building |goto 59.84,91.94 < 7 |walk
talk Gwen Armstead##37102
|tip Inside the building.
turnin Pest Control##24484 |goto 59.86,91.70
accept Queen-Sized Troubles##24501 |goto 59.86,91.70
step
talk Lorna Crowley##37815
|tip Inside the building.
turnin Pieces of the Past##24495 |goto 60.26,91.85
step
kill Rygna##37045 |q 24501/1 |goto 68.35,81.66
step
Enter the building |goto 60.39,91.37 < 7 |walk
talk Gwen Armstead##37102
|tip Inside the building.
turnin Queen-Sized Troubles##24501 |goto 59.86,91.70
step
talk Lorna Crowley##37815
|tip Inside the building.
accept The Blackwald##24578 |goto 60.26,91.85
step
talk Belrysa Starbreeze##37822
|tip Inside the crumbled building.
turnin The Blackwald##24578 |goto 63.34,82.91
accept Losing Your Tail##24616 |goto 63.34,82.91
step
use Belrysa's Talisman##49944
|tip Use it to Break Free.
|tip Walk over the Freezing Trap lying in the road first.
kill Dark Scout##37953 |q 24616/1 |goto 63.96,81.28
step
talk Belrysa Starbreeze##37822
|tip Inside the crumbled building.
turnin Losing Your Tail##24616 |goto 63.35,82.91
accept Tal'doren, the Wild Home##24617 |goto 63.35,82.91
step
talk Lord Darius Crowley##37195
|tip Inside the hollow tree.
turnin Tal'doren, the Wild Home##24617 |goto 68.71,73.25
accept At Our Doorstep##24627 |goto 68.71,73.25
step
talk Vassandra Stormclaw##37873
|tip Inside the hollow tree.
accept Preparations##24628 |goto 69.30,72.97
stickystart "Kill_Howling_Banshees"
step
click Moonleaf##201914+
|tip They look like small plants at the base of trees around this area.
collect 6 Moonleaf##50017 |q 24628/1 |goto 60.54,76.46
step
label "Kill_Howling_Banshees"
kill 6 Howling Banshee##37757 |q 24627/1 |goto 60.54,76.46
step
talk Lord Darius Crowley##37195
|tip Inside the hollow tree.
turnin At Our Doorstep##24627 |goto 68.71,73.25
accept Take Back What's Ours##24646 |goto 68.71,73.25
step
talk Vassandra Stormclaw##37873
|tip Inside the hollow tree.
turnin Preparations##24628 |goto 69.30,72.97
step
Enter the building |goto 57.89,75.98 < 7 |walk
use the Horn of Tal'doren##50134
|tip Use it near the Veteran Dark Rangers.
|tip Allies will appear and start fighting them, allowing you to run inside the building.
click Worn Coffer##201939
|tip Inside the building.
collect Mysterious Artifact##10442 |q 24646/1 |goto 57.51,75.58
step
talk Lord Darius Crowley##37195
|tip Inside the hollow tree.
turnin Take Back What's Ours##24646 |goto 68.71,73.25
accept Neither Human Nor Beast##24593 |goto 68.71,73.25
step
click Well of Fury##201950
|tip Inside the hollow tree.
Activate the Well of Fury |q 24593/1 |goto 68.97,72.81
step
click Well of Tranquility##201951
|tip Inside the hollow tree.
Activate the Well of Tranquility |q 24593/2 |goto 69.25,73.10
step
click Well of Balance##201952
|tip Inside the hollow tree.
Activate the Well of Balance |q 24593/3 |goto 69.14,73.52
step
talk Lord Darius Crowley##37195
|tip Inside the hollow tree.
turnin Neither Human Nor Beast##24593 |goto 68.71,73.25
accept Return to Stormglen##24673 |goto 68.71,73.25
step
talk Gwen Armstead##37102
|tip Inside the building.
turnin Return to Stormglen##24673 |goto 59.86,91.71
accept Onwards and Upwards##24672 |goto 59.86,91.71
step
Follow the path up |goto 68.33,86.72 < 20 |only if walking
talk Krennan Aranas##37874
turnin Onwards and Upwards##24672 |goto 72.73,80.04
accept Betrayal at Tempest's Reach##24592 |goto 72.73,80.04
step
use Krennan's Potion of Stealth##50218
Become Stealthed |havebuff Stealth##70456 |goto 76.49,75.62 |q 24592
step
Cross the bridge |goto 82.65,69.20 < 20 |only if walking
kill Baron Ashbury##37735 |q 24592/1 |goto 85.29,74.27
|tip He walks around this area.
|tip Avoid the Mountain Mastiffs, they can still detect you and will attack.
|tip Use Krennan's Potion of Stealth again, if you accidentally lose stealth.
step
use Krennan's Potion of Stealth##50218
Become Stealthed |havebuff Stealth##70456 |q 24592
step
Cross the bridge |goto 84.11,72.74 < 20 |only if walking
Follow the road |goto 81.98,66.30 < 20 |only if walking
kill Lord Walden##37733 |q 24592/2 |goto 78.16,66.03
|tip He walks around this area and inside the building.
|tip Avoid the Mountain Mastiffs, they can still detect you and will attack.
|tip Use Krennan's Potion of Stealth again, if you accidentally lose stealth.
step
use Krennan's Potion of Stealth##50218
Become Stealthed |havebuff Stealth##70456 |q 24592
step
talk King Genn Greymane##37876
|tip Use Krennan's Potion of Stealth again, if you accidentally lose stealth.
turnin Betrayal at Tempest's Reach##24592 |goto 78.27,72.07
accept Flank the Forsaken##24677 |goto 78.27,72.07
step
talk Lord Hewell##38764
Tell him _"I need a horse."_
Borrow a Horse |invehicle |goto 78.33,71.88 |q 24677
step
Travel to Livery Outpost |outvehicle |goto 71.61,39.59 |q 24677 |notravel
step
talk Lorna Crowley##37783
turnin Flank the Forsaken##24677 |goto 70.87,39.84
accept Liberation Day##24575 |goto 70.87,39.84
step
talk Magda Whitewall##38143
accept Last Meal##24675 |goto 70.65,39.70
step
talk Marcus##37803
|tip He walks around this area.
accept Slaves to No One##24674 |goto 70.81,40.04
step
kill Brown Stag##37786+
collect 10 Side of Stag Meat##50219 |q 24675/1 |goto 73.04,44.20
You can find more around [76.85,44.98]
stickystart "Free_Enslaved_Gilneans"
step
Enter the mine |goto 76.42,31.20 < 7 |walk
kill Brothogg the Slavemaster##37802 |q 24674/1 |goto 80.33,32.15
|tip Inside the mine.
step
label "Free_Enslaved_Gilneans"
kill Forsaken Slavedriver##37701+
collect Slaver's Key##49881+ |n
click Ball and Chain##207079
|tip They look like silver balls attached to the Enslaved Villagers' legs inside the mine.
Free #5# Enslaved Gilnean |q 24575/1 |goto 75.30,31.60
step
Leave the mine |goto 76.42,31.20 < 7 |walk
talk Lorna Crowley##37783
turnin Liberation Day##24575 |goto 70.87,39.84
step
talk Magda Whitewall##38143
turnin Last Meal##24675 |goto 70.65,39.70
step
talk Marcus##37803
|tip He walks around this area.
turnin Slaves to No One##24674 |goto 70.81,40.04
step
talk Lorna Crowley##37783
accept Push Them Out##24676 |goto 70.87,39.84
stickystart "Slay_Forsaken_Infantry"
step
kill Executor Cornell##37686 |q 24676/2 |goto 72.85,28.42
step
kill Valnov the Mad##37685 |q 24676/3 |goto 74.15,27.38
step
label "Slay_Forsaken_Infantry"
kill 4 Forsaken Infantry##37692 |q 24676/1 |goto 73.49,29.14
step
talk Lorna Crowley##37783
turnin Push Them Out##24676 |goto 70.87,39.84
accept The Battle for Gilneas City##24904 |goto 70.87,39.84
step
Cross the bridge |goto 69.83,41.54 < 20 |only if walking
Enter Gilneas City |goto Gilneas City 65.36,21.36 < 20 |only if walking |notravel
Run down the stairs |goto Gilneas City 69.23,45.35 < 15 |only if walking
clicknpc Damaged Catapult##38377
|tip Follow your allies and help them fight.
Take Control of the Damaged Catapult |invehicle |goto 60.11,77.28 |q 24904
step
kill Gorerot##38331
|tip Use the "Fiery Boulder" ability on your action bar.
|tip He walks around this area.
Click Here After Gorerot is Killed |confirm |goto 59.43,68.75 |q 24904
step
Follow your allies and cross the bridge |goto 44.61,83.08 < 15 |only if walking
use the Rapier of the Gilnean Patriots##50334
|tip Use it to heal your Allies around this area.
kill Soultethered Banshee##38473+
|tip Kill the Soultethered Banshees to damage Lady Sylvanas Windrunner.
kill Lady Sylvanas Windrunner##38469
Complete the Battle for Gilneas City |q 24904/1 |goto 36.12,62.62
step
Enter the building |goto 36.65,59.25 < 7 |walk
talk Lorna Crowley##38611
|tip Inside the building.
turnin The Battle for Gilneas City##24904 |goto 38.59,60.23
accept The Hunt For Sylvanas##24902 |goto 38.59,60.23
step
Watch the dialogue
|tip Follow Tobias Mistmantle
Hunt for Sylvanas |q 24902/1 |goto 45.08,52.46
|tip Inside the building.
step
Leave the cathedral |goto 40.71,40.25 < 7 |walk
Enter the building |goto 39.03,59.75 < 7 |walk
talk Lorna Crowley##38611
|tip Inside the building.
turnin The Hunt For Sylvanas##24902 |goto 38.59,60.23
accept Vengeance or Survival##24903 |goto 38.59,60.23
step
Enter the building |goto 32.01,58.23 < 7 |walk
talk King Genn Greymane##38539
|tip Inside the building.
turnin Vengeance or Survival##24903 |goto 32.36,57.01
accept Slowing the Inevitable##24920 |goto 32.36,57.01
step
clicknpc Captured Riding Bat##38540
Ride the Captured Riding Bat |invehicle |goto 30.27,60.95 |q 24920
stickystart "Slay_Invading_Forsaken"
step
kill 6 Forsaken Catapult##38287 |q 24920/1 |goto Gilneas 55.52,32.28 |notravel
|tip Use the "Iron Bomb" ability on your action bar.
|tip While flying on the bat.
step
label "Slay_Invading_Forsaken"
kill 40 Invading Forsaken##38364 |q 24920/2 |goto Gilneas/0 55.52,32.28 |notravel
|tip Use the "Iron Bomb" ability on your action bar. |notinsticky
|tip While flying on the bat. |notinsticky
step
Return to Greymane Court |outvehicle |goto Gilneas City 30.27,60.95 |q 24920 |notravel
|tip Use the "Fly Back" ability on your action bar.
step
Enter the building |goto 32.01,58.23 < 7 |walk
talk King Genn Greymane##38539
|tip Inside the building.
turnin Slowing the Inevitable##24920 |goto 32.36,57.01
accept Knee-Deep##24678 |goto 32.36,57.01
step
Run down the stairs into the tunnel beneath the building |goto 34.01,57.38 < 5 |walk
Run up the ramp inside the tunnel |goto Gilneas 52.32,55.57 < 15 |walk
Run up the stairs to leave the tunnel |goto Gilneas 49.87,57.20 < 7 |walk
use the Half-Burnt Torch##50220
|tip Use it repeatedly to keep the rats and spiders from attacking you.
talk Krennan Aranas##38144
turnin Knee-Deep##24678 |goto Gilneas 49.82,56.93
accept Laid to Rest##24602 |goto Gilneas 49.82,56.93
step
click Disturbed Soil##201871+
|tip They look like piles of brown dirt on the ground around this area.
collect 5 Unearthed Memento##49921 |q 24602/1 |goto 48.29,55.48
step
talk Krennan Aranas##38144
turnin Laid to Rest##24602 |goto 49.82,56.93
accept Patriarch's Blessing##24679 |goto 49.82,56.93
step
use the Blessed Offerings##51956
Place the Offering |q 24679/1 |goto 48.87,53.05
step
talk Krennan Aranas##38144
turnin Patriarch's Blessing##24679 |goto 49.82,56.93
accept Keel Harbor##24680 |goto 49.82,56.93
step
talk Lord Darius Crowley##38149
turnin Keel Harbor##24680 |goto 41.93,37.63
accept They Have Allies, But So Do We##24681 |goto 41.93,37.63
step
clicknpc Glaive Thrower##38150
Take Control of a Glaive Thrower |invehicle |goto 42.41,37.81 |q 24681
stickystart "Slay_Wolfmaw_Outriders"
stickystart "Kill_Orc_Raiders"
step
kill 4 Orcish War Machine##37921 |q 24681/3 |goto 26.95,32.33
|tip They look like wooden siege vehicles spread out around this area.
|tip Use the abilities on your action bar.
step
label "Slay_Wolfmaw_Outriders"
kill 8 Wolfmaw Outrider##37938 |q 24681/2 |goto 33.93,36.89
|tip They look like enemies riding wolves.
|tip Use the abilities on your action bar. |notinsticky
step
label "Kill_Orc_Raiders"
kill 40 Orc Raider##37916 |q 24681/1 |goto 33.93,36.89
|tip Use the abilities on your action bar. |notinsticky
step
Return to Keel Harbor |goto 39.39,37.99 < 20 |q 24681
step
Release Control of the Glaive Thrower |outvehicle |q 24681
|tip Click the arrow on your action bar.
step
talk Lord Darius Crowley##38149
turnin They Have Allies, But So Do We##24681 |goto 41.93,37.63
step
talk Lorna Crowley##43727
accept Endgame##26706 |goto 41.65,36.51
step
Watch the dialogue
clicknpc Hippogryph##43747
|tip It may take a while before it becomes clickable.
Ride the Hippogryph |invehicle |goto 41.65,36.18 |q 26706
step
Watch the dialogue
|tip Click the Coiled Rope to be lowered down, then follow and protect Lorna Crowley.
|tip She will go to the bottom level of the gunship and plant explosives.
kill Korm Bonegrind##43567
Destroy the Gunship |q 26706/1
step
Return to Keel Harbor |goto 42.65,38.26 < 20 |q 26706 |notravel
step
talk Lorna Crowley##43727
turnin Endgame##26706 |goto 41.65,36.51
step
talk Admiral Nightwind##36616
accept Rut'theran Village##14434 |goto 42.59,35.95
step
talk Krennan Aranas##42968
accept The Howling Oak##28517 |goto Teldrassil 55.23,89.18
step
talk Genn Greymane##48736
|tip Inside the hollow tree.
turnin The Howling Oak##28517 |goto Darnassus 48.13,14.42
accept Breaking Waves of Change##26385 |goto Darnassus 48.13,14.42
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Mount Hyjal (80-82)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Vashj'ir (80-82)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Deepholm (82-83)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Uldum (83-84)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Twilight Highlands (84-85)")
