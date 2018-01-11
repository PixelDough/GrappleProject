l = keyboard_check(vk_left);
r = keyboard_check(vk_right);
l_p = keyboard_check_pressed(vk_left);
r_p = keyboard_check_pressed(vk_right);
u_p = keyboard_check_pressed(vk_up);
d_p = keyboard_check_pressed(vk_down);

if ACTION != player.tongue {
	if ACTION != player.stick {
		if l vx = max(vx - sp, -spMax);
		if r vx = min(vx + sp, spMax);
		if (!l and !r) or (l and r) vx *= 0.5;

		if abs(vx) < 0.1 {
			vx = 0;
			ACTION = player.idle;
		}

		vy += grav;

		if (place_meeting(x+vx,y,obj_wall)) {
		    while(!place_meeting(x+sign(vx),y,obj_wall)) {
		        x += sign(vx);
		    }
			//Wall Jump
			//if u_p and !place_meeting(x,y+vy,obj_wall) {
			//	vy = -jh;
			//	vx = spMax * (sign(-vx));
			//} else 
			vx = 0;
		}
		if (place_meeting(x,y+vy,obj_wall)) {
		    while(!place_meeting(x,y+sign(vy),obj_wall)) {
		        y += sign(vy);
		    }
		    vy = 0;
			if u_p {
				vy = -jh;
			}
		}
	} 
	if mouse_check_button_pressed(mb_left) {
		ACTION = player.tongue;
		if !instance_exists(obj_tongue) {
			var _tongue = instance_create_layer(x, y, "Instances", obj_tongue);
			_tongue.direction = point_direction(x, y, obj_game.target_x, obj_game.target_y);
			_tongue.speed = 4;
		}
	}
	x += vx;
	y += vy;
}

//Die
if y-8 > room_height room_restart();

if mouse_wheel_up() range += 8;
if mouse_wheel_down() range -= 8;

event_user(ACTION);