///movements including collision check with barriers

    x_movement = 1;
    y_movement = 1;

//collision check: (fake) 
if keyboard_check(ord('A')){
    sprite_index = walking_spr;
    image_xscale = -1;
    image_speed = set_image_speed;
    if(place_meeting(x-spd,y,obj_stonestage1)){
        //lookat that later
        while(!place_meeting(x-1,y,obj_stonestage1)){
            x = x-1;
        }
        x_movement = -0.2;
    }
    else{
        x_movement = 1;
    }
}
if keyboard_check(ord('D')){
    sprite_index = walking_spr;
    image_xscale = 1;
    image_speed = set_image_speed;
    if(place_meeting(x+spd,y,obj_stonestage1)){
        while(!place_meeting(x-1,y,obj_stonestage1)){
            x = x+1;
        }
        x_movement = -0.2;
    }
    else{
        x_movement = 1;
    }
}
if keyboard_check(ord('S')){
    image_speed = set_image_speed;
    if(place_meeting(x,y+spd,obj_stonestage1)){
        while(!place_meeting(x,y+1,obj_stonestage1)){
            y = y+1;
        }
        y_movement = -0.2;
    }
    else{
        y_movement = 1;
    }
}
if keyboard_check(ord('W')){
    image_speed = set_image_speed;
    if(place_meeting(x,y-spd,obj_stonestage1)){
        while(!place_meeting(x,y-1,obj_stonestage1)){
            y = y-1;
        }
        y_movement = -0.2;
    }
    else{
        y_movement = 1;
    }
}
else if keyboard_check(vk_nokey){
    sprite_index = standing_spr;
}
    

//double key:
if (keyboard_check(ord('W'))&&keyboard_check(ord('A'))){
    y = y-(spd*1.414/2)*y_movement;
    x = x-(spd*1.414/2)*x_movement;
}
else if (keyboard_check(ord('W'))&&keyboard_check(ord('D'))){
    y = y-(spd*1.414/2)*y_movement;
    x = x+(spd*1.414/2)*x_movement;
}
else if (keyboard_check(ord('S'))&&keyboard_check(ord('A'))){
    y = y+(spd*1.414/2)*y_movement;
    x = x-(spd*1.414/2)*x_movement;
}
else if (keyboard_check(ord('S'))&&keyboard_check(ord('D'))){
    y = y+(spd*1.414/2)*y_movement;
    x = x+(spd*1.414/2)*x_movement;
}


//single key:
else if keyboard_check(ord('W')){
    y = y-spd*y_movement;
}
else if keyboard_check(ord('S')){
    y = y+spd*y_movement;
}
else if keyboard_check(ord('A')){
    x = x-spd*x_movement;
}
else if keyboard_check(ord('D')){
    x = x+spd*x_movement;
}
