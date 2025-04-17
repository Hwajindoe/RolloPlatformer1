// Make sure to use place_meeting
  if(!canHat)
  {
   sprite_index = spr_player_hatput1; // Play the hat-putting-on animation
    image_index = 0;             // Start at the first frame
    canHat = true;           // Set canHat back to true
    zoroHat = false;
	hatPut = true
	pickingHat = true;
    instance_destroy(other);    // Destroy the downed hat instance (other refers to the instance we collided with)
     alarm[3] = game_get_speed(gamespeed_fps) * 0.4;  //set alarm 3 to the duration of the hatputon animation.
	//sprite_index = spr_player_idle
  }

