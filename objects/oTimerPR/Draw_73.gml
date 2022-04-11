if text = "Seconds" || text = "Minutes" {
	if wavedraw = true {
		scribble("[scale,1.05][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y + 2);
	}
	else {
		scribble("[scale,0.85][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y + 2);
	}
}
else {
	if wavedraw = true {
		scribble("[scale,1.35][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y + 2);
	}
	else {
		scribble("[scale,1.15][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y + 2);
	}
}