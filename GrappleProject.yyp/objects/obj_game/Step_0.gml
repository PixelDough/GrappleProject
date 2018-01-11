if room == parent {
	room_goto_next();
}

if instance_exists(obj_player) {
	var _dis = point_distance(obj_player.x, obj_player.y-8, mouse_x, mouse_y);
	_dis = min(_dis, obj_player.range);
	var _dir = point_direction(obj_player.x, obj_player.y-8, mouse_x, mouse_y);
	target_x = obj_player.x + lengthdir_x(_dis, _dir);
	target_y = obj_player.y + lengthdir_y(_dis, _dir) -8;
}

if keyboard_check_pressed(vk_escape) game_end();

var _cam_x;
var _cam_y;
var _cam_w = camera_get_view_width(view_camera);;
var _cam_h = camera_get_view_height(view_camera);;

//Move Camera
if instance_exists(obj_player) {
	_cam_x = floor(obj_player.x/_cam_w)*_cam_w;
	_cam_y = floor(obj_player.y/_cam_h)*_cam_h;
	camera_set_view_pos(view_camera, _cam_x, _cam_y);
}

//Deactivate unneded walls
if instance_exists(obj_player) {
	with obj_player {
		_cam_x = floor(obj_player.x/_cam_w)*_cam_w;
		_cam_y = floor(obj_player.y/_cam_h)*_cam_h;
		instance_deactivate_region(_cam_x, _cam_y, _cam_w, _cam_h, false, true);
		instance_activate_region(_cam_x, _cam_y, _cam_w, _cam_h, true);
		instance_activate_layer("META");
		instance_activate_layer("Background");
		instance_activate_object(obj_tongue);
	}
}

global.time += 1;