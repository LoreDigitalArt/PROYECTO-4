void camer()
{
  scale(2);
  opencv.loadImage(video);

  image(opencv.getInput(), 0, 0);
  
  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  Rectangle[] faces = opencv.detect();
  println(faces.length);
  
  switch(contador)
  {
    case 1:
    for (int i = 0; i < faces.length; i++) 
    {
    println(faces[i].x + "," + faces[i].y);
    image (lentes,faces[i].x-3, faces[i].y+23, faces[i].width*1, faces[i].height*0.5);
    }
    break;
    
    case 2:
    for (int i = 0; i < faces.length; i++) 
    {
    println(faces[i].x + "," + faces[i].y);
    image (nariz,faces[i].x-5, faces[i].y+20, faces[i].width*1, faces[i].height*0.8);
    image (orejasZorro,faces[i].x-5, faces[i].y-50, faces[i].width*1, faces[i].height*0.9);
   
   
    
    }
    break;
    
    case 3:
    for (int i = 0; i < faces.length; i++) 
    {
    println(faces[i].x + "," + faces[i].y);
    image (oreja1,faces[i].x-30, faces[i].y-20, faces[i].width*0.4, faces[i].height*0.4);
    image (oreja2,faces[i].x+105, faces[i].y-20, faces[i].width*0.4, faces[i].height*0.4);
   
    
    }
    break;
    
    case 4:
    for (int i = 0; i < faces.length; i++) 
    {
    println(faces[i].x + "," + faces[i].y);
    image (coronita,faces[i].x+5, faces[i].y-30, faces[i].width*0.9, faces[i].height*0.5);
    image (oreja1,faces[i].x-30, faces[i].y-20, faces[i].width*0.4, faces[i].height*0.4);
    image (oreja2,faces[i].x+105, faces[i].y-20, faces[i].width*0.4, faces[i].height*0.4);
    }
    break;
  }
  
  
  
   noFill();
   noStroke();
   point(width/2 + cos(n) * 100, height/2 + sin(n) * 100);
   n=n+0.05;
}

void captureEvent(Capture c) {
  c.read();
}
