// Project by Ramon Rovirosa
// http://www.ramonrovirosa.com
// MAT 259 Winter 2013
// http://www.georgelegrady.com/?0f3dfc80
// Visualization based on software developed by Eliza Bradley for MAT259 Winter 2010
// 
// Download the libraries for processing 1.5.1: audioutils, BezierSQLib, colorutils, controlIP5, datautils, G4P, GLGraphics, json, peasycam, simutils, toxiclibs_p5, toxiclibscore, verletphysics, volumeutils 
//

import controlP5.*;
import java.util.*;
import java.io.*;
import peasy.org.apache.commons.math.*;
import peasy.*;
import peasy.org.apache.commons.math.geometry.*;
import javax.media.opengl.GL;
import processing.opengl.*;
import controlP5.*;

//import demos.common.TextureReader;
import javax.media.opengl.GL;
import javax.media.opengl.GLAutoDrawable;
import javax.media.opengl.GLEventListener;
import javax.media.opengl.glu.GLU;
import java.io.IOException;

import java.util.Random;
import g4p_controls.*;

//ControlP5 controlP5; //for GUI
PMatrix3D currCameraMatrix;
//ControlGroup l;
//Slider s;
//controlP5.Button b;

Integrator slide; 
PGraphics3D g3;
//Textlabel mySmallTextlabel;
float cLength = 70; 


PImage world;





// NOTES: utilizes Quarks' shapes3d library, adapted from example of earth
//http://processing.org/discourse/yabb2/YaBB.pl?num=1259917547/15
// Thanks to Reza Ali (http://www.syedrezaali.com/blog/) for the 3D axis example and the orb code 
//import shapes3d.*;
//import shapes3d.utils.*;
//PImage orb; 
PeasyCam cam;
int squareSize = 30;  
int gridInterval = 30; 
int PLOTX1, PLOTX2;
int PLOTY1, PLOTY2;
int PLOTZ1, PLOTZ2;
int DATAMIN, DATAMAX;
int DATAMINZ, DATAMAXZ;
int XMIN, XMAX;
int XINTERVAL; 
int YINTERVAL; 
int ZINTERVAL; 
float[] rotations = new float[3]; 

float angNS, angEW;
float x0,y0,z0;
float earthRadius=200;
float lat0=47.6;
float lng0=-122.3;


int alphavalue=255;
int alpha_labels;
int alpha_map;
int alpha_grid;
int alpha_obj;
int alpha_labels_start=149;//60;
int alpha_map_start=118;//30;
int alpha_grid_start=30;//5;
int alpha_obj_start=20;

boolean view_map = true; 
boolean view_grid = true; 
boolean view_labels = true; 
boolean fade_alpha = true; 
boolean t_graphic=true;

PGraphics pgl;
GL gl;

PFont font_map;
PFont font_sliders;

void setup(){
  size(900,600,P3D);
  hint(DISABLE_OPENGL_2X_SMOOTH);
  hint(ENABLE_OPENGL_4X_SMOOTH); 
  hint(ENABLE_DEPTH_SORT);   
  smooth();
  frameRate(1000);       //set the frameRate of the Visualization 
  font_map = loadFont("ArialNarrow-Bold-14.vlw");
  font_sliders=loadFont("Calibri-16.vlw");
  //orb = loadImage("orb.png");  
  alpha_labels=alpha_labels_start;
  alpha_map=alpha_map_start;
  alpha_grid=alpha_grid_start;
  alpha_obj=alpha_obj_start; 
  PLOTX1 = -180; 
  PLOTX2 = 180; 
  PLOTY1 = -90; 
  PLOTY2 = 90; 
  PLOTZ1 = 0; 
  PLOTZ2 = 140; 
  DATAMIN = -90; 
  DATAMAX = 90;
  DATAMINZ = 9; 
  DATAMAXZ = 23;
  XMIN = -180; 
  XMAX = 180; 
  XINTERVAL = 30; 
  YINTERVAL = 30; 
  ZINTERVAL = 3;  
//  println("KEY CONTROLS:");
//  println("-view grid \t\tg");
//  println("-view map \t\t\tm");
//  println("-view labels \t\tl");
//  println("-start animation \t\ts");
//  println("-color fade \t\tf");
  world = loadImage("world.png");
    
 
  
  G4P.registerSketch(this);
  
  cam = new PeasyCam(this,(PLOTX1+PLOTX2)*.5,(PLOTY1+PLOTY2)*.5,(PLOTZ1+PLOTZ2)*.5, 400);
  cam.setMinimumDistance(1);
  cam.setMaximumDistance(5000);
  cam.setSuppressRollRotationMode();
  slide = new Integrator(700, 0.3, 0.8);
 
  // Create a collapsible panel
  // (this, tab title, x, y, width, height
  
  //G4P.setGlobalColorScheme(GCScheme.YELLOW_SCHEME);
  
  //cam.beginHUD();
  //GUIControls();
  //cam.endHUD();
  
  setupTitlesArea();
  
  getCountryLatLong();
  loadData("./data/savedData.txt");
   
}

void draw(){
  slide.update(); 
  smooth();
  background(0);
  
  //this moves the interface up and down
 
    if(mouseY > 500)
    {
      slide.target(500); 
      cam.setMouseControlled(false);
    }
    else
    {
     slide.target(580); 
     cam.setMouseControlled(true); 
    }

    rotations = cam.getRotations();
  

  if(view_map){
    tint(255,255,255,85);
   image(world,-180,-90,360,180);
  }
  
   //axis();   
   if(view_grid){
      drawGrid();
  }

  if(view_labels){
      drawAxisLabels();
      drawXLabels(); 
      drawYLabels(); 
    //drawZLabels();
   }
  
  drawPlot();
  drawTitle();
    
  int maxval=700;

//drawBezier(); //draws the red plotter things/boxes

  drawCyl();//draw cylinders
   
  cam.beginHUD();
  typeCountryBox();
  //println(typeCountry);
  
  //if(drawTitles == true)
    drawMovingTitles();
//  if(drawTitles ==  false){ 
//     titlesArea.setText("", 300);
//  }
  //println(drawTitles);
  cam.endHUD();
  
  //pgl.endGL(); 
    //gui(); 
} 

//void alphavalue_dec()
//{
// alphavalue=round(alphavalue-1); 
//}

void axis()
{
  smooth();
  strokeWeight(1);   
  int a= alpha_grid;;
  //stroke(255,a); 
  //line(PLOTX1,PLOTY1,PLOTZ1,PLOTX2,PLOTY1,PLOTZ1);
  
  //stroke(255,a); 
  
  //line(PLOTX1,PLOTY1,PLOTZ1,PLOTX1,PLOTY2,PLOTZ1);
  
  stroke(255,a); 
  
  line(PLOTX1,PLOTY1,PLOTZ1,PLOTX1,PLOTY1,PLOTZ2);
}

void drawBezier()
{
  
  for(int j=0; j<Countries.size(); j++){ 
    pushMatrix();
    translate(-122.329,-1*47.6,0);
 
      //imageMode(CENTER);
      
      
      
      noFill();
      ArrayList<String> CountriesDrawing = getWhatToDraw();
    
     stroke( Countries.get(j).getColorR(), Countries.get(j).getColorG(),  Countries.get(j).getColorB() );
     if(drawAll){
       int checkouts = (Countries.get(j).getCheckouts()<=200)? Countries.get(j).getCheckouts() : 200 ; 
       if(Countries.get(j).getCheckouts() > 1){
          bezier(0,0,0 , 0,0,checkouts, 122.329+Countries.get(j).getLong(), 47.6-Countries.get(j).getLat(), checkouts,  122.329+Countries.get(j).getLong(), 47.6-Countries.get(j).getLat(), 0 );
        }
        //println("Drawing All");
      }
     
     else if( CountriesDrawing.contains(Countries.get(j).getNames()) && Countries.get(j).getCheckouts() > 1){
        int checkouts = (Countries.get(j).getCheckouts()<=200)? Countries.get(j).getCheckouts() : 200 ; 

        bezier(0,0,0 , 0,0,checkouts, 122.329+Countries.get(j).getLong(), 47.6-Countries.get(j).getLat(), checkouts,  122.329+Countries.get(j).getLong(), 47.6-Countries.get(j).getLat(), 0 );
        showCount = "Checkouts: " + Countries.get(j).getCheckouts();
     }
     //if(
      
      //delay(100);
    imageMode(CORNER); 
    popMatrix();
 }
 //if(n<5759){n=n+1;}
}


