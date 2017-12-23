sprite_index = spr_normal;
if(instance_exists(obj_main)){
    main = instance_nearest(x,y,obj_main);
    x1 = main.x-argument0;
    x2 = main.x+argument0;
    y1 = main.y-argument0;
    y2 = main.y+argument0;        
    if(collision_ellipse(x1,y1,x2,y2,obj_slime,false,false)==self){
        state = enemy_state.noticed;
    }
    else{   
        state = enemy_state.normal;
    }
}
else{
    state = enemy_state.normal;
}
