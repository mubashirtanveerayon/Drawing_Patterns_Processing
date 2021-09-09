float angle = 0;
float k = 160;/*this can be changed by pressing the up and down arrow key resulting in deifferent shapes of flower*/

ArrayList<PVector> points;

void setup(){
	size(450,450);
	points = new ArrayList<PVector>();
	noFill();
	frameRate(120);
}

void draw(){
	background(0);
	textSize(40);
	strokeWeight(3);
	fill(255);
	text(k,width-100,50);
	noFill();
	translate(width/2,height/2);
	float r = 200 * cos(k * angle);
	float x = r * cos(angle);
	float y = r * sin(angle);
	stroke(255);
	points.add(new PVector(x,y));
	beginShape();
	for(int i=0;i<points.size();i++){
		PVector v = points.get(i);
		vertex(v.x,v.y);
	}
	endShape();
	angle += 0.01;
}

void keyPressed(){
	points.clear();
	if(keyCode==UP){
		k++;
	}else if(keyCode==DOWN){
		k--;
	}
}
