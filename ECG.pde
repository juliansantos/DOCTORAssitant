// Description 
/* Steps: 
    3. Create a message in a cloud that say (Hi I'm Julian Santos! I will be your doctor today)
    4. Please select your gender
    5. Generate PQRST signal 
    6. Change expressions depending of the input signal. 
*/
    
PImage room, gender1, gender2, man, woman, doctor, happyface, sadface, distractedface;
PImage euphoricface, scaredface, board;

void setup(){
  size(976,576);
  room =loadImage("inside.jpg");
  gender1 = loadImage("gender1.png");
  gender2 = loadImage("gender2.png");
  doctor = loadImage("bodydoctor.png");
  happyface = loadImage("face1.png");
  euphoricface = loadImage("face2.png");
  scaredface = loadImage("face5.png"); 
  distractedface = loadImage("face3.png");
  sadface = loadImage("face4.png");
  woman = loadImage("women.png");
  man = loadImage("men.png");
  board = loadImage("board.png");
  //loadImage("");
  //man = loadImage("man.png");
  //women = loadImage("women.png");
 
 // tint(255,0);
  background(room);
}

void draw(){
  image(doctor, 300, 300);
  image(euphoricface, 326,226);
  image(board,422,40);
  
}

void mousePressed(){
  if(mouseX>845&&mouseX<885&&mouseY>60&&mouseY<128){  image(gender1,845,60); 
   image(man, 103,177); 
       } // this is for gender selection Man
      
  else if (mouseX>885&&mouseX<925&&mouseY>60&&mouseY<128){  image(gender2,845,60); 
 image(woman, 95,173);
        } // this is for gender selection Women
  
}