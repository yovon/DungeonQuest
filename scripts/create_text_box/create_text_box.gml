mb = instance_create_depth(-100, -100, -10000, text_box)
with (mb) {
	for(i = 0; i < argument_count; i++) {
		message[i] = argument[i];
	}
}
return mb;
