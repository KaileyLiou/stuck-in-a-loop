var draw_x = x;
var draw_y = y;

if (shake_timer > 0) {
    draw_x += random_range(-shake_strength, shake_strength);
    draw_y += random_range(-shake_strength, shake_strength);
}

draw_sprite(sprite_index, image_index, draw_x, draw_y);
