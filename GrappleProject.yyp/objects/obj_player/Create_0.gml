sp = 0.5;
spMax = 3;
jh = 4;
vx = 0;
vy = 0;
grav = 0.25;
grounded = true;

range = 64;

enum player {
	idle,
	walk,
	tongue,
	stick
}

ACTION = player.idle;