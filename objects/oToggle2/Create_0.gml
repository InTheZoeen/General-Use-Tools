normXscale = image_xscale;
normYscale = image_yscale;
transition = false;
transitionTo = "on";
image_speed = 0;

if global.globalTimer = true {
	transitionTo = "off";
	image_index = 6;
}