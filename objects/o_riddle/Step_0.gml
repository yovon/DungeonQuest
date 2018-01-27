/// @description Insert description here
// You can write your code in this editor

if (place_meeting(self.x, self.y, o_ghost))
{
	if(keyboard_key == vk_space)
	{
		s = "You encountered a Riddle on the wall, and you have read it - ";
		create_text_box(s,self.sentence_1,self.sentence_2,self.sentence_3,self.sentence_4,self.sentence_5);
	}
}