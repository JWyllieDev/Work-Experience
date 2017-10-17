var cx = camera_get_view_x(view_camera[0]); // camera x, local variable
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);
var ch = camera_get_view_height(view_camera[0])

draw_set_font(fntDeath);
draw_set_colour(c_white);
draw_text(cx + 436, (cy + ch/2) - 64, "You have Died. Your final score was " + string(score) + ". Press R to restart.");