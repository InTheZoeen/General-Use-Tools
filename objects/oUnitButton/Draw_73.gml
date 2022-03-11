if layer_get_id("buttons") = layer {
	if text = "Temperature" {
		if wavedraw = true {
			scribble("[scale,1.25][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
		}
		else {
			scribble("[scale,1.05][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
		}	
	}
	else {
		if wavedraw = true {
			scribble("[scale,1.45][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
		}
		else {
			scribble("[scale,1.25][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
		}
	}
}
if layTemp = layer {
	if text = "Fahrenheit" {
		if wavedraw = true {
			scribble("[scale,1.15][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
		}
		else {
			scribble("[scale,0.95][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
		}	
	}
	else {
		if wavedraw = true {
			scribble("[scale,1.35][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
		}
		else {
			scribble("[scale,1.15][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
		}
	}
}
if layLen = layer {
	if text = "Centimeters" || text = "Meters" || text = "Kilometers" {
		if wavedraw = true {
			scribble("[scale,0.9][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
		}
		else {
			scribble("[scale,0.7][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
		}	
	}
	else {
		if wavedraw = true {
			scribble("[scale,1.0][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
		}
		else {
			scribble("[scale,0.8][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
		}
	}
}
if layTime = layer {
	if text = "Milliseconds" || text = "Seconds" {
		if wavedraw = true {
			scribble("[scale,0.85][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
		}
		else {
			scribble("[scale,0.65][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
		}	
	}
	else {
		if wavedraw = true {
			scribble("[scale,0.9][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
		}
		else {
			scribble("[scale,0.7][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
		}
	}
}
if layMass = layer {
	if text = "Milligrams" || text = "Kilograms" {
		if wavedraw = true {
			scribble("[scale,0.85][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
		}
		else {
			scribble("[scale,0.7][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
		}
	}
	else {
		if wavedraw = true {
			scribble("[scale,1.0][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
		}
		else {
			scribble("[scale,0.8][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
		}
	}
}
if layVol = layer {
	if text = "US Quarts" || text = "US Gallons" || text = "Milliliters" {
		if wavedraw = true {
			scribble("[scale,0.75][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
		}
		else {
			scribble("[scale,0.65][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
		}
	}
	else {
		if wavedraw = true {
			scribble("[scale,1.0][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
		}
		else {
			scribble("[scale,0.8][fa_center][fa_middle][#FFFFFF][ThaleahFat]"+ text).draw(x + 1,y);
		}
	}
}