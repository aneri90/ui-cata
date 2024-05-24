local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("EventsA") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Brewfest Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return completedq(12491) end,
description="This guide section will walk you through completing the quests for the Brewfest event.",
},[[
step
talk Ipfelkofer Ironkeg##24710
accept Welcome to Brewfest!##11442 |goto Dun Morogh/0 48.01,39.83
step
talk Boxey Boltspinner##27215
accept Chug and Chuck!##12022 |goto Dun Morogh/0 47.56,39.84
step
click Alcohol-Free Brewfest Sampler##186189+
|tip They look like mugs of beer on the small tables inside this tent.
collect Alcohol-Free Brewfest Sampler##33096 |n
use the Alcohol-Free Brewfest Sampler##33096
|tip Face yourself towards the Self-Turning and Oscillating Utility Target behind the tent.
Hit the S.T.O.U.T. #5# Times |q 12022/1 |goto 47.62,39.66
step
talk Boxey Boltspinner##27215
turnin Chug and Chuck!##12022 |goto 47.56,39.84
step
talk Neill Ramstein##23558
accept Now This is Ram Racing... Almost.##11318 |goto 46.57,40.30
step
As you run around on the ram:
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds.
|tip To make the ram Trot for 8 seconds, use the Giddyup! ability every 2 seconds or so.
Maintain a Trot for 8 seconds |q 11318/1
step
As you run around on the ram:
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds.
|tip To make the ram Canter for 8 seconds, use the Ram Racing Reins a little more often than when you made the ram Trot.
Maintain a Canter for 8 seconds |q 11318/2
step
As you run around on the ram:
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds.
|tip To make the ram Gallop, just spam the Ram Racing Reins.
Maintain a Gallop for 8 seconds |q 11318/3
step
Stop Riding the Ram |nobuff Rental Racing Ram##43883 |q 11318
|tip Right-click the "Rental Racing Ram" buff on your buff bar.
step
talk Neill Ramstein##23558
turnin Now This is Ram Racing... Almost.##11318 |goto 46.57,40.30
accept There and Back Again##11122 |goto 46.57,40.30
step
map Dun Morogh/0
path follow strictbounce; loop off; ants curved; dist 25
path	46.30,41.49	46.98,43.64	47.49,45.10	47.19,48.15	47.42,49.21
path	46.36,51.10	46.47,53.89
Follow the waypoint path:
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100 between buckets.
|tip Ride over buckets of apples to refresh your Ram's fatigue level.
Flynn Firebrew will throw you a keg when you get close
Once you have a keg, run back and turn it in to Pol Amberstill
|tip Just get near him and you will throw the keg to him.
Deliver 3 Kegs in Under 4 Minutes |q 11122/1
|tip If you lose your ram, return to Neill Ramstein to acquire another.
step
Stop Riding the Ram |nobuff Ramstein's Swift Work Ram##43880 |q 11122
|tip Right-click the "Ramstein's Swift Work Ram" buff on your buff bar.
step
talk Neill Ramstein##23558
turnin There and Back Again##11122 |goto 46.57,40.30
step
talk Pol Amberstill##24468
accept Say, There Wouldn't Happen to be a Souvenir This Year, Would There?##12193 |goto 46.43,40.31 |or
|tip This quest is not always available.
Click Here if this Quest Is Not Offered |confirm |or
step
talk Belbi Quikswitch##23710
turnin Say, There Wouldn't Happen to be a Souvenir This Year, Would There?##12193 |goto 49.27,39.59
|only if haveq(12193) or completedq(12193)
step
talk Goldark Snipehunter##23486
accept Catch the Wild Wolpertinger!##11117 |goto 48.01,39.47
step
talk Goldark Snipehunter##23486
Ask him _"What if I don't like drinking... is there another way I can help out?"_
Tell him _"I'd like a pair of Synthebrew Goggles."_
collect Synthebrew Goggles##46735 |goto 48.01,39.47 |q 11117
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11117
step
clicknpc Wild Wolpertinger##23487+
use the Wolpertinger Net##32907
|tip Use it on Wild Wolpertingers.
|tip They look like small rabbits with antlers and wings running around on the ground around this area.
collect 5 Stunned Wolpertinger##32906 |q 11117/1 |goto 47.64,40.14
step
Equip your Helm |complete not goaltype("equipped",{targetid=46735}) |q 11117
|tip Remove the Synthebrew Goggles and re-equip your helm.
step
talk Goldark Snipehunter##23486
turnin Catch the Wild Wolpertinger!##11117 |goto 48.01,39.47
accept Pink Elekks On Parade##11118 |goto 48.01,39.47
step
Go to Elwynn Forest |goto Elwynn Forest/0 33.59,51.44 < 100 |c |q 11118
|tip Go to this spot before you equip the goggles.
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11118
step
use the Elekk Dispersion Ray##32960
|tip Use it on Elwynn Pink Elekks around this area.
|tip They look like pink elephants with four horns around this area.
kill 3 Elwynn Pink Elekk##23507 |q 11118/2 |goto 33.59,51.44
step
Equip your Helm |complete not goaltype("equipped",{targetid=46735}) |q 11118
|tip Remove the Synthebrew Goggles and re-equip your helm.
step
Go to Darnassus |goto Darnassus/0 67.12,35.28 < 100 |c |q 11118
|tip Go to this spot before you equip the goggles.
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11118
step
use the Elekk Dispersion Ray##32960
|tip Use it on Teldrassil Pink Elekks around this area.
|tip They look like pink elephants with four horns around this area.
kill 3 Teldrassil Pink Elekk##23527 |q 11118/3 |goto Darnassus/0 67.12,35.28
step
Equip your Helm |complete not goaltype("equipped",{targetid=46735}) |q 11118
|tip Remove the Synthebrew Goggles and re-equip your helm.
step
Go to The Exodar |goto The Exodar/0 79.18,57.47 < 100 |c |q 11118
|tip Go to this spot at the entrance to The Exodar before you equip the goggles.
step
Equip the Synthebrew Goggles |equipped Synthebrew Goggles##46735 |q 11118
step
use the Elekk Dispersion Ray##32960
|tip Use it on Azuremyst Pink Elekks around this area.
|tip They look like pink elephants with four horns around this area.
kill 3 Azuremyst Pink Elekk##23528 |q 11118/1 |goto The Exodar/0 79.18,57.47
step
Equip your Helm |complete not goaltype("equipped",{targetid=46735}) |q 11118
|tip Remove the Synthebrew Goggles and re-equip your helm.
step
talk Goldark Snipehunter##23486
turnin Pink Elekks On Parade##11118 |goto Dun Morogh/0 48.01,39.47
step
Reach Level 65 |ding 65
|tip Coren Direbrew is level 72 elite.
step
talk Darna Honeybock##27584
accept Save Brewfest!##12318 |goto 45.86,52.69
|tip This quest is elite and will require a group.
step
Enter the Blackrock Depths Dungeon with your Group |goto Blackrock Depths/0 0,0 |q 12062 |future
step
talk Brewfest Spy##26719
|tip After defeating the Dark Iron ambush, interact with the Mole Machine Consoles at the beginning of the dungeon.
|tip Inside the Grim Guzzler in the Blackrock Depths dungeon.
turnin Save Brewfest!##12318
accept Insult Coren Direbrew##12062
|tip This quest is elite and will require a group.
step
talk Coren Direbrew##23872
|tip Inside the Grim Guzzler in the Blackrock Depths dungeon.
turnin Insult Coren Direbrew##12062
|tip This quest is elite and will require a group.
step
kill Coren Direbrew##23872
|tip Form a group and travel to the Blackrock Depths dungeon.
|tip Someone with the daily quest "Insult Coren Direbrew" can talk to him to make him hostile.
|tip This quest is available in the Grim Guzzler in Blackrock Depths.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Brewfest Dailies",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Brewfest") end,
description="This guide section will walk you through completing the daily quests for the Brewfest event.",
},[[
step
Complete the "Brewfest Quests" Guide |complete completedq(11122)
step
label "Begin_Dailies"
talk Neill Ramstein##23558
Ask him _"Do you still need some help shipping kegs from Kharanos?"_
Begin the Keg Run |havebuff Ramstein's Swift Work Ram##43880 |goto Dun Morogh/0 46.57,40.30
step
map Dun Morogh/0
path follow strictbounce; loop off; ants curved; dist 25
path	46.30,41.49	46.98,43.64	47.49,45.10	47.19,48.15	47.42,49.21
path	46.36,51.10	46.47,53.89
Follow the waypoint path:
use the Ram Racing Reins##33306
|tip Alternate between Canter and Gallop as needed to keep your fatigue below 100 between buckets.
|tip Ride over buckets of apples to refresh your Ram's fatigue level.
Flynn Firebrew will throw you a keg when you get close
Once you have a keg, run back and turn it in to Pol Amberstill
|tip Just get near him and you will throw the keg to him.
Deliver as Many Kegs as you Can 4 Minutes |nobuff Ramstein's Swift Work Ram##43880
|tip If you lose your ram, return to Neill Ramstein to acquire another.
step
talk Becan Barleybrew##23627
accept Bark for the Barleybrews!##11293 |goto Dun Morogh/0 49.01,39.81 |or
talk Daran Thunderbrew##23628
accept Bark for the Thunderbrews!##11294 |goto 56.00,38.06 |or
|tip You will only be able to accept one of these quests per day.
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
Ride your ram into Ironforge |goto Ironforge/0 15.98,84.87 < 30 |c |q 11293
|only if haveq(11293)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
Ride your ram into Ironforge |goto Dun Morogh/0 60.60,33.17 |noway |c |q 11294
|only if haveq(11294)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark Outside the Bank |q 11293/1 |goto Ironforge/0 31.76,66.83
|only if haveq(11293)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark in the Military Ward |q 11293/2 |goto 61.12,80.00 |notravel
|only if haveq(11293)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark in the Hall of Explorers |q 11293/3 |goto 65.54,24.24 |notravel
|only if haveq(11293)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark in the Mystic Ward |q 11293/4 |goto 29.46,14.44 |notravel
|only if haveq(11293)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark Outside the Bank |q 11294/1 |goto 31.76,66.83
|only if haveq(11294)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark in the Military Ward |q 11294/2 |goto 61.12,80.00 |notravel
|only if haveq(11294)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark in the Hall of Explorers |q 11294/3 |goto 65.54,24.24 |notravel
|only if haveq(11294)
step
use the Ram Racing Reins##33306
|tip The ram runs slow by default.
|tip Keep a Trot pace most of the time and only Canter occasionally.
|tip Your ram will become exhausted if you go too fast.
|tip Ride around the outer ring of Ironforge.
Bark in the Mystic Ward |q 11294/4 |goto 29.46,14.44 |notravel
|only if haveq(11294)
step
Stop Riding the Ram |nobuff Rental Racing Ram##43883
|tip Right-click the "Rental Racing Ram" buff on your buff bar.
step
talk Becan Barleybrew##23627
turnin Bark for the Barleybrews!##11293 |goto Dun Morogh/0 49.01,39.81
|only if haveq(11293)
step
talk Daran Thunderbrew##23628
turnin Bark for the Thunderbrews!##11294 |goto 56.58,36.91
|only if haveq(11294)
step
Wait for the Dark Iron Defense event to start
|tip This even occurs every 30 minutes.
|tip You have to defend the three kegs at these locations in order to complete it.
click Complimentary Brewfest Sampler##186189+ |goto 48.58,39.91
click Complimentary Brewfest Sampler##186189+ |goto 48.21,39.03
use the Alcohol-Free Brewfest Sampler##33096
|tip Use it to throw it at the Dark Iron Dwarves and the Mole Machines around this area.
click Dark Iron Mole Machine Wreckage##189989
|tip It looks like a big metal gear laying on ground in the middle of the festival.
|tip It appears after the Dark Iron dwarves attack the Brewfest festival, so you may have to wait for it to appear.
accept This One Time, When I Was Drunk...##12020 |goto 48.69,39.13 |or
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
step
talk Boxey Boltspinner##27215
turnin This One Time, When I Was Drunk...##12020 |goto 47.56,39.85
step
Reach Level 65 |ding 65 |or
|tip Coren Direbrew is level 72 elite.
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
step
talk Darna Honeybock##27584
accept Save Brewfest!##12318 |goto 45.86,52.69 |or
|tip This quest is elite and will require a group.
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
step
Enter the Blackrock Depths Dungeon with your Group |goto Blackrock Depths/0 0,0 |q 12062 |future |or
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
step
talk Brewfest Spy##26719
|tip After defeating the Dark Iron ambush, interact with the Mole Machine Consoles at the beginning of the dungeon.
|tip Inside the Grim Guzzler in the Blackrock Depths dungeon.
turnin Save Brewfest!##12318 |or
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
step
talk Brewfest Spy##26719
|tip Inside the Grim Guzzler in the Blackrock Depths dungeon.
accept Insult Coren Direbrew##12062 |or
|tip This quest is elite and will require a group.
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
step
talk Coren Direbrew##23872
|tip Inside the Grim Guzzler in the Blackrock Depths dungeon.
turnin Insult Coren Direbrew##12062 |or
|tip This quest is elite and will require a group.
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
step
kill Coren Direbrew##23872
|tip Form a group and travel to the Blackrock Depths dungeon.
|tip Someone with the daily quest "Insult Coren Direbrew" can talk to him to make him hostile.
|tip This quest is available in the Grim Guzzler in Blackrock Depths.
Click Here to Continue |confirm |or
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies" |or
step
You have completed the available daily quests
|tip This guide will reset when more become available.
'|complete not completedq(11293,11294,12020) |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Brew of the Month",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(2796) end,
description="Join the Brew of the Month club.",
},[[
step
collect 200 Brewfest Prize Token##37829 |or
|tip These are earned by doing Brewfest Dailies.
Load the "Brewfest Dailies" Guide |confirm |loadguide "Events Guides\\Brewfest\\Brewfest Dailies"
|tip Click the line above to load the guide.
'|complete achieved(2796) |or
step
talk Belbi Quikswitch##23710
buy "Brew of the Month" Club Membership Form##37736 |goto Dun Morogh/0 49.27,39.59 |or
'|complete achieved(2796) |or
step
use the "Brew of the Month" Club Membership Form##37736
accept Brew of the Month Club##12420
step
Enter the building |goto Ironforge/0 20.67,53.21 < 5 |walk
talk Larkin Thunderbrew##27478
|tip Inside the building.
turnin Brew of the Month Club##12420 |goto 18.77,53.29
step
Earn the "Brew of the Month" Achievement |achieve 2796
step
_Congratulations!_
You Earned the "Brew of the Month" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Brew of the Year",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(1183) end,
description="Sample the following beers featured in the Brew of the Month club:\n\nBinary Brew\nAutumnal Acorn Ale\n"..
"Bartlett's Bitter Brew\nLord of Frost's Private Label\nWild Winter Pilsner\nIzzard's Ever Flavor\nAromatic Honey Brew\n"..
"Metok's Bubble Bock\nSpringtime Stout\nBlackrock Lager\nStranglethorn Brew\nDraenic Pale Ale",
},[[
step
collect 200 Brewfest Prize Token##37829 |or
|tip These are earned by doing Brewfest Dailies.
Load the "Brewfest Dailies" Guide |confirm |loadguide "Events Guides\\Brewfest\\Brewfest Dailies"
|tip Click the line above to load the guide.
'|complete achieved(2796) |or
step
talk Belbi Quikswitch##23710
buy "Brew of the Month" Club Membership Form##37736 |goto Dun Morogh/0 49.27,39.59 |or
'|complete achieved(2796) |or
step
use the "Brew of the Month" Club Membership Form##37736
accept Brew of the Month Club##12420
step
Enter the building |goto Ironforge/0 20.67,53.21 < 5 |walk
talk Larkin Thunderbrew##27478
|tip Inside the building.
turnin Brew of the Month Club##12420 |goto 18.77,53.29
step
collect Binary Brew##37496 |or
|tip This brew will be in your mailbox for the month of September.
'|complete achieved(1183,5) |or
step
use the Binary Brew##37496
Drink September's Brew |achieve 1183/5
step
collect Autumnal Acorn Ale##37497 |or
|tip This brew will be in your mailbox for the month of October.
'|complete achieved(1183,4) |or
step
use the Autumnal Acorn Ale##37497
Drink October's Brew |achieve 1183/4
step
collect Bartlett's Bitter Brew##37498 |or
|tip This brew will be in your mailbox for the month of November.
'|complete achieved(1183,3) |or
step
use Bartlett's Bitter Brew##37498
Drink November's Brew |achieve 1183/3
step
collect Lord of Frost's Private Label##37499 |or
|tip This brew will be in your mailbox for the month of December.
'|complete achieved(1183,2) |or
step
use Lord of Frost's Private Label##37499
Drink December's Brew |achieve 1183/2
step
collect Wild Winter Pilsner##37488 |or
|tip This brew will be in your mailbox for the month of January.
'|complete achieved(1183,1) |or
step
use the Wild Winter Pilsner##37488
Drink January's Brew |achieve 1183/1
step
collect Izzard's Ever Flavor##37489 |or
|tip This brew will be in your mailbox for the month of February.
'|complete achieved(1183,8) |or
step
use the Izzard's Ever Flavor##37489
Drink February's Brew |achieve 1183/8
step
collect Aromatic Honey Brew##37490 |or
|tip This brew will be in your mailbox for the month of March.
'|complete achieved(1183,11) |or
step
use the Aromatic Honey Brew##37490
Drink March's Brew |achieve 1183/11
step
collect Metok's Bubble Bock##37491 |or
|tip This brew will be in your mailbox for the month of April.
'|complete achieved(1183,12) |or
step
use Metok's Bubble Bock##37491
Drink April's Brew |achieve 1183/12
step
collect Springtime Stout##37492 |or
|tip This brew will be in your mailbox for the month of May.
'|complete achieved(1183,9) |or
step
use the Springtime Stout##37492
Drink May's Brew |achieve 1183/9
step
collect Blackrock Lager##37493 |or
|tip This brew will be in your mailbox for the month of June.
'|complete achieved(1183,6) |or
step
use the Blackrock Lager##37493
Drink June's Brew |achieve 1183/6
step
collect Stranglethorn Brew##37494 |or
|tip This brew will be in your mailbox for the month of July.
'|complete achieved(1183,10) |or
step
use the Stranglethorn Brew##37494
Drink July's Brew |achieve 1183/10
step
collect Draenic Pale Ale##37495 |or
|tip This brew will be in your mailbox for the month of August.
'|complete achieved(1183,7) |or
step
use the Draenic Pale Ale##37495
Drink August's Brew |achieve 1183/7
step
Earn the "Brew of the Year" Achievement |achieve 1183
|tip This achievment requires you to drink a new brew every month for a year.
step
_Congratulations!_
You Earned the "Brew of the Year" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Direbrewfest",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(295) end,
description="Kill Coren Direbrew.",
},[[
step
talk Brewfest Spy##26719
|tip Inside the dungeon to the right of the entrance, a Mole Machine console will take you to the bar.
|tip The Brewfewst Spy is located in the bar.
accept Insult Coren Direbrew##12062 |goto Blackrock Depths/0 0.00,0.00 |or
'|complete achieved(295) |or
step
talk Coren Direbrew##23872
|tip Coren Direbrew is located in the bar.
|tip He will attack you after turnin this quest in.
turnin Insult Coren Direbrew##12062 |or
'|complete achieved(295) |or
step
kill Coren Direbrew##23872
Earn the "Direbrewfest" Achievement |achieve 295
step
_Congratulations!_
You Earned the "Direbrewfest" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Disturbing the Peace",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(293) end,
description="While wearing 3 pieces of Brewfest clothing, get completely smashed and dance in Dalaran.",
},[[
step
collect 350 Brewfest Prize Token##37829 |or
|tip These are earned by doing Brewfest Dailies.
Load the "Brewfest Dailies" Guide |confirm |loadguide "Events Guides\\Brewfest\\Brewfest Dailies"
|tip Click the line above to load the guide.
'|complete achieved(293) |or
step
talk Belbi Quikswitch##23710
collect Blue Brewfest Hat##33968 |goto Dun Morogh/0 49.27,39.59 |or
collect Purple Brewfest Hat##33969 |goto 49.27,39.59 |or
collect Green Brewfest Hat##33967 |goto 49.27,39.59 |or
collect Brown Brewfest Hat##33864 |goto 49.27,39.59 |or
|tip Purchase one of these from the vendor.
|tip It will require 50 Brewfest Coins.
'|complete achieved(293) |or
step
talk Belbi Quikswitch##23710
collect Brewfest Dress##33863 |goto 49.27,39.59 |or
collect Brewfest Regalia##33862 |goto 49.27,39.59 |or
|tip Purchase one of these from the vendor.
|tip It will require 200 Brewfest Coins.
'|complete achieved(293) |or
step
talk Belbi Quikswitch##23710
collect Brewfest Boots##33868 |goto 49.27,39.59 |or
collect Brewfest Slippers##33966 |goto 49.27,39.59 |or
|tip Purchase one of these from the vendor.
|tip It will require 100 Brewfest Coins.
'|complete achieved(293) |or
step
talk Arille Azuregaze##29049
|tip Inside the building.
buy 5 Caraway Burnwine##40042 |goto Dalaran/1 48.54,37.44 |or
'|complete achieved(293) |or
step
Equip the Blue Brewfest Hat |equipped Blue Brewfest Hat##33968 |goto Dalaran/1 50.58,48.36 |only if default |or
Equip the Purple Brewfest Hat |equipped Purple Brewfest Hat##33969 |goto 50.58,48.36 |only if itemcount(33969) >= 1 |or
Equip the Green Brewfest Hat |equipped Green Brewfest Hat##33967 |goto 50.58,48.36 |only if itemcount(33967) >= 1 |or
Equip the Brown Brewfest Hat |equipped Brown Brewfest Hat##33864 |goto 50.58,48.36 |only if itemcount(33864) >= 1 |or
'|complete achieved(293) |or
step
Equip the Brewfest Dress |equipped Brewfest Dress##33863 |goto 50.58,48.36 |only if default |or
Equip the Brewfest Regalia |equipped Brewfest Regalia##33862 |goto 50.58,48.36 |only if itemcount(33862) >= 1 |or
'|complete achieved(293) |or
step
Equip the Brewfest Boots |equipped Brewfest Boots##33868 |goto 50.58,48.36 |only if default |or
Equip the Brewfest Slippers |equipped Brewfest Slippers##33966 |goto 50.58,48.36 |only if itemcount(33966) >= 1 |or
'|complete achieved(293) |or
step
use the Caraway Burnwine##40042
|tip Use them all until you are "Completely Smashed."
Dance in Dalaran |script DoEmote("Dance")
Earn the "Disturbing the Peace" Achievement |achieve 293 |goto 50.58,48.36
step
_Congratulations!_
You Earned the "Disturbing the Peace" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Does Your Wolpertinger Linger?",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(1936) end,
description="Obtain a Wolpertinger pet.",
},[[
step
talk Belbi Quikswitch##23710
buy Wolpertinger's Tankard##32233 |goto Dun Morogh/0 49.27,39.59 |or
'|complete achieved(1936) |or
step
use the Wolpertinger's Tankard##32233
Earn the "Does Your Wopertinger Linger?" Achievement |achieve 1936
step
_Congratulations!_
You Earned the "Does Your Wolpertinger Linger?" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Down With The Dark Iron",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(1186) end,
description="Defend the Brewfest camp from the Dark Iron attack and complete the quest, \"This One Time, When I Was Drunk...\"",
},[[
step
Wait for the Dark Iron Defense event to start
|tip This even occurs every 30 minutes.
|tip You have to defend the three kegs at these locations in order to complete it.
click Complimentary Brewfest Sampler##186189+ |goto Dun Morogh/0 48.58,39.91
click Complimentary Brewfest Sampler##186189+ |goto 48.21,39.03
use the Alcohol-Free Brewfest Sampler##33096
|tip Use it to throw it at the Dark Iron Dwarves and the Mole Machines around this area.
click Dark Iron Mole Machine Wreckage##189989
|tip It looks like a big metal gear laying on ground in the middle of the festival.
|tip It appears after the Dark Iron dwarves attack the Brewfest festival, so you may have to wait for it to appear.
accept This One Time, When I Was Drunk...##12020 |goto 48.69,39.13 |or
'|complete achieved(1186) |or
step
talk Boxey Boltspinner##27215
turnin This One Time, When I Was Drunk...##12020 |goto 47.56,39.85 |or
'|complete achieved(1186) |or
step
Earn the "Down With The Dark Iron" Achievement |achieve 1186
step
_Congratulations!_
You Earned the "Down With The Dark Iron" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Drunken Stupor",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(1260) end,
description="Fall 65 yards without dying while completely smashed during the Brewfest Holiday.",
},[[
step
talk Kylene##19186
|tip Walking around the building.
buy 5 Flagon of Dwarven Honeymead##2594 |goto Shattrath City/0 75.11,32.27 |or
'|complete achieved(1260) |or
step
use Flagon of Dwarven Honeymead##2594
|tip Use them until you are "Completely Smashed" before jumping.
Earn the "Drunken Stupor" Achievement |achieve 1260 |goto Shattrath City/0 50.22,62.42
|tip You must fall at least 65 yards and not die to receive this achievement.
|tip From this point, run off the edge and miss the platform below, landing on the ground.
|tip You must do this while "Completely Smashed" drunk.
|tip Paladin "Divine Shield" and Mage "Ice Block" allow you to earn this without risk of fall damage.
step
_Congratulations!_
You Earned the "Drunken Stupor" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Have Keg, Will Travel",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(303) end,
description="Obtain a Brewfest mount, or transform yours into one using Brewfest Hops.",
},[[
step
collect 2 Brewfest Prize Token##37829 |or
|tip These are earned by doing Brewfest Dailies.
Load the "Brewfest Dailies" Guide |confirm |loadguide "Events Guides\\Brewfest\\Brewfest Dailies"
|tip Click the line above to load the guide.
'|complete achieved(303) |or
step
Reach Level 20 |ding 20
|tip You must be level 20 to complete this achievement.
|tip Use the leveling guides to accomplish this.
step
talk Belbi Quikswitch##23710
buy Fresh Brewfest Hops##37750 |goto Dun Morogh/0 49.27,39.59 |or
|tip You will need 2 Brewfest Prize Tokens to purchase this.
'|complete achieved(303) |or
step
use the Fresh Brewfest Hops##37750
|tip Mount up and use the hops to make your mount festive.
Earn the "Have Keg, Will Travel" Achievement |achieve 303
step
_Congratulations!_
You Earned the "Have Keg, Will Travel" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\Strange Brew",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(1184) end,
description="Drink the following Brewfest beers:\n\nThunderbrew Stout\nThunderbrew Ale\nThunder 45\n"..
"Barleybrew Dark\nBarleybrew Light\nBarleybrew Clear\nOgre Mead\nMudder's Milk\nGordok Grog",
},[[
step
talk Thunderbrew Apprentice##23510
buy Thunderbrew Stout##33033 |goto Dun Morogh/0 49.47,38.76 |achieve 1184
buy Thunderbrew Ale##33032 |goto 49.47,38.76 |achieve 1184
buy Thunder 45##33031 |goto 49.47,38.76 |achieve 1184
step
talk Barleybrew Apprentice##23482
buy Barleybrew Dark##33029 |goto 48.94,39.84 |achieve 1184
buy Barleybrew Light##33028 |goto 48.94,39.84 |achieve 1184
buy Barleybrew Clear##33030 |goto 48.94,39.84 |achieve 1184
step
talk Gordok Brew Apprentice##23511
buy Ogre Mead##33035 |goto 48.35,38.44 |achieve 1184
buy Mudder's Milk##33036 |goto 48.35,38.44 |achieve 1184
buy Gordok Grog##33034 |goto 48.35,38.44 |achieve 1184
step
use the Thunderbrew Stout##33033
Drink Some Thunderbrew Stout |achieve 1184/2
step
use the Thunderbrew Ale##33032
Drink Some Thunderbrew Ale |achieve 1184/4
step
use the Thunder 45##33031
Drink Some Thunder 45 |achieve 1184/9
step
use the Barleybrew Dark##33029
Drink Some Barleybrew Dark |achieve 1184/1
step
use the Barleybrew Light##33028
Drink Some Barleybrew Light |achieve 1184/8
step
use the Barleybrew Clear##33030
Drink Some Barleybrew Clear |achieve 1184/3
step
use the Ogre Mead##33035
Drink Some Ogre Mead |achieve 1184/5
step
use the Mudder's Milk##33036
Drink Some Mudder's Milk |achieve 1184/6
step
use the Gordok Grog##33034
Drink Some Gordok Grog |achieve 1184/7
step
Earn the "Strange Brew" Achievement |achieve 1184
step
_Congratulations!_
You Earned the "Strange Brew" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Achievements\\The Brewfest Diet",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Brewfest") end,
condition_end=function() return achieved(1185) end,
description="Eat all 8 of the following Brewfest foods:\n\nSucculent Sausage\nDried Sausage\nPickled Sausage\n"..
"Savory Sausage\nSpiced Onion Cheese\nSpicy Smoked Sausage\nThe Essential Brewfest Pretzel\nThe Golden Link",
},[[
step
talk Keiran Donoghue##23481
buy Succulent Sausage##34064 |goto Dun Morogh/0 48.90,38.16 |achieve 1185
buy Dried Sausage##34063 |goto 48.90,38.16 |achieve 1185
buy Pickled Sausage##33024 |goto 48.90,38.16 |achieve 1185
buy Savory Sausage##33023 |goto 48.90,38.16 |achieve 1185
buy Spicy Smoked Sausage##33025 |goto 48.90,38.16 |achieve 1185
buy The Golden Link##33026 |goto 48.90,38.16 |achieve 1185
step
talk Anne Summers##23521
buy Spiced Onion Cheese##34065 |goto 49.34,39.47 |achieve 1185
step
talk Arlen Lochlan##23522
buy The Essential Brewfest Pretzel##33043 |goto 48.45,39.96 |achieve 1185
step
use The Essential Brewfest Pretzel##33043
Eat The Essential Brewfest Pretzel |achieve 1185/2
step
use the Spiced Onion Cheese##34065
Eat Some Spiced Onion Cheese |achieve 1185/4
step
use the Dried Sausage##34063
Eat Some Dried Sausage |achieve 1185/7
step
use the Succulent Sausage##34064
Eat Some Succulent Sausage |achieve 1185/8
step
use the Savory Sausage##33023
Eat Some Savory Sausage |achieve 1185/5
step
use the Pickled Sausage##33024
Eat Some Pickled Sausage |achieve 1185/6
step
use the Spicy Smoked Sausage##33025
Eat Some Spicy Smoked Sausage |achieve 1185/3
step
use the The Golden Link##33026
Eat The Golden Link |achieve 1185/1
step
Earn "The Brewfest Diet" Achievement |achieve 1185
step
_Congratulations!_
You Earned "The Brewfest Diet" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Children's Week Stormwind Quests",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the Stormwind questline for the Children's Week event.",
condition_suggested=function() return isevent("Children's Week") end,
condition_end=function() return completedq(171) end,
startlevel=10,
},[[
step
talk Orphan Matron Nightingale##14450
accept Children's Week##1468 |goto Stormwind City/0 56.31,54.00
step
use the Human Orphan Whistle##18598
_Next to you:_
talk Human Orphan##14305
turnin Children's Week##1468
accept Cruisin' the Chasm##29093
accept The Biggest Diamond Ever!##29106
accept Malfurion Has Returned!##29107
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
|tip This quest is currently bugged and not properly completing.
clicknpc Rental Chopper##52189
Jump in the Chopper |invehicle |q 29093 |goto Westfall/0 57.76,53.04
step
Watch the dialogue
|tip This quest is currently bugged and not properly completing.
Take a Chopper Tour of the Raging Chasm |q 29093/1
step
Run down the ramp |goto Ironforge/0 44.16,51.94 < 5 |walk
Run up the stairs |goto Ironforge/0 40.20,47.07 < 5 |walk
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
Visit King Magni in Old Ironforge |q 29106/1 |goto 33.27,47.81
step
use the Human Orphan Whistle##18598
Visit Malfurion Stormrage with your Orphan |q 29107/1 |goto Darnassus/0 43.14,77.91
|tip Upstairs inside the Temple of the Moon.
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
_Next to you:_
talk Human Orphan##14305
turnin The Biggest Diamond Ever!##29106
turnin Cruisin' the Chasm##29093
turnin Malfurion Has Returned!##29107
accept Let's Go Fly a Kite##29117
accept You Scream, I Scream...##29119
step
talk Craggle Wobbletop##52358
|tip He walks around the Trade District canal.
buy 1 Dragon Kite 2-Pack##68890 |q 29117 |goto Stormwind City/0 57.33,65.64
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
use the Dragon Kite 2-Pack##68890
Fly Dragon Kites with Your Orphan |q 29117/1
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
_Next to you:_
talk Human Orphan##14305
turnin Let's Go Fly a Kite##29117
step
talk Hans Coldhearth##52421
buy 1 Cone of Cold##69027 |q 29119 |goto 48.97,89.74
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
use Cone of Cold##69027
Take Your Orphan Out for Ice Cream |q 29119/1
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
_Next to you:_
talk Human Orphan##14305
turnin You Scream, I Scream...##29119
accept A Warden of the Alliance##171
step
talk Craggle Wobbletop##52358
|tip He walks around the Trade District canal.
buy 1 Foam Sword Rack##69057 |q 171/1 |goto 57.33,65.64
step
talk Orphan Matron Nightingale##51988
turnin A Warden of the Alliance##171 |goto 56.31,54.00
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Children's Week Shattrath Quests",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the Shattrath questline for the Children's Week event.",
condition_suggested=function() return isevent("Children's Week") end,
condition_end=function() return completedq(10966) end,
startlevel=10,
},[[
step
talk Orphan Matron Mercy##22819
accept Children's Week##10943 |goto Shattrath City/0 75.08,47.90
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan.
_Next to you:_
talk Draenei Orphan##22818
turnin Children's Week##10943 |goto 75.08,47.90
accept Auchindoun and the Ring of Observance##10950 |goto 75.08,47.90
accept A Trip to the Dark Portal##10952 |goto 75.08,47.90
accept Jheel is at Aeris Landing!##10954 |goto 75.08,47.90
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
Take Dornaa to Aeris Landing |q 10954/1 |goto Nagrand/0 31.47,57.49
step
talk Jheel##22836
turnin Jheel is at Aeris Landing!##10954 |goto 31.49,57.61
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
Take Dornaa to the Ring of Observance |q 10950/1 |goto Terokkar Forest/0 39.90,64.69
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
_Next to you:_
talk Draenei Orphan##22818
turnin Auchindoun and the Ring of Observance##10950 |goto 39.90,64.69
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
Take Dornaa to the Dark Portal |q 10952/1 |goto Hellfire Peninsula/0 88.68,50.22
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
_Next to you:_
talk Draenei Orphan##22818
turnin A Trip to the Dark Portal##10952 |goto 88.68,50.22
accept The Seat of the Naaru##10956 |goto 88.68,50.22
accept Time to Visit the Caverns##10962 |goto 88.68,50.22
step
Enter the cave |goto Tanaris/0 65.09,49.93 < 15 |walk
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
Take Dornaa to the Caverns of Time |q 10962/2 |goto Tanaris/0 59.92,57.11
|tip Down inside caverns of time in front of Zaladormu.
step
talk Alurmi##21643
buy 1 Toy Dragon##31951 |q 10962/1 |goto 63.00,57.31
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
_Next to you:_
talk Draenei Orphan##22818
turnin Time to Visit the Caverns##10962
step
Follow the path |goto The Exodar/0 63.31,41.65 < 10 |only if walking
Run down the ramp |goto 59.68,33.99 < 10 |only if walking
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
Take Dornaa to the Seat of the Naaru |q 10956/1 |goto 57.59,41.21
step
talk O'ros##17538
turnin The Seat of the Naaru##10956
accept Call on the Farseer##10968 |goto 57.94,41.42
step
Run up the ramp |goto 54.69,36.29 < 10 |only if walking
Run up the ramp |goto 26.97,29.79 < 7 |only if walking
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
Take Dornaa to Farseer Nobundo |q 10968/1 |goto 31.09,28.11
step
talk Farseer Nobundo##17204
|tip He walks around this area.
turnin Call on the Farseer##10968 |goto 30.82,30.80
step
use the Draenei Orphan Whistle##31881
|tip Use it to summon your Draenei Orphan, if needed.
_Next to you:_
talk Draenei Orphan##22818
accept Back to the Orphanage##10966
step
talk Orphan Matron Mercy##22819
turnin Back to the Orphanage##10966 |goto Shattrath City/0 75.08,47.90
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Children's Week Dalaran Quests",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the Dalaran questline for the Children's Week event.",
condition_suggested=function() return isevent("Children's Week") end,
condition_end=function() return completedq(28880) or completedq(13960) or completedq(13959) or completedq(28879) end,
startlevel=10,
},[[
step
talk Orphan Matron Aria##34365
accept Little Orphan Roo Of The Oracles##13926 |goto Dalaran/1 49.36,63.26 |noautoaccept |or
accept Little Orphan Kekek Of The Wolvar##13927 |goto Dalaran/1 49.36,63.26 |noautoaccept |or
|tip You can only complete one of these quests.
|tip The one you choose will determine what questline you complete.
|tip Choose Oracles or Wolvar.
|noautoaccept
step
talk Orphan Matron Aria##34365
Choose _<Ask about the orphans.>_
Speak to Orphan Matron Aria |q 13926/1 |goto 49.36,63.26
|only if haveq(13926) or completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan.
_Next to you:_
talk Oracle Orphan##33533
turnin Little Orphan Roo Of The Oracles##13926 |goto 49.36,63.26
|only if haveq(13926) or completedq(13926)
step
talk Orphan Matron Aria##34365
Choose _<Ask about the orphans.>_
Speak to Orphan Matron Aria |q 13927/1 |goto 49.35,63.25
|only if haveq(13927) or completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan.
_Next to you:_
talk Wolvar Orphan##33532
turnin Little Orphan Kekek Of The Wolvar##13927 |goto 49.35,63.25
|only if haveq(13927) or completedq(13927)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan.
_Next to you:_
talk Oracle Orphan##33533
accept The Biggest Tree Ever!##13929 |goto 49.36,63.26
accept The Bronze Dragonshrine##13933 |goto 49.36,63.26
accept Playmates!##13950 |goto 49.36,63.26
|only if completedq(13926)
step
Follow the path |goto Grizzly Hills/0 50.39,46.40 < 10 |only if walking
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
|tip Wait a moment for your orphan to speak.
Take Roo to Visit Grizzlemaw |q 13929/1 |goto 50.68,44.09
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
turnin The Biggest Tree Ever!##13929 |goto 50.68,44.09
|only if completedq(13926)
step
Follow the path |goto Dragonblight/0 69.66,46.14 < 10 |only if walking
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
Take Roo to Visit the Bronze Dragonshrine |q 13933/1 |goto 71.11,41.10
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
turnin The Bronze Dragonshrine##13933 |goto 71.11,41.10
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
Take Roo to Visit Winterfin Retreat |q 13950/1 |goto Borean Tundra/0 43.55,13.65
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
turnin Playmates!##13950 |goto 43.55,13.65
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
accept The Dragon Queen##13954 |goto 43.55,13.65
accept Meeting a Great One##13956 |goto 43.55,13.65
|only if completedq(13926)
step
Step into the light |goto Sholazar Basin/0 40.35,83.11
|tip You might need to actually land on the platform to teleport.
Teleport to Un'Goro Crater |goto Un'Goro Crater/0 |c |noway
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
Take Roo to Visit The Etymidian |q 13956/1 |goto Un'Goro Crater/0 47.60,9.17
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
turnin Meeting a Great One##13956 |goto 47.60,9.17
|only if completedq(13926)
step
Step into the light |goto Un'Goro Crater/0 50.53,7.75
|tip You might need to actually land on the platform to teleport.
Teleport to Sholazar Basin |goto Sholazar Basin/0 |c |noway
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
|tip She is at the top of Wyrmrest Temple.
Take Roo to Visit Alexstrasza the Life-Binder |q 13954/1 |goto Dragonblight/0 59.84,54.59
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
turnin The Dragon Queen##13954 |goto 59.84,54.59
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
accept A Trip To The Wonderworks##13937 |goto 59.84,54.59
|only if completedq(13926)
step
talk Jepetto Joybuzz##29478
|tip Inside the building.
buy 1 Small Paper Zeppelin##46693 |q 13937 |goto Dalaran/1 44.82,45.63
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
use the Small Paper Zeppelin##46693
|tip Use it on your Oracle Orphan.
Throw the Small Paper Zeppelin to Roo |q 13937/1 |goto 44.82,45.63
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
turnin A Trip To The Wonderworks##13937 |goto 44.82,45.63
|only if completedq(13926)
step
use the Oracle Orphan Whistle##46397
|tip Use it to summon your Oracle Orphan, if needed.
_Next to you:_
talk Oracle Orphan##33533
accept Back To The Orphanage##28879 |goto 44.82,45.63 |or
accept Back To The Orphanage##13959 |goto 44.82,45.63 |or
|tip You will only be able to accept one quest.
|only if completedq(13926)
step
talk Orphan Matron Aria##34365
turnin Back To The Orphanage##28879 |goto 49.35,63.25 |only if haveq(28879) or completedq(28879)
turnin Back To The Orphanage##13959 |goto 49.35,63.25 |only if haveq(13959) or completedq(13959)
|only if completedq(13926)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan.
_Next to you:_
talk Wolvar Orphan##33532
accept Home Of The Bear-Men##13930 |goto 49.35,63.25
accept The Bronze Dragonshrine##13934 |goto 49.35,63.25
accept Playmates!##13951 |goto 49.35,63.25
|only if completedq(13927)
step
Follow the path |goto Grizzly Hills/0 50.39,46.40 < 10 |only if walking
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
|tip Wait a moment for your orphan to speak.
Take Kekek to Visit Grizzlemaw |q 13930/1 |goto 50.68,44.09
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
turnin Home Of The Bear-Men##13930 |goto 50.68,44.09
|only if completedq(13927)
step
Follow the path |goto Dragonblight/0 69.66,46.14 < 10 |only if walking
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
Take Kekek to Visit the Bronze Dragonshrine |q 13934/1 |goto 71.11,41.10
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
turnin The Bronze Dragonshrine##13934 |goto 71.11,41.10
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
Take Kekek to Visit Snowfall Glade |q 13951/1 |goto Dragonblight/0 45.28,63.29
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
turnin Playmates!##13951 |goto 45.28,63.29
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
accept The Dragon Queen##13955 |goto 45.28,63.29
accept The Mighty Hemet Nesingwary##13957 |goto 45.28,63.29
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
|tip She is at the top of Wyrmrest Temple.
Take Kekek to Visit Alexstrasza the Life-Binder |q 13955/1 |goto Dragonblight/0 59.84,54.59
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
turnin The Dragon Queen##13955 |goto 59.84,54.59
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
Take Kekek to Visit Hemet Nesingwary |q 13957/1 |goto Sholazar Basin/0 27.13,59.23
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
turnin The Mighty Hemet Nesingwary##13957 |goto 27.13,59.23
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
accept A Visit To The Wonderworks##13938 |goto 27.13,59.23
|only if completedq(13927)
step
Run up the stairs |goto Dalaran/1 41.92,47.99 < 5 |only if walking
Enter the building |goto 43.27,45.30 < 5 |walk
talk Jepetto Joybuzz##29478
|tip Inside the building.
buy 1 Small Paper Zeppelin##46693 |q 13938 |goto 44.82,45.63
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
use Small Paper Zeppelin##46693
|tip Use it on your Wolvar Orphan.
Throw the Small Paper Zeppelin to Kekek |q 13938/1 |goto 44.82,45.63
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
turnin A Visit To The Wonderworks##13938 |goto 44.82,45.63
|only if completedq(13927)
step
use the Wolvar Orphan Whistle##46396
|tip Use it to summon your Wolvar Orphan, if needed.
_Next to you:_
talk Wolvar Orphan##33532
accept Back To The Orphanage##28880 |goto 44.82,45.63 |or
accept Back To The Orphanage##13960 |goto 44.82,45.63 |or
|tip You will only be able to accept one quest.
|only if completedq(13927)
step
Leave the building |goto 43.17,45.17 < 3 |walk
talk Orphan Matron Aria##34365
turnin Back To The Orphanage##28880 |goto 49.35,63.25 |only if haveq(28880) or completedq(28880)
turnin Back To The Orphanage##13960 |goto 49.35,63.25 |only if haveq(13960) or completedq(13960)
|only if completedq(13927)
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Achievements\\Aw, Isn't It Cute?",{
author="support@zygorguides.com",
description="Obtain one of the Children's Week reward pets through questing.",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1792},
patch='30009',
startlevel=10,
},[[
leechsteps "Events Guides\\Children's Week\\Children's Week Shattrath Quests" 1-17
step
_Congratulations!_
You Earned the "Aw, Isn't It Cute?" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Achievements\\Bad Example",{
author="support@zygorguides.com",
description="Eat the following sweets while your orphan is watching:\n\nTigule's Strawberry Ice Cream\n"..
"Tasty Cupcake\nRed Velvet Cupcake\nDelicious Chocolate Cake\nLovely Cake Slice\nDalaran Brownie\nDalran Doughnut",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1788},
patch='30002',
startlevel=10,
},[[
step
talk Orphan Matron Nightingale##14450
Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Human Orphan Whistle##18598 |achieve 1793 |goto Stormwind City/0 56.32,53.99
step
talk Emmithue Smails##14481
buy 1 Tigule's Strawberry Ice Cream##7228 |achieve 1788 |goto Stormwind City/0 61.30,75.02
step
talk Auctioneer Fitch##8719
|tip Purchase the follow items from the Auction House, or use your Cooking ability to create them.
collect 1 Tasty Cupcake##43490 |achieve 1788 |goto 61.16,70.78
collect 1 Delicious Chocolate Cake##33924 |achieve 1788 |goto 61.16,70.78
step
talk Aimee##29548
buy 1 Red Velvet Cupcake##42429 |achieve 1788 |goto Dalaran/1 51.17,29.07
buy 1 Lovely Cake##42438 |achieve 1788 |goto 51.17,29.07
buy 1 Dalaran Doughnut##42430 |achieve 1788 |goto 51.17,29.07
buy 1 Dalaran Brownie##42431 |achieve 1788 |goto 51.17,29.07
step
use the Lovely Cake##42438
|tip Use it to place a cake on the ground.
click Lovely Cake
collect 1 Lovely Cake Slice##42434 |achieve 1788
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
use Tigule's Strawberry Ice Cream##7228
Eat Tigule's Strawberry Ice Cream |achieve 1788/1
step
use the Tasty Cupcake##43490
Eat Tasty Cupcake |achieve 1788/2
step
use the Red Velvet Cupcake##42429
Eat Red Velvet Cupcake |achieve 1788/3
step
use the Delicious Chocolate Cake##33924
Eat Delicious Chocolate Cake |achieve 1788/4
step
use the Lovely Cake Slice##42434
Eat Lovely Cake Slice |achieve 1788/5
step
use the Dalaran Brownie##42431
Eat Dalaran Brownie |achieve 1788/6
step
use the Dalaran Doughnut##42430
Eat Dalaran Doughnut |achieve 1788/7
step
|achieve 1788
step
_Congratulations!_
You Earned the "Bad Example" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Achievements\\Daily Chores",{
author="support@zygorguides.com",
description="Complete five daily quests with your orphan out.",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1789},
patch='30003',
startlevel=10,
},[[
step
talk Orphan Matron Nightingale##14450
Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Human Orphan Whistle##18598 |achieve 1793 |goto Stormwind City/0 56.32,53.99
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
Complete any 5 daily quests of your choice:
|tip World Quests do not count for this achievement.
|tip Use the various daily quest guides to complete this.
|tip Make sure your orphan is standing next to you when turning in the daily quests, or you won't get credit for this achievement.
|achieve 1789
step
_Congratulations!_
You Earned the "Daily Chores" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Achievements\\Hail To The King, Baby",{
author="support@zygorguides.com",
description="Defeat King Ymiron in Utgarde Pinnacle with your orphan out.",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1790},
patch='30002',
startlevel=10,
},[[
step
talk Orphan Matron Nightingale##14450
Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Human Orphan Whistle##18598 |achieve 1793 |goto Stormwind City/0 56.32,53.99
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
kill King Ymiron##26861
|tip Inside the Utgarde Pinnacle dungeon.
|tip He's the final boss of the instance.
|achieve 1790 |goto Utgarde Pinnacle/2 42.60,53.50
step
_Congratulations!_
You Earned the "Hail To The King, Baby" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Achievements\\Home Alone",{
author="support@zygorguides.com",
description="Use your Hearthstone while your orphan is with you.",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1791},
patch='30002',
startlevel=10,
},[[
step
talk Orphan Matron Nightingale##14450
Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Human Orphan Whistle##18598 |achieve 1793 |goto Stormwind City/0 56.32,53.99
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
use Hearthstone##6948
|tip Use it while your Orphan is standing next to you.
|achieve 1791
step
_Congratulations!_
You Earned the "Home Alone" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Achievements\\School of Hard Knocks",{
author="support@zygorguides.com",
description="Take your orphan into the battlegrounds and complete the feats listed below:\n\nCapture the flag "..
"in Eye of the Storm\nAssault a flag in Arathi Basin\nAssault a tower in Alterac Valley\nReturn a "..
"fallen flag in Warsong Gulch",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1786},
patch='30002',
startlevel=10,
},[[
step
talk Orphan Matron Nightingale##14450
Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Human Orphan Whistle##18598 |achieve 1793 |goto Stormwind City/0 56.32,53.99
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
|tip Enter the Eye of the Storm battleground and capture the flag.
Capture the flag in Eye of the Storm |achieve 1786/1
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
|tip Enter the Alterac Valley battleground and assault a tower.
Assault a Tower in Alterac Valley |achieve 1786/2
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
|tip Enter the Arathi Basin battleground and assault a flag.
Assault a Flag in Arathi Basin |achieve 1786/3
step
use the Human Orphan Whistle##18598
|tip Use it to summon your Human Orphan, if needed.
|tip Enter the Warsong Gulch battleground and return a fallen flag.
Return a fallen Flag in Warsong Gulch |achieve 1786/4
step
_Congratulations!_
You Earned the "School of Hard Knocks" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Achievements\\Veteran Nanny",{
author="support@zygorguides.com",
description="Acquire Egbert's Egg, Sleepy Willy, and Elekk Training Collar on a single character.",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={275},
patch='30001',
startlevel=10,
},[[
step
This achievement takes three years to complete
|tip You must do the following questline once each year on the same character.
|tip Ensure that you only choose Egbert's Egg, Sleepy Willy, and the Elekk Training Collar as rewards.
|confirm
leechsteps "Events Guides\\Children's Week\\Children's Week Shattrath Quests" 1-17
step
_Congratulations!_
You Earned the "Veteran Nanny" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Children's Week\\Achievements\\For the Children",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the Achievements for the Children's Week event.",
condition_suggested=function() return isevent("Children's Week") end,
achieveid={1793},
patch='30002',
startlevel=10,
},[[
step
talk Orphan Matron Nightingale##14450
Tell her _"Children's Week is not yet over...may I have another Orphan Whistle?"_
collect 1 Human Orphan Whistle##18598 |achieve 1793 |goto Stormwind City/0 56.32,53.99
leechsteps "Events Guides\\Children's Week\\Children's Week Shattrath Quests" 1-17
leechsteps "Events Guides\\Children's Week\\Achievements\\Bad Example" 2-12
leechsteps "Events Guides\\Children's Week\\Achievements\\Daily Chores" 2-2
leechsteps "Events Guides\\Children's Week\\Achievements\\Hail To The King, Baby" 2-2
leechsteps "Events Guides\\Children's Week\\Achievements\\Home Alone" 2-2
leechsteps "Events Guides\\Children's Week\\Achievements\\School of Hard Knocks" 2-5
step
|achieve 1793
step
_Congratulations!_
You Earned the "For the Children" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Sayge's Fortunes (Elwynn Forest)",{
author="support@zygorguides.com",
description="Receive a stat buff and have your fortune told by Sayge at the Darkmoon Faire.",
model={491},
},[[
step
label "Choose_Fortune"
Choose the buff you would like to receive:
|tip The buff lasts for two hours.
|tip You can have your fortune told every four hours.
|tip NOTE: You will not be able to receive the written fortune and potential quest without an open inventory slot.
+10% Agility |confirm |next "Agility_Buff"
+10% Intelligence |confirm |next "Intelligence_Buff"
+10% Spirit |confirm |next "Spirit_Buff"
+10% Stamina |confirm |next "Stamina_Buff"
+10% Strength |confirm |next "Strength_Buff"
+10% Armor |confirm |next "Armor_Buff"
+25 All Resistances |confirm |next "Resistance_Buff"
+10% Damage |confirm |next "Damage_Buff"
step
label "Agility_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I confiscate the corn he has stolen, warn him that stealing is a path towards doom and destruction, but I let him go to return to his family."_
Then tell him _"I would create some surreptitious means to keep my brother out of the order."_
Gain the "Sayge's Dark Fortune of Agility" Buff |havebuff Sayge's Dark Fortune of Agility##23736 |goto Elwynn Forest 42.12,69.00 |next "Use_Darkmoon_Faire_Fortune"
step
label "Intelligence_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I turn over the man to my liege for punishment, as he has broken the law of the land and it is my sworn duty to enforce it."_
Then tell him _"I quietly ignore the insult."_
Gain the "Sayge's Dark Fortune of Intelligence" Buff |havebuff Sayge's Dark Fortune of Intelligence##23766 |goto Elwynn Forest 42.12,69.00 |next "Use_Darkmoon_Faire_Fortune"
step
label "Spirit_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I turn over the man to my liege for punishment, as he has broken the law of the land and it is my sworn duty to enforce it."_
Then tell him _"I confront the ruler on his malicious behavior, upholding my liege's honor at the risk of any future diplomacy."_
Gain the "Sayge's Dark Fortune of Spirit" Buff |havebuff Sayge's Dark Fortune of Spirit##23738 |goto Elwynn Forest 42.12,69.00 |next "Use_Darkmoon_Faire_Fortune"
step
label "Stamina_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I confiscate the corn he has stolen, warn him that stealing is a path towards doom and destruction, but I let him go to return to his family."_
Then tell him _"I would speak against my brother joining the order, rushing a permanent breech in our relationship."_
Gain the "Sayge's Dark Fortune of Stamina" Buff |havebuff Sayge's Dark Fortune of Stamina##23737 |goto Elwynn Forest 42.12,69.00 |next "Use_Darkmoon_Faire_Fortune"
step
label "Strength_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I confiscate the corn he has stolen, warn him that stealing is a path towards doom and destruction, but I let him go to return to his family."_
Then tell him _"I would speak for my brother joining the order, potentially risking the safety of the order."_
Gain the "Sayge's Dark Fortune of Strength" Buff |havebuff Sayge's Dark Fortune of Strength##23735 |goto Elwynn Forest 42.12,69.00 |next "Use_Darkmoon_Faire_Fortune"
step
label "Armor_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I slay the man on the spot as my liege would expect me to do, as he is nothing more than a thief and a liar."_
Then tell him _"I risk my own life and free him so that he may prove his innocence."_
Gain the "Sayge's Dark Fortune of Armor" Buff |havebuff Sayge's Dark Fortune of Armor##23767 |goto Elwynn Forest 42.12,69.00 |next "Use_Darkmoon_Faire_Fortune"
step
label "Resistance_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I slay the man on the spot as my liege would expect me to do, as he is nothing more than a thief and a liar."_
Then tell him _"I execute him as per my liege's instructions, but doing so in as painless of a way as possible."_
Gain the "Sayge's Dark Fortune of Resistance" Buff |havebuff Sayge's Dark Fortune of Resistance##23769 |goto Elwynn Forest 42.12,69.00 |next "Use_Darkmoon_Faire_Fortune"
step
label "Damage_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I slay the man on the spot as my liege would expect me to do, as he is nothing more than a thief and a liar."_
Then tell him _"I execute him as per my liege's instructions, and do it in such a manner that he suffers painfully before he dies as retribution for his crimes against my people."_
Gain the "Sayge's Dark Fortune of Damage" Buff |havebuff Sayge's Dark Fortune of Damage##23768 |goto Elwynn Forest 42.12,69.00 |next "Use_Darkmoon_Faire_Fortune"
step
label "Use_Darkmoon_Faire_Fortune"
talk Sayge##14822
Tell him _"I'd love to get one of those written fortunes you mentioned!"_
collect 1 Darkmoon Faire Fortune##19422 |goto Elwynn Forest 42.12,69.00
step
use the Darkmoon Faire Fortune##19422
Obtain Your Fortune |complete itemcount(19422) == 0
step
label "Fortune_Told"
You have received your fortune
|tip You can have your fortune told every four hours.
Click Here to Choose Another Fortune |confirm |next "Choose_Fortune" |or
'|complete itemcount(19423) == 1 and not completedq(7937) and level >= 10 |next "Fortune_Awaits_Eastvale" |or
'|complete itemcount(19424) == 1 and not completedq(7938) and level >= 10 |next "Fortune_Awaits_Deadmines" |or
'|complete itemcount(19443) == 1 and not completedq(7944) and level >= 10 |next "Fortune_Awaits_Wailing_Caverns" |or
'|complete itemcount(19452) == 1 and not completedq(7945) and level >= 10 |next "Fortune_Awaits_Palemane_Rock" |or
step
label "Fortune_Awaits_Eastvale"
use Sayge's Fortune #23##19423
accept Your Fortune Awaits You...##7937
step
click Mysterious Eastvale Haystack
turnin Your Fortune Awaits You...##7937 |goto Elwynn Forest 84.79,64.37 |next "Fortune_Told"
step
label "Fortune_Awaits_Deadmines"
use Sayge's Fortune #24##19424
accept Your Fortune Awaits You...##7938
step
click Mysterious Deadmines Chest
|tip Just inside The Deadmines instance before you reach the first Miner.
|tip It may take a minute or two to appear.
turnin Your Fortune Awaits You...##7938 |next "Fortune_Told"
step
label "Fortune_Awaits_Wailing_Caverns"
use Sayge's Fortune #25##19443
accept Your Fortune Awaits You...##7944
step
click Mysterious Wailing Caverns Chest
|tip Just inside the Wailing Caverns instance after the Disciple of Naralex.
|tip It may take a minute or two to appear.
turnin Your Fortune Awaits You...##7944 |next "Fortune_Told"
step
label "Fortune_Awaits_Palemane_Rock"
use Sayge's Fortune #27##19452
accept Your Fortune Awaits You...##7945
step
click Mysterious Tree Stump
turnin Your Fortune Awaits You...##7945 |goto Mulgore 34.99,61.56 |next "Fortune_Told"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Chronos Turn-Ins (Elwynn Forest)",{
author="support@zygorguides.com",
description="Exchange various Leatherworking crafted items with Chronos for prize tickets at the Darkmoon Faire.",
model={14875},
},[[
step
collect 3 Embossed Leather Boots##2309 |n
|tip Create them with Leatherworking or purchase them from the Auction House.
talk Chronos##14833
accept Carnival Boots##7881 |goto Elwynn Forest 43.57,70.86 |or
|tip Each turnin requires 3 Embossed Leather Boots and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 1 Darkmoon Faire Prize Ticket.
|tip You can turn this quest in until you reach 500 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 500 |or
step
Reach Level 10 |ding 10
|tip Use the leveling guides to accomplish this.
step
collect 3 Toughened Leather Armor##2314 |n
|tip Create them with Leatherworking or purchase them from the Auction House.
talk Chronos##14833
accept Carnival Jerkins##7882 |goto 43.57,70.86 |or
|tip Each turnin requires 3 Toughened Leather Armors and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 4 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,100 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 1100 |or
step
Reach Level 20 |ding 20
|tip Use the leveling guides to accomplish this.
step
collect 3 Barbaric Harness##5739 |n
|tip Create them with Leatherworking or purchase them from the Auction House.
talk Chronos##14833
accept The World's Largest Gnome!##7883 |goto 43.57,70.86 |or
|tip Each turnin requires 3 Barbaric Harnesses and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 8 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,700 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 1700 |or
step
Reach Level 30 |ding 30
|tip Use the leveling guides to accomplish this.
step
collect 1 Turtle Scale Leggings##8185 |n
|tip Create them with Leatherworking or purchase them from the Auction House.
talk Chronos##14833
accept Crocolisk Boy and the Bearded Murloc##7884 |goto 43.57,70.86 |or
|tip Each turnin requires 1 Turtle Scale Leggings and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 12 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 2,500 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 2500 |or
step
Reach Level 40 |ding 40
|tip Use the leveling guides to accomplish this.
step
collect 8 Rugged Armor Kit##15564 |q 7885 |future
|tip Create them with Leatherworking or purchase them from the Auction House.
step
talk Chronos##14833
accept Armor Kits##7885 |goto 43.57,70.86
step
collect 8 Rugged Armor Kit##15564 |n
|tip Create them with Leatherworking or purchase them from the Auction House.
talk Chronos##14833
accept More Armor Kits##7941 |goto 43.57,70.86 |or
|tip From this point on, you can continue turning in Rugged Armor Kits.
|tip Each of these turnins will award 20 Darkmoon Faire Prize Tickets.
|tip Each turnin requires 8 Rugged Armor Kits and grants 100 reputation with the Darkmoon Faire.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Kerri Hicks Turn-Ins (Elwynn Forest)",{
author="support@zygorguides.com",
description="Exchange various Blacksmithing crafted items with Kerri Hicks for prize tickets at the Darkmoon Faire.",
model={14876},
},[[
step
collect 10 Coarse Weightstone##3240 |n
|tip Create them with Blacksmithing or purchase them from the Auction House.
talk Kerri Hicks##14832
accept Coarse Weightstone##7889 |goto Elwynn Forest 40.48,69.93 |or
|tip Each turnin requires 10 Coarse Weightstones and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 1 Darkmoon Faire Prize Ticket.
|tip You can turn this quest in until you reach 500 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 500 |or
step
Reach Level 10 |ding 10
|tip Use the leveling guides to accomplish this.
step
collect 7 Heavy Grinding Stone##3486 |n
|tip Create them with Blacksmithing or purchase them from the Auction House.
talk Kerri Hicks##14832
accept Heavy Grinding Stone##7890 |goto 40.48,69.93 |or
|tip Each turnin requires 7 Heavy Grinding Stones and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 4 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,100 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 1100 |or
step
Reach Level 20 |ding 20
|tip Use the leveling guides to accomplish this.
step
collect 3 Green Iron Bracers##3835 |n
|tip Create them with Blacksmithing or purchase them from the Auction House.
talk Kerri Hicks##14832
accept Green Iron Bracers##7891 |goto 40.48,69.93 |or
|tip Each turnin requires 3 Green Iron Bracers and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 8 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,700 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 1700 |or
step
Reach Level 30 |ding 30
|tip Use the leveling guides to accomplish this.
step
collect 1 Big Black Mace##7945 |n
|tip Create them with Blacksmithing or purchase them from the Auction House.
talk Kerri Hicks##14832
accept Big Black Mace##7892 |goto 40.48,69.93 |or
|tip Each turnin requires 1 Big Black Mace and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 12 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 2,500 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 2500 |or
step
Reach Level 40 |ding 40
|tip Use the leveling guides to accomplish this.
step
collect 8 Dense Grinding Stone##12644 |q 7893 |future
|tip Create them with Blacksmithing or purchase them from the Auction House.
step
talk Kerri Hicks##14832
accept Rituals of Strength##7893 |goto 40.48,69.93
step
collect 8 Dense Grinding Stone##12644 |n
|tip Create them with Blacksmithing or purchase them from the Auction House.
talk Kerri Hicks##14832
accept More Dense Grinding Stones##7939 |goto 40.48,69.93 |or
|tip From this point on, you can continue turning in Dense Grinding Stones.
|tip Each of these turnins will award 20 Darkmoon Faire Prize Tickets.
|tip Each turnin requires 8 Dense Grinding Stones and grants 100 reputation with the Darkmoon Faire.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Rinling Turn-Ins (Elwynn Forest)",{
author="support@zygorguides.com",
description="Exchange various Engineering crafted items with Rinling for prize tickets at the Darkmoon Faire.",
model={14877},
},[[
step
collect 5 Copper Modulator##4363 |n
|tip Create them with Engineering or purchase them from the Auction House.
|tip They also have a small chance to drop from mobs in the Gnomeregan dungeon.
talk Rinling##14841
accept Copper Modulator##7894 |goto Elwynn Forest 41.71,70.72 |or
|tip Each turnin requires 5 Copper Modulators and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 1 Darkmoon Faire Prize Ticket.
|tip You can turn this quest in until you reach 500 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 500 |or
step
Reach Level 10 |ding 10
|tip Use the leveling guides to accomplish this.
step
collect 7 Whirring Bronze Gizmo##4375 |n
|tip Create them with Engineering or purchase them from the Auction House.
talk Rinling##14841
accept Whirring Bronze Gizmo##7895 |goto 41.71,70.72 |or
|tip Each turnin requires 7 Whirring Bronze Gizmos and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 4 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,100 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 1100 |or
step
Reach Level 20 |ding 20
|tip Use the leveling guides to accomplish this.
step
collect 36 Green Firework##9313 |n
|tip Create them with Engineering or purchase them from the Auction House.
|tip They can also be purchased from any Holiday Fireworks Vendor on July 4th.
talk Rinling##14841
accept Green Fireworks##7896 |goto 41.71,70.72 |or
|tip Each turnin requires 36 Green Fireworks and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 8 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,700 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 1700 |or
step
Reach Level 30 |ding 30
|tip Use the leveling guides to accomplish this.
step
collect 6 Mechanical Repair Kit##11590 |n
|tip Create them with Engineering or purchase them from the Auction House.
talk Rinling##14841
accept Mechanical Repair Kits##7897 |goto 41.71,70.72 |or
|tip Each turnin requires 6 Mechanical Repair Kits and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 12 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 2,500 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 2500 |or
step
Reach Level 40 |ding 40
|tip Use the leveling guides to accomplish this.
step
collect 6 Thorium Widget##15994 |q 7898 |future
|tip Create them with Engineering or purchase them from the Auction House.
step
talk Rinling##14841
accept Thorium Widget##7898 |goto 41.71,70.72
step
collect 6 Thorium Widget##15994 |n
|tip Create them with Engineering or purchase them from the Auction House.
talk Rinling##14841
accept More Thorium Widgets##7942 |goto 41.71,70.72 |or
|tip From this point on, you can continue turning in Thorium Widgets.
|tip Each of these turnins will award 20 Darkmoon Faire Prize Tickets.
|tip Each turnin requires 6 Thorium Widgets and grants 100 reputation with the Darkmoon Faire.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Yebb Neblegear Turn-Ins (Elwynn Forest)",{
author="support@zygorguides.com",
description="Exchange various Farmed items with Yebb Neblegear for prize tickets at the Darkmoon Faire.",
model={14856},
},[[
step
Kill Savannah enemies around this area
|tip You can find them all over around Crossroads and to its northern area.
collect 5 Small Furry Paw##5134 |goto The Barrens 50.21,21.82 |n
talk Yebb Neblegear##14829
accept Small Furry Paws##7899 |goto Elwynn Forest 40.17,69.53 |or
|tip Each turnin requires 5 Small Furry Paws and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 1 Darkmoon Faire Prize Ticket.
|tip You can turn this quest in until you reach 500 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 500 |or
step
Reach Level 10 |ding 10
|tip Use the leveling guides to accomplish this.
step
Kill Ashenvale Bear enemies around this area
|tip You can find them all over between Raynewood Retreat and Splintertree post.
|tip You can also find them east of Satyrn.
collect 5 Torn Bear Pelt##11407 |goto Ashenvale 66.01,60.42 |n
You can find more around [83.81,47.40]
talk Yebb Neblegear##14829
accept Torn Bear Pelts##7900 |goto Elwynn Forest 40.17,69.53 |or
|tip Each turnin requires 5 Torn Bear Pelts and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 4 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,100 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 1100 |or
step
Reach Level 20 |ding 20
|tip Use the leveling guides to accomplish this.
step
Kill Crag Coyote enemies around this area
|tip You can find the all over central and western Badlands.
collect 5 Soft Bushy Tail##4582 |goto Badlands 34.41,65.63 |n
You can find more around [57.00,58.62]
talk Yebb Neblegear##14829
accept Soft Bushy Tails##7901 |goto Elwynn Forest 40.17,69.53 |or
|tip Each turnin requires 5 Soft Bushy Tails and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 8 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,700 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 1700 |or
step
Reach Level 30 |ding 30
|tip Use the leveling guides to accomplish this.
step
Kill Northspring enemies around this area
collect 5 Vibrant Plume##5117 |goto Feralas 40.00,12.61 |n
talk Yebb Neblegear##14829
accept Vibrant Plumes##7902 |goto Elwynn Forest 40.17,69.53 |or
|tip Each turnin requires 5 Vibrant Plumes and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 12 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 2,500 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 2500 |or
step
Reach Level 40 |ding 40
|tip Use the leveling guides to accomplish this.
step
Kill Stonelash enemies around this area
|tip You can find them all over central and southern Silithus.
collect 10 Glowing Scorpid Blood##19933 |goto Silithus 44.81,54.50 |q 8222 |future
step
talk Yebb Neblegear##14829
accept Glowing Scorpid Blood##8222 |goto Elwynn Forest 40.17,69.53
step
Kill Stonelash enemies around this area
|tip You can find them all over central and southern Silithus.
collect 10 Glowing Scorpid Blood##19933 |goto Silithus 44.81,54.50 |n
talk Yebb Neblegear##14829
accept More Glowing Scorpid Blood##8223 |goto Elwynn Forest 40.17,69.53
|tip From this point on, you can continue turning in Glowing Scorpid Blood.
|tip Each of these turnins will award 20 Darkmoon Faire Prize Tickets.
|tip Each turnin requires 10 Glowing Scorpid Blood and grants 100 reputation with the Darkmoon Faire.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Spawn of Jubjub (Elwynn Forest)",{
author="support@zygorguides.com",
description="Collect a couple of Dark Iron Ale Mugs from the Grim Guzzler tavern in Blackrock Depths "..
"and offer them to Morja at the Darkmoon Faire to receive your very own Jubjub companion pet.",
condition_end=function() return completedq(7946) end,
model={14938},
},[[
step
click Dark Iron Ale Mug##165738
|tip They look like small mugs of ale on tables around the Grim Guzzler tavern in Blackrock Depths.
|tip Clicking two of them is safe but clicking more will anger the bar patrons.
collect 2 Dark Iron Ale Mug##11325 |q 7946 |future
|tip They can also be purchased from Plugger Spazzring in the Grim Guzzler.
|tip They can be purchased from the Auction House if you are lucky enough to find them.
step
use the Dark Iron Ale Mug##11325
|tip Place it at Morja's feet.
|tip Be sure you only use one; you will need the other one to turn in the quest.
Wait for Jubjub the frog to hop over to the mug
|tip This may take a couple of minutes.
talk Morja##14871
accept Spawn of Jubjub##7946 |goto Elwynn Forest 43.33,70.29
|tip This quest will be available after Jubjub appears.
step
use the Unhatched Jubling Egg##19462
|tip It will take seven days for the egg to mature enough to hatch.
collect 1 A Jubling's Tiny Home##19450
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Wood Frog (Elwynn Forest)",{
author="support@zygorguides.com",
description="Catch Flik as he runs all over the Darkmoon Faire grounds and purchase his limited supply "..
"Wood Frog Box for 1 gold.",
model={901},
},[[
step
talk Flik##14860
|tip He's a little Orc boy running fast all over the Darkmoon Faire grounds.
|tip You will have to be quick to catch him.
|tip Talking to him will stop him for a short period of time.
buy 1 Wood Frog Box##11027 |goto Elwynn Forest 42.59,70.30
|tip This item costs 1 gold and has a limited quantity of 1.
|tip It respawns in approximately 20 minutes.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Tree Frog (Elwynn Forest)",{
author="support@zygorguides.com",
description="Catch Flik as he runs all over the Darkmoon Faire grounds and purchase his "..
"Tree Frog Box for 1 gold.",
model={6295},
},[[
step
talk Flik##14860
|tip He's a little Orc boy running fast all over the Darkmoon Faire grounds.
|tip You will have to be quick to catch him.
|tip Talking to him will stop him for a short period of time.
buy 1 Tree Frog Box##11026 |goto Elwynn Forest 42.59,70.30
|tip This item costs 1 gold.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Mulgore\\Sayge's Fortunes (Mulgore)",{
author="support@zygorguides.com",
description="Receive a stat buff and have your fortune told by Sayge at the Darkmoon Faire.",
model={491},
},[[
step
label "Choose_Fortune"
Choose the buff you would like to receive:
|tip The buff lasts for two hours.
|tip You can have your fortune told every four hours.
|tip NOTE: You will not be able to receive the written fortune and potential quest without an open inventory slot.
+10% Agility |confirm |next "Agility_Buff"
+10% Intelligence |confirm |next "Intelligence_Buff"
+10% Spirit |confirm |next "Spirit_Buff"
+10% Stamina |confirm |next "Stamina_Buff"
+10% Strength |confirm |next "Strength_Buff"
+10% Armor |confirm |next "Armor_Buff"
+25 All Resistances |confirm |next "Resistance_Buff"
+10% Damage |confirm |next "Damage_Buff"
step
label "Agility_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I confiscate the corn he has stolen, warn him that stealing is a path towards doom and destruction, but I let him go to return to his family."_
Then tell him _"I would create some surreptitious means to keep my brother out of the order."_
Gain the "Sayge's Dark Fortune of Agility" Buff |havebuff Sayge's Dark Fortune of Agility##23736 |goto Mulgore 36.92,38.37 |next "Use_Darkmoon_Faire_Fortune"
step
label "Intelligence_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I turn over the man to my liege for punishment, as he has broken the law of the land and it is my sworn duty to enforce it."_
Then tell him _"I quietly ignore the insult."_
Gain the "Sayge's Dark Fortune of Intelligence" Buff |havebuff Sayge's Dark Fortune of Intelligence##23766 |goto Mulgore 36.92,38.37 |next "Use_Darkmoon_Faire_Fortune"
step
label "Spirit_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I turn over the man to my liege for punishment, as he has broken the law of the land and it is my sworn duty to enforce it."_
Then tell him _"I confront the ruler on his malicious behavior, upholding my liege's honor at the risk of any future diplomacy."_
Gain the "Sayge's Dark Fortune of Spirit" Buff |havebuff Sayge's Dark Fortune of Spirit##23738 |goto Mulgore 36.92,38.37 |next "Use_Darkmoon_Faire_Fortune"
step
label "Stamina_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I confiscate the corn he has stolen, warn him that stealing is a path towards doom and destruction, but I let him go to return to his family."_
Then tell him _"I would speak against my brother joining the order, rushing a permanent breech in our relationship."_
Gain the "Sayge's Dark Fortune of Stamina" Buff |havebuff Sayge's Dark Fortune of Stamina##23737 |goto Mulgore 36.92,38.37 |next "Use_Darkmoon_Faire_Fortune"
step
label "Strength_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I confiscate the corn he has stolen, warn him that stealing is a path towards doom and destruction, but I let him go to return to his family."_
Then tell him _"I would speak for my brother joining the order, potentially risking the safety of the order."_
Gain the "Sayge's Dark Fortune of Strength" Buff |havebuff Sayge's Dark Fortune of Strength##23735 |goto Mulgore 36.92,38.37 |next "Use_Darkmoon_Faire_Fortune"
step
label "Armor_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I slay the man on the spot as my liege would expect me to do, as he is nothing more than a thief and a liar."_
Then tell him _"I risk my own life and free him so that he may prove his innocence."_
Gain the "Sayge's Dark Fortune of Armor" Buff |havebuff Sayge's Dark Fortune of Armor##23767 |goto Mulgore 36.92,38.37 |next "Use_Darkmoon_Faire_Fortune"
step
label "Resistance_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I slay the man on the spot as my liege would expect me to do, as he is nothing more than a thief and a liar."_
Then tell him _"I execute him as per my liege's instructions, but doing so in as painless of a way as possible."_
Gain the "Sayge's Dark Fortune of Resistance" Buff |havebuff Sayge's Dark Fortune of Resistance##23769 |goto Mulgore 36.92,38.37 |next "Use_Darkmoon_Faire_Fortune"
step
label "Damage_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I slay the man on the spot as my liege would expect me to do, as he is nothing more than a thief and a liar."_
Then tell him _"I execute him as per my liege's instructions, and do it in such a manner that he suffers painfully before he dies as retribution for his crimes against my people."_
Gain the "Sayge's Dark Fortune of Damage" Buff |havebuff Sayge's Dark Fortune of Damage##23768 |goto Mulgore 36.92,38.37 |next "Use_Darkmoon_Faire_Fortune"
step
label "Use_Darkmoon_Faire_Fortune"
talk Sayge##14822
Tell him _"I'd love to get one of those written fortunes you mentioned!"_
collect 1 Darkmoon Faire Fortune##19422 |goto Mulgore 36.92,38.37
step
use the Darkmoon Faire Fortune##19422
Obtain Your Fortune |complete itemcount(19422) == 0
step
label "Fortune_Told"
You have received your fortune
|tip You can have your fortune told every four hours.
Click Here to Choose Another Fortune |confirm |next "Choose_Fortune" |or
'|complete itemcount(19423) == 1 and not completedq(7937) and level >= 10 |next "Fortune_Awaits_Eastvale" |or
'|complete itemcount(19424) == 1 and not completedq(7938) and level >= 10 |next "Fortune_Awaits_Deadmines" |or
'|complete itemcount(19443) == 1 and not completedq(7944) and level >= 10 |next "Fortune_Awaits_Wailing_Caverns" |or
'|complete itemcount(19452) == 1 and not completedq(7945) and level >= 10 |next "Fortune_Awaits_Palemane_Rock" |or
step
label "Fortune_Awaits_Eastvale"
use Sayge's Fortune #23##19423
accept Your Fortune Awaits You...##7937
step
click Mysterious Eastvale Haystack
turnin Your Fortune Awaits You...##7937 |goto Elwynn Forest 84.79,64.37 |next "Fortune_Told"
step
label "Fortune_Awaits_Deadmines"
use Sayge's Fortune #24##19424
accept Your Fortune Awaits You...##7938
step
click Mysterious Deadmines Chest
|tip Just inside The Deadmines instance before you reach the first Miner.
|tip It may take a minute or two to appear.
turnin Your Fortune Awaits You...##7938 |next "Fortune_Told"
step
label "Fortune_Awaits_Wailing_Caverns"
use Sayge's Fortune #25##19443
accept Your Fortune Awaits You...##7944
step
click Mysterious Wailing Caverns Chest
|tip Just inside the Wailing Caverns instance after the Disciple of Naralex.
|tip It may take a minute or two to appear.
turnin Your Fortune Awaits You...##7944 |next "Fortune_Told"
step
label "Fortune_Awaits_Palemane_Rock"
use Sayge's Fortune #27##19452
accept Your Fortune Awaits You...##7945
step
click Mysterious Tree Stump
turnin Your Fortune Awaits You...##7945 |goto Mulgore 34.99,61.56 |next "Fortune_Told"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Mulgore\\Chronos Turn-Ins (Mulgore)",{
author="support@zygorguides.com",
description="Exchange various Leatherworking crafted items with Chronos for prize tickets at the Darkmoon Faire.",
model={14875},
},[[
step
collect 3 Embossed Leather Boots##2309 |n
|tip Create them with Leatherworking or purchase them from the Auction House.
talk Chronos##14833
accept Carnival Boots##7881 |goto Mulgore 36.15,35.18 |or
|tip Each turnin requires 3 Embossed Leather Boots and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 1 Darkmoon Faire Prize Ticket.
|tip You can turn this quest in until you reach 500 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 500 |or
step
Reach Level 10 |ding 10
|tip Use the leveling guides to accomplish this.
step
collect 3 Toughened Leather Armor##2314 |n
|tip Create them with Leatherworking or purchase them from the Auction House.
talk Chronos##14833
accept Carnival Jerkins##7882 |goto 36.15,35.18 |or
|tip Each turnin requires 3 Toughened Leather Armors and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 4 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,100 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 1100 |or
step
Reach Level 20 |ding 20
|tip Use the leveling guides to accomplish this.
step
collect 3 Barbaric Harness##5739 |n
|tip Create them with Leatherworking or purchase them from the Auction House.
talk Chronos##14833
accept The World's Largest Gnome!##7883 |goto 36.15,35.18 |or
|tip Each turnin requires 3 Barbaric Harnesses and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 8 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,700 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 1700 |or
step
Reach Level 30 |ding 30
|tip Use the leveling guides to accomplish this.
step
collect 1 Turtle Scale Leggings##8185 |n
|tip Create them with Leatherworking or purchase them from the Auction House.
talk Chronos##14833
accept Crocolisk Boy and the Bearded Murloc##7884 |goto 36.15,35.18 |or
|tip Each turnin requires 1 Turtle Scale Leggings and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 12 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 2,500 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 2500 |or
step
Reach Level 40 |ding 40
|tip Use the leveling guides to accomplish this.
step
collect 8 Rugged Armor Kit##15564 |q 7885 |future
|tip Create them with Leatherworking or purchase them from the Auction House.
step
talk Chronos##14833
accept Armor Kits##7885 |goto 36.15,35.18
step
collect 8 Rugged Armor Kit##15564 |n
|tip Create them with Leatherworking or purchase them from the Auction House.
talk Chronos##14833
accept More Armor Kits##7941 |goto 36.15,35.18 |or
|tip From this point on, you can continue turning in Rugged Armor Kits.
|tip Each of these turnins will award 20 Darkmoon Faire Prize Tickets.
|tip Each turnin requires 8 Rugged Armor Kits and grants 100 reputation with the Darkmoon Faire.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Mulgore\\Kerri Hicks Turn-Ins (Mulgore)",{
author="support@zygorguides.com",
description="Exchange various Blacksmithing crafted items with Kerri Hicks for prize tickets at the Darkmoon Faire.",
model={14876},
},[[
step
collect 10 Coarse Weightstone##3240 |n
|tip Create them with Blacksmithing or purchase them from the Auction House.
talk Kerri Hicks##14832
accept Coarse Weightstone##7889 |goto Mulgore 37.87,39.83 |or
|tip Each turnin requires 10 Coarse Weightstones and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 1 Darkmoon Faire Prize Ticket.
|tip You can turn this quest in until you reach 500 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 500 |or
step
Reach Level 10 |ding 10
|tip Use the leveling guides to accomplish this.
step
collect 7 Heavy Grinding Stone##3486 |n
|tip Create them with Blacksmithing or purchase them from the Auction House.
talk Kerri Hicks##14832
accept Heavy Grinding Stone##7890 |goto 37.87,39.83 |or
|tip Each turnin requires 7 Heavy Grinding Stones and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 4 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,100 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 1100 |or
step
Reach Level 20 |ding 20
|tip Use the leveling guides to accomplish this.
step
collect 3 Green Iron Bracers##3835 |n
|tip Create them with Blacksmithing or purchase them from the Auction House.
talk Kerri Hicks##14832
accept Green Iron Bracers##7891 |goto 37.87,39.83 |or
|tip Each turnin requires 3 Green Iron Bracers and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 8 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,700 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 1700 |or
step
Reach Level 30 |ding 30
|tip Use the leveling guides to accomplish this.
step
collect 1 Big Black Mace##7945 |n
|tip Create them with Blacksmithing or purchase them from the Auction House.
talk Kerri Hicks##14832
accept Big Black Mace##7892 |goto 37.87,39.83 |or
|tip Each turnin requires 1 Big Black Mace and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 12 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 2,500 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 2500 |or
step
Reach Level 40 |ding 40
|tip Use the leveling guides to accomplish this.
step
collect 8 Dense Grinding Stone##12644 |q 7893 |future
|tip Create them with Blacksmithing or purchase them from the Auction House.
step
talk Kerri Hicks##14832
accept Rituals of Strength##7893 |goto 37.87,39.83
step
collect 8 Dense Grinding Stone##12644 |n
|tip Create them with Blacksmithing or purchase them from the Auction House.
talk Kerri Hicks##14832
accept More Dense Grinding Stones##7939 |goto 37.87,39.83 |or
|tip From this point on, you can continue turning in Dense Grinding Stones.
|tip Each of these turnins will award 20 Darkmoon Faire Prize Tickets.
|tip Each turnin requires 8 Dense Grinding Stones and grants 100 reputation with the Darkmoon Faire.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Mulgore\\Rinling Turn-Ins (Mulgore)",{
author="support@zygorguides.com",
description="Exchange various Engineering crafted items with Rinling for prize tickets at the Darkmoon Faire.",
model={14877},
},[[
step
collect 5 Copper Modulator##4363 |n
|tip Create them with Engineering or purchase them from the Auction House.
|tip They also have a small chance to drop from mobs in the Gnomeregan dungeon.
talk Rinling##14841
accept Copper Modulator##7894 |goto Mulgore 37.12,37.31 |or
|tip Each turnin requires 5 Copper Modulators and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 1 Darkmoon Faire Prize Ticket.
|tip You can turn this quest in until you reach 500 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 500 |or
step
Reach Level 10 |ding 10
|tip Use the leveling guides to accomplish this.
step
collect 7 Whirring Bronze Gizmo##4375 |n
|tip Create them with Engineering or purchase them from the Auction House.
talk Rinling##14841
accept Whirring Bronze Gizmo##7895 |goto 37.12,37.31 |or
|tip Each turnin requires 7 Whirring Bronze Gizmos and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 4 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,100 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 1100 |or
step
Reach Level 20 |ding 20
|tip Use the leveling guides to accomplish this.
step
collect 36 Green Firework##9313 |n
|tip Create them with Engineering or purchase them from the Auction House.
|tip They can also be purchased from any Holiday Fireworks Vendor on July 4th.
talk Rinling##14841
accept Green Fireworks##7896 |goto 37.12,37.31 |or
|tip Each turnin requires 36 Green Fireworks and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 8 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,700 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 1700 |or
step
Reach Level 30 |ding 30
|tip Use the leveling guides to accomplish this.
step
collect 6 Mechanical Repair Kit##11590 |n
|tip Create them with Engineering or purchase them from the Auction House.
talk Rinling##14841
accept Mechanical Repair Kits##7897 |goto 37.12,37.31 |or
|tip Each turnin requires 6 Mechanical Repair Kits and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 12 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 2,500 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 2500 |or
step
Reach Level 40 |ding 40
|tip Use the leveling guides to accomplish this.
step
collect 6 Thorium Widget##15994 |q 7898 |future
|tip Create them with Engineering or purchase them from the Auction House.
step
talk Rinling##14841
accept Thorium Widget##7898 |goto 37.12,37.31
step
collect 6 Thorium Widget##15994 |n
|tip Create them with Engineering or purchase them from the Auction House.
talk Rinling##14841
accept More Thorium Widgets##7942 |goto 37.12,37.31 |or
|tip From this point on, you can continue turning in Thorium Widgets.
|tip Each of these turnins will award 20 Darkmoon Faire Prize Tickets.
|tip Each turnin requires 6 Thorium Widgets and grants 100 reputation with the Darkmoon Faire.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Mulgore\\Yebb Neblegear Turn-Ins (Mulgore)",{
author="support@zygorguides.com",
description="Exchange various Farmed items with Yebb Neblegear for prize tickets at the Darkmoon Faire.",
model={14856},
},[[
step
Kill Savannah enemies around this area
|tip You can find them all over around Crossroads and to its northern area.
collect 5 Small Furry Paw##5134 |goto The Barrens 50.21,21.82 |n
talk Yebb Neblegear##14829
accept Small Furry Paws##7899 |goto Mulgore 37.54,39.63 |or
|tip Each turnin requires 5 Small Furry Paws and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 1 Darkmoon Faire Prize Ticket.
|tip You can turn this quest in until you reach 500 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 500 |or
step
Reach Level 10 |ding 10
|tip Use the leveling guides to accomplish this.
step
Kill Ashenvale Bear enemies around this area
|tip You can find them all over between Raynewood Retreat and Splintertree post.
|tip You can also find them east of Satyrn.
collect 5 Torn Bear Pelt##11407 |goto Ashenvale 66.01,60.42 |n
You can find more around [83.81,47.40]
talk Yebb Neblegear##14829
accept Torn Bear Pelts##7900 |goto Mulgore 37.54,39.63 |or
|tip Each turnin requires 5 Torn Bear Pelts and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 4 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,100 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 1100 |or
step
Reach Level 20 |ding 20
|tip Use the leveling guides to accomplish this.
step
Kill Crag Coyote enemies around this area
|tip You can find the all over central and western Badlands.
collect 5 Soft Bushy Tail##4582 |goto Badlands 34.41,65.63 |n
You can find more around [57.00,58.62]
talk Yebb Neblegear##14829
accept Soft Bushy Tails##7901 |goto Mulgore 37.54,39.63 |or
|tip Each turnin requires 5 Soft Bushy Tails and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 8 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,700 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 1700 |or
step
Reach Level 30 |ding 30
|tip Use the leveling guides to accomplish this.
step
Kill Northspring enemies around this area
collect 5 Vibrant Plume##5117 |goto Feralas 40.00,12.61 |n
talk Yebb Neblegear##14829
accept Vibrant Plumes##7902 |goto Mulgore 37.54,39.63 |or
|tip Each turnin requires 5 Vibrant Plumes and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 12 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 2,500 Neutral reputation.
'|complete repval('Darkmoon Faire','Neutral') >= 2500 |or
step
Reach Level 40 |ding 40
|tip Use the leveling guides to accomplish this.
step
Kill Stonelash enemies around this area
|tip You can find them all over central and southern Silithus.
collect 10 Glowing Scorpid Blood##19933 |goto Silithus 44.81,54.50 |q 8222 |future
step
talk Yebb Neblegear##14829
accept Glowing Scorpid Blood##8222 |goto Mulgore 37.54,39.63
step
Kill Stonelash enemies around this area
|tip You can find them all over central and southern Silithus.
collect 10 Glowing Scorpid Blood##19933 |goto Silithus 44.81,54.50 |n
talk Yebb Neblegear##14829
accept More Glowing Scorpid Blood##8223 |goto Mulgore 37.54,39.63
|tip From this point on, you can continue turning in Glowing Scorpid Blood.
|tip Each of these turnins will award 20 Darkmoon Faire Prize Tickets.
|tip Each turnin requires 10 Glowing Scorpid Blood and grants 100 reputation with the Darkmoon Faire.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Mulgore\\Spawn of Jubjub (Mulgore)",{
author="support@zygorguides.com",
description="Collect a couple of Dark Iron Ale Mugs from the Grim Guzzler tavern in Blackrock Depths "..
"and offer them to Morja at the Darkmoon Faire to receive your very own Jubjub companion pet.",
condition_end=function() return completedq(7946) end,
model={14938},
},[[
step
click Dark Iron Ale Mug##165738
|tip They look like small mugs of ale on tables around the Grim Guzzler tavern in Blackrock Depths.
|tip Clicking two of them is safe but clicking more will anger the bar patrons.
collect 2 Dark Iron Ale Mug##11325 |q 7946 |future
|tip They can also be purchased from Plugger Spazzring in the Grim Guzzler.
|tip They can be purchased from the Auction House if you are lucky enough to find them.
step
use the Dark Iron Ale Mug##11325
|tip Place it at Morja's feet.
|tip Be sure you only use one; you will need the other one to turn in the quest.
Wait for Jubjub the frog to hop over to the mug
|tip This may take a couple of minutes.
talk Morja##14871
accept Spawn of Jubjub##7946 |goto Mulgore 35.87,35.24
|tip This quest will be available after Jubjub appears.
step
use the Unhatched Jubling Egg##19462
|tip It will take seven days for the egg to mature enough to hatch.
collect 1 A Jubling's Tiny Home##19450
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Mulgore\\Wood Frog (Mulgore)",{
author="support@zygorguides.com",
description="Catch Flik as he runs all over the Darkmoon Faire grounds and purchase his limited supply "..
"Wood Frog Box for 1 gold.",
model={901},
},[[
step
talk Flik##14860
|tip He's a little Orc boy running fast all over the Darkmoon Faire grounds.
|tip You will have to be quick to catch him.
|tip Talking to him will stop him for a short period of time.
buy 1 Wood Frog Box##11027 |goto Mulgore 36.72,37.36
|tip This item costs 1 gold and has a limited quantity of 1.
|tip It respawns in approximately 20 minutes.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Mulgore\\Tree Frog (Mulgore)",{
author="support@zygorguides.com",
description="Catch Flik as he runs all over the Darkmoon Faire grounds and purchase his "..
"Tree Frog Box for 1 gold.",
model={6295},
},[[
step
talk Flik##14860
|tip He's a little Orc boy running fast all over the Darkmoon Faire grounds.
|tip You will have to be quick to catch him.
|tip Talking to him will stop him for a short period of time.
buy 1 Tree Frog Box##11026 |goto Mulgore 36.72,37.36
|tip This item costs 1 gold.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Hallow's End Quests",{
author="support@zygorguides.com",
condition_end=function() return completedq(8373) end,
description="Complete the quests \"Hallow's End Treats for Jesper!\" and \"The Power of Pine\" for the Hallow's End event.",
},[[
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to be able to accept these quests.
|tip Use the Leveling guides to accomplish this.
step
Enter the building |goto Stormwind City/0 56.31,53.34 < 7 |walk
talk Jesper##15310
|tip Inside the building.
accept Hallow's End Treats for Jesper!##8311 |goto 56.53,51.76
step
Enter the building |goto 61.01,74.69 < 7 |walk
talk Innkeeper Allison##6740
|tip Inside the building.
accept Flexing for Nougat##8356 |goto 60.39,75.28 |complete completedq(8311) or completedq(8356)
step
clicknpc Innkeeper Allison##6740
|tip Inside the building.
|tip Target Innkeeper Allison and type "/flex" into your chat to perform the Flex emote.
Flex for Inkeeper Allison |q 8356/1 |goto 60.39,75.28 |complete completedq(8311) or completedq("8356/1")
'|script DoEmote("FLEX")
step
talk Innkeeper Allison##6740
|tip Inside the building.
turnin Flexing for Nougat##8356 |goto 60.39,75.28 |complete completedq(8311) or completedq(8356)
step
collect Stormwind Nougat##20492 |q 8311/1
|tip Save this, you will need it later.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12336 |goto 60.51,75.33
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
talk Human Commoner##18927
accept Costumed Orphan Matron##11356 |goto 61.75,74.13
step
talk Costumed Orphan Matron##24519
turnin Costumed Orphan Matron##11356 |goto Elwynn Forest/0 42.62,64.38
accept Fire Brigade Practice##11360 |goto 42.62,64.38
accept The Headless Horseman##11135 |goto 42.62,64.38 |only if level >= 75
|tip This will only be available after the Horseman has been slain.
step
click Water Barrel |goto 42.50,64.49
|tip Click the Water Barrel to pick up a bucket of water.
collect Water Bucket##32971 |n
use the Water Bucket##32971
|tip Throw the buckets at the fires on top of buildings around this area.
|tip You may have to wait a short amount of time for the Horseman to attack.
Put Out #5# Fires |q 11360/1 |goto 42.40,65.83
step
talk Large Jack-O'-Lantern
accept Smash the Pumpkin##12133 |goto 42.39,65.87
|tip This will only be available after the Headless Horseman is defeated.
|tip You can skip this step if it does not drop.
step
talk Costumed Orphan Matron##24519
turnin Fire Brigade Practice##11360 |goto 42.62,64.38
turnin Smash the Pumpkin##12133 |goto 42.62,64.38 |only if haveq(12133) or completedq(12133)
step
Enter the building |goto Ironforge/0 20.57,53.22 < 5 |walk
talk Innkeeper Firebrew##5111
|tip Inside the building.
accept Chicken Clucking for a Mint##8353 |goto 18.16,51.44 |complete completedq(8311) or completedq(8353)
step
clicknpc Innkeeper Firebrew##5111
|tip Inside the building.
|tip Target Innkeeper Firebrew and type "/chicken" into your chat to perform the Chicken emote.
Cluck Like a Chicken for Innkeeper Firebrew |q 8353/1 |goto 18.16,51.44 |complete completedq(8311) or completedq("8353/1")
'|script DoEmote("CHICKEN")
step
talk Innkeeper Firebrew##5111
|tip Inside the building.
turnin Chicken Clucking for a Mint##8353 |goto 18.16,51.44 |complete completedq(8311) or completedq(8353)
step
collect Ironforge Mint##20490 |q 8311/3
|tip Save this, you will need it later.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12335 |goto 18.36,50.94
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
talk Talvash del Kissel##6826
accept Incoming Gumdrop##8355 |goto 36.38,3.62 |complete completedq(8311) or completedq(8355)
step
clicknpc Talvash del Kissel##6826
|tip Target Talvash del Kissel and type "/train" into your chat to perform the Train emote.
Do the "Train" for Talvash |q 8355/1 |goto 36.38,3.62 |complete completedq(8311) or completedq("8355/1")
'|script DoEmote("TRAIN")
step
talk Talvash del Kissel##6826
turnin Incoming Gumdrop##8355 |goto 36.38,3.62 |complete completedq(8311) or completedq(8355)
step
collect Gnomeregan Gumdrop##20494 |q 8311/2
|tip Save this, you will need it later.
step
talk Innkeeper Saelienne##6735
accept Dancing for Marzipan##8357 |goto Darnassus/0 67.42,15.65 |complete completedq(8311) or completedq(8357)
step
clicknpc Innkeeper Saelienne##6735
|tip Target Innkeeper Saelienne and type "/dance" into your chat to perform the Dance emote.
Dance for Inkeeper Saelienne |q 8357/1 |goto 67.42,15.65 |complete completedq(8311) or completedq("8357/1")
'|script DoEmote("DANCE")
step
talk Innkeeper Saelienne##6735
turnin Dancing for Marzipan##8357 |goto 67.42,15.65 |complete completedq(8311) or completedq(8357)
step
collect Darnassus Marzipan##20496 |q 8311/4
|tip Save this, you will need it later.
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Cnady Bucket##12334 |goto 67.45,16.04
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
Enter the building |goto Stormwind City/0 56.31,53.33 < 5 |walk
talk Jesper##15310
|tip Inside the building.
turnin Hallow's End Treats for Jesper!##8311 |goto 56.53,51.76
step
Reach Level 25 |ding 25
|tip You must be at least level 25 to be able to accept this quest.
|tip Use the Leveling guides to accomplish this.
step
talk Sergeant Hartman##15199
accept The Power of Pine##8373 |goto Hillsbrad Foothills/0 50.00,57.34
step
use Stink Bomb Cleaner##20604
|tip Use it next to a stink bomb placed by a Horde player.
|tip They look like small metal objects surrounded by orange smoke on the ground around Southshore.
|tip Run around Southshore and look for them, they will most likely be near the outskirts of the town.
Clean Up a Stink Bomb in Southshore |q 8373/1 |goto 49.58,57.65
step
talk Sergeant Hartman##15199
turnin The Power of Pine##8373 |goto 50.00,57.34
accept Crashing the Wickerman Festival##1658 |goto 50.00,57.34
step
Scout Out the Forsaken's Wickerman Festival |q 1658/1 |goto Tirisfal Glades/0 55.18,68.97
|tip Move quick and run from the guards if they attack you.
step
talk Sergeant Hartman##15199
turnin Crashing the Wickerman Festival##1658 |goto Hillsbrad Foothills/0 50.00,57.34
step
Reach Level 75 |ding 75
|tip You must be at least level 75 to be able to accept this quest.
|tip Use the Leveling guides to accomplish this.
step
talk Costumed Orphan Matron##24519
accept The Headless Horseman##11135 |goto Elwynn Forest/0 42.62,64.38
step
_Inside the Scarlet Monastery Graveyard Dungeon:_
|tip The far left portal.
click Pumpkin Shrine##186267
turnin The Headless Horseman##11135
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Hallow's End Daily Quests",{
author="support@zygorguides.com",
description="Put out fires in Razor Hill and kill the Headless Horseman.",
},[[
step
label "Begin_Dailies"
talk Human Commoner##18927
accept Costumed Orphan Matron##11356 |goto Stormwind City/0 61.76,74.15
step
talk Costumed Orphan Matron##24519
turnin Costumed Orphan Matron##11356 |goto Elwynn Forest/0 42.62,64.38
step
talk Costumed Orphan Matron##24519
accept Stop the Fires!##11131 |goto 42.62,64.38 |or
accept "Let the Fires Come!"##12135 |goto 42.62,64.38 |or
|tip You will only be able to accept one of these quests.
|tip The quest offered depends on whether Goldshire is under attack or not.
step
click Water Barrel |goto 42.50,64.49
|tip Click the Water Barrel to pick up a bucket of water.
collect Water Bucket##32971 |n
use the Water Bucket##32971
|tip Throw the buckets at the fires on top of buildings around this area.
Put Out the Fires |q 11131/1 |goto 42.40,65.83
|only if haveq(11131) or completedq(11131)
step
click Water Barrel |goto 52.55,41.30
|tip Click the Water Barrel to pick up a bucket of water.
collect Water Bucket##32971 |n
use the Water Bucket##32971
|tip Throw the buckets at the fires on top of buildings around this area.
Put Out the Fires |q 12135/1 |goto 42.40,65.83
|only if haveq(12135) or completedq(12135)
step
talk Large Jack-O'-Lantern
accept Smash the Pumpkin##12133 |goto 42.39,65.87
|tip This will only be available after the Headless Horseman is defeated.
step
talk Costumed Orphan Matron##24519
turnin Stop the Fires!##11131 |goto 42.62,64.38 |only if haveq(11131) or completedq(11131) |or
turnin "Let the Fires Come!"##12135 |goto 42.62,64.38 |only if haveq(12135) or completedq(12135) |or
turnin Smash the Pumpkin##12133 |goto 42.62,64.38 |only if haveq(12133) or completedq(12133)
step
Reach Level 75 |ding 75 |or
|tip You must be at least level 75 to be able to kill the Headless Horseman.
|tip Use the Leveling guides to accomplish this.
'|complete not completedq(11131,12135,11404) |next "Begin_Dailies" |or
step
click Pumpkin Shrine
|tip It's in the courtyard of the Scarlet Monastery Graveyard dungeon.
|tip You will need a full group for this.
accept Call the Headless Horseman##11404 |or
'|complete not completedq(11131,12135,11404) |next "Begin_Dailies" |or
step
click Loosely Turned Soil
|tip In front of the crypt behind the Pumpkin Shine.
kill Headless Horseman##23682
|tip He will fly down shortly after disturbing the soil.
|tip When he reaches 1% health, his head will fly off.
|tip Burn the head down to make it rejoin his body.
|tip You will need to do this twice.
|tip After the second time, he will start spawning 4 pumpkins every 30 seconds.
|tip Group them up and AoE them down.
|tip Kill his head the third time it separates to defeat him.
confirm |or
'|complete not completedq(11131,12135,11404) |next "Begin_Dailies" |or
step
click Pumpkin Shrine
turnin Call the Headless Horseman##11404 |or
'|complete not completedq(11131,12135,11404) |next "Begin_Dailies" |or
step
You have completed the availble daily quests for Hallow's End
|tip This guide will reset when more become available.
'|complete not completedq(11131,12135,11404) |next "Begin_Dailies" |or
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Hallow's End Candy Buckets",{
author="support@zygorguides.com",
description="Visit innkeeper candy buckets in Eastern Kingdoms, Kalimdor, and Outland "..
"for tasty treats.",
},[[
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12336 |goto Stormwind City/0 60.51,75.33
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12286 |goto Elwynn Forest/0 43.74,65.88
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12340 |goto Westfall/0 52.91,53.74
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12344 |goto Duskwood/0 73.79,44.25
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12397 |goto Stranglethorn Vale/0 27.06,77.27
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12396 |goto The Barrens/0 62.07,39.41
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12349 |goto Dustwallow Marsh/0 66.60,45.28
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12398 |goto Dustwallow Marsh/0 41.86,74.09
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12399 |goto Tanaris/0 52.45,27.87
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12401 |goto Silithus/0 51.83,39.19
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12350 |goto Feralas/0 30.93,43.45
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12348 |goto Desolace/0 66.33,6.59
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12347 |goto Stonetalon Mountains/0 35.52,6.39
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12345 |goto Ashenvale/0 37.01,49.26
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12400 |goto Winterspring/0 61.33,38.86
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12338 |goto Darkshore/0 37.04,44.04
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket##208144
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Cnady Bucket##12334 |goto Darnassus/0 67.45,16.04
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12331 |goto Teldrassil/0 55.62,59.85
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12337 |goto The Exodar/0 59.23,18.48
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12333 |goto Azuremyst Isle/0 48.49,49.05
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12341 |goto Bloodmyst Isle/0 55.69,59.96
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12343 |goto Wetlands/0 10.83,60.99
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12332 |goto Dun Morogh/0 47.37,52.44
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12335 |goto Ironforge/0 18.36,50.94
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12339 |goto Loch Modan/0 35.54,48.50
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12346 |goto Hillsbrad Foothills/0 51.14,59.02
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket##208144
|tip It's Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12351 |goto The Hinterlands/0 14.11,41.52
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12402 |goto Eastern Plaguelands/0 75.91,52.24
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12342 |goto Redridge Mountains/0 27.08,44.91
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12352 |goto Hellfire Peninsula/0 54.27,63.66
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12353 |goto 23.42,36.38
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12404 |goto Shattrath City/0 56.31,81.95
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
only if rep ('The Scryers')>=Neutral
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12404 |goto Shattrath City/0 28.23,49.07
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
only if rep ('The Aldor')>=Neutral
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12356 |goto Terokkar Forest/0 56.60,53.22
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket##208144
|tip It's inside the inn back in the corner.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12360 |goto Shadowmoon Valley/0 37.01,58.29
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12409 |goto 56.37,59.82
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
only if rep ('The Scryers')>=Neutral
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12409 |goto 61.00,28.17
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
only if rep ('The Aldor')>=Neutral
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12357 |goto Nagrand/0 54.19,75.88
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12403 |goto Zangarmarsh/0 78.45,62.88
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
Visit the Candy Bucket in Zangarmarsh, Cenarion Refuge
step
click Candy Bucket##208144
|tip It's inside the inn atop the giant mushroom.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12354 |goto 67.16,48.94
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
Visit the Candy Bucket in Zangarmarsh, Telredor
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12355 |goto 41.90,26.17
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12358 |goto Blade's Edge Mountains/0 35.83,63.74
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
Visit the Candy Bucket in Blade's Edge Mountains, Sylvanaar
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12359 |goto 61.05,68.08
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12406 |goto 62.90,38.33
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
Visit the Candy Bucket in Blade's Edge Mountains, Evergrove
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12407 |goto Netherstorm/0 32.02,64.44
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
click Candy Bucket##208144
|tip Inside the building.
'|use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12408 |goto 43.31,36.10
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\Bring Me The Head of... Oh Wait",{
author="support@zygorguides.com",
startlevel=75,
achieveid={255},
patch='30001',
condition_suggested=function() return isevent("Hallow's End") end,
description="To earn this achievement, you will have to kill the Headless Horseman.",
},[[
step
Reach Level 75 |ding 75
|tip You will need to be level 75 to summon the Horseman yourself.
|tip You can be any level and skip this if someone can summon for you.
|tip Use the leveling guides to accomplish this.
step
Inside the Scarlet Monastery Graveyard:
kill Headless Horseman##23682
|tip Press "I" and queue for "The Headless Horsman" event under the Type section.
|tip Accept the daily in the couryard at the Pumpkin Shrine when you are ready.
Earn the "Bring Me The Head of... Oh Wait" Achievement |achieve 255
step
_Congratulations!_
You Earned the "Bring Me The Head of... Oh Wait" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\Check Your Head",{
author="support@zygorguides.com",
startlevel=1,
achieveid={291},
patch='30003',
condition_suggested=function() return isevent("Hallow's End") end,
description="To earn this achievement you have to use Weighted Jack-o'-Lanterns to put pumpkin heads on each of the races listed below:\n\n"..
"Blood Elf\nDraenei\nDwarf\nGnome\nHuman\nNight Elf\nOrc\nTauren\nTroll\nUndead",
},[[
step
use the Weighted Jack-o'-Lantern##34068
|tip You receive Weighted Jack-o'-Lanterns by doing the Hallow's End daily quests and killing the Headless Horseman.
|tip Make sure the player doesn't already have a jack-o-lantern on their head or you won't get credit.
|tip Use your Weighted Jack-o'-Lanterns on the following races:
Undead |achieve 291/1 |goto Dalaran/1 49.38,28.50 |only if not achieved(291,1)
Troll |achieve 291/2 |goto Dalaran/1 49.38,28.50 |only if not achieved(291,2)
Tauren |achieve 291/3 |goto Dalaran/1 49.38,28.50 |only if not achieved(291,3)
Orc |achieve 291/4 |goto Dalaran/1 49.38,28.50 |only if not achieved(291,4)
Night Elf |achieve 291/5 |goto Dalaran/1 49.00,61.36 |only if not achieved(291,5)
Human |achieve 291/6 |goto Dalaran/1 49.00,61.36 |only if not achieved(291,6)
Draenei |achieve 291/7 |goto Dalaran/1 49.00,61.36 |only if not achieved(291,7)
Blood Elf |achieve 291/8 |goto Dalaran/1 49.38,28.50 |only if not achieved(291,8)
Gnome |achieve 291/9 |goto Dalaran/1 49.00,61.36 |only if not achieved(291,9)
Dwarf |achieve 291/10 |goto Dalaran/1 49.00,61.36 |only if not achieved(291,10)
Earn the "Check Your Head" Achievement |achieve 291
step
_Congratulations!_
You Earned the "Check Your Head" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\G.N.E.R.D. Rage",{
author="support@zygorguides.com",
startlevel=1,
achieveid={1261},
patch='30001',
condition_suggested=function() return isevent("Hallow's End") end,
description="Earn 50 Honorable Hills while Under the Influence of the G.N.E.R.D. Buff.",
},[[
step
use G.N.E.R.D.S.##37583
|tip You can collect these from Handfuls of Candy after Trick or Treating.
|tip Use them every 30 minutes while PvPing to keep the buff on.
|tip If you don't have the buff active while killing players, you won't get credit.
Do any type of PvP of your choice
|tip You must be killing players that give you honor.
Earn #50# Honorable Hills while Under the Influence of the G.N.E.R.D. Buff |achieve 1261
step
_Congratulations!_
You Earned the "G.N.E.R.D. Rage" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\Hallowed Be Thy Name",{
author="support@zygorguides.com",
startlevel=1,
achieveid={1656},
patch='30002',
condition_suggested=function() return isevent("Hallow's End") end,
description="To earn this achievement, complete the following Hallow's End achievements:\n\n"..
"Trick or Treat!\nOut With It\nBring Me The Head of... Oh Wait\nThe Savior of Hallow's End\n"..
"That Sparkling Smile\nRotten Hallow\nG.N.E.R.D. Rage\nCheck Your Head\nThe Masquerade\n"..
"Sinister Calling\nTricks and Treats of Azeroth",
},[[
leechsteps "Events Guides\\Hallow's End\\Achievements\\Out With It" 1-1
leechsteps "Events Guides\\Hallow's End\\Achievements\\Bring Me The Head of... Oh Wait" 1-1
leechsteps "Events Guides\\Hallow's End\\Achievements\\The Savior of Hallow's End" 1-11
leechsteps "Events Guides\\Hallow's End\\Achievements\\Rotten Hallow" 1-7
leechsteps "Events Guides\\Hallow's End\\Achievements\\G.N.E.R.D. Rage" 1-1
leechsteps "Events Guides\\Hallow's End\\Achievements\\Check Your Head" 1-1
leechsteps "Events Guides\\Hallow's End\\Achievements\\The Masquerade" 1-1
leechsteps "Events Guides\\Hallow's End\\Achievements\\Sinister Calling" 1-3
leechsteps "Events Guides\\Hallow's End\\Achievements\\That Sparkling Smile" 1-2
leechsteps "Events Guides\\Hallow's End\\Achievements\\Tricks and Treats of Azeroth"
step
Earn the "Hallowed Be Thy Name" Achievement |achieve 1656
step
_Congratulations!_
You Earned the "Hallowed Be Thy Name" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\A Mask for All Occasions",{
author="support@zygorguides.com",
startlevel=1,
achieveid={284},
patch='30001',
condition_suggested=function() return isevent("Hallow's End") end,
description="To earn this achievement, collect the following 24 masks:\n\n"..
"Blood Elf Male/Female\nDraenei Male/Female\nDwarf Male/Female\nGnome Male/Female\n"..
"Human Male/Female\nNight Elf Male/Female\nOrc Male/Female\nTauren Male/Female\n"..
"Troll Male/Female\nUndead Male/Female",
},[[
step
Obtain a Flimsy Male Orc Mask |achieve 284/1 |only if not achieved(284,1)
Obtain a Flimsy Male Blood Elf Mask |achieve 284/2 |only if not achieved(284,2)
Obtain a Flimsy Female Orc Mask |achieve 284/3 |only if not achieved(284,3)
Obtain a Flimsy Female Human Mask |achieve 284/4 |only if not achieved(284,4)
Obtain a Flimsy Female Gnome Mask |achieve 284/5 |only if not achieved(284,5)
Obtain a Flimsy Female Draenei Mask |achieve 284/6 |only if not achieved(284,6)
Obtain a Flimsy Male Troll Mask |achieve 284/7 |only if not achieved(284,7)
Obtain a Flimsy Female Undead Mask |achieve 284/8 |only if not achieved(284,8)
Obtain a Flimsy Female Troll Mask |achieve 284/9 |only if not achieved(284,9)
Obtain a Flimsy Female Blood Elf Mask |achieve 284/10 |only if not achieved(284,10)
Obtain a Flimsy Male Undead Mask |achieve 284/11 |only if not achieved(284,11)
Obtain a Flimsy Male Draenei Mask |achieve 284/12 |only if not achieved(284,12)
Obtain a Flimsy Female Night Elf Mask |achieve 284/13 |only if not achieved(284,13)
Obtain a Flimsy Male Night Elf Mask |achieve 284/14 |only if not achieved(284,14)
Obtain a Flimsy Male Gnome Mask |achieve 284/15 |only if not achieved(284,15)
Obtain a Flimsy Male Tauren Mask |achieve 284/16 |only if not achieved(284,16)
Obtain a Flimsy Male Human Mask |achieve 284/17 |only if not achieved(284,17)
Obtain a Flimsy Male Dwarf Mask |achieve 284/18 |only if not achieved(284,18)
Obtain a Flimsy Female Tauren Mask |achieve 284/19 |only if not achieved(284,19)
Obtain a Flimsy Female Dwarf Mask |achieve 284/20 |only if not achieved(284,20)
|tip Obtain all flimsy masks by Trick or Treating hourly.
|tip You also have a chance to obtain one from the Crudely Wrapped Gift from daily fire quests.
Earn the "A Mask for All Occasions" Achievement |achieve 284
step
_Congratulations!_
You Earned the "A Mask for All Occasions" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\The Mask Task",{
author="support@zygorguides.com",
startlevel=1,
achieveid={979},
patch='30003',
condition_suggested=function() return isevent("Hallow's End") end,
description="To earn this achievement, you will need to obtain a Flimsy Mask during Hallow's End.",
},[[
step
Earn "The Mask Task" Achievement |achieve 979
|tip Obtain any type of flimsy mask by Trick or Treating hourly.
|tip You also have a chance to obtain one from the Crudely Wrapped Gift from daily fire quests.
step
_Congratulations!_
You Earned "The Mask Task" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\The Masquerade",{
author="support@zygorguides.com",
startlevel=1,
achieveid={283},
patch='30001',
condition_suggested=function() return isevent("Hallow's End") end,
description="To earn this achievement you will have to get transformed by the Hallowed Wands listed below:\n\n"..
"Hallowed Wand - Bat\nHallowed Wand - Ghost\nHallowed Wand - Leper Gnome\nHallowed Wand - Ninja\n"..
"Hallowed Wand - Pirate\nHallowed Wand - Skeleton\nHallowed Wand - Wisp",
},[[
step
Transform into a Bat |achieve 283/1 |only if not achieved(283,1)
Transform into a Ghost |achieve 283/2 |only if not achieved(283,2)
Transform into a Leper Gnome |achieve 283/3 |only if not achieved(283,3)
Transform into a Ninja |achieve 283/4 |only if not achieved(283,4)
Transform into a Pirate |achieve 283/5 |only if not achieved(283,5)
Transform into a Skeleton |achieve 283/6 |only if not achieved(283,6)
Transform into a Wisp |achieve 283/7 |only if not achieved(283,7)
|tip Have other players use Hallowed Wands on you while in a party to transform.
|tip Find someone to team up with or ask around in Dalaran.
step
_Congratulations!_
You Earned "The Masquerade" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\Out With It",{
author="support@zygorguides.com",
startlevel=1,
achieveid={288},
patch='30003',
condition_suggested=function() return isevent("Hallow's End") end,
description="To earn this achievement you will have to eat so many Tricky Treats that you get an upset tummy.",
},[[
step
use the Tricky Treat##33226
|tip You get these by completing Hallows End quests.
|tip Keep using your Tricky Treats quickly until you puke.
|tip You will need at least 2-3 Tricky Treats.
|tip Use the "Hallow's End Candy Buckets" guide to collect treats.
Earn the "Out With It" Achievement |achieve 288
step
_Congratulations!_
You Earned the "Out With It" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\Rotten Hallow",{
author="support@zygorguides.com",
startlevel=25,
achieveid={1040},
patch='40300',
condition_suggested=function() return isevent("Hallow's End") end,
description="Ruin Hallow's End for the Horde and foil their attempts to wreck the Alliance celebration by completing the following quests:\n\n"..
"The Power of Pine\nCrashing the Wickerman Festival",
},[[
step
Reach Level 25 |ding 25
|tip You must be at least level 25 to be able to accept these quests.
|tip Use the Leveling guides to accomplish this.
step
talk Sergeant Hartman##15199
accept The Power of Pine##8373 |goto Hillsbrad Foothills/0 50.00,57.34
step
use Stink Bomb Cleaner##20604
|tip Use it next to a stink bomb placed by a Horde player.
|tip They look like small metal objects surrounded by orange smoke on the ground around Southshore.
|tip Run around Southshore and look for them, they will most likely be near the outskirts of the town.
Clean Up a Stink Bomb in Southshore |q 8373/1 |goto 49.58,57.65
step
talk Sergeant Hartman##15199
turnin The Power of Pine##8373 |goto 50.00,57.34
accept Crashing the Wickerman Festival##1658 |goto 50.00,57.34
step
Scout Out the Forsaken's Wickerman Festival |q 1658/1 |goto Tirisfal Glades/0 55.18,68.97
|tip Move quick and run from the guards if they attack you.
step
talk Sergeant Hartman##15199
turnin Crashing the Wickerman Festival##1658 |goto Hillsbrad Foothills/0 50.00,57.34
step
Earn "Rotten Hallow" Achievement |achieve 1040
step
_Congratulations!_
You Earned the "Rotten Hallow" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\The Savior of Hallow's End",{
author="support@zygorguides.com",
startlevel=1,
achieveid={289},
patch='30003',
condition_suggested=function() return isevent("Hallow's End") end,
description="To earn this achievement, complete one of the quests to save a village from the Headless Horseman.",
},[[
step
talk Human Commoner##18927
accept Costumed Orphan Matron##11356 |goto Stormwind City/0 61.75,74.13
step
talk Costumed Orphan Matron##24519
turnin Costumed Orphan Matron##11356 |goto Elwynn Forest/0 42.62,64.38
accept Fire Brigade Practice##11360 |goto 42.62,64.38
|tip You may need to wait for the Horseman's assault to stop.
step
click Water Barrel |goto 42.50,64.49
|tip Click the Water Barrel to pick up a bucket of water.
collect Water Bucket##32971 |n
use the Water Bucket##32971
|tip Throw the buckets at the fires on top of buildings around this area.
|tip You may have to wait a short amount of time for the Horseman to attack.
Put Out #5# Fires |q 11360/1 |goto 42.40,65.83
step
talk Large Jack-O'-Lantern
accept Smash the Pumpkin##12133 |goto 42.39,65.87
|tip This will only be available after the Headless Horseman is defeated.
|tip You can skip this step if it does not drop.
step
talk Costumed Orphan Matron##24519
turnin Fire Brigade Practice##11360 |goto 42.62,64.38
turnin Smash the Pumpkin##12133 |goto 42.62,64.38 |only if haveq(12133) or completedq(12133)
step
talk Costumed Orphan Matron##24519
accept Stop the Fires!##11131 |goto 42.62,64.38 |or
accept "Let the Fires Come!"##12135 |goto 42.62,64.38 |or
|tip You will only be able to accept one of these quests.
|tip The quest offered depends on whether Goldshire is under attack or not.
step
click Water Barrel |goto 42.50,64.49
|tip Click the Water Barrel to pick up a bucket of water.
collect Water Bucket##32971 |n
use the Water Bucket##32971
|tip Throw the buckets at the fires on top of buildings around this area.
Put Out the Fires |q 11131/1 |goto 42.40,65.83
|only if haveq(11131) or completedq(11131)
step
click Water Barrel |goto 52.55,41.30
|tip Click the Water Barrel to pick up a bucket of water.
collect Water Bucket##32971 |n
use the Water Bucket##32971
|tip Throw the buckets at the fires on top of buildings around this area.
Put Out the Fires |q 12135/1 |goto 42.40,65.83
|only if haveq(12135) or completedq(12135)
step
talk Large Jack-O'-Lantern
accept Smash the Pumpkin##12133 |goto 42.39,65.87
|tip This will only be available after the Headless Horseman is defeated.
step
talk Costumed Orphan Matron##24519
turnin Stop the Fires!##11131 |goto 42.62,64.38 |only if haveq(11131) or completedq(11131) |or
turnin "Let the Fires Come!"##12135 |goto 42.62,64.38 |only if haveq(12135) or completedq(12135) |or
turnin Smash the Pumpkin##12133 |goto 42.62,64.38 |only if haveq(12133) or completedq(12133)
|only if haveq(11131,12135,12133) or completedq(11131,12135,12133)
step
Earn "The Savior of Hallow's End" Achievement |achieve 289
step
_Congratulations!_
You Earned "The Savior of Hallow's End" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\Sinister Calling",{
author="support@zygorguides.com",
startlevel=1,
achieveid={292},
patch='30003',
condition_suggested=function() return isevent("Hallow's End") end,
description="To earn this achievement, you will need to obtain a Sinister Squashling pet and Hallowed Helm.",
},[[
step
collect 1 Sinister Squashling##33154
collect 1 Hallowed Helm##33292
|tip These drop from the Headless Horseman.
|tip They have a very small chance to drop from the Treat Bag from Trick or Treating hourly.
step
use the Sinister Squashling##33154
Obtain a Sinister Squashling Pet |achieve 292/1
step
use the Hallowed Helm##33292
Obtain a Hallowed Helm |achieve 292/2
step
_Congratulations!_
You Earned the "Sinister Calling" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\That Sparkling Smile",{
author="support@zygorguides.com",
startlevel=1,
achieveid={981},
patch='30002',
condition_suggested=function() return isevent("Hallow's End") end,
description="To earn this achievement you will need to show off your sparkling smile by using a Tooth Pick.",
},[[
step
collect 1 Tooth Pick##37604
|tip These drop from the Headless Horseman.
|tip They have a small chance to drop from the Treat Bag from Trick or Treating hourly.
|tip The also have a small chance to drop from the Crudely Wrapped Gift reward from the "Putting out the Fires" daily quest
step
use the Tooth Pick##37604
Earn the "That Sparkling Smile" Achievement |achieve 981
step
_Congratulations!_
You Earned the "That Sparkling Smile" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\Trick or Treat!",{
author="support@zygorguides.com",
startlevel=1,
achieveid={972},
patch='30003',
condition_suggested=function() return isevent("Hallow's End") end,
description="To earn this achievement you will visit a single candy bucket.",
},[[
step
click Candy Bucket
|tip Inside the building.
use the Handful of Candy##37586 |only if itemcount(37586) >= 1
accept Candy Bucket##12336 |goto Stormwind City/0 60.51,75.33
|tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents.
step
Earn the "Trick or Treat!" Achievement |achieve 972
step
_Congratulations!_
You Earned the "Trick or Treat!" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Hallow's End\\Achievements\\Tricks and Treats of Azeroth",{
author="support@zygorguides.com",
startlevel=1,
achieveid={971,965,967,969},
patch='30003',
condition_suggested=function() return isevent("Hallow's End") end,
description="To earn this achievement, you will visit the various candy buckets around Eastern "..
"Kingdoms, Kalimdor, and Outland.",
},[[
leechsteps "Events Guides\\Hallow's End\\Hallow's End Candy Buckets"
step
Earn the "Tricks and Treats of Azeroth" Achievement |achieve 971
step
_Congratulations!_
You Earned the "Tricks and Treats of Azeroth" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Harvest Festival\\Harvest Festival Quest",{
author="support@zygorguides.com",
condition_end=function() return completedq(8149) end,
description="Complete the quest \"Honoring a Hero\" for the Harvest Festival event.",
},[[
step
Reach Level 30 |ding 30
|tip You must be at least level 30 to be able to accept the quest.
|tip Use the Leveling guides to accomplish this.
step
_Note:_
|tip While you can accept this quest at level 30, you must go to an area with level 50-52 enemies.
|tip If you are not high enough level to kill enemies of that level, try to find someone to help you.
Click Here to Continue |confirm |q 8149 |future
step
talk Wagner Hammerstrike##15011
accept Honoring a Hero##8149 |goto Dun Morogh 52.60,36.03
step
Follow the path |goto Western Plaguelands 46.61,81.31 < 15 |only if walking
Follow the path up |goto Western Plaguelands 51.62,79.94 < 20 |only if walking
Enter the building |goto Western Plaguelands 52.07,83.22 < 10 |walk
use Uther's Tribute##19850
|tip Inside the building.
Place a Tribute at Uther's Tomb |q 8149/1 |goto 52.14,83.57
step
Follow the path |goto 46.61,81.31 < 15 |only if walking
talk Wagner Hammerstrike##15011
turnin Honoring a Hero##8149 |goto Dun Morogh 52.60,36.03
step
_Congratulations!_
You Completed the "Harvest Festival" Event
|tip You can now use the food at the Harvest Festival table.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Feast of Winter Veil Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not completedq(7045) end,
description="This guide section will walk you through completing the quests for the Feast of Winter Veil event.",
},[[
step
Reach Level 40 |ding 40
|tip You can skip this step and proceed, but several quests require level 30 to level 40.
|tip All quests in this guide require a minimum of level 10 to accept.
step
talk Gwenna Firebrew##5112
|tip Inside the building.
buy 1 Ice Cold Milk##1179 |goto Ironforge/0 18.63,51.77 |q 7025 |future
step
talk Wulmort Jinglepocket##13433
accept Greatfather Winter is Here!##7022 |goto Ironforge/0 33.71,67.23
accept Stolen Winter Veil Treats##7042 |goto 33.71,67.23 |only if level >= 30
accept Metzen the Reindeer##8762 |goto 33.71,67.23 |only if level >= 40
step
talk Greatfather Winter##13444
turnin Greatfather Winter is Here!##7022 |goto 33.16,65.43
accept Treats for Greatfather Winter##7025 |goto 33.16,65.43
step
talk Goli Krumn##1365
accept The Reason for the Season##7062 |goto 30.26,59.41
step
Enter the building |goto 59.29,37.87 < 10 |walk
talk Daryl Riknussun##5159
|tip Inside the building.
Train Cooking |skillmax Cooking,1 |goto 60.07,36.43
step
talk Historian Karnik##2916
|tip Inside the building.
turnin The Reason for the Season##7062 |goto 77.54,11.82
accept The Feast of Winter Veil##7063 |goto 77.54,11.82
step
Enter the building |goto Ironforge/0 44.64,49.38 < 7 |walk
talk King Magni Bronzebeard##2784
|tip Inside the building.
turnin The Feast of Winter Veil##7063 |goto 39.17,56.09
step
Leave the building |goto 44.55,49.50 < 7 |walk
talk Wulmort Jinglepocket##13433
buy 1 Recipe: Gingerbread Cookie##17200 |goto 33.71,67.23 |q 7025 |only if not knowsrecipe(21143)
buy 5 Holiday Spices##17194 |goto 33.71,67.23 |q 7025
step
use the Recipe: Gingerbread Cookie##17200
learn Gingerbread Cookie##21143
step
talk Auctioneer Redmuse##8720
|tip Inside the building.
buy 5 Small Egg##6889 |goto 24.24,74.54 |next "Cook_Gingerbread_Cookies" |q 7025 |or
_Or_
Click Here to Farm Them |confirm |next "Farm_Small_Eggs" |or
step
label "Farm_Small_Eggs"
Kill Fleshripper enemies around this area
|tip You can find them flying all over Westfall.
collect 5 Small Egg##6889 |goto Westfall/0 50.61,27.62 |q 7025
step
label "Cook_Gingerbread_Cookies"
cast Basic Campfire##818
|tip Stand next to your fire or a Dwarven Brazier in Ironforge.
create 5 Gingerbread Cookie##21143,Cooking,5 total |q 7025/1 |goto Ironforge/0 33.50,65.58
step
talk Greatfather Winter##13444
turnin Treats for Greatfather Winter##7025 |goto 33.16,65.43
step
Run up the hill |goto Alterac Mountains/0 35.18,80.18 < 30 |only if walking
talk Strange Snowman##13636
turnin Stolen Winter Veil Treats##7042 |goto Alterac Mountains/0 35.44,72.46 |only if haveq(7042) or completedq(7042)
accept You're a Mean One...##7043 |goto 35.44,72.46 |only if level >= 30
step
map Alterac Mountains/0
path follow strictbounce; loop off; ants curved; dist 30
path	30.25,53.73	29.58,62.11	31.47,66.27	34.67,69.57	37.74,70.02
path	39.55,70.80	40.82,67.09	41.76,64.12	45.09,62.50
kill The Abominable Greench##54499
collect Stolen Treats##17662 |q 7043/1
|only if haveq(7043) or completedq(7043)
step
use the Smokywood Satchel##21315
Open the Smokywood Satchel |complete itemcount(21315) == 0
|only if haveq(8762) or completedq(8762)
step
collect Pouch of Reindeer Dust##21211 |q 8762
|tip This was in the Smokywood Satchel.
|only if haveq(8762) or completedq(8762)
step
clicknpc Metzen the Reindeer##15664
Choose _"Sprinkle some of the reindeer dust onto Metzen."_
Free Metzen the Reindeer |q 8762/1 |goto Searing Gorge/0 68.75,34.23
|only if haveq(8762) or completedq(8762)
step
talk Wulmort Jinglepocket##13433
turnin You're a Mean One...##7043 |goto Ironforge/0 33.71,67.23 |only if haveq(7043) or completedq(7043)
turnin Metzen the Reindeer##8762 |goto 33.71,67.23 |only if haveq(8762) or completedq(8762)
accept A Smokywood Pastures' Thank You!##7045 |goto 33.71,67.23 |only if completedq(7043)
accept The Hero of the Day##8763 |goto 33.71,67.23 |only if level >= 40 and skill("Cooking") >= 300
step
talk Greatfather Winter##13444
turnin A Smokywood Pastures' Thank You!##7045 |goto 33.16,65.43
|only if haveq(7045) or completedq(7045)
stickystart "Collect_5_Gold"
step
kill Lesser Rock Elemental##2735+
collect 1 Deeprock Salt##8150 |q 8763/1 |goto Badlands/0 20.02,44.17
|tip You can also purchase this item from the auction house.
You can find more around [14.65,36.53]
|only if haveq(8763) or completedq(8763)
step
label "Collect_5_Gold"
Collect 5 Gold |complete _G.GetMoney() >= 50000 |q 8763 |future
|only if haveq(8763) or completedq(8763)
step
click Holly Preserver##180715
turnin The Hero of the Day##8763 |goto Ironforge/0 37.40,70.21
|only if haveq(8763) or completedq(8763)
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\'Tis the Season",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(277) end,
achieveid={277},
patch='30002',
description="During the Feast of Winter Veil, wear 3 pieces of winter clothing and eat Graccu's Mince Meat Fruitcake.",
},[[
step
Complete the "Feast of Winter Veil Quests" guide |complete completedq(7045) |only if level >= 15
Complete the "Feast of Winter Veil Quests" guide |complete completedq(7063) |only if default
step
talk Auctioneer Redmuse##8720
buy 1 Red Winter Clothes##34085 |goto Ironforge/0 24.24,74.54 |next "Collect_Winter_Boots" |or
buy 1 Green Winter Clothes##34087 |goto 24.24,74.54 |next "Collect_Winter_Boots" |or
|tip You only need one of these.
_Or_ |only if skill("Tailoring") >= 250 |or
Click Here to Craft Clothes with Tailoring |confirm |next "Craft_Winter_Clothes" |only if skill("Tailoring") >= 250 |or
'|complete achieved(277) |or
step
label "Craft_Winter_Clothes"
talk Wulmort Jinglepocket##13433
buy 1 Pattern: Red Winter Clothes##34319 |goto 33.71,67.23 |or
'|complete achieved(277) |or
step
use the Pattern: Red Winter Clothes##34319
learn Red Winter Clothes##44958 |or
'|complete achieved(277) |or
step
collect 16 Runecloth##14047 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
'|complete achieved(277) |or
step
collect 3 Wool Cloth##2592 |or
|tip Farm them from humanoid mobs or purchase them from the Auction House.
'|complete achieved(277) |or
step
talk Bombus Finespindle##5128
|tip Inside the building.
buy 1 Rune Thread##14341 |goto 39.61,34.47
buy 2 Red Dye##2604 |goto 39.61,34.47
step
create 1 Bolt of Woolen Cloth##2964,Tailoring,1 total |or
'|complete achieved(277) |or
step
create 4 Bolt of Runecloth##18401,Tailoring,4 total |or
'|complete achieved(277) |or
step
create 1 Green Winter Clothes##44950,Tailoring,1 total |or
'|complete achieved(277) |or
step
label "Collect_Winter_Boots"
talk Auctioneer Redmuse##8720
|tip Inside the building.
buy 1 Winter Boots##34086 |goto 24.24,74.54 |next "Collect_Winter_Hat" |or
_Or_ |only if skill("Leatherworking") >= 285
Click Here to Craft Boots with Leatherworking |confirm |next "Create_Winter_Boots" |or |only if skill("Leatherworking") >= 285
'|complete achieved(277) |or
step
label "Create_Winter_Boots"
talk Wulmort Jinglepocket##13433
buy Pattern: Winter Boots##34262 |goto 33.71,67.23 |or
'|complete achieved(277) |or
step
use the Pattern: Winter Boots##34262
learn Winter Boots##44953 |or
'|complete achieved(277) |or
step
collect 1 Copper Bar##2840 |or
|tip Farm and Smelt it with Mining or purchase it from the Auction House.
'|complete achieved(277) |or
step
collect 1 Bolt of Woolen Cloth##2997 |or
|tip Farm the cloth from humanoid mobs and create it with Tailoring or purchase it from the Auction House.
'|complete achieved(277) |or
step
collect 4 Rugged Leather##8170 |or
|tip Farm it with Skinning or purchase it from the Auction House.
'|complete achieved(277) |or
step
create 1 Winter Boots##44953,Leatherworking,1 total |or
'|complete achieved(277) |or
step
label "Collect_Winter_Hat"
kill Grand Magus Telestra##26731
|tip Inside "The Nexus" dungeon.
|tip It's the bottom portal.
|tip The hat will only drop on Heroic difficulty.
Collect a Winter Hat |complete itemcount(21525) >=1 or itemcount(21524) >= 1 |goto The Nexus/0 |achieve 277 |future
step
collect Smokywood Pastures Sampler##17685 |or
|tip You should have this from completing "Treats for Greatfather Winter" in the quest guide.
|tip It can take a while for this to appear in your mailbox.
'|complete achieved(277) |or
step
use the Smokywood Pastures Sampler##17685
use Smokywood Pastures Extra-Special Gift##21216
|tip You may also receive this later in the mail.
collect 1 Graccu's Mince Meat Fruitcake##21215 |or
'|complete achieved(277) |or
step
use the Red Winter Clothes##34085
Equip the Red Winter Clothes |equipped Red Winter Clothes##34085
|only if itemcount(34085) >= 1
step
use the Green Winter Clothes##34087
Equip the Green Winter Clothes |equipped Green Winter Clothes##34087
|only if itemcount(34087) >= 1
step
use the Winter Boots##151791
Equip the Winter Boots |equipped Winter Boots##151791
step
use the Green Winter Hat##21525
Equip the Green Winter Hat |equipped Green Winter Hat##21525
|only if itemcount(21525) >= 1
step
use the Red Winter Hat##21524
Equip the Red Winter Hat |equipped Red Winter Hat##21524
|only if itemcount(21524) >= 1
step
|achieve 277
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\A Frosty Shake",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1690) end,
achieveid={1690},
patch='30003',
description="During the Feast of Winter Veil, use your Winter Veil Disguise kit to become a "..
"snowman and then dance with another snowman in Dalaran.",
},[[
step
Reach Level 30 |ding 30
step
Complete the "Feast of Winter Veil Quests" guide |complete completedq(7043)
step
collect 1 Winter Veil Disguise Kit##17712 |or
|tip This should appear in your mailbox within 24 hours of completing the quest guide.
'|complete achieved(1690) |or
step
talk Wulmort Jinglepocket##13433
buy 1 Snowball##17202 |goto Ironforge/0 33.71,67.23 |or
'|complete achieved(1690) |or
step
use the Winter Veil Disguise Kit##17712
|tip Use it near another snowman because it will root you.
|tip You may have to search around Dalaran.
Become a Snowman |havebuff Snowman##21848 |goto Dalaran/1 48.11,62.79 |or
'|complete achieved(1690) |or
step
Dance with another snowman |script DoEmote("DANCE")
|tip Target another snowman player.
|achieve 1690
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\BB King",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(4436) end,
achieveid={4436},
patch='30300',
description="Pelt the following enemy leaders:\n\nBaine Bloodhoof\nLady Sylvanas Windrunner\n"..
"Lor'themar Theron\nHigh Overlord Saurfang",
},[[
step
click A Winter Veil Gift
|tip You can only open a present from December 25 to January 2.
accept A Winter Veil Gift##13966 |goto Ironforge/0 33.63,65.60
step
use Winter Veil Gift##46740
collect 1 Red Rider Air Rifle##46725 |or
|tip You can only open a present from December 25 to January 2.
'|complete achieved(4436) |or
step
clicknpc Vol'jin##10540
use the Red Rider Air Rifle##46725
|tip Use it on Vol'jin inside the building.
Use your Red Rider Air Rifle on Vol'jin |achieve 4436/4 |goto Orgrimmar/0 34.35,36.34
step
clicknpc Thrall##4949
use the Red Rider Air Rifle##46725
|tip Use it on Thrall inside the building.
Use your Red Rider Air Rifle on Thrall |achieve 4436/5 |goto Orgrimmar/0 31.63,37.83
step
clicknpc Cairne Bloodhoof##3057
use the Red Rider Air Rifle##46725
|tip Use it on Cairne Bloodhoof inside the building.
Use your Red Rider Air Rifle on Cairne Bloodhoof |achieve 4436/1 |goto Thunder Bluff/0 60.28,51.68
step
Enter the tunnel |goto Undercity/0 51.90,64.71 < 10 |walk
clicknpc Lady Sylvanas Windrunner##10181
use the Red Rider Air Rifle##46725
|tip Use it on Lady Sylvanas Windrunner inside the building.
Use your Red Rider Air Rifle on Lady Sylvanas Windrunner |achieve 4436/2 |goto 58.05,91.77
step
clicknpc Lor'themar Theron##16802
use the Red Rider Air Rifle##46725
|tip Use it on Lor'themar Theron inside the building.
Use your Red Rider Air Rifle on Lor'themar Theron |achieve 4436/3 |goto Silvermoon City/0 53.80,20.24
step
|achieve 4436
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Crashin' & Thrashin'",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1295) end,
achieveid={1295},
patch='30002',
description="Gain 25 crashes with your Crashin' Thrashin' Racer during the Feast of Winter Veil.",
},[[
step
Enter the building |goto Dalaran/1 43.15,45.13 < 5
talk Jepetto Joybuzz##29478
buy 1 Blue Crashin' Thrashin' Racer Controller##54343 |goto 44.81,45.62 |or
'|complete achieved(1295) |or
step
use the Blue Crashin' Thrashin' Racer Controller##54343
|tip Use the "Racer Rocket Slam" ability on other players' race controllers.
|tip You will likely need to search for them.
|tip Having a friend to do this with helps.
Gain #25# Crashes with your Racer |achieve 1295 |goto 48.67,62.04
step
|achieve 1295
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Fa-la-la-la-Ogri'la",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1282) end,
achieveid={1282},
patch='30001',
description="Complete the Bomb Them Again! quest while mounted on a flying reindeer during the Feast of Winter Veil.",
},[[
step
Kiss a Winter Reveler |script DoEmote("KISS")
|tip Emote kiss Winter Revelers for a chance at Mistletoe.
|tip They can be found in capital cities around inns.
|tip You can only get a reward from them once per hour.
|tip You may need to do this multiple times before proceeding.
Collect a Fresh Holly or Preserved Holly |complete itemcount(21212) >= 1 or itemcount(21212) >= 1 |achieve 1282 |future
step
Routing to proper section |next "Complete_Achievement_Quest" |only if completedq(11010)
Routing to proper section |next "Unlock_Ogri'la_Dailies" |only if not completedq(11010)
step
label "Unlock_Ogri'la_Dailies"
talk Chu'a'lor##23233
accept The Trouble Below##11057 |goto Blade's Edge Mountains/0 28.75,57.38
accept The Crystals##11025 |goto 28.75,57.38
step
Kill enemies around this area
|tip They spawn all around the crystal-covered hills.
collect 6 Apexis Shard##32569 |goto 29.23,53.70 |q 11025
step
talk Chu'a'lor##23233
turnin The Crystals##11025 |goto 28.75,57.38
accept An Apexis Relic##11058 |goto 28.75,57.38
step
talk Torkus##23316
accept Our Boy Wants To Be A Skyguard Ranger##11030 |goto 28.38,57.65
step
kill Gan'arg Analyzer##23386+
|tip They can respawn during this process.
click Apexis Relic
|tip It looks like a small crystal of alternating colors floating in the air.
|tip Kill more enemies for shards if needed.
Choose _"Insert an Apexis Shard to begin!"_
|tip Stand on the white globe and watch as the crystal floating above you casts a beam on the surrounding clusters.
|tip Click the clusters in the same color pattern as the crystal.
|tip You must do this eight times.
|tip If you make a mistake, you will be given a few chances to correct yourself before having to start over.
Attain the Apexis Emanations |q 11058/1 |goto 29.05,47.00
step
Kill enemies around this area
|tip They spawn all around the crystal-covered hills.
collect 11 Apexis Shard##32569 |goto 29.23,53.70 |q 11030
step
Click the Fel Crystalforge
|tip It looks like a big metal machine with green smoke coming out of it.
Choose _"Purchase 1 Unstable Flask of the Beast for the cost of 10 Apexis Shards"_
collect 1 Unstable Flask of the Beast##32598 |q 11030/1 |goto 32.79,40.49
step
talk Chu'a'lor##23233
turnin An Apexis Relic##11058 |goto 28.75,57.38
accept The Relic's Emanation##11080 |goto 28.75,57.38
step
talk Torkus##23316
turnin Our Boy Wants To Be A Skyguard Ranger##11030 |goto 28.38,57.65
step
kill Gan'arg Analyzer##23386+
|tip They can respawn during this process.
click Apexis Relic
|tip It looks like a small crystal of alternating colors floating in the air.
|tip Kill more enemies for shards if needed.
Choose _"Insert an Apexis Shard to begin!"_
|tip Stand on the white globe and watch as the crystal floating above you casts a beam on the surrounding clusters.
|tip Click the clusters in the same color pattern as the crystal.
|tip You must do this eight times.
|tip If you make a mistake, you will be given a few chances to correct yourself before having to start over.
Attain the Apexis Vibrations |q 11080/1 |goto 31.49,63.35
step
talk Chu'a'lor##23233
turnin The Relic's Emanation##11080 |goto 28.75,57.38
accept The Skyguard Outpost##11062 |goto 28.75,57.38
step
talk Sky Commander Keller##23334
turnin The Skyguard Outpost##11062 |goto 27.40,52.69
step
label "Complete_Achievement_Quest"
talk Sky Sergeant Vanderlip##23120
accept Bombing Run##11010 |goto 27.58,52.91
step
use the Skyguard Bombs##32456
|tip While on your flying reindeer mount, use them on Fel Cannonball Stacks.
|tip They are located next to cannons and marked with a red arrow.
|tip Keep moving and avoid the fel cannonfire.
Destroy #15# Fel Cannonball Stacks |q 11010/1 |goto 34.49,40.99 |achieve 1282 |future
step
talk Sky Sergeant Vanderlip##23120
turnin Bombing Run##11010 |goto 27.58,52.91
accept Bomb Them Again!##11023 |goto 27.58,52.91
step
_You must be on a flying mount!_
use the Preserved Holly##21213 |only if itemcount(21213) >= 1
use the Fresh Holly##21212 |only if itemcount(21212) >= 1
Use Holly While Riding your Flying Mount |havebuff Festive Holiday Mount##62061 |achieve 1282 |future
step
_You must be on a flying reindeer mount!_
use the Skyguard Bombs##32456
|tip While on your flying reindeer mount, use them on Fel Cannonball Stacks.
|tip They are located next to cannons and marked with a red arrow.
|tip Keep moving and avoid the fel cannonfire.
Destroy #15# Fel Cannonball Stacks |q 11023/1 |goto 34.49,40.99 |achieve 1282 |future
step
_You must be on a flying reindeer mount!_
talk Sky Sergeant Vanderlip##23120
turnin Bomb Them Again!##11023 |goto 27.58,52.91
step
|achieve 1282
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\He Knows If You've Been Naughty",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1689) end,
achieveid={1689},
patch='30002',
description="Open one of the presents underneath the Winter Veil tree once they are available.",
},[[
step
Click a present under the tree
|tip You can only open a present from December 25 to January 2.
|tip No peeking!
|achieve 1689 |goto Ironforge/0 33.81,66.14
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Holiday Bromance",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1686) end,
achieveid={1686},
patch='30002',
description="Use Mistletoe on the eight Alliance \"Brothers\" during the Feast of Winter Veil.",
},[[
step
Kiss a Winter Reveler |script DoEmote("KISS")
|tip Emote kiss Winter Revelers for a chance at Mistletoe.
|tip They can be found in capital cities around inns.
|tip You can only get a reward from them once per hour.
|tip You may need to do this multiple times before proceeding.
collect 8 Mistletoe##21519 |achieve 1686 |future
step
clicknpc Brother Kristoff##1444
use the Mistletoe##21519
|tip Use it on Brother Kristoff outside the buildings.
Use Mistletoe on Brother Kristoff |achieve 1686/5 |goto Stormwind City/0 55.04,54.16
step
clicknpc Brother Benjamin##5484
use the Mistletoe##21519
|tip Use it on Brother Benjamin.
|tip He patrols back and forth on the right side of the room.
Use Mistletoe on Brother Benjamin |achieve 1686/1 |goto 51.46,46.09
step
clicknpc Brother Cassius##1351
use the Mistletoe##21519
|tip Use it on Brother Cassius inside the building.
Use Mistletoe on Brother Cassius |achieve 1686/3 |goto 53.33,45.30
step
Run down the ramp |goto 51.22,44.81 < 5 |walk
clicknpc Brother Crowley##12336
use the Mistletoe##21519
|tip Use it on Brother Crowley inside the building.
Use Mistletoe on Brother Crowley |achieve 1686/6 |goto 52.62,43.18
step
Run up the ramp |goto 51.12,44.29 < 5 |walk
clicknpc Brother Joshua##5489
use the Mistletoe##21519
|tip Use it on Brother Joshua inside the building.
Use Mistletoe on Brother Joshua |achieve 1686/9 |goto 49.51,45.21
step
clicknpc Brother Wilhelm##927
use the Mistletoe##21519
|tip Use it on Brother Wilhelm.
Use Mistletoe on Brother Wilhelm |achieve 1686/2 |goto Elwynn Forest/0 41.09,66.04
step
clicknpc Brother Nimetz##739
use the Mistletoe##21519
|tip Use it on Brother Nimetz.
Use Mistletoe on Brother Nimetz |achieve 1686/8 |goto Stranglethorn Vale/0 37.83,3.56
step
clicknpc Brother Karman##8140
use the Mistletoe##21519
|tip Use it on Brother Karman.
Use Mistletoe on Brother Karman |achieve 1686/4 |goto Dustwallow Marsh/0 67.40,47.41
step
clicknpc Brother Anton##1182
use the Mistletoe##21519
|tip Use it on Brother Anton inside the building.
Use Mistletoe on Brother Anton |achieve 1686/7 |goto Desolace/0 66.52,7.90
step
|achieve 1686
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Let It Snow",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1687) end,
achieveid={1687},
patch='30002',
description="During the Feast of Winter Veil, use a Handful of Snowflakes on the following "..
"race/class combinations:\n\nBlood Elf Warlock\nDraenei Priest\nDwarf Paladin\n"..
"Gnome Mage\nHuman Warrior\nNight Elf Druid\nOrc Death Knight\nTauren Shaman\n"..
"Troll Hunter\nUndead Rogue",
},[[
step
Kiss a Winter Reveler |script DoEmote("KISS")
|tip Inside the building.
|tip Emote kiss Winter Revelers for a chance at Mistletoe.
|tip You can only get a reward from them once per hour.
|tip You may need to do this multiple times before proceeding.
collect 10 Handful of Snowflakes##34191 |goto Ironforge/0 20.06,53.74 |or
'|complete achieved(1687) |or
step
Use a Handful of Snowflakes on the following race/class combinations:
use the Handful of Snowflakes##34191
|tip Use one on each of the races below.
Blood Elf Warlock |achieve 1687/10 |goto 31.01,67.51
Draenei Priest |achieve 1687/1 |goto 31.01,67.51
Dwarf Paladin |achieve 1687/6 |goto 31.01,67.51
Gnome Mage |achieve 1687/7 |goto 31.01,67.51
Human Warrior |achieve 1687/3 |goto 31.01,67.51
Night Elf Druid |achieve 1687/8 |goto 31.01,67.51
Orc Death Knight |achieve 1687/4 |goto 31.01,67.51
Tauren Shaman |achieve 1687/9 |goto 31.01,67.51
Troll Hunter |achieve 1687/2 |goto 31.01,67.51
Undead Rogue |achieve 1687/5 |goto 31.01,67.51
step
|achieve 1687
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\On Metzen!",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(273) end,
achieveid={273},
patch='30008',
description="Save Metzen the Reindeer.",
},[[
step
Reach Level 40 |ding 40
step
talk Wulmort Jinglepocket##13433
accept Metzen the Reindeer##8762 |goto Ironforge/0 33.71,67.23
step
use the Smokywood Satchel##21315
Open the Smokywood Satchel |complete itemcount(21315) == 0 or completedq(8762)
step
clicknpc Metzen the Reindeer##15664
Choose _"Sprinkle some of the reindeer dust onto Metzen."_
Free Metzen the Reindeer |q 8762/1 |goto Searing Gorge/0 68.76,34.23
step
talk Wulmort Jinglepocket##13433
turnin Metzen the Reindeer##8762 |goto Ironforge/0 33.71,67.23
step
|achieve 273
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Scrooge",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1255) end,
achieveid={1255},
patch='30001',
description="Throw a snowball at King Magni Bronzebeard during the Feast of Winter Veil.",
},[[
step
talk Wulmort Jinglepocket##13433
buy 1 Snowball##17202 |goto Ironforge/0 33.71,67.23 |or
'|complete achieved(1255) |or
step
Enter the building |goto 44.64,49.38 < 10 |walk
talk King Magni Bronzebeard##2784
use the Snowball##17202
|tip Use it on King Magni Bronzebeard.
Throw a Snowball at King Magni Bronzebeard |achieve 1255 |goto 39.17,56.09
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Simply Abominable",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(279) end,
achieveid={279},
patch='30008',
description="Complete the quest to retrieve Smokywood Pastures' stolen treats and receive a Smokywood Pastures' Thank You.",
},[[
step
Reach Level 30 |ding 30
step
talk Wulmort Jinglepocket##13433
accept Stolen Winter Veil Treats##7042 |goto Ironforge/0 33.71,67.23
step
Run up the hill |goto Alterac Mountains/0 35.18,80.18 < 30 |only if walking
talk Strange Snowman##13636
turnin Stolen Winter Veil Treats##7042 |goto Alterac Mountains/0 35.4,72.6
accept You're a Mean One...##7043 |goto 35.4,72.6
step
map Alterac Mountains/0
path follow strictbounce; loop off; ants curved; dist 30
path	30.25,53.73	29.58,62.11	31.47,66.27	34.67,69.57	37.74,70.02
path	39.55,70.80	40.82,67.09	41.76,64.12	45.09,62.50
kill The Abominable Greench##54499
collect Stolen Treats##17662 |q 7043/1
step
talk Wulmort Jinglepocket##13433
turnin You're a Mean One...##7043 |goto Ironforge/0 33.71,67.23
accept A Smokywood Pastures' Thank You!##7045 |goto 33.71,67.23
step
talk Greatfather Winter##13444
turnin A Smokywood Pastures' Thank You!##7045 |goto 33.16,65.43
step
|achieve 279
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\The Winter Veil Gourmet",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1688) end,
achieveid={1688},
patch='30003',
description="During the Feast of Winter Veil, use your culinary expertise to produce a Gingerbread "..
"Cookie, Winter Veil Egg Nog and Hot Apple Cider.",
},[[
step
Reach 325 Cooking Skill |complete skill("Cooking") >= 325 or achieved(1688)
|tip Use the "Cooking 1-450" Profession guide.
step
talk Gwenna Firebrew##5112
|tip Inside the building.
buy 1 Ice Cold Milk##1179 |goto Ironforge/0 18.63,51.77 |or
'|complete achieved(1688) |or
step
talk Macey Jinglepocket##13434
buy 1 Sparkling Apple Cider##34412 |goto 33.65,67.25 |or
'|complete achieved(1688) |or
step
talk Wulmort Jinglepocket##13433
buy 1 Recipe: Winter Veil Egg Nog##17201 |goto 33.71,67.23
buy 1 Recipe: Hot Apple Cider##34413 |goto 33.71,67.23
buy 1 Recipe: Gingerbread Cookie##17200 |goto 33.71,67.23
buy 3 Holiday Spices##17194 |goto 33.71,67.23
buy 2 Holiday Spirits##17196 |goto 33.71,67.23
'|complete achieved(1688) |or
step
talk Auctioneer Redmuse##8720
|tip Inside the building.
buy 2 Small Egg##6889 |goto 24.24,74.54 |next "Learn_Hot_Apple_Cider" |or
_Or_
Click Here to Farm Them |confirm |next "Farm_Small_Eggs" |or
'|complete achieved(1688) |or
step
label "Farm_Small_Eggs"
Kill Fleshripper enemies around this area
collect 2 Small Egg##6889 |goto Westfall/0 50.61,27.62 |or
'|complete achieved(1688) |or
step
label "Learn_Hot_Apple_Cider"
use the Recipe: Hot Apple Cider##34413
learn Hot Apple Cider##45022 |or
'|complete achieved(1688) |or
step
use the Recipe: Egg Nog##17201
learn Egg Nog##21144 |or
'|complete achieved(1688) |or
step
use the Recipe: Gingerbread Cookie##17200
learn Gingerbread Cookie##21143 |or
'|complete achieved(1688) |or
step
cast Basic Campfire##818
|tip Stand next to your fire or a Dwarven Brazier in Ironforge.
create 1 Gingerbread Cookie##21143,Cooking,1 total |achieve 1688/1 |goto Ironforge/0 33.45,65.53
step
cast Basic Campfire##818
|tip Stand next to your fire or a Dwarven Brazier in Ironforge.
create 1 Egg Nog##21144,Cooking,1 total |achieve 1688/2 |goto 33.45,65.53
step
cast Basic Campfire##818
|tip Stand next to your fire or a Dwarven Brazier in Ironforge.
create 1 Hot Apple Cider##45022,Cooking,1 total |achieve 1688/3 |goto 33.45,65.53
step
|achieve 1688
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\With a Little Helper from My Friends",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(252) end,
achieveid={252},
patch='30001',
description="Earn 50 honorable kills as a Little Helper from the Winter Wondervolt machine.",
},[[
step
label "Become_A_Little_Helper"
Become a Little Helper |havebuff texture:135849 |goto Dun Morogh/0 53.18,35.71 |or
|tip Step on the blue pad.
'|complete achieved(252) |or
step
Kill enemies in PvP combat
|tip Queue up for PvP Battlegrounds and kill enemy players.
Earn #50# PvP Kills as a Little Helper |achieve 252 |or
'|nobuff texture:135849 |next "Become_A_Little_Helper" |or |only if not achieved(252)
'|complete achieved(252) |or
step
|achieve 252
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Feast of Winter Veil\\Achievements\\Merrymaker",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Feast of Winter Veil') and not achieved(1691) end,
achieveid={1691},
patch='30003',
description="Complete the following Winter Veil achievements:\n\nOn Metzen!\nScrooge\n"..
"'Tis the Season\nLet It Snow\nThe Winter Veil Gourmet\nA Frosty Shake\n"..
"With a Little Helper from My Friends\nFa-la-la-la-Ogri'la\nSimply Abominable\n"..
"Bros. Before Ho Ho Ho's\nHe Knows If You've Been Naughty",
},[[
step
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\On Metzen!"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\Scrooge"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\'Tis the Season"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\Let It Snow"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\The Winter Veil Gourmet"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\A Frosty Shake"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\With a Little Helper from My Friends"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\Fa-la-la-la-Ogri'la"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\Simply Abominable"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\Holiday Bromance"
leechsteps "Events Guides\\Feast of Winter Veil\\Achievements\\He Knows If You've Been Naughty"
step
|achieve 1691
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Love is in the Air Main Questline",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Love is in the Air') and not completedq(24657) end,
description="This guide will walk you through completing the main questline for the Love is in the Air event.",
},[[
step
talk Inspector Snip Snagglebolt##38066
accept Something Stinks##24655 |goto Stormwind City/0 61.51,75.27
step
clicknpc Stormwind City Guard##68+
|tip Look for Stormwind Guards that have the Heavily Perfumed buff.
|tip They look like Stormwind Guards with a glowing purple aura around them all over Stormwind.
use Snagglebolt's Air Analyzer##50131
|tip Use it on Stormwind Guards around this area.
Analyze #6# Perfumed Guards |q 24655/1 |goto 61.86,72.49
step
talk Inspector Snip Snagglebolt##38066
turnin Something Stinks##24655 |goto 61.51,75.27
accept Pilfering Perfume##24656 |goto 61.51,75.27
step
label "Gain_Crown_Parcel_Service_Uniform_Buff"
talk Inspector Snip Snagglebolt##38066
Tell him  _"I need another disguise."_
Gain the "Crown Parcel Service Uniform" Buff |havebuff Crown Parcel Service Uniform##71450 |goto 61.51,75.27 |or
'|complete completedq(24656) |or
step
Return the Crown Chemical Co. Package |complete readyq(24656) or completedq(24656) |goto Elwynn Forest/0 34.07,47.27 |or
|tip Quickly run by the boxes to get the package.
|tip A crate will appear on your back.
|tip You have to move quickly before your disguise wears off or you drop the package.
|tip Walk next to Inspector Snip Snagglebolt to return the package to him.
Return it to Snagglebolt at [Stormwind City/0 61.51,75.27]
'|complete not hasbuff(71450) and not readyq(24656) and not completedq(24656) |next "Gain_Crown_Parcel_Service_Uniform_Buff" |or
step
talk Inspector Snip Snagglebolt##38066
turnin Pilfering Perfume##24656 |goto Stormwind City/0 61.51,75.27
accept Fireworks At The Gilded Rose##24848 |goto 61.51,75.27
step
talk Marion Sutton##38325
|tip Upstairs inside the building.
turnin Fireworks At The Gilded Rose##24848 |goto 60.61,76.36
accept Hot On The Trail##24849 |goto 60.61,76.36
step
Watch the dialogue
|tip Inside the building.
Search the Stormwind Counting House |q 24849/1 |goto 63.03,78.74
step
Watch the dialogue
|tip Inside the building.
Search the Stormwind Auction House |q 24849/2 |goto 61.42,71.61
step
Watch the dialogue
|tip Inside the building.
Search the Stormwind Barber Shop |q 24849/3 |goto 61.31,65.39
step
talk Marion Sutton##38325
|tip Upstairs inside the building.
turnin Hot On The Trail##24849 |goto 60.61,76.36
accept A Friendly Chat...##24657 |goto 60.61,76.36
step
talk Snivel Rustrocket##37715
Tell him _"I have a rocket here with your mark on it, Snivel."_
collect 1 Snivel's Ledger##49915 |q 24657/1 |goto 27.43,34.83
step
talk Inspector Snip Snagglebolt##38066
turnin A Friendly Chat...##24657 |goto 61.51,75.27
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Love is in the Air Dailies",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Love is in the Air') and completedq(24657) and not completedq(44558,24629,24635,24636,24597,44560,24610,24611,24609) end,
description="This guide section will walk you through completing the Love is in the Air event daily quests.",
},[[
step
label "Complete_Leveling_Guide"
Complete the "Love is in the Air Main Questline" guide before using this guide |complete completedq(24657)
step
talk Inspector Snip Snagglebolt##38066
accept Crushing the Crown##24658 |goto Stormwind City/0 61.61,75.29 |only if level >= 5 and level <= 13
accept Crushing the Crown##24659 |goto Stormwind City/0 61.61,75.29 |only if level >= 14 and level <= 22
accept Crushing the Crown##24660 |goto Stormwind City/0 61.61,75.29 |only if level >= 23 and level <= 31
accept Crushing the Crown##24662 |goto Stormwind City/0 61.61,75.29 |only if level >= 32 and level <= 40
accept Crushing the Crown##24663 |goto Stormwind City/0 61.61,75.29 |only if level >= 41 and level <= 50
accept Crushing the Crown##24664 |goto Stormwind City/0 61.61,75.29 |only if level >= 51 and level <= 60
accept Crushing the Crown##24665 |goto Stormwind City/0 61.61,75.29 |only if level >= 61 and level <= 70
accept Crushing the Crown##24666 |goto Stormwind City/0 61.61,75.29 |only if level >= 71 and level <= 80
accept Man on the Inside##24792 |goto Stormwind City/0 61.61,75.29 |only if Level == 80
step
talk Public Relations Agent##37675
accept A Perfect Puff of Perfume##24629 |goto Stormwind City/0 62.41,75.38 |or
accept A Cloudlet of Classy Cologne##24635 |goto 62.41,75.38 |or
accept Bonbon Blitz##24636 |goto 62.41,75.38 |or
|tip You will only be able to accept one of these quests.
step
talk Kwee Q. Peddlefeet##16075
accept A Gift for the King of Stormwind##24597 |goto 62.53,74.96
step
use the Crown Cologne Sprayer##49669
|tip Use it on NPCs and other players without a red heart over their head.
|tip You can do this anywhere in Stormwind.
Give #10# Cologne Samples |q 24635/1 |goto 62.35,72.50
|only if haveq(24635) or completedq(24635)
step
talk Kwee Q. Peddlefeet##37887
Tell him _"I'd like a Lovely Charm Collector's Kit."_
collect 1 Lovely Charm Collector's Kit##49661 |goto Stormwind City/0 62.53,74.95
step
use the Crown Perfume Sprayer##49668
|tip Use it on NPCs and other players without a red heart over their head.
|tip You can do this anywhere in Stormwind.
Give #10# Perfume Samples |q 24629/1 |goto 62.35,72.50
|only if haveq(24629) or completedq(24629)
step
use the Crown Chocolate Sampler##49670
|tip Use it on NPCs and other players without a red heart over their head.
|tip You can do this anywhere in Stormwind.
Give #10# Chocolate Samples |q 24636/1 |goto 62.35,72.50
|only if haveq(24636) or completedq(24636)
stickystart "Kill_Crown_Lackeys"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24658/1 |goto Elwynn Forest/0 29.29,65.38
|only if haveq(24658) or completedq(24658)
step
label "Kill_Crown_Lackeys"
kill 5 Crown Lackey##37214 |q 24658/2 |goto 29.29,65.38
|only if haveq(24658) or completedq(24658)
stickystart "Kill_Crown_Thugs"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24659/1 |goto Darkshore/0 42.54,79.61
|only if haveq(24659) or completedq(24659)
step
label "Kill_Crown_Thugs"
kill 5 Crown Thug##37917 |q 24659/2 |goto 42.54,79.61
|only if haveq(24659) or completedq(24659)
stickystart "Kill_Crown_Dusters"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24660/1 |goto Hillsbrad Foothills/0 28.16,38.08
|only if haveq(24660) or completedq(24660)
step
label "Kill_Crown_Dusters"
kill 5 Crown Duster##37984 |q 24660/2 |goto 28.16,38.08
|only if haveq(24660) or completedq(24660)
stickystart "Kill_Crown_Hoodlums"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24662/1 |goto Dustwallow Marsh/0 60.71,38.20
|only if haveq(24662) or completedq(24662)
step
label "Kill_Crown_Hoodlums"
kill 5 Crown Hoodlum##38006 |q 24662/2 |goto 60.71,38.20
|only if haveq(24662) or completedq(24662)
stickystart "Kill_Crown_Agents"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24663/1 |goto The Hinterlands/0 23.30,53.66
|only if haveq(24663) or completedq(24663)
step
label "Kill_Crown_Agents"
kill 5 Crown Agent##38016 |q 24663/2 |goto 23.30,53.66
|only if haveq(24663) or completedq(24663)
stickystart "Kill_Crown_Sprinklers"
step
Follow the path up |goto Winterspring/0 63.36,36.11 < 15 |only if walking
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24664/1 |goto 64.52,37.39
|only if haveq(24664) or completedq(24664)
step
label "Kill_Crown_Sprinklers"
kill 5 Crown Sprinkler##38023 |q 24664/2 |goto 64.52,37.39
|only if haveq(24664) or completedq(24664)
stickystart "Kill_Crown_Underlings"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24665/1 |goto Terokkar Forest/0 41.45,22.49
|only if haveq(24665) or completedq(24665)
step
label "Kill_Crown_Underlings"
kill 5 Crown Underling##38030 |q 24665/2 |goto 41.45,22.49
|only if haveq(24665) or completedq(24665)
stickystart "Kill_Crown_Sprayers"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24666/1 |goto Crystalsong Forest/0 50.55,50.06
|only if haveq(24666) or completedq(24666)
step
label "Kill_Crown_Sprayers"
kill 5 Crown Sprayer##38032 |q 24666/2 |goto 50.55,50.06
|only if haveq(24666) or completedq(24666)
step
Kill enemies that yield experience
|tip Any enemy that is green, yellow, or red difficulty will drop charms.
|tip You can kill enemies in dungeons or the open-world zone of your choice.
collect 40 Lovely Charm##49655 |q 24609 |future
step
use the Lovely Charm##49655
collect 4 Lovely Charm Bracelet##49916 |q 24609 |future
step
talk Inspector Snip Snagglebolt##38066
turnin Crushing the Crown##24658 |goto Stormwind City/0 61.61,75.29 |only if haveq(24658) or completedq(24658)
turnin Crushing the Crown##24659 |goto Stormwind City/0 61.61,75.29 |only if haveq(24659) or completedq(24659)
turnin Crushing the Crown##24660 |goto Stormwind City/0 61.61,75.29 |only if haveq(24660) or completedq(24660)
turnin Crushing the Crown##24662 |goto Stormwind City/0 61.61,75.29 |only if haveq(24662) or completedq(24662)
turnin Crushing the Crown##24663 |goto Stormwind City/0 61.61,75.29 |only if haveq(24663) or completedq(24663)
turnin Crushing the Crown##24664 |goto Stormwind City/0 61.61,75.29 |only if haveq(24664) or completedq(24664)
turnin Crushing the Crown##24665 |goto Stormwind City/0 61.61,75.29 |only if haveq(24665) or completedq(24665)
turnin Crushing the Crown##24666 |goto Stormwind City/0 61.61,75.29 |only if haveq(24666) or completedq(24666)
|only if haveq(24658,24659,24660,24662,24663,24664,24665,24666) or completedq(24658,24659,24660,24662,24663,24664,24665,24666)
step
talk Public Relations Agent##37675
turnin A Perfect Puff of Perfume##24629 |goto Stormwind City/0 62.41,75.38 |only if haveq(24629) or completedq(24629)
turnin A Cloudlet of Classy Cologne##24635 |goto 62.41,75.38 |only if haveq(24635) or completedq(24635)
turnin Bonbon Blitz##24636 |goto 62.41,75.38 |only if haveq(24636) or completedq(24636)
|only if haveq(24629,24635,24636) or completedq(24629,24635,24636)
step
talk Anduin Wrynn##107574
|tip Inside Stormwind Keep.
turnin A Gift for the King of Stormwind##24597 |goto 85.91,31.57
step
talk Kwee Q. Peddlefeet##16075
accept A Gift for the High Priestess of Elune##24610 |goto Darnassus/0 42.50,52.01
step
Enter the building |goto 39.05,76.76 < 10 |walk
talk Tyrande Whisperwind##7999
|tip Upstairs inside the building.
turnin A Gift for the High Priestess of Elune##24610 |goto 39.10,81.57
step
Run up the ramp |goto The Exodar/0 52.71,33.69 < 15 |walk
Continue up the ramp |goto 64.13,35.99 < 15 |walk
talk Kwee Q. Peddlefeet##16075
accept A Gift for the Prophet##24611 |goto 73.65,57.01
step
Run down the ramp |goto 73.51,53.36 < 15 |walk
Run up the stairs |goto 31.09,60.83 < 10 |walk
talk Prophet Velen##17468
turnin A Gift for the Prophet##24611 |goto 32.85,54.48
step
talk Kwee Q. Peddlefeet##16075
accept A Gift for the Lord of Ironforge##24609 |goto Ironforge/0 33.57,65.60
step
Enter the building |goto 44.39,49.69 < 10 |walk
talk Muradin Bronzebeard##42928
turnin A Gift for the Lord of Ironforge##24609 |goto 39.19,56.09
step
Inside the Shadowfang Keep Dungeon:
talk Investigator Fezzen Brasstacks##38208
turnin Man on the Inside##24792
accept You've Been Served##14488
|only if Level == 80
step
Inside the Shadowfang Keep Dungeon:
use the Standard Apothecary Serving Kit##49631
collect Standard Apothecary Serving Kit##49631 |q 14488/1
|only if Level == 80
step
talk Apothecary Hummel##36296
turnin You've Been Served##14488
|tip This will trigger the boss encounter.
|only if Level == 80
step
You have completed all available daily quests
|tip This guide will reset when more become available.
'|complete not completedq(24629,24635,24636,24597,24610,24611,24609,14488) |next "Complete_Leveling_Guide"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Be Mine!",{
author="support@zygorguides.com",
description="Eat the eight \"Bag of Candies\" heart candies listed below:\n\nBe Mine!\nAll yours.\nHot Lips.\n"..
"You're the best!\nI'll follow you all around Azeroth.\nI'm all yours!\nYou're Mine!\nI LOVE YOU",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1701) end,
achieveid={1701},
patch='30002',
},[[
step
talk Lovely Merchant##37674
buy Bag of Heart Candies##21813 |goto Stormwind City/0 62.49,75.24 |n
use the Bag of Heart Candies##21813
|tip Collect the 8 different types of Heart Candy from the Bag of Heart Candies.
Collect "Be Mine" |collect 1 Heart Candy##21816 |only if not achieved(1701,1)
Collect "I'll Follow You All Around Azeroth" |collect 1 Heart Candy##21818 |only if not achieved(1701,2)
Collect "All Yours" |collect 1 Heart Candy##21819 |only if not achieved(1701,3)
Collect "I'm All Yours" |collect 1 Heart Candy##21821 |only if not achieved(1701,4)
Collect "Hot Lips" |collect 1 Heart Candy##21823 |only if not achieved(1701,5)
Collect "You're Mine" |collect 1 Heart Candy##21822 |only if not achieved(1701,6)
Collect "You're the Best" |collect 1 Heart Candy##21820 |only if not achieved(1701,7)
Collect "I LOVE YOU" |collect 1 Heart Candy##21817 |only if not achieved(1701,8)
step
use Heart Candy##21816
Eat the "Be Mine!" Heart Candy |achieve 1701/1
step
use Heart Candy##21817
Eat the "I LOVE YOU" Heart Candy |achieve 1701/2
step
use Heart Candy##21818
Eat the "I'll follow you all around Azeroth." Heart Candy |achieve 1701/3
step
use Heart Candy##21821
Eat the "I'm all yours!" Heart Candy |achieve 1701/4
step
use Heart Candy##21820
Eat the "You're the best!" Heart Candy |achieve 1701/5
step
use Heart Candy##21823
Eat the "Hot lips." Heart Candy |achieve 1701/6
step
use Heart Candy##21819
Eat the "All yours." Heart Candy |achieve 1701/7
step
use Heart Candy##21822
Eat the "You're mine!" Heart Candy |achieve 1701/8
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Charming",{
author="support@zygorguides.com",
description="Create 12 Lovely Charm Bracelets.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(260) end,
achieveid={260},
patch='30001',
},[[
step
talk Kwee Q. Peddlefeet##37887
collect 1 Lovely Charm Collector's Kit##49661 |goto Stormwind City/0 62.4,75.0 |or
'|complete achieved(260) |or
'|accept A Gift for the King of Stormwind##24597 |n
step
collect 120 Lovely Charm##49655 |or
|tip They come from killing enemies that are at least green difficulty to you.
|tip They will not drop if they are grey difficulty.
|tip You can run dungeons or pick a zone of your choice and kill anything.
'|complete achieved(260)|or
step
use the Lovely Charm##49655
Create #12# Lovely Charm Bracelet##49916 |or
'|complete achieved(260) |or
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Dangerous Love",{
author="support@zygorguides.com",
description="Assist the Steamwheedle Cartel in stopping the sinister Crown Chemical Co. plot.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1695) end,
achieveid={1695},
patch='30003',
},[[
leechsteps "Events Guides\\Love is in the Air\\Love is in the Air Main Questline"
step
talk Inspector Snip Snagglebolt##38066
accept Crushing the Crown##24658 |goto Stormwind City/0 61.61,75.29 |only if level >= 5 and level <= 13
accept Crushing the Crown##24659 |goto Stormwind City/0 61.61,75.29 |only if level >= 14 and level <= 22
accept Crushing the Crown##24660 |goto Stormwind City/0 61.61,75.29 |only if level >= 23 and level <= 31
accept Crushing the Crown##24662 |goto Stormwind City/0 61.61,75.29 |only if level >= 32 and level <= 40
accept Crushing the Crown##24663 |goto Stormwind City/0 61.61,75.29 |only if level >= 41 and level <= 50
accept Crushing the Crown##24664 |goto Stormwind City/0 61.61,75.29 |only if level >= 51 and level <= 60
accept Crushing the Crown##24665 |goto Stormwind City/0 61.61,75.29 |only if level >= 61 and level <= 70
accept Crushing the Crown##24666 |goto Stormwind City/0 61.61,75.29 |only if level >= 71 and level <= 80
accept Man on the Inside##24792 |goto Stormwind City/0 61.61,75.29 |only if Level == 80
stickystart "Kill_Crown_Lackeys"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24658/1 |goto Elwynn Forest/0 29.29,65.38
|only if haveq(24658) or completedq(24658)
step
label "Kill_Crown_Lackeys"
kill 5 Crown Lackey##37214 |q 24658/2 |goto 29.29,65.38
|only if haveq(24658) or completedq(24658)
stickystart "Kill_Crown_Thugs"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24659/1 |goto Darkshore/0 42.54,79.61
|only if haveq(24659) or completedq(24659)
step
label "Kill_Crown_Thugs"
kill 5 Crown Thug##37917 |q 24659/2 |goto 42.54,79.61
|only if haveq(24659) or completedq(24659)
stickystart "Kill_Crown_Dusters"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24660/1 |goto Duskwood/0 28.16,38.08
|only if haveq(24660) or completedq(24660)
step
label "Kill_Crown_Dusters"
kill 5 Crown Duster##37984 |q 24660/2 |goto 28.16,38.08
|only if haveq(24660) or completedq(24660)
stickystart "Kill_Crown_Hoodlums"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24662/1 |goto Dustwallow Marsh/0 60.71,38.20
|only if haveq(24662) or completedq(24662)
step
label "Kill_Crown_Hoodlums"
kill 5 Crown Hoodlum##38006 |q 24662/2 |goto 60.71,38.20
|only if haveq(24662) or completedq(24662)
stickystart "Kill_Crown_Agents"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24663/1 |goto The Hinterlands/0 23.30,53.66
|only if haveq(24663) or completedq(24663)
step
label "Kill_Crown_Agents"
kill 5 Crown Agent##38016 |q 24663/2 |goto 23.30,53.66
|only if haveq(24663) or completedq(24663)
stickystart "Kill_Crown_Sprinklers"
step
Follow the path up |goto Winterspring/0 63.36,36.11 < 15 |only if walking
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24664/1 |goto 64.52,37.39
|only if haveq(24664) or completedq(24664)
step
label "Kill_Crown_Sprinklers"
kill 5 Crown Sprinkler##38023 |q 24664/2 |goto 64.52,37.39
|only if haveq(24664) or completedq(24664)
stickystart "Kill_Crown_Underlings"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24665/1 |goto Terokkar Forest/0 41.45,22.49
|only if haveq(24665) or completedq(24665)
step
label "Kill_Crown_Underlings"
kill 5 Crown Underling##38030 |q 24665/2 |goto 41.45,22.49
|only if haveq(24665) or completedq(24665)
stickystart "Kill_Crown_Sprayers"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24666/1 |goto Crystalsong Forest/0 50.55,50.06
|only if haveq(24666) or completedq(24666)
step
label "Kill_Crown_Sprayers"
kill 5 Crown Sprayer##38032 |q 24666/2 |goto 50.55,50.06
|only if haveq(24666) or completedq(24666)
step
Kill enemies that yield experience
|tip Any enemy that is green, yellow, or red difficulty will drop charms.
|tip You can kill enemies in dungeons or the open-world zone of your choice.
collect 40 Lovely Charm##49655 |q 24609 |future
step
use the Lovely Charm##49655
collect 4 Lovely Charm Bracelet##49916 |q 24609 |future
step
talk Inspector Snip Snagglebolt##38066
turnin Crushing the Crown##24658 |goto Stormwind City/0 61.61,75.29 |only if haveq(24658) or completedq(24658)
turnin Crushing the Crown##24659 |goto Stormwind City/0 61.61,75.29 |only if haveq(24659) or completedq(24659)
turnin Crushing the Crown##24660 |goto Stormwind City/0 61.61,75.29 |only if haveq(24660) or completedq(24660)
turnin Crushing the Crown##24662 |goto Stormwind City/0 61.61,75.29 |only if haveq(24662) or completedq(24662)
turnin Crushing the Crown##24663 |goto Stormwind City/0 61.61,75.29 |only if haveq(24663) or completedq(24663)
turnin Crushing the Crown##24664 |goto Stormwind City/0 61.61,75.29 |only if haveq(24664) or completedq(24664)
turnin Crushing the Crown##24665 |goto Stormwind City/0 61.61,75.29 |only if haveq(24665) or completedq(24665)
turnin Crushing the Crown##24666 |goto Stormwind City/0 61.61,75.29 |only if haveq(24666) or completedq(24666)
|only if haveq(24658,24659,24660,24662,24663,24664,24665,24666) or completedq(24658,24659,24660,24662,24663,24664,24665,24666)
step
Earn the "Dangerous Love" Achievement |achieve 1695
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Fistful of Love",{
author="support@zygorguides.com",
description="Use a Handful of Rose Petals on each of the race/class combinations listed below:\n\nGnome Warlock\n"..
"Human Death Knight\nOrc Shaman\nUndead Warrior\nBlood Elf Mage\nDwarf Hunter\nOrc Death Knight\nNight Elf Priest"..
"\nTauren Druid\nTroll Rogue\nDraenei Paladin",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1699) end,
achieveid={1699},
patch='30003',
},[[
step
collect 6 Love Token##49927 |or
|tip Earn these by completing daily quests.
|tip You can also kill mobs to assemble Lovely Charm Bracelets and trade them to the Lovely Merchant.
'|complete achieved(1699) |or
step
talk Lovely Merchant##37674
buy 15 Handful of Rose Petals##22218 |goto Stormwind City/0 62.49,75.24 |or
'|complete achieved(1699) |or
stickystart "Use_Petals_on_Undead_Warrior"
stickystart "Use_Petals_on_Human_Death_Knight"
stickystart "Use_Petals_on_Gnome_Warlock"
stickystart "Use_Petals_on_Draenei_Paladin"
stickystart "Use_Petals_on_Troll_Rogue"
stickystart "Use_Petals_on_Dwarf_Hunter"
stickystart "Use_Petals_on_Blood_Elf_Mage"
stickystart "Use_Petals_on_Tauren_Druid"
stickystart "Use_Petals_on_Orc_Shaman"
stickystart "Use_Petals_on_Night_Elf_Priest"
stickystart "Use_Petals_on_Orc_Death_Knight"
step
use the Handful of Rose Petals##22218
|tip Battlegrounds and capital cities are good locations.
Use them once on each of the following classes:
'|complete achieved(1699)
step
label "Use_Petals_on_Undead_Warrior"
Use Rose Petals on a "Undead Warrior" |achieve 1699/1
step
label "Use_Petals_on_Human_Death_Knight"
Use Rose Petals on a "Human Death Knight" |achieve 1699/2
step
label "Use_Petals_on_Gnome_Warlock"
Use Rose Petals on a "Gnome Warlock" |achieve 1699/3
step
label "Use_Petals_on_Draenei_Paladin"
Use Rose Petals on a "Draenei Paladin" |achieve 1699/4
step
label "Use_Petals_on_Troll_Rogue"
Use Rose Petals on a "Troll Rogue" |achieve 1699/5
step
label "Use_Petals_on_Dwarf_Hunter"
Use Rose Petals on a "Dwarf Hunter" |achieve 1699/6
step
label "Use_Petals_on_Blood_Elf_Mage"
Use Rose Petals on a "Blood Elf Mage" |achieve 1699/7
step
label "Use_Petals_on_Tauren_Druid"
Use Rose Petals on a "Tauren Druid" |achieve 1699/8
step
label "Use_Petals_on_Orc_Shaman"
Use Rose Petals on a "Orc Shaman" |achieve 1699/9
step
label "Use_Petals_on_Night_Elf_Priest"
Use Rose Petals on a "Night Elf Priest" |achieve 1699/10
step
label "Use_Petals_on_Orc_Death_Knight"
Use Rose Petals on a "Orc Death Knight" |achieve 1699/11
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Flirt With Disaster",{
author="support@zygorguides.com",
description="Get completely smashed, put on your best perfume, throw a handful of rose petals "..
"on Sraaz and then kiss him. You'll regret it in the morning.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1279) end,
achieveid={1279},
patch='30001',
},[[
step
collect 3 Love Token##49927 |or
|tip Earn these by completing daily quests.
|tip You can also kill mobs to assemble Lovely Charm Bracelets and trade them to the Lovely Merchant.
'|complete achieved(1280) |or
step
talk Lovely Merchant##37674
buy 1 "VICTORY" Perfume##49856 |goto Stormwind City/0 62.49,75.24 |or 2
buy 1 Handful of Rose Petals##22218 |goto Stormwind City/0 62.49,75.24 |or 2
'|complete achieved(1279) |or 2 |override
step
talk Bruuk Barleybeard##5570
|tip Inside the building.
buy 3 Flagon of Dwarven Mead##2594 |goto Ironforge/0 72.52,76.95 |or
'|complete achieved(1279) |or
step
use the "VICTORY" Perfume##49856
Gain the "'VICTORY' Perfume" Buff |havebuff "VICTORY" Perfume##70233 |or
'|complete achieved(1279) |or
step
clicknpc Sraaz##9099
|tip He's a gnome that walks the circle around The Great Forge.
use the Flagon of Dwarven Mead##2594
|tip Use all 3 of your Flagons of Dwarven Mead to get Completely Smashed.
use Handful of Rose Petals##22218
|tip Use them on Sraaz.
Use the Handful of Rose Petals on Sraaz While Completely Smashed |achieve 1279/1 |goto Ironforge/0 55.82,35.34 |or
'|complete achieved(1279) |or
step
clicknpc Sraaz##9099
"Kiss" Sraaz |script DoEmote("KISS")
Kiss Sraaz While Completely Smashed |achieve 1279/2 |goto 55.82,35.34
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\I Pitied The Fool",{
author="support@zygorguides.com",
description="Pity the Love Fool in the locations specified below:\n\nWintergrasp\nNaxxramas\n"..
"Arathi Basin Blacksmith\nBattle Ring of Gurubashi Arena\nThe Culling of Stratholme",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1704) end,
achieveid={1704},
patch='30002',
},[[
step
collect 50 Love Token##49927 |or
|tip Earn these by completing daily quests.
|tip You can also kill mobs to assemble Lovely Charm Bracelets and trade them to the Lovely Merchant.
'|complete achieved(1704) |or
step
talk Lovely Merchant##37674
buy 5 Love Fool##22261 |goto Stormwind City/0 62.49,75.24 |or
'|complete achieved(1704) |or
step
use the Love Fool##22261
|tip You can use your Love Fool anywhere inside Wintergrasp.
clicknpc Love Fool##16111
"Pity" the Love Fool |script DoEmote("PITY")
Target and Pity the Love Fool in Wintergrasp |achieve 1704/2 |goto Wintergrasp/0 70.30,32.28
step
use the Love Fool##22261
|tip You can use your Love Fool anywhere inside the Gurubashi Arena.
clicknpc Love Fool##16111
"Pity" the Love Fool |script DoEmote("PITY")
Target and Pity the Love Fool in the Gurubashi Arena |achieve 1704/5 |goto Stranglethorn Vale/0 30.78,48.09
step
use the Love Fool##22261
|tip Use your Love Fool near the Blacksmith node inside of the Arathi Basin Battleground.
clicknpc Love Fool##16111
"Pity" the Love Fool |script DoEmote("PITY")
Target and Pity the Love Fool in the Arathi Basin Battleground |achieve 1704/4
step
use the Love Fool##22261
|tip You can use your Love Fool anywhere inside the Culling of Stratholme Dungeon.
clicknpc Love Fool##16111
"Pity" the Love Fool |script DoEmote("PITY")
Target and Pity the Love Fool in The Culling of Stratholme Dungeon |achieve 1704/1 |goto The Culling of Stratholme/0 0.00,0.00
step
use the Love Fool##22261
|tip You need to be inside the actual raid before you use this.
clicknpc Love Fool##16111
"Pity" the Love Fool |script DoEmote("PITY")
Target and Pity the Love Fool in the Naxxramas Raid |achieve 1704/3 |goto Naxxramas/4 0.00,0.00
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Lonely?",{
author="support@zygorguides.com",
description="Enjoy a Buttermilk Delight with someone in Dalaran at a Romantic Picnic during the Love is in the Air celebration.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1291) end,
achieveid={1291},
patch='30100',
},[[
step
collect 10 Love Token##49927 |or
|tip Earn these by completing daily quests.
|tip You can also kill mobs to assemble Lovely Charm Bracelets and trade them to the Lovely Merchant.
'|complete achieved(1291) |or
step
talk Lovely Merchant##37674
buy 1 Romantic Picnic Basket##34480 |goto Stormwind City/0 62.49,75.24 |or
'|complete achieved(1291) |or
step
talk Lovely Merchant##37674
buy 1 Box of Chocolates##49909 |goto 62.49,75.24 |n
|tip These cost 10 Love Tokens each.
|tip You can acquire Love Tokens by completing Love is in the Air daily quests.
|tip Use the "Love is in the Air Dailies" event guide to accomplish this.
use the Box of Chocolates##49909
collect 1 Buttermilk Delight##22236 |or
'|complete achieved(1291) |or
step
use the Romantic Picnic Basket##34480
|tip Find a player to have a picnic with you.
|tip It can be anywhere in Dalaran.
use the Buttermilk Delight##22236
|tip While having a picnic, use your Buttermilk Delight.
Enjoy a Buttermilk Delight with Someone in Dalaran at a Romantic Picnic |achieve 1291 |goto Dalaran/1 53.61,39.65
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Lovely Luck Is On Your Side",{
author="support@zygorguides.com",
description="Open a Lovely Dress Box and receive a Lovely Black Dress.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1694) end,
achieveid={1694},
patch='30002',
},[[
step
collect 20 Love Token##49927 |or
|tip Earn these by completing daily quests.
|tip You can also kill mobs to assemble Lovely Charm Bracelets and trade them to the Lovely Merchant.
'|complete achieved(1694) |or
step
talk Lovely Merchant##37674
buy 1 Lovely Dress Box##50160 |n
|tip These cost 20 Love Tokens each.
|tip You can acquire Love Tokens by completing Love is in the Air daily quests.
|tip Use the "Love is in the Air Dailies" event guide to accomplish this.
use the Lovely Dress Box##50160
collect 1 Lovely Black Dress##22279 |goto Stormwind City/0 62.49,75.24
'|complete achieved(1694) |or
step
Earn the "Lovely Luck Is On Your Side" Achievement |achieve 1694
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\My Love is Like a Red, Red Rose",{
author="support@zygorguides.com",
description="Obtain a Bouquet of Red or Ebon Roses during the Love is in the Air celebration.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1703) end,
achieveid={1703},
patch='30002',
},[[
step
collect 1 Bouquet of Red Roses##22206 |n
collect 1 Bouquet of Ebon Roses##44731 |n
|tip Killing Prince Keleseth in Utgarde Keep is the fastest way to get one of these.
|tip They can also be dropped by the following dungeon bosses:
|tip Lorekeeper Pokelt in Scholomance.
|tip Archivist Galford in Strahtholme (Live).
|tip Illyanna Ravenoak in Dire Maul.
|tip Prince Taldaram in Ahn'kahet: The Old Kingdom.
|tip Maiden of Grief in Halls of Stone.
|tip Princess Moira Bronzebeard in Blackrock Depths.
|tip You will need one or the other, not both.
Earn the "My Love is Like a Red, Red Rose" Achievement |achieve 1703
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Nation of Adoration",{
author="support@zygorguides.com",
description="Complete the Lovely Charm Bracelet daily quest for each Alliance capital.",
condition_suggested=function() return isevent('Love is in the Air') and completedq(36941) and not achieved(1697) end,
achieveid={1697},
patch='30303',
},[[
leechsteps "Events Guides\\Love is in the Air\\Love is in the Air Main Questline"
step
talk Kwee Q. Peddlefeet##16075
accept A Gift for the King of Stormwind##24597 |goto Stormwind City/0 62.53,74.96 |or
'|complete achieved(1697,1) |or
step
Kill enemies that yield experience
|tip Any enemy that is green, yellow, or red difficulty will drop charms.
|tip You can kill enemies in dungeons or the open-world zone of your choice.
collect 40 Lovely Charm##49655 |or
'|complete achieved(1697) |or
step
use the Lovely Charm##49655
collect 4 Lovely Charm Bracelet##49916 |or
'|complete achieved(1697) |or
step
talk King Varian Wrynn##29611
|tip Inside Stormwind Keep.
turnin A Gift for the King of Stormwind##24597 |goto 80.02,38.44 |or
'|complete achieved(1697,1) |or
step
talk Kwee Q. Peddlefeet##16075
accept A Gift for the High Priestess of Elune##24610 |goto Darnassus/0 42.53,52.03 |or
'|complete achieved(1697,4) |or
step
collect Lovely Charm Bracelet##49916 |q 24610/1 |or
|tip You created this in a previous step.
'|complete achieved(1697,4) |or
step
Enter the building |goto Darnassus/0 39.04,77.09 < 10 |walk
talk Tyrande Whisperwind##7999
|tip Upstairs inside the building.
turnin A Gift for the High Priestess of Elune##24610 |goto 39.09,81.59 |or
'|complete achieved(1697,4) |or
step
Run up the ramp |goto The Exodar/0 52.71,33.69 < 15 |walk
talk Kwee Q. Peddlefeet##16075
|tip Outside the Exodar.
accept A Gift for the Prophet##24611 |goto 73.65,57.01 |or
'|complete achieved(1697,3) |or
step
collect Lovely Charm Bracelet##49916 |q 24611/1 |or
|tip You created this in a previous step.
'|complete achieved(1697,3) |or
step
Run up the stairs |goto 31.09,60.83 < 10 |walk
talk Prophet Velen##17468
turnin A Gift for the Prophet##24611 |goto 32.85,54.48 |or
'|complete achieved(1697,3) |or
step
talk Kwee Q. Peddlefeet##16075
accept A Gift for the Lord of Ironforge##24609 |goto Ironforge/0 33.57,65.60 |or
'|complete achieved(1697,2) |or
step
collect Lovely Charm Bracelet##49916 |q 24609/1 |or
|tip You created this in a previous step.
'|complete achieved(1697,2) |or
step
Enter the building |goto 44.39,49.69 < 10 |walk
talk Muradin Bronzebeard##42928
turnin A Gift for the Lord of Ironforge##24609 |goto 39.19,56.09 |or
'|complete achieved(1697,2) |or
step
Earn the "Nation of Adoration" Achievement |achieve 1697
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Perma-Peddle",{
author="support@zygorguides.com",
description="Obtain a permanent Peddlefeet pet by procuring a Truesilver Shafted Arrow.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1700) end,
achieveid={1700},
patch='30003',
},[[
step
collect 40 Love Token##49927 |or
|tip You can acquire these by completing Love is in the Air daily quests.
|tip Use the "Love is in the Air Dailies" event guide to accomplish this.
'|complete achieved(1700) |or
step
talk Lovely Merchant##37674
buy 1 Truesilver Shafted Arrow##22235 |goto Stormwind City/0 62.49,75.24
'|complete achieved(1700) |or
step
Earn the "Perma-Peddle" Achievement |achieve 1700
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Shafted!",{
author="support@zygorguides.com",
description="Shoot 10 players with a Silver Shafted Arrow.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1188) end,
achieveid={1188},
patch='30003',
},[[
step
collect 10 Love Token##49927 |or
|tip You can acquire these by completing Love is in the Air daily quests.
|tip Use the "Love is in the Air Dailies" event guide to accomplish this.
'|complete achieved(1188) |or
step
talk Lovely Merchant##37674
buy 10 Silver Shafted Arrow##22200 |goto Stormwind City/0 62.49,75.24 |or
'|complete achieved(1188) |or
step
use the Silver Shafted Arrow##22200
|tip Use your Silver Shafted Arrows on 10 players.
|tip This can be done anywhere.
Shoot #10# Players with the Silver Shafted Arrow |achieve 1188 |goto 62.49,75.24
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Sweet Tooth",{
author="support@zygorguides.com",
description="Sample the following holiday candy:\n\nButtermilk Delight\nDark Desire\n"..
"Sweet Surprise\nVery Berry Cream",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1702) end,
achieveid={1702},
patch='30008',
},[[
step
talk Lovely Merchant##37674
buy 1 Box of Chocolates##49909 |goto Stormwind City/0 62.49,75.24 |n
|tip These cost 10 Love Tokens each.
|tip You can acquire Love Tokens by completing Love is in the Air daily quests.
|tip Use the "Love is in the Air Dailies" event guide to accomplish this.
use Box of Chocolates##49909
collect 1 Buttermilk Delight##22236 |or 4
collect 1 Dark Desire##22237 |or 4
collect 1 Sweet Surprise##22239 |or 4
collect 1 Very Berry Cream##22238 |or 4
'|achieved(1702) |or 4 |override
step
use the Buttermilk Delight##22236
Sample the "Buttermilk Delight" Candy |achieve 1702/3
|tip Save the remaining Buttermilk Delights for a later achievement.
step
use the Dark Desire##22237
Sample the "Dark Desire" Candy |achieve 1702/4
step
use the Sweet Surprise##22239
Sample the "Sweet Surprise" Candy |achieve 1702/2
step
use the Very Berry Cream##22238
Sample the "Very Berry Cream" Candy |achieve 1702/1
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\The Rocket's Pink Glare",{
author="support@zygorguides.com",
description="Shoot off 10 Love Rockets in 20 seconds or less.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1696) end,
achieveid={1696},
patch='30002',
},[[
step
collect 10 Love Token##49927 |or
|tip You can acquire these by completing Love is in the Air daily quests.
|tip Use the "Love is in the Air Dailies" event guide to accomplish this.
'|complete achieved(1696) |or
step
talk Lovely Merchant##37674
buy 10 Love Rocket##34258 |goto Stormwind City/0 62.49,75.24 |or
'|complete achieved(1696) |or
step
use the Love Rocket##34258
|tip Use them quickly to set off all 10 in 20 seconds or less.
Shoot off #10# Love Rockets in 20 Seconds or Less |achieve 1696
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Lunar Festival Main Questline",{
author="support@zygorguides.com",
description="This guide will walk you through the quests for the \"Lunar Festival\" event.",
condition_end=function() return completedq(8862) end,
},[[
step
talk Lunar Festival Emissary##15892
accept The Lunar Festival##8870 |goto Ironforge/0 30.93,61.61
step
talk Lunar Festival Harbinger##15895
turnin The Lunar Festival##8870 |goto 28.84,16.22
accept Lunar Fireworks##8867 |goto 28.84,16.22
step
talk Lunar Festival Vendor##15898
buy 8 Small Blue Rocket##21558 |goto 29.92,14.22 |q 8867
buy 2 Blue Rocket Cluster##21571 |goto 29.92,14.22 |q 8867
stickystart "Fire_Lunar_Fireworks_Clusters"
step
use the Small Blue Rocket##21558
Fire #8# Lunar Fireworks |q 8867/1 |goto 30.26,18.59
step
label "Fire_Lunar_Fireworks_Clusters"
use the Blue Rocket Cluster##21571
Fire #2# Lunar Fireworks Clusters |q 8867/2 |goto 30.26,18.59
step
talk Lunar Festival Harbinger##15895
turnin Lunar Fireworks##8867 |goto 28.84,16.22
accept Valadar Starsong##8883 |goto 28.84,16.22
step
use the Lunar Festival Invitation##21711 |goto 30.75,17.86
Use the Lunar Festival Invitation While Standing in the Beam of Light |goto Moonglade |noway |c |q 8883
step
talk Valadar Starsong##15864
turnin Valadar Starsong##8883 |goto 53.65,35.26
step
talk Valadar Starsong##15864
accept Elune's Blessing##8868 |goto Moonglade/0 53.65,35.25
step
kill Omen##15467
|tip This boss will require a raid group.
|tip Stand in the pillar of light after it dies.
|tip If it was already killed, quickly jump in the pillar of light before it disappears.
Gain Elune's Blessing |q 8868/1 |goto 64.50,61.55
step
talk Valadar Starsong##15864
turnin Elune's Blessing##8868 |goto 53.60,35.40
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path",{
author="support@zygorguides.com",
description="This guide will walk you through an optimized path, honoring the elders for the \"Lunar Festival\" event.",
},[[
step
talk Innkeeper Firebrew##5111
home Ironforge |goto Ironforge/0 18.16,51.44 |q 8645 |future
step
talk Elder Bronzebeard##15871
accept Bronzebeard the Elder##8866 |goto Ironforge/0 29.19,17.03
step
talk Elder Goldwell##15569
accept Goldwell the Elder##8653 |goto Dun Morogh/0 46.82,51.61
step
talk Elder Silvervein##15558
accept Silvervein the Elder##8642 |goto Loch Modan/0 33.32,46.55
step
talk Elder Highpeak
accept Highpeak the Elder##8643 |goto The Hinterlands/0 49.99,48.04
step
talk Elder Snowcrown##15566
accept Snowcrown the Elder##8650 |goto Eastern Plaguelands/0 75.73,54.56
step
talk Elder Windrun##15592
|tip Inside the tower.
accept Windrun the Elder##8688 |goto 35.57,68.85
step
talk Elder Farwhisper##15607
|tip He is located in the Stratholme dungeon on the Service Entrance (Scarlet) side.
|tip Go left after entering the instance and through the plague rat gate and he will be on the right side.
|tip You may need to run this dungeon with a group.
accept Farwhisper the Elder##8727 |or
|tip
Click Here to Skip This Elder |confirm |or
step
talk Elder Meadowrun##15602
accept Meadowrun the Elder##8722 |goto Western Plaguelands/0 65.97,47.82
step
Follow the path |goto Western Plaguelands/0 68.61,80.10 < 20 |only if walking
Run up the stairs |goto 69.94,74.03 < 7 |only if walking
Enter the building |goto Eastern Kingdoms/0 50.94,36.51 < 15 |walk
Run up the stairs |goto 50.86,36.40 < 5 ||walk
talk Elder Moonstrike##15594
|tip Upstairs on the outer wall of the building.
accept Moonstrike the Elder##8714 |goto 50.88,36.52
step
Jump down here |goto 50.86,36.51 < 7 |walk
Jump Off the Wall |goto Western Plaguelands/0 68.76,73.60 < 500 |c |noway |q 8652 |future
step
talk Elder Graveborn##15568
|tip If you cannot see this elder, talk to Zidormi just outside the gates of Undercity. |only if completedq(12499)
accept Graveborn the Elder##8652 |goto Tirisfal Glades/0 61.87,53.85
step
talk Elder Darkcore##15564
|tip Inside the entrance to Undercity.
|tip If you cannot see this elder, talk to Zidormi just outside the gates of Undercity. |only if completedq(12499)
accept Darkcore the Elder##8648 |goto Undercity/0 66.62,38.19
step
talk Elder Obsidian##15561
accept Obsidian the Elder##8645 |goto Silverpine Forest/0 44.98,41.15
step
talk Elder Ironband##15567
accept Ironband the Elder##8651 |goto Searing Gorge/0 21.29,79.12
step
talk Elder Dawnstrider##15585
accept Dawnstrider the Elder##8683 |goto Burning Steppes/0 64.46,24.04
step
Cross the bridge |goto 76.07,38.04 < 7 |only if walking
talk Elder Rumblerock##15557
accept Rumblerock the Elder##8636 |goto 82.20,46.47
step
talk Elder Morndeep##15549
|tip He is located in the middle of the Ring of Law in the Blackrock Depths dungeon.
|tip Talking to him will start the event.
|tip You may need to run this dungeon with a group.
accept Morndeep the Elder##8619 |or
|tip
Click Here to Skip This Elder |confirm |or
step
talk Elder Stonefort##15560
|tip He is located on the left side after crossing the first rope brige in Hordemar City on the way to Omokk in the Lower Blackrock Spire dungeon.
|tip You may need to run this dungeon with a group.
accept Stonefort the Elder##8644 |or
|tip
Click Here to Skip This Elder |confirm |or
step
talk Elder Hammershout##15562
accept Hammershout the Elder##8646 |goto Stormwind City/0 36.27,66.14
step
talk Elder Stormbrow##15565
accept Stormbrow the Elder##8649 |goto Elwynn Forest/0 39.79,63.67
step
talk Elder Bellowrage##15563
accept Bellowrage the Elder##8647 |goto Blasted Lands/0 57.91,54.87
step
talk Elder Starsong##15593
|tip Take the path on the left after entering Sunken Temple dungeon.
|tip Go up the spiral staircase and go left again to the large round room.
|tip The elder is in the rear of the alcove on the left.
|tip You may need to run this dungeon with a group.
accept Starsong the Elder##8713 |or
|tip
Click Here to Skip This Elder |confirm |or
step
talk Elder Skychaser##15577
|tip At the top of the building.
accept Skychaser the Elder##8675 |goto Westfall/0 56.64,47.09
step
talk Elder Starglade##15596
accept Starglade the Elder##8716 |goto Stranglethorn Vale/0 53.11,18.46
step
talk Elder Winterhoof##15576
|tip On top of the bank.
accept Winterhoof the Elder##8674 |goto 26.46,76.53
step
talk Elder Windtotem##15582
accept Windtotem the Elder##8680 |goto The Barrens/0 62.65,36.74
step
talk Elder Runetotem##15572
accept Runetotem the Elder##8670 |goto Durotar/0 53.23,43.65
step
talk Elder Darkhorn##15579
accept Darkhorn the Elder##8677 |goto Orgrimmar/0 41.14,33.85
step
talk Elder Moonwarden##15597
accept Moonwarden the Elder##8717 |goto The Barrens/0 51.40,30.68
step
talk Elder High Mountain##15588
accept High Mountain the Elder##8686 |goto The Barrens/0 45.11,57.88
step
talk Elder Bloodhoof##15575
accept Bloodhoof the Elder##8673 |goto Mulgore/0 48.40,53.44
step
Ride the elevator up |goto Thunder Bluff/0 31.76,65.80
talk Elder Ezra Wheathoof##15580
accept Wheathoof the Elder##8678 |goto Thunder Bluff/0 72.98,23.38
step
talk Elder Skyseer##15584
accept Skyseer the Elder##8682 |goto Thousand Needles/0 45.42,50.08
step
talk Elder Morningdew##15604
accept Morningdew the Elder##8724 |goto Thousand Needles/0 79.19,77.05
step
talk Elder Wildmane##15578
|tip She is located inside the Zul'Farak dungeon near the pool that spawns Gaz'Rilla.
|tip You may need to run this dungeon with a group.
accept Wildmane the Elder##8676 |or
|tip
Click Here to Skip This Elder |confirm |or
step
talk Elder Dreamseer##15586
accept Dreamseer the Elder##8684 |goto Tanaris/0 51.46,27.85
step
talk Elder Ragetotem##15573
accept Ragetotem the Elder##8671 |goto Tanaris/0 36.30,80.53
step
talk Elder Thunderhorn##15583
accept Thunderhorn the Elder##8681 |goto Un'Goro Crater/0 50.37,76.16
step
talk Elder Bladesing##15599
accept Bladesing the Elder##8719 |goto Silithus/0 48.97,37.65
step
talk Elder Primestone##15570
accept Primestone the Elder##8654 |goto 23.09,11.84
step
Run up the ramp |goto Feralas/0 59.12,44.66 < 20 |only if walking
Enter the tunnel |goto 61.20,34.86 < 20 |walk
talk Elder Mistwalker##15587
|tip Down in the pit.
accept Mistwalker the Elder##8685 |goto Feralas/0 62.56,31.08
step
talk Elder Grimtotem##15581
accept Grimtotem the Elder##8679 |goto Feralas/0 76.71,37.89
step
talk Elder Splitrock##15556
|tip He is located inside the Maraudon dungeon near the east exit beyond Rotgrip.
|tip He is at the top of a path at the end of the tunnel.
|tip You may need to run this dungeon with a group.
accept Splitrock the Elder##8635 |or
|tip
Click Here to Skip This Elder |confirm |goto Maraudon/0 0.00,0.00 |or
step
Cross the bridge |goto Azshara/0 62.30,82.03 < 10 |only if walking
Cross the bridge |goto 65.07,82.30 < 10 |only if walking
talk Elder Skygleam##15600
accept Skygleam the Elder##8720 |goto 72.53,85.07
step
talk Elder Stonespire##15574
accept Stonespire the Elder##8672 |goto Winterspring/0 61.45,37.76
step
talk Elder Brightspear##15606
accept Brightspear the Elder##8726 |goto 55.62,43.66
step
talk Elder Nightwind##15603
accept Nightwind the Elder##8723 |goto Felwood/0 37.72,53.01
step
talk Elder Riversong##15605
accept Riversong the Elder##8725 |goto Ashenvale/0 35.54,48.91
step
talk Elder Starweave##15601
accept Starweave the Elder##8721 |goto Darkshore/0 36.81,46.75
step
talk Elder Bladeswift##15598
accept Bladeswift the Elder##8718 |goto Darnassus/0 33.48,14.29
step
talk Elder Bladeleaf##15595
accept Bladeleaf the Elder##8715 |goto Teldrassil/0 57.34,60.80
step
talk Elder Sardis##30348
accept Sardis the Elder##13012 |goto Borean Tundra/0 59.09,65.63
step
talk Elder Pamuya##30371
accept Pamuya the Elder##13029 |goto 42.94,49.57
step
talk Elder Arp##30364
accept Arp the Elder##13033 |goto 57.40,43.72
step
talk Elder Northal##30360
accept Northal the Elder##13016 |goto 33.80,34.36
step
map The Nexus/0
path follow smart; loop off; ants curved; dist 20
path	36.59,81.29	45.91,68.17	48.92,67.10	51.51,62.58	53.52,53.76
path	64.56,53.33	64.99,61.08	55.38,64.73
talk Elder Igasho##30536
|tip Open the world map to see an ant trail guiding you to your destination.
accept Igasho the Elder##13021 |goto 55.38,64.73 |or
|tip
Click Here to Skip This Elder |confirm |or
step
talk Elder Sandrene##30362
accept Sandrene the Elder##13018 |goto Sholazar Basin/0 49.78,63.62
step
talk Elder Wanikaya##30365
accept Wanikaya the Elder##13024 |goto 63.80,49.02
step
talk Elder Bluewolf##30368
|tip Inside the building.
|tip You can only get to this NPC when your faction controls Wintergrasp.
accept Bluewolf the Elder##13026 |goto Wintergrasp/0 49.03,13.94 |or
If your faction does not control Wintergrasp, click here to continue |confirm |or
step
talk Elder Morthie##30358
accept Morthie the Elder##13014 |goto Dragonblight/0 29.75,55.91
step
map Azjol-Nerub/1
path follow smart; loop off; ants curved; dist 20
path	13.06,86.67	19.23,71.83	25.68,35.49	53.80,44.73	64.13,44.52
path	74.03,44.30	82.50,44.52	88.95,44.73	80.78,40.22	70.59,33.55
map Azjol-Nerub/0
path	39.17,28.82	53.09,15.91	60.98,32.04	49.21,62.58
talk Elder Nurgen##30533
|tip Open the world map to see an ant trail guiding you to your destination.
accept Nurgen the Elder##13022 |goto Azjol-Nerub/0 21.81,43.23 |or
|tip
Click Here to Skip This Elder |confirm |or
step
talk Elder Skywarden##30373
accept Skywarden the Elder##13031 |goto Dragonblight/0 35.10,48.35
step
talk Elder Thoim##30363
accept Thoim the Elder##13019 |goto 48.77,78.18
step
talk Elder Graymane##30370
accept Graymane the Elder##13028 |goto The Storm Peaks/0 41.16,84.72
step
talk Elder Fargal##30359
accept Fargal the Elder##13015 |goto 28.88,73.71
step
Enter the building |goto 30.64,37.02 < 15 |walk
talk Elder Stonebeard##30375
|tip Inside the building.
accept Stonebeard the Elder##13020 |goto 31.26,37.61
step
map Halls of Stone/0
path follow smart; loop off; ants curved; dist 20
path	36.16,36.13	45.05,35.92	50.22,45.16	48.49,53.33
path	39.60,54.20	34.15,50.32	29.27,61.72
talk Elder Yurauk##30535
|tip Open the world map to see an ant trail guiding you to your destination.
accept Yurauk the Elder##13066 |goto 29.27,61.72 |or
|tip
Click Here to Skip This Elder |confirm |or
step
talk Elder Muraco##30374
accept Muraco the Elder##13032 |goto The Storm Peaks/0 64.59,51.34
step
talk Elder Tauros##30369
accept Tauros the Elder##13027 |goto Zul'Drak/0 58.91,55.97
step
map Drak'Tharon Keep/0
path follow smart; loop off; ants curved; dist 20
path	33.14,78.28	40.89,86.67	47.35,79.14	47.78,45.16	56.67,30.97
path	56.82,18.28	67.00,17.85	63.42,31.83	68.01,40.00	67.72,54.63
path	60.40,57.64	55.96,59.14	55.52,77.42	63.70,76.99	68.87,78.93
talk Elder Kilias##30534
|tip Open the world map to see an ant trail guiding you to your destination.
accept Kilias the Elder##13023 |goto 68.87,78.93 |or
|tip
Click Here to Skip This Elder |confirm |or
step
map Gundrak/0
path follow smart; loop off; ants curved; dist 20
path	58.68,37.21	59.25,48.82	57.96,67.96	51.08,73.55	46.34,70.97
path	45.34,61.08
talk Elder Ohanzee##30537
|tip Open the world map to see an ant trail guiding you to your destination.
accept Ohanzee the Elder##13065 |goto 45.34,61.08 |or
|tip
Click Here to Skip This Elder |confirm |or
step
talk Elder Beldak##30357
accept Beldak the Elder##13013 |goto Grizzly Hills/0 60.57,27.67
step
talk Elder Whurain##30372
accept Whurain the Elder##13030 |goto 64.18,46.99
step
talk Elder Lunaro##30367
accept Lunaro the Elder##13025 |goto 80.53,37.11
step
map Utgarde Keep/1
path follow smart; loop off; ants curved; dist 20
path	68.72,70.54	63.56,46.67	62.27,40.22	65.57,29.03	58.82,23.44
path	50.07,28.17	43.76,27.31	34.00,32.04	24.10,38.93	26.40,51.83
path	28.26,61.94	21.66,76.35	28.69,87.53	39.60,86.02	49.21,81.94
path	47.32,69.46
talk Elder Jarten##30531
|tip Open the world map to see an ant trail guiding you to your destination.
accept Jarten the Elder##13017 |goto 47.32,69.46 |or
|tip
Click Here to Skip This Elder |confirm |or
step
map Utgarde Pinnacle/1
path follow smart; loop off; ants curved; dist 20
path	44.48,17.85	44.19,35.70	33.86,36.13	33.72,50.97	34.43,68.39
path	39.60,68.60	39.31,76.35
map Utgarde Pinnacle/0
path	30.99,74.41	35.87,76.35	36.01,85.16	45.62,85.81
map Utgarde Pinnacle/1
path	52.51,73.98	51.65,83.66	60.55,83.87	60.83,69.89	68.15,69.25
path	68.44,52.04	68.15,36.35	60.98,37.42	56.24,37.42
map Utgarde Pinnacle/0
path	48.49,23.01
talk Elder Chogan'gada##30538
|tip Open the world map to see an ant trail guiding you to your destination.
accept Chogan'gada the Elder##13067 |goto 48.71,23.12 |or
|tip
Click Here to Skip This Elder |confirm |or
step
talk Elder Bluewolf##30368
|tip Inside the building.
|tip Your faction must control Wintergrasp to reach this Elder.
accept Bluewolf the Elder##13026 |goto Wintergrasp/0 49.03,13.94 |or
step
map The Nexus/0
path follow smart; loop off; ants curved; dist 20
path	36.59,81.29	45.91,68.17	48.92,67.10	51.51,62.58	53.52,53.76
path	64.56,53.33	64.99,61.08	55.38,64.73
talk Elder Igasho##30536
|tip Open the world map to see an ant trail guiding you to your destination.
accept Igasho the Elder##13021 |goto The Nexus/0 55.38,64.73
step
map Azjol-Nerub/1
path follow smart; loop off; ants curved; dist 20
path	13.06,86.67	19.23,71.83	25.68,35.49	53.80,44.73	64.13,44.52
path	74.03,44.30	82.50,44.52	88.95,44.73	80.78,40.22	70.59,33.55
map Azjol-Nerub/0
path	39.17,28.82	53.09,15.91	60.98,32.04	49.21,62.58
talk Elder Nurgen##30533
|tip Open the world map to see an ant trail guiding you to your destination.
accept Nurgen the Elder##13022 |goto Azjol-Nerub/0 21.81,43.23
step
map Drak'Tharon Keep/0
path follow smart; loop off; ants curved; dist 20
path	33.14,78.28	40.89,86.67	47.35,79.14	47.78,45.16	56.67,30.97
path	56.82,18.28	67.00,17.85	63.42,31.83	68.01,40.00	67.72,54.63
path	60.40,57.64	55.96,59.14	55.52,77.42	63.70,76.99	68.87,78.93
talk Elder Kilias##30534
|tip Open the world map to see an ant trail guiding you to your destination.
accept Kilias the Elder##13023 |goto 68.87,78.93
step
map Halls of Stone/0
path follow smart; loop off; ants curved; dist 20
path	36.16,36.13	45.05,35.92	50.22,45.16	48.49,53.33
path	39.60,54.20	34.15,50.32	29.27,61.72
talk Elder Yurauk##30535
|tip Open the world map to see an ant trail guiding you to your destination.
accept Yurauk the Elder##13066 |goto 29.27,61.72
step
map Gundrak/0
path follow smart; loop off; ants curved; dist 20
path	58.68,37.21	59.25,48.82	57.96,67.96	51.08,73.55	46.34,70.97
path	45.34,61.08
talk Elder Ohanzee##30537
|tip Open the world map to see an ant trail guiding you to your destination.
accept Ohanzee the Elder##13065 |goto 45.34,61.08
step
map Utgarde Keep/1
path follow smart; loop off; ants curved; dist 20
path	68.72,70.54	63.56,46.67	62.27,40.22	65.57,29.03	58.82,23.44
path	50.07,28.17	43.76,27.31	34.00,32.04	24.10,38.93	26.40,51.83
path	28.26,61.94	21.66,76.35	28.69,87.53	39.60,86.02	49.21,81.94
path	47.32,69.46
talk Elder Jarten##30531
|tip Open the world map to see an ant trail guiding you to your destination.
accept Jarten the Elder##13017 |goto 47.32,69.46
step
map Utgarde Pinnacle/1
path follow smart; loop off; ants curved; dist 20
path	44.48,17.85	44.19,35.70	33.86,36.13	33.72,50.97	34.43,68.39
path	39.60,68.60	39.31,76.35
map Utgarde Pinnacle/0
path	30.99,74.41	35.87,76.35	36.01,85.16	45.62,85.81
map Utgarde Pinnacle/1
path	52.51,73.98	51.65,83.66	60.55,83.87	60.83,69.89	68.15,69.25
path	68.44,52.04	68.15,36.35	60.98,37.42	56.24,37.42
map Utgarde Pinnacle/0
path	48.49,23.01
talk Elder Chogan'gada##30538
|tip Open the world map to see an ant trail guiding you to your destination.
accept Chogan'gada the Elder##13067 |goto 48.71,23.12
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\A Coin of Ancestry",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={605},
patch='30401',
description="Receive a Coin of Ancestry.",
},[[
step
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-1
step
|achieve 605
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\5 Coins of Ancestry",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={606},
patch='30401',
description="Receive 5 Coins of Ancestry.",
},[[
step
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-5
step
|achieve 606
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\10 Coins of Ancestry",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={607},
patch='30401',
description="Receive 10 Coins of Ancestry.",
},[[
step
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-14
step
|achieve 607
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\25 Coins of Ancestry",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={608},
patch='30401',
description="Receive 25 Coins of Ancestry.",
},[[
step
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-35
step
|achieve 608
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\50 Coins of Ancestry",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={609},
patch='30401',
description="Receive 50 Coins of Ancestry.",
},[[
step
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-64
step
|achieve 609
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Elders of Eastern Kingdoms",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={912},
patch='30401',
description="Honor the Elders of the following zones:\n\nElder Goldwell, Kharanos\n"..
"Elder Bellowrage, Blasted Lands\nElder Stormbrow, Goldshire\nElder Meadowrun, "..
"Western Plaguelands\nElder Starglade, Zul'Gurub\nElder Winterhoof, Booty Bay\n"..
"Elder Silvervein, Thelsamar\nElder Skychaser, Sentinel Hill\nElder Rumblerock, "..
"Burning Steppes\nElder Dawnstrider, Flame Crest\nElder Highpeak, The Hinterlands\n"..
"Elder Ironband, Searing Gorge\nElder Graveborn, Brill\nElder Obsidian, The Sepulcher"..
"\nElder Windrun, Eastern Plaguelands\nElder Snowcrown, Light's Hope Chapel\n"..
"Elder Moonstrike, Scholomance",
},[[
step
talk Innkeeper Firebrew##5111
home Ironforge |goto Ironforge/0 18.16,51.44 |q 8645 |future
step
talk Elder Goldwell##15569
accept Goldwell the Elder##8653 |goto Dun Morogh/0 46.82,51.61
step
talk Elder Silvervein##15558
accept Silvervein the Elder##8642 |goto Loch Modan/0 33.32,46.55
step
talk Elder Highpeak
accept Highpeak the Elder##8643 |goto The Hinterlands/0 49.99,48.04
step
talk Elder Snowcrown##15566
accept Snowcrown the Elder##8650 |goto Eastern Plaguelands/0 75.73,54.56
step
talk Elder Windrun##15592
|tip Inside the tower.
accept Windrun the Elder##8688 |goto 35.57,68.85
step
talk Elder Meadowrun##15602
accept Meadowrun the Elder##8722 |goto Western Plaguelands/0 65.97,47.82
step
Follow the path |goto Western Plaguelands/0 68.61,80.10 < 20 |only if walking
Run up the stairs |goto 69.94,74.03 < 7 |only if walking
Enter the building |goto Eastern Kingdoms/0 50.94,36.51 < 15 |walk
Run up the stairs |goto 50.86,36.40 < 5 ||walk
talk Elder Moonstrike##15594
|tip Upstairs on the outer wall of the building.
accept Moonstrike the Elder##8714 |goto 50.88,36.52
step
Jump down here |goto 50.86,36.51 < 7 |walk
Jump Off the Wall |goto Western Plaguelands/0 68.76,73.60 < 500 |c |noway |q 8722 |future
step
talk Elder Graveborn##15568
|tip If you cannot see this elder, talk to Zidormi just outside the gates of Undercity. |only if completedq(12499)
accept Graveborn the Elder##8652 |goto Tirisfal Glades/0 61.87,53.85
step
talk Elder Obsidian##15561
accept Obsidian the Elder##8645 |goto Silverpine Forest/0 44.98,41.15
step
talk Elder Ironband##15567
accept Ironband the Elder##8651 |goto Searing Gorge/0 21.29,79.12
step
talk Elder Dawnstrider##15585
accept Dawnstrider the Elder##8683 |goto Burning Steppes/0 64.46,24.04
step
Cross the bridge |goto 76.07,38.04 < 7 |only if walking
talk Elder Rumblerock##15557
accept Rumblerock the Elder##8636 |goto 82.20,46.47
step
talk Elder Stormbrow##15565
accept Stormbrow the Elder##8649 |goto Elwynn Forest/0 39.79,63.67
step
talk Elder Bellowrage##15563
accept Bellowrage the Elder##8647 |goto Blasted Lands/0 57.91,54.87
step
talk Elder Skychaser##15577
|tip At the top of the building.
accept Skychaser the Elder##8675 |goto Westfall/0 56.64,47.09
step
talk Elder Starglade##15596
accept Starglade the Elder##8716 |goto Stranglethorn Vale/0 53.11,18.46
step
talk Elder Winterhoof##15576
|tip On top of the bank.
accept Winterhoof the Elder##8674 |goto 26.46,76.53
step
|achieve 912
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Elders of Kalimdor",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={911},
patch='30401',
description="Honor the Elders of the following zones:\n\nElder Runetotem, Razor Hill\n"..
"Elder Skygleam, Azshara\nElder Moonwarden, The Crossroads\nElder High "..
"Mountain, Vendetta Point\nElder Windtotem, Ratchet\nElder Bladeleaf, "..
"Dolanaar\nElder Starweave, Lor'danel\nElder Bloodhoof, Bloodhoof Village\n"..
"Elder Riversong, Astranaar\nElder Grimtotem, Feralas\nElder Mistwalker, "..
"Dire Maul\nElder Nightwind, Felwood\nElder Skyseern Freewind Post\nElder"..
" Morningdew, Fizzle and Pozzik's Speedbarge\nElder Ragetotem, Tanaris\n"..
"Elder Dreamseer, Gadgetzan\nElder Thunderhorn, Un'Goro\nElder Brightspear,"..
" Winterspring\nElder Stonespire, Everlook\nElder Primestone, Silithus\n"..
"Elder Bladesing, Cenarion Hold",
},[[
step
talk Elder Bladeleaf##15595
accept Bladeleaf the Elder##8715 |goto Teldrassil/0 57.34,60.80
step
talk Elder Starweave##15601
accept Starweave the Elder##8721 |goto Darkshore/0 36.81,46.75
step
talk Elder Nightwind##15603
accept Nightwind the Elder##8723 |goto Felwood/0 38.35,52.85
step
talk Elder Riversong##15605
accept Riversong the Elder##8725 |goto Ashenvale/0 35.54,48.91
step
talk Elder Brightspear##15606
accept Brightspear the Elder##8726 |goto Winterspring/0 55.62,43.66
step
talk Elder Stonespire##15574
accept Stonespire the Elder##8672 |goto 61.45,37.76
step
Cross the bridge |goto Azshara/0 62.30,82.03 < 10 |only if walking
Cross the bridge |goto 65.07,82.30 < 10 |only if walking
talk Elder Skygleam##15600
accept Skygleam the Elder##8720 |goto 72.53,85.07
step
talk Elder Runetotem##15572
accept Runetotem the Elder##8670 |goto Durotar/0 53.23,43.61
step
talk Elder Windtotem##15582
accept Windtotem the Elder##8680 |goto The Barrens/0 62.65,36.74
step
talk Elder Moonwarden##15597
accept Moonwarden the Elder##8717 |goto The Barrens/0 51.40,30.68
step
talk Elder High Mountain##15588
accept High Mountain the Elder##8686 |goto The Barrens/0 45.11,57.88
step
talk Elder Bloodhoof##15575
accept Bloodhoof the Elder##8673 |goto Mulgore/0 48.49,53.24
step
Run up the ramp |goto Feralas/0 59.12,44.66 < 20 |only if walking
Enter the tunnel |goto 61.20,34.86 < 20 |walk
talk Elder Mistwalker##15587
|tip Down in the pit.
accept Mistwalker the Elder##8685 |goto Feralas/0 62.56,31.08
step
talk Elder Grimtotem##15581
accept Grimtotem the Elder##8679 |goto 76.71,37.89
step
talk Elder Skyseer##15584
accept Skyseer the Elder##8682 |goto Thousand Needles/0 46.35,51.02
step
talk Elder Morningdew##15604
accept Morningdew the Elder##8724 |goto 79.19,77.05
step
talk Elder Dreamseer##15586
accept Dreamseer the Elder##8684 |goto Tanaris/0 51.40,28.81
step
talk Elder Ragetotem##15573
accept Ragetotem the Elder##8671 |goto 37.24,79.06
step
talk Elder Thunderhorn##15583
accept Thunderhorn the Elder##8681 |goto Un'Goro Crater/0 50.37,76.17
step
talk Elder Bladesing##15599
accept Bladesing the Elder##8719 |goto Silithus/0 48.97,37.65
step
talk Elder Primestone##15570
accept Primestone the Elder##8654 |goto 23.09,11.84
step
|achieve 911
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Elders of Northrend",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={1396},
patch='30401',
description="Honor the Elders of the following zones:\n\nElder Sardis, Valiance Keep\n"..
"Elder Morthie, Star's Rest\nElder Arp, D.E.H.T.A\nElder Sandrene, Lakeside"..
" Landing\nElder Lunaro, Ruins of Tethys\nElder Tauros, Zim'Torga\nElder "..
"Graymane, K3\nElder Pamuya, Warsong Hold\nElder Skywarden, Agmar's Hammer\n"..
"Elder Beldak, Westfall Brigade\nElder Fargal, Frosthold\nElder Northal, "..
"Transitus Shield\nElder Wanikaya, Rainspeaker Rapids\nElder Bluewolf, "..
"Wintergrasp\nElder Thoim, Moa'ki Harbor\nElder Stonebeard, Bouldercrag's "..
"Refuge\nElder Whurain, Camp Oneqwah\nElder Muraco, Camp Tunka'lo",
},[[
step
talk Elder Sardis##30348
accept Sardis the Elder##13012 |goto Borean Tundra/0 59.09,65.63
step
talk Elder Pamuya##30371
accept Pamuya the Elder##13029 |goto 42.94,49.57
step
talk Elder Arp##30364
accept Arp the Elder##13033 |goto 57.40,43.72
step
talk Elder Northal##30360
accept Northal the Elder##13016 |goto 33.80,34.36
step
talk Elder Sandrene##30362
accept Sandrene the Elder##13018 |goto Sholazar Basin/0 49.78,63.62
step
talk Elder Wanikaya##30365
accept Wanikaya the Elder##13024 |goto 63.80,49.02
step
talk Elder Bluewolf##30368
|tip Inside the building.
|tip You can only get to this NPC when your faction controls Wintergrasp.
accept Bluewolf the Elder##13026 |goto Wintergrasp/0 49.03,13.94 |or
If your faction does not control Wintergrasp, click here to continue |confirm |or
step
talk Elder Morthie##30358
accept Morthie the Elder##13014 |goto Dragonblight/0 29.75,55.91
step
talk Elder Skywarden##30373
accept Skywarden the Elder##13031 |goto 35.10,48.35
step
talk Elder Thoim##30363
accept Thoim the Elder##13019 |goto 48.77,78.18
step
talk Elder Graymane##30370
accept Graymane the Elder##13028 |goto The Storm Peaks/0 41.16,84.72
step
talk Elder Fargal##30359
accept Fargal the Elder##13015 |goto 28.88,73.71
step
Enter the building |goto 30.64,37.02 < 15 |walk
talk Elder Stonebeard##30375
|tip Inside the building.
accept Stonebeard the Elder##13020 |goto 31.26,37.61
step
talk Elder Muraco##30374
accept Muraco the Elder##13032 |goto The Storm Peaks/0 64.59,51.34
step
talk Elder Tauros##30369
accept Tauros the Elder##13027 |goto Zul'Drak/0 58.91,55.97
step
talk Elder Beldak##30357
accept Beldak the Elder##13013 |goto Grizzly Hills/0 60.57,27.67
step
talk Elder Whurain##30372
accept Whurain the Elder##13030 |goto 64.18,46.99
step
talk Elder Lunaro##30367
accept Lunaro the Elder##13025 |goto 80.53,37.11
step
talk Elder Bluewolf##30368
|tip Inside the building.
|tip Your faction must control Wintergrasp to reach this Elder.
accept Bluewolf the Elder##13026 |goto Wintergrasp/0 49.03,13.94 |or
step
|achieve 1396
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Elders of the Dungeons",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={910},
patch='30401',
description="Honor the Elders of the following dungeons:\n\nElder Wildmane, Zul'Farrak\nElder "..
"Splitrock, Maraudon\nElder Morndeep, Blackrock Depths\nElder Jarten, Utgarde "..
"Keep\nElder Nurgen, Azjol-Nerub\nElder Ohanzee, Gundrak\nElder Chogan'gada, "..
"Utgarde Pinnacle\nElder Starsong, the Sunken Temple\nElder Stonefort, Blackrock"..
" Spire\nElder Farwhisper, Stratholme\nElder Igasho, The Nexus\nElder Kilias, "..
"Drak'Tharon Keep\nElder Yurauk, the Halls of Stone",
},[[
step
talk Elder Wildmane##15578
|tip She is located inside the Zul'Farak dungeon near the pool that spawns Gaz'Rilla.
|tip You may need to run this dungeon with a group.
accept Wildmane the Elder##8676 |goto Zul'Farrak/0 0.00,0.00
step
talk Elder Splitrock##15556
|tip He is located inside the Maraudon dungeon near the east exit beyond Rotgrip.
|tip He is at the top of a path at the end of the tunnel.
|tip You may need to run this dungeon with a group.
|tip Using the small portal entrance to enter at the waterfall is the shortest route.
accept Splitrock the Elder##8635
step
talk Elder Starsong##15593
|tip Take the path on the left after entering the Sunken Temple dungeon.
|tip Go up the spiral staircase and go left again to the large round room.
|tip The elder is in the rear of the alcove on the left.
|tip You may need to run this dungeon with a group.
accept Starsong the Elder##8713
step
talk Elder Morndeep##15549
|tip He is located in the middle of the Ring of Law in the Blackrock Depths dungeon.
|tip Talking to him will start the event.
|tip You may need to run this dungeon with a group.
accept Morndeep the Elder##8619
step
talk Elder Stonefort##15560
|tip He is located on the left side after crossing the first rope brige in Hordemar City on the way to Omokk in the Lower Blackrock Spire dungeon.
|tip You may need to run this dungeon with a group.
accept Stonefort the Elder##8644
step
talk Elder Farwhisper##15607
|tip He is located in the Stratholme dungeon on the Service Entrance (Scarlet) side.
|tip Go left after entering the instance and through the plague rat gate and he will be on the right side.
|tip You may need to run this dungeon with a group.
accept Farwhisper the Elder##8727
step
map The Nexus/0
path follow smart; loop off; ants curved; dist 20
path	36.59,81.29	45.91,68.17	48.92,67.10	51.51,62.58	53.52,53.76
path	64.56,53.33	64.99,61.08	55.38,64.73
talk Elder Igasho##30536
|tip Open the world map to see an ant trail guiding you to your destination.
accept Igasho the Elder##13021 |goto The Nexus/0 55.38,64.73
step
map Azjol-Nerub/2
path follow smart; loop off; ants curved; dist 20
path	13.06,86.67	19.23,71.83	25.68,35.49	53.80,44.73	64.13,44.52
path	74.03,44.30	82.50,44.52	88.95,44.73	80.78,40.22	70.59,33.55
map Azjol-Nerub/1
path	39.17,28.82	53.09,15.91	60.98,32.04	49.21,62.58
talk Elder Nurgen##30533
|tip Open the world map to see an ant trail guiding you to your destination.
accept Nurgen the Elder##13022 |goto Azjol-Nerub/1 21.81,43.23
step
map Drak'Tharon Keep/0
path follow smart; loop off; ants curved; dist 20
path	33.14,78.28	40.89,86.67	47.35,79.14	47.78,45.16	56.67,30.97
path	56.82,18.28	67.00,17.85	63.42,31.83	68.01,40.00	67.72,54.63
path	60.40,57.64	55.96,59.14	55.52,77.42	63.70,76.99	68.87,78.93
talk Elder Kilias##30534
|tip Open the world map to see an ant trail guiding you to your destination.
accept Kilias the Elder##13023 |goto 68.87,78.93
step
map Halls of Stone/0
path follow smart; loop off; ants curved; dist 20
path	36.16,36.13	45.05,35.92	50.22,45.16	48.49,53.33
path	39.60,54.20	34.15,50.32	29.27,61.72
talk Elder Yurauk##30535
|tip Open the world map to see an ant trail guiding you to your destination.
accept Yurauk the Elder##13066 |goto 29.27,61.72
step
map Gundrak/0
path follow smart; loop off; ants curved; dist 20
path	58.68,37.21	59.25,48.82	57.96,67.96	51.08,73.55	46.34,70.97
path	45.34,61.08
talk Elder Ohanzee##30537
|tip Open the world map to see an ant trail guiding you to your destination.
accept Ohanzee the Elder##13065 |goto 45.34,61.08
step
map Utgarde Keep/0
path follow smart; loop off; ants curved; dist 20
path	68.72,70.54	63.56,46.67	62.27,40.22	65.57,29.03	58.82,23.44
path	50.07,28.17	43.76,27.31	34.00,32.04	24.10,38.93	26.40,51.83
path	28.26,61.94	21.66,76.35	28.69,87.53	39.60,86.02	49.21,81.94
path	47.32,69.46
talk Elder Jarten##30531
|tip Open the world map to see an ant trail guiding you to your destination.
accept Jarten the Elder##13017 |goto 47.32,69.46
step
map Utgarde Pinnacle/1
path follow smart; loop off; ants curved; dist 20
path	44.48,17.85	44.19,35.70	33.86,36.13	33.72,50.97	34.43,68.39
path	39.60,68.60	39.31,76.35
map Utgarde Pinnacle/0
path	30.99,74.41	35.87,76.35	36.01,85.16	45.62,85.81
map Utgarde Pinnacle/1
path	52.51,73.98	51.65,83.66	60.55,83.87	60.83,69.89	68.15,69.25
path	68.44,52.04	68.15,36.35	60.98,37.42	56.24,37.42
map Utgarde Pinnacle/0
path	48.49,23.01
talk Elder Chogan'gada##30538
|tip Open the world map to see an ant trail guiding you to your destination.
accept Chogan'gada the Elder##13067 |goto 48.71,23.12
step
|achieve 910
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Elders of the Alliance",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={915},
patch='30401',
description="Honor the Elders of the following zones:\n\nElder Bladeswift, Darnassus\n"..
"Elder Bronzebeard, Ironforge\nElder Hammershout, Stormwind",
},[[
step
talk Elder Hammershout##15562
accept Hammershout the Elder##8646 |goto Stormwind City/0 36.27,66.14
step
talk Elder Bronzebeard##15871
|tip Inside Ironforge.
accept Bronzebeard the Elder##8866 |goto Ironforge/0 29.19,17.06
step
talk Elder Bladeswift##15598
accept Bladeswift the Elder##8718 |goto Darnassus/0 33.48,14.29
step
|achieve 915
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Elders of the Horde",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={914},
patch='30401',
description="Honor the Elders of the following zones:\n\nElder Darkhorn, Orgrimmar\n"..
"Elder Wheathoof, Thunder Bluff\nElder Darkcore, Undercity",
},[[
step
talk Elder Darkcore##15564
|tip Inside the entrance area building, before the Undercity elevators.
|tip If you cannot see this elder, talk to Zidormi just outside the gates of Undercity. |only if completedq(12499)
accept Darkcore the Elder##8648 |goto Undercity/0 66.64,38.23
step
talk Elder Darkhorn##15579
accept Darkhorn the Elder##8677 |goto Orgrimmar/0 41.14,33.85
step
talk Elder Ezra Wheathoof##15580
accept Wheathoof the Elder##8678 |goto Thunder Bluff/0 72.99,23.34
step
|achieve 914
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Elune's Blessing",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={937},
patch='30401',
description="Complete the Elune's Blessing quest by defeating Omen.",
},[[
step
talk Valadar Starsong##15864
accept Elune's Blessing##8868 |goto Moonglade/0 53.60,35.40
step
kill Omen##15467
|tip This boss will require a raid group.
|tip Stand in the pillar of light after it dies.
|tip If it was already killed, quickly jump in the pillar of light before it disappears.
Gain Elune's Blessing |q 8868/1 |goto 64.31,62.67
step
talk Valadar Starsong##15864
turnin Elune's Blessing##8868 |goto 53.60,35.40
step
|achieve 937
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Frenzied Firecracker",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={1552},
patch='30401',
description="Shoot off 10 Festival Firecrackers in 30 seconds or less.",
},[[
step
talk Lunar Festival Vendor##15898
buy 10 Festival Firecracker##21747 |goto Ironforge/0 29.92,14.22 |achieve 1552 |future
step
use the Festival Firecracker##21747
|tip Spam it quickly until you use all 10.
|tip You will need to target the ground after using it.
|achieve 1552 |goto 30.26,18.59
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\The Rocket's Red Glare",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={1281},
patch='30401',
description="Shoot off 10 Red Rocket Clusters in 25 seconds or less.",
},[[
step
talk Lunar Festival Vendor##15898
buy 10 Red Rocket Cluster##21576 |goto Ironforge/0 29.92,14.22 |achieve 1281 |future
step
use the Red Rocket Cluster##21576
|tip Spam it quickly until you use all 10.
|achieve 1281 |goto 30.26,18.59
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\Lunar Festival Finery",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={626},
patch='30401',
description="Purchase a festive pant suit or festive dress with Coins of Ancestry.",
},[[
step
collect 5 Coin of Ancestry##21100 |achieve 626 |future
|tip Use the "Lunar Festival Optimized Elders Path" event guide to accomplish this.
step
talk Valadar Starsong##15864
Purchase any Pant Suit or Dress |achieve 626 |goto Moonglade/0 53.63,35.41
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\To Honor One's Elders",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={913},
patch='30401',
description="Complete the following Lunar Festival achievements:\n\nElders of Cataclysm\n"..
"Elders of Eastern Kingdoms\nElders of Kalimdor\nElders of the Dungeons\n"..
"Elders of the Horde\nElders of the Alliance\nElders of Northrend\n50 Coins of "..
"Ancestry\nLunar Festival Finery\nThe Rocket's Red Glare\nFrenzied Firecracker\n"..
"Elune's Blessing",
},[[
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path"
leechsteps "Events Guides\\Lunar Festival\\Achievements\\Elune's Blessing"
leechsteps "Events Guides\\Lunar Festival\\Achievements\\Lunar Festival Finery"
leechsteps "Events Guides\\Lunar Festival\\Achievements\\The Rocket's Red Glare"
leechsteps "Events Guides\\Lunar Festival\\Achievements\\Frenzied Firecracker"
step
|achieve 913
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Quests",{
author="support@zygorguides.com",
description="This guide will help you complete the Midsummer Fire Festival event quests.\n\n"..
"|cffff0000NOTE:|r You will need to be at least level 75 to fully complete this guide.",
condition_end=function() return completedq(11972) end,
achieveid={263},
},[[
step
talk Innkeeper Allison##6740
|tip Inside the building.
home Trade District |goto Stormwind City/0 60.39,75.27
|only if not Mage
step
talk Human Commoner##18927
accept The Master of Summer Lore##11970 |goto 61.76,74.16
step
talk Festival Loremaster##16817
turnin The Master of Summer Lore##11970 |goto 49.53,72.26
accept Incense for the Summer Scorchlings##11964 |goto 49.53,72.26
|tip You may need to skip this step if this quest is not offered to you.
step
talk Earthen Ring Elder##26221
accept Unusual Activity##11886 |goto 49.32,72.27
step
talk Master Fire Eater##25975
accept Torch Tossing##11731 |goto 50.14,72.56
step
use the Practice Torches##34862
|tip Throw them at the Torch Target Braziers nearby.
|tip You must throw the torches at the correct braziers.
|tip Throw the torches at the Torch Target Braziers when they have a floating red arrow point down above them.
|tip You will have 40 seconds to complete this before the quest fails.
Hit 8 Braziers |q 11731/1 |goto 49.89,71.83
step
talk Master Fire Eater##25975
turnin Torch Tossing##11731 |goto 50.14,72.56
accept Torch Catching##11657 |goto 50.14,72.56
step
use the Unlit Torches##34833
|tip As soon as you light the torch, it will fly in the air.
|tip There will be a small round shadow on the ground indicating where the torch is flying.
|tip Follow that shadow and catch the torch.
|tip When you catch the torch, it will be thrown in the air again.
|tip Follow the shadow again and catch the torch.
|tip Do this until you've caught the torch 4 times in a row without it hitting the ground.
Catch #4# Torches in a Row |q 11657/1 |goto 49.81,71.77
step
talk Master Fire Eater##25975
turnin Torch Catching##11657 |goto 50.14,72.56
step
talk Elwynn Forest Flame Warden##25898
accept Honor the Flame##11816 |goto Elwynn Forest/0 43.47,62.63
step
talk Summer Scorchling##26401
|tip Under the tent.
turnin Incense for the Summer Scorchlings##11964 |goto 43.49,62.50
|only if haveq(11964) or completedq(11964)
step
talk Fire Eater##25962
accept Playing with Fire##11882 |goto 43.69,62.23
step
talk Master Fire Eater##25975
turnin Playing with Fire##11882 |goto Stormwind City/0 50.14,72.56
step
Kill Twilight enemies around this area
collect Twilight Correspondence##35277 |q 11886/1 |goto Ashenvale/0 14.75,19.33
step
use the Totemic Beacon##35828
Watch the dialogue
_Next to you:_
talk Earthen Ring Guide##25324
turnin Unusual Activity##11886 |goto 14.49,19.22
accept An Innocent Disguise##11891 |goto 14.49,19.22
step
use the Orb of the Crawler##35237
Gain the Crab Disguise Buff |havebuff Crab Disguise##46337 |q 11891 |goto 9.52,12.85
step
Watch the dialogue
Listen to the Plan of the Twilight Cultists |q 11891/1 |goto 9.37,12.71
step
use the Totemic Beacon##35828
Watch the dialogue
_Next to you:_
talk Earthen Ring Guide##25324
turnin An Innocent Disguise##11891 |goto 9.52,12.85
accept Inform the Elder##12012 |goto 9.52,12.85
step
talk Earthen Ring Elder##26221
turnin Inform the Elder##12012 |goto Stormwind City/0 49.32,72.27
step
Reach Level 75 |ding 75
|tip To finish these quests, you need to be level 75.
step
talk Earthen Ring Elder##26221
accept Ahune, the Frost Lord##11955 |goto 49.32,72.27
step
talk Numa Cloudsister##25710
|tip Numa can be found inside The Slave Pens dungeon on any difficulty.
|tip She is at the beginning of the dungeon as you zone in.
|tip Ahune is level 73 elite and will require a group to kill.
turnin Ahune, the Frost Lord##11955 |goto Zangarmarsh/0 48.92,35.74
accept Ahune is Here!##11696 |goto 48.92,35.74
step
talk Luma Skymother##25697
|tip Luma can be found inside The Slave Pens dungeon on any difficulty.
|tip She is near the beginning of the dungeon before Mennu the Betrayer.
turnin Ahune is Here!##11696
accept Summon Ahune##11691
step
click Ice Stone
|tip The Ice Stone can be found inside The Slave Pens dungeon on any difficulty.
|tip It is near the beginning of the dungeon before Mennu the Betrayer.
turnin Summon Ahune##11691
|tip Turning in this quest will summon Ahune.
|tip Ahune will immediately attack.
step
kill Ahune##25740
|tip You will need a group for this.
click Ice Chest
|tip It spawns after he dies.
collect Shards of Ahune##35723 |q 11972 |future
step
use the Shards of Ahune##35723
accept Shards of Ahune##11972
step
talk Luma Skymother##25697
|tip Luma can be found inside The Slave Pens dungeon on any difficulty.
|tip She is near the beginning of the dungeon before Mennu the Betrayer.
turnin Shards of Ahune##11972
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Dailies",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Midsummer Fire Festival Dailies.\n\n"..
"|cffff0000NOTE:|r You will need to be at least level 22 to fully complete this guide.",
},[[
step
Complete the "Midsummer Fire Festival Quests" Event Guide |complete completedq(12012)
step
label "Begin_Daily_Quests"
talk Master Fire Eater##25975
accept More Torch Tossing##11921 |goto Stormwind City/0 50.14,72.56
accept More Torch Catching##11924 |goto 50.14,72.56
step
use the Practice Torches##34862
|tip Throw them at the Torch Target Braziers nearby.
|tip You must throw the torches at the correct braziers.
|tip Throw the torches at the Torch Target Braziers when they have a floating red arrow point down above them.
|tip You will have 40 seconds to complete this before the quest fails.
Hit 20 Braziers |q 11921/1 |goto 49.81,71.77
step
use the Unlit Torches##34833
|tip As soon as you light the torch, it will fly in the air.
|tip There will be a small round shadow on the ground indicating where the torch is flying.
|tip Follow that shadow and catch the torch.
|tip When you catch the torch, it will be thrown in the air again.
|tip Follow the shadow again and catch the torch.
|tip Do this until you've caught the torch 10 times in a row without it hitting the ground.
Catch 10 Torches in a Row |q 11924/1 |goto 49.81,71.77
step
talk Master Fire Eater##25975
turnin More Torch Tossing##11921 |goto 50.14,72.56
turnin More Torch Catching##11924 |goto 50.14,72.56
step
talk Earthen Ring Elder##26221
accept Striking Back##11917 |goto 49.32,72.27 |only if level >= 22 and level < 32
accept Striking Back##11947 |goto 49.32,72.27 |only if level >= 32 and level < 43
accept Striking Back##11948 |goto 49.32,72.27 |only if level >= 43 and level < 51
accept Striking Back##11952 |goto 49.32,72.27 |only if level >= 51 and level < 60
accept Striking Back##11953 |goto 49.32,72.27 |only if level >= 60 and level < 67
accept Striking Back##11954 |goto 49.32,72.27 |only if level >= 67
|only if level >= 22
step
click Ice Stone##188149
|tip Inside the cave. |only if haveq(11952)
Choose _"Lay your hand on the stone"_
kill Frostwave Lieutenant##26116 |q 11917/1 |goto Ashenvale/0 9.62,12.20
|only if haveq(11917) or completedq(11917)
step
click Ice Stone##188149
Choose _"Lay your hand on the stone"_
kill Hailstone Lieutenant##26178 |q 11947/1 |goto Desolace/0 40.35,30.27
|only if haveq(11947) or completedq(11947)
step
click Ice Stone##188149
Choose _"Lay your hand on the stone"_
kill Glacial Lieutenant##26215 |q 11953/1 |goto Silithus/0 68.88,20.44
|only if haveq(11953) or completedq(11953)
step
click Ice Stone##188149
Choose _"Lay your hand on the stone"_
kill Chillwind Lieutenant##26204 |q 11948/1 |goto Stranglethorn Vale/0 21.31,40.95
|only if haveq(11948) or completedq(11948)
step
Enter the cave |goto Searing Gorge/0 21.83,36.18 < 20 |walk
click Ice Stone##188149
Choose _"Lay your hand on the stone"_
kill Frigid Lieutenant##26214 |q 11952/1 |goto 16.02,36.86
|only if haveq(11952) or completedq(11952)
step
click Ice Stone##188149
Choose _"Lay your hand on the stone"_
kill Glacial Templar##26216 |q 11954/1 |goto Hellfire Peninsula/0 85.64,47.09
|only if haveq(11954) or completedq(11954)
step
talk Earthen Ring Elder##26221
turnin Striking Back##11917 |goto Stormwind City/0 49.32,72.27 |only if haveq(11917) or completedq(11917)
turnin Striking Back##11947 |goto Stormwind City/0 49.32,72.27 |only if haveq(11947) or completedq(11947)
turnin Striking Back##11948 |goto Stormwind City/0 49.32,72.27 |only if haveq(11948) or completedq(11948)
turnin Striking Back##11952 |goto Stormwind City/0 49.32,72.27 |only if haveq(11952) or completedq(11952)
turnin Striking Back##11953 |goto Stormwind City/0 49.32,72.27 |only if haveq(11953) or completedq(11953)
turnin Striking Back##11954 |goto Stormwind City/0 49.32,72.27 |only if haveq(11954) or completedq(11954)
|only if haveq(11917,11947,11948,11952,11953,11954) or completedq(11917,11947,11948,11952,11953,11954)
step
You have completed all available dailies
|tip This guide will reset when more become available.
'|complete not completedq(11921,11924,11917,11947,11948,11952,11953,11954) |next "Begin_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Bonfires",{
author="support@zygorguides.com",
achieveid={1035,1022,1023,1024,1028,1029,1030,1145,1034},
description="This guide section will walk you through finding all of the bonfires for the Midsummer Fire Festival event.",
},[[
step
talk Innkeeper Allison##6740
|tip Inside the building.
home Trade District |goto Stormwind City/0 60.39,75.27 |q 11816 |future
|only if not Mage
step
talk Elwynn Forest Flame Warden##25898
accept Honor the Flame##11816 |goto Elwynn Forest/0 43.47,62.63
step
talk Burning Steppes Flame Warden##25892
accept Honor the Flame##11810 |goto Burning Steppes/0 80.30,62.88
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11768 |goto 62.16,29.09
|tip Completing this will flag you for PvP combat for five minutes.
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11766 |goto Badlands/0 4.82,49.33
|tip Completing this will flag you for PvP combat for five minutes.
step
talk Loch Modan Flame Warden##25902
accept Honor the Flame##11820 |goto Loch Modan/0 32.56,40.95
step
talk Dun Morogh Flame Warden##25895
accept Honor the Flame##11813 |goto Dun Morogh/0 46.70,46.94
step
talk Wetlands Flame Warden##25911
accept Honor the Flame##11828 |goto Wetlands/0 13.46,47.06
step
talk Arathi Flame Warden##25887
accept Honor the Flame##11804 |goto Arathi Highlands/0 50.02,44.83
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11764 |goto 73.95,41.82
|tip Completing this will flag you for PvP combat for five minutes.
step
talk The Hinterlands Flame Warden##25908
accept Honor the Flame##11826 |goto The Hinterlands/0 14.34,50.07
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11784 |goto 76.63,74.45
|tip Completing this will flag you for PvP combat for five minutes.
step
talk Hillsbrad Flame Warden##25901
accept Honor the Flame##11819 |goto Hillsbrad Foothills/0 50.43,47.58
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11776 |goto 58.29,25.06
|tip Completing this will flag you for PvP combat for five minutes.
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11580 |goto Silverpine Forest/0 49.64,38.63
|tip Completing this will flag you for PvP combat for five minutes.
step
click Flame of Undercity##181335
|tip It is recommended that you be level capped when attempting to complete this guide step.
|tip You will enter the opposing faction's capital city.
collect Flame of Undercity##23181 |goto Undercity/0 68.28,7.89 |q 9326 |future
step
use the Flame of Undercity##23181
accept Stealing Undercity's Flame##9326
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11786 |goto Tirisfal Glades/0 57.04,51.84
|tip Completing this will flag you for PvP combat for five minutes.
step
talk Western Plaguelands Flame Warden##25909
accept Honor the Flame##11827 |goto Western Plaguelands/0 43.46,82.33
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11774 |goto Ghostlands/0 47.06,25.82
|tip Completing this will flag you for PvP combat for five minutes.
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11772 |goto Eversong Woods/0 46.35,50.32
|tip Completing this will flag you for PvP combat for five minutes.
step
click Flame of Silvermoon##188129
|tip It is recommended that you be level capped when attempting to complete this guide step.
|tip You will enter the opposing faction's capital city.
collect Flame of Silvermoon##35568 |goto Silvermoon City/0 69.67,42.74 |q 11935 |future
step
use the Flame of Silvermoon##35568
accept Stealing Silvermoon's Flame##11935
step
talk Westfall Flame Warden##25910
accept Honor the Flame##11583 |goto Westfall/0 55.92,53.48
step
talk Duskwood Flame Warden##25896
accept Honor the Flame##11814 |goto Duskwood/0 73.69,54.61
step
talk Redridge Flame Warden##25904
accept Honor the Flame##11822 |goto Redridge Mountains/0 25.23,58.96
step
talk Flame Warden##25890
accept Honor the Flame##11808 |goto Blasted Lands/0 59.28,17.01
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11781 |goto Swamp of Sorrows/0 46.74,46.43
|tip Completing this will flag you for PvP combat for five minutes.
step
talk Stranglethorn Vale Flame Warden##25915
accept Honor the Flame##11832 |goto Stranglethorn Vale/0 33.90,73.52
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11801 |goto 33.04,75.38
|tip Completing this will flag you for PvP combat for five minutes.
step
talk Dustwallow Marsh Flame Warden##25897
accept Honor the Flame##11815 |goto Dustwallow Marsh/0 61.82,40.46
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11771 |goto 33.22,30.87
|tip Completing this will flag you for PvP combat for five minutes.
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11785 |goto Thousand Needles/0 42.48,52.75
|tip Completing this will flag you for PvP combat for five minutes.
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11802 |goto Tanaris/0 49.77,27.10
|tip Completing this will flag you for PvP combat for five minutes.
step
talk Tanaris Flame Warden##25916
accept Honor the Flame##11833 |goto 52.76,29.37
step
talk Silithus Flame Warden##25914
accept Honor the Flame##11831 |goto Silithus/0 57.47,35.24
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11800 |goto 46.40,44.77
|tip Completing this will flag you for PvP combat for five minutes.
step
talk Feralas Flame Warden##25899
accept Honor the Flame##11817 |goto Feralas/0 28.31,43.89
The boat to Sardor Isle can be found at [43.34,42.75]
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11773 |goto 72.47,47.70
|tip Completing this will flag you for PvP combat for five minutes.
The boat to the mainland can be found at [31.03,39.86]
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11777 |goto Mulgore/0 52.11,59.98
|tip Completing this will flag you for PvP combat for five minutes.
step
click Flame of Thunder Bluff##181337
|tip It is recommended that you be level capped when attempting to complete this guide step.
|tip You will enter the opposing faction's capital city.
collect Flame of Thunder Bluff##23180 |goto Thunder Bluff/0 21.48,26.01 |q 9325 |future
step
use the Flame of Thunder Bluff##23180
accept Stealing Thunder Bluff's Flame##9325
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11783 |goto The Barrens/0 52.17,27.85
|tip Completing this will flag you for PvP combat for five minutes.
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11770 |goto Durotar/0 51.98,47.06
|tip Completing this will flag you for PvP combat for five minutes.
step
click Flame of Orgrimmar##181336
|tip It is recommended that you be level capped when attempting to complete this guide step.
|tip You will enter the opposing faction's capital city.
collect Flame of Orgrimmar##23179 |goto Orgrimmar/0 46.81,38.20 |q 9324 |future
step
use the Flame of Orgrimmar##23179
accept Stealing Orgrimmar's Flame##9324
step
talk Desolace Flame Warden##25894
accept Honor the Flame##11812 |goto Desolace/0 66.12,17.09
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11769 |goto 26.26,77.23
|tip Completing this will flag you for PvP combat for five minutes.
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11780 |goto Stonetalon Mountains/0 50.60,60.28
|tip Completing this will flag you for PvP combat for five minutes.
step
talk Ashenvale Flame Warden##25883
accept Honor the Flame##11805 |goto Ashenvale/0 37.79,54.74
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11765 |goto 69.95,69.15
|tip Completing this will flag you for PvP combat for five minutes.
step
talk Winterspring Flame Warden##25917
accept Honor the Flame##11834 |goto Winterspring/0 62.55,35.43
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11803 |goto 59.90,35.41
|tip Completing this will flag you for PvP combat for five minutes.
step
talk Darkshore Flame Warden##25893
accept Honor the Flame##11811 |goto Darkshore/0 36.96,46.17
step
talk Festival Loremaster##16817
turnin Stealing Orgrimmar's Flame##9324 |goto Teldrassil/0 56.52,92.34 |only if haveq(9324) or completedq(9324)
turnin Stealing Thunder Bluff's Flame##9325 |goto 56.52,92.34 |only if haveq(9325) or completedq(9325)
turnin Stealing the Undercity's Flame##9326 |goto 56.52,92.34 |only if haveq(9326) or completedq(9326)
turnin Stealing Silvermoon's Flame##11935 |goto 56.52,92.34 |only if haveq(11935) or completedq(11935)
accept A Thief's Reward##9365 |goto 56.52,92.34 |only if completedallq(9324,9325,9326,11935)
|only if haveq(9324,9325,9326,11935) or completedq(9324,9325,9326,11935)
step
talk Teldrassil Flame Warden##25906
accept Honor the Flame##11824 |goto 55.06,60.41
step
talk Azuremyst Isle Flame Warden##25888
accept Honor the Flame##11806 |goto Azuremyst Isle/0 44.48,52.50
step
talk Bloodmyst Isle Flame Warden##25891
accept Honor the Flame##11809 |goto Bloodmyst Isle/0 55.83,67.88
step
talk Hellfire Peninsula Flame Warden##25900
accept Honor the Flame##11818 |goto Hellfire Peninsula/0 62.17,58.29
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11775 |goto 57.19,41.92
|tip Completing this will flag you for PvP combat for five minutes.
step
talk Zangarmarsh Flame Warden##25912
accept Honor the Flame##11829 |goto Zangarmarsh/0 68.79,51.95
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11787 |goto 35.52,51.79
|tip Completing this will flag you for PvP combat for five minutes.
step
talk Blade's Edge Flame Warden##25889
accept Honor the Flame##11807 |goto Blade's Edge Mountains/0 41.57,65.90
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11767 |goto 49.94,59.00
|tip Completing this will flag you for PvP combat for five minutes.
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11799 |goto Netherstorm/0 32.26,68.35
|tip Completing this will flag you for PvP combat for five minutes.
step
talk Netherstorm Flame Warden##25913
accept Honor the Flame##11830 |goto 31.21,62.66
step
talk Nagrand Flame Warden##25903
accept Honor the Flame##11821 |goto Nagrand/0 49.61,69.46
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11778 |goto 51.08,33.94
|tip Completing this will flag you for PvP combat for five minutes.
step
talk Terokkar Forest Flame Warden##25907
accept Honor the Flame##11825 |goto Terokkar Forest/0 54.06,55.52
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11782 |goto 51.94,43.17
|tip Completing this will flag you for PvP combat for five minutes.
step
talk Shadowmoon Valley Flame Warden##25905
accept Honor the Flame##11823 |goto Shadowmoon Valley/0 39.62,54.64
step
click Horde Bonfire##194039
accept Desecrate this Fire!##11779 |goto 33.48,30.31
|tip Completing this will flag you for PvP combat for five minutes.
step
talk Innkeeper Allison##6740
|tip Inside the building.
home Dalaran |goto Dalaran/1 60.39,75.27 |q 13486 |future
|only if not Mage
step
talk Sholazar Basin Flame Warden##32802
accept Honor the Flame##13486 |goto Sholazar Basin/0 48.09,66.37
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13450 |goto 47.32,61.51
|tip Completing this will flag you for PvP combat for five minutes.
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13441 |goto Borean Tundra/0 51.04,11.79
|tip Completing this will flag you for PvP combat for five minutes.
step
talk Borean Tundra Flame Warden##32801
accept Honor the Flame##13485 |goto 55.10,19.95
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13451 |goto Dragonblight/0 38.47,48.19
|tip Completing this will flag you for PvP combat for five minutes.
step
talk Dragonblight Flame Warden##32803
accept Honor the Flame##13487 |goto Dragonblight/0 75.29,43.81
step
talk Grizzly Hills Flame Warden##32805
accept Honor the Flame##13489 |goto Grizzly Hills/0 33.91,60.45
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13454 |goto 19.13,61.44
|tip Completing this will flag you for PvP combat for five minutes.
step
talk Howling Fjord Flame Warden##32804
accept Honor the Flame##13488 |goto Howling Fjord/0 57.81,16.12
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13453 |goto 48.40,13.34
|tip Completing this will flag you for PvP combat for five minutes.
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13457 |goto Crystalsong Forest/0 80.35,52.75
|tip Completing this will flag you for PvP combat for five minutes.
step
talk Crystalsong Forest Flame Warden##32807
accept Honor the Flame##13491 |goto 78.18,74.96
step
talk Zul'Drak Flame Warden##32808
accept Honor the Flame##13492 |goto Zul'Drak/0 40.38,61.30
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13458 |goto Zul'Drak/0 43.32,71.34
|tip Completing this will flag you for PvP combat for five minutes.
step
click Horde Bonfire##194039
accept Desecrate this Fire!##13455 |goto The Storm Peaks/0 40.37,85.61
|tip Completing this will flag you for PvP combat for five minutes.
step
talk Storm Peaks Flame Warden##32806
accept Honor the Flame##13490 |goto The Storm Peaks/0 41.44,86.69
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Burning Hot Pole Dance",{
author="support@zygorguides.com",
description="Dance at the ribbon pole for 60 seconds while wearing completed Midsummer set.",
achieveid={271},
},[[
step
collect 400 Burning Blossom##23247 |or
|tip You can acquire these by visiting bonfires across Eastern Kingomds, Kalimdor, Outland, and Northrend.
'|achieve 271 |or
step
talk Midsummer Supplier##26123
buy Vestment of Summer##34685 |goto Stormwind City/0 49.03,71.97 |or 3
buy Sandals of Summer##34683 |goto Stormwind City/0 49.03,71.97 |or 3
buy Mantle of the Fire Festival##23324 |goto Stormwind City/0 49.03,71.97 |or 3
'|achieve 271 |or 3 |override
step
Equip the Vestment of Summer |equipped Vestment of Summer##34685 |goto Elwynn Forest/0 43.95,62.12 |or
'|achieve 271 |or
step
Equip the Sandals of Summer |equipped Sandals of Summer##34683 |goto 43.95,62.12 |or
'|achieve 271 |or
step
Equip the Mantle of the Fire Festival |equipped Mantle of the Fire Festival##23324 |goto 43.95,62.12 |or
'|achieve 271 |or
step
click Ribbon Pole
|tip Dance at the pole for at least 60 seconds.
Earn the "Burning Hot Pole Dance" Achievement |achieve 271 |goto 43.95,62.12
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Midsummer Fire Festival\\Torch Juggler",{
author="support@zygorguides.com",
description="Juggle 40 torches in 15 seconds in Dalaran.",
achieveid={272},
},[[
step
collect 40 Burning Blossom##23247 |or
|tip You can acquire these by visiting bonfires across Eastern Kingomds, Kalimdor, Outland, and Northrend.
'|achieve 272 |or
step
talk Midsummer Supplier##26123
buy 40 Juggling Torch##34599 |goto Stormwind City/0 49.03,71.97 |or
'|achieve 272 |or
step
use the Juggling Torch##34599
|tip Throw it on the ground at your feet over and over quickly.
Juggle 40 Torches in 15 Seconds in Dalaran |achieve 272 |goto Dalaran/1 55.54,54.11
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Quests",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the quests for the Pilgrim's Bounty event.",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
condition_end=function() return completedq(14035) end,
patch='30404',
},[[
step
talk Human Commoner##18927
accept Pilgrim's Bounty##14022 |goto Stormwind City/0 61.76,74.16
step
talk Gregory Tabor##34675
turnin Pilgrim's Bounty##14022 |goto Elwynn Forest/0 34.10,51.45
step
talk Bountiful Table Hostess##34653
accept Sharing a Bountiful Feast##14064 |goto 34.18,51.07
step
clicknpc The Pie Chair##34822
|tip Use the "Feast On Pie" ability on your action bar five times.
Eat Five Pie Helpings |complete hasbuff(61845,5) or hasbuff(61849) |goto 34.24,51.23 |or |q 14064
step
Leave the Table |outvehicle |or |q 14064
|tip Click the "Exit" button on your action bar.
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast On Turky" ability on your action bar five times.
Eat Five Turkey Helpings |complete hasbuff(61842,5) or hasbuff(61849) |goto 34.29,51.07 |or |q 14064
step
Leave the Table |outvehicle |or |q 14064
|tip Click the "Exit" button on your action bar.
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast On Cranberries" ability on your action bar five times.
Eat Five Cranberry Helpings |complete hasbuff(61841,5) or hasbuff(61849) |goto 34.40,51.06 |or |q 14064
step
Leave the Table |outvehicle |or |q 14064
|tip Click the "Exit" button on your action bar.
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast On Sweet Potatoes" ability on your action bar five times.
Eat #5# Five Sweet Potato Helpings |complete hasbuff(61844,5) or hasbuff(61849) |goto 34.43,51.23 |or |q 14064
step
Leave the Table |outvehicle |or |q 14064
|tip Click the "Exit" button on your action bar.
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast On Stuffing" ability on your action bar five times.
Eat Five Stuffing Helpings |complete hasbuff(61843,5) or hasbuff(61849) |goto 34.33,51.33 |or |q 14064
step
Gain the Spirit of Sharing |q 14064/1 |goto 34.29,51.07
step
label "Leave_The_Table"
Leave the Table |outvehicle |q 14064
|tip Click the "Exit" button on your action bar.
step
talk Bountiful Table Hostess##34653
turnin Sharing a Bountiful Feast##14064 |goto 34.18,51.07
step
talk Ellen Moore##34710
Train Cooking |skillmax Cooking,300 |goto 33.71,50.63
step
talk Ellen Moore##34710
learn Spice Bread##37836 |goto 33.71,50.63
step
talk Wilmina Holbeck##34682
buy 1 Bountiful Cookbook##46809 |goto 34.14,51.53 |q 14023 |future |or
'|learn Slow-Roasted Turkey##62045 |or
step
use the Bountiful Cookbook##46809
collect Recipe: Spice Bread Stuffing##44860 |q 14023 |future |or
'|learn Spice Bread Stuffing##62050 |or
step
use the Bountiful Cookbook##46809
collect Recipe: Pumpkin Pie##44862 |q 14024 |future |or
'|learn Pumpkin Pie##66036 |or
step
use the Bountiful Cookbook##46809
collect Recipe: Cranberry Chutney##44858 |q 14028 |future |or
'|learn Cranberry Chutney##62049 |or
step
use the Bountiful Cookbook##46809
collect Recipe: Candied Sweet Potato##44859 |q 14030 |future |or
'|learn Candied Sweet Potato##62051 |or
step
use the Bountiful Cookbook##46809
collect Recipe: Slow-Roasted Turkey##44861 |q 14035 |future |or
'|learn Slow-Roasted Turkey##62045 |or
step
use the Recipe: Spice Bread Stuffing##44860
learn Spice Bread Stuffing##62050
step
talk Gregory Tabor##34675
accept Spice Bread Stuffing##14023 |goto 34.10,51.45
step
talk Wilmina Holbeck##34682
buy 10 Simple Flour##30817 |goto 34.14,51.53 |q 14023
buy 10 Mild Spices##2678 |goto 34.14,51.53 |q 14023
buy 10 Autumnal Herbs##44835 |goto 34.14,51.53 |q 14023
step
create 10 Spice Bread##37836,Cooking,10 total |goto 33.82,50.84 |q 14023
step
create 10 Spice Bread Stuffing##62050,Cooking,10 total |goto 33.82,50.84 |q 14023
|tip Save five for later.
step
create Spice Bread Stuffing##62050,Cooking,100 |goto 33.82,50.84
|tip Continue making Spice Bread Stuffing to reach 100 Cooking.
|tip Each one requires 1 Spice Bread and 1 Autumnal Herbs.
|tip Each Spice Bread requires 1 Simple Flour and 1 Mild Spices.
step
talk Ellen Moore##34710
Train Journeyman Cooking |skillmax Cooking,150 |goto 33.71,50.63
step
create Spice Bread Stuffing##62050,Cooking,100 |goto 33.82,50.84
|tip Continue making Spice Bread Stuffing to reach 100 Cooking.
|tip Each one requires 1 Spice Bread and 1 Autumnal Herbs.
|tip Each Spice Bread requires 1 Simple Flour and 1 Mild Spices.
step
talk Jasper Moore##34744
turnin Spice Bread Stuffing##14023 |goto 33.89,50.81
accept Pumpkin Pie##14024 |goto 33.89,50.81
step
use the Recipe: Pumpkin Pie##44862
learn Pumpkin Pie##66036
step
talk Wilmina Holbeck##34682
buy 10 Ripe Elwynn Pumpkin##46784 |goto 34.14,51.53 |q 14024
buy 10 Honey##44853 |goto 34.14,51.53 |q 14024
step
create 10 Pumpkin Pie##66036,Cooking,10 total |goto 33.83,50.73 |q 14024
|tip Click the line to open your cooking panel and create them.
|tip Save five for later.
step
create Pumpkin Pie##66036,Cooking,160 |skill Cooking,160
|tip Continue making Pumpkin Pie to reach 160 Cooking.
|tip Each one requires 1 Ripe Elwynn Pumpkin and 1 Honey.
step
talk Ellen Moore##34710
Train Expert Cooking |skillmax Cooking,225 |goto 33.71,50.63
step
create Pumpkin Pie##66036,Cooking,160
|tip Continue making Pumpkin Pie to reach 160 Cooking.
|tip Each one requires 1 Ripe Elwynn Pumpkin and 1 Honey.
step
talk Edward Winslow##34644
turnin Pumpkin Pie##14024 |goto Dun Morogh/0 52.67,36.11
accept Cranberry Chutney##14028 |goto 52.67,36.11
step
use the Recipe: Cranberry Chutney##44858
learn Cranberry Chutney##62049
learn Cranberry Chutney##66035
step
talk Elizabeth Barker Winslow##34645
buy 5 Tangy Southfury Cranberries##44854 |goto 52.63,36.11 |q 14028
buy 5 Honey##44853 |goto 52.63,36.11 |q 14028
step
create 5 Cranberry Chutney##66035,Cooking,5 total |goto 52.86,36.16 |q 14028
|tip Click the line to open your cooking panel and create them.
step
create Cranberry Chutney##66035,Cooking,220 |goto 52.86,36.16
|tip Continue making Cranberry Chutneys to reach 220 Cooking.
|tip Each one requires 1 Tangy Southfury Cranberries and 1 Honey.
step
talk Ellen Moore##34710
Train Artisan Cooking |skillmax Cooking,300 |goto 33.71,50.63
step
talk Jasper Moore##34744
turnin Cranberry Chutney##14028 |goto Elwynn Forest/0 33.89,50.81
accept They're Ravenous In Darnassus##14030 |goto Elwynn Forest/0 33.89,50.81
step
collect 5 Spice Bread Stuffing##44837 |q 14030/1
|tip You should have these from a previous step.
step
collect 5 Pumpkin Pie##44836 |q 14030/2
|tip You should have these from a previous step.
step
Travel to Darnassus |goto Darnassus/0 39.07,46.09 < 10000 |q 14030
step
talk Isaac Allerton##34676
turnin They're Ravenous In Darnassus##14030 |goto Darnassus/0 65.88,39.37
accept Candied Sweet Potatoes##14033 |goto 65.88,39.37
step
use the Recipe: Candied Sweet Potato##44859
learn Candied Sweet Potato##62051
step
talk Ikaneba Summerset##34681
buy 5 Teldrassil Sweet Potato##44855 |goto 66.13,39.42 |q 14033
buy 5 Honey##44853 |goto 66.13,39.42 |q 14033
buy 5 Autumnal Herbs##44835 |goto 66.13,39.42 |q 14033
step
create 5 Candied Sweet Potato##66034,Cooking,5 total |goto 66.84,35.19 |q 14033
|tip Click the line to open your cooking panel and create them.
step
create Candied Sweet Potato##66034,Cooking,280
|tip Continue making Candied Sweet Potatoes to reach 280 Cooking.
|tip Each one requires 1 Teldrassil Sweet Potato, 1 Autumnal Herbs, and 1 Honey.
step
talk Gregory Tabor##34675
turnin Candied Sweet Potatoes##14033 |goto Elwynn Forest/0 34.10,51.45
accept Slow-roasted Turkey##14035 |goto Elwynn Forest/0 34.10,51.45
step
use the Recipe: Slow-Roasted Turkey##44861
learn Slow-Roasted Turkey##62045
step
kill Wild Turkey##32820+
|tip You can find these all over Elwynn Forest.
collect 5 Wild Turkey##44834 |q 14035 |goto 43.52,58.01
step
talk Wilmina Holbeck##34682
buy 10 Honey##44853 |goto 34.15,51.52 |q 14035
buy 5 Autumnal Herbs##44835 |goto 34.15,51.52 |q 14035
step
create 5 Slow-Roasted Turkey##66037,Cooking,5 total |goto 33.83,50.73 |q 14035
|tip Click the line to open your cooking panel and create them.
step
talk Isaac Allerton##34676
turnin Slow-roasted Turkey##14035 |goto Darnassus/0 65.88,39.37
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Daily Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
description="This guide section will walk you through completing the daily quests for the Pilgrim's Bounty event.",
patch='30404',
},[[
step
label "Guide_Start"
Complete the "Pilgrim's Bounty Quests" Event Guide |complete completedq(14035)
step
talk Jasper Moore##34744
accept She Says Potato##14055 |goto Elwynn Forest/0 33.88,50.80
step
talk Ellen Moore##34710
accept We're Out of Cranberry Chutney Again?##14053 |goto 33.71,50.63
step
talk Wilmina Holbeck##34682
buy 20 Ripe Elwynn Pumpkin##46784 |goto 34.15,51.52 |q 14054 |future
buy 20 Simple Flour##30817 |goto 34.15,51.52 |q 14051 |future
buy 20 Mild Spices##2678 |goto 34.15,51.52 |q 14051 |future
buy 60 Autumnal Herbs##44835 |goto 34.15,51.52 |q 14055
buy 100 Honey##44853 |goto 34.15,51.52 |q 14054 |future
step
kill Wild Turkey##32820+
|tip You can find these all over Elwynn Forest.
collect 20 Wild Turkey##44834 |goto 43.52,58.01 |q 14048 |future
step
talk Caitrin Ironkettle##34708
accept Don't Forget The Stuffing!##14051 |goto Dun Morogh/0 52.90,36.08
accept Can't Get Enough Turkey##14048 |goto 52.90,36.08
step
talk Elizabeth Barker Winslow##34645
buy 20 Tangy Wetland Cranberries##44854 |goto 52.63,36.11 |q 14051
step
talk Ikaneba Summerset##34681
buy 20 Teldrassil Sweet Potato##44855 |goto Darnassus/0 66.13,39.42 |q 14055
step
talk Mary Allerton##34711
accept Easy As Pie##14054 |goto 66.51,35.13
step
create 20 Pumpkin Pie##66036,Cooking,20 total |goto 67.02,35.04 |q 14054
|tip Click the line to open your cooking panel and create them.
step
create 20 Spice Bread##37836,Cooking,20 total |goto 67.02,35.04 |q 14051
|tip Click the line to open your cooking panel and create them.
step
create 20 Spice Bread Stuffing##62050,Cooking,20 total |goto 67.02,35.04 |q 14051
|tip Click the line to open your cooking panel and create them.
step
create 20 Slow-Roasted Turkey##66037,Cooking,20 total |goto 67.02,35.04 |q 14048
|tip Click the line to open your cooking panel and create them.
step
create 20 Candied Sweet Potato##66034,Cooking,20 total |q 14055/1 |goto 67.02,35.04
|tip Click the line to open your cooking panel and create them.
step
create 20 Cranberry Chutney##66035,Cooking,20 total |goto 67.02,35.04 |q 14053
|tip Click the line to open your cooking panel and create them.
step
talk Mary Allerton##34711
turnin Easy As Pie##14054 |goto 66.51,35.13
step
talk Caitrin Ironkettle##34708
turnin Can't Get Enough Turkey##14048 |goto Dun Morogh/0 52.90,36.08
turnin Don't Forget The Stuffing!##14051 |goto 52.90,36.08
step
talk Ellen Moore##34710
turnin We're Out of Cranberry Chutney Again?##14053 |goto Elwynn Forest/0 33.71,50.63
step
talk Jasper Moore##34744
turnin She Says Potato##14055 |goto 33.89,50.81
step
Click Here to Repeat the Daily Quests |confirm |next "Guide_Start"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\FOOD FIGHT!",{
author="support@zygorguides.com",
description="Bounce food off a fellow feaster's head at a Bountiful Table.",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3579},
patch='30404',
},[[
step
clicknpc The Turkey Chair##34812
|tip Use the "Pass The Cranberries" ability to pass the food to other players at the table.
|tip You must target the other players and use the "Pass the Cranberries" ability.
|tip Do this repeatedly until you earn the "FOOD FIGHT!" achievement.
Start a Food Fight! |achieve 3579 |goto Elwynn Forest/0 34.29,51.07
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Now We're Cookin'",{
author="support@zygorguides.com",
description="Cook up each of the following Pilgrim's Bounty dishes:\n\n"..
"Candied Sweet Potato\nCranberry Chutney\nPumpkin Pie\n"..
"Slow-Roasted Turkey\nSpice Bread Stuffing",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3576},
patch='30404',
},[[
step
talk Wilmina Holbeck##34682
buy 1 Bountiful Cookbook##46809 |goto Elwynn Forest/0 34.14,51.53
|only if not achieved(3576)
step
talk Ellen Moore##34710
Train Cooking |skillmax Cooking,300 |goto 33.71,50.63
step
talk Ellen Moore##34710
learn Spice Bread##37836 |goto 33.71,50.63
step
use the Bountiful Cookbook##46809
collect Recipe: Spice Bread Stuffing##44860
|only if not achieved(3576)
step
use the Bountiful Cookbook##46809
collect Recipe: Pumpkin Pie##44862
|only if not achieved(3576)
step
use the Bountiful Cookbook##46809
collect Recipe: Cranberry Chutney##44858
|only if not achieved(3576)
step
use the Bountiful Cookbook##46809
collect Recipe: Candied Sweet Potato##44859
|only if not achieved(3576)
step
use the Bountiful Cookbook##46809
collect Recipe: Slow-Roasted Turkey##44861
|only if not achieved(3576)
step
use the Recipe: Spice Bread Stuffing##44860
learn Spice Bread Stuffing##62050
step
talk Wilmina Holbeck##34682
buy 1 Simple Flour##30817 |goto 34.14,51.53
buy 1 Mild Spices##2678 |goto 34.14,51.53
buy 1 Autumnal Herbs##44835 |goto 34.14,51.53
|only if not achieved(3576)
step
create 1 Spice Bread##37836,Cooking,1 total |goto 33.82,50.84 |achieve 3576/5
|tip Click the line to open your cooking panel and create it.
|only if not achieved(3576)
step
create 1 Spice Bread Stuffing##62050,Cooking,1 total |goto 33.82,50.84 |achieve 3576/5
|tip Click the line to open your cooking panel and create it.
step
use the Recipe: Pumpkin Pie##44862
learn Pumpkin Pie##66036
step
talk Wilmina Holbeck##34682
buy 1 Ripe Tirisfal Pumpkin##46796 |goto 34.14,51.53
buy 1 Honey##44853 |goto 34.14,51.53
|only if not achieved(3576)
step
create 1 Pumpkin Pie##66036,Cooking,1 total |goto 33.82,50.84 |achieve 3576/3
|tip Click the line to open your cooking panel and create it.
step
use the Recipe: Cranberry Chutney##44858
learn Cranberry Chutney##62049
step
talk Elizabeth Barker Winslow##34645
buy 1 Tangy Southfury Cranberries##44854 |goto Dun Morogh/0 52.63,36.11
buy 1 Honey##44853 |goto 52.63,36.11
|only if not achieved(3576)
step
create 1 Cranberry Chutney##66035,Cooking,1 total |goto 60.01,34.39 |achieve 3576/2
|tip Click the line to open your cooking panel and create iy.
step
use the Recipe: Candied Sweet Potato##44859
learn Candied Sweet Potato##62051
step
talk Ikaneba Summerset##34681
buy 1 Mulgore Sweet Potato##46797 |goto Darnassus/0 66.14,39.42
buy 1 Honey##44853 |goto 66.14,39.42
buy 1 Autumnal Herbs##44835 |goto 66.14,39.42
|only if not achieved(3576)
step
create 1 Candied Sweet Potato##66034,Cooking,1 total |goto 66.84,35.19 |achieve 3576/1
|tip Click the line to open your cooking panel and create it.
step
use the Recipe: Slow-Roasted Turkey##44861
learn Slow-Roasted Turkey##62045
step
kill Wild Turkey##32820+
|tip You can find these all over Elwynn Forest.
collect 1 Wild Turkey##44834 |goto Elwynn Forest/0 43.52,58.01
|only if not achieved(3576)
step
talk Wilmina Holbeck##34682
buy 2 Honey##44853 |goto 34.15,51.52
buy 1 Autumnal Herbs##44835 |goto 34.15,51.52
|only if not achieved(3576)
step
create 1 Slow-Roasted Turkey##66037,Cooking,1 total |goto 33.83,50.73 |achieve 3576/4
|tip Click the line to open your cooking panel and create it.
step
Cook a Pilgrim's Bounty Feast |achieve 3576
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim",{
author="support@zygorguides.com",
description="Complete the following Pilgrim's Bounty achievements:\n\n"..
"\"FOOD FIGHT!\"\nNow We're Cookin'\nPilgrim's Paunch\n"..
"Pilgrim's Peril\nPilgrim's Progress\nSharing is Caring\n"..
"Terokkar Turkey Time\nThe Turkinator\nTurkey Lurkey",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3478},
patch='30404',
},[[
leechsteps "Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Quests"
leechsteps "Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Daily Quests" 1-21
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\FOOD FIGHT!" 1-1
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Paunch" 1-43
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Peril" 1-9
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\Sharing is Caring" 1-10
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\Terokkar Turkey Time" 1-5
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\The Turkinator" 1-1
leechsteps "Events Guides\\Pilgrim's Bounty\\Achievements\\Turkey Lurkey" 1-11
step
Earn the "Pilgrim" Achievement |achieve 3478
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Paunch",{
author="support@zygorguides.com",
description="Acquire the Spirit of Sharing from a complete Bountiful Table feast at the following capital cities:\n\n"..
"Darnassus\nThe Exodar\n"..
"Ironforge\nStormwind",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3556},
patch='30404',
},[[
step
clicknpc The Pie Chair##34822
|tip Use the "Feast On Pie" ability on your action bar five times.
Eat Five Pie Helpings |complete hasbuff(61845,5) |goto Elwynn Forest/0 34.24,51.23 |or
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast On Turky" ability on your action bar five times.
Eat Five Turkey Helpings |complete hasbuff(61842,5) |goto 34.29,51.07 |or
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast On Cranberries" ability on your action bar five times.
Eat Five Cranberry Helpings |complete hasbuff(61841,5) |goto 34.40,51.06 |or
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast On Sweet Potatoes" ability on your action bar five times.
Eat Five Sweet Potato Helpings |complete hasbuff(61844,5) |goto 34.43,51.23 |or
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast On Stuffing" ability on your action bar five times.
Eat Five Stuffing Helpings |complete hasbuff(61843,5) |goto 34.33,51.33 |or
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Pie Chair##34822
|tip Use the "Feast On Pie" ability on your action bar five times.
Eat Five Pie Helpings |complete hasbuff(61845,5) |goto Darnassus/0 67.85,38.52 |or
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast On Turky" ability on your action bar five times.
Eat Five Turkey Helpings |complete hasbuff(61842,5) |goto 67.55,38.16 |or
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast On Cranberries" ability on your action bar five times.
Eat Five Cranberry Helpings |complete hasbuff(61841,5) |goto 67.64,37.68 |or
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast On Sweet Potatoes" ability on your action bar five times.
Eat Five Sweet Potato Helpings |complete hasbuff(61844,5) |goto 68.03,37.65 |or
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast On Stuffing" ability on your action bar five times.
Eat Five Stuffing Helpings |complete hasbuff(61843,5) |goto 68.14,38.19 |or
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Pie Chair##34822
|tip Use the "Feast On Pie" ability on your action bar five times.
Eat Five Pie Helpings |complete hasbuff(61845,5) |goto The Exodar/0 75.75,52.73 |or
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast On Turky" ability on your action bar five times.
Eat Five Turkey Helpings |complete hasbuff(61842,5) |goto 75.44,52.37 |or
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast On Cranberries" ability on your action bar five times.
Eat Five Cranberry Helpings |complete hasbuff(61841,5) |goto 75.55,51.90 |or
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast On Sweet Potatoes" ability on your action bar five times.
Eat Five Sweet Potato Helpings |complete hasbuff(61844,5) |goto 75.92,51.87 |or
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast On Stuffing" ability on your action bar five times.
Eat Five Stuffing Helpings |complete hasbuff(61843,5) |goto 76.04,52.40 |or
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Pie Chair##34822
|tip Use the "Feast On Pie" ability on your action bar five times.
Eat Five Pie Helpings |complete hasbuff(61845,5) |goto Dun Morogh/0 52.75,36.50 |or
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Turkey Chair##34812
|tip Use the "Feast On Turky" ability on your action bar five times.
Eat Five Turkey Helpings |complete hasbuff(61842,5) |goto 52.71,36.40 |or
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Cranberry Chair##34823
|tip Use the "Feast On Cranberries" ability on your action bar five times.
Eat Five Cranberry Helpings |complete hasbuff(61841,5) |goto 52.74,36.31 |or
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Feast On Sweet Potatoes" ability on your action bar five times.
Eat Five Sweet Potato Helpings |complete hasbuff(61844,5) |goto 52.82,36.33 |or
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
clicknpc The Stuffing Chair##34819
|tip Use the "Feast On Stuffing" ability on your action bar five times.
Eat Five Stuffing Helpings |complete hasbuff(61843,5) |goto 52.83,36.45 |or
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3556) |next "Earn_Pilgrim's_Paunch" |or
step
label "Earn_Pilgrim's_Paunch"
Acquire the Spirit of Sharing |achieve 3556
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Peril",{
author="support@zygorguides.com",
description="While wearing either a Pilgrim's Dress, Robe, or Attire, take a seat at the following enemy capital cities:\n\n"..
"Orgrimmar\nSilvermoon City\n"..
"Thunder Bluff\nUndercity",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3580},
patch='30404',
},[[
step
Collect a Pilgrim's Dress, Robe, or Attire |complete itemcount (46800) >= 1 or itemcount (44785) >= 1 or itemcount (46824) >= 1
|tip You can choose any of these as a reward for completing a Pilgrim's Bounty daily quest.
|tip Use the "Pilgrim's Bounty Daily Quests" event guide to accomplish this.
|only if not achieved(3580)
step
use Pilgrim's Attire##46800 |only if itemcount (46800) >= 1
Equip Pilgrim's Attire |equipped Pilgrim's Attire##46800 |only if itemcount (46800) >= 1
use Pilgrim's Dress##44785 |only if itemcount (44785) >= 1
Equip Pilgrim's Dress |equipped Pilgrim's Dress##44785 |only if itemcount (44785) >= 1
use Pilgrim's Robe##46824 |only if itemcount (46824) >= 1
Equip Pilgrim's Robe |equipped Pilgrim's Robe##46824 |only if itemcount (46824) >= 1
|only if not achieved(3580)
step
clicknpc The Turkey Chair##34812
Pilgrim's Peril of Undercity |achieve 3580/4 |goto Undercity/0 63.79,14.38
step
clicknpc The Turkey Chair##34812
Pilgrim's Peril of Silvermoon City |achieve 3580/2 |goto Eversong Woods/0 55.70,53.11
step
clicknpc The Turkey Chair##34812
Pilgrim's Peril of Thunder Bluff |achieve 3580/3 |goto Thunder Bluff/0 28.96,62.75
step
clicknpc The Turkey Chair##34812
Pilgrim's Peril of Orgrimmar |achieve 3580/1 |goto Durotar/0 46.61,14.50
step
Earn the "Pilgrim's Peril" Achievement |achieve 3580
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Progress",{
author="support@zygorguides.com",
description="Complete the following Pilgrim's Bounty dailies:\n\n"..
"Can't Get Enough Turkey\nDon't Forget The Stuffing!\nEasy As Pie\n"..
"She Says Potato\nWe're Out of Cranberry Chutney Again?",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3596},
patch='30404',
},[[
leechsteps "Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Daily Quests" 1-21
step
Earn the "Pilgrim's Progress" Achievement |achieve 3596
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Sharing is Caring",{
author="support@zygorguides.com",
description="Pass each of the following dishes at a Bountiful Table:\n\n"..
"Candied Sweet Potatoes\nCranberry Chutney\nPumpkin Pie\n"..
"Slow-Roasted Turkey\nSpice Bread Stuffing",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3558},
patch='30404',
},[[
step
clicknpc The Pie Chair##34822
|tip Use the "Pass the Pie" ability on your action bar five times.
Pass the Pie |achieve 3558/3 |goto Elwynn Forest/0 34.24,51.23 |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3558) |next "Earn_Sharing_Is_Caring" |or
step
clicknpc The Turkey Chair##34812
|tip Use the "Pass the Turky" ability on your action bar five times.
Pass the Turkey |achieve 3558/4 |goto 34.29,51.07 |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3558) |next "Earn_Sharing_Is_Caring" |or
step
clicknpc The Cranberry Chair##34823
|tip Use the "Pass the Cranberries" ability on your action bar five times.
Pass the Cranberries |achieve 3558/2 |goto 34.40,51.06 |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3558) |next "Earn_Sharing_Is_Caring" |or
step
clicknpc The Sweet Potato Chair##34824
|tip Use the "Pass the Sweet Potatoes" ability on your action bar five times.
Pass the Sweet Potatoes |achieve 3558/1 |goto 34.43,51.23 |or
step
Leave the Table |outvehicle |or
|tip Click the "Exit" button on your action bar.
'|complete achieved(3558) |next "Earn_Sharing_Is_Caring" |or
step
clicknpc The Stuffing Chair##34819
|tip Use the "Pass the Stuffing" ability on your action bar five times.
Pass the Stuffing |achieve 3558/5 |goto 34.33,51.33 |or
step
label "Earn_Sharing_Is_Caring"
Earn the "Sharing is Caring" Achievement |achieve 3558
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Terokkar Turkey Time",{
author="support@zygorguides.com",
description="Defeat Talon King Ikiss while wearing a Pilgrim's Hat and either a Pilgrim's Dress, Robe, or Attire.",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3582},
patch='30404',
},[[
step
Collect a Pilgrim's Dress, Robe, or Attire |complete itemcount (46800) >= 1 or itemcount (44785) >= 1 or itemcount (46824) >= 1
|tip You can choose any of these as a reward for completing a Pilgrim's Bounty daily quest.
|tip Use the "Pilgrim's Bounty Daily Quests" event guide to accomplish this.
|only if not achieved(3582)
step
collect 1 Pilgrim's Hat##46723
|tip You can choose this as a reward for completing a Pilgrim's Bounty daily quest.
|tip Use the "Pilgrim's Bounty Daily Quests" event guide to accomplish this.
|only if not achieved(3582)
step
use Pilgrim's Attire##46800 |only if itemcount (46800) >= 1
Equip a Pilgrim's Attire |equipped Pilgrim's Attire##46800 |only if itemcount (46800) >= 1
use Pilgrim's Dress##44785 |only if itemcount (44785) >= 1
Equip a Pilgrim's Dress |equipped Pilgrim's Dress##44785 |only if itemcount (44785) >= 1
use Pilgrim's Robe##46824 |only if itemcount (46824) >= 1
Equip a Pilgrim's Robe |equipped Pilgrim's Robe##46824 |only if itemcount (46824) >= 1
|only if not achieved(3582)
step
use Pilgrim's Hat##46723 |only if itemcount (46723) >= 1
Equip a Pilgrim's Hat |equipped Pilgrim's Attire##46723 |only if itemcount (46723) >= 1
|only if not achieved(3582)
step
kill Talon King Ikiss##18473
Earn the "Terokkar Turkey Time" Achievement |achieve 3582 |goto Sethekk Halls/1 32.50,39.50
|tip Use the "Auchindoun: Sethekk Halls" dungeon guide to accomplish this.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\Turkey Lurkey",{
author="support@zygorguides.com",
description="Blast the following dirty, sneaking Rogues with your Turkey Shooter:\n\n"..
"Blood Elf Rogue\nDwarf Rogue\nGnome Rogue\nGoblin Rogue\n"..
"Human Rogue\nNight Elf Rogue\nOrc Rogue\nTroll Rogue\n"..
"Undead Rogue\nWorgen Rogue",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3559},
patch='30404',
},[[
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Dwarf Rogue |achieve 3559/2 |goto Elwynn Forest/0 34.63,51.22
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Gnome Rogue |achieve 3559/1 |goto 34.63,51.22
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Human Rogue |achieve 3559/8 |goto 34.63,51.22
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Night Elf Rogue |achieve 3559/7 |goto 34.63,51.22
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Blood Elf Rogue |achieve 3559/3 |goto Durotar/0 46.08,14.05
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Orc Rogue |achieve 3559/6 |goto 46.08,14.05
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Troll Rogue |achieve 3559/5 |goto 46.08,14.05
step
use the Turkey Shooter##44812
|tip You get one for each Pilgrim's Bounty cache that you collect.
|tip Use the "Pilgrim's Bounty Daily Quests" guide and select the Piglrim's Bounty reward.
|tip You can complete this with ten shooters, but you may need more.
|tip Make sure you don't shoot any rogues with the "Turkey Feathers" buff.
|tip The easiest way to complete this is to have a friend create the rogue races you need.
|tip You can also search other capital cities.
|tip Type "/who c-rogue r-race", where race is the race of the rogue you're looking for.
|tip You can only search for races allied with your faction.
Shoot a Undead Rogue |achieve 3559/4 |goto 46.08,14.05
step
Earn the "Turkey Lurkey" Achievement |achieve 3559
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Pilgrim's Bounty\\Achievements\\The Turkinator",{
author="support@zygorguides.com",
description="Hunt enough Wild Turkeys quickly enough to gain Turkey Triumph.",
condition_suggested=function() return isevent("Pilgrim's Bounty") end,
achieveid={3578},
patch='30404',
},[[
step
kill Wild Turkey##32820+
|tip Kill 40 turkeys without letting your Turkey Tracker Buff expire.
|tip You will need to fly around Elwynn Forest.
|tip You will be given 30 seconds for each kill to find a new turkey.
|tip Use your "Track Beast" ability and look for yellow dots on the minimap. |only Hunter
Earn the "Turkinator" Achievement |achieve 3578 |goto Elwynn Forest/0 43.52,58.01
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Noblegarden Quests",{
author="support@zygorguides.com",
description="This guide section will walk you through completing the quests for the Noblegarden event.",
condition_suggested=function() return isevent('Noblegarden') end,
condition_end=function() return completedq(13502) end,
patch='30401',
},[[
step
talk Dwarf Commoner##19148
accept Spring Collectors##13484 |goto Ironforge/0 30.81,62.89
step
talk Spring Collector##32799
turnin Spring Collectors##13484 |goto Dun Morogh/0 46.88,52.37
step
talk Noblegarden Vendor##32836
accept A Tisket, A Tasket, A Noblegarden Basket##13502 |goto 47.00,52.49
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
collect 10 Noblegarden Chocolate##44791 |q 13502/1 |goto 45.85,50.78
You can find more around [47.21,53.76]
step
talk Noblegarden Vendor##32836
turnin A Tisket, a Tasket, a Noblegarden Basket##13502 |goto 47.00,52.49
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Noblegarden Dailies",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Noblegarden') end,
description="This guide section will walk you through completing the dailies for the Noblegarden event.",
patch='30401',
},[[
step
talk Dwarf Commoner##19148
accept Spring Collectors##13484 |goto Ironforge/0 30.81,62.87
step
talk Spring Collector##32799
turnin Spring Collectors##13484 |goto Dun Morogh/0 46.88,52.37
step
label "Begin_Daily_Quests"
talk Spring Collector##32799
accept The Great Egg Hunt##13480 |goto 46.88,52.37
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
collect 20 Brightly Colored Shell Fragment##44806 |q 13480/1 |goto 45.85,50.78
You can find more around [47.21,53.76]
step
talk Spring Collector##32799
turnin The Great Egg Hunt##13480 |goto 46.88,52.37
step
You have completed all Noblegarden daily quests
|tip This guide will reset when more become available.
'|complete not completedq(13480) |next "Begin_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Blushing Bride",{
author="support@zygorguides.com",
description="Kiss someone wearing an Elegant Dress while wearing a White Tuxedo Shirt and Black Tuxedo Pants.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2576},
patch='30401',
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
collect 50 Noblegarden Chocolate##44791 |goto Dun Morogh/0 45.85,50.78 |or
You can find more around [47.21,53.76]
'|complete achieved(2576) |or
step
talk Noblegarden Vendor##32836
buy 1 Black Tuxedo Pants##6835 |goto 47.00,52.49 |or
'|complete achieved(2576) |or
step
talk Noblegarden Vendor##32836
buy 1 White Tuxedo Shirt##6833 |goto 47.00,52.49 |or
'|complete achieved(2576) |or
step
Equip the Black Tuxedo Pants |equipped Black Tuxedo Pants##6835 |or
'|complete achieved(2576) |or
step
Equip the White Tuxedo Shirt |equipped White Tuxedo Shirt##6833 |or
'|complete achieved(2576) |or
step
|script DoEmote("KISS")
Earn the "Blushing Bride" Achievement |achieve 2576
|tip Use the kiss emote on a player wearing an Elegant Dress.
|tip The Elegant Dress looks like a long pink dress when worn.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Chocoholic",{
author="support@zygorguides.com",
description="Eat 100 Noblegarden Chocolates during the Noblegarden celebration.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2418},
patch='30401',
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
collect 100 Noblegarden Chocolate##44791 |goto Dun Morogh/0 45.85,50.78 |or
You can find more around [47.21,53.76]
'|complete achieved(2418) |or
step
use the Noblegarden Chocolate##44791+
Eat #100# Noblegarden Chocolates |achieve 2418
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Chocolate Lover",{
author="support@zygorguides.com",
description="Eat 25 Noblegarden Chocolates during the Noblegarden celebration.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2417},
patch='30401',
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
collect 25 Noblegarden Chocolate##44791 |goto Dun Morogh/0 45.85,50.78 |or
You can find more around [47.21,53.76]
'|complete achieved(2417) |or
step
use the Noblegarden Chocolate##44791+
Eat #25# Noblegarden Chocolates |achieve 2417
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Desert Rose",{
author="support@zygorguides.com",
description="Use Spring Robes to plant a flower in each of the deserts listed below:\n\n"..
"The Badlands\nDesolace\nSilithus\nTanaris\nThousand Needles",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2436},
patch='30401',
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
collect 50 Noblegarden Chocolate##44791 |goto Dun Morogh/0 45.85,50.78 |or
You can find more around [47.21,53.76]
'|complete achieved(2436) |or
step
talk Noblegarden Vendor##32836
buy 1 Spring Robes##44800 |goto 47.00,52.49 |or
'|complete achieved(2436) |or
step
Equip the Spring Robes |equipped Spring Robes##44800 |or
'|complete achieved(2436) |or
step
use the Spring Robes##44800
Plant a Flower in the Badlands |achieve 2436/2 |goto Badlands/0 7.21,60.74
step
use the Spring Robes##44800
Plant a Flower in Silithus |achieve 2436/1 |goto Silithus/0 43.99,42.69
step
use the Spring Robes##44800
Plant a Flower in Tanaris |achieve 2436/3 |goto Tanaris/0 51.38,29.43
step
use the Spring Robes##44800
Plant a Flower in Thousand Needles |achieve 2436/5 |goto Thousand Needles/0 74.54,91.00
step
use the Spring Robes##44800
Plant a Flower in the Desolace |achieve 2436/4 |goto Desolace/0 64.67,10.44
step
Earn the "Desert Rose" Achievement |achieve 2436
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Dressed for the Occasion",{
author="support@zygorguides.com",
description="Discover an Elegant Dress by opening Brightly Colored Eggs during the Noblegarden celebration.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={249},
patch='30401',
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
|tip You may need to loot hundreds, if not thousands of these eggs.
|tip You must loot this rather than buy it.
|tip Tip if you have the dress in your inventory it will not drop.
use the Brightly Colored Egg##45072
collect 1 Elegant Dress##19028 |achieve 249 |goto Dun Morogh/0 45.85,50.78 |or
You can find more around [47.21,53.76]
'|complete achieved(249) |or
step
Earn the "Dressed for the Occasion" Achievement |achieve 249
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Hard Boiled",{
author="support@zygorguides.com",
description="Lay an egg in Un'Goro Crater's Golakka Hot Springs as a rabbit during the Noblegarden celebration.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2416},
patch='30401',
},[[
step
talk Isirami Fairwind##32413
|tip Setting your hearthstone here will greatly reduce your travel time.
|tip You cannot take flight paths or use your mount after getting the buff.
|tip If you cannot get to Dalaran, travel to Silithus and set your hearthstone there before skipping this step.
home Dalaran |goto Dalaran/1 44.65,63.33 |or
'|complete achieved(2416) |or
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
Gain the "Noblegarden Bunny" Buff |havebuff Noblegarden Bunny##61734 |goto Dun Morogh/0 45.85,50.78 |or
You can find more around [47.21,53.76]
'|complete achieved(2416) |or
step
click Dalaran Portal to Caverns of Time |goto Dalaran/1 25.45,51.57
|tip Inside the building.
Travel to Caverns of Time |goto Tanaris/0 65.94,49.78 < 500 |c |noway |or
|tip If you set your hearth in Silithus, hearth there instead and skip this step.
'|complete achieved(2416) |or
step
Earn the "Hard Boiled" Achievement |achieve 2416 |goto Un'Goro Crater/0 35.74,54.21
|tip Avoid enemies, as being hit will cause you to lose your disguise.
|tip Stand in this spot until you lay an egg.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\I Found One!",{
author="support@zygorguides.com",
description="Find a Brightly Colored Egg.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2676},
patch='30401',
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
collect 1 Brightly Colored Egg##45072 |achieve 2676 |goto Dun Morogh/0 45.85,50.78 |or
You can find more around [47.21,53.76]
'|complete achieved(2676) |or
step
Earn the "I Found One!" Achievement |achieve 2676
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Noble Garden",{
author="support@zygorguides.com",
description="Hide a Brightly Colored Egg in Stormwind City.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2421},
patch='30401',
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
collect 5 Noblegarden Chocolate##44791 |goto Dun Morogh/0 45.85,50.78 |or
You can find more around [47.21,53.76]
'|complete achieved(2421) |or
step
talk Noblegarden Vendor##32836
buy 1 Noblegarden Egg##44818 |goto 47.00,52.49 |or
'|complete achieved(2421) |or
step
use Noblegarden Egg##44818
Earn the "Noble Garden" Achievement |achieve 2421
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Shake Your Bunny-Maker",{
author="support@zygorguides.com",
description="Use Spring Flowers to place rabbit ears upon players of at least 18th level of the following races:\n\n"..
"Blood Elf\nDraenei\nDwarf\nGnome\nGoblin\nHuman\nNight Elf\nOrc\nTauren\nTroll\nUndead\nWorgen",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2422},
patch='30401',
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
collect 50 Noblegarden Chocolate##44791 |goto Dun Morogh/0 45.85,50.78 |or
You can find more around [47.21,53.76]
'|complete achieved(2422) |or
step
talk Noblegarden Vendor##32836
buy 1 Spring Flowers##45073 |goto Dun Morogh/0 47.00,52.49 |or
'|complete achieved(2422) |or
step
Equip the Spring Flowers |equipped Spring Flowers##45073 |or
'|complete achieved(2422) |or
step
use the Spring Flowers##45073
|tip Use it on level 18+ characters.
|tip Check around capital cities.
Place Bunny Ears on a Blood Elf |achieve 2422/8
Place Bunny Ears on a Tauren |achieve 2422/5
Place Bunny Ears on a Draenei |achieve 2422/9
Place Bunny Ears on a Human |achieve 2422/1
Place Bunny Ears on a Troll |achieve 2422/6
Place Bunny Ears on a Dwarf |achieve 2422/2
Place Bunny Ears on a Night Elf |achieve 2422/4
Place Bunny Ears on a Gnome |achieve 2422/3
Place Bunny Ears on an Orc |achieve 2422/10
Place Bunny Ears on an Undead |achieve 2422/7
step
Earn the "Shake Your Bunny-Maker" Achievement |achieve 2422
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Spring Fling",{
author="support@zygorguides.com",
description="Find your pet Spring Rabbit another one to love in each of the towns listed below:\n\n"..
"Azure Watch\nDolanar\nGoldshire\nKharanos",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={2419},
patch='30401',
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
use the Brightly Colored Egg##45072+
collect 100 Noblegarden Chocolate##44791 |goto Dun Morogh/0 45.85,50.78 |or
You can find more around [47.21,53.76]
'|complete achieved(2419) |or
step
talk Noblegarden Vendor##32836
buy 1 Spring Rabbit's Foot##44794 |goto 47.00,52.49 |or
'|complete achieved(2419) |or
step
Find Your Spring Rabbit Another to Love in Kharanos |achieve 2419/4 |goto 46.37,51.78
|tip Summon your Spring Rabbit and find another player who has one summoned.
|tip Spring Rabbits are white with brown spots.
|tip Walk near the other player's rabbit to get credit.
step
Find Your Spring Rabbit Another to Love in Goldshire |achieve 2419/3 |goto Elwynn Forest/0 42.35,65.70
|tip Summon your Spring Rabbit and find another player who has one summoned.
|tip Spring Rabbits are white with brown spots.
|tip Walk near the other player's rabbit to get credit.
step
Find Your Spring Rabbit Another to Love in Dolanaar |achieve 2419/2 |goto Teldrassil/0 56.15,58.06
|tip Summon your Spring Rabbit and find another player who has one summoned.
|tip Spring Rabbits are white with brown spots.
|tip Walk near the other player's rabbit to get credit.
step
Find Your Spring Rabbit Another to Love in Azure Watch |achieve 2419/1 |goto Azuremyst Isle/0 49.31,50.55
|tip Summon your Spring Rabbit and find another player who has one summoned.
|tip Spring Rabbits are white with brown spots.
|tip Walk near the other player's rabbit to get credit.
step
Earn the "Spring Fling" Achievement |achieve 2419
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Noblegarden\\Achievements\\Sunday's Finest",{
author="support@zygorguides.com",
description="Discover the White Tuxedo Shirt and Black Tuxedo Pants by opening Brightly Colored Eggs during the Noblegarden celebration.",
condition_suggested=function() return isevent('Noblegarden') end,
achieveid={248},
patch='30401',
},[[
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
|tip You may need to loot hundreds, if not thousands of these eggs.
|tip You must loot this rather than buy it.
|tip Tip if you have the shirt in your inventory it will not drop.
use the Brightly Colored Egg##45072+
collect 1 White Tuxedo Shirt##6833 |achieve 248/1 |goto Dun Morogh/0 45.85,50.78 |or
You can find more around [47.21,53.76]
'|complete achieved(248) |or
step
click Brightly Colored Egg##113768+
|tip There is at least one available at all times.
|tip They look like multicolored eggs around trees and objects around this area.
|tip You may need to loot hundreds, if not thousands of these eggs.
|tip You must loot this rather than buy it.
|tip Tip if you have the pants in your inventory it will not drop.
use the Brightly Colored Egg##45072+
collect 1 Black Tuxedo Pants##6835 |achieve 248/2 |goto 45.85,50.78 |or
You can find more around [47.21,53.76]
'|complete achieved(248) |or
step
Earn the "Sunday's Finest" Achievement |achieve 248
]])
