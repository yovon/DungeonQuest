global.MODE_BOY = 0;
global.MODE_RAVEN = 1;
global.MODE_GHOST = 2;

button_boy = instance_create_depth(200,350,0,o_button);
button_boy.sprite_index = s_standing_boy;
with(button_boy){
	button_player_value = global.MODE_BOY;
}

button_raven = instance_create_depth(500,350,0,o_button);
button_raven.sprite_index = s_raven;
with(button_raven){
	button_player_value = global.MODE_RAVEN;
}

button_ghost = instance_create_depth(800,350,0,o_button);
button_ghost.sprite_index = s_ghosty;
with(button_ghost){
	button_player_value = global.MODE_GHOST;
}