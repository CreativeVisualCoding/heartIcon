PShape heart;

void setup(){
size(400,400,P3D);
background(0);
heart = loadShape("heart.svg");
}

void draw(){
background(0);
ellipseRotateX();
ellipseRotateY();
heart();
}

void ellipseRotateX(){
pushMatrix();
translate(width/2,height/2);
rotateX(radians(frameCount*HALF_PI*2));
ellipse(0,0,190,190);
popMatrix();

}

void ellipseRotateY(){
noFill();
stroke(255);
strokeWeight(3);
shapeMode(CENTER);
pushMatrix();
translate(width/2,height/2);
rotateY(radians(frameCount*HALF_PI*2));
ellipse(0,0,200,200);
popMatrix();
}

void heart(){
shapeMode(CENTER);
pushMatrix();
translate(width/2,height/2);
rotateY(radians(frameCount*HALF_PI*2));
shape(heart,0,0,90,90);
popMatrix();

}
