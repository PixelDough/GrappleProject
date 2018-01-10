/// @description Stick State
vx = 0;
vy = 0;

if l_p or r_p or u_p or d_p {
	ACTION = player.idle;
	instance_destroy(obj_tongue);
}