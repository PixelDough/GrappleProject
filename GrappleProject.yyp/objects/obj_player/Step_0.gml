l = keyboard_check(vk_left);
r = keyboard_check(vk_right);
u_p = keyboard_check_pressed(vk_up);

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
	if u_p and !place_meeting(x,y+vy,obj_wall) {
		vy = -jh;
		vx = spMax * (sign(-vx));
	} else vx = 0;
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

if mouse_check_button_pressed(mb_left) {
	ACTION = player.tongue;
}

event_user(ACTION);

x += vx;
y += vy;