ArrayList<String> chars;
void setup(){
  size(400,400);
  colorMode(RGB,256);
  background(#ffffff);
  frameRate(100);
  
  PFont font = createFont("Naiv-Fat",42);
  textFont(font,24);
  
  chars = new ArrayList<String>();

}

void draw(){
  if(keyPressed){
    if(key == 'c'){
      chars = new ArrayList<String>();
      background(#ffffff);
    }else if(key == 'a'){
      for(int i = 0 ; i < chars.size() ; i++){
        printChar(chars.get(i));
      }
    }else{
      chars.add("" + key);
      printChar("" + key);
    }
  }
}

void printChar(String printChar){
  textSize(random(50));
  textAlign(CENTER);
  fill(random(256),random(256),random(256),random(256));
  text(printChar,random(width),random(height));
}
