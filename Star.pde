public class Star{
  private float x = random(width);
  private float y = random(-100, -1600);
  
  private float len = random(40,70);
  private float speed = random(5,15);
  
  public void begin(){

  }
  
  public void show(){
    stroke(0);
    y += speed;
    line(x, y, x, y + len);
    line(x - len /2, y + len /2, x + len / 2, y + len / 2);
  }
  
  public void setx(float x){
    this.x = x;
  }
  public void sety(float y){
    this.y = y;
  }
  public void setspeed(float speed){
    this.speed = speed;
  }
  public float gety(){
    return this.y;
  }
  public float getx(){
    return this.x;
  }
  
}