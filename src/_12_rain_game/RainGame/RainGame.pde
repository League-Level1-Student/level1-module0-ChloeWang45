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
  score(random5, y);
  fill(#AFB2B4);
  noStroke();
  rect(mouseX, 400, 50, 70);
  fill(#0F94F7);
   stroke(#88B9DE);
  if(y > 500){
    ellipse(random1, z, 10, 20);
    z = z + 5;
  }
  score(random1, z);
  if(z > 500){
    ellipse(random2, a, 10, 20);
    a = a + 5;
  }
  score(random2, a);
  if(a > 500){
    ellipse(random3, b, 10, 20);
    b = b + 5;
  }
  score(random3, b);
  if(b > 500){
    ellipse(random4, c, 10, 20);
    c = c + 5;
  }
  score(random4, c);
  
  fill(0, 0, 0);
  textSize(16);
  text("Score: " + score, 20, 20);
  
}

  void score(int x, int w){
  if(mouseX >= x && mouseX <= x + 50 && w == 400){
    score = score + 1;
  }
  else if(score > 0){
    score = score - 1;
    println("Your score is now: " + score);
  }
}
