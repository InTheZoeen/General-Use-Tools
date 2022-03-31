draw_circle_color(room_width/2,room_height/2 + timerYoffset,timerOuterSize/2,make_color_rgb(25,25,25),make_color_rgb(25,25,25),false);
draw_pi(room_width/2 - (timerSize / 2),(room_height/2 + timerYoffset) - (timerSize / 2),room_width/2 + (timerSize / 2),(room_height/2 + timerYoffset) + (timerSize / 2),room_width/2,room_height/2,room_width/2 + lengthdir_x(100,(global.timerPercent) - 90),room_height/2 + lengthdir_y(100,(global.timerPercent) - 90),make_color_rgb(109,208,247),false,0,360);
//draw_circle_color(room_width/2,room_height/2 + timerYoffset,timerInnerSize/2,make_color_rgb(25,25,25),make_color_rgb(25,25,25),false);
draw_circle_color(room_width/2,room_height/2 + timerYoffset,timerInnerSize/2,make_color_rgb(20,20,20),make_color_rgb(20,20,20),false);
draw_circle_color(room_width/2,room_height/2 + timerYoffset,timerInnerSize2/2,make_color_rgb(25,25,25),make_color_rgb(25,25,25),false);
var seconds = global.timerTime;
while seconds >= 60 {
	seconds -= 60;
}
var secondsDraw = seconds;
if secondsDraw < 10 {
	secondsDraw = "0" + string(secondsDraw);
}
else {
	secondsDraw = string(floor(seconds));
}
var hours = global.timerTime;
var hoursDraw = 0;
while hours >= 3600 {
	hours -= 3600;
	hoursDraw += 1;
}
var drawActualHours = "";
if hoursDraw > 0 {
	drawActualHours = string(hoursDraw) + ":";
}
var drawMins = floor(global.timerTime / 60);
drawMins -= 60 * hoursDraw;
if drawMins < 10 {
	drawMins = "0" + string(drawMins);
}
else {
	drawMins = string(drawMins);
}
//draw_rectangle_color((room_width/2) + 1 - 130,(room_height/2)+timerYoffset - 44,(room_width/2) + 1 + 130,(room_height/2)+timerYoffset + 44,c_red,c_red,c_red,c_red,true);
scribble("[scale,2.5][fa_center][fa_middle][#FFFFFF][ThaleahFatOutline]" + drawActualHours + drawMins + ":" + secondsDraw).fit_to_box(260,88,false).draw((room_width/2) + 1,(room_height/2)+timerYoffset + 8);