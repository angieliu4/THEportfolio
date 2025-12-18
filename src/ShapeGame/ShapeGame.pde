// Angie Liu | 28 Aug 2025 | Computer Timeline

void setup() {
  size(900, 400);
  background(0);
}
void draw () {
  background(0);
  drawRef();
  fill(255);
  Decor(120, 220);
  Decor(215, 280);
  Decor(305, 220);
  Decor(395, 280);
  Decor(485, 220);
  Decor(575, 280);
  Decor(665, 220);
  Decor(755, 280);
  fill(255, 0, 0);
  HistEvent(120, 220, "1620", true, "Slide Rule, 1620.","Made by John Napier in England.","Sliding scale that let multiplication and division to be done faster.");
  fill(#FF6F15);
  HistEvent(215, 280, "1642", false, "Pascaline, 1642.","Made by Blaise Pascal in France.","Mechanical calculator that did addition, subtraction, multiplication, and division.");
  fill(#FFD608);
  HistEvent(305, 220, "1672", true, "Stepped Reckoner, 1672.","Made by Gottfried Wilhelm von Leibniz in Germany. ","Had a core called the 'stepped drum' and could do every operation.");
  fill(#07ED08);
  HistEvent(395, 280, "1820", false, "Arithmometer, 1820.","Made by Charles Xavier Thomas de Colmar in France.","First mass-produced mechanical calculator; used for all operations.");
  fill(#0DAEFC);
  HistEvent(485, 220, "1822", true, "Difference Engine, 1822.","Made by Charles Babbage in England","Used to automate polynomial functions and one of the earliest pieces of computational logic.");
  fill(#0D12FC);
  HistEvent(575, 280, "1872", false, "Tide-predicting Machine, 1872","Made by Sir William Thomson in England.","Used systems of pulleys and wires to predict tide levels for a certain location.");
  fill(#9500FA);
  HistEvent(665, 220, "1880", true, "Punch Cards, 1880.","Made by Herman Hollerith in the U.S.","Used to store data on cards with holes punched out that could be read by machines.");
  fill(255,0,0);
  HistEvent(755, 280, "1961", false, "Bell Punch ANITA, 1961.","Made by the Bell Punch Co. in Britain.","First all-electronic desktop calculator; used vacuum tubes, cold-cathode tubes, and Dekatrons.");
}

void drawRef() {
  // Title Info
  textAlign(CENTER);
  fill(255);
  textSize(38);
  fill(0, 255, 0);
  text("Historic Computer Systems", 450, 70);
  textSize(20);
  text("By Angie Liu", 450, 95);

  // Render Timeline
  stroke(255);
  line(50, 250, 850, 250);
  line(50, 260, 50, 240);
  line(850, 260, 850, 240);

  // Text Markers
  textSize(17);
  text("1600", 50, 280);
  text("1970", 850, 280);
}

void HistEvent(int x, int y, String title, boolean top, String detail, String detail2, String detail3) {
  if (top == true) {
    stroke(255);
    line(x, y, x+20, y+30);
  } else {
    stroke(255);
    line(x, y, x+20, y-30);
  }
  rectMode(CENTER);
  stroke(0);
  strokeWeight(2.5);
  rect(x, y, 80, 30, 5);
  fill(255);
  text(title, x, y+5);

  if (mouseX>x-40 && mouseX<x+40 && mouseY<y+25 && mouseY>y-25) {
    fill(255);
    text(detail, width/2, 330);
    text(detail2,width/2,350);
    text(detail3,width/2,370);
  }
}
void Decor(int x, int y) {
  stroke(255);
  rect(x, y, 85, 35, 5);
}
