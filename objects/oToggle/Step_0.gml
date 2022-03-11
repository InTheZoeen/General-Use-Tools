if transition = true {
	if transitionTo = "on" {
		if image_index = 6 {
			image_speed = 0;
			audio_master_gain(1);
			global.audToggle = true;
			transition = false;
		}
	}
	else {
		if image_index = 1 {
			image_speed = 0;
			image_index = 0;
			audio_master_gain(0);
			global.audToggle = false;
			transition = false;
		}
	}
}

if position_meeting(mouse_x,mouse_y,id) {
	image_xscale = lerp(image_xscale,normXscale + (normXscale/10),.3);
	image_yscale = lerp(image_yscale,normYscale + (normYscale/10),.3);
	if mouse_check_button_pressed(mb_left) && transition = false {
		if global.audToggle = false {
			transitionTo = "on";
			image_speed = 1;
			transition = true;
		}
		if global.audToggle = true {
			transitionTo = "off";
			image_speed = -1;
			transition = true;
		}
	}
}
else {
	image_xscale = lerp(image_xscale,normXscale,.3);
	image_yscale = lerp(image_yscale,normYscale,.3);
}