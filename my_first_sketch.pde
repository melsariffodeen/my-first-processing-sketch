
int [] newsletter; // this is an array to hold mailchimp data
int [] newsletter2;
PImage photo;
PImage hashtag;

void setup () {
  size (775, 500);
  String [] data = loadStrings("data.txt");
  newsletter = int(split( data[0], ','));
  String [] data2= loadStrings("data2.txt");
  newsletter2 = int(split( data2[0], ','));
  photo = loadImage("freddie.png");
  hashtag = loadImage("Favicon.png");
}

void draw () {
  background (64, 64, 64, .8);
  smooth(); // improves the overall quality of draw

  // first newsletter
  for (int i=0; i<newsletter.length; i++) {


    int circleX = i * 150 + 80;
    int circleDia= newsletter[i];
    int rectX= circleX-30;
    int rectY = 50;
    int rectWidth = 70;
    int rectHeight = 25;


    noFill();  
    stroke(255);
    strokeWeight(1);
    rect(rectX, rectY, rectWidth, rectHeight);


    if ((mouseX>rectX) && (mouseX<rectX + rectWidth) && (mouseY>rectY) && (mouseY<rectY+rectHeight)) {
      stroke(139, 139, 139); 
      noFill();
      strokeWeight(8);  
      ellipse(circleX, height/2, circleDia, circleDia);
    }
    else {
      stroke(139, 139, 139); 
      strokeWeight(4);
      noFill();
      ellipse(circleX, height/2, circleDia, circleDia);
    }

    // second newsletter

    for (int i2=0; i2<newsletter2.length; i2++) {


      int circleX2 = i2 * 150 + 80;
      int circleDia2= newsletter2[i2];
      int rectX2= circleX2-30;
      int rectY2 = 50;
      int rectWidth2 = 70;
      int rectHeight2 = 25;

      if ((mouseX>rectX2) && (mouseX<rectX2 + rectWidth2) && (mouseY>rectY2) && (mouseY<rectY2+rectHeight2)) {
        stroke(255); 
        noFill();
        strokeWeight(8);  
        ellipse(circleX2, height/2, circleDia2, circleDia2);
      }
      else {
        stroke(255); 
        strokeWeight(4);
        noFill();
        ellipse(circleX2, height/2, circleDia2, circleDia2);
      }

      // text labels

      fill(255);
      text("Ladies Learning Code Data Visualization Mailchimp Report", 200, 22);

      fill(255);
      noStroke();
      text("deliveries", 58, 65);
      text("bounces", 210, 65);
      text("opens", 364, 65);
      text("clicks", 515, 65);
      text("unsubs", 661, 65);

      // color legend for data set #1 - october newsletter
      fill(139, 139, 139);
      rect (width/2-150, 475, 10, 10);
      text("october newsletter", width/2-135, 485);

      // color legend for data set #2 - november newsletter
      fill(255);
      rect (width/2-15, 475, 10, 10);
      text("november newsletter", width/2, 485);

      image(photo,620,350,150,150);
      image(hashtag,15,460,25,25);
    }
  }
}

