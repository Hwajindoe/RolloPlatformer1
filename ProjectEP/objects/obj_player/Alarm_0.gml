// This event runs some time after the player is hit by an enemy, so the player's knockback can be stopped.
// This sets the 'in_knockback' variable to false, so the player knows it's not in knockback anymore, and it can move again.
in_knockback = false;

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