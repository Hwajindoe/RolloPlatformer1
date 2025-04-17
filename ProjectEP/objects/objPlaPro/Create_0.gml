 // Check if the player is facing left or right
    if (obj_player.image_xscale = 1 ) { 
        // Player is facing right
        direction= 315;
		image_xscale = 1;
}
    if (obj_player.image_xscale = -1 ) { 
        // Player is facing right
        direction= 225;
		image_xscale = -1;
		
	
}

// Choose a random fireball sound and play it
var _sound = choose(fireball1, fireball2, fireball3);

audio_play_sound(_sound, 0, 0);
