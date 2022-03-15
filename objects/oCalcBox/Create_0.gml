normXscale = image_xscale;
normYscale = image_yscale;
wavedraw = false;
text = "notset";
global.numStart = false;
global.numVal1 = 0;
global.currentvalue = "numVal1";
global.modifier = 0;
global.charge = "+";
global.numVal2 = 0;
global.drawNumVal2 = false;

if room = rCalculator {
	if id = inst_53945A7A.id {
		text = "+";
	}
	else
	if id = inst_D92AD31.id {
		text = "-";
	}
	else
	if id = inst_372D9B2.id {
		text = "x";
	}
	else
	if id = inst_795B2DC5.id {
		text = "/";
	}
	else
	if id = inst_4A779BD7.id {
		text = "0";
	}
	else
	if id = inst_F785F96.id {
		text = "3";
	}
	else
	if id = inst_58A536DF.id {
		text = "2";
	}
	else
	if id = inst_5C9998C3.id {
		text = "1";
	}
	else
	if id = inst_2CC2F5A.id {
		text = "4";
	}
	else
	if id = inst_19CDF6F5.id {
		text = "5";
	}
	else
	if id = inst_1D4E5F0C.id {
		text = "6";
	}
	else
	if id = inst_52081237.id {
		text = "ANS";
	}
	else
	if id = inst_5EB48BBE.id {
		text = "7";
	}
	else
	if id = inst_45E3E275.id {
		text = "8";
	}
	else
	if id = inst_4C4CA5AC.id {
		text = "9";
	}
	else 
	if id = inst_7AAA7634.id{
		text = "=";
	}
	else 
	if id = inst_376EFD9A.id{
		text = "+/-";
	}
	else 
	if id = inst_76CF43C3.id{
		text = "DEL";
	}
	else 
	if id = inst_247B5B6.id{
		text = "CLEAR";
	}
	else 
	if id = inst_122FB7CB.id{
		text = "QUIT";
	}
}