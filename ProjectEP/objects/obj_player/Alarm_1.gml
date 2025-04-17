// In your object's Alarm 1 event: (Projectile creation)
var spawn_offset_x = 50;
if (image_xscale == -1) {
    spawn_offset_x = -spawn_offset_x;
}

var spawn_offset_y = 0;

instance_create_depth(x + spawn_offset_x, y - spawn_offset_y , -1, oHat);