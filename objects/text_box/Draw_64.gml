/// @description Draw the message in the current state
// You can write your code in this editor
#macro number_of_lines 3
draw_set_font(display_text);
char_width = string_width("m");
char_height = string_height("M");	

orig_color = draw_get_color()
draw_set_color(c_white)

x_margin_pixels = ceil((x_margin_percent / 100.0) * display_get_gui_width());
y_margin_pixels = ceil((x_margin_percent / 100.0) * display_get_gui_height());
two_third_display_height = 2 * display_get_height() / 3;

rect_x1 = 0 + x_margin_pixels;
rect_y1 = two_third_display_height;
rect_x2 = display_get_gui_width() - x_margin_pixels;
rect_y2 = display_get_gui_height() - y_margin_pixels;
draw_rectangle(rect_x1, rect_y1, rect_x2, rect_y2, false);

draw_set_color(c_black);
text_inner_margin = rect_x1 + char_width + 2;
text_height_inner_margin = (rect_y2 - rect_y1) * 0.01
text_x = text_inner_margin;
text_scale = ((rect_y2 - rect_y1 - text_height_inner_margin) / (number_of_lines * 2.0 - 1)) / real(char_height); // trying to fit two lines in the text box
line_seperator_height = char_height * (text_scale * 2)

//draw the text at the coordinates with scale of number_of_lines lines:
draw_text_ext_transformed(text_inner_margin, // x
			  rect_y1 + text_height_inner_margin, //y 
			  message_draw, // message
			  line_seperator_height, // line separator height
			  rect_x2 - text_x - text_inner_margin, // max line width
			  text_scale, // text scale
			  text_scale, // text scale
			  0); // angle
