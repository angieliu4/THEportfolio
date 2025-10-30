// Angie Liu | 25 Sept 2025 | Calculator
Button[] buttons = new Button[12];
Button[] numButtons = new Button [10];
float l, r, result;
String dVal;
String op;
boolean left;

void setup() {
  size(550, 270);

  l = 0.0;
  r = 0.0;
  result = 0.0;
  dVal = "0.0";
  op = " ";
  left = true;
  //Square buttons:
  buttons[0] = new Button(30, height/2, 50, 250, 4, "AC", #1f2c59, #bcd2ff);
  buttons[1] = new Button(520, 70, 50, 120, 4, "ln ", #1f2c59, #bcd2ff);
  buttons[2] = new Button(520, 200, 50, 120, 4, "ABS ", #1f2c59, #bcd2ff);

  //Circle buttons:
  //Numbers
  numButtons[1] = new Button(95, 235, 50, 50, 150, "1", #4f6cb2, #bcd2ff);
  numButtons[2] = new Button(155, 235, 50, 50, 150, "2", #4f6cb2, #bcd2ff);
  numButtons[3] = new Button(215, 235, 50, 50, 150, "3", #4f6cb2, #bcd2ff);
  numButtons[4] = new Button(95, 175, 50, 50, 150, "4", #4f6cb2, #bcd2ff);
  numButtons[5] = new Button(155, 175, 50, 50, 150, "5", #4f6cb2, #bcd2ff);
  numButtons[6] = new Button(215, 175, 50, 50, 150, "6", #4f6cb2, #bcd2ff);
  numButtons[7] = new Button(95, 115, 50, 50, 150, "7", #4f6cb2, #bcd2ff);
  numButtons[8] = new Button(155, 115, 50, 50, 150, "8", #4f6cb2, #bcd2ff);
  numButtons[9] = new Button(215, 115, 50, 50, 150, "9", #4f6cb2, #bcd2ff);
  numButtons[0] = new Button(275, 175, 50, 170, 150, "0", #719dd6, #bcd2ff);

  //Functions
  buttons[3] = new Button(95, 45, 50, 50, 150, ".", #9FA0FF, #bcd2ff);
  buttons[4] = new Button(335, 175, 50, 50, 150, "÷", #cec6ff, #bcd2ff);
  buttons[5] = new Button(395, 175, 50, 50, 150, "*", #cec6ff, #bcd2ff);
  buttons[6] = new Button(335, 115, 50, 50, 150, "+", #cec6ff, #bcd2ff);
  buttons[7] = new Button(395, 115, 50, 50, 150, "-", #cec6ff, #bcd2ff);
  buttons[8] = new Button(365, 235, 110, 50, 150, "=", #1f2c59, #bcd2ff);
  buttons[9] = new Button(455, 70, 50, 130, 150, "±", #9FA0FF, #bcd2ff);
  buttons[10] = new Button(455, 235, 50, 50, 150, "^", #9FA0FF, #bcd2ff);
  buttons[11] = new Button(455, 175, 50, 50, 150, "√", #9FA0FF, #bcd2ff);
}

void draw() {
  background(#1C193B);
  for (int i = 0; i<buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover(mouseX, mouseY);
  }
  for (int i = 0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover(mouseX, mouseY);
  }
  updateDisplay();
}

void keyReleased() {
  println("Key:" + key);
  println("KeyCode:" + keyCode);
  if (keyCode == 107) {
    dVal = "0.0";
    left = false;
    op = "+";
  } else if (keyCode == 45 || keyCode == 109) {
    dVal = "0.0";
    left = false;
    op = "-";
  } else if (keyCode == 111) {
    dVal = "0.0";
    left = false;
    op = "÷";
  } else if (keyCode == 106) {
    dVal = "0.0";
    left = false;
    op = "*";
  } else if (keyCode == 67) {
    l = 0.0;
    r = 0.0;
    result = 0.0;
    dVal = "0.0";
    op = " ";
    left = true;
  } else if (keyCode == 110 || keyCode == 46) {
    if (dVal.contains(".") == false) {
      dVal += ".";
    }
  } else if (keyCode == 81) {
    if (left) {
      l = l * -1;
      dVal = str(l);
    } else {
      r = r * -1;
      dVal = str(r);
    }
  } else if (keyCode == 87) {
    if (left) {
      l = sqrt(l);
      dVal = str(l);
    } else {
      r = sqrt(r);
      dVal = str(r);
    }
  } else if (keyCode == 69) {
    dVal = "0.0";
    left = false;
    op = "^";
  } else if (keyCode == 82) {
    if (left) {
      l = log(l);
      dVal = str(l);
    } else {
      r = log(r);
      dVal = str(r);
    }
  } else if (keyCode == 84) {
    if (left) {
      l = abs(l);
      dVal = str(l);
    } else {
      r = abs(r);
      dVal = str(r);
    }
  } else if (keyCode == 10) {
    performCalculation();
  } else if (keyCode == 49 || keyCode == 97) {
    if (dVal.length()<17) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "1";
          l = float(dVal);
        } else {
          dVal += "1";
          l = float(dVal);
        }
      } else if ( left == false) {
        if (dVal.equals("0.0")) {
          dVal = "1";
          r = float(dVal);
        } else {
          dVal += "1";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 50 || keyCode == 98) {
    if (dVal.length()<17) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "2";
          l = float(dVal);
        } else {
          dVal += "2";
          l = float(dVal);
        }
      } else if ( left == false) {
        if (dVal.equals("0.0")) {
          dVal = "2";
          r = float(dVal);
        } else {
          dVal += "2";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 51 || keyCode == 99) {
    if (dVal.length()<17) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "3";
          l = float(dVal);
        } else {
          dVal += "3";
          l = float(dVal);
        }
      } else if ( left == false) {
        if (dVal.equals("0.0")) {
          dVal = "3";
          r = float(dVal);
        } else {
          dVal += "3";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 52 || keyCode == 100) {
    if (dVal.length()<17) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "4";
          l = float(dVal);
        } else {
          dVal += "4";
          l = float(dVal);
        }
      } else if ( left == false) {
        if (dVal.equals("0.0")) {
          dVal = "4";
          r = float(dVal);
        } else {
          dVal += "4";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 53 || keyCode == 101) {
    if (dVal.length()<17) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "5";
          l = float(dVal);
        } else {
          dVal += "5";
          l = float(dVal);
        }
      } else if ( left == false) {
        if (dVal.equals("0.0")) {
          dVal = "5";
          r = float(dVal);
        } else {
          dVal += "5";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 54 || keyCode == 102) {
    if (dVal.length()<17) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "6";
          l = float(dVal);
        } else {
          dVal += "6";
          l = float(dVal);
        }
      } else if ( left == false) {
        if (dVal.equals("0.0")) {
          dVal = "6";
          r = float(dVal);
        } else {
          dVal += "6";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 55 || keyCode == 103) {
    if (dVal.length()<17) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "7";
          l = float(dVal);
        } else {
          dVal += "7";
          l = float(dVal);
        }
      } else if ( left == false) {
        if (dVal.equals("0.0")) {
          dVal = "7";
          r = float(dVal);
        } else {
          dVal += "7";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 56 || keyCode == 104) {
    if (dVal.length()<17) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "8";
          l = float(dVal);
        } else {
          dVal += "8";
          l = float(dVal);
        }
      } else if ( left == false) {
        if (dVal.equals("0.0")) {
          dVal = "8";
          r = float(dVal);
        } else {
          dVal += "8";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 57 || keyCode == 105) {
    if (dVal.length()<17) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "9";
          l = float(dVal);
        } else {
          dVal += "9";
          l = float(dVal);
        }
      } else if ( left == false) {
        if (dVal.equals("0.0")) {
          dVal = "9";
          r = float(dVal);
        } else {
          dVal += "9";
          r = float(dVal);
        }
      }
    }
  } else if (keyCode == 48 || keyCode == 96) {
    if (dVal.length()<17) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "0";
          l = float(dVal);
        } else {
          dVal += "0";
          l = float(dVal);
        }
      } else if ( left == false) {
        if (dVal.equals("0.0")) {
          dVal = "0";
          r = float(dVal);
        } else {
          dVal += "0";
          r = float(dVal);
        }
      }
    }
  }
}

void mousePressed() {
  for (int i = 0; i<buttons.length; i++) {
    if (buttons[i].over && buttons[i].val.equals("+")) {
      dVal = "0.0";
      left = false;
      op = "+";
    } else if (buttons[i].over && buttons[i].val.equals(".")) {
      if (dVal.contains(".") == false) {
        dVal += ".";
      }
    } else if (buttons[i].over && buttons[i].val.equals("=")) {
      performCalculation();
    } else if (buttons[i].over && buttons[i].val.equals("±")) {
      if (left) {
        l = l * -1;
        dVal = str(l);
      } else {
        r = r * -1;
        dVal = str(r);
      }
    } else if (buttons[0].over == true) {
      l = 0.0;
      r = 0.0;
      result = 0.0;
      dVal = "0.0";
      op = " ";
      left = true;
    } else if (buttons[i].over && buttons[i].val.equals("-")) {
      dVal = "0.0";
      left = false;
      op = "-";
    } else if (buttons[i].over && buttons[i].val.equals("*")) {
      dVal = "0.0";
      left = false;
      op = "*";
    } else if (buttons[i].over && buttons[i].val.equals("÷")) {
      dVal = "0.0";
      left = false;
      op = "÷";
    } else if (buttons[i].over && buttons[i].val.equals("^")) {
      dVal = "0.0";
      left = false;
      op = "^";
    } else if (buttons[i].over && buttons[i].val.equals("√")) {
      if (left) {
        l = sqrt(l);
        dVal = str(l);
      } else {
        r = sqrt(r);
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val.equals("ln ")) {
      if (left) {
        l = log(l);
        dVal = str(l);
      } else {
        r = log(r);
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val.equals("ABS ")) {
      if (left) {
        l = abs(l);
        dVal = str(l);
      } else {
        r = abs(r);
        dVal = str(r);
      }
    }
  }

  for (int i = 0; i<numButtons.length; i++) {
    if (dVal.length()<17) {
      if (numButtons[i].over && left == true) {
        if (dVal.equals("0.0")) {
          dVal = numButtons[i].val;
          l = float(dVal);
        } else {
          dVal += numButtons[i].val;
          l = float(dVal);
        }
      } else if (numButtons[i].over && left == false) {
        if (dVal.equals("0.0")) {
          dVal = numButtons[i].val;
          r = float(dVal);
        } else {
          dVal += numButtons[i].val;
          r = float(dVal);
        }
      }
    }
  }
  println("l:" + l);
  println("r:" + r);
  println("result:" + result);
  println("left:" + left);
  println("op:" + op);
}

void updateDisplay() {
  rectMode(CORNER);
  stroke(235);
  strokeWeight(3);
  rect(130, 10, 290, 70, 4);
  if (dVal.length()<=11) {
    textSize(47);
  } else if (dVal.length()==12) {
    textSize(43);
  } else if (dVal.length()==13) {
    textSize(40);
  } else if (dVal.length()==14) {
    textSize(37);
  } else if (dVal.length()==15) {
    textSize(35);
  } else if (dVal.length()==16) {
    textSize(33);
  } else if (dVal.length()==17) {
    textSize(31);
  }
  fill(#1f2c59);
  textAlign(RIGHT);
  text(dVal, 405, 68);
}

void performCalculation() {
  if (op.equals("+")) {
    result = l + r;
  } else if (op.equals("-")) {
    result = l - r;
  } else if (op.equals("*")) {
    result = l * r;
  } else if (op.equals("÷")) {
    result = l / r;
  } else if (op.equals("^")) {
    result = pow(l, r);
  }
  dVal = str(result);
  l = result;
  left = true;
}
