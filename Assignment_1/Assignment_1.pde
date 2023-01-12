/*
 Description: Assignment 1
 Author: William
 Date of last edit: Oct 24, 2019
 */
 
float window1;
 float window2W,window2H;  //Building 2
 float window3W,window3H;  //Building 3
 float window4W,window4H;  //Building 4
float moonX,sunX, moonR, moonG, moonB;  // Sun, Moon move X
float skyR, skyG, skyB; //Sky Fill
float cloudX1_1, cloudX1_2, cloudX1_3; //Cloud 1 move X
float cloudX2_1, cloudX2_2, cloudX2_3; //cloud 2 move X
float cloudX3_1, cloudX3_2, cloudX3_3; //cloud 4 move X
float cloudX4_1, cloudX4_2, cloudX4_3;//cloud 3 move X
int cloud_1_Opacity, cloud_2_Opacity, cloud_3_Opacity, cloud_4_Opacity; //Clouds Opacity
int building1R, building1G, building1B, b1LightR, b1LightG, b1LightB;  //Building 1 Fill
int building2, b2LightR, b2LightG, b2LightB;                           //Building 2 Fill    
int building2R, building3G, building3B, b3LightR, b3LightG, b3LightB;  //Building 3 Fill
int building4R, building4G, building4B, b4LightR, b4LightG, b4LightB;  //Building 4 Fill
int building5R, building5G, building5B, b5LightR, b5LightG, b5LightB;  //Building 5 Fill
int building6R, building6G, building6B, b6LightR, b6LightG, b6LightB;  //Building 6 Fill
int building7R, building7G, building7B, b7LightR, b7LightG, b7LightB;  //Building 7 Fill
int building8R, building8G, building8B, b8LightR, b8LightG, b8LightB;  //Building 7 Fill
int building9R, building9G, building9B, b9LightR, b9LightG, b9LightB;  //Building 7 Fill
int lampR, lampG, lampB, lamp_Opacity;
String sign;
int light_HouseR, light_HouseG, light_HouseB, light_House_Opacity; //light house

 
 void settings() {
   size(1000,600);
 }
 
 
void setup() {
//Building 1
window1 = 10;
 building1R= 217;
 building1G = 218;
 building1B = 219;
 b1LightR = 0;
 b1LightG = 0;
 b1LightB = 0;

 //Moon
 moonX = 0;
 
 
 //Sun
 sunX = 700;
 
//Sky
 skyR = 96;
 skyG = 197;
 skyB = 250;
 
 //Cloud 1
 cloudX1_1 = 90;
 cloudX1_2 = 125;
 cloudX1_3 = 105;
 cloud_1_Opacity = 255;
 
 //Cloud 2
 cloudX2_1 = 380;
 cloudX2_2 = 410;
 cloudX2_3 = 400;
 cloud_2_Opacity = 255;
 
 //Cloud 3
 cloudX3_1 = 660;
 cloudX3_2 = 690;
 cloudX3_3 = 670;
 cloud_3_Opacity = 255;
 
 //Cloud 4 
 cloudX4_1 = 895;
 cloudX4_2 = 935;
 cloudX4_3 = 905;
 cloud_4_Opacity = 255;
 
//Building 2
 window2W = 8;
 window2H = 20;
 building2 = 250;
 b2LightR = 30;
 b2LightG = 30;
 b2LightB = 30;
 
 //Building 3
 window3W = 58;
 window3H = 7;
 building2R = 245; 
 building3G = 148; 
 building3B = 29;
 b3LightR = 18;
 b3LightG = 36;
 b3LightB = 71;
 
 //Building 4
 window4W = 10;
 window4H = 20;
 building4R = 219;
 building4G = 104;
 building4B = 33;
 b4LightR = 14;
 b4LightG = 30;
 b4LightB = 82;
 
 //Building 5
 building5R = 46;
 building5G = 65;
 building5B = 84;
 b5LightR = 0;
 b5LightG = 0;
 b5LightB = 0;
 
 //Building 6
 building6R = 245; 
 building6G = 148; 
 building6B = 29;
 b6LightR = 18;
 b6LightG = 36;
 b6LightB = 71;
 //Building 7
 building7R = 45;
 building7G = 169;
 building7B = 173;
 b7LightR = 57;
 b7LightG = 61;
 b7LightB = 61;
 
 //Building 8 
 building8R = 219;
 building8G = 104;
 building8B = 33;
 b8LightR = 14;
 b8LightG = 30;
 b8LightB = 82;
 
 //Building 9
 building9R = 255;
 building9G = 201;
 building9B = 40;
 b9LightR = 57;
 b9LightG = 61;
 b9LightB = 61;
 
 //Lamp 
 lampR = 255;
 lampG = 255;
 lampB = 255;
 lamp_Opacity = 90 ;
 
 //Sign
 sign = "Welcome to Sakura City";

//lighthouse
light_HouseR = 0;
light_HouseG = 0;
light_HouseB = 0;
light_House_Opacity = 0;
 
}

void draw() {
 
  rect(0,0,width,height);
  
  background(255); 
  
  //Clear Sky
  strokeWeight(0);
  fill(skyR,skyG,skyB);
rect(0,0,width,height);
  
  
 
  //Building 2
  fill(building2);
  rect(47,340,60,260,10);
  
  //Building 2 Windows
  fill(b2LightR, b2LightG, b2LightB);
 rect(55,360,window2W,window2H,2);
  rect(72,360,window2W,window2H,2);
  rect(89,360,window2W,window2H,2);
  rect(55,385,window2W,window2H,2);
  rect(72,385,window2W,window2H,2);
  rect(89,385,window2W,window2H,2);
  rect(55,410,window2W,window2H,2);
  rect(72,410,window2W,window2H,2);
  rect(89,410,window2W,window2H,2);
  rect(55,435,window2W,window2H,2);
  rect(72,435,window2W,window2H,2);
  rect(89,435,window2W,window2H,2);
  rect(55,460,window2W,window2H,2);
  rect(72,460,window2W,window2H,2);
  rect(89,460,window2W,window2H,2);
  rect(55,485,window2W,window2H,2);
  rect(72,485,window2W,window2H,2);
  rect(89,485,window2W,window2H,2);
  rect(55,510,window2W,window2H,2);
  rect(72,510,window2W,window2H,2);
  rect(89,510,window2W,window2H,2);
  rect(55,535,window2W,window2H,2);
  rect(72,535,window2W,window2H,2);
  rect(89,535,window2W,window2H,2);
  rect(55,560,window2W,window2H,2);
  rect(72,560,window2W,window2H,2);
  rect(89,560,window2W,window2H,2);
  
  
  
  //Building 1
  fill(building1R,building1G,building1B);
  rect(1,400,50,200,7);
  
  //Building 1 Windows
  fill(b1LightR,b1LightG,b1LightB);
rect(10,415,window1,window1,2);
rect(30,415,window1,window1,2);
rect(10,430,window1,window1,2);
rect(30,430,window1,window1,2);
rect(10,445,window1,window1,2);
rect(30,445,window1,window1,2);
rect(10,460,window1,window1,2);
rect(30,460,window1,window1,2);
rect(10,475,window1,window1,2);
rect(30,475,window1,window1,2);
rect(10,490,window1,window1,2);
rect(30,490,window1,window1,2);
rect(10,505,window1,window1,2);
rect(30,505,window1,window1,2);
rect(10,520,window1,window1,2);
rect(30,520,window1,window1,2);
rect(10,535,window1,window1,2);
rect(30,535,window1,window1,2);
rect(10,550,window1,window1,2);
rect(30,550,window1,window1,2);
rect(10,565,window1,window1,2);
rect(30,565,window1,window1,2);


 
 
 
 //Building 4
 fill(building4R, building4G, building4B);
  rect(160,360,75,240,15,15,0,0);
  
  //Building 4 Windows
  fill(b4LightR, b4LightG, b4LightB);
  rect(171,370,window4W,window4H,3);
  rect(191,370,window4W,window4H,3);
  rect(211,370,window4W,window4H,3);
  rect(171,395,window4W,window4H,3);
  rect(191,395,window4W,window4H,3);
  rect(211,395,window4W,window4H,3);
  rect(171,420,window4W,window4H,3);
  rect(191,420,window4W,window4H,3);
  rect(211,420,window4W,window4H,3);
  rect(171,445,window4W,window4H,3);
  rect(191,445,window4W,window4H,3);
  rect(211,445,window4W,window4H,3);
  rect(171,470,window4W,window4H,3);
  rect(191,470,window4W,window4H,3);
  rect(211,470,window4W,window4H,3);
  rect(171,495,window4W,window4H,3);
  rect(191,495,window4W,window4H,3);
  rect(211,495,window4W,window4H,3);
  rect(171,520,window4W,window4H,3);
  rect(191,520,window4W,window4H,3);
  rect(211,520,window4W,window4H,3);
  rect(171,545,window4W,window4H,3);
  rect(191,545,window4W,window4H,3);
  rect(211,545,window4W,window4H,3);
 
  
   //Building 3
  fill(building2R, building3G, building3B);
  rect(105,390,70,210);
  
  //Building 3 Windows
  fill(b3LightR, b3LightG, b3LightB);
 rect(110,400,window3W,window3H,7);
 rect(110,413,window3W,window3H,7);
 rect(110,426,window3W,window3H,7);
 rect(110,439,window3W,window3H,7);
 rect(110,452,window3W,window3H,7);
 rect(110,465,window3W,window3H,7);
 rect(110,478,window3W,window3H,7);
 rect(110,491,window3W,window3H,7);
 rect(110,504,window3W,window3H,7);
 rect(110,517,window3W,window3H,7);
 rect(110,530,window3W,window3H,7);
 rect(110,543,window3W,window3H,7);
 rect(110,556,window3W,window3H,7); 
 rect(110,569,window3W,window3H,7); 
 rect(110,582,window3W,window3H,7);  
  
 //Building 6
 fill(building6R, building6G, building6B);
 rect(405,390,50,210);
 
 //Building 6 Windows
 fill(b6LightR, b6LightG, b6LightB);
 rect(410,400,40,7,7);
 rect(410,413,40,7,7);
 rect(410,426,40,7,7);
 rect(410,439,40,7,7);
 rect(410,452,40,7,7);
 rect(410,465,40,7,7);
 rect(410,478,40,7,7);
 rect(410,491,40,7,7);
 rect(410,504,40,7,7);
 rect(410,517,40,7,7);
 rect(410,530,40,7,7);
 rect(410,543,40,7,7);
 rect(410,556,40,7,7); 
 rect(410,569,40,7,7); 
 rect(410,582,40,7,7);  
 
 
 
 //Building 5
fill(building5R, building5G, building5B);
stroke(46, 65, 84);
rect(350,450,70,200,5);
rect(360,430,50,70,5);
rect(368,410,35,45,5);
rect(382,395,7,20,5);

//Buidling 5 Windows
fill(b5LightR, b5LightG, b5LightB);
rect(375,417,7,12,5);
rect(390,417,7,12,5);
rect(370,437,7,12,5);
rect(395,437,7,12,5);
rect(383,437,7,12,5);
rect(360,460,7,15,2);
rect(375,460,7,15,2);
rect(390,460,7,15,2);
rect(405,460,7,15,2);
rect(360,480,7,15,2);
rect(375,480,7,15,2);
rect(390,480,7,15,2);
rect(405,480,7,15,2);
rect(360,500,7,15,2);
rect(375,500,7,15,2);
rect(390,500,7,15,2);
rect(405,500,7,15,2);
rect(360,520,7,15,2);
rect(375,520,7,15,2);
rect(390,520,7,15,2);
rect(405,520,7,15,2);
rect(360,540,7,15,2);
rect(375,540,7,15,2);
rect(390,540,7,15,2);
rect(405,540,7,15,2);
rect(360,560,7,15,2);
rect(375,560,7,15,2);
rect(390,560,7,15,2);
rect(405,560,7,15,2);

//Building 8
fill(building8R, building8G, building8B);
 rect(490,330,70,270,15,15,0,0);
 
 //Building 8 Windows
 fill(b8LightR, b8LightG, b8LightB);
 rect(500,350,10,20,2);
 rect(520,350,10,20,2);
 rect(540,350,10,20,2);
 rect(500,375,10,20,2);
 rect(520,375,10,20,2);
 rect(540,375,10,20,2);
 rect(500,400,10,20,2);
 rect(520,400,10,20,2);
 rect(540,400,10,20,2);
 rect(500,425,10,20,2);
 rect(520,425,10,20,2);
 rect(540,425,10,20,2);
 rect(500,450,10,20,2);
 rect(520,450,10,20,2);
 rect(540,450,10,20,2);
 rect(500,475,10,20,2);
 rect(520,475,10,20,2);
 rect(540,475,10,20,2);
 rect(500,500,10,20,2);
 rect(520,500,10,20,2);
 rect(540,500,10,20,2);
 rect(500,525,10,20,2);
 rect(520,525,10,20,2);
 rect(540,525,10,20,2);
 rect(500,550,10,20,2);
 rect(520,550,10,20,2);
 rect(540,550,10,20,2);
 
 
//Building 7
fill(building7R, building7G, building7B);
rect(440, 410, 70, 190,15,15,0,0);
 //Building 7 Windows 
 fill(b7LightR, b7LightG, b7LightB);
rect(450,430,8,15,2);
rect(470,430,8,15,2);
rect(490,430,8,15,2);
rect(450,450,8,15,2);
rect(470,450,8,15,2);
rect(490,450,8,15,2);
rect(450,470,8,15,2);
rect(470,470,8,15,2);
rect(490,470,8,15,2);
rect(450,490,8,15,2);
rect(470,490,8,15,2);
rect(490,490,8,15,2);
rect(450,510,8,15,2);
rect(470,510,8,15,2);
rect(490,510,8,15,2);
rect(450,530,8,15,2);
rect(470,530,8,15,2);
rect(490,530,8,15,2);
rect(450,550,8,15,2);
rect(470,550,8,15,2);
rect(490,550,8,15,2); 

//Building 9
fill(building9R, building9G, building9B);
rect(530,380,60,260,10);

//Building 9 Windows
fill(b9LightR, b9LightG, b9LightB);
rect(542,395,5,15);
rect(557,395,5,15);
rect(572,395,5,15);
rect(542,415,5,15);
rect(557,415,5,15);
rect(572,415,5,15);
rect(542,435,5,15);
rect(557,435,5,15);
rect(572,435,5,15);
rect(542,455,5,15);
rect(557,455,5,15);
rect(572,455,5,15);
rect(542,475,5,15);
rect(557,475,5,15);
rect(572,475,5,15);
rect(542,495,5,15);
rect(557,495,5,15);
rect(572,495,5,15);
rect(542,515,5,15);
rect(557,515,5,15);
rect(572,515,5,15);
rect(542,535,5,15);
rect(557,535,5,15);
rect(572,535,5,15);
rect(542,555,5,15);
rect(557,555,5,15);
rect(572,555,5,15);




 //Tree 1
 strokeWeight(2);
 stroke(54, 28, 28);
 line(265,height,265,510);
 line(265,520,275,510);
 line(265,550,255,540);
 fill(17, 138, 107);
 stroke(17, 138, 107);
 ellipse(250,535,15,15);
 ellipse(280,505,25,25);
 ellipse(255,500,30,30);
 ellipse(270,490,23,23);
 
 //Tree 2
 strokeWeight(2);
 stroke(54, 28, 28);
 line(305,height,305,540);
line(305,560,295,550);
line(305,548,312,538);
fill(17, 138, 107);
 stroke(17, 138, 107);
 ellipse(295,550,10,10);
 ellipse(315,530,20,20);
 ellipse(295,530,25,25);
 ellipse(308,515,20,20);  
 
 //Tree 3
 strokeWeight(2);
 stroke(54, 28, 28);
 line(340,height,340,510);
 line(340,520,350,510);
 line(340,560,330,550);
 fill(17, 138, 107);
 stroke(17, 138, 107);
 ellipse(328,550,15,15);
 ellipse(355,505,25,25);   
 ellipse(335,500,30,30);
 ellipse(345,490,23,23);
 
  //Bush 1
 fill(31, 161, 83);
 noStroke();
 ellipse(255,height,50,50);
 
 //Bush 2
 ellipse(295,height,45,45);
 
 //Bush 3
 ellipse(330,height,50,50);
 
 //Tree 4
 strokeWeight(2);
 stroke(54, 28, 28);
 line(620,height,620,510);
 line(620,520,630,510);
 line(620,550,610,540);
 fill(17, 138, 107);
 stroke(17, 138, 107);
 ellipse(605,535,15,15);
 ellipse(635,505,25,25);
 ellipse(610,500,30,30);
 ellipse(620,490,23,23);
 
 //Tree 5
 strokeWeight(2);
 stroke(54, 28, 28);
 line(680,height,680,540);
line(680,560,674,550);
line(680,548,687,538);
fill(17, 138, 107);
 stroke(17, 138, 107);
 ellipse(672,550,10,10);
 ellipse(690,530,20,20);
 ellipse(670,530,25,25);
 ellipse(680,515,20,20);  
 
 //Bush 4
 fill(31, 161, 83);
 noStroke();
 ellipse(615,height,50,50);
 
 //Bush 5
 ellipse(645,height,45,45);
 
 //Bush 6
 ellipse(675,height,50,50);
 
 //Lamp Post
noStroke();
 fill(90);
 rect(640,595,15,10);
noStroke();
 fill(50);
 quad(650,585,645,585,640,595,655,595);
 noStroke();
 fill(90);
 rect(645,560,5,25);
 
 //Lamp post Light
 stroke(50);
 fill(lampR, lampG, lampB, lamp_Opacity);
 quad(656,543,638,543,642,560,652,560);
stroke(50);
 line(645,560,644,545);
 line(649,560,650,545);
 
 
 //Lamp Post
  noStroke();
 fill(90);
 rect(635,540,24,2);
 fill(50);
 noStroke();
 quad(650,535,645,535,640,540,655,540);
 fill(90);
 noStroke();
 rect(645,530,5,5);
 
 

//Sun
stroke(255, 195, 13);
strokeWeight(5);
fill(255, 158, 13);
ellipse(sunX,120,100,100);

//Moon
fill(moonR, moonG, moonB);
stroke(0);
strokeWeight(0);
ellipse(moonX,120,90,90);

//Cloud 1
stroke(255,255,255,0);
fill(255,255,255,cloud_1_Opacity);
ellipse(cloudX1_1,55,50,40); 
ellipse(cloudX1_2,55,50,40);
ellipse(cloudX1_3,40,50,40);

cloudX1_1 += .2;
cloudX1_2 += .2;
cloudX1_3 += .2;

//Cloud 2
stroke(255,255,255,0);
fill(255,255,255,cloud_2_Opacity);
ellipse(cloudX2_1,85,50,40);
ellipse(cloudX2_2,85,50,40);
ellipse(cloudX2_3,70,50,40);

cloudX2_1 += .2;
cloudX2_2 += .2;
cloudX2_3 += .2;

//Cloud 3
stroke(255,255,255,0);
fill(255,255,255,cloud_3_Opacity);
ellipse(cloudX3_1,55,50,40);
ellipse(cloudX3_2,55,50,40);
ellipse(cloudX3_3,40,50,40);

cloudX3_1 += .2;
cloudX3_2 += .2;
cloudX3_3 += .2;

//Cloud 4 
stroke(255,255,255,0);
fill(255,255,255,cloud_4_Opacity);
ellipse(cloudX4_1,85,50,40);
ellipse(cloudX4_2,85,50,40);
ellipse(cloudX4_3,70,50,40);

cloudX4_1 += .2;
cloudX4_2 += .2;
cloudX4_3 += .2;

// City and Reset Sign
fill(193, 154, 107);
stroke(193, 154, 107);
strokeWeight(3);
rect(280,560,50,25);
line(290,585,290,600);
line(320,585,320,600);
fill(0);
textSize(8);
stroke(0);
text(sign,282,560,50,25);

//Road to Beach
fill(47,47,47);
noStroke();
rect(700,595,60,10,5,5,0,0);
fill(235,220,54);
rect(705,597,5,1,2);
rect(715,597,5,1,2);
rect(725,597,5,1,2);
rect(735,597,5,1,2);
rect(745,597,5,1,2);

//Ocean
fill(29,162,216);
rect(855,590,50,15,5,0,0,0);
fill(118,182,196);
rect(905,590,45,15);
fill(6,66,115);
rect(950,590,50,15);

//Sand
fill(194,178,128);
noStroke();
rect(755,590,100,15,5,5,0,0);

//LightHouse
strokeWeight(1);
fill(194, 27, 16);
stroke(194, 27, 16);
quad(830,560,800,560,795,590,835,590);
fill(255);
stroke(255);
quad(805,530,825,530,830,560,800,560);
fill(194, 27, 16);
stroke(194, 27, 16);
quad(823,519,807,519,805,530,825,530);
fill(0,0,0,30);
stroke(100);
quad(807,505,823,505,823,519,807,519);
stroke(194, 27, 16);
fill(194, 27, 16);
arc(815,505,15,15, radians(180), radians(360));
 
 //lighthhouse light
 
 fill(light_HouseR, light_HouseG, light_HouseB, light_House_Opacity);
 stroke(5);
 ellipse(815,510,8,10);
 



if(moonX > 310 && moonX < 390) {
//Sky
skyR = 40;
skyG = 73;
skyB = 158;

//moon
moonR = 0;
moonG = 0;
moonB = 0;

//Building 1
building1R= 0;
building1G = 0;
building1B = 0;
b1LightR = 235;
b1LightG = 220;
b1LightB = 54;

//Building 2
building2 = 0;
b2LightR = 235;
b2LightG = 220;
b2LightB = 54;

//Building 3
building2R = 0;
building3G = 0;
building3B = 0;
b3LightR = 235;
b3LightG = 220;
b3LightB = 54;

//Building 4
building4R = 0;
building4G = 0;
building4B = 0;
b4LightR = 235;
b4LightG = 220;
b4LightB = 54;

//Building 5
building5R = 0;
building5G = 0;
building5B = 0;
b5LightR = 235;
b5LightG = 220;
b5LightB = 54;

//Building 6
building6R = 0;
building6G = 0;
building6B = 0;
b6LightR = 235;
b6LightG = 220;
b6LightB = 54;

//Building 7
building7R = 0;
building7G = 0;
building7B = 0;
b7LightR = 235;
b7LightG = 220;
b7LightB = 54;

//Building 8
building8R = 0;
building8G = 0;
building8B = 0;
b8LightR = 235;
b8LightG = 220;
b8LightB = 54;

//Building 9
building9R = 0;
building9G = 0;
building9B = 0;
b9LightR = 235;
b9LightG = 220;
b9LightB = 54;

//Cloud 1
cloud_1_Opacity = 0;
//Cloud 2
cloud_2_Opacity = 0;
//Cloud 3
cloud_3_Opacity = 0;
//Cloud 4 Opacity
cloud_4_Opacity = 0;

//lighthouse
light_HouseR = 225; 
light_HouseG = 220;
light_HouseB = 54;
light_House_Opacity = 200;
fill(225,220,54,140);
 noStroke();
quad(920,520,825,510,825,520,890,580);

}


  
else if(moonX >= 410) {
 //Sky
 skyR = 96;
 skyG = 197;
 skyB = 250; 
 
 //moon 
 moonR = 40;
 moonG = 40;
 moonB = 40;
 
 //Building 1
 building1R= 217;
 building1G = 218;
 building1B = 219;
 b1LightR = 0;
 b1LightG = 0;
 b1LightB = 0;
 
 //Building 2
 building2 = 250;
 b2LightR = 30;
 b2LightG = 30;
 b2LightB = 30;
 
 //Building 3
 building2R = 245; 
 building3G = 148; 
 building3B = 29;
 b3LightR = 18;
 b3LightG = 36;
 b3LightB = 71;
 
 //Building 4
 building4R = 219;
 building4G = 104;
 building4B = 33;
 b4LightR = 14;
 b4LightG = 30;
 b4LightB = 82;
 
 //Building 5
 building5R = 46;
 building5G = 65;
 building5B = 84;
 b5LightR = 0;
 b5LightG = 0;
 b5LightB = 0;
 
 //Building 6
 building6R = 245; 
 building6G = 148; 
 building6B = 29;
 b6LightR = 18;
 b6LightG = 36;
 b6LightB = 71;
 
 //Building 7
 building7R = 45;
 building7G = 169;
 building7B = 173;
 b7LightR = 57;
 b7LightG = 61;
 b7LightB = 61;
 
 //Building 8 
 building8R = 219;
 building8G = 104;
 building8B = 33;
 b8LightR = 14;
 b8LightG = 30;
 b8LightB = 82;
 
 //Building 9
 building9R = 255;
 building9G = 201;
 building9B = 40;
 b9LightR = 57;
 b9LightG = 61;
 b9LightB = 61;
 
  //Cloud 1
 cloud_1_Opacity = 255;
 //Cloud 2
 cloud_2_Opacity = 255;
 //Cloud 3
cloud_3_Opacity = 255;
//Cloud 4
cloud_4_Opacity = 255;
 
}

else {  
 moonR = 40;
 moonG = 40;
 moonB = 40;
 }

//Cloud 1

if(cloudX1_1 >= width) {
cloudX1_1 = 0;
}

else if(cloudX1_2 >= width) {
cloudX1_2 = 0;
}

else if(cloudX1_3 >= width) {
cloudX1_3 = 0;
}

//Cloud 2

if(cloudX2_1 >= width) {
cloudX2_1 = 0;
}

else if(cloudX2_2 >= width) {
cloudX2_2 = 0;
}

else if(cloudX2_3 >= width) {
cloudX2_3 = 0;
}
 
//Cloud 3

if(cloudX3_1 >= width) {
cloudX3_1 = 0;
}

else if(cloudX3_2 >= width) {
cloudX3_2 = 0;
}

else if(cloudX3_3 >= width) {
cloudX3_3 = 0;
}

//Cloud 4

if(cloudX4_1 >= width) {
cloudX4_1 = 0;
}

else if(cloudX4_2 >= width) {
cloudX4_2 = 0;
}

else if(cloudX4_3 >= width) {
cloudX4_3 = 0;
}

//Solor Eclipse auto reset
if(moonX == width) {
 moonX = 0; 
 sunX = 700;
  }
    
}




void keyPressed() { 
//Moon and Sun Movement
 moonX += 2; 
 sunX -= 1.9;
 
 }
 
 void mousePressed() {
   //Light on
  if (mousePressed && (mouseButton == LEFT)) {
    fill(0);
 if((mouseX > 638) && (mouseX < 652)) {
 if((mouseY > 543) && (mouseY < 560)) {
lampR = 235;
lampG = 220;
lampB = 54;
lamp_Opacity = 255 ;
 }
  }
   } 
   
  else if (mousePressed && (mouseButton == RIGHT)) {
    //Light off
 if((mouseX > 638) && (mouseX < 652)) {
 if((mouseY > 543) && (mouseY < 560)) {
 lampR = 255;
 lampG = 255;
 lampB = 255;
 lamp_Opacity = 90 ;    
  }
   }
    }
     
 }

 
 void mouseClicked() {
   //Reset When City Sign Clicked
   
   if((mouseX > 280) && (mouseX < 320)) {
   if((mouseY > 560) && (mouseY < 585)) {
   
//Moon and Sun Reset
 moonX = 0; 
 sunX = 700;
 
//Sky reset
 skyR = 96;
 skyG = 197;
 skyB = 250; 
 
 //Building 1 reset
 building1R= 217;
 building1G = 218;
 building1B = 219;
 b1LightR = 0;
 b1LightG = 0;
 b1LightB = 0;
 
 //Building 2 reset
 building2 = 250;
 b2LightR = 30;
 b2LightG = 30;
 b2LightB = 30;
 
 //Building 3 reset
 building2R = 245; 
 building3G = 148; 
 building3B = 29;
 b3LightR = 18;
 b3LightG = 36;
 b3LightB = 71;
 
 //Building 4 reset
 building4R = 219;
 building4G = 104;
 building4B = 33;
 b4LightR = 14;
 b4LightG = 30;
 b4LightB = 82;
 
 //Building 5 reset
 building5R = 46;
 building5G = 65;
 building5B = 84;
 b5LightR = 0;
 b5LightG = 0;
 b5LightB = 0;
 
 //Building 6 reset
 building6R = 245; 
 building6G = 148; 
 building6B = 29;
 b6LightR = 18;
 b6LightG = 36;
 b6LightB = 71;
 
 //Building 7 reset
 building7R = 45;
 building7G = 169;
 building7B = 173;
 b7LightR = 57;
 b7LightG = 61;
 b7LightB = 61;
 
 //Building 8 reset 
 building8R = 219;
 building8G = 104;
 building8B = 33;
 b8LightR = 14;
 b8LightG = 30;
 b8LightB = 82;
 
 //Building 9 reset
 building9R = 255;
 building9G = 201;
 building9B = 40;
 b9LightR = 57;
 b9LightG = 61;
 b9LightB = 61;

 
 //Cloud 1 reset
 cloudX1_1 = 90;
 cloudX1_2 = 125;
 cloudX1_3 = 105;
 cloud_1_Opacity = 255;
 
 //Cloud 2 reset
 cloudX2_1 = 380;
 cloudX2_2 = 410;
 cloudX2_3 = 400;
 cloud_2_Opacity = 255;
 
 //Cloud 3 reset
 cloudX3_1 = 660;
 cloudX3_2 = 690;
 cloudX3_3 = 670;
 cloud_3_Opacity = 255;
 
 //Cloud 4 reset
 cloudX4_1 = 895;
 cloudX4_2 = 935;
 cloudX4_3 = 905;
 cloud_4_Opacity = 255;
   
 }
   }
}
