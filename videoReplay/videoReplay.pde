/**
 * Loop. 
 * 
 * Shows how to load and play a QuickTime movie file.  
 *
 */

import processing.video.*;

Movie movie;

void setup() {
  size(640, 360);
  background(0);
  // Load and play the video in a loop
  movie = new Movie(this, "transit.mov");
  
  movie.loop();
  movie.jump(0);
  movie.pause();
}

void movieEvent(Movie m) {
  if(m.available()){
    m.read();
  }
}

void draw() {
  
  image(movie, 0, 0, width, height);
  
  if (movie.time() == movie.duration()) {
    //movie.loop();
    movie.jump(0);
    movie.pause();
    //println("movie ends, back to begin");
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      movie.play();
      movie.jump(0);
      movie.pause();
    } else if (keyCode == RIGHT) {
        movie.play();
    }
  } 
}
