/// @description Tongue State
//if place_free(obj_game.target_x, obj_game.target_y) {
//	x = obj_game.target_x;
//	y = obj_game.target_y;
//}
if instance_exists(obj_tongue) {
	if point_distance(x, y-8, obj_tongue.x, obj_tongue.y) > range {
		instance_destroy(obj_tongue);
	}
	with obj_tongue {
		if place_meeting(x, y, obj_wall) {
			other.vx = 0;
			other.vy = 0;
			other.x = round((x-hspeed)/8)*8;
			other.y = round((y-vspeed)/8)*8;
			instance_destroy();
			//speed = 0;
			other.ACTION = player.stick;
		}
	}
} else {
	ACTION = player.idle;
}