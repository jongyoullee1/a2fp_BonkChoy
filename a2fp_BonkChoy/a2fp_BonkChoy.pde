Bedroom bed = new Bedroom();
Kitchen food = new Kitchen();
Living tv = new Living();

PImage bedroom;
PImage kitchen;
PImage livingroom;

void setup() {
  size(912,680);
  
  bedroom = loadImage("bedroom.jpg");
  bedroom.resize(912,0);
 
  livingroom = loadImage("bedroom.jpg");//placeholder
  livingroom.resize(912,0);
  
  kitchen = loadImage("bedroom.jpg");//placeholder
  kitchen.resize(912,0);
  
  bed.rubik = new Animation(bed.cube.sprites, 3, 20);
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
}

void draw() {
  if (bed.success.equals("")) {//if no levels passed
    image(bedroom, 0, 0);
    //rand.display(600,600);
    bed.draw();
    for (ImageCoordinate hi : bed.points) {
      hi.display();
    }
  }//end bed
  else if ( bed.success.equals("Bedroom") ) {//if bedroom passed
    image(livingroom, 0, 0);
    tv.draw();
    for (ImageCoordinate hi : tv.points) {
      hi.display();
    }
    if ( tv.success.equals("Living") ) {//if living room passed
      System.out.println("please");
      image(kitchen, 0, 0);
      food.draw();
    }//end kitchen
  }
}
