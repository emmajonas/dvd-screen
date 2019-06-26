float x = 100, y = 100, speedX = 1.2, speedY = 1.2, hue = 0;

void setup(){
  size(300,200);
  colorMode(HSB, 360,100,100);
}

void draw(){
  background(0);
  fill(hue, 75, 75);
  ellipse(x, y, 60, 40);
  
  fill(360);
  textSize(18);
  text("DVD", x-20, y+6);
  x += speedX;
  y += speedY;
  
  if(x >= width-20 || x <= 20){
    speedX = -speedX;
    hue += 20;
  }
  if(y >= height - 20 || y <= 20){
    speedY = -speedY;
    hue += 20;
  }
  if (hue >= 360){
    hue = 0;
  }
}