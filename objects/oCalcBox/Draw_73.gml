if id = inst_52081237.id {
	if wavedraw = true {
		scribble("[scale,1.85][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y+((normYscale/5)*64));
	}
	else {
		scribble("[scale,1.65][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y+((normYscale/5)*64));
	}
}
else 
if  id = inst_53945A7A.id ||  id = inst_D92AD31.id ||  id = inst_372D9B2.id ||  id = inst_795B2DC5.id 
{
	if wavedraw = true {
		scribble("[scale,1.70][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y+((normYscale/2)*64));
	}
	else {
		scribble("[scale,1.50][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y+((normYscale/2)*64));
	}
}
else 
if id = inst_76CF43C3.id || id = inst_247B5B6.id || id = inst_122FB7CB.id {
	if wavedraw = true {
		scribble("[scale,1.3][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y+((normYscale/1.8)*64));
	}
	else {
		scribble("[scale,1.1][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y+((normYscale/1.8)*64));
	}
}
else 
if id = inst_376EFD9A.id {
	if wavedraw = true {
		scribble("[scale,1.5][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y+((normYscale/2)*64));
	}
	else {
		scribble("[scale,1.3][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y+((normYscale/2)*64));
	}
}
else 
{
	if wavedraw = true {
		scribble("[scale,2.45][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y+((normYscale/5)*64));
	}
	else {
		scribble("[scale,2.25][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y+((normYscale/5)*64));
	}
}
