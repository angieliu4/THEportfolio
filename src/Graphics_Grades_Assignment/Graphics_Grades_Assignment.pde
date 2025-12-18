// Angie Liu | 9 Sept 2025 | Graphics Grade Assignment

void setup () {
  size(405, 100);
}

void draw() {
  background(100,0,0);
  line(0, height/2, width, height/2);
  
  for(int i = 0; i <width; i+=50){
    line(i,45,i,55);
    textSize(10);
    text(i/100.0,i,65);
  }
  
  ellipse(mouseX, height/2, 5, 5);
  text(mouseX/100.0, mouseX, 45);
  textAlign(CENTER);
  text("Grade: " + calcGrade(mouseX/100.0), width/2, 85);
  textSize(14);
  text("Grade Convertor By Angie Liu", width/2,20);


  float grade = random(4.001);
  println(grade);
}

String calcGrade(float val) {
  textSize(12);
  String returnVal;
  if (val >=3.51) {
    returnVal = "Assign letter grade A.";
  } else if (val >=3.00) {
    returnVal = "Assign letter grade A-.";
  } else if (val >=2.84) {
    returnVal = "Assign letter grade B+.";
  } else if (val >=2.67) {
    returnVal = "Assign letter grade B.";
  } else if (val >=2.50) {
    returnVal = "Assign letter grade B-.";
  } else if (val >=2.34) {
    returnVal = "Assign letter grade C+.";
  } else if (val >=2.17) {
    returnVal = "Assign letter grade C.";
  } else if (val >=2.00) {
    returnVal = "Assign letter grade C.-";
  } else if (val >=1.66) {
    returnVal = "Assign letter grade D+.";
  } else if (val >=1.33) {
    returnVal = "Assign letter grade D.";
  } else if (val >=1.00) {
    returnVal = "Assign letter grade D-.";
  } else {
    returnVal = "Assign letter grade F.";
  }
  return returnVal;
}
