block = instance_place(x+hsp,y,obj_stonestage1);
if(block!=noone){
    xDist = x - block.x;
    nxDist= x+hsp - block.x;
    yDist = y-block.y;
    curDist = xDist*xDist + yDist*yDist;
    nextDist= nxDist*nxDist + yDist*yDist;      
    if(nextDist<curDist){
        return true;
    }
    else{
    return false;
    }
}
else{
    return false;
}
