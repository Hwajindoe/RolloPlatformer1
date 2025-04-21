event_inherited();

// Set the position of the default audio listener to the player's position, for positional audio
// with audio emitters (such as in obj_end_gate)
audio_listener_set_position(0, x, y, 0);
if (grounded){
	projectilesreset = true;
	
}
if (can_talk_to_npc && keyboard_check_pressed(vk_space)) { // Use the appropriate key
    talking_to_npc = true;
  
    // 1. Display the NPC's dialogue.
	// 2. Prevent player movement.
    // 3. Handle the conversation flow.
}