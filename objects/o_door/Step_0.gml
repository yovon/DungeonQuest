/// @description Insert description here
// You can write your code in this editor

lefttouch = false;
righttouch = false;
uppertouch = false;
downtouch = false;

if(global.player_type == global.MODE_BOY)
{
	lefttouch = place_meeting(self.x - self.sprite_width/2, self.y, o_boy);
	righttouch = place_meeting(self.x + self.sprite_width/2, self.y, o_boy);
	uppertouch = place_meeting(self.x, self.y - self.sprite_height/2, o_boy);
	downtouch = place_meeting(self.x, self.y + self.sprite_height/2, o_boy);
}

if(global.player_type == global.MODE_RAVEN)
{
	lefttouch = place_meeting(self.x - self.sprite_width/2, self.y, o_raven);
	righttouch = place_meeting(self.x + self.sprite_width/2, self.y, o_raven);
	uppertouch = place_meeting(self.x, self.y - self.sprite_height/2, o_raven);
	downtouch = place_meeting(self.x, self.y + self.sprite_height/2, o_raven);
}

if (lefttouch || righttouch || uppertouch || downtouch)
{
	if(keyboard_key == vk_space)
	{
		s = get_string("Enter the KeyWord","");

		if(s == self.key_word)
		{
			create_text_box("You entered: "+s, "That is the correct password!");
			audio_play_sound(choose(door_sound_1, door_sound_2, door_sound_3, door_sound_4, door_sound_5), 10, false);
			if(self.end_door)
			{
				if(global.player_type == global.MODE_BOY)
				{
					audio_stop_all();
					audio_play_sound(choose(door_sound_1, door_sound_2, door_sound_3, door_sound_4, door_sound_5), 10, false);
					room_goto_next();
				}
				else
				{
					instance_destroy(self);
				}
			}
			else
			{
				instance_destroy(self);
			}
		}
		else
		{
			create_text_box("You entered: "+s, "That is wrong, please try again and check your upper letters.");
			audio_play_sound(door_lock, 10, false);
		}
	}
}