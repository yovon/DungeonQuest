/// @description Insert description here
// You can write your code in this editor
delta_x = 0;
delta_y = 0;

obj_speed = 8;

left_bound = self.x - self.sprite_width / 2;
right_bound = self.x + self.sprite_width / 2;
up_bound = self.y - self.sprite_width / 2;
down_bound = self.y + self.sprite_width / 2;

switch(keyboard_key)
    {
        case vk_left:
            delta_x = -obj_speed;
            break;
        case vk_right:
            delta_x = obj_speed;
            break;
        default:
            delta_x = 0;
    }
	
switch(keyboard_key)
    {
        case vk_up:
            delta_y = -obj_speed;
            break;
        case vk_down:
            delta_y = obj_speed;
            break;
        default:
            delta_y = 0;
    }
	
if (place_meeting(self.x + delta_x, self.y, o_ghost_wall)){
	while(!place_meeting(self.x + sign(delta_x), self.y, o_wall))
	{
		self.x += sign(delta_x);
	}
	delta_x = 0;	
}

if (place_meeting(self.x, self.y + delta_y, o_ghost_wall)){
	while(!place_meeting(self.x, self.y + sign(delta_y), o_wall))
	{
		self.y += sign(delta_y);
	}
	delta_y = 0;	
}

self.x += delta_x;
self.y += delta_y;

if(audio_is_paused(m_Main_Theme) && audio_is_playing(m_riddle))
{
	audio_resume_sound(m_Main_Theme);
}

if (random(1000) < 1)
{
	sound = choose(ghost_a, ghost_b, wind, mutter);
	audio_play_sound(sound, 10, false);
}