PFont f;

int pixelsize = 4;
int gridsize  = pixelsize * 7 + 5;
Player blue;



void setup() {
  blue = new Player();
    background(0);
    noStroke();
    size(800, 550);
    f = createFont("Arial", 36, true);
}

void drawspaceship(String sprite[], int x, int y ){
for (int i = 0; i < sprite.length; i = i+1) {
  String row = (String) sprite[i];
  for (int j = 0; j < row.length(); j = j+1) {
    
if (row.charAt(j) == '1') {
                    rect(x+(j * pixelsize), y+(i * pixelsize), pixelsize, pixelsize);
                }

  }
}
}


void draw(){
fill(155);
background(0);
blue.move();
   blue.drawspaceship();
   String[] sprite = new String[5];
   sprite[0] = "0010100";
   sprite[1] = "0110110";
   sprite[2] = "1111111";
   sprite[3] = "1111111";
   sprite[4] = "0111110";
   //drawspaceship(sprite, 355,465);
   
   
  

fill(255,0,0);

  String[] enemySprite = new String[5];
  enemySprite[0] = "0010100";
  enemySprite[1] = "0110110";
  enemySprite[2] = "1111111";
  enemySprite[3] = "1111111";
  enemySprite[4] = "0111110";
  for (int i = 0; i<14; i= i+1){
    for (int j = 0; j<3; j= j+1){
      drawspaceship(enemySprite, i*50+60,j*50+60);
    }
  } 
}

int a=1;
int b=2;

int Plusrechnen(int x, int y){
  int Ergebnis = x+y;
  return Ergebnis;
} 

int Kommpletesergebnis= Plusrechnen(a,b);
int z = Plusrechnen(6,5);



class Player {
 int x;
 int y;
 String[] sprite;
 Player(){
   x = 355;      // position des schiffes gegeben 
   y = 465;      // position des schiffes gegeben 
   // darstellung des Raumschiffes
   sprite = new String[5];
   sprite[0] = "0010100";
   sprite[1] = "0110110";
   sprite[2] = "1111111";
   sprite[3] = "1111111";
   sprite[4] = "0111110";
 }
  // zeichnet das Raumschiff
 void drawspaceship(){
   for (int i = 0; i < sprite.length; i = i+1) {
     String row = (String) sprite[i];
     for (int j = 0; j < row.length(); j = j+1) {
      // buchstabe und zeichen an stelle j 
       if (row.charAt(j) == '1') {
         rect(x+(j * pixelsize), y+(i * pixelsize), pixelsize, pixelsize);
       }   // funktion mit argumente 
                    // blau ist eine funktion die durch die programiersprache bereitgestellt wird            
      }
    }
  }
  
  void move(){
  if (keyPressed && key== 'a') {
    x= x-5;
    if( x<0){
      x=800;     
    }
  } 
  if(keyPressed && key=='d'){
    x= x+5;
    if(x>800){
      x=0;
  } }
  if(keyPressed && key=='w'){
    y= y-5;
    if(y<0){
    y=550;}
  }
  if(keyPressed && key== 's'){
   y= y+5;
   if(y>550){
     y=0;}
   
}

  }
}
class Enemy{
  int x;
  int y;
  String[] sprite;
  Enemy(int xpos, int ypos){
   x = xpos;
   y = ypos;
   
   sprite  = new String[5];
   sprite[0] = "1011101";
   sprite[1] = "0101010";
   sprite[2] = "1111111";
   sprite[3] = "0101010";
   sprite[4] = "1000001";
 }
 
 // zeichnet das Raumschiff
 void drawspaceship(){
   for (int i = 0; i < sprite.length; i = i+1) {
     String row = (String) sprite[i];
     for (int j = 0; j < row.length(); j = j+1) {
      // buchstabe und zeichen an stelle j 
       if (row.charAt(j) == '1') {
         rect(x+(j * pixelsize), y+(i * pixelsize), pixelsize, pixelsize);
       }   // funktion mit argumente 
                    // blau ist eine funktion die durch die programiersprache bereitgestellt wird            
      }
    }
  }
 void move(){
   if (frameCount%60==0){
     x=x+(gridsize*direction);
   }
   if (increaseY){
     y=y+(gridsize/2);
   }
  }
  
  boolean outside() {
        return x + (direction*gridsize) < 0 || x + (direction*gridsize) > width - gridsize;
    }
}
