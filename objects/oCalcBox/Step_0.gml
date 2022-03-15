if position_meeting(mouse_x,mouse_y,id) {
	image_xscale = lerp(image_xscale,normXscale+(normXscale/10),.3);
	image_yscale = lerp(image_yscale,normYscale+(normYscale/10),.3);
	wavedraw = true;
	if keyboard_check_pressed(ord("D")) {
		show_debug_message(id);
	}
	if mouse_check_button_pressed(mb_left) {
		if (text != "DEL") && (text != "=") && (text != "ANS") && (text != "+") && (text != "-") && (text != "x") && (text != "/") && (text != "0") {
			audio_play_sound(aClick,1,false);
		}
		else {
			if text = "DEL" {
				if global.numVal1 != 0 {
					audio_play_sound(aDelete,1,false);
				}
				else {
					audio_play_sound(aError,1,false);
				}
			}
			if text = "=" {
				if global.currentvalue = "numVal2" {
					audio_play_sound(aSuccess,1,false);
				}
				else {
					audio_play_sound(aError,1,false);
				}
			}
			if text = "ANS" {
				if global.answerPut = true && global.currentvalue != "end" {
					audio_play_sound(aClick,1,false);
				}
				else {
					audio_play_sound(aError,1,false);
				}
			}
			if (text = "+") || (text = "-") || (text = "x") || (text = "/") {
				if global.modifier != 0 && global.currentvalue != "numVal1" {
					if global.modifier != text {
						audio_play_sound(aClick,1,false);
					}
					else {
						audio_play_sound(aError,1,false);
					}
				}
				else {
					audio_play_sound(aClick,1,false);
				}
			}
			if (text = "0") {
				if global.numStart = true {
					if global.currentvalue = "numVal1" {
						if global.numVal1 = 0 {
							audio_play_sound(aError,1,false);
						}
					}
					else {
						if global.numVal2 = 0 && global.drawNumVal2 = true{
							audio_play_sound(aError,1,false);
						}
						else {
							audio_play_sound(aClick,1,false);
						}
					}
				}
				else {
					audio_play_sound(aClick,1,false);
				}
			}
		}
		if global.currentvalue = "numVal1" {
			#region "delete val 1"
			if (text = "DEL") {
				if global.numVal1DecCheck = false {
					global.numVal1 /= 10;
					global.numVal1 = int64(global.numVal1);
					if global.numVal1 = 0 {
						global.valLength1 = 0;
						global.numStart = false;
					}
				}
				else {
					if global.charge = "+" {
						if 0 = global.numVal1decPlace {
							global.numVal1dec = max(global.numVal1dec - 1,0);
							global.numVal1DecCheck = false;
						}
						else {
							global.numVal1decPlace -= 1;
							if 0 = global.numVal1decPlace {
								global.numVal1 = floor(global.numVal1);
								global.numVal1DecCheck = false;
							}
						}
						global.numVal1dec = global.numVal1 - floor(global.numVal1);
						global.numVal1 = floor(global.numVal1) +  round_ext(global.numVal1dec, 1 / power(10,global.numVal1decPlace));
						
					}
					else {
					
					}
				}
			}
			#endregion
			if global.valLength1 <= 6 {
				if global.numStart = false && (text = "1") || (text = "2") || (text = "3") || (text = "4") || (text = "5") || (text = "6") || (text = "7") || (text = "8") || (text = "9") || (text = "0") || (text = "+") || (text = "-") || (text = "x") || (text = "/") {
					global.numStart = true;
				}
				if (text = "1") || (text = "2") || (text = "3") || (text = "4") || (text = "5") || (text = "6") || (text = "7") || (text = "8") || (text = "9") {
					if global.numVal1DecCheck = false {
						global.numVal1 *= 10;
						if global.charge = "+" {
							global.numVal1 += real(text);
						}
						else {
							global.numVal1 -= real(text);
						}
						global.valLength1 += 1;
					}
					else {
						if global.charge = "+" {
							global.numVal1 += (real(text) / power(10,global.numVal1decPlace));	
						}
						else {
							global.numVal1 -= (real(text) / power(10,global.numVal1decPlace));
						}
						global.numVal1decPlace += 1;
					}
				}
				if (text = "0") {
					global.numVal1 *= 10;
					global.valLength1 += 1;
				}
			}
			if (text = "+/-") {
				if global.charge = "+" {
					global.charge = "-";
				}
				else {
					global.charge = "+";
				}
				global.numVal1 *= -1;
			}
			if (text = "+") || (text = "-") || (text = "x") || (text = "/") {
				if global.modifier != text {
					global.modifier = text;
					global.currentvalue = "numVal2";
				}
			}
			if text = "." {
				global.numVal1DecCheck = true;
				audio_play_sound(aDelete,1,false);
			}
			if (text = "ANS") && global.answerPut = true {
				global.numVal1 = global.answer;
				global.numStart = true;
				if sign(global.answer) = 1 {
					global.charge = "+"
				}
				if sign(global.answer) = -1 {
					global.charge = "-"
				}
			}
		}
		
		if global.currentvalue = "numVal2" {
			if string_length(string(global.numVal2)) <= 6 {
				if global.drawNumVal2 = false && (text = "1") || (text = "2") || (text = "3") || (text = "4") || (text = "5") || (text = "6") || (text = "7") || (text = "8") || (text = "9") || (text = "0") || (text = "ANS") {
					global.drawNumVal2 = true;
				}
				if (text = "1") || (text = "2") || (text = "3") || (text = "4") || (text = "5") || (text = "6") || (text = "7") || (text = "8") || (text = "9") {
					global.numVal2 *= 10;
					if global.charge = "+" {
						global.numVal2 += real(text);
					}
					else {
						global.numVal2 -= real(text);
					}
				}
				if (text = "0") {
					global.numVal2 *= 10;
				}
			}
			if (text = "DEL") {
				global.numVal2 /= 10;
				global.numVal2 = int64(global.numVal2);
				if global.numVal2 = 0 {
					global.currentvalue = "numVal1";
				}
			}
			if (text = "+/-") {
				if global.charge = "+" {
					global.charge = "-";
				}
				else {
					global.charge = "+";
				}
				global.numVal2 *= -1;
			}
			if (text = "ANS") && global.answerPut = true {
				global.numVal2 = global.answer;
				global.numStart = true;
				if sign(global.answer) = 1 {
					global.charge = "+"
				}
				if sign(global.answer) = -1 {
					global.charge = "-"
				}
			}
			if (text = "+") || (text = "-") || (text = "x") || (text = "/") {
				if global.modifier != text {
					global.modifier = text;
				}
			}
			if (text = "=") {
				global.currentvalue = "end";
				if global.modifier = "+" {
					global.answer = global.numVal1 + global.numVal2;
				}
				if global.modifier = "-" {
					global.answer = global.numVal1 - global.numVal2;
				}
				if global.modifier = "x" {
					global.answer = global.numVal1 * global.numVal2;
				}
				if global.modifier = "/" {
					global.answer = global.numVal1 / global.numVal2;
				}
				global.answerPut = true;
			}
		}
		
		if global.currentvalue = "end" {
			if (text = "1") || (text = "2") || (text = "3") || (text = "4") || (text = "5") || (text = "6") || (text = "7") || (text = "8") || (text = "9") || (text = "0") {
				global.numStart = false;
				global.drawNumVal2 = false;
				global.numVal1 = 0;
				global.numVal2 = 0;
				global.modifier = 0;
				global.currentvalue = "numVal1";
			}
		}
	
		if (text = "QUIT") {
			room_goto(rTools);
		}
		if (text = "CLEAR") {
			room_restart();
		}
	}
}
else {
	image_xscale = lerp(image_xscale,normXscale,.3);
	image_yscale = lerp(image_yscale,normYscale,.3);
	wavedraw = false;
}