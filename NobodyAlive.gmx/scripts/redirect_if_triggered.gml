///change image direction of random moving
if(RedirectTrigger){
    RedirectTrigger = false;
    LastDir = -1;
    if(movingDir ==0){
        movingDir = -1*LastDir;
    }
    else if(movingDir == -1){
        LastDir = -1;
        movingDir = -1*LastDir;
    }
    else if(movingDir ==1){
        LastDir = 1;
        movingDir = -1*LastDir;
    }
    image_xscale = abs(image_yscale)*movingDir;
}
