if position_meeting(mouse_x,mouse_y,id) {
    image_xscale = lerp(image_xscale,normXscale+(normXscale/10),.3);
    image_yscale = lerp(image_yscale,normYscale+(normYscale/10),.3);
    wavedraw = true;
	if mouse_check_button_pressed(mb_left) {
		audio_play_sound(aClick,1,false);
		#region "number input"
		if global.timerTime = 0 {
			if text = "DELETE" {
				if global.timerInputSelect = "hours" {
					global.timerSetHours = 0;
				}
				if global.timerInputSelect = "minutes" {
					global.timerSetMinutes = 0;
				}
				if global.timerInputSelect = "seconds" {
					global.timerSetSeconds = 0;
				}
			}
			else {
				if text != "0" {
					if global.timerInputSelect = "seconds" {
						if global.timerSetSeconds = 0 {
							global.timerSetSeconds += real(text);
						}
						else {
							global.timerSetSeconds *= 10;
							global.timerSetSeconds += real(text);
						}
					}
					if global.timerInputSelect = "minutes" {
						if global.timerSetMinutes = 0 {
							global.timerSetMinutes += real(text);
						}
						else {
							global.timerSetMinutes *= 10;
							global.timerSetMinutes += real(text);
						}
					}
					if global.timerInputSelect = "hours" {
						if global.timerSetHours = 0 {
							global.timerSetHours += real(text);
						}
						else {
							global.timerSetHours *= 10;
							global.timerSetHours += real(text);
						}
					}
				}
				else {
					if (global.timerInputSelect = "seconds") global.timerSetSeconds *= 10;
					if (global.timerInputSelect = "minutes") global.timerSetMinutes *= 10;
					if (global.timerInputSelect = "hours") global.timerSetHours *= 10;
				}
			global.timerSetSeconds = min(global.timerSetSeconds, 59);
			global.timerSetMinutes = min(global.timerSetMinutes, 59);
			global.timerSetHours = min(global.timerSetHours, 23);
			}
		#endregion
		}
	}
}
else {
    image_xscale = lerp(image_xscale,normXscale,.3);
    image_yscale = lerp(image_yscale,normYscale,.3);
    wavedraw = false;
}

if global.timerTime = 0 && inst_zero.visible = false {
	if global.audToggle = false {
		global.timerTime = 0;
		global.timerSound = false;
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
				
		inst_1661655C.visible = false;
		inst_1661655C.text = "Pause";
		inst_F7C0ABC.text = "Start";
	}
	else {
		if global.timerSound = false {
			audio_play_sound(aAlarm,5,true);
			inst_1661655C.visible = false;
			global.timerSound = true;
		}
	}
}
if global.timerSound = true && global.audToggle = true {
	inst_1661655C.visible = false;
				
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
	
	inst_F7C0ABC.text = "End";
}