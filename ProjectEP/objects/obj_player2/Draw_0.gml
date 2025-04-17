// In the NPC object's Draw Event:
if (obj_player.can_talk_to_npc) {
    draw_set_font(fnt_dialogue); // Use a suitable font
    draw_set_color(c_white);     // Set text color
    draw_text(x, y - 20, message); // Adjust position as needed.
}

draw_self();