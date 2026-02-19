var loop_point = room_width - 40;

if (obj_player.x >= loop_point) {
    loop_count += 1;

    obj_player.x = 40;
}