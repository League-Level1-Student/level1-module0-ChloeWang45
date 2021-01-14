void setup(){
  
  size(500, 500);
  background(#030101);
}

void draw(){
  
  int x = (int)random(500);
  int y = (int)random(500);
  makeMagical();
  for(int i = 0; i < 300; i++){
    fill(#FA2121);
    noStroke();
    ellipse(getWormX(i), getWormY(i), 15, 15);
  }
}
 float frequency = .001;
    float noiseInterval = PI;

    void makeMagical() {
        fill( 0, 10, 20, 10 );
        rect(0, 0, width, height);
        noStroke();
    }

    float getWormX(int i) {
        return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
    }

    float getWormY(int i) {
        return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
    }
