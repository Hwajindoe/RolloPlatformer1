if (!grounded && projectiles && projectilesreset) {
    // Create the projectile
    instance_create_depth(x, y, depth-1, objPlaPro);
	//gives the player a jumpo boost when the fireball is created
	if (obj_player.image_xscale = 1){
	vel_x += -8
	vel_y += -8
	}
	if (obj_player.image_xscale = -1){
	vel_x += 8
	vel_y += -8
	}
}
 

   