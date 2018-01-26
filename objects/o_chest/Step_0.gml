/// @description Insert description here
// You can write your code in this editor

lefttouch = place_meeting(self.x - self.sprite_width/2, self.y, o_boy);
righttouch = place_meeting(self.x + self.sprite_width/2, self.y, o_boy);
uppertouch = place_meeting(self.x, self.y - self.sprite_height/2, o_boy);
downtouch = place_meeting(self.x, self.y + self.sprite_height/2, o_boy);
if (lefttouch || righttouch || uppertouch || downtouch)
{
	if(keyboard_key == vk_space)
	{
		create_text_box(self.chest_content);
	}
}