if position_meeting(mouse_x,mouse_y,id) {
	image_xscale = lerp(image_xscale,normXscale+(normXscale/10),.3);
	image_yscale = lerp(image_yscale,normYscale+(normYscale/10),.3);
	wavedraw = true;
	if keyboard_check_pressed(ord("D")) {
		show_debug_message(id);
	}
	if mouse_check_button_pressed(mb_left) {
		audio_play_sound(aClick,1,false);
		if text = "Timer" {
			layer_set_visible(layClock,false);
			instance_deactivate_layer(layClock);
			layer_set_visible(layTimer,true);
			instance_activate_layer(layTimer);
		}
		if text = "Clocks" {
			layer_set_visible(layTimer,false);
			instance_deactivate_layer(layTimer);
			layer_set_visible(layClock,true);
			instance_activate_layer(layClock);
		}
	}
}
else {
	image_xscale = lerp(image_xscale,normXscale,.3);
	image_yscale = lerp(image_yscale,normYscale,.3);
	wavedraw = false;
}

if keyboard_check(ord("J")) {
	global.timerTime = 30;
	global.timerStartTime = global.timerTime;
}