// Angie Liu | 18 Sept 2025 | Making Cars
Car william, hill;
Car[] cars = new Car[67];

void setup() {
  size(600, 600);
  william = new Car(color(random(0, 255), random(0, 255), random(0, 255)));
  hill = new Car(color(random(0, 255), random(0, 255), random(0, 255)));
  for (int i = 0; i<cars.length; i = i + 1) {
    cars [i] = new Car(color(random(0, 255), random(0, 255), random(0, 255)));
  }
}

void draw() {
  background(255);
  william.display();
  william.move();
  hill.display();
  hill.move();
  for (int i = 0; i<cars.length; i = i + 1) {
    cars[i].display();
    cars[i].move();
  }
}
