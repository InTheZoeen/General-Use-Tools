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
				
				inst_zero.visible = false;
				inst_one.visible = false;
				inst_two.visible = false;
				inst_three.visible = false;
				inst_four.visible = false;
				inst_five.visible = false;
				inst_six.visible = false;
				inst_seven.visible = false;
				inst_eight.visible = false;
				inst_nine.visible = false;
				inst_delete.visible = false;
				
				global.timerStartTime += global.timerSetSeconds;
				global.timerSetSeconds = 0;
				global.timerStartTime += 60 * global.timerSetMinutes;
				global.timerSetMinutes = 0;
				global.timerStartTime += 3600 * global.timerSetHours;
				global.timerSetHours = 0;
				global.timerTime = global.timerStartTime;
				text = "End";
			}
			else {
				global.timerTime = 0;
				global.timerStartTime = 0;
				inst_7C15F958.visible = true;
				inst_7BA05103.visible = true;
				inst_57AEFF45.visible = true;
				
				inst_zero.visible = true;
				inst_one.visible = true;
				inst_two.visible = true;
				inst_three.visible = true;
				inst_four.visible = true;
				inst_five.visible = true;
				inst_six.visible = true;
				inst_seven.visible = true;
				inst_eight.visible = true;
				inst_nine.visible = true;
				inst_delete.visible = true;
				
				inst_1661655C.text = "Pause";
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
		if id = inst_7C15F958.id && inst_7C15F958.visible = true {
			global.timerInputSelect = "hours";
		}
		if id = inst_7BA05103.id && inst_7BA05103.visible = true {
			global.timerInputSelect = "minutes";
		}
		if id = inst_57AEFF45.id && inst_57AEFF45.visible = true {
			global.timerInputSelect = "seconds";
		}
		if id = inst_11A2C002.id {
			room_goto(rTools);
		}
	}
}
else {
	image_xscale = lerp(image_xscale,normXscale,.3);
	image_yscale = lerp(image_yscale,normYscale,.3);
	wavedraw = false;
}
if global.timerTime > 0 {
	inst_F7C0ABC.visible = true;
}
else {
	if global.timerSetHours > 0 || global.timerSetMinutes > 0 || global.timerSetSeconds > 0 {
		inst_F7C0ABC.visible = true;
	}
	else {
		inst_F7C0ABC.visible = false;
	}
}
