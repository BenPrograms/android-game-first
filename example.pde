Player player = new Player();
Block block = new Block();
//Star[] star = new Star[30];
public int time = 0;
public int score = 0;

void setup(){
  orientation(LANDSCAPE);
  size(displayWidth, displayHeight);
  
  //for(int i = 0; i < star.length; i++){
    //star[i] = new Star();
  //}
  
  mouseX = width / 2;
  block.begin();
  
  player.setx(width / 2);
  player.sety(height - 400);
  player.begin();

}

void draw(){
  time++;
  
  if(player.getx() > width){
    player.setx(0);
  }
  if(player.getx() < 0){
    player.setx(width);
  }
  if(block.gety() >= height){
    block.sety(-310);
    block.setsize(random(300, width / 2 - 70));
    
    score++;
  }
  
  background(color(36, 115, 27));  
  
  //for(int i = 0; i < star.length; i++){
    //star[i].show();
  //}
  
  //for(int i = 0; i < star.length; i++){
    //if(star[i].gety() >= height){
      
      //star[i].sety(random(0, -300));
    //}
  //}
  
  block.show();
  
  if(mouseX >= width / 2){
    player.moveRight();
  }
  if(mouseX <= width / 2){
    player.moveLeft();
  }
  //collisions
  if(block.gety() + 150 >= player.gety()){
    if(player.getx() <= block.getx() + block.getsize()){
      if(player.getx() + 100 >= block.getx()){
        
        score = 0;
      }
    }
  }
  
   //collisions
  if(block.gety() + 150 >= player.gety()){
      if(player.getx() + 100 >= block.getx() + block.getsize() + 600){
        
        score = 0;
      }
  }
  
  player.display();
  
  fill(255, 255, 255);
  textSize(300);
  text("" + score, width / 2, height / 4); 
}