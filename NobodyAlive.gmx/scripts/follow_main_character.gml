if(instance_exists(obj_main)){
    main_char = instance_nearest(x,y,obj_main);
    x = main_char.x;
    if(main_char.hp>0){
        y = main_char.y;
    }
}
