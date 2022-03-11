normXscale = image_xscale;
normYscale = image_yscale;
transition = false;
transitionTo = "on";
image_speed = 0;

if global.audToggle = true {
	audio_master_gain(1);
	transitionTo = "off";
	image_index = 6;
}