hsp = keyboard_check(vk_right) * walkspd - keyboard_check(vk_left) * walkspd;

vsp += grv;

if (keyboard_check_pressed(vk_space)) {
    if (place_meeting(x, y + 1, obj_block)) {
        vsp = jumpspd;
    }
}

if (place_meeting(x + hsp, y, obj_block)) {
    while (!place_meeting(x + sign(hsp), y, obj_block)) {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

if (place_meeting(x, y + vsp, obj_block)) {
    while (!place_meeting(x, y + sign(vsp), obj_block)) {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

if (shake_timer > 0) {
    shake_timer--;
}

if (y > room_height + 50) {
    room_restart();
}

if (place_meeting(x, y, obj_spike)) {
    room_restart();
}

if (place_meeting(x, y, obj_exit) && obj_controller.loop_count >= 5) {
    show_message("You Win!");
    room_restart();
}