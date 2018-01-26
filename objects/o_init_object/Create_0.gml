/// @description global variables initialization
// You can write your code in this editor
default_player_type = 1;
#macro g global
#macro player_types g.player_types
#macro player_type g.player_type

player_types = 0; // array initialization
player_types[0] = o_boy;
player_types[1] = o_raven;
player_types[2] = o_ghost;
player_type = default_player_type;


room_goto_next();

exit;