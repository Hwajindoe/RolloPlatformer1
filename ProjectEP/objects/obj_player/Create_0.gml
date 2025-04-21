// This runs the Create event of the parent, ensuring the player gets all variables from the character parent.
event_inherited();








// This variable stores the number of coins the player has collected.
coins = 0;// This variable stores the number of coins the player has collected.
in_knockback = false;// This variable tells whether the player is currently in knockback (from being hit by an enemy). It will be true if it is, and false if not.
defeated_object = obj_player_defeated;// This is the object that replaces the player once it is defeated.
projectiles = false; 
projectilesreset= false;
canHat = true;// says that the player has the hat on and can throw it
zoroHat = false; // doesnt have the zorohat on
hatPut = false;// is currently not in the hatput animation
can_talk_to_npc = false; // cant talk to an npc till u collide w them
talking_to_npc = false;// arent talking to an npc 
canPunch = true; //can punch unless another animation is playing
throwingHat = false;
pickingHat = false;






//this area handles what sprites show it specific times
if (canHat) { //check canHat
    sprite_index = spr_player_idle; // Revert to the idle sprite *with* hat
	
	}
else {
    sprite_index = spr_player_nohatidle; // Revert to the idle sprite *without* hat
}
if (zoroHat){
    sprite_index = spr_zoro_idle; // Revert to the idle sprite *with* hat
				}

