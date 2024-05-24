local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("EventsH") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Brewfest Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Brewfest Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Achievements\\Brew of the Month")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Achievements\\Brew of the Year")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Achievements\\Direbrewfest")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Achievements\\Disturbing the Peace")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Achievements\\Does Your Wolpertinger Linger?")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Achievements\\Down With The Dark Iron")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Achievements\\Drunken Stupor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Achievements\\Have Keg, Will Travel")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Achievements\\Strange Brew")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Brewfest\\Achievements\\The Brewfest Diet")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Children's Week Orgrimmar Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Children's Week Shattrath Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Children's Week Dalaran Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\Aw, Isn't It Cute?")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\Bad Example")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\Daily Chores")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\Hail To The King, Baby")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\Home Alone")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\School of Hard Knocks")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\Veteran Nanny")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Children's Week\\Achievements\\For the Children")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Sayge's Fortunes (Elwynn Forest)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Chronos Turn-Ins (Elwynn Forest)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Kerri Hicks Turn-Ins (Elwynn Forest)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Rinling Turn-Ins (Elwynn Forest)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Yebb Neblegear Turn-Ins (Elwynn Forest)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Spawn of Jubjub (Elwynn Forest)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Wood Frog (Elwynn Forest)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Tree Frog (Elwynn Forest)")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Hallow's End Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Hallow's End Daily Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Hallow's End Candy Buckets")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Bring Me The Head of... Oh Wait")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Check Your Head")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\G.N.E.R.D. Rage")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Hallowed Be Thy Name")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\A Mask for All Occasions")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\The Mask Task")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\The Masquerade")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Out With It")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Rotten Hallow")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\The Savior of Hallow's End")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Sinister Calling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\That Sparkling Smile")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Trick or Treat!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Hallow's End\\Achievements\\Tricks and Treats of Azeroth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Harvest Festival\\Harvest Festival Quest")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Feast of Winter Veil Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\'Tis the Season")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\A Frosty Shake")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\BB King")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\Crashin' & Thrashin'")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\Fa-la-la-la-Ogri'la")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\He Knows If You've Been Naughty")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\Holiday Bromance")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\Let It Snow")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\On Metzen!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\Scrooge")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\Simply Abominable")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\The Winter Veil Gourmet")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\With a Little Helper from My Friends")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Feast of Winter Veil\\Achievements\\Merrymaker")
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Love is in the Air Main Questline",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Love is in the Air') and not completedq(24576) end,
description="This guide will walk you through completing the main questline for the Love is in the Air event.",
},[[
step
talk Detective Snap Snagglebolt##37172
accept Something Stinks##24536 |goto Orgrimmar/0 50.69,65.84
step
clicknpc Orgrimmar Grunt##3296+
|tip Look for Orgrimmar Grunts that have the Heavily Perfumed buff.
|tip They look like Orgrimmar Grunts with a glowing purple aura around them all over Orgrimmar.
use Snagglebolt's Air Analyzer##50131
|tip Use it on Orgrimmar Grunts around this area.
Analyze #6# Perfumed Guards |q 24536/1 |goto 51.52,74.03
step
talk Detective Snap Snagglebolt##37172
turnin Something Stinks##24536 |goto 50.69,65.84
accept Pilfering Perfume##24541 |goto 50.69,65.84
step
label "Gain_Crown_Parcel_Service_Uniform_Buff"
talk Detective Snap Snagglebolt##37172
Tell him  _"I need another disguise."_
Gain the "Crown Parcel Service Uniform" Buff |havebuff Crown Parcel Service Uniform##71450 |goto 50.69,65.84 |or
'|complete completedq(24541) |or
step
Return the Crown Chemical Co. Package |complete readyq(24541) or completedq(24541) |goto Durotar/0 47.70,11.81 |or |or
|tip Quickly run by the boxes to get the package.
|tip A crate will appear on your back.
|tip You have to move quickly before your disguise wears off or you drop the package.
|tip Simply walk next to Detective Snap Snagglebolt to return the package to him.
Return it to Snagglebolt at [Orgrimmar/0 50.69,65.84]
'|complete not hasbuff(71450) and not readyq(24541) and not completedq(24541) |next "Gain_Crown_Parcel_Service_Uniform_Buff" |or
step
talk Detective Snap Snagglebolt##37172
turnin Pilfering Perfume##24541 |goto Orgrimmar/0 50.69,65.84
accept Snivel's Sweetheart##24850 |goto 50.69,65.84
step
talk Roka##38328
|tip Inside the building.
turnin Snivel's Sweetheart##24850 |goto 58.97,53.12
accept Hot On The Trail##24851 |goto 58.97,53.12
step
Watch the dialogue
|tip Inside the building.
Search the Orgrimmar Auction House |q 24851/2 |goto 53.53,64.75
step
Watch the dialogue
|tip Inside the building.
Search the Orgrimmar Bank |q 24851/1 |goto 49.87,70.45
step
Watch the dialogue
|tip Inside the building down in the Cleft of Shadow.
Search the Orgrimmar Barber Shop |q 24851/3 |goto 47.34,54.51
step
talk Roka##38328
|tip Inside the building.
turnin Hot On The Trail##24851 |goto 58.97,53.12
accept A Friendly Chat...##24576 |goto 58.97,53.12
step
talk Snivel Rustrocket##37715
|tip At the top of the tower.
Tell him _"I have a rocket here with your mark on it, Snivel."_
collect 1 Snivel's Ledger##49915 |q 24576/1 |goto Durotar/0 50.63,13.12
step
talk Detective Snap Snagglebolt##37172
turnin A Friendly Chat...##24576 |goto Orgrimmar/0 50.69,65.84
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Love is in the Air Dailies",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Love is in the Air') and completedq(24576) and not completedq(44546,24629,24635,24636,24612,44559,24614,24613,24615) end,
description="This guide will walk you through completing the Love is in the Air event daily quests.",
},[[
step
label "Complete_Leveling_Guide"
Complete the "Love is in the Air Main Questline" guide before using this guide |complete completedq(24576)
step
talk Detective Snap Snagglebolt##37172
accept Crushing the Crown##24638 |goto Orgrimmar/0 50.69,65.84 |only if level >= 5 and level <= 13
accept Crushing the Crown##24645 |goto Orgrimmar/0 50.69,65.84 |only if level >= 14 and level <= 22
accept Crushing the Crown##24647 |goto Orgrimmar/0 50.69,65.84 |only if level >= 23 and level <= 31
accept Crushing the Crown##24648 |goto Orgrimmar/0 50.69,65.84 |only if level >= 32 and level <= 40
accept Crushing the Crown##24649 |goto Orgrimmar/0 50.69,65.84 |only if level >= 41 and level <= 50
accept Crushing the Crown##24650 |goto Orgrimmar/0 50.69,65.84 |only if level >= 51 and level <= 60
accept Crushing the Crown##24651 |goto Orgrimmar/0 50.69,65.84 |only if level >= 61 and level <= 70
accept Crushing the Crown##24652 |goto Orgrimmar/0 50.69,65.84 |only if level >= 71 and level <= 80
accept Man on the Inside##24793 |goto Orgrimmar/0 50.69,65.84 |only if Level == 80
step
talk Public Relations Agent##37675
accept A Perfect Puff of Perfume##24629 |goto 53.77,66.42 |or
accept A Cloudlet of Classy Cologne##24635 |goto 53.77,66.42 |or
accept Bonbon Blitz##24636 |goto 53.77,66.42 |or
|tip You will only be able to accept one of these quests.
step
talk Kwee Q. Peddlefeet##38042
accept A Gift for the Warchief's Advisor##24612 |goto 53.70,66.90
step
use the Crown Cologne Sprayer##49669
|tip Use it on NPCs and other players without a red heart over their head.
|tip You can do this anywhere in Orgrimmar.
Give #10# Cologne Samples |q 24635/1 |goto 51.04,72.11
|only if haveq(24635)
step
talk Kwee Q. Peddlefeet##38042
Tell him _"I'd like a Lovely Charm Collector's Kit."_
collect 1 Lovely Charm Collector's Kit##49661 |goto Orgrimmar/0 53.68,66.89
step
use the Crown Perfume Sprayer##49668
|tip Use it on NPCs and other players without a red heart over their head.
|tip You can do this anywhere in Orgrimmar.
Give #10# Perfume Samples |q 24629/1 |goto 51.04,72.11
|only if haveq(24629)
step
use the Crown Chocolate Sampler##49670
|tip Use it on NPCs and other players without a red heart over their head.
|tip You can do this anywhere in Orgrimmar.
Give #10# Chocolate Samples |q 24636/1 |goto 51.04,72.11
|only if haveq(24636)
stickystart "Kill_Crown_Lackeys"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24638/1 |goto Durotar/0 40.25,15.32
|only if haveq(24638) or completedq(24638)
step
label "Kill_Crown_Lackeys"
kill 5 Crown Lackey##37214 |q 24638/2 |goto 40.25,15.32
|only if haveq(24638) or completedq(24638)
stickystart "Kill_Crown_Thugs"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24645/1 |goto Silverpine Forest/0 54.64,61.19
|only if haveq(24645) or completedq(24645)
step
label "Kill_Crown_Thugs"
kill 5 Crown Thug##37917 |q 24645/2 |goto 54.64,61.19
|only if haveq(24645) or completedq(24645)
stickystart "Kill_Crown_Dusters"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24647/1 |goto Hillsbrad Foothills/0 28.16,38.08
|only if haveq(24647) or completedq(24647)
step
label "Kill_Crown_Dusters"
kill 5 Crown Duster##37984 |q 24647/2 |goto 28.16,38.08
|only if haveq(24647) or completedq(24647)
stickystart "Kill_Crown_Hoodlums"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24648/1 |goto Dustwallow Marsh/0 60.71,38.20
|only if haveq(24648) or completedq(24648)
step
label "Kill_Crown_Hoodlums"
kill 5 Crown Hoodlum##38006 |q 24648/2 |goto 60.71,38.20
|only if haveq(24648) or completedq(24648)
stickystart "Kill_Crown_Agents"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24649/1 |goto The Hinterlands/0 23.30,53.66
|only if haveq(24649) or completedq(24649)
step
label "Kill_Crown_Agents"
kill 5 Crown Agent##38016 |q 24649/2 |goto 23.30,53.66
|only if haveq(24649) or completedq(24649)
stickystart "Kill_Crown_Sprinklers"
step
Follow the path up |goto Winterspring/0 63.36,36.11 < 15 |only if walking
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24650/1 |goto 64.52,37.39
|only if haveq(24650) or completedq(24650)
step
label "Kill_Crown_Sprinklers"
kill 5 Crown Sprinkler##38023 |q 24650/2 |goto 64.52,37.39
|only if haveq(24650) or completedq(24650)
stickystart "Kill_Crown_Underlings"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24651/1 |goto Terokkar Forest/0 41.45,22.49
|only if haveq(24651) or completedq(24651)
step
label "Kill_Crown_Underlings"
kill 5 Crown Underling##38030 |q 24651/2 |goto 41.45,22.49
|only if haveq(24651) or completedq(24651)
stickystart "Kill_Crown_Sprayers"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24652/1 |goto Crystalsong Forest/0 50.55,50.06
|only if haveq(24652) or completedq(24652)
step
label "Kill_Crown_Sprayers"
kill 5 Crown Sprayer##38032 |q 24652/2 |goto 50.55,50.06
|only if haveq(24652) or completedq(24652)
step
Kill enemies that yield experience
|tip Any enemy that is green, yellow, or red difficulty will drop charms.
|tip You can kill enemies in dungeons or the open-world zone of your choice.
collect 40 Lovely Charm##49655 |q 24615 |future
|tip You will need 4 bracelets total.
step
use the Lovely Charm##49655
collect 4 Lovely Charm Bracelet##49916 |q 24615 |future
|tip Keep the extras for later.
step
talk Detective Snap Snagglebolt##37172
turnin Crushing the Crown##24638 |goto Orgrimmar/0 50.69,65.84 |only if haveq(24638) or completedq(24638)
turnin Crushing the Crown##24645 |goto Orgrimmar/0 50.69,65.84 |only if haveq(24645) or completedq(24645)
turnin Crushing the Crown##24647 |goto Orgrimmar/0 50.69,65.84 |only if haveq(24647) or completedq(24647)
turnin Crushing the Crown##24648 |goto Orgrimmar/0 50.69,65.84 |only if haveq(24648) or completedq(24648)
turnin Crushing the Crown##24649 |goto Orgrimmar/0 50.69,65.84 |only if haveq(24649) or completedq(24649)
turnin Crushing the Crown##24650 |goto Orgrimmar/0 50.69,65.84 |only if haveq(24650) or completedq(24650)
turnin Crushing the Crown##24651 |goto Orgrimmar/0 50.69,65.84 |only if haveq(24651) or completedq(24651)
turnin Crushing the Crown##24652 |goto Orgrimmar/0 50.69,65.84 |only if haveq(24652) or completedq(24652)
|only if haveq(24638,24645,24647,24648,24649,24650,24651,24652) or completedq(24638,24645,24647,24648,24649,24650,24651,24652)
step
talk Public Relations Agent##37675
turnin A Perfect Puff of Perfume##24629 |goto 53.77,66.42 |only if haveq(24629) or completedq(24629)
turnin A Cloudlet of Classy Cologne##24635 |goto 53.77,66.42 |only if haveq(24635) or completedq(24635)
turnin Bonbon Blitz##24636 |goto 53.77,66.42 |only if haveq(24636) or completedq(24636)
|only if haveq(24629,24635,24636) or completedq(24629,24635,24636)
step
Enter the building |goto 40.13,36.93 < 10 |walk
talk Thrall##4949
|tip Inside the building.
turnin A Gift for the Warchief's Advisor##24612 |goto Orgrimmar/0 31.64,37.82
step
talk Kwee Q. Peddlefeet##38042
accept A Gift for the High Chieftain##24614 |goto Thunder Bluff/0 44.02,52.61
step
collect Lovely Charm Bracelet##49916 |q 24614/1
|tip You created this in a previous step.
step
talk Cairne Bloodhoof##3057
|tip If Cairne is not available, relogging will usually make him appear.
turnin A Gift for the High Chieftain##24614 |goto 60.25,51.68
step
talk Kwee Q. Peddlefeet##38042
|tip He is in the Ruins of Lordaeron.
|tip If you cannot see him, speak to Zidormi outside Undercity.
accept A Gift for the Banshee Queen##24613 |goto Undercity/0 66.55,38.60
step
collect Lovely Charm Bracelet##49916 |q 24613/1
|tip You created this in a previous step.
step
Enter the tunnel |goto 52.03,64.52 < 10 |walk
talk Lady Sylvanas Windrunner##10181
|tip If you cannot see her, speak to Zidormi outside Undercity.
turnin A Gift for the Banshee Queen##24613 |goto 58.05,91.77
step
talk Kwee Q. Peddlefeet##38042
accept A Gift for the Regent Lord of Quel'Thalas##24615 |goto Silvermoon City/0 64.45,66.52
step
collect Lovely Charm Bracelet##49916 |q 24615/1
|tip You created this in a previous step.
step
talk Lor'themar Theron##16802
turnin A Gift for the Regent Lord of Quel'Thalas##24615 |goto 53.81,20.27
step
Inside the Shadowfang Keep Dungeon:
talk Investigator Fezzen Brasstacks##38208
turnin Man on the Inside##24793
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
'|complete not completedq(24629,24635,24636,24612,24614,24613,24615,14488) |next "Complete_Leveling_Guide"
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
buy Bag of Heart Candies##21813 |n |goto Orgrimmar/0 53.77,66.20
use the Bag of Heart Candies##21813
|tip Collect the 8 different types of Heart Candy from the Bag of Heart Candies.
Collect "Be Mine" |collect 1 Heart Candy##21816 |only if not achieved(1701,1)
Collect "I LOVE YOU" |collect 1 Heart Candy##21817 |only if not achieved(1701,2)
Collect "I'll Follow You All Around Azeroth" |collect 1 Heart Candy##21818 |only if not achieved(1701,3)
Collect "I'm All Yours" |collect 1 Heart Candy##21821 |only if not achieved(1701,4)
Collect "You're the Best" |collect 1 Heart Candy##21820 |only if not achieved(1701,5)
Collect "Hot Lips" |collect 1 Heart Candy##21823 |only if not achieved(1701,6)
Collect "All Yours" |collect 1 Heart Candy##21819 |only if not achieved(1701,7)
Collect "You're Mine" |collect 1 Heart Candy##21822 |only if not achieved(1701,8)
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
talk Kwee Q. Peddlefeet##38042
collect 1 Lovely Charm Collector's Kit##49661 |goto Orgrimmar/0 53.70,66.90 |or
'|complete achieved(260) |or
'|accept A Gift for the Warchief's Advisor##24612 |n
step
collect 120 Lovely Charm##49655
|tip They come from killing enemies that are at least green difficulty to you.
|tip They will not drop if they are grey difficulty.
|tip You can run dungeons or pick a zone of your choice and kill anything.
'|complete achieved(260)|or
step
use the Lovely Charm##49655
Create #12# Lovely Charm Bracelets |achieve 260 |or
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
Reach Level 7 |ding 7 |or
'|complete achieved(1695) |or
step
talk Detective Snap Snagglebolt##37172
accept Crushing the Crown##24638 |goto Orgrimmar/0 50.69,65.84 |or |only if level >= 5 and level <= 13
accept Crushing the Crown##24645 |goto Orgrimmar/0 50.69,65.84 |or |only if level >= 14 and level <= 22
accept Crushing the Crown##24647 |goto Orgrimmar/0 50.69,65.84 |or |only if level >= 23 and level <= 31
accept Crushing the Crown##24648 |goto Orgrimmar/0 50.69,65.84 |or |only if level >= 32 and level <= 40
accept Crushing the Crown##24649 |goto Orgrimmar/0 50.69,65.84 |or |only if level >= 41 and level <= 50
accept Crushing the Crown##24650 |goto Orgrimmar/0 50.69,65.84 |or |only if level >= 51 and level <= 60
accept Crushing the Crown##24651 |goto Orgrimmar/0 50.69,65.84 |or |only if level >= 61 and level <= 70
accept Crushing the Crown##24652 |goto Orgrimmar/0 50.69,65.84 |or |only if level >= 71 and level <= 80
'|complete achieved(1695) |or
stickystart "Kill_Crown_Lackeys"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24638/1 |goto Durotar/0 40.25,15.32
|only if haveq(24638) or completedq(24638)
step
label "Kill_Crown_Lackeys"
kill 5 Crown Lackey##37214 |q 24638/2 |goto 40.25,15.32
|only if haveq(24638) or completedq(24638)
stickystart "Kill_Crown_Thugs"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24645/1 |goto Silverpine Forest/0 54.64,61.19
|only if haveq(24645) or completedq(24645)
step
label "Kill_Crown_Thugs"
kill 5 Crown Thug##37917 |q 24645/2 |goto 54.64,61.19
|only if haveq(24645) or completedq(24645)
stickystart "Kill_Crown_Dusters"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24647/1 |goto Hillsbrad Foothills/0 28.16,38.08
|only if haveq(24647) or completedq(24647)
step
label "Kill_Crown_Dusters"
kill 5 Crown Duster##37984 |q 24647/2 |goto 28.16,38.08
|only if haveq(24647) or completedq(24647)
stickystart "Kill_Crown_Hoodlums"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24648/1 |goto Dustwallow Marsh/0 60.71,38.20
|only if haveq(24648) or completedq(24648)
step
label "Kill_Crown_Hoodlums"
kill 5 Crown Hoodlum##38006 |q 24648/2 |goto 60.71,38.20
|only if haveq(24648) or completedq(24648)
stickystart "Kill_Crown_Agents"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24649/1 |goto The Hinterlands/0 23.30,53.66
|only if haveq(24649) or completedq(24649)
step
label "Kill_Crown_Agents"
kill 5 Crown Agent##38016 |q 24649/2 |goto 23.30,53.66
|only if haveq(24649) or completedq(24649)
stickystart "Kill_Crown_Sprinklers"
step
Follow the path up |goto Winterspring/0 63.36,36.11 < 15 |only if walking
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24650/1 |goto 64.52,37.39
|only if haveq(24650) or completedq(24650)
step
label "Kill_Crown_Sprinklers"
kill 5 Crown Sprinkler##38023 |q 24650/2 |goto 64.52,37.39
|only if haveq(24650) or completedq(24650)
stickystart "Kill_Crown_Underlings"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24651/1 |goto Terokkar Forest/0 41.45,22.49
|only if haveq(24651) or completedq(24651)
step
label "Kill_Crown_Underlings"
kill 5 Crown Underling##38030 |q 24651/2 |goto 41.45,22.49
|only if haveq(24651) or completedq(24651)
stickystart "Kill_Crown_Sprayers"
step
use Snagglebolt's Khorium Bomb##50130
Destroy the Chemical Wagon |q 24652/1 |goto Crystalsong Forest/0 50.55,50.06
|only if haveq(24652) or completedq(24652)
step
label "Kill_Crown_Sprayers"
kill 5 Crown Sprayer##38032 |q 24652/2 |goto 50.55,50.06
|only if haveq(24652) or completedq(24652)
step
talk Detective Snap Snagglebolt##37172
turnin Crushing the Crown##24638 |goto Orgrimmar/0 50.69,65.84 |only if haveq(24638) or completedq(24638)
turnin Crushing the Crown##24645 |goto Orgrimmar/0 50.69,65.84 |only if haveq(24645) or completedq(24645)
turnin Crushing the Crown##24647 |goto Orgrimmar/0 50.69,65.84 |only if haveq(24647) or completedq(24647)
turnin Crushing the Crown##24648 |goto Orgrimmar/0 50.69,65.84 |only if haveq(24648) or completedq(24648)
turnin Crushing the Crown##24649 |goto Orgrimmar/0 50.69,65.84 |only if haveq(24649) or completedq(24649)
turnin Crushing the Crown##24650 |goto Orgrimmar/0 50.69,65.84 |only if haveq(24650) or completedq(24650)
turnin Crushing the Crown##24651 |goto Orgrimmar/0 50.69,65.84 |only if haveq(24651) or completedq(24651)
turnin Crushing the Crown##24652 |goto Orgrimmar/0 50.69,65.84 |only if haveq(24652) or completedq(24652)
|only if haveq(24638,24645,24647,24648,24649,24650,24651,24652) or completedq(24638,24645,24647,24648,24649,24650,24651,24652)
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
buy 15 Handful of Rose Petals##22218 |goto Orgrimmar/0 53.77,66.20 |or
'|complete achieved(1699) |or
stickystart "Use_Petals_on_Gnome_Warlock"
stickystart "Use_Petals_on_Orc_Death_Knight"
stickystart "Use_Petals_on_Human_Death_Knight"
stickystart "Use_Petals_on_Night_Elf_Priest"
stickystart "Use_Petals_on_Orc_Shaman"
stickystart "Use_Petals_on_Tauren_Druid"
stickystart "Use_Petals_on_Undead_Warrior"
stickystart "Use_Petals_on_Troll_Rogue"
stickystart "Use_Petals_on_Blood_Elf_Mage"
stickystart "Use_Petals_on_Draenei_Paladin"
stickystart "Use_Petals_on_Dwarf_Hunter"
step
use the Handful of Rose Petals##22218
|tip Battlegrounds and capital cities are good locations.
Use them once on each of the following classes:
'|complete achieved(1699)
step
label "Use_Petals_on_Gnome_Warlock"
Use Rose Petals on a "Gnome Warlock" |achieve 1699/3
step
label "Use_Petals_on_Orc_Death_Knight"
Use Rose Petals on a "Orc Death Knight" |achieve 1699/11
step
label "Use_Petals_on_Human_Death_Knight"
Use Rose Petals on a "Human Death Knight" |achieve 1699/2
step
label "Use_Petals_on_Night_Elf_Priest"
Use Rose Petals on a "Night Elf Priest" |achieve 1699/10
step
label "Use_Petals_on_Orc_Shaman"
Use Rose Petals on a "Orc Shaman" |achieve 1699/9
step
label "Use_Petals_on_Tauren_Druid"
Use Rose Petals on a "Tauren Druid" |achieve 1699/8
step
label "Use_Petals_on_Undead_Warrior"
Use Rose Petals on a "Undead Warrior" |achieve 1699/1
step
label "Use_Petals_on_Troll_Rogue"
Use Rose Petals on a "Troll Rogue" |achieve 1699/5
step
label "Use_Petals_on_Blood_Elf_Mage"
Use Rose Petals on a "Blood Elf Mage" |achieve 1699/7
step
label "Use_Petals_on_Draenei_Paladin"
Use Rose Petals on a "Draenei Paladin" |achieve 1699/4
step
label "Use_Petals_on_Dwarf_Hunter"
Use Rose Petals on a "Dwarf Hunter" |achieve 1699/6
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Achievements\\Flirt With Disaster",{
author="support@zygorguides.com",
description="Get completely smashed, put on your best perfume, throw a handful of rose petals "..
"on Jeremiah Payson and then kiss him. You'll regret it in the morning.",
condition_suggested=function() return isevent('Love is in the Air') and not achieved(1280) end,
achieveid={1280},
patch='30001',
},[[
step
collect 3 Love Token##49927 |or
|tip Earn these by completing daily quests.
|tip You can also kill mobs to assemble Lovely Charm Bracelets and trade them to the Lovely Merchant.
'|complete achieved(1280) |or
step
talk Lovely Merchant##37674
buy 1 "VICTORY" Perfume##49856 |goto Orgrimmar/0 53.77,66.20 |or 2
buy 1 Handful of Rose Petals##22218 |goto Orgrimmar/0 53.77,66.20 |or 2
'|complete achieved(1280) |or 2 |override
step
talk Barkeep Morag##5611
|tip Inside the building.
buy 3 Flagon of Dwarven Honeymoad##2594 |goto 54.64,67.67 |or
'|complete achieved(1280) |or
step
use the "VICTORY" Perfume##49856
|tip Use it near Jeremiah Payson inside Undercity beneath the bank.
Gain the "'VICTORY' Perfume" Buff |havebuff "VICTORY" Perfume##70233 |goto Undercity/0 67.59,44.13 |or
'|complete achieved(1280) |or
step
clicknpc Jeremiah Payson##8403
|tip He's under the stairs surrounded by cockroaches.
|tip If you cannot see him, speak to Zidormi outside Undercity.
use Flagon of Dwarven Honeymoad##2594
|tip Use all 3 of your Flagons of Dwarven Honeymoad to get Completely Smashed.
use the Handful of Rose Petals##22218
|tip Use them on Jeremiah Payson.
Use a Handful of Rose Petals on Jeremiah Payson |achieve 1280/1 |goto 67.59,44.13 |or
'|complete achieved(1279) |or
step
clicknpc Jeremiah Payson##8403
|tip If you cannot see him, speak to Zidormi outside Undercity.
"Kiss" Jeremiah Payson |script DoEmote("KISS")
Kiss Jeremiah Payson While Completely Smashed |achieve 1280/2 |goto 67.59,44.13
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
buy 5 Love Fool##22261 |goto Orgrimmar/0 53.77,66.20 |or
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
|tip Use your Love Fool near the Blacksmith node inside of the Arathi Basin battleground.
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
buy 1 Romantic Picnic Basket##34480 |goto Orgrimmar/0 53.77,66.20 |or
'|complete achieved(1291) |or
step
talk Lovely Merchant##37674
buy 1 Box of Chocolates##49909 |goto 53.77,66.20 |n
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
Enjoy a Buttermilk Delight with Someone in Dalaran at a Romantic Picnic |achieve 1291 |goto Dalaran/1 50.42,26.50
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
collect 1 Lovely Black Dress##22279 |goto Orgrimmar/0 53.77,66.20
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
description="Complete the Lovely Charm Bracelet daily quest for each Horde capital.",
condition_suggested=function() return isevent('Love is in the Air') and completedq(24576) and not achieved(1698) end,
achieveid={1698},
patch='30100',
},[[
leechsteps "Events Guides\\Love is in the Air\\Love is in the Air Main Questline"
step
talk Kwee Q. Peddlefeet##38042
accept A Gift for the Warchief's Advisor##24612 |goto Orgrimmar/0 53.70,66.90 |or
'|complete achieved(1698,1) |or
step
Kill enemies that yield experience
|tip Any enemy that is green, yellow, or red difficulty will drop charms.
|tip You can kill enemies in dungeons or the open-world zone of your choice.
collect 40 Lovely Charm##49655 |or
'|complete achieved(1698) |or
step
use the Lovely Charm##49655
collect 4 Lovely Charm Bracelet##49916 |or
'|complete achieved(1698) |or
step
Enter the building |goto 40.13,36.93 < 10 |walk
talk Thrall##4949
|tip Inside the building.
turnin A Gift for the Warchief's Advisor##24612 |goto Orgrimmar/0 31.64,37.82 |or
'|complete achieved(1698,1) |or
step
talk Kwee Q. Peddlefeet##38042
accept A Gift for the High Chieftain##24614 |goto Thunder Bluff/0 44.02,52.61 |or
'|complete achieved(1698,2) |or
step
collect Lovely Charm Bracelet##49916 |q 24614/1 |or
|tip You created this in a previous step.
'|complete achieved(1698,2) |or
step
talk Cairne Bloodhoof##3057
|tip If he isn't there, log out then back in.
turnin A Gift for the High Chieftain##24614 |goto 60.25,51.68 |or
'|complete achieved(1698,2) |or
step
talk Kwee Q. Peddlefeet##38042
|tip He is in the Ruins of Lordaeron.
|tip If you cannot see him, speak to Zidormi outside Undercity.
accept A Gift for the Banshee Queen##24613 |goto Undercity/0 66.55,38.60 |or
'|complete achieved(1698,4) |or
step
collect Lovely Charm Bracelet##49916 |q 24613/1 |or
|tip You created this in a previous step.
'|complete achieved(1698,4) |or
step
Enter the tunnel |goto 52.36,64.21 < 10 |walk
talk Lady Sylvanas Windrunner##10181
|tip If you cannot see her, speak to Zidormi outside Undercity.
turnin A Gift for the Banshee Queen##24613 |goto 58.05,91.77 |or
'|complete achieved(1698,4) |or
step
talk Kwee Q. Peddlefeet##38042
accept A Gift for the Regent Lord of Quel'Thalas##24615 |goto Silvermoon City/0 64.45,66.52 |or
'|complete achieved(1698,3) |or
step
collect Lovely Charm Bracelet##49916 |q 24615/1 |or
|tip You created this in a previous step.
'|complete achieved(1698,3) |or
step
talk Lor'themar Theron##16802
turnin A Gift for the Regent Lord of Quel'Thalas##24615 |goto 53.81,20.27 |or
'|complete achieved(1698,3) |or
step
Earn the "Nation of Adoration" Achievement |achieve 1698
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
buy 1 Truesilver Shafted Arrow##22235 |goto Orgrimmar/0 53.77,66.20
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
buy 10 Silver Shafted Arrow##22200 |goto Orgrimmar/0 53.77,66.20 |or
'|complete achieved(1188) |or
step
use the Silver Shafted Arrow##22200
|tip Use your Silver Shafted Arrows on 10 players inside Orgrimmar.
Shoot #10# Players with the Silver Shafted Arrow |achieve 1188 |goto 53.05,77.03
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
buy 1 Box of Chocolates##49909 |goto Orgrimmar/0 53.77,66.20 |n
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
Sample the "Buttermilk Delight" Candy |achieve 1702/1
|tip Save the remaining Buttermilk Delights for a later achievement.
step
use the Dark Desire##22237
Sample the "Dark Desire" Candy |achieve 1702/2
step
use the Sweet Surprise##22239
Sample the "Sweet Surprise" Candy |achieve 1702/3
step
use the Very Berry Cream##22238
Sample the "Very Berry Cream" Candy |achieve 1702/4
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
buy 10 Love Rocket##34258 |goto Orgrimmar/0 53.77,66.20 |or
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
talk Lunar Festival Emissary##15891
accept The Lunar Festival##8873 |goto Orgrimmar/0 50.97,70.55
step
talk Lunar Festival Harbinger##15895
turnin The Lunar Festival##8873 |goto 41.65,31.99
accept Lunar Fireworks##8867 |goto 41.65,31.99
step
talk Lunar Festival Vendor##15898
buy 8 Small Blue Rocket##21558 |goto 41.29,32.37 |q 8867
buy 2 Blue Rocket Cluster##21571 |goto 41.29,32.37 |q 8867
stickystart "Fire_Lunar_Fireworks_Clusters"
step
use the Small Blue Rocket##21558
Fire #8# Lunar Fireworks |q 8867/1 |goto 41.53,32.96
step
label "Fire_Lunar_Fireworks_Clusters"
use the Blue Rocket Cluster##21571
Fire #2# Lunar Fireworks Clusters |q 8867/2 |goto 41.53,32.96
step
talk Lunar Festival Harbinger##15895
turnin Lunar Fireworks##8867 |goto 41.65,31.99
accept Valadar Starsong##8883 |goto 41.65,31.99
step
use the Lunar Festival Invitation##21711 |goto 41.00,31.06
Go to Moonglade |goto Moonglade |c |q 8883
step
talk Valadar Starsong##15864
turnin Valadar Starsong##8883 |goto 53.65,35.26
step
talk Valadar Starsong##15864
accept Elune's Blessing##8868 |goto 53.65,35.26
step
kill Omen##15467
|tip You may need help with this.
|tip Step into the pillar of light that spawns after.
|tip If the pillar is already present, quickly jump in it before it disappears.
Receive Elune's Blessing |q 8868/1 |goto 53.65,35.26
step
talk Valadar Starsong##15864
turnin Elune's Blessing##8868 |goto 53.65,35.26
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path",{
author="support@zygorguides.com",
description="This guide will walk you through an optimized path, honoring the elders for the \"Lunar Festival\" event.",
},[[
step
talk Elder Darkcore##15564
|tip Inside the entrance to Undercity.
|tip If you cannot see this elder, talk to Zidormi just outside the gates of Undercity. |only if completedq(13242)
accept Darkcore the Elder##8648 |goto Undercity/0 66.62,38.19
step
talk Elder Graveborn##15568
|tip If you cannot see this elder, talk to Zidormi just outside the gates of Undercity. |only if completedq(13242)
accept Graveborn the Elder##8652 |goto Tirisfal Glades/0 61.87,53.85
step
talk Elder Obsidian##15561
accept Obsidian the Elder##8645 |goto Silverpine Forest/0 44.98,41.15
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
|tip Go to the right when you enter the building.
accept Moonstrike the Elder##8714 |goto 50.88,36.52
step
Jump down here |goto 50.86,36.51 < 7 |walk
Jump Off the Wall |goto Western Plaguelands/0 68.76,73.60 < 500 |c |noway |q 8643 |future
step
talk Elder Highpeak
accept Highpeak the Elder##8643 |goto The Hinterlands/0 49.99,48.04
step
talk Elder Silvervein##15558
accept Silvervein the Elder##8642 |goto Loch Modan/0 33.32,46.55
step
talk Elder Bronzebeard##15871
accept Bronzebeard the Elder##8866 |goto Ironforge/0 29.19,17.03
step
talk Elder Goldwell##15569
accept Goldwell the Elder##8653 |goto Dun Morogh/0 46.82,51.61
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
talk Elder Stormbrow##15565
accept Stormbrow the Elder##8649 |goto Elwynn Forest/0 39.79,63.67
step
talk Elder Hammershout##15562
accept Hammershout the Elder##8646 |goto Stormwind City/0 36.27,66.14
step
talk Elder Skychaser##15577
|tip On top of the tower.
accept Skychaser the Elder##8675 |goto Westfall/0 56.64,47.09
step
talk Elder Starsong##15593
|tip Take the path on the left after entering the Sunken Temple dungeon.
|tip Go up the spiral staircase and go left again to the large round room.
|tip The elder is in the rear of the alcove on the left.
|tip You may need to run this dungeon with a group.
accept Starsong the Elder##8713 |or
|tip
Click Here to Skip This Elder |confirm |or
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
accept Wheathoof the Elder##8678 |goto 72.98,23.38
step
talk Elder Splitrock##15556
|tip He is located inside the Maraudon dungeon near the east exit beyond Rotgrip.
|tip He is at the top of a path at the end of the tunnel.
|tip You may need to run this dungeon with a group.
accept Splitrock the Elder##8635 |or
|tip
Click Here to Skip This Elder |confirm |goto Maraudon/0 0.00,0.00 |or
step
talk Elder Grimtotem##15581
accept Grimtotem the Elder##8679 |goto Feralas/0 76.71,37.89
step
Run up the ramp |goto 59.12,44.66 < 20 |only if walking
Enter the tunnel |goto 61.20,34.86 < 20 |walk
talk Elder Mistwalker##15587
|tip Down in the pit.
accept Mistwalker the Elder##8685 |goto 62.56,31.08
step
talk Elder Bladesing##15599
accept Bladesing the Elder##8719 |goto Silithus/0 48.97,37.65
step
talk Elder Primestone##15570
accept Primestone the Elder##8654 |goto 23.09,11.84
step
talk Elder Thunderhorn##15583
accept Thunderhorn the Elder##8681 |goto Un'Goro Crater/0 50.37,76.16
step
talk Elder Wildmane##15578
|tip She is located inside the Zul'Farak dungeon near the pool that spawns Gaz'Rilla.
|tip You may need to run this dungeon with a group.
accept Wildmane the Elder##8676 |or
|tip
Click Here to Skip This Elder |confirm |or
step
talk Elder Ragetotem##15573
accept Ragetotem the Elder##8671 |goto Tanaris/0 36.30,80.53
step
talk Elder Dreamseer##15586
accept Dreamseer the Elder##8684 |goto 51.46,27.85
step
talk Elder Morningdew##15604
accept Morningdew the Elder##8724 |goto Thousand Needles/0 79.19,77.05
step
talk Elder Skyseer##15584
accept Skyseer the Elder##8682 |goto 45.42,50.08
step
talk Elder Darkhorn##15579
accept Darkhorn the Elder##8677 |goto Orgrimmar/0 41.14,33.85
step
talk Elder Runetotem##15572
accept Runetotem the Elder##8670 |goto Durotar/0 53.23,43.65
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
talk Elder Bellowrage##15563
accept Bellowrage the Elder##8647 |goto Blasted Lands/0 57.91,54.87
step
talk Elder Pamuya##30371
accept Pamuya the Elder##13029 |goto Borean Tundra/0 42.94,49.57
step
talk Elder Sardis##30348
accept Sardis the Elder##13012 |goto 59.09,65.63
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
accept Igasho the Elder##13021 |goto 55.38,64.73
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
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-2
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
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-6
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
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-11
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
leechsteps "Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path" 1-63
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
talk Elder Graveborn##15568
|tip If you cannot see this elder, talk to Zidormi just outside the gates of Undercity. |only if completedq(13242)
accept Graveborn the Elder##8652 |goto Tirisfal Glades/0 61.87,53.85
step
talk Elder Obsidian##15561
accept Obsidian the Elder##8645 |goto Silverpine Forest/0 44.98,41.15
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
|tip Go to the right when you enter the building.
accept Moonstrike the Elder##8714 |goto 50.88,36.52
step
Jump down here |goto 50.86,36.51 < 7 |walk
Jump Off the Wall |goto Western Plaguelands/0 68.76,73.60 < 500 |c |noway |q 8722 |future
step
talk Elder Highpeak
accept Highpeak the Elder##8643 |goto The Hinterlands/0 49.99,48.04
step
talk Elder Silvervein##15558
accept Silvervein the Elder##8642 |goto Loch Modan/0 33.32,46.55
step
talk Elder Bronzebeard##15871
accept Bronzebeard the Elder##8866 |goto Ironforge/0 29.19,17.03
step
talk Elder Goldwell##15569
accept Goldwell the Elder##8653 |goto Dun Morogh/0 46.82,51.61
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
accept Stormbrow the Elder##8649 |goto Elwynn Forest/0 39.79,63.66
step
talk Elder Skychaser##15577
|tip On top of the tower.
accept Skychaser the Elder##8675 |goto Westfall/0 56.64,47.09
step
talk Elder Bellowrage##15563
accept Bellowrage the Elder##8647 |goto Blasted Lands/0 57.91,54.87
step
talk Elder Starglade##15596
accept Starglade the Elder##8716 |goto Stranglethorn Vale/0 53.11,18.46
step
talk Elder Winterhoof##15576
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
accept Nightwind the Elder##8723 |goto Felwood/0 38.35,52.85
step
talk Elder Starweave##15601
accept Starweave the Elder##8721 |goto Darkshore/0 36.81,46.75
step
talk Elder Bladeleaf##15595
accept Bladeleaf the Elder##8715 |goto Teldrassil/0 57.34,60.80
step
talk Elder Riversong##15605
accept Riversong the Elder##8725 |goto Ashenvale/0 35.54,48.91
step
talk Elder Moonwarden##15597
accept Moonwarden the Elder##8717 |goto The Barrens/0 51.40,30.68
step
talk Elder Windtotem##15582
accept Windtotem the Elder##8680 |goto The Barrens/0 62.65,36.74
step
talk Elder Runetotem##15572
accept Runetotem the Elder##8670 |goto Durotar/0 53.23,43.61
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
accept Mistwalker the Elder##8685 |goto 62.56,31.08
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
talk Elder Pamuya##30371
accept Pamuya the Elder##13029 |goto Borean Tundra/0 42.94,49.57
step
talk Elder Sardis##30348
accept Sardis the Elder##13012 |goto 59.09,65.63
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
accept Igasho the Elder##13021 |goto 55.38,64.73
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
|tip If you cannot see this elder, talk to Zidormi just outside the gates of Undercity. |only if completedq(13242)
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
accept Elune's Blessing##8868 |goto Moonglade/0 53.65,35.26
step
kill Omen##15467
|tip You may need help with this.
|tip Step into the pillar of light that spawns after.
|tip If the pillar is already present, quickly jump in it before it disappears.
Receive Elune's Blessing |q 8868/1 |goto 53.65,35.26
step
talk Valadar Starsong##15864
turnin Elune's Blessing##8868 |goto 53.65,35.26
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
talk Lunar Festival Vendor##47897
buy 10 Festival Firecracker##21747 |goto Orgrimmar/0 41.29,32.37 |achieve 1552 |future
step
use the Festival Firecracker##21747
|tip Spam it quickly until you use all 10.
|tip You will need to target the ground after using it.
|achieve 1552 |goto 41.53,32.96
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Achievements\\The Rocket's Red Glare",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Lunar Festival') end,
achieveid={1281},
patch='30401',
description="Shoot off 10 Red Rocket Clusters in 25 seconds or less.",
},[[
step
talk Lunar Festival Vendor##47897
buy 10 Red Rocket Cluster##21576 |goto Orgrimmar/0 41.29,32.37 |achieve 1281 |future
step
use the Red Rocket Cluster##21576
|tip Spam it quickly until you use all 10.
|achieve 1281 |goto 41.53,32.96
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Midsummer Fire Festival Bonfires")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Burning Hot Pole Dance")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Midsummer Fire Festival\\Torch Juggler")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Quests\\Pilgrim's Bounty Daily Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\FOOD FIGHT!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\Now We're Cookin'")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Paunch")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Peril")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\Pilgrim's Progress")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\Sharing is Caring")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\Terokkar Turkey Time")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\Turkey Lurkey")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Pilgrim's Bounty\\Achievements\\The Turkinator")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Noblegarden Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Noblegarden Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Blushing Bride")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Chocoholic")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Chocolate Lover")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Desert Rose")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Dressed for the Occasion")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Hard Boiled")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\I Found One!")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Noble Garden")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Shake Your Bunny-Maker")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Spring Fling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Events Guides\\Noblegarden\\Achievements\\Sunday's Finest")
ZGV.DevStart()
