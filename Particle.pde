public class Particle{
  private float y = height - 200;
  private float speed = random(5,15);
  
  public void begin(){

  }
  
  public void show(float x){
    noStroke();
    fill(color(255, 120, 0));
    y += speed;
    ellipse(x, y, 15, 15);
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
}