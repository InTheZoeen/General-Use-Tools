scribble_anim_wheel(5,.5,.2);
if room = rHub {
	scribble("[scale,3.0][ThaleahFatOutline][fa_center][#fff165][wheel]Welcome!").draw(x, y - 60);
	var pmOrAm;
	var drawCurrentHour = current_hour;
	if current_hour >= 12 {
		pmOrAm = "PM";
		if current_hour != 12 {
			drawCurrentHour -= 12;
		}
	}
	else {
		if drawCurrentHour = 0 {
			drawCurrentHour += 12;
		}
		pmOrAm = "AM";
	}
	var monthAbv = "";
	if true {
		if (current_month = 1) monthAbv = "Jan";
		if (current_month = 2) monthAbv = "Feb";
		if (current_month = 3) monthAbv = "Mar";
		if (current_month = 4) monthAbv = "Apr";
		if (current_month = 5) monthAbv = "May";
		if (current_month = 6) monthAbv = "Jun";
		if (current_month = 7) monthAbv = "Jul";
		if (current_month = 8) monthAbv = "Aug";
		if (current_month = 9) monthAbv = "Sep";
		if (current_month = 10) monthAbv = "Oct";
		if (current_month = 11) monthAbv = "Nov";
		if (current_month = 12) monthAbv = "Dec";
	}
	var curMin = current_minute;
	if curMin < 10 {
		curMin = "0" + string(curMin);
	}
	else {
		curMin = string(curMin);
	}
	scribble("[scale,2.0][ThaleahFatOutline][fa_center][#ffffff][wave]" + string(drawCurrentHour) + ":" + curMin + " " + string(pmOrAm)).draw(x, y + 25);
	scribble("[scale,2.0][ThaleahFatOutline][fa_center][#ffffff][wave]" + monthAbv + " " + string(current_day) + " " + string(current_year)).draw(x, y + 75);
}
if room = rCalculator {
	if global.numStart = true {
		if global.currentvalue = "numVal1" {
			scribble("[scale, 1.5][fa_bottom][#FFFFFF][ThaleahFat]"+ string_format(global.numVal1,string_length(string(floor(global.numVal1))),min(decimals(global.numVal1),decimalLength))).draw(16,65);
		}
		else {
			if global.drawNumVal2 = true {
				scribble("[scale, 1.5][fa_bottom][#FFFFFF][ThaleahFat]"+ string_format(global.numVal1,string_length(string(floor(global.numVal1))),min(decimals(global.numVal1),decimalLength)) + " " + global.modifier + " " +  string_format(global.numVal2,string_length(string(floor(global.numVal2))),min(decimals(global.numVal2),decimalLength))).draw(16,65);
			}
			else {
				scribble("[scale, 1.5][fa_bottom][#FFFFFF][ThaleahFat]"+ string_format(global.numVal1,string_length(string(floor(global.numVal1))),min(decimals(global.numVal1),decimalLength)) + " " + global.modifier).draw(16,65);
			}
		}
		if global.currentvalue = "end" {
			scribble("[scale, 1.5][fa_bottom][#FFFFFF][ThaleahFat]"+ string_format(global.numVal1,string_length(string(floor(global.numVal1))),min(decimals(global.numVal1),decimalLength)) + " " + global.modifier + " " + string_format(global.numVal2,string_length(string(floor(global.numVal2))),min(decimals(global.numVal2),decimalLength))).draw(16,65);
			scribble("[scale, 1.5][fa_bottom][#FFFFFF][ThaleahFat]"+ string_format(global.answer,string_length(string(floor(global.answer))),min(decimals(global.answer),15))).draw(16,65 + 64);
		}
	}
}