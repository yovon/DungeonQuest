/// @description global variables initialization
// You can write your code in this editor
default_player_type = 1;

global.player_types = 0; // array initialization
global.player_types[0] = o_boy;
global.player_types[1] = o_raven;
global.player_types[2] = o_ghost;
global.player_type = default_player_type;


room_goto_next();

exit;