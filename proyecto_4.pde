import gab.opencv.*;
import java.awt.Rectangle;
import processing.video.*;

OpenCV opencv;
Capture video;
Rectangle[] faces;

float n=0;
PImage oreja1,oreja2,orejasZorro,coronita,lentes,nariz,letras;
int contador;
int pantalla=1;

pantalla p1,p2;

void setup()
{
  size (640,480);
  background (255);
  
  oreja1 = loadImage("oreja1.png");
  oreja2 = loadImage("oreja2.png");
  orejasZorro = loadImage("orejasZorro.png");
  coronita = loadImage("coronita.png");
  lentes = loadImage("lentes.png");
  nariz = loadImage("nariz.png");
  letras = loadImage("letras.png");
  
  p1 = new pantalla(1);
  p2 = new pantalla(2);
  
  opencv = new OpenCV(this, "test.jpg");
  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
  faces = opencv.detect();
  
  video.start();
}

void draw()
{
    keyPressed();
    
}
