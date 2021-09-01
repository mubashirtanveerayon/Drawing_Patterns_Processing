void setup(){
	size(600,600);
	noFill();
	stroke(255);
}

void draw(){
	background(0);
	drawCircle(width/2,height/2,250);
}

void drawCircle(float x,float y,float d){
	circle(x,y,d);
	fill(155-x*0.5,y*0.5,155-d*0.5);
	if(d>2){
		drawCircle(x+0.5*d,y,d*0.5);
		drawCircle(x-0.5*d,y,d*0.5);
		drawCircle(x,y+0.5*d,d*0.5);
		//drawCircle(x,y-0.5*d,d*0.5);
	}
}