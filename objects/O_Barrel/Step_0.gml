/// @description Insert description here
// You can write your code in this editor
if !global.stop {
	
	if xoffset != startx {
	if !rolling {
		image_index = 1;
		image_xscale = sign(xspeed)
		if x > xoffset then {x -= 2}
		if x < xoffset then {x += 2}
	}
	}

if x = xoffset and x != startx {
	
		rolling = true;
	}
	
	
	if rolling {
	image_speed = xspeed
	if yspeed > 2 {
		image_xscale = 1;
	sprite_index = S_BarrelRoll
	}
	x+= xspeed
	}
	
		if rolling and !hitground and yspeed > 0 {
		if place_meeting(x,y,[SLOPE,WALL]) {
				instance_create_depth(x-10,y+12-y_offset,depth-2,O_Exhaust)	
				instance_create_depth(x+10,y+12-y_offset,depth-2,O_Exhaust)		
				hitground = true;
		}
	}
	
if !place_meeting(x,y,[SLOPE,WALL]) {
		yspeed += 0.25
	} else {
			yspeed = 0;
		}
	y+= yspeed;
	
if collision_rectangle(x,y+10,x-10,y+10,SLOPE,0,0) {
		xspeed += 0.125
	}
if collision_rectangle(x,y+10,x+10,y+10,SLOPE,0,0) {
		xspeed -= 0.125
	}
while place_meeting(x,y,[SLOPE]) {
		yspeed = 0;
		y--;
	}

	
}