bool_left = place_meeting(x-50,y,obj_swordsman);
bool_right = place_meeting(x+50,y,obj_swordsman);
bool_up = place_meeting(x,y+50,obj_swordsman);
bool_down = place_meeting(x,y-50,obj_swordsman);

if(bool_left or bool_right or bool_up or bool_down){
    if(keyboard_check_released(vk_space)){
        image_index = 1;
    }
}
