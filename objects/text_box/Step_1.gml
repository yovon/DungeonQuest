/// @description after-create code.
// You can write your code in this editor
if (!created) {
	created = true;
	if (!is_array(message)) {
		show_error("Created text box without message given to it!!!!", true);	
	} 
	message_current = 0; //0 is the first number in our array, and the message we are currently at
	message_end = array_length_1d(message);
	message_length = string_length(message[message_current]);
}
