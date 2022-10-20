PImage[] gif;
int frames;
int f;

Gif banana1,banana2,pond;

void setup(){
  size(800,800);
 // pond = new Gif(
  //banana has 8 frames
 banana1 = new Gif("dancing_banana/frame_","_delay-0.1s.gif",8,10,50,50);  
}



void draw(){
  background(0);
  banana1.show();
  
  
}
