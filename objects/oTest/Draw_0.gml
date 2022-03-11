scribble_anim_wheel(5,.5,.2);
if room = rHub {
	scribble("[scale,3.5][ThaleahFat][fa_center][#fff165][wheel]Welcome!").draw(x, y);
}
if room = rCalculator {
	if global.numStart = true {
		if global.currentvalue = "numVal1" {
			scribble("[scale, 1.5][fa_middle][#FFFFFF][ThaleahFat]"+ string(global.numVal1)).draw(16,65);
		}
		else {
			if global.drawNumVal2 = true {
				scribble("[scale, 1.5][fa_middle][#FFFFFF][ThaleahFat]"+ string(global.numVal1) + " " + global.modifier + " " + string(global.numVal2)).draw(16,65);
			}
			else {
				scribble("[scale, 1.5][fa_middle][#FFFFFF][ThaleahFat]"+ string(global.numVal1) + " " + global.modifier).draw(16,65);
			}
		}
		if global.currentvalue = "end" {
			scribble("[scale, 1.5][fa_middle][#FFFFFF][ThaleahFat]"+ string(global.numVal1) + " " + global.modifier + " " + string(global.numVal2)).draw(16,65);
			scribble("[scale, 1.5][fa_middle][#FFFFFF][ThaleahFat]"+ string(global.answer)).draw(16,65 + 64);
		}
	}
}