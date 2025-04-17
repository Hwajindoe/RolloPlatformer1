// In the event where you throw the hat:
if (canHat == true) {
    var previous_sprite_width = sprite_get_width(sprite_index);
    var previous_sprite_height = sprite_get_height(sprite_index);

    sprite_index = spr_player_hat;
    image_index = 0;

    var current_sprite_width = sprite_get_width(sprite_index);
    var current_sprite_height = sprite_get_height(sprite_index);

    var x_offset = (previous_sprite_width - current_sprite_width) / 2;
    var y_offset = (previous_sprite_height - current_sprite_height) / 2;

    x += x_offset;
    y += y_offset;


	x_offset_stored = x_offset;
	y_offset_stored = y_offset;

    canHat = false; // Set canHat to false *before* setting the alarm
	throwingHat = true;
    alarm[0] = game_get_speed(gamespeed_fps) * 0.45; // General delay, same as before
    alarm[1] = game_get_speed(gamespeed_fps) * 0.4; // New alarm for projectile spawn (adjust 0.2)

   
}