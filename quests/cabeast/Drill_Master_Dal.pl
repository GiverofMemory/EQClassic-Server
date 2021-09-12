
sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Yes. yes!!  What do I have here?!!  Another [new recruit]?  If so. then speak up!  If not. then leave and do not waste my time nor risk your life.  I also seek a [legion soldier] if you be one.");
}
if($text=~/i am a new recruit/i){
quest::say("Hiss..  Serve the Legion of Cabilis further and you may get what you seek.");
quest::say("Yes.  You have the look of the Partisan.  I trust you have begun your blacksmith training.  If not. then do so.  Also. you should read all the books available to you in Fortress Talishan.  We are not dimwitted broodlings here.  You shall need the knowledge soon. That. or a coffin.  Ha!!  Here is your task. are you [ready for your task]?");
}
if($text=~/i am a legion soldier/i){
quest::say("Hiss..  Serve the Legion of Cabilis further and you may get what you seek.");
quest::say("Good news to my ears!!  I seek to prove to the War Baron that the infamous forsaken band of thieves who call themselves Marrtail's Marauders are operating within earshot of our city.  You must bring me proof that you encountered no fewer than four of these thieves.  Do so and I shall offer you an armor item unavailable to most.");
}
if($text=~/I am ready for my task/i){
quest::say("Yes. yes!!  It does not matter.  You must be ready.  I will hand you the Partisan pack.  Into it you shall combine one giant blood sac of the giant leech;  scout beads from a goblin scout; one sabertooth kitten canine and finally. three bone shards from decaying skeletons.  Hopefully. you will survive your attempt to obtain these items.  Return the full Partisan pack and you shall be rewarded with a curscale shield.");
 }
}


sub EVENT_ITEM {
 #do all other handins first, then let it do disciplines
 #if($itemcount{} == 1) {
 #} else {
	if($class ne 'Warrior') {
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

#END of FILE Zone:cabeast  ID:1112 -- Drill_Master_Dal 
