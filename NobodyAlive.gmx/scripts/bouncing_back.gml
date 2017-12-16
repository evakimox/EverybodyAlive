x1 = main.x-11;
y1 = main.y-32;
x2 = main.x+(23-11);
y2 = main.y+(65-32);

srcx = argument0;
dirx = sign(srcx-main.x);
srcy = argument1;
diry = sign(srcy-main.y);

hitStuff = collision_rectangle(x1,y1,x2,y2,obj_stonestage1,true,true);
while(hitStuff!=noone){
    x1 = main.x-11;
    y1 = main.y-32;
    x2 = main.x+(23-11);
    y2 = main.y+(65-32);
   //if(srcx != main.x){
        main.x += dirx;
    //}
    //if(srcy != main.y){
        main.y += diry;
    //}
    hitStuff = collision_rectangle(x1,y1,x2,y2,obj_stonestage1,true,true);
}
