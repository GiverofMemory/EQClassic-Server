sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Greetings and well met $name. I am Edwardian Holyblade. noble paladin of Marr. I have devoted my life and my blade to the glory of Mithaniel Marr. I am also in charge of training all new paladins of Marr to make sure that they have the best training necessary. If you are a paladin of Marr I may have some [training] for you.");
}
if($text=~/what training/i){
quest::say("I have developed a training program for all young and upcoming Paladins of Marr. My tests will enable you to learn some basic hunting. navigating and armor crafting skills. All of these abilities will be very important on your path to enlightenment. If you are [ready to begin my tests] I will explain to you how the tests will work.");
}
if($text=~/i am ready to begin my tests/i){
quest::say("Very well $name. I look forward to seeing you progress through your training. Here is your special mail assembly kit. In this kit you will combine a number of components that you will collect from all areas of Freeport. North Ro and the Commonlands. The components that you will gather and combine in this kit will magical create a specific armor material piece. Each of these materials will be combined in a forge with the appropriate mold that I will provide you with. I will explain to you how the [recipes] work when you are ready.");
}
if($text=~/what recipes/i){
quest::say("Once you have crafted your material from the specific recipes I give you you will need the appropriate mold as I mentioned before. I can present you with the recipe and mold for Truthbringers [Helms]. [Bracers]. [Armguards]. [Boots]. [Greaves]. [Gauntlets] and [Breastplates]. When you are ready to being collecting the components for a material recipe simply tell me what piece you [want] to craft.");
}
if($text=~/i want to craft helms/i){
quest::say("I would strongly suggest a good helm as you can see by my patch over my eye I was not so careful in my younger days. To create your helm material you will need to combine 2 Bricks of Crude Iron Ore. 1 Young Kodiak Paw. 1 Ruined Cat Pelt and 1 Hops in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Truthbringers Helm.");
quest::summonitem("22610");
}
if($text=~/i want to craft gauntlets/i){
quest::say("Sooner or later you will take a tough blow to your hands. being struck there without the right gauntlets could mean a very serious and painful injury. To create your gauntlet material you will need to combine 3 Bricks of Crude Iron Ore. 1 Giant Spider Egg Sack. 1 Ruined Bear Pelt. and 1 Armadillo Tail in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Truthbringers Gauntlets.");
quest::summonitem("22615");
}
if($text=~/i want to craft greaves/i){
quest::say("I can't begin to tell you how important pants are $name. Any injuries to them could disable you from escaping should you need to and would surely perish due to this. To create your greaves material you will need to combine 4 Bricks of Crude Iron Ore. 1 Coyote Pelt . 1 Shadow Wolf Tibia. 1 Bottle and 1 Raw Bamboo in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Truthbringers Greaves.");
quest::summonitem("22614");
}
if($text=~/i want to craft armguards/i){
quest::say("A good set of armguards will keep your arms safe from any attacks you may face while in training. It is a common tactic to go for ones arms because with them disabled it becomes impossible to defend yourself. To create your armguards material you will need to combine 2 Bricks of Crude Iron Ore. 2 Black Bear Paws. and 1 Short Beer in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Truthbringers Armguards.");
quest::summonitem("22613");
}
if($text=~/i want to craft bracers/i){
quest::say("I have seen many paladins go without the proper wrist protection and the result was never good. To create your bracer material you will need to combine 1 Brick of Crude Iron Ore. 1 Orc Prayer Beads and 1 Red Wine in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Truthbringers Bracer.");
quest::summonitem("22611");
}
if($text=~/i want to craft breastplates/i){
quest::say("Any paladins most important armor piece is always their breastplate. Should you succeed in crafting it your Truthbringer Breastplate will guard your upper body from any serious attacks that would otherwise be quite devasting. To create your breastplate material you will need to combine 5 Bricks of Crude Iron Ore. 1 Young Plains Cat Scalp. 1 Young Puma Skin. 1 Water Flask 1 Deathfist Orc Skull and 1 Giant Fire Beetle Carapace in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Truthbringers Breastplate. After you have completed your breastplate come back to see me for I have one final test for you.");
quest::summonitem("22616");
}
if($text=~/what final test/i){
quest::say("Well for quite sometime the Freeport Militia has become more and more corrupt. They have been known to do any dastardly deed you can imagine which includes harming and sometimes killing followers of Marr. There is a group of Militia Soldiers in the commonlands that have been recently harassing a good friend of mine. His name is Pardor and he is a shopkeeper in the commonlands. As if it wasn?t dangerous enough in the commonlands he know has these Militia soldiers demanding he pay them a tax that does not exist.  Will you travel to the commonlands to kill these on these militia soldiers? I fear for my friend's life."); }
}

sub EVENT_ITEM {
 #do all other handins first, then let it do disciplines
 #if($itemcount{} == 1) {
 #} else {
	if($class ne 'Paladin') {
		quest::say("You are not a member of my guild. I will not train you!");
		quest::summonitem($item1) if($item1);
		quest::summonitem($item2) if($item2);
		quest::summonitem($item3) if($item3);
		quest::summonitem($item4) if($item4);
		return;
	}
	#assume it is a discipline tome...
	quest::traindisc($item1) if(quest::isdisctome($item1));
	quest::traindisc($item2) if(quest::isdisctome($item2));
	quest::traindisc($item3) if(quest::isdisctome($item3));
	quest::traindisc($item4) if(quest::isdisctome($item4));
 #}
}
#END of FILE Zone:freportn  ID:8004 -- Edwardian_Holyblade 
