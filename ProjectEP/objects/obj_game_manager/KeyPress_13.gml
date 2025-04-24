// This checks if the game is NOT paused, in which case we want to pause it.
if (!paused && !abilities_menu)
{
	// Deactivate all instances except the current instance (which is the game manager).
	// This pauses all other instances, so they don't do anything, and are not even drawn.
	instance_deactivate_all(true);

	// Activate the gamepad input object, so the player can resume the game with their gamepad
	instance_activate_object(obj_gamepad_input);

	// Create the pause menu Sequence and store its ID in a variable so it can be destroyed later
	abilities_menu_sequence = layer_sequence_create("Instances", 0, 0, seq_abilities_menu);

	// Set 'paused' to true
	abilities_menu = true;
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
	layer_sequence_destroy(abilities_menu_sequence);

	// Set 'paused' to false, as the game is now unpaused
	abilities_menu = false;
}

/*


// This checks if the game is NOT paused, in which case we want to pause it.
if (!abilities_buttons)
{
	// Deactivate all instances except the current instance (which is the game manager).
	// This pauses all other instances, so they don't do anything, and are not even drawn.
	instance_deactivate_all(true);

	// Activate the gamepad input object, so the player can resume the game with their gamepad
	instance_activate_object(obj_gamepad_input);

	// Create the pause menu Sequence and store its ID in a variable so it can be destroyed later
	abilities_buttons_sequence = layer_sequence_create("Instances", room_width/2, room_height/2, seq_abilities_buttons);

	// Set 'paused' to true
	abilities_buttons = true;
}
// Otherwise, if the game is already paused,
else
{
	// Activate all instances, to resume their functionalities
	instance_activate_all();

	// Destroy the pause menu Sequence, so the pause menu disappears
	layer_sequence_destroy(abilities_buttons_sequence);

	// Set 'paused' to false, as the game is now unpaused
	abilities_buttons = false;
}