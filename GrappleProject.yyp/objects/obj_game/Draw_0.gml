//CURSOR
draw_sprite(spr_cursor, (global.time%60)/30, target_x, target_y);
draw_sprite_ext(spr_cursor, (global.time%60)/30, mouse_x, mouse_y, 1, 1, 0, c_white, 0.25);

var _camx = camera_get_view_x(view_camera[0]);
var _camy = camera_get_view_y(view_camera[0]);
var _camw = camera_get_view_width(view_camera[0]);
draw_set_halign(fa_right);
draw_text_color(_camx + _camw, _camy, "LEFT CLICK TO SHOOT", c_white, c_white, c_white, c_white, 0.5);
draw_text_color(_camx + _camw, _camy+16, "SCROLL TO CHANGE RANGE", c_white, c_white, c_white, c_white, 0.5);
draw_text_color(_camx + _camw, _camy+32, "PRESS ESC TO QUIT", c_white, c_white, c_white, c_white, 0.5);
draw_set_halign(fa_left);