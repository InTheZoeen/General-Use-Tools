draw_circle_color(room_width/2,room_height/2 + timerYoffset,timerOuterSize/2,make_color_rgb(25,25,25),make_color_rgb(25,25,25),false);
var g = global.timerStartTime - global.timerTime;
var f = g / global.timerStartTime;
var lend_x = room_width/2 + lengthdir_x(250,360 * f + 90);
var lend_y = room_height/2 + lengthdir_y(250,360 * f + 90) + timerYoffset;
//draw_circle_color(room_width/2,room_height/2 + timerYoffset, 500, c_red,c_red,true);
//draw_text(mouse_x,mouse_y,g);
//draw_text(mouse_x,mouse_y + 10,f);
//draw_text(mouse_x,mouse_y + 20,360 * f);

//draw_text(mouse_x,mouse_y,point_direction(room_width/2,room_height/2 + timerYoffset,lend_x,lend_y));
//draw_text(mouse_x,mouse_y + 50,point_distance(room_width/2,room_height/2 + timerYoffset,lend_x,lend_y));


if global.timerTime = 0 {
	draw_circle_color(room_width/2, room_height/2 + timerYoffset,timerSize/2,make_color_rgb(109,208,247),make_color_rgb(109,208,247),false);
}
else {
	draw_pi(room_width/2 - (timerSize / 2),(room_height/2 + timerYoffset) - (timerSize / 2),room_width/2 + (timerSize / 2),(room_height/2 + timerYoffset) + (timerSize / 2),room_width/2 + lengthdir_x(250,0),room_height/2 + timerYoffset + lengthdir_y(250,0),lend_x,lend_y,make_color_rgb(109,208,247),false,90,360);
}
//draw_circle_color(room_width/2,room_height/2 + timerYoffset,timerInnerSize/2,make_color_rgb(25,25,25),make_color_rgb(25,25,25),false);
draw_circle_color(room_width/2,room_height/2 + timerYoffset,timerInnerSize/2,make_color_rgb(20,20,20),make_color_rgb(20,20,20),false);
draw_circle_color(room_width/2,room_height/2 + timerYoffset,timerInnerSize2/2,make_color_rgb(25,25,25),make_color_rgb(25,25,25),false);
//draw_line_width_color(room_width/2,room_height/2 + timerYoffset,lend_x,lend_y,10,c_red,c_red);
//draw_line_width_color(room_width/2 + lengthdir_x(250,0),room_height/2 + timerYoffset + lengthdir_y(250,0),lend_x,lend_y,5,c_yellow,c_yellow);
var seconds = global.timerTime;
while seconds >= 60 {
	seconds -= 60;
}
var secondsDraw = seconds;
if secondsDraw < 10 {
	secondsDraw = "0" + string(floor(seconds));
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
if drawMins = 0 && hoursDraw = 0 {
	drawMins = "";
}
else {
	if drawMins < 10 {
		drawMins = "0" + string(drawMins) + ":";
	}
	else {
		drawMins = string(drawMins) + ":";
	}
}
//draw_rectangle_color((room_width/2) + 1 - 130,(room_height/2)+timerYoffset - 44,(room_width/2) + 1 + 130,(room_height/2)+timerYoffset + 44,c_red,c_red,c_red,c_red,true);
scribble("[scale,2.5][fa_center][fa_middle][#FFFFFF][ThaleahFatOutline]" + drawActualHours + drawMins + secondsDraw).fit_to_box(260,88,false).draw((room_width/2) + 1,(room_height/2)+timerYoffset + 8);