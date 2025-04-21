// This changes the sprite back to the idle one, as the knockback would have been using the hurt sprite.
throwingHat = false;
image_index = 0;
x -= x_offset_stored;
y -= y_offset_stored;
if (canHat) { //check canHat
    sprite_index = spr_player_idle; // Revert to the idle sprite *with* hat
} else {
    sprite_index = spr_player_nohatidle; // Revert to the idle sprite *without* hat
}