xValue = argument0;
yValue = argument1;
objValue = argument2;

hdiff = (bbox_right - bbox_left)*0.4;
vdiff = (bbox_bottom - bbox_top)*0.4;

return collision_ellipse(xValue-hdiff,yValue-hdiff,xValue+hdiff,yValue+hdiff,obj_stonestage1,true,false);
