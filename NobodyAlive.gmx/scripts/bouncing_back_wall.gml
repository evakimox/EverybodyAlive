//drop destination
x1 = main.x;
y1 = main.y;
//source position
x2 = argument0;
y2 = argument1;

dirx = sign(x2-main.x);
diry = sign(y2-main.y);

hit = collision_line(x1,y1,x2,y2,obj_border,true,true);
while(hit!=noone){
    x1 = main.x;
    y1 = main.y;
   if(x2 != main.x){
        main.x += dirx;
    }
    if(y2 != main.y){
        main.y += diry;
    }
    hit = collision_line(x1,y1,x2,y2,obj_border,true,true);
}
