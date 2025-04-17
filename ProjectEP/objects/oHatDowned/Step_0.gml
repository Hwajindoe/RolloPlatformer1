/*
if (place_meeting(x,y,tilemap)){
	speed-=2;
}
*/
// We now repeat all of the previous steps to check for collisions on the Y axis.
// Everything is the same, but vel_x is replaced by vel_y, and the check_collision function takes a Y value (its second argument).
var _move_count = abs(vel_y);
var _move_once = sign(vel_y);

// This runs a loop, which runs 'move_count' times. All actions attached to this are repeated that many amount of times.
repeat (_move_count)
{
	// This calls the check_collision function to check for collisions on the Y axis, if moved by the move_once value.
	// The result of the function, either true or false, is stored in the 'collision_found' variable, which is temporary.
	var _collision_found = check_collision(0, _move_once);

	// This checks if collision_found is false, meaning a collision was not found, and the player is free to move once on the Y axis.
	if (!_collision_found)
	{
		// In that case, move_once is added to the Y coordinate of the character.
		y += _move_once;
	}
	// This 'else' block runs if a collision was found.
	else
	{
		// In that case, we reset the Y velocity to 0, so the character stops its movement on that axis.
		vel_y = 0;
	
		// Then we break out of the Repeat loop, as no more collision checks are required.
		break;
	}
	
}
// This checks if 'grounded' is true. This means the character is standing on ground.
/*if (!grounded)
{
	// This stores the character's current position in the 'grounded_x' and 'grounded_y' variables.
	// Since these variables are only changed when the character is on ground, they only store the position
	// for when the character was last on ground. These values can then be used to restore the player's position after
	// it falls off a platform into a pit.
	
	vel_y=2;
}



/*
// Step Event of your object (e.g., obj_player)

// Assuming you have a tilemap layer called "TileLayer"
var tilemap_id = layer_tilemap_get_id("CaveSpikes");

// Apply gravity
vspeed += gravity;

// Move vertically
y += vspeed;

// Check for ground collision (using tilemap)
var tile_x = floor(x / 128); // Get tile x coordinate
var tile_y = floor((y + bbox_bottom) / 128); // Get tile y coordinate, using the bottom of the bounding box

// Get the tile ID!
var tile_id = tilemap_get_tile_id(tilemap_id, tile_x, tile_y); // Add this line

// Check if the tile is a solid tile (replace 1, 2, 3 with your ground tile IDs)
if (tile_id == 0 || tile_id == 1 || tile_id == 2) {
    // Move the object to the ground's surface.
    while (tilemap_get_tile_id(tilemap_id, floor(x/128), floor((y+bbox_bottom)/128)) == 1 || tilemap_get_tile_id(tilemap_id, floor(x/128), floor((y+bbox_bottom)/128)) == 2 || tilemap_get_tile_id(tilemap_id, floor(x/128), floor((y+bbox_bottom)/128)) == 3) {
        y -= 1;
    }

    // Stop vertical movement and gravity
    vspeed = 0;
    gravity = 0;
} else {
    // Re-enable gravity if not on the ground
    gravity = 0.1;
}