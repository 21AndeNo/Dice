Die die_a;
void setup() {    
    noLoop();
    background(255);
    size(300, 300);
    die_a = new Die(125, 125);
}

void draw() {    
    background(255);
    die_a.show();
    
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
    dotNum = 2;  
    }        
    void roll() {
        //dotNum = (int)(Math.random()*6)+1
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
            case    
        }
    }
}
