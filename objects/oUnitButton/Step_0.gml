if position_meeting(mouse_x,mouse_y,id) {
	image_xscale = lerp(image_xscale,normXscale+(normXscale/10),.3);
	image_yscale = lerp(image_yscale,normYscale+(normYscale/10),.3);
	wavedraw = true;
	if keyboard_check_pressed(ord("D")) {
		show_debug_message(id);
	}
	if mouse_check_button_pressed(mb_left) && room = rUnitConvert {
		audio_play_sound(aClick,1,false);
		if text = "Temperature" {
			global.convertType = "Temperature";
			global.convertBoxOneType = "Fahrenheit";
			global.convertBoxTwoType = "Celsius";
			layer_set_visible(layTemp,true);
			layer_set_visible(layLen,false);
			layer_set_visible(layTime,false);
			layer_set_visible(layMass,false);
			layer_set_visible(layVol,false);
			instance_activate_layer(layTemp);
			instance_deactivate_layer(layLen);
			instance_deactivate_layer(layTime);
			instance_deactivate_layer(layMass);
			instance_deactivate_layer(layVol);
		}
		else
		if text = "Length" {
			global.convertType = "Length";
			global.convertBoxOneType = "Feet";
			global.convertBoxTwoType = "Meters";
			layer_set_visible(layTemp,false);
			layer_set_visible(layLen,true);
			layer_set_visible(layTime,false);
			layer_set_visible(layMass,false);
			layer_set_visible(layVol,false);
			instance_activate_layer(layLen);
			instance_deactivate_layer(layTemp);
			instance_deactivate_layer(layTime);
			instance_deactivate_layer(layMass);
			instance_deactivate_layer(layVol);
		}
		else
		if text = "Time" {
			global.convertType = "Time";
			global.convertBoxOneType = "Seconds";
			global.convertBoxTwoType = "Minutes";
			layer_set_visible(layTemp,false);
			layer_set_visible(layLen,false);
			layer_set_visible(layTime,true);
			layer_set_visible(layMass,false);
			layer_set_visible(layVol,false);
			instance_activate_layer(layTime);
			instance_deactivate_layer(layLen);
			instance_deactivate_layer(layTemp);
			instance_deactivate_layer(layMass);
			instance_deactivate_layer(layVol);
		}
		else
		if text = "Mass" {
			global.convertType = "Mass";
			global.convertBoxOneType = "Pounds";
			global.convertBoxTwoType = "Kilograms";
			layer_set_visible(layTemp,false);
			layer_set_visible(layLen,false);
			layer_set_visible(layTime,false);
			layer_set_visible(layMass,true);
			layer_set_visible(layVol,false);
			instance_activate_layer(layMass);
			instance_deactivate_layer(layLen);
			instance_deactivate_layer(layTime);
			instance_deactivate_layer(layTemp);
			instance_deactivate_layer(layVol);
		}
		else
		if text = "Volume" {
			global.convertType = "Volume";
			global.convertBoxOneType = "Gallons";
			global.convertBoxTwoType = "Liters";
			layer_set_visible(layTemp,false);
			layer_set_visible(layLen,false);
			layer_set_visible(layTime,false);
			layer_set_visible(layMass,false);
			layer_set_visible(layVol,true);
			instance_activate_layer(layVol);
			instance_deactivate_layer(layLen);
			instance_deactivate_layer(layTime);
			instance_deactivate_layer(layMass);
			instance_deactivate_layer(layTemp);
		}
		else {
			if global.convertSelected = "one" {
				global.convertBoxOneType = self.text;
			}
			else {
				global.convertBoxTwoType = self.text;
			}
		}
	}
}
else {
	image_xscale = lerp(image_xscale,normXscale,.3);
	image_yscale = lerp(image_yscale,normYscale,.3);
	wavedraw = false;
}