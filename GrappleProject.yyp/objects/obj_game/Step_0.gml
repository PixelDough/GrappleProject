if room == parent {
	room_goto_next();
}

if instance_exists(obj_player) {
	var _dis = point_distance(obj_player.x, obj_player.y, mouse_x, mouse_y);
	_dis = min(_dis, obj_player.range);
	var _dir = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
	target_x = obj_player.x + lengthdir_x(_dis, _dir);
	target_y = obj_player.y + lengthdir_y(_dis, _dir);
}

global.time += 1;