void setup(){
	size(768, 432);
}

void draw(){
	background(244, 0, 253);
	strokeWeight(2.5);

	a(219, 216);
	x(329, 216);
	e(439, 216);
	l(549, 216);

}

//Creates 'A'
void a(int x, int y){
	line(x-50, y+100, x, y-100);
	line(x, y-100, x+50, y+100);
	line(x-22, y, x+22, y);
}

//Creates 'X'
void x(int x, int y){
	line(x-50, y-100, x+50, y+100);
	line(x-50, y+100, x+50, y-100);
}

//Creates 'E'
void e(int x, int y){
	line(x-50, y-100, x-50, y+100);
	line(x-50, y-100, x+50, y-100);
	line(x-50, y, x+50, y);
	line(x-50, y+100, x+50, y+100);
}

//Creates 'L'
void l(int x, int y){
	line(x-50, y-100, x-50, y+100);
	line(x-50, y+100, x+50, y+100);
}
