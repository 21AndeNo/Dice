Die[] coolDice;

void setup() {
  noLoop();
  background(255);
  size(300, 300);
  coolDice = new Dice[9];
  for(int i = 0; i < coolDice.length; i++) {
    for(int y = 0; y < 250; y += 75) {
      for(int x = 0; x < 250; x += 75) {
        coolDice[i] = new Die(x, y);
      }
    }    
  }
}

void draw() {    
  background(255);
  for(int i = 0; i < coolDice.length; i++) {
    coolDice[i].roll();
    coolDice[i].show();    
  }
}

void mousePressed() {    
  redraw();
}

class Die { 
  //models one single dice cube    
  //variable declarations here
  int x, y, dotNum;
  Die(int _x, int _y) { //constructor        
    //variable initializations here  
    x = _x;
    y = _y;
    dotNum = (int)(Math.random()*6)+1;
  }        
  void roll() {
    dotNum = (int)(Math.random()*6)+1;
  }   
  void show() {
    rect(x, y, 50, 50, 10);
    switch (dotNum) {
      case 1:
        ellipse(x+25, y+25, 5, 5);
      break;
      case 2:
        ellipse(x+10, y+10, 5, 5);
        ellipse(x+40, y+40, 5, 5);
      break;
      case 3:
        ellipse(x+10, y+10, 5, 5);
        ellipse(x+25, y+25, 5, 5);
        ellipse(x+40, y+40, 5, 5);
      break;
      case 4:
        ellipse(x+10, y+10, 5, 5);
        ellipse(x+40, y+10, 5, 5);
        ellipse(x+10, y+40, 5, 5);
        ellipse(x+40, y+40, 5, 5);
      break;
      case 5:
        ellipse(x+10, y+10, 5, 5);
        ellipse(x+40, y+10, 5, 5);
        ellipse(x+10, y+40, 5, 5);
        ellipse(x+40, y+40, 5, 5);
        ellipse(x+25, y+25, 5, 5);
      break;
      case 6:
        ellipse(x+10, y+10, 5, 5);
        ellipse(x+40, y+10, 5, 5);
        ellipse(x+10, y+40, 5, 5);
        ellipse(x+40, y+40, 5, 5);
        ellipse(x+10, y+25, 5, 5);
        ellipse(x+40, y+25, 5, 5);
      break;
      default:
        ellipse(x+25, y+25, 5, 5);
    }
  }
}
