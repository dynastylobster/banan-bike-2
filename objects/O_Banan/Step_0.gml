/// @description Insert description here
// You can write your code in this editor
if xspeed > 0.125 driving = true;
if !place_meeting(x,y+1,[WALL,SLOPE]) {
		y += yspeed
		yspeed += grav
		grounded = false;
	} else grounded = true;
	
while place_meeting(x,y,[WALL,SLOPE]) {
		y -= 0.25
		yspeed = 0;
	}
	
if InputPressed(INPUT_VERB.UP) {
		if y_offset < 48 {
			y_offset += 16	
		}
	}
if InputPressed(INPUT_VERB.DOWN) {
		if y_offset > 0 {
			y_offset -= 16	
		}
	}

if !turning {
_yoffsetvisual = lerp(_yoffsetvisual,y_offset,0.25)
}
if turning {
	xspeed *= 0.95
	_yoffsetvisual = lerp(_yoffsetvisual,y_offset,0.05)
}

if (InputPressed(INPUT_VERB.ACCEPT)) and grounded {
		yspeed = -jumpspeed
		y-= 6
	}

if shottimer > 0 shottimer--



if spr = S_Banan and xspeed = 0 then image_index = 0

if !turning {
image_speed = abs(xspeed)/2
}

if sloping and !turning {
	spr = S_Banan_Slope1
	} else if !turning {
	spr = S_Banan	
	}


if !place_meeting(x+xspeed*1.5,y,[WALL]) {

if InputCheck(INPUT_VERB.BUMPL) {
		if abs(xspeed) < max_xspeed {
		xspeed += accel*facing	
		}
	} else if abs(xspeed) > 0 {
		if abs(xspeed) < 0.8 xspeed = 0
			if xspeed < 0 xspeed += accel
			if xspeed > 0 xspeed -= accel
		}
x+= xspeed
}

if turning and !place_meeting(x+xspeed*2,y,WALL) {
	if alarm[0] < 20 xspeed -= facing * 0.25	
}

if place_meeting(x+facing*2,y,WALL) {
		xspeed = 0;
		if facing = -1 x+= 0.5
		if facing = 1 x-= 0.5
	}

if (InputPressed(INPUT_VERB.BUMPR)) and !turning and grounded {
	image_index = 0;
	image_speed =1;
	switch y_offset {
			case 0: y_offset = 48; spr = S_Banan_Turn_Up;
			break;
			case 16: y_offset = 48;  spr = S_Banan_Turn_Up;
			break;
			case 32: y_offset = 0;  spr = S_Banan_Turn_Down;
			break;
			case 48: y_offset = 0; spr = S_Banan_Turn_Down;
			break;
		}
	alarm[0] = 30
	turning = true;
	}
	

if place_meeting(x,y+7,[SLOPE]) and yspeed >= 0 {
		while !place_meeting(x,y,[SLOPE]) {
			y+= 0.5
		}
	}
	
if alarm[0] > 15 image_index = 0;
if alarm[0] > 0 and alarm[0] <= 15 image_index = 1

if InputCheck(INPUT_VERB.ACTION) {
	shottimer = 20
		chargetimer ++
	}
if InputPressed(INPUT_VERB.ACTION) {
	if abs(x_offset) <= 4 {
	if instance_number(O_BananBullet) <= 4  {
		instance_create_depth(x+20*facing,y-29-_yoffsetvisual,depth,O_BananBullet)
		instance_create_depth(x+20*facing,y-29-_yoffsetvisual,depth-10,O_MuzzleFlash)
	}
	x_offset = -(facing*4)
	}
	}
	
if InputReleased(INPUT_VERB.ACTION) {
		if chargetimer >= 0 pal = 0;
		if chargetimer > 78 {
			instance_create_depth(x+20*facing,y-29-_yoffsetvisual,depth-10,O_MuzzleFlashBig)
		instance_create_depth(x+20*facing,y-29-_yoffsetvisual,depth-10,O_BananBulletBig)
				x_offset = -(facing*12)
			}
		chargetimer = 0;
	}

if chargetimer > 0 {
if pal >= 2 pal = 0;

if chargetimer > 15 {
	pal += 0.1
	}
if chargetimer > 40 {
	pal += 0.1
	}
if chargetimer > 78 {
	if !instance_exists(O_MuzzleFlash) {
			instance_create_depth(x+20*facing,y-29-_yoffsetvisual,depth-10,O_MuzzleFlash)
	}
	pal += 0.1
	}
}
displaypal = ceil(pal)

	if spr = S_Banan_Turn_Down and shottimer > 0 {
	spr = 	S_Banan_Turn_Down_Shoot
	}

if x_offset > 0 x_offset -= 0.25
if x_offset < 0 x_offset += 0.25