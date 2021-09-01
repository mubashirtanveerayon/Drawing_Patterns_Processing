ArrayList<PVector> points;
float x=0.01,y=0.00,z=0.00,a=10.00,b=28.00,c=8.00/3.00;

void setup(){
	size(400,400,P3D);
	points = new ArrayList<PVector>();
frameRate(120);
}

void draw(){
  background(250);
	noFill();
	float dt = 0.01;
	float dx = (a*(y-x))*dt;
	float dy = (x*(b-z)-y)*dt;
	float dz = (x*y-c*z)*dt;
	x += dx;
	y += dy;
	z += dz;
	translate(width/2,height/2);
	scale(3);
	points.add(new PVector(x,y,z));
	beginShape();
  stroke(0);
	for(PVector v:points){
    //stroke(random(0,1)*355-x,100-random(0,1)*y,random(0,1)*250-z);
		vertex(v.x,v.y,v.z);
	}
	endShape();
}
