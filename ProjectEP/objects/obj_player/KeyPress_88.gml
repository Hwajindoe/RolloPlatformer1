// In the event where you throw the hat:
if (canPunch == true && !throwingHat) {
    var previous_sprite_width = sprite_get_width(sprite_index);
    var previous_sprite_height = sprite_get_height(sprite_index);

    if (canHat == true) {
	sprite_index = spr_player_idle;
    image_index = 0;
	}
	else {
	sprite_index = spr_player_nohatidle;
    image_index = 0;
	}
    var current_sprite_width = sprite_get_width(sprite_index);
    var current_sprite_height = sprite_get_height(sprite_index);

    var x_offset = (previous_sprite_width - current_sprite_width) / 2;
    var y_offset = (previous_sprite_height - current_sprite_height) / 2;

    x += x_offset;
    y += y_offset;


	x_offset_stored = x_offset;
	y_offset_stored = y_offset;

	// In your object's Alarm 1 event: (Projectile creation)
    var spawn_offset_x = -30;
    if (image_xscale == -1) {
    spawn_offset_x = 30;
    }

var spawn_offset_y = -15;

instance_create_depth(x + spawn_offset_x, y - spawn_offset_y , -1, obj_player_fist1);
	
    canPunch = false; // Set canHat to false *before* setting the alarm
	alarm[3] = game_get_speed(gamespeed_fps) * 0.3;  //set alarm 3 to the duration of the hatputon animation.
	//sprite_index = spr_player_idle


}