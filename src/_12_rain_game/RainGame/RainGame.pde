int y = 0;
int z = 0;
int a = 0;
int b = 0;
int c = 0;
int score = 0;
int random1 = (int)random(500);
int random2 = (int)random(500);
int random3 = (int)random(500);
int random4 = (int)random(500);
int random5 = (int)random(500);
void setup(){
  
  size(500, 500);
}

void draw(){
  
  background(#BBEDFA);
  fill(#0F94F7);
  stroke(#88B9DE);
  ellipse(random5, y, 10, 20);
  y = y + 5;
  fill(#AFB2B4);
  noStroke();
  rect(mouseX, 400, 50, 70);
  fill(#0F94F7);
   stroke(#88B9DE);
  if(y > 500){
    ellipse(random1, z, 10, 20);
    z = z + 5;
  }
  if(z > 500){
    ellipse(random2, a, 10, 20);
    a = a + 5;
  }
  if(a > 500){
    ellipse(random3, b, 10, 20);
    b = b + 5;
  }
  if(b > 500){
    ellipse(random2, c, 10, 20);
    c = c + 5;
  }
  
  fill(0, 0, 0);
  textSize(16);
  text("Score: " + score, 20, 20);
}

  
 void checkCatch(int x){
         if (x > mouseX && x < mouseX+100)
            score++;
         else if (score > 0) 
            score--;
        println("Your score is now: " + score);
    }
