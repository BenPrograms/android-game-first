public class Player{
  Particle[] p = new Particle[20];
  
  private int time = 0;
  
  private int x = 0;
  private int dx = 20;
  private int y = 0;
  private int dy = 20;
  
  private color Color;
  
  private int size = 100;
  
  public void begin(){
    Color = color(255, 255, 255);
    
    for(int i = 0; i < p.length; i++){
      p[i] = new Particle();
    }
  }
  
  public void moveRight(){
    x += dx;
  }
  public void moveLeft(){
    x -= dx;
  }
  public void display(){  
    for(int i = 0; i < p.length; i++){
      p[i].show(random(x - 45, x + 45));
    }
  
    for(int i = 0; i < p.length; i++){
      if(p[i].gety() >= height){
      
        p[i].sety(height - 200);
      }
    }
    
    strokeWeight(4);
    stroke(90);
    fill(255);
    
    triangle(x, y, x - 80, y + 200, x + 80, y + 200);
    triangle(x - 80, y + 200, x, y + 200, x - 30, y + 260);
    triangle(x, y + 200, x + 80, y + 200, x + 30, y + 260);
    
    strokeWeight(4);
    stroke(90);
    line(x, y, x - 15, y + 200);
    line(x, y, x + 15, y + 200);
    line(x, y, x - 30, y + 200);
    line(x, y, x + 30, y + 200);
    line(x, y, x - 45, y + 200);
    line(x, y, x + 45, y + 200);
    line(x, y, x - 60, y + 200);
    line(x, y, x + 60, y + 200);
    line(x, y, x - 75, y + 200);
    line(x, y, x + 75, y + 200);
    
    noFill();
    arc(x, y + 65, 50, 50, PI, TWO_PI);
    arc(x, y + 80, 60, 60, PI, TWO_PI);
    arc(x, y + 95, 70, 70, PI, TWO_PI);
    arc(x, y + 110, 80, 80, PI, TWO_PI);
    arc(x, y + 125, 90, 90, PI, TWO_PI);
    arc(x, y + 140, 100, 100, PI, TWO_PI);
    arc(x, y + 155, 110, 110, PI, TWO_PI);
    arc(x, y + 170, 120, 120, PI, TWO_PI);
    arc(x, y + 185, 130, 130, PI, TWO_PI);
    arc(x, y + 200, 140, 140, PI, TWO_PI);
    arc(x, y + 200, 120, 120, PI, TWO_PI);
    arc(x, y + 200, 100, 100, PI, TWO_PI);
    arc(x, y + 200, 80, 80, PI, TWO_PI);
    arc(x, y + 200, 60, 60, PI, TWO_PI);
    arc(x, y + 200, 40, 40, PI, TWO_PI);
    line(x, y, x + 78, y + 200);
    line(x, y, x - 78, y + 200);


  
    
  }
  public void setdx(int dx){
    this.dx = dx;
  }
  public void setdy(int dy){
    this.dy = dy;
  }
  public void setx(int x){
    this.x = x;
  }
  public void sety(int y){
    this.y = y;
  }
  public int getx(){
    return this.x;
  }
  public int gety(){
    return this.y;
  }
  public int getdx(){
    return this.dx;
  }
  public int getdy(){
    return this.dy;
  }
}