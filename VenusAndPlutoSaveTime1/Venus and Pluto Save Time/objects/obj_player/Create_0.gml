/// @description Movement Variables

xspd = 0;
yspd = 0;

move_spd = 1;

face = DOWN;

player_active = true;

// default sprite
sprite[RIGHT] = spr_player_venus_r;
sprite[UP] = spr_player_venus_u;
sprite[LEFT] = spr_player_venus_l;
sprite[DOWN] = spr_player_venus_d;

// default controls
controls[RIGHT] = ord("D")
controls[UP] = ord("W")
controls[LEFT] = ord("A")
controls[DOWN] = ord("S")