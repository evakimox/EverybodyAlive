if(place_meeting(x+xspd,y,obj_stonestage1)){
    xstep = sign(xspd);
    while(!place_meeting(x+xstep,y,obj_stonestage1))  x+=xstep;
    xspd = 0;
}

if(place_meeting(x,y+yspd,obj_stonestage1)){
    ystep = sign(yspd);
    while(!place_meeting(x,y+ystep,obj_stonestage1))  y+=ystep;
    yspd = 0;
}
