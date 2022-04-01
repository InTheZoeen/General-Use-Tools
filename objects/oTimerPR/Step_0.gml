if position_meeting(mouse_x,mouse_y,id) {
	image_xscale = lerp(image_xscale,normXscale+(normXscale/10),.3);
	image_yscale = lerp(image_yscale,normYscale+(normYscale/10),.3);
	wavedraw = true;
	if keyboard_check_pressed(ord("D")) {
		show_debug_message(id);
	}
	if mouse_check_button_pressed(mb_left) {
		audio_play_sound(aClick,1,false);
		if id = inst_F7C0ABC.id && inst_F7C0ABC.visible = true {
			if text = "Start" {
				global.timerTime = global.timerStartTime;
				global.timerPause = false;
				inst_1661655C.visible = true;
				
				inst_7C15F958.visible = false;
				inst_7BA05103.visible = false;
				inst_57AEFF45.visible = false;
				text = "End";
			}
			else {
				global.timerTime = 0;
				inst_7C15F958.visible = true;
				inst_7BA05103.visible = true;
				inst_57AEFF45.visible = true;
				
				inst_1661655C.visible = false;
				text = "Start";
			}
		}
		if id = inst_1661655C.id && inst_1661655C.visible = true {
			if global.timerPause = true {
				text = "Pause";
				global.timerPause = false;
			}
			else {
				text = "Resume";
				global.timerPause = true;
			}
		}
	}
}
else {
	image_xscale = lerp(image_xscale,normXscale,.3);
	image_yscale = lerp(image_yscale,normYscale,.3);
	wavedraw = false;
}