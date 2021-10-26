float r = 100;
float angle;
float x;
float y;
float t;
ArrayList<PVector> points=new ArrayList<PVector>();
void setup() {
  fullScreen(P3D);
  background(0);
  sphereDetail(10);
  colorMode(HSB);
}

void draw() {

  background(0);

  noFill();
  translate(width/2, height/2);
  rotateY(angle);
  beginShape();
  stroke((100*t)%255, 255, 255);
  for (PVector point : points) {
    vertex(point.x, point.y);
  }
  endShape();
  x=120*sin(t)*(exp(cos(t)) - 2*cos(4*t) - pow((sin(t/12)), 5));
  y=-120*cos(t)*(exp(cos(t)) - 2*cos(4*t) - pow((sin(t/12)), 5));
  stroke(255);
  fill((100*t)%255, 255, 255);
  pushMatrix();
  translate(x, y);
  rotateY(angle);
  sphere(20);
  popMatrix();
  points.add(new PVector(x, y));
  t+=0.01;
  angle+=0.01;
}
