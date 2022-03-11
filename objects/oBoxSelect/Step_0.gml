if position_meeting(mouse_x,mouse_y,id) {
	image_xscale = lerp(image_xscale,normXscale+(normXscale/10),.3);
	image_yscale = lerp(image_yscale,normYscale+(normYscale/10),.3);
	
	if mouse_check_button_pressed(mb_left) && room = rUnitConvert {
		if id = inst_11A1519B.id {
			sprite_index = sGreenBox;
			inst_32D2EB1F.sprite_index = sRedBox;
			global.convertSelected = "one";
		}
		if id = inst_32D2EB1F.id {
			sprite_index = sGreenBox;
			inst_11A1519B.sprite_index = sRedBox;
			global.convertSelected = "two";
		}
	}
}
else {
	image_xscale = lerp(image_xscale,normXscale,.3);
	image_yscale = lerp(image_yscale,normYscale,.3);
}