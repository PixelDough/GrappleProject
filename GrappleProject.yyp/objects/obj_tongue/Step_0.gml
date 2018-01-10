if place_meeting(x, y, obj_wall) {
	obj_player.ACTION = player.idle;
	obj_player.x = round(x/16)*16;
	obj_player.y = round(y/16)*16;
	instance_destroy();
}