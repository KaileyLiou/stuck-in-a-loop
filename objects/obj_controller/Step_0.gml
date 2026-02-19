var loop_point = room_width - 40;
var rise_amount = 16;

if (obj_player.x >= loop_point && obj_player.x < loop_point + 5) {
    
    loop_count += 1;

	with (obj_block) {
	    y -= rise_amount;
	}

	with (obj_spike) {
	    y -= rise_amount;
	}

    obj_player.y -= rise_amount;

    obj_player.x = 40;
	
	obj_player.shake_timer = 15; 
	obj_player.shake_strength = 4; 

}
