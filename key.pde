void keyPressed()
{
  if (pantalla==1)
  {
    p1.display();
    
    if (key=='N')
    {
      pantalla=2;
    }
  }
  
  if (pantalla==2)
  {
    p2.display();
    
    switch (key)
    {
      case 'A':
      contador=1;
      pantalla=3;
      break;
      
      case 'B':
      contador=2;
      pantalla=3;
      break;
      
      case 'C':
      contador=3;
      pantalla=3;
      break;
      
      case 'D':
      contador=4;
      pantalla=3;
      break;
    }
  }
  
  if (pantalla==3 && contador!=0)
  {
    camer();
    
    if (key=='E')
    {
      pantalla=2;
      contador=0;
    }
    
    if (key==CODED && keyCode==ESC)
    {
      exit();
    }
    
    
  }
}
