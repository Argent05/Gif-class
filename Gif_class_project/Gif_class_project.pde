
Gif banana1,banana2,pond;

void setup(){
  size(800,800);
 // pond = new Gif(
  //banana has 8 frames
 banana1 = new Gif("dancing_banana/frame_","_delay-0.1s.gif",8,2,10,10,200,200);
 //banana2 = new Gif("dancing_banana/frame_","_delay-0.1s.gif",8,400,30,30,200,200);
 pond = new Gif("koi_pond/frame_","_delay-0.16s.gif",16,10,0,0,width,height); 
}



void draw(){
  
 
 // banana2.show();
  pond.show();
   banana1.show();
  
}
