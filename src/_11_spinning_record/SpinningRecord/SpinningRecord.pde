PImage pictureOfRecord;

void setup(){
  
    size(600,600);
    pictureOfRecord= loadImage("record.jpeg"); 
  
}

void draw(){
  
  image(pictureOfRecord, 0, 0);
  pictureOfRecord.resize(600, 600);
  rotateImage(pictureOfRecord, 360);
  
}

void rotateImage(PImage image, int amountToRotate) {
        translate(width/2, height/2);
        rotate(amountToRotate*TWO_PI/360);
        translate(-image.width/2, -image.height/2);
    }
