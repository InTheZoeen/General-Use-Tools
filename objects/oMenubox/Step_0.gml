if room = rHub {
	if id = inst_7545D153.id {
		text = "exit";
	}
	else
	if id = inst_29AEC565.id {
		text = "options";
	}
	else {
		text = "tools";
	}
}
if room = rTools {
	if id = inst_74B55D2D.id {
		text = "Calculator";
	}
	if id = inst_3C43427A.id {
		text = "Back";
	}
	if id = inst_250A204E.id {
		text = "Unit Converter";
	}
	if id = inst_7B2D7392.id {
		text = "Timer";
	}
}

if room = rOptions {
	if id = inst_29AEC565_1.id {
		text = "Back";
	}
}

if position_meeting(mouse_x,mouse_y,id) {
	image_xscale = lerp(image_xscale,normXscale+(normXscale/10),.3);
	image_yscale = lerp(image_yscale,normYscale+(normYscale/10),.3);
	wavedraw = true;
	
	if keyboard_check_pressed(ord("D")) {
		show_debug_message(id);
	}
	if mouse_check_button_pressed(mb_left) {
		if room = rTools {
			if id != inst_3C43427A.id {
				audio_play_sound(aOpen,1,false);
			}
			else {
				audio_play_sound(aClose,1,false);
			}
		}
		else {
			audio_play_sound(aOpen,1,false);
		}
		if room = rHub {
			if id = inst_7545D153.id {
				game_end();
			}
			if id = inst_23E4EE36.id {
				//global.showtools = true;
				room_goto(rTools);
			}
			if id = inst_29AEC565.id {
				room_goto(rOptions);
			}
		}
		if room = rTools {
			if id = inst_3C43427A.id {
				room_goto(rHub);
			}
			if id = inst_74B55D2D.id {
				room_goto(rCalculator);
			}
			if id = inst_250A204E.id {
				room_goto(rUnitConvert);
			}
			if id = inst_7B2D7392.id {
				room_goto(rTimer);
			}
		}
		if room = rOptions {
			if id = inst_29AEC565_1.id {
				room_goto(rHub);
			}
		}
	}
}
else {
	image_xscale = lerp(image_xscale,normXscale,.3);
	image_yscale = lerp(image_yscale,normYscale,.3);
	wavedraw = false;
}