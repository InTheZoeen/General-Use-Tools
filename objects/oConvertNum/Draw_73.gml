if text = "DELETE" {
	if wavedraw = true {
		scribble("[scale,0.8][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
	}
	else {
		scribble("[scale,0.7][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
	}
}
else {
	if wavedraw = true {
		scribble("[scale,1.25][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
	}
	else {
		scribble("[scale,1.05][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
	}
}