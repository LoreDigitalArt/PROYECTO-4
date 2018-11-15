class pantalla
{
  int np;
  PImage pantalla,pantalla2;
  
  pantalla(int np_)
  {
    np = np_;
  }
  
  void display()
  {
    switch (np)
    {
    case 1:
    pantalla = loadImage("p1.jpg");
    image (pantalla,0,0,width,height);
    break;
    
    case 2:
     pantalla2 = loadImage("p2.jpg");
     image (pantalla2,0,0,width,height);
    break;
    }
  }
  
}
