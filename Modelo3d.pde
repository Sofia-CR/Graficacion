PShape flower;
PImage txtr;
float theta;

void setup() {
  size (500, 500, P3D);
  txtr = loadImage("fondo1.jpg");
  flower = loadShape("Lowpoly_tree_sample.obj");
  flower.setTexture(txtr); //attach texture to the 3D shape
}


void draw () {
  background (255,223,211);
  //lights();

  pushMatrix();
  translate (width/2, height/2);
  rotate(theta);
  rotateY(theta/2);
  scale (10);
  shape (flower);
  popMatrix();

  theta+=.01; //increment angle
}
