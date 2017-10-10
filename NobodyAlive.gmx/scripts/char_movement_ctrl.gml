//keyboard control
go_up = keyboard_check(ord('W'));
go_down = keyboard_check(ord('S'));
go_left = keyboard_check(ord('A'));
go_right = keyboard_check(ord('D'));

//control animation
if xspd>0 {
    follower.sprite_index = walking_spr;
    follower.image_xscale = 1;
    follower.image_speed = set_image_speed;
}
if xspd<0 {
    follower.sprite_index = walking_spr;
    follower.image_xscale = -1;
    follower.image_speed = set_image_speed;
}
if go_up || go_down {
    follower.image_speed = set_image_speed;
}

//double key:
if (go_up && go_left){
    yspd = -(spd*1.414/2);
    xspd = -(spd*1.414/2);
}
else if (go_up && go_right){
    yspd = -(spd*1.414/2);
    xspd = +(spd*1.414/2);
}
else if (go_down && go_left){
    yspd = +(spd*1.414/2);
    xspd = -(spd*1.414/2);
}
else if (go_down && go_right){
    yspd = +(spd*1.414/2);
    xspd = +(spd*1.414/2);
}
//single key:
else if go_up{
    yspd = -spd;
    xspd = 0;
}
else if go_down{
    yspd = spd;
    xspd = 0;
}
else if go_left{
    yspd = 0;
    xspd = -spd;
}
else if go_right{
    yspd = 0;
    xspd = spd;
}
//no control key pressing
else if !go_up && !go_down && !go_left && !go_right {
    yspd = 0;
    xspd = 0;
    follower.sprite_index = standing_spr;
    follower.image_speed = 0;
}
