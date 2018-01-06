
if(place_meeting_symmetry(x+xspd,y,self)){
    xstep = sign(xspd);
    while(!place_meeting_symmetry(x+xspd,y,self))  x+=xstep;
    xspd = 0;
}

if(place_meeting_symmetry(x,y+yspd,self)){
    ystep = sign(yspd);
    while(!place_meeting_symmetry(x+xspd,y,self))  y+=ystep;
    yspd = 0;
}
