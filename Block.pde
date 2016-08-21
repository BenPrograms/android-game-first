public class Block{
  private float x = 0;
  private float rx = 0;
  private float dx = 10;
  private float y = -300;
  private float dy = 10;
  
  private int size = 300;
  private float speed = 10;
  
  private float bWidth;
  private float rWidth;
  
  public void begin(){
     bWidth = random(300, width / 2 - 70);
     rWidth = 2000;
  }
  
  public void show(){
    y += speed;
    fill(125);
    rect(x, y, bWidth, 150);
    fill(125);
    rect(bWidth + 600, y, rWidth, 150);
  }
  
  public void setx(float x){
    this.x = x;
  }
  public void setrx(float rx){
    this.rx = rx;
  }
  public void sety(float y){
    this.y = y;
  }
  public void setspeed(float speed){
    this.speed = speed;
  }
  public void setsize(float bWidth){
    this.bWidth = bWidth;
  }
  public void setRsize(float rWidth){
    this.rWidth = rWidth;
  }
  public float gety(){
    return this.y;
  }
  public float getx(){
    return this.x;
  }
  public float getsize(){
    return this.bWidth;
  }
  
  public float getRsize(){
    return this.rWidth;
  }
  public float getspeed(){
    return this.speed;
  }
}