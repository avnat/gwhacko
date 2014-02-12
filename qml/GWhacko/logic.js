var randomnumber_image = 0; // stores the image index
var randomnumber_image1 = 3; // stores the image index
var randomnumber_position = 3; // stores position index
var randomnumber_position1 = 4;
var count =0; // stores score
var pos_x = 38; // x position on plate
var pos_y = 0; // y postion on plate
var times = 0; // keeps track of number of times the doll image appears
var x,y,x1,y1; // stores the x and y postion on the plate
var obj;
var flag=0;
var level=1;

function generaterandomness()
{
    randomnumber_image=Math.floor(Math.random()*8);
    generateposition();
    return randomnumber_image;
}

function generaterandomness1()
{
    randomnumber_image1=Math.floor(Math.random()*8);
    generateposition();
    return randomnumber_image1;
}

function generateposition()
{
    var i=99;
    var j=99;

    randomnumber_position=Math.floor(Math.random()*12);
    randomnumber_position1=Math.floor(Math.random()*12);

    while(randomnumber_position== randomnumber_position1)
    {
            randomnumber_position=Math.floor(Math.random()*12);
            randomnumber_position1=Math.floor(Math.random()*12);
    }

    if(j==randomnumber_position)
    {
        randomnumber_position=Math.floor(Math.random()*12);
    }
    j = randomnumber_position;

    if(i==randomnumber_position1)
    {
        randomnumber_position1=Math.floor(Math.random()*12);
    }
    i = randomnumber_position1;

    if(randomnumber_position === 0 || randomnumber_position == 4 || randomnumber_position == 8)
    {
        x = pos_x
        y = pos_y + 115 * (randomnumber_position/4);
    }
    else if(randomnumber_position == 1 || randomnumber_position == 5 || randomnumber_position == 9)
    {
        x = pos_x*5;
        y = pos_y + 115 * (parseInt(randomnumber_position/4));
    }
    else if(randomnumber_position == 2 || randomnumber_position == 6 || randomnumber_position == 10)
    {
        x = pos_x*9;
        y = pos_y + 115 * (parseInt(randomnumber_position/4));
    }
    else if(randomnumber_position == 3 || randomnumber_position == 7 || randomnumber_position == 11)
    {
        x = pos_x*13;
        y = pos_y + 115 * (parseInt(randomnumber_position/4));
    }


    if(randomnumber_position1 === 0 || randomnumber_position1 == 4 || randomnumber_position1 == 8)
    {
        x1 = pos_x
        y1 = pos_y + 115 * (randomnumber_position1/4);
    }
    else if(randomnumber_position1 == 1 || randomnumber_position1 == 5 || randomnumber_position1 == 9)
    {
        x1 = pos_x*5;
        y1 = pos_y + 115 * (parseInt(randomnumber_position1/4));
    }
    else if(randomnumber_position1 == 2 || randomnumber_position1 == 6 || randomnumber_position1 == 10)
    {
        x1 = pos_x*9;
        y1 = pos_y + 115 * (parseInt(randomnumber_position1/4));
    }
    else if(randomnumber_position1 == 3 || randomnumber_position1 == 7 || randomnumber_position1 == 11)
    {
        x1 = pos_x*13;
        y1 = pos_y + 115 * (parseInt(randomnumber_position1/4));
    }

    //console.log("randomnumber_pos ="+ randomnumber_position)
    //console.log(x + ","+ y);
}

function count_score()
{
    if(randomnumber_image== 3 || randomnumber_image == 2 || randomnumber_image ==1 || randomnumber_image ==7)
    {
        count=count+2;
    }
    else
    {
        count--;
    }

    return String(count);

}

function count_score1()
{
    if(randomnumber_image1== 3 || randomnumber_image1 == 2 || randomnumber_image1 ==1 || randomnumber_image1 ==7)
    {
        count=count+2;
    }
    else
    {
        count--;
    }

    return String(count);
}

function clear_values()
{
    randomnumber_image = 0; // stores the image index
    randomnumber_image1 = 3; // stores the image index
    randomnumber_position = 3; // stores position index
    randomnumber_position1 = 4;
    count =0; // stores score
    pos_x = 38; // x position on plate
    pos_y = 0; // y postion on plate
    flag = 0;

}
