if room = rLogo {
	if text = "GUT" {
		scribble("[scale,3.0][fa_center][fa_middle][#FFFFFF][ThaleahFatOutline]"+ text).draw(x,y+16);
	}
	else {
		scribble("[scale,2.0][fa_center][fa_middle][#FFFFFF][ThaleahFatOutline]"+ text).draw(x,y);
	}
}
if room = rTools {
	scribble("[scale,3.0][fa_center][fa_middle][#FFFFFF][ThaleahFatOutline][wave]"+ text).draw(x,y);
}
if room = rOptions {
	if text = "Play sounds" {
		scribble("[scale,1.5][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x,y);
	}
	else {
		scribble("[scale,2.0][fa_center][fa_middle][#FFFFFF][ThaleahFatOutline]"+ text).draw(x,y);
	}
}