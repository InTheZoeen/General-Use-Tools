function decimals(){
	var k = argument[0];
	var n = 0;
	while(k != floor(k)) {
	    n++;
	    k *= 10;
	}
	return n;
}