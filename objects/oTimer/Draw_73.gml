draw_pi(room_width/2 - (timerSize / 2),(room_height/2 + timerYoffset) - (timerSize / 2),room_width/2 + (timerSize / 2),(room_height/2 + timerYoffset) + (timerSize / 2),room_width/2,room_height/2,mouse_x,mouse_y,make_color_rgb(109,208,247),false,0,360);
draw_circle_color(room_width/2,room_height/2 + timerYoffset,timerInnerSize/2,make_color_rgb(25,25,25),make_color_rgb(25,25,25),false);
var seconds = global.timerTime;
while seconds >= 60 {
	seconds -= 60;
}
scribble("[scale,2.5][fa_center][fa_middle][#FFFFFF][ThaleahFatOutline]" + string(floor(global.timerTime / 60)) + ":" + string_format(seconds,2,0)).draw((room_width/2) + 1,(room_height/2)+timerYoffset);