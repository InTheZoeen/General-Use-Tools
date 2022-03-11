if keyboard_check(vk_escape) {
	game_end();
}
localy += 2 * (delta_time/1000000);
layer_y("Background",sin(localy)*20);