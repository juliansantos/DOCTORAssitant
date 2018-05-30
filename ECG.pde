// Description 
/* Steps: 
    5. Generate PQRST signal for 5 cases: 
      5.1 Ritmo Sinusal - ritmo normal del corazón * R1
      5.2 Bradicardia Sinusal * R2
      5.3 Taquicardia Sinusal * R3
      5.4 Arritmia Sinusal * R4
      5.5 Bloqueo Sinusal * R5
    6. Change expressions depending of the input signal. 
*/
    
PImage room, gender1, gender2, man, woman, doctor, happyface, sadface, distractedface;
PImage euphoricface, scaredface, board, ekg, p1, p2, p3, p4, p5;
int flag=0,counter=0, counter1 = 0,counter2=0, pt = 0, pl=0, xcoor=2, plot=0,hop=0;
boolean step1=true, step2=true;
// SECTION FOR DIFFERENT PATOLOGIES

int[] R1 = {80,80,80,79,78,77,76,75,74,74,74,73,73,73,74,74,75,76,77,78,79,80,60,40,20,0,20,40,60,80,80,80,80,80,80,80,79,78,77,77,78,79,80,80,80,80,80,80};  // Alternate syntax


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
  p1 = loadImage("r1.png");
  p2 = loadImage("r2.png");
  p3 = loadImage("r3.png");
  p4 = loadImage("r4.png");
  p5 = loadImage("r5.png");
  //loadImage("");
  //man = loadImage("man.png");
  //women = loadImage("women.png");
 
 // tint(255,0);
  background(room);
  image(doctor, 300, 300);
  image(happyface, 326,226);
}

void draw(){
  

  
  
 // image(board,433,53); // Board
   if(flag == 1 && step1==true){ // Display message doctor
        String mes ="Hola, mi nombre es Juanes y hoy sere tu doctor. Para comenzar selecciona tu genero.";
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
       plot=1; // activate ploting
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
   else{}
   
   
   /// here starting ploting EKG with the EKG
   // MAKE A SELECTOR FOR 5 PATOLOGIES R1,R2,R3,R4 and R5
     // 1 
     // 2
     // 3
     // 4
     // 5
     
   if(pl==1){    
       pl = 0; // Just when this value change obtain the new analysis of the system
       xcoor = 0;
       
       if(pt == 1){ // RITMO SINUSAL
         image(board,433,53); // clean Board
         image(p1,460,100); // showing dectection
         image(euphoricface, 326,226);
         textSize(32);
         fill(255,0,0);
         text("RITMO SINUSAL", 470, 330);
           // start ploting data EKG
       }
       else if(pt == 2){ // BRADICARDIA SINUSAL
         image(board,433,53); // clean Board
         image(p2,460,100); // showing dectection
         image(scaredface, 326,226);
         textSize(32);
         fill(255,0,0);
         text("BRADICARDIA SINUSAL", 470, 330);
       }
       else if(pt == 3){ // TAQUICARDIA SINUSAL
         image(board,433,53); // clean Board
         image(p3,460,100); // showing dectection
         image(scaredface, 326,226);
         textSize(32);
         fill(255,0,0);
         text("TAQUICARDIA SINUSAL", 470, 330);
       }
       else if(pt == 4){ // ARRITMIA SINUSAL
         image(board,433,53); // clean Board
         image(p4,460,100); // showing dectection
         image(distractedface, 326,226);
         textSize(32);
         fill(255,0,0);
         text("ARRITMIA SINUSAL", 470, 330);
       }
       else if(pt == 5){ // BLOQUEO SINUSAL
         image(board,433,53); // clean Board
         image(p5,460,100); // showing dectection
         image(sadface, 326,226);
         textSize(32);
         fill(255,0,0);
         text("BLOQUEO SINUSAL", 470, 330);
       }
       else {
       }
     }
     
     
     if (plot==1){
      xcoor = xcoor +1;
      if(xcoor>47){
        xcoor=2;
        hop=hop+48;
        }  
      line (xcoor-1+460+hop,R1[xcoor-1]+100,xcoor+460+hop,R1[xcoor]+100);
     }
     
}


void mousePressed(){
  if(mouseX>845&&mouseX<885&&mouseY>60&&mouseY<128){  image(gender1,845,60); 
     image(man, 103,177); 
     flag = 3;
     pl=1;
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