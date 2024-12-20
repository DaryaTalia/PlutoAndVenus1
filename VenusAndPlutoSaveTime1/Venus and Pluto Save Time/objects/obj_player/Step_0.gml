/// @description Insert description here
// You can write your code in this editor

var _right_key = keyboard_check(controls[RIGHT]);
var _left_key = keyboard_check(controls[LEFT]);
var _up_key = keyboard_check(controls[UP]);
var _down_key = keyboard_check(controls[DOWN]);

if player_active == true {
	// get xspd and yspd
	xspd = (_right_key - _left_key) * move_spd;
	yspd = (_down_key - _up_key) * move_spd;
	
	if(instance_exists(obj_pauser)) {
		xspd = 0;
		yspd = 0;
	}

	// set sprite
	if yspd == 0 {
		if xspd > 0 {face = RIGHT;}
		if xspd < 0 {face = LEFT;}
	}

	if xspd > 0 && face == LEFT {face = RIGHT;}
	if xspd < 0 && face == RIGHT {face = LEFT;}

	if xspd == 0 {
		if yspd > 0 {face = DOWN;}
		if yspd < 0 {face = UP;}
	}

	if yspd > 0 && face == UP {face = DOWN;}
	if yspd < 0 && face == DOWN {face = UP;}

	sprite_index = sprite[face];

	// collisions
	if(place_meeting(x + xspd, y, obj_solid_obstacle))
		{
			xspd = 0;
		}
	// collisions
	if(place_meeting(x, y + yspd, obj_solid_obstacle))
		{
			yspd = 0;
		}

	// move the player
	x += xspd;
	y += yspd;
}

	// animate
	if xspd == 0 && yspd == 0 {
		image_index = 0;
	}

// depth
depth = -bbox_bottom; // bottom of the collision mask
