//CURSOR
draw_sprite(spr_cursor, (global.time%60)/30, target_x, target_y);
draw_sprite_ext(spr_cursor, (global.time%60)/30, mouse_x, mouse_y, 1, 1, 0, c_white, 0.25);