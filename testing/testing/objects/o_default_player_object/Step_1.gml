/// @change to real player depends on globals.player_type
// You can write your code in this editor
show_debug_message("############ HELLO #########################");
show_debug_message(object_get_name(string(global.player_types[global.player_type])));
instance_create_depth(x, y, 0, global.player_types[global.player_type]);
instance_destroy()



