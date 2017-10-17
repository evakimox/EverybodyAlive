random_set_seed(current_time);
bg_chooser = floor(random(43));
if(bg_chooser>=21){
    background_index = bg_stage_forest;
}
else{
    background_index = bg_stage1;
}
