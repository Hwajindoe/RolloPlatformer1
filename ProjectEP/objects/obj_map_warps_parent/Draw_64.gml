if (glow_active) {
    draw_sprite_ext(spr_map_warps, 0, x, y, image_xscale, image_yscale, 0, make_color_hsv(60, 55, 205), 1);
}
else{
    glow_active = false;
	draw_self();
}
