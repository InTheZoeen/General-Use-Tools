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
if room = rOptions {
	if global.globalTimer = true && global.timerTime > 0 {
		scribble("[scale,1.0][fa_center][fa_middle][#FFFFFF][ThaleahFatOutline]" + drawActualHours + drawMins + secondsDraw).draw(x,y + 5);
	}
}
if room = rHub {
	if global.globalTimer = true && global.timerTime > 0 {
		scribble("[scale,1.0][fa_center][fa_middle][#FFFFFF][ThaleahFatOutline]" + drawActualHours + drawMins + secondsDraw).draw(x,y + 5);
	}
}
if room = rTools {
	if global.globalTimer = true && global.timerTime > 0 {
		scribble("[scale,1.0][fa_center][fa_middle][#FFFFFF][ThaleahFatOutline]" + drawActualHours + drawMins + secondsDraw).draw(x,y + 5);
	}
}
if room = rCalculator {
	if global.globalTimer = true && global.timerTime > 0 {
		scribble("[scale,1.0][fa_center][fa_middle][#FFFFFF][ThaleahFatOutline]" + drawActualHours + drawMins + secondsDraw).draw(x,y + 5);
	}
}