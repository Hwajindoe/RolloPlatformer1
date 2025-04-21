// This checks if the game is NOT paused, in which case we want to pause it.
if (!mapopen)
{
	// Deactivate all instances except the current instance (which is the game manager).
	// This pauses all other instances, so they don't do anything, and are not even drawn.
	instance_deactivate_all(true);

	// Activate the gamepad input object, so the player can resume the game with their gamepad
	//instance_activate_object(obj_gamepad_input);
	

	// Create the pause menu Sequence and store its ID in a variable so it can be destroyed later
	layer_sequence_create("Instances", 0, 0, seq_map_menu);
//	instance_create_depth(200, 776, 10,obj_map);
//	instance_create_depth(obj_player.x,obj_player.y,1,obj_map_cursor);
    instance_activate_object(obj_map_cursor);
	instance_activate_object(obj_map_warps_parent);
	// Set 'paused' to true
	mapopen = true;
	
}

else if (paused)
{
	return
}


// Otherwise, if the game is already paused,
else
{

	// Activate all instances, to resume their functionalities
	instance_activate_all();
	// Destroy the pause menu Sequence, so the pause menu disappears
	instance_destroy(obj_map);
    instance_destroy(obj_map_cursor);
	instance_destroy(obj_map_warps_parent);
	// Set 'paused' to false, as the game is now unpaused
	mapopen = false;
}