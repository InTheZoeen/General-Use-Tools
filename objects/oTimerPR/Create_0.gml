normXscale = image_xscale;
normYscale = image_yscale;
wavedraw = false;
text = "notset";

if id = inst_F7C0ABC.id {
	if global.timerTime > 0 {
		inst_1661655C.visible = true;
		text = "End";
	}
	else {
		inst_1661655C.visible = false;
		text = "Start";
	}
}
if id = inst_1661655C.id {
	if global.timerPause = true {
		text = "Resume";
	}
	else {
		text = "Pause";
	}
}
if id = inst_7C15F958.id {
	text = "Hours";
}
if id = inst_7BA05103.id {
	text = "Minutes";
}
if id = inst_57AEFF45.id {
	text = "Seconds";
}
if global.timerTime > 0 {
	inst_7C15F958.visible = false;
	inst_7BA05103.visible = false;
	inst_57AEFF45.visible = false;
}
else {
	inst_7C15F958.visible = true;
	inst_7BA05103.visible = true;
	inst_57AEFF45.visible = true;
}