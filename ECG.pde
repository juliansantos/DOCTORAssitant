// Description 
/* Steps: 
    3. Create a message in a cloud that say (Hi I'm Julian Santos! I will be your doctor today)
    4. Please select your gender
    5. Generate PQRST signal 
    6. Change expressions depending of the input signal. 
*/
    
PImage room, gender1, gender2, man, woman, doctor, happyface, sadface, distractedface;
PImage euphoricface, scaredface, board, ekg;

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
  ekg = loadImage("EKG.png");
  //loadImage("");
  //man = loadImage("man.png");
  //women = loadImage("women.png");
 
 // tint(255,0);
  background(room);
  image(doctor, 300, 300);
  image(euphoricface, 326,226);
  
}

void startrek(){
  // saying hi to the user
  String mes ="Hola, mi nombre es Julian y hoy sere tu doctor";
    image(board,433,53); // Board  
  image(ekg, 468, 85);
    fill(0);
  text("Doctor",433,250);
}

void draw(){
  image(board,433,53); // Board

  
}


void mousePressed(){
  if(mouseX>845&&mouseX<885&&mouseY>60&&mouseY<128){  image(gender1,845,60); 
   image(man, 103,177); 
       } // this is for gender selection Man
      
  else if (mouseX>885&&mouseX<925&&mouseY>60&&mouseY<128){  image(gender2,845,60); 
 image(woman, 95,173);
        } // this is for gender selection Women
  
}