normXscale = image_xscale;
normYscale = image_yscale;
wavedraw = false;
text = "notset";

layTimer = layer_get_id("timer");
layClock = layer_get_id("clock");

layer_set_visible(layClock,false);
instance_deactivate_layer(layClock);
layer_set_visible(layTimer,true);
instance_activate_layer(layTimer);

if id = inst_1C2EC6CD.id {
	text = "Timer";
}
if id = inst_37B8C2DA.id {
	text = "Stopwatch";
}