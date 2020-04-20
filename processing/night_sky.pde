// Global variables
color grass = color (13,75,12);
color moon = color (183,183,183);
color crater = color(126,126,126);
color star = color(196,182,22);

/**
    setup():
        Creates the items needed to set up the drawing window
*/
void setup()
{
    size(600,600); // Sets window size
    background(17,37,95); // Sets the background color
    noStroke(); // Disables drawing the stroke (outline)
    noLoop(); // Stops the continuous execution within the draw()
}

/**
    draw_grass():
        Creates green rectangle for the grass
*/
void draw_grass()
{
    fill(grass);
    rect(0,500,600,600);
}

/**
    draw_stars():
        Creates a loop to make 100 ellipes for the stars
*/
void draw_stars()
{
    fill(star);
    star_count = 0;
    
    // loop to create 100 stars
    while (star_count < 100){
        ellipse(random(0,600),random(0,450),10,10);
        star_count++;
    }
}

/**
    draw_moon():
        Creates the ellipes for the moon and its craters
*/
void draw_moon()
{
    fill(moon);
    ellipse(600,0,300,300);

    fill(crater);
    ellipse(550,30,30,30);
    ellipse(599,80,50,50);
    ellipse(505,100,20,20);
    ellipse(475,10,40,40);
    ellipse(575,125,10,10);
    ellipse(516,63,10,10);
    ellipse(599,3,10,10);
}

/**
    draw_house():
        Creates the shapes needed to draw the house
*/
void draw_house()
{
    //roof
    fill(#0000FF);
    triangle(220, 350, 140, 410, 300, 410);
    //house
    fill(#FFC0CB);
    rect(160, 410, 120, 100);

    //windows and door
    fill(#425841);
    rect(200, 470, 40, 40);
    fill(255);
    rect(180, 430, 20, 20); 
    rect(240, 430, 20, 20);
    //doorknob
    fill(0);
    ellipse(210,490,10,10);
    fill(255);
}

/**
    draw_moon():
        Creates the shapes needed to draw a stick figure
*/
void draw_stick_figure()
{
    strokeWeight(2);
    stroke(0,0,0);
    fill(0,0,0);

    // draw head
    ellipse(50,480,10,10);

    // draw body
    line(50,485,50,510);

    // draw right leg
    line(50,510,55,525);

    // draw left leg
    line(50,510,45,525); 

    // draw right arm
    line(50,490,60,505);

    // draw left arm
    line(50,490,45,505);
}

/**
    draw():
        Draws all of the content into the procssing window
        of the specified size at the specified locations
        by calling all of the draw functions.
*/
void draw()
{
    draw_grass();
    draw_stars();
    draw_moon();
    draw_house();
    draw_stick_figure();
}