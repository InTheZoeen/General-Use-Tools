normXscale = image_xscale;
normYscale = image_yscale;
wavedraw = false;
text = "notset";

layTemp = layer_get_id("tempButtons");
layLen = layer_get_id("lenButtons");
layTime = layer_get_id("timeButtons");
layMass = layer_get_id("massButtons");
layVol = layer_get_id("volButtons");

//instance_deactivate_layer(layTemp);
instance_deactivate_layer(layLen);
instance_deactivate_layer(layTime);
instance_deactivate_layer(layMass);
instance_deactivate_layer(layVol);

global.convertType = "Temperature";
global.convertBoxOneType = "Fahrenheit";
global.convertBoxTwoType = "Celsius";

if id = inst_51BFED70.id {
	text = "Temperature";
}
if id = inst_6B81901.id {
	text = "Length";
}
if id = inst_63C55C4F.id {
	text = "Time";
}
if id = inst_12F2EF9C.id {
	text = "Mass";
}
if id = inst_17FF3C45.id {
	text = "Volume";
}

if layTemp = layer {
	if id = inst_270FCFFA.id {
		text = "Fahrenheit";
	}
	if id = inst_2B5F9D9B.id {
		text = "Celsius";
	}
	if id = inst_8F1C155.id {
		text = "Kelvin";
	}
}

if layLen = layer {
	if id = inst_1D751550.id {
		text = "Inches";
	}
	if id = inst_6D4BA8DA.id {
		text = "Feet";
	}
	if id = inst_5B132A17.id {
		text = "Yards";
	}
	if id = inst_54425828.id {
		text = "Miles";
	}
	if id = inst_1A77A796.id {
		text = "Centimeters";
	}
	if id = inst_28F11D5B.id {
		text = "Meters";
	}
	if id = inst_7DE5932F.id {
		text = "Kilometers";
	}
}

if layTime = layer {
	if id = inst_4AEE1A7A.id {
		text = "Milliseconds";
	}
	if id = inst_1BB47C15.id {
		text = "Seconds";
	}
	if id = inst_1C984612.id {
		text = "Minutes";
	}
	if id = inst_DA16D11.id {
		text = "Hours";
	}
	if id = inst_3D886A1E.id {
		text = "Days";
	}
	if id = inst_39965EB7.id {
		text = "Weeks";
	}
	if id = inst_423BFBAA.id {
		text = "Months";
	}
	if id = inst_1B12D82.id {
		text = "Years";
	}
}

if layMass = layer {
	if id = inst_12A023F1.id {
		text = "Milligrams";
	}
	if id = inst_25924BD7.id {
		text = "Grams";
	}
	if id = inst_54A9A9AF.id {
		text = "Kilograms";
	}
	if id = inst_1E5BB1C3.id {
		text = "Met tons";
	}
	if id = inst_1EF4C903.id {
		text = "Ounces";
	}
	if id = inst_737059C6.id {
		text = "Pounds";
	}
	if id = inst_2AC1CFFB.id {
		text = "Imp tons";
	}
	if id = inst_7EB420D2.id {
		text = "Stone";
	}
}

if layVol = layer {
	if id = inst_3CB365E0.id {
		text = "US Tsp";//us teaspoon
	}
	if id = inst_4828EFA2.id {
		text = "US Tbsp"; //us tablespoon
	}
	if id = inst_22DB5B6F.id {
		text = "US Cups"; 
	}
	if id = inst_2E6ADD92.id {
		text = "US Pints";
	}
	if id = inst_2B1A6A0.id {
		text = "US Quarts";
	}
	if id = inst_45533461.id {
		text = "US Gallons";
	}
	if id = inst_2682FA0B.id {
		text = "Milliliters";
	}
	if id = inst_6BB7168E.id {
		text = "Liters";
	}
}