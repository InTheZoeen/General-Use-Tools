normXscale = image_xscale;
normYscale = image_yscale;
wavedraw = false;
text = "notset";

if room = rTimer {
    if id = inst_zero.id {
        text = "0";
    }
    if id = inst_one.id {
        text = "1";
    }
    if id = inst_two.id {
        text = "2";
    }
    if id = inst_three.id {
        text = "3";
    }
    if id = inst_four.id {
        text = "4";
    }
    if id = inst_five.id {
        text = "5";
    }
    if id = inst_six.id {
        text = "6";
    }
    if id = inst_seven.id {
        text = "7";
    }
    if id = inst_eight.id {
        text = "8";
    }
    if id = inst_nine.id {
        text = "9";
    }
    if id = inst_delete.id {
        text = "DELETE";
    }
}

if global.timerTime > 0 {
	inst_zero.visible = false;
	inst_one.visible = false;
	inst_two.visible = false;
	inst_three.visible = false;
	inst_four.visible = false;
	inst_five.visible = false;
	inst_six.visible = false;
	inst_seven.visible = false;
	inst_eight.visible = false;
	inst_nine.visible = false;
	inst_delete.visible = false;
}
else {
	inst_zero.visible = true;
	inst_one.visible = true;
	inst_two.visible = true;
	inst_three.visible = true;
	inst_four.visible = true;
	inst_five.visible = true;
	inst_six.visible = true;
	inst_seven.visible = true;
	inst_eight.visible = true;
	inst_nine.visible = true;
	inst_delete.visible = true;
}