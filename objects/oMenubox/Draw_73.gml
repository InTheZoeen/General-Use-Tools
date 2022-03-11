if room = rTools {
	if id = inst_3C43427A.id {
		if wavedraw = true {
			scribble("[scale,1.45][fa_center][fa_middle][#FF0000][ThaleahFat][shake][wave]"+ text).draw(x,y);
		}
		else {
			scribble("[scale,1.25][fa_center][fa_middle][#FF0000][ThaleahFat]"+ text).draw(x,y);
		}
	}
	else {
		if wavedraw = true {
			scribble("[scale,1.2][fa_center][fa_middle][#000000][ThaleahFat][wave]"+ text).scale_to_box(160,88,false).draw(x,y);
		}
		else {
			scribble("[scale,1.0][fa_center][fa_middle][#000000][ThaleahFat]"+ text).scale_to_box(160,88,false).draw(x,y);
		}
	}
}
else if room = rOptions {
	if id = inst_29AEC565_1.id {
		if wavedraw = true {
			scribble("[scale,1.45][fa_center][fa_middle][#000000][ThaleahFat][wave]"+ text).scale_to_box(160,88,false).draw(x,y);
		}
		else {
			scribble("[scale,1.25][fa_center][fa_middle][#000000][ThaleahFat]"+ text).scale_to_box(160,88,false).draw(x,y);
		}
	}
	else {
		if wavedraw = true {
			scribble("[scale,1.45][fa_center][fa_middle][#000000][ThaleahFat][wave]"+ text).scale_to_box(160,88,false).draw(x,y);
		}
		else {
			scribble("[scale,1.25][fa_center][fa_middle][#000000][ThaleahFat]"+ text).scale_to_box(160,88,false).draw(x,y);
		}
	}
}
else {
	if wavedraw = true {
		scribble("[scale,1.45][fa_center][fa_middle][#000000][ThaleahFat][wave]"+ text).scale_to_box(248,120,false).draw(x,y);
	}
	else {
		scribble("[scale,1.25][fa_center][fa_middle][#000000][ThaleahFat]"+ text).scale_to_box(248,120,false).draw(x,y);
	}
}