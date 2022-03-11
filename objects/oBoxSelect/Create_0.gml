normXscale = image_xscale;
normYscale = image_yscale;

if room = rUnitConvert {
	if id = inst_11A1519B.id {
		sprite_index = sGreenBox;
		global.convertSelected = "one";
	}
	if id = inst_32D2EB1F.id {
		sprite_index = sRedBox;
	}
}