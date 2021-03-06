Bedroom bed = new Bedroom();
Kitchen food = new Kitchen();
Living tv = new Living();

PImage bedroom;
PImage kitchen;
PImage livingroom;

PImage starter;

boolean pressed = false;

void setup() {
  size(912,680);
  starter = loadImage("starter.png");
  starter.resize(912,680);
  
  bedroom = loadImage("Bedroom.jpg");
  bedroom.resize(912,0);
 
  livingroom = loadImage("LIVINGROOM.jpg");//placeholder
  livingroom.resize(912,0);
  
  kitchen = loadImage("Kitchen.jpg");//placeholder
  kitchen.resize(912,0);
  
  bed.bedr = loadImage("Bedroom.jpg");
  bed.bedr.resize(912,0);
  
  bed.rubik = new Animation(bed.cube.sprites, 3, 50);
  bed.rubiks = loadImage(bed.cube.sprites[0]);
  
  bed.note0 = loadImage("Yorkie.png"); 
  bed.note0.resize(0,20); 
  bed.note1 = loadImage("Armadillo.png"); 
  bed.note1.resize(0,20); 
  bed.note2 = loadImage("Rat.png"); 
  bed.note2.resize(0,20); 
  bed.note3 = loadImage("Narwhal.png"); 
  bed.note3.resize(0,20); 
  bed.note4 = loadImage("Bat.png"); 
  bed.note4.resize(0,20); 
  bed.note5 = loadImage("Dog.png"); 
  bed.note5.resize(0,20); 
  
  bed.Note0 = loadImage("Yorkie.png");
  bed.Note1= loadImage("Armadillo.png");
  bed.Note2=loadImage("Rat.png");
  bed.Note3=loadImage("Narwhal.png");
  bed.Note4=loadImage("Bat.png");
  bed.Note5=loadImage("Dog.png"); 
  
  bed.keys = loadImage("key.png");
  bed.keys.resize(0,20); 
  bed.Keys = loadImage("key.png");
  
  tv.keys = loadImage("key.png");
  tv.keys.resize(0,20); 
  tv.Keys = loadImage("key.png");
  
  tv.ax = loadImage("ax.png");
  tv.ax.resize(0,70);
  tv.ax1 = loadImage("ax.png");
  tv.book0 = loadImage("1984.png");
  tv.book0.resize(0,50);
  tv.b1984 = loadImage("1984.png");
  tv.book1 = loadImage("fah.png");
  tv.book1.resize(0,50);
  tv.fah = loadImage("fah.png");
  tv.paper = loadImage("paper.png");
  tv.paper.resize(0,30);
  tv.paper1 = loadImage("paper.png");
  
  food.knife = loadImage("knife.png");
  food.knife.resize(0,30);
  food.knife1 = loadImage("knife.png");
  food.cookedChicked = loadImage("CookedChicked.png");
  food.cookedChicked.resize(0,50);
  food.cooked = loadImage("CookedChicked.png");
    food.grade = loadImage("grade.png");
  food.grade.resize(0,30);
  food.grade1 = loadImage("grade.png");
  
  bed.player = new person(50,300);
  bed.g = new end(560, 500);
 
  bed.walls = new wall[11];
  bed.walls[0] = new wall(250,0,40,500);
  bed.walls[1] = new wall(500, 250,40,500);
  bed.walls[2] = new wall(80, 0, 20, 190);
  bed.walls[3] = new wall(80, 200, 20, 500);
  bed.walls[4] = new wall(120, 0, 20, 200);
  bed.walls[5] = new wall(120, 250, 20, 300);
  bed.walls[6] = new wall(120, 560, 20, 300);
  bed.walls[7] = new wall(140, 300, 348, 20);
  bed.walls[8] = new wall(140, 400, 345, 20);
  bed.walls[9] = new wall(140, 500, 340, 20);
  bed.walls[10] = new wall(140, 600, 380, 20);
}

void draw() {
  image(starter,0,0);
  if (pressed) {//if no levels passed
    image(bedroom, 0, 0);
    //rand.display(600,600);
    bed.draw();
    for (ImageCoordinate hi : bed.points) {
      hi.display();
    }
  }//end bed
  if ( bed.success.equals("Bedroom") ) {//if bedroom passed
    image(livingroom, 0, 0);
    tv.draw();
    for (ImageCoordinate hi : tv.points) {
      hi.display();
    }
    if ( tv.success.equals("Living") ) {//if living room passed
      image(kitchen, 0, 0);
      food.draw();
      for (ImageCoordinate hi : food.points) {
        hi.display();
      }
    }//end kitchen
  }
}

void mousePressed() {
  pressed = true;
}
