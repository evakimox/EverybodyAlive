if(instance_exists(obj_main)){
    main = instance_nearest(x,y,obj_main);
    movingDir = sign(main.x - x);
    move_towards_point(main.x,main.y,spd*2);
    image_xscale=abs(image_yscale)*movingDir;
}

