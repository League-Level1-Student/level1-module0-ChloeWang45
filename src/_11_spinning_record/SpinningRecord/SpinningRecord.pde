
PImage pictureOfRecord;

void setup(){
  
    size(600,600);
    pictureOfRecord = loadImage("record.png"); 
  
}

void draw(){
  
  int angle = 0;
  pictureOfRecord.resize(600, 600);
  image(pictureOfRecord, 0, 0);
  if(mousePressed){
    angle += 10;
    rotateImage(pictureOfRecord, angle);
  }
  
}

void rotateImage(PImage image, int amountToRotate) {
        translate(width/2, height/2);
        rotate(amountToRotate*TWO_PI/360);
        translate(-image.width/2, -image.height/2);
    }
