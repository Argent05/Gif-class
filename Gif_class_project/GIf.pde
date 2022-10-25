class Gif {
  // String 1, String 2 int numFrames, speed - every 5th frames it updates (mod opereator int x int y int w int h
  //instance variables
  String before, after;
  int numFrames, speed, x, y, w, h;

  // Gif portion of the instance variables
  PImage[] gif;

  int f; // defaults sets it to 0


  // you put a value into the parameters in the main tab, then it goes into the parameters for the constructor here. You want to make it so that for example, _before = before so the value of _before is stored into before and cna be brought into other parts of the class to be used.
  //constructor     --- you define new variables here so that they can be assigned to the global variables intialized above
  Gif(String _before, String _after, int _numFrames, int _speed, int _x, int _y, int _w, int _h) {
    before = _before;   // before becomes _before when it runs in the main tab?
    after = _after;
    numFrames = _numFrames;
    speed = _speed;
    x = _x;
    y = _y;
    w = _w;
    h = _h;


    gif = new PImage[numFrames];
    int i = 0;
    while ( i < numFrames) {
      gif[i] = loadImage(before +i + after);
      i++;
    }
  }

  Gif(String _before, String _after, int _numFrames, int _speed, int _x, int _y) {
    before = _before;   // before becomes _before when it runs in the main tab?
    after = _after;
    numFrames = _numFrames;
    speed = _speed;
    x = _x;
    y = _y;


    //this constructs the gif so you should put it in the constructor so it only runs once. It would work in other places but best here so it wont lag



    gif = new PImage[numFrames];
    int i = 0;
    while ( i < numFrames) {
      gif[i] = loadImage(before + i + after);
      i++;
    }
    w = gif[0].width;
    h = gif[0].height; // sets the width and height to the default
  }





  void show() {
    //gif  code here

    if ( f == numFrames) f = 0;
    image(gif[f], 0, 0, w, h);
    if (frameCount % speed == 0) f++;
  }
}
