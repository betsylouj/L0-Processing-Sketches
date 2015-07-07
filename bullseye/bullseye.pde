int on  = 1;
for (int radius=100;radius>0;radius-=10)
{
  
    ellipse(50,50,radius,radius);
  if (on == 1)
  {
    fill(255,0,0);
    on = 0;
  }
  else
  {
    fill(255,255,255);
    on = 1;
  }
  
}
