// Description 
/* Steps: 
    3. Create a message in a cloud that say (Hi I'm Julian Santos! I will be your doctor today)
    4. Please select your gender
    5. Generate PQRST signal 
    6. Change expressions depending of the input signal. 
*/
    
PImage room, gender1, gender2, man, woman, doctor, happyface, sadface, distractedface;
PImage euphoricface, scaredface, board, ekg;
int flag=0,counter=0, counter1 = 0,counter2=0;
boolean step1=true, step2=true;
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

void draw(){
 // image(board,433,53); // Board
   if(flag == 1 && step1==true){ // Display message doctor
        String mes ="Hola, mi nombre es xxxxxx y hoy sere tu doctor. Para comenzar selecciona tu genero.";
   fill(0);
   textSize(18);
   text(mes.charAt(counter),453+counter1,100 + counter2);
   counter++;
     if(counter == 3||counter == 14||counter == 44||counter == 65||counter == 69){
       counter1 -= 6;
     }
     else if(counter == 7 || counter == 12|| counter == 56){
       counter1 += 5;
     }
   counter1 +=12;
   delay(100);
     if(counter == 83){
       flag = 0;
       counter = 0;
       flag = 2;
       counter1 = 0;
       counter2 = 145;
       step1 = false;
     }
     else if(counter == 32){
       counter2 = 25;
       counter1 = 0;
     } 
     else if(counter == 48){
       counter2 = 77;
       counter1 = 0;
     }
     else if(counter == 76){
       counter2 = 102;
       counter1 = 0;
     }
   }
   
   else if (flag == 2){ // display genre selection 
     image(gender1,845,60);
     flag = 0;
   }
   
   else if (flag == 3 && step2== true){ // Display message of Tres bien!
     String mes2 = "Muy bien,  ahora te mostraré tus señales cardiacas y el respectivo diagnostico.";
     fill(0);
     textSize(18);
     text(mes2.charAt(counter),453+counter1,100 + counter2);
     delay(100);
     counter ++;
     counter1+=11;
     if(mes2.charAt(counter-1) == 'i' || mes2.charAt(counter-1) == 'l' ){
       counter1 -= 6;
     }
     else if (mes2.charAt(counter-1) == 'm'){
       counter1 += 6;
     }
     
     if(counter == 79){
       flag = 0;
       counter = 0;
       flag = 4;
       step2 = false;
       image(board,433,53);
       delay(3000);
       image(ekg,460,100);
     }
     else if(counter == 33){
       counter2 = 170;
       counter1 = 0;
     }
     else if(counter == 67){
       counter2 = 195;
       counter1 = 0;
     }
   }
}


void mousePressed(){
  if(mouseX>845&&mouseX<885&&mouseY>60&&mouseY<128){  image(gender1,845,60); 
     image(man, 103,177); 
     flag = 3;
   } // this is for gender selection Man
      
  else if (mouseX>885&&mouseX<925&&mouseY>60&&mouseY<128){  image(gender2,845,60); 
     image(woman, 95,173);
     flag = 3;
   } // this is for gender selection Women
  else if  (mouseX>300&&mouseX<415&&mouseY>300&&mouseY<500&&step1==true){
    image(board,433,53);
    flag =1;
  }
}