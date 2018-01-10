/// @description Tongue State
//if place_free(obj_game.target_x, obj_game.target_y) {
//	x = obj_game.target_x;
//	y = obj_game.target_y;
//}
vx = 0;
vy = 0;

if !instance_exists(obj_tongue) {
	var _tongue = instance_create_layer(x, y-8, "Instances", obj_tongue);
	_tongue.direction = point_direction(x, y-8, obj_game.target_x, obj_game.target_y);
	_tongue.speed = 5;
}

if point_distance(x, y-8, obj_tongue.x, obj_tongue.y) > range {
	instance_destroy(obj_tongue);
}

if !instance_exists(obj_tongue) {
	ACTION = player.idle;
}