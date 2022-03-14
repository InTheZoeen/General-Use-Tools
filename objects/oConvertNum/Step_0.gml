if position_meeting(mouse_x,mouse_y,id) {
    image_xscale = lerp(image_xscale,normXscale+(normXscale/10),.3);
    image_yscale = lerp(image_yscale,normYscale+(normYscale/10),.3);
    wavedraw = true;
	
	if mouse_check_button_pressed(mb_left) {
		audio_play_sound(aClick,1,false);
		if text = "QUIT" {
			room_goto(rTools);
		}
		else {
			#region "number input"
			if global.convertSelected = "one" {
				//box one
				if text = "DELETE" || text = "+/-" {
					if text = "DELETE" {
						global.convertBoxOneValue /= 10;
						global.convertBoxOneValue = int64(global.convertBoxOneValue);
						if global.convertBoxOneValue < 1 && global.convertBoxOneValue > -1 {
							global.convertBoxOneValue = 0;
						}
					}
					if text = "+/-" {
						if global.convertBoxOneCharge = "+" {
							global.convertBoxOneValue *= -1;
							global.convertBoxOneCharge = "-";
						}
						else {
							global.convertBoxOneValue *= -1;
							global.convertBoxOneCharge = "+";
						}
					}
				}
				else {
					if string_length(string(global.convertBoxOneValue)) <= 6 {
						if text != "0" {
							if global.convertBoxOneValue = 0 {
								if global.convertBoxOneCharge = "+" {
									global.convertBoxOneValue += real(text);
								}
								else {
									global.convertBoxOneValue -= real(text);
								}
							}
							else {
								if global.convertBoxOneCharge = "+" {
									global.convertBoxOneValue *= 10;
									global.convertBoxOneValue += real(text);
								}
								else {
									global.convertBoxOneValue *= 10;
									global.convertBoxOneValue -= real(text);
								}
							}
						
						}
						else {
							global.convertBoxOneValue *= 10;
						}
					}
				}
			}
			else {
				//box two
				if text = "DELETE" || text = "+/-" {
					if text = "DELETE" {
						global.convertBoxTwoValue /= 10;
						global.convertBoxTwoValue = int64(global.convertBoxTwoValue);
						if global.convertBoxTwoValue < 1 && global.convertBoxTwoValue > -1 {
							global.convertBoxTwoValue = 0;
						}
					}
					if text = "+/-" {
						if global.convertBoxTwoCharge = "+" {
							global.convertBoxTwoValue *= -1;
							global.convertBoxTwoCharge = "-";
						}
						else {
							global.convertBoxTwoValue *= -1;
							global.convertBoxTwoCharge = "+";
						}
					}
				}
				else {
					if string_length(string(global.convertBoxTwoValue)) <= 6 {
						if text != "0" {
							if global.convertBoxTwoValue = 0 {
								if global.convertBoxTwoCharge = "+" {
									global.convertBoxTwoValue += real(text);
								}
								else {
									global.convertBoxTwoValue -= real(text);
								}
							}
							else {
								if global.convertBoxTwoCharge = "+" {
									global.convertBoxTwoValue *= 10;
									global.convertBoxTwoValue += real(text);
								}
								else {
									global.convertBoxTwoValue *= 10;
									global.convertBoxTwoValue -= real(text);
								}
							}
						
						}
						else {
							global.convertBoxTwoValue *= 10;
						}
					}
				}
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
#region "temp convert"
if global.convertType = "Temperature" {
	if global.convertSelected = "one" {
		//converting to base
		var base = global.convertBoxOneValue;
		if global.convertBoxOneType = "Fahrenheit" {
			base = (((global.convertBoxOneValue - 32)/ 9) * 5);
		}
		if global.convertBoxOneType = "Kelvin" {
			base -= 273.15;
		}
		//converting to val 2
		if global.convertBoxTwoType = "Fahrenheit" {
			base = (((base / 5) * 9) + 32);
		}
		if global.convertBoxTwoType = "Kelvin" {
			base += 273.15;
		}
		global.convertBoxTwoValue = base;
	}
	else {
		//converting to base
		var base = global.convertBoxTwoValue;
		if global.convertBoxOneType = "Fahrenheit" {
			base = (((global.convertBoxTwoValue - 32)/ 9) * 5);
		}
		if global.convertBoxTwoType = "Kelvin" {
			base -= 273.15;
		}
		//converting to val 1
		if global.convertBoxOneType = "Fahrenheit" {
			base = (((base / 5) * 9) + 32);
		}
		if global.convertBoxOneType = "Kelvin" {
			base += 273.15;
		}
		global.convertBoxOneValue = base;
	}
}

#endregion

#region "Length convert"
if global.convertType = "Length" {
	if global.convertSelected = "one" {
		//converting to base
		var base = global.convertBoxOneValue;
		if global.convertBoxOneType = "Inches" {
			base /= 39.37;
		}
		if global.convertBoxOneType = "Feet" {
			base /= 3.28084;
		}
		if global.convertBoxOneType = "Yards" {
			base *= .9144;
		}
		if global.convertBoxOneType = "Miles" {
			base *= 1609.344;
		}
		if global.convertBoxOneType = "Centimeters" {
			base /= 100;
		}
		if global.convertBoxOneType = "Kilometers" {
			base *= 1000;
		}
		//converting to val 2
		if global.convertBoxTwoType = "Inches" {
			base *= 39.37;
		}
		if global.convertBoxTwoType = "Feet" {
			base *= 3.28084;
		}
		if global.convertBoxTwoType = "Yards" {
			base /= .9144;
		}
		if global.convertBoxTwoType = "Miles" {
			base /= 1609.344;
		}
		if global.convertBoxTwoType = "Centimeters" {
			base *= 100;
		}
		if global.convertBoxTwoType = "Kilometers" {
			base /= 1000;
		}
		global.convertBoxTwoValue = base;
	}
	else {
		//converting to base
		var base = global.convertBoxTwoValue;
		if global.convertBoxTwoType = "Inches" {
			base /= 39.37;
		}
		if global.convertBoxTwoType = "Feet" {
			base /= 3.28084;
		}
		if global.convertBoxTwoType = "Yards" {
			base *= .9144;
		}
		if global.convertBoxTwoType = "Miles" {
			base *= 1609.344;
		}
		if global.convertBoxTwoType = "Centimeters" {
			base /= 100;
		}
		if global.convertBoxTwoType = "Kilometers" {
			base *= 1000;
		}
		//converting to val 1
		if global.convertBoxOneType = "Inches" {
			base *= 39.37;
		}
		if global.convertBoxOneType = "Feet" {
			base *= 3.28084;
		}
		if global.convertBoxOneType = "Yards" {
			base /= .9144;
		}
		if global.convertBoxOneType = "Miles" {
			base /= 1609.344;
		}
		if global.convertBoxOneType = "Centimeters" {
			base *= 100;
		}
		if global.convertBoxOneType = "Kilometers" {
			base /= 1000;
		}
		global.convertBoxOneValue = base;
	}
}

#endregion

#region "Time convert"
if global.convertType = "Time" {
	if global.convertSelected = "one" {
		//converting to base
		var base = global.convertBoxOneValue;
		if global.convertBoxOneType = "Milliseconds" {
			base /= 1000;
		}
		if global.convertBoxOneType = "Minutes" {
			base *= 60;
		}
		if global.convertBoxOneType = "Hours" {
			base *= 3600;
		}
		if global.convertBoxOneType = "Days" {
			base *= 86400;
		}
		if global.convertBoxOneType = "Weeks" {
			base *= 604800;
		}
		if global.convertBoxOneType = "Months" {
			base *= (2.628 * power(10,6));
		}
		if global.convertBoxOneType = "Years" {
			base *= (3.154 * power(10,7));
		}
		//converting to val 2
		if global.convertBoxTwoType = "Milliseconds" {
			base *= 1000;
		}
		if global.convertBoxTwoType = "Minutes" {
			base /= 60;
		}
		if global.convertBoxTwoType = "Hours" {
			base /= 3600;
		}
		if global.convertBoxTwoType = "Days" {
			base /= 86400;
		}
		if global.convertBoxTwoType = "Weeks" {
			base /= 604800;
		}
		if global.convertBoxTwoType = "Months" {
			base /= (2.628 * power(10,6));
		}
		if global.convertBoxTwoType = "Years" {
			base /= (3.154 * power(10,7));
		}
		global.convertBoxTwoValue = base;
	}
	else {
		//converting to base
		var base = global.convertBoxTwoValue;
		if global.convertBoxTwoType = "Milliseconds" {
			base /= 1000;
		}
		if global.convertBoxTwoType = "Minutes" {
			base *= 60;
		}
		if global.convertBoxTwoType = "Hours" {
			base *= 3600;
		}
		if global.convertBoxTwoType = "Days" {
			base *= 86400;
		}
		if global.convertBoxTwoType = "Weeks" {
			base *= 604800;
		}
		if global.convertBoxTwoType = "Months" {
			base *= (2.628 * power(10,6));
		}
		if global.convertBoxTwoType = "Years" {
			base *= (3.154 * power(10,7));
		}
		//converting to val 1
		if global.convertBoxOneType = "Milliseconds" {
			base *= 1000;
		}
		if global.convertBoxOneType = "Minutes" {
			base /= 60;
		}
		if global.convertBoxOneType = "Hours" {
			base /= 3600;
		}
		if global.convertBoxOneType = "Days" {
			base /= 86400;
		}
		if global.convertBoxOneType = "Weeks" {
			base /= 604800;
		}
		if global.convertBoxOneType = "Months" {
			base /= (2.628 * power(10,6));
		}
		if global.convertBoxOneType = "Years" {
			base /= (3.154 * power(10,7));
		}
		global.convertBoxOneValue = base;
	}
}

#endregion

#region "Mass convert"
if global.convertType = "Mass" {
	if global.convertSelected = "one" {
		//converting to base
		var base = global.convertBoxOneValue;
		if global.convertBoxOneType = "Milligrams" {
			base /= 1000;
		}
		if global.convertBoxOneType = "Kilograms" {
			base *= 1000;
		}
		if global.convertBoxOneType = "Met tons" {
			base *= power(10,6);
		}
		if global.convertBoxOneType = "Ounces" {
			base *= 28.34952;
		}
		if global.convertBoxOneType = "Pounds" {
			base *= 453.592;
		}
		if global.convertBoxOneType = "Imp tons" {
			base *= (1.016 * power(10,6));
		}
		if global.convertBoxOneType = "Stone" {
			base *= 6350.29;
		}
		//converting to val 2
		if global.convertBoxTwoType = "Milligrams" {
			base *= 1000;
		}
		if global.convertBoxTwoType = "Kilograms" {
			base /= 1000;
		}
		if global.convertBoxTwoType = "Met tons" {
			base /= power(10,6);
		}
		if global.convertBoxTwoType = "Ounces" {
			base /= 28.34952;
		}
		if global.convertBoxTwoType = "Pounds" {
			base /= 453.592;
		}
		if global.convertBoxTwoType = "Imp tons" {
			base /= (1.016 * power(10,6));
		}
		if global.convertBoxTwoType = "Stone" {
			base /= 6350.29;
		}
		global.convertBoxTwoValue = base;
	}
	else {
		//converting to base
		var base = global.convertBoxTwoValue;
		if global.convertBoxTwoType = "Milligrams" {
			base /= 1000;
		}
		if global.convertBoxTwoType = "Kilograms" {
			base *= 1000;
		}
		if global.convertBoxTwoType = "Met tons" {
			base *= power(10,6);
		}
		if global.convertBoxTwoType = "Ounces" {
			base *= 28.34952;
		}
		if global.convertBoxTwoType = "Pounds" {
			base *= 453.592;
		}
		if global.convertBoxTwoType = "Imp tons" {
			base *= (1.016 * power(10,6));
		}
		if global.convertBoxTwoType = "Stone" {
			base *= 6350.29;
		}
		//converting to val 1
		if global.convertBoxOneType = "Milligrams" {
			base *= 1000;
		}
		if global.convertBoxOneType = "Kilograms" {
			base /= 1000;
		}
		if global.convertBoxOneType = "Met tons" {
			base /= power(10,6);
		}
		if global.convertBoxOneType = "Ounces" {
			base /= 28.34952;
		}
		if global.convertBoxOneType = "Pounds" {
			base /= 453.592;
		}
		if global.convertBoxOneType = "Imp tons" {
			base /= (1.016 * power(10,6));
		}
		if global.convertBoxOneType = "Stone" {
			base /= 6350.29;
		}
		global.convertBoxOneValue = base;
	}
}

#endregion

#region "Volume convert"
if global.convertType = "Volume" {
	if global.convertSelected = "one" {
		//converting to base
		var base = global.convertBoxOneValue;
		if global.convertBoxOneType = "US Tsp" {
			base /= 768;
		}
		if global.convertBoxOneType = "US Tbsp" {
			base /= 256;
		}
		if global.convertBoxOneType = "US Cups" {
			base /= 16;
		}
		if global.convertBoxOneType = "US Pints" {
			base /= 8;
		}
		if global.convertBoxOneType = "US Quarts" {
			base /= 4;
		}
		if global.convertBoxOneType = "Milliliters" {
			base /= 3785.41;
		}
		if global.convertBoxOneType = "Liters" {
			base /= 3.785;
		}
		//converting to val 2
		if global.convertBoxTwoType = "US Tsp" {
			base *= 768;
		}
		if global.convertBoxTwoType = "US Tbsp" {
			base *= 256;
		}
		if global.convertBoxTwoType = "US Cups" {
			base *= 16;
		}
		if global.convertBoxTwoType = "US Pints" {
			base *= 8;
		}
		if global.convertBoxTwoType = "US Quarts" {
			base *= 4;
		}
		if global.convertBoxTwoType = "Milliliters" {
			base *= 3785.41;
		}
		if global.convertBoxTwoType = "Liters" {
			base *= 3.785;
		}
		global.convertBoxTwoValue = base;
	}
	else {
		//converting to base
		var base = global.convertBoxTwoValue;
		if global.convertBoxTwoType = "US Tsp" {
			base /= 768;
		}
		if global.convertBoxTwoType = "US Tbsp" {
			base /= 256;
		}
		if global.convertBoxTwoType = "US Cups" {
			base /= 16;
		}
		if global.convertBoxTwoType = "US Pints" {
			base /= 8;
		}
		if global.convertBoxTwoType = "US Quarts" {
			base /= 4;
		}
		if global.convertBoxTwoType = "Milliliters" {
			base /= 3785.41;
		}
		if global.convertBoxTwoType = "Liters" {
			base /= 3.785;
		}
		//converting to val 1
		if global.convertBoxOneType = "US Tsp" {
			base *= 768;
		}
		if global.convertBoxOneType = "US Tbsp" {
			base *= 256;
		}
		if global.convertBoxOneType = "US Cups" {
			base *= 16;
		}
		if global.convertBoxOneType = "US Pints" {
			base *= 8;
		}
		if global.convertBoxOneType = "US Quarts" {
			base *= 4;
		}
		if global.convertBoxOneType = "Milliliters" {
			base *= 3785.41;
		}
		if global.convertBoxOneType = "Liters" {
			base *= 3.785;
		}
		global.convertBoxOneValue = base;
	}
}

#endregion