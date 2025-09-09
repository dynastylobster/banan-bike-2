/// @description Insert description here
// You can write your code in this editor
CheckOnscreen(true,false);

image_speed = abs(xspeed)*2
if xspeed < -5 xspeed = -5
if xspeed > 5 xspeed = 5
image_xscale = facing

if onscreen {
	discovered = true;
		x+= xspeed * facing;
		
		if place_meeting(x,y+1,[WALL,SLOPE]) {
				grounded = true;
			} else {grounded = false;}
		
		if !grounded {
		yspeed += grav
		y += yspeed;
		}

		
		if grounded jumped = false;
		
		while collision_line(x,y,x+facing*8,y,SLOPE,16,true) {
				y--
			}
		while place_meeting(x,y+0.5,WALL) {
				y--
		}
		
	} else if discovered {
			turntimer ++
		}
		
	if turntimer = 200 {
		
			if x < CAM_X {
			x = CAM_X+2	
		} if x > CAM_X + CAM_W {
			x = (CAM_X+CAM_W)-2	
			}
		facing = -facing
		xspeed += 1
		turntimer = 0;
	}
	
if sloping sprite_index = S_EnemyBikerSlope1
if !sloping and yspeed > 2 sprite_index = S_EnemyBiker