// Description 
/* Steps:
    1. Import images of a doctor the body with diferent faces (5) 
    2. Import images of the man and a women
    3. Create a message in a cloud that say (Hi I'm Julian Santos! I will be your doctor today)
    4. Please select your gender
*/
    
PImage room, gender1, gender2, man, women, doctor, happyface, sadface, distractedface;
PImage euphoricface, scaredface;

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
  
  //loadImage("");
  //man = loadImage("man.png");
  //women = loadImage("women.png");
 
 // tint(255,0);
  background(room);
}

void draw(){
  image(doctor, 300, 300);
  image(distractedface, 326,226);
}

void mousePressed(){
  if(mouseX>845&&mouseX<885&&mouseY>60&&mouseY<128){  image(gender1,845,60);  } // this is for gender selection Man
  else if (mouseX>885&&mouseX<925&&mouseY>60&&mouseY<128){  image(gender2,845,60);  } // this is for gender selection Women
  
}