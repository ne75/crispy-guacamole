 import processing.serial.*;
Serial myPort;

int[][] colors = {{0, 0, 0}, {255, 0, 0}, {0, 255, 0}, {0, 0, 255}, {255, 255, 0}, {255, 0, 255}, {0, 255, 255}, {255, 255, 255}};
int[] i0 = new int[8];
int[] i = new int[8];
int[] x0 = new int[8];
int[] active = new int[8];

void setup() { 
  size(1024, 512);
  String portName = Serial.list()[3]; //replace 0 with whatever port you want to use.
  myPort = new Serial(this, portName, 115200);
  background(128);
  myPort.readStringUntil(10);
  
  for (int i = 0; i < 8; i++) {
    x0[i] = -100;
  }
  
  drawGrid();
  
}

int x = 0;
float scl = 5;
int current = 0;
boolean dataStart = false;

void drawGrid() {
 
  int vGrid = 8;
  int hGrid = 4;
  
  stroke(200);
  strokeWeight(4);
  line(0, height/2, width, height/2);
  line(2, 0, 2, height);
  
  strokeWeight(1);
  
  for (int j = 0; j < vGrid; j++) {
    line(j*width/vGrid, 0, j*width/vGrid, height);
  }
   
  for (int j = 0; j < hGrid; j++) {
    line(0, j*height/hGrid, width, j*height/hGrid);
  }
  
}

void draw() {
  
  String s = null;
  
  while (myPort.available() > 0) {
    s = myPort.readStringUntil(10);
    
    if (s != null) {
      if (s.charAt(0) == '~') {
        dataStart = true;
        
        String val = s.substring(2);
        int n = 0;
        
        try { 
          n = Integer.parseInt(val.trim());
        } catch(NumberFormatException e) { 
          print(val); 
        }
        
        current = s.charAt(1) - 65;
        active[current] = 1;
        
        i[current] = n;
        
        if (x > width) {
          x = 0;
   
          background(128);
          drawGrid();
        }
        
      } else {
        print(s);
      }
    }
  } 
  
  for (int k = 0; k < 8; k++) {
    if (active[k] == 1) {
      strokeWeight(1);
      stroke(colors[k][0], colors[k][1], colors[k][2]);
      line(x, height - i0[k]/scl - height/2, x+1, height - (i[k]/scl) - height/2);
      i0[k] = i[k];
    } 
  }
  
  if (dataStart) {
    x++;
  }
}

