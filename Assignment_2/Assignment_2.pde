/*
 Description: Assignment 2
 Author: William Du
 Date of last edit: Nov 18, 2019
 */

//Use wasd to play
//press SHIFT to Crouch
//hitting walls and traps will result in a reset
//Goal is to get to the end with having collected all the treasure


//Variables 
int cubeX = 100, cubeY = 200, cubeOpacity = 255;
PImage coin;
PImage diamond;
PImage wasd;
PImage shift;
int coinX, coinX2, coinX3, coinX4, coinX5, diamondX, diamondX2;
boolean collect = false, collect2 = false, collect3 = false;
boolean collect4 = false, collect5 = false;
boolean collectGem = false, collectGem2 = false;
boolean crouch = false;
float badCubeY1 = 275, badCubeX1 = 275;
float badCubeY2 = 325, badCubeX2 = 350;
int yAdd = 1;
int yAdd2 =1;
String info, info2;
boolean complete = false;
boolean gameOver = false;
int startingTime;
int timeLeft = 30000;
int timerX = 250;
int gameOverX = 60;
int overScreenX = 0;

void settings () {
  size(500, 500);
}

void setup() {
  coin = loadImage("Coin.gif");
  diamond = loadImage("Gem.png");
  wasd = loadImage("WASD.png");
  shift = loadImage("Shift.png");
  coinX = 375;
  coinX2 = 375;
  coinX3 = 125;
  coinX4 = 200;
  coinX5 = 250;
  diamondX = 366;
  diamondX2 = 216;
  info = "Use WASD to Control Character";
  info2 = "Press Shift to crouch";
  startingTime = millis();
}

void draw() {
  background(46);
  strokeWeight(1.5);
  //=================================================================
  //game instructions
  //WASD
  wasd.resize(65, 50);
  image(wasd, 65, 445);
  fill(255);

  textSize(12);
  text(info, 150, 460, 100, 50);

  //crouch
  shift.resize(130, 75);
  image(shift, 200, 440);

  textSize(12);
  text(info2, 350, 460, 100, 50);

  //=================================================================
  //Field 
  for (int x = 100; x < 400; x += 25) {

    for (int y = 50; y < 350; y += 25) {
      fill(155);
      stroke(0);
      rect(x, y, 25, 25);
    }
  }

  //=================================================================
  //coins after laser
  image(coin, coinX, 49);
  image(coin, coinX2, 74);


  if (cubeX == 375 && cubeY == 50) {
    coinX = -4000;
    collect = true;
  }

  if (cubeX == 375 && cubeY == 75) {
    coinX2 = -4000;
    collect2 = true;
  }

  //reset   
  if (collect == false) {
    if (cubeX == 100 && cubeY == 200) {
      coinX = 375;
    }
  }

  if (collect2 == false) {
    if (cubeX == 100 && cubeY == 200) {
      coinX2 = 375;
    }
  }

  //=================================================================
  //coin after X
  image(coin, coinX3, 325);

  if (cubeX == 125 && cubeY == 325) {
    coinX3 = -4000;
    collect3 = true;
  }

  if (collect3 == false) {
    if (cubeX == 100 && cubeY == 200) {
      coinX3 = 125;
    }
  }

  //=================================================================
  //Gem after moving cubes
  diamond.resize(45, 85);
  image(diamond, diamondX, 269);
  if (cubeX == 375 && cubeY == 300) {
    diamondX = 4000;
    collectGem = true;
  }

  if (collectGem == false) {
    if (cubeX == 100 && cubeY == 200) {
      diamondX = 366;
    }
  }


  //Cube
  fill(50, 225, 50, cubeOpacity);
  stroke(0);
  rect(cubeX, cubeY, 25, 25);


  //=============  Coin and gem  =============================================

  image(coin, coinX4, 124);
  image(coin, coinX5, 124);
  image(diamond, diamondX2, 95);

  if (cubeX == 200 && cubeY == 125) {
    coinX4 = -4000;
    collect4 = true;
  }

  if (cubeX == 225 && cubeY == 125) {
    diamondX2 = -4000;
    collect5 = true;
  }

  if (cubeX == 250 && cubeY == 125) {
    coinX5 = -4000;
    collectGem2 = true;
  }

  if (collect4 == false) {
    if (cubeX == 100 && cubeY == 200) {
      coinX4 = 200;
    }
  }

  if (collectGem2 == false) {
    if (cubeX == 100 && cubeY == 200) {
      diamondX2 = 216;
    }
  }

  if (collect5 == false) {
    if (cubeX == 100 && cubeY == 200) {
      coinX5 = 250;
    }
  }


  //=================================================================
  //Outer Wall

  //Top
  int topX = 75;
  while (topX < 425) {
    noStroke();
    fill(173, 216, 230);
    rect(topX, 25, 25, 25);
    topX += 25;
  }

  //Left
  int leftY = 50;
  while (leftY < 351) {
    noStroke();
    rect(75, leftY, 25, 25);
    leftY += 25;
  }

  //Right
  int rightY = 50;
  while (rightY < 351) {
    noStroke();
    rect(400, rightY, 25, 25);
    rightY += 25;
  }

  //Bottom
  int BottomX = 100;
  while (BottomX < 400) {
    noStroke();
    rect(BottomX, 350, 25, 25);
    BottomX += 25;
  }


  //Left & Right reset
  if (cubeX <= 99) {
    cubeX = 100;
    cubeY = 200;
    collect = false;
    collect2 = false;
    collect3 = false;
    collect4 = false;
    collect5 = false;
    collectGem2 = false;
    collectGem = false;
  } 

  //Right
  if ((cubeX == 400) && (cubeY > 25)) {
    if ((cubeX < 425) && (cubeY < 125)) {
      cubeX = 100;
      cubeY = 200;
      collect = false;
      collect2 = false;
      collect3 = false;
      collect4 = false;
      collect5 = false;
      collectGem2 = false;
      collectGem = false;
    }
  }

  if ((cubeX == 400) && (cubeY > 125)) {
    if ((cubeX < 425) && (cubeY < 400)) {
      cubeX = 100;
      cubeY = 200;
      collect = false;
      collect2 = false;
      collect3 = false;
      collect4 = false;
      collect5 = false;
      collectGem2 = false;
      collectGem = false;
    }
  }

  //Top and Bottom reset
  else if ((cubeY <= 49) || (cubeY >= 350)) {
    cubeX = 100;
    cubeY = 200;
    collect = false;
    collect2 = false;
    collect3 = false;
    collect4 = false;
    collect5 = false;
    collectGem2 = false;
    collectGem = false;
  }

  //=================================================================
  //Inner Walls

  int wall1 = 100;
  while (wall1 < 300) {
    noStroke();
    rect(175.5, wall1, 25, 25);
    wall1 += 25;
  }

  //Wall 1 Reset
  if ((cubeX == 175) && (cubeY > 75)) {
    if ((cubeX < 200) && (cubeY < 300)) {
      cubeX = 100;
      cubeY = 200;
      collect = false;
      collect2 = false;
      collect3 = false;
      collect4 = false;
      collect5 = false;
      collectGem2 = false;
      collectGem = false;
    }
  }

  //Wall 2
  int wall2 = 251;
  while (wall2 < 400) {
    rect(wall2, 250, 25, 25);
    wall2 += 25;
  }

  //Wall 2 reset
  if ((cubeX > 225) && (cubeX < 400)) {
    if ((cubeY >= 250) && (cubeY < 275)) {
      cubeX = 100;
      cubeY = 200;
      collect = false;
      collect2 = false;
      collect3 = false;
      collect4 = false;
      collect5 = false;
      collectGem2 = false;
      collectGem = false;
    }
  }

  //wall 3
  int wall3 = 100;
  while (wall3 < 225) {
    noStroke();
    rect(275.5, wall3, 25, 25);
    wall3 += 25;
  }


  //wall 3 reset
  if ((cubeX >= 275) && (cubeY >= 100)) {
    if ((cubeX < 300) && (cubeY < 225)) {
      cubeX = 100;
      cubeY = 200;
      collect = false;
      collect2 = false;
      collect3 = false;
      collect4 = false;
      collect5 = false;
      collectGem2 = false;
      collectGem = false;
    }
  }

  //wall 4
  int wall4 = 151;
  while (wall4 < 400) {
    rect(wall4, 100, 25, 25);
    wall4 += 25;
  }

  //wall 4 reset
  if ((cubeX > 125) && (cubeX < 400)) {
    if ((cubeY >= 100) && (cubeY < 125)) {
      cubeX = 100;
      cubeY = 200;
      collect = false;
      collect2 = false;
      collect3 = false;
      collect4 = false;
      collect5 = false;
      collectGem2 = false;
      collectGem = false;
    }
  }

  //Exit short wall
  int wall5 = 351;
  while (wall5 < 400) {
    rect(wall5, 150, 25, 25);
    wall5 += 25;
  }

  //reset
  if ((cubeX > 325) && (cubeX < 400)) {
    if ((cubeY >= 150) && (cubeY < 175)) {
      cubeX = 100;
      cubeY = 200;
      collect = false;
      collect2 = false;
      collect3 = false;
      collect4 = false;
      collect5 = false;
      collectGem2 = false;
      collectGem = false;
    }
  }


  //_________________________________________________________________________
  //X Trap 1
  if (cubeY >= 275) {
    if (cubeX <= 150) {

      stroke(255, 0, 0);
      strokeWeight(3);
      line(130, 305, 145, 320);
      line(145, 305, 130, 320);
    }
  }

  //Trap reset
  if (cubeX == 125) {
    if (cubeY == 300) {
      cubeX = 100;
      cubeY = 200;
      collect = false;
      collect2 = false;
      collect3 = false;
      collect4 = false;
      collect5 = false;
      collectGem2 = false;
      collectGem = false;
    }
  }

  //=================================================================
  //Laser Trap


  for (int wire = 53; wire < 99; wire += 4) {
    fill(190);
    noStroke();
    rect(195, wire, 1, 1);
  }
  if (cubeX >= 175) {
    if (cubeY <= 100) {
      strokeWeight(3);
      stroke(255, 0, 0);
      line(235, 51, 235, 99);
      line(285, 51, 285, 99);
      line(335, 51, 335, 99);
    }
  }

  //If Cube Hits Laser

  if (crouch == false) {
    if (cubeX == 225 && cubeY == 75) {
      cubeX = 100;
      cubeY = 200;
      collect = false;
      collect2 = false;
      collect3 = false;
      collect4 = false;
      collect5 = false;
      collectGem2 = false;
      collectGem = false;
    }
  }

  if (crouch == false) {
    if (cubeX == 225 && cubeY == 50) {
      cubeX = 100;
      cubeY = 200;
      collect = false;
      collect2 = false;
      collect3 = false;
      collect4 = false;
      collect5 = false;
      collectGem2 = false;
      collectGem = false;
    }
  }

  if (crouch == false) {
    if (cubeX == 275 && cubeY == 75) {
      cubeX = 100;
      cubeY = 200;
      collect = false;
      collect2 = false;
      collect3 = false;
      collect4 = false;
      collect5 = false;
      collectGem2 = false;
      collectGem = false;
    }
  }

  if (crouch == false) {
    if (cubeX == 275 && cubeY == 50) {
      cubeX = 100;
      cubeY = 200;
      collect = false;
      collect2 = false;
      collect3 = false;
      collect4 = false;
      collect5 = false;
      collectGem2 = false;
      collectGem = false;
    }
  }

  if (crouch == false) {
    if (cubeX == 325 && cubeY == 75) {
      cubeX = 100;
      cubeY = 200;
      collect = false;
      collect2 = false;
      collect3 = false;
      collect4 = false;
      collect5 = false;
      collectGem2 = false;
      collectGem = false;
    }
  }

  if (crouch == false) {
    if (cubeX == 325 && cubeY == 50) {
      cubeX = 100;
      cubeY = 200;
      collect = false;
      collect2 = false;
      collect3 = false;
      collect4 = false;
      collect5 = false;
      collectGem2 = false;
      collectGem = false;
    }
  }
  //_________________________________________________________________________
  //Moving Red Cubes 

  badCubeY1 = badCubeY1 + yAdd;
  badCubeY2 = badCubeY2 + yAdd2;
  fill(255, 0, 0);
  stroke(0);
  strokeWeight(1.5);
  rect(badCubeX1, badCubeY1, 25, 25);
  rect(badCubeX2, badCubeY2, 25, 25);

  //Bad Cube 1
  if (badCubeY1<275) yAdd = 1;
  if (badCubeY1>325) yAdd = -1;

  if (badCubeY1 >= 275 && badCubeY1 <= 300 && cubeX == 275 && cubeY == 275) {
    cubeX = 100;
    cubeY = 200;
    collect = false;
    collect2 = false;
    collect3 = false;
    collect4 = false;
    collect5 = false;
    collectGem2 = false;
    collectGem = false;
  } else if (badCubeY1 >= 300 && badCubeY1 <= 325 && cubeX == 275 && cubeY == 300) {
    cubeX = 100;
    cubeY = 200;
    collect = false;
    collect2 = false;
    collect3 = false;
    collect4 = false;
    collect5 = false;
    collectGem2 = false;
    collectGem = false;
  } else if (badCubeY1 >= 300 && badCubeY1 <= 325 && cubeX == 275 && cubeY == 325) {
    cubeX = 100;
    cubeY = 200;
    collect = false;
    collect2 = false;
    collect3 = false;
    collect4 = false;
    collect5 = false;
    collectGem2 = false;
    collectGem = false;
  }
  //=================================================================

  //BadCube 2

  if (badCubeY2 > 325) yAdd2 = -1;
  if (badCubeY2 < 275) yAdd2 = 1;

  if (badCubeY2 >= 275 && badCubeY2 <= 300 && cubeX == 350 && cubeY == 275) {
    cubeX = 100;
    cubeY = 200;
    collect = false;
    collect2 = false;
    collect3 = false;
    collect4 = false;
    collect5 = false;
    collectGem2 = false;
    collectGem = false;
  } else if (badCubeY2 >= 300 && badCubeY2 <= 325 && cubeX == 350 && cubeY == 300) {
    cubeX = 100;
    cubeY = 200;
    collect = false;
    collect2 = false;
    collect3 = false;
    collect4 = false;
    collect5 = false;
    collectGem2 = false;
    collectGem = false;
  } else if (badCubeY2 >= 300 && badCubeY2 <= 325 && cubeX == 350 && cubeY == 325) {
    cubeX = 100;
    cubeY = 200;
    collect = false;
    collect2 = false;
    collect3 = false;
    collect4 = false;
    collect5 = false;
    collectGem2 = false;
    collectGem = false;
  }
  //=================================================================
  //Cube plus laser

  rect(200, 150, 25, 25);
  rect(250, 150, 25, 25);

  if (cubeX == 200 && cubeY == 150) {
    cubeX = 100;
    cubeY = 200;
    collect = false;
    collect2 = false;
    collect3 = false;
    collect4 = false;
    collect5 = false;
    collectGem2 = false;
    collectGem = false;
  }

  if (cubeX == 250 && cubeY == 150) {
    cubeX = 100;
    cubeY = 200;
    collect = false;
    collect2 = false;
    collect3 = false;
    collect4 = false;
    collect5 = false;
    collectGem2 = false;
    collectGem = false;
  }

  //=================================================================
  //laser
  if (cubeX >= 175 && cubeX < 275) {
    if (cubeY > 100 && cubeY < 225) {
      strokeWeight(5);
      stroke(255, 0, 0);
      line(226, 164, 249, 164);
    }
  }

  if (crouch == false) {
    if (cubeX == 225 && cubeY == 150) {
      cubeX = 100;
      cubeY = 200;
      collect = false;
      collect2 = false;
      collect3 = false;
      collect4 = false;
      collect5 = false;
      collectGem2 = false;
      collectGem = false;
    }
  }

  //=================================================================
  //Finish Level 1
  stroke(50, 255, 50);
  strokeWeight(2);
  line(399, 125, 399, 149);


  if (collect == true) {
    if (collect2 == true) {
      if (collect3 == true) {
        if (collect4 == true) {
          if (collect5 == true) {
            if (collectGem == true) {
              if (collectGem2 == true) {
                if (cubeX == 375 && cubeY == 125) {
                  String finish = "Level 1 Complete";
                  textSize(30);
                  fill(random(255), random(255), random(50));
                  text(finish, 130, 420);
                  complete = true;
                  timerX = -4000;
                }
              }
            }
          }
        }
      }
    }
  }

  if (complete == true) {
    if (cubeX == 400 && cubeY == 125) {
      background(200);
      fill(0, random(255), random(255));
      textSize(40);
      text("THANK YOU FOR PLAYING", 150, 100, 200, 200);
    }
  }
  //Game Over

  int time = millis()/1000;
  textSize(20);
  text(time, timerX, 400);
 

  if (complete == false) {
    if (millis() - startingTime > timeLeft) {

      cubeX = 100;
      cubeY = 200;
      fill(0);
      noStroke();
      rect(overScreenX,0,500,500);
      textSize(70);
      fill(255,0,0);
      text("Game Over", gameOverX , height/2);
      gameOver = true;
    }
  }
  

 
}//Draw End





void keyPressed() {
  
  
  //Game RESET
  if (key == 'r' || key == 'R') {
    
    cubeX = 100;
    cubeY = 200;
    collect2 = false; 
    collect3 = false;
 collect4 = false;
 collect5 = false;
 collectGem = false;
 collectGem2 = false;
 complete = false;
 gameOver = false;
 timerX = 250;
  background(46);
  
  
  }
  
  //Movements 
  if (key == 'a' || key == 'A') {
    cubeX -= 25;
  } else if (key == 'd' || key == 'D') {
    cubeX += 25;
  } else if (key == 'w' || key == 'W') {
    cubeY -= 25;
  } else if ( key == 's' || key == 'S') {
    cubeY += 25;
  }

  if (keyCode == SHIFT) {
    cubeOpacity = 100;
    crouch = true;
  }
}

void keyReleased() {
  if (keyCode == SHIFT) {
    crouch = false;
    cubeOpacity = 255;
  }
}
