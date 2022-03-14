scribble_anim_wheel(5,.5,.2);
if room = rHub {
	scribble("[scale,3.0][ThaleahFatOutline][fa_center][#fff165][wheel]Welcome!").draw(x, y);
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