if transition = true {
	if transitionTo = "on" {
		if image_index = 6 {
			image_speed = 0;
			global.globalTimer = true;
			transition = false;
		}
	}
	else {
		if image_index = 1 {
			image_speed = 0;
			image_index = 0;
			global.globalTimer = false;
			transition = false;
		}
	}
}

if position_meeting(mouse_x,mouse_y,id) {
	image_xscale = lerp(image_xscale,normXscale + (normXscale/10),.3);
	image_yscale = lerp(image_yscale,normYscale + (normYscale/10),.3);
	if mouse_check_button_pressed(mb_left) && transition = false {
		if global.globalTimer = false {
			transitionTo = "on";
			image_speed = 1;
			transition = true;
		}
		if global.globalTimer = true {
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