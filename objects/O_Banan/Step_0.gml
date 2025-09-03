/// @description Insert description here
// You can write your code in this editor
if ! global.stop {
	
depth = 99 + y_offset;

exhausttimer += 1+ int64(abs(xspeed))

if exhausttimer >= 16 exhausttimer = 0;
if exhausttimer = 0 {
		instance_create_depth(x-(facing*26),(y-_yoffsetvisual)-9,depth,O_Exhaust);
	}

audio_sound_pitch(SndBikeEngine, clamp(   (abs(xspeed/7) + pitchoffset + 0.5) , 0.8, 2  )       )


if InputPressed(INPUT_VERB.BUMPL) {
		if xspeed = 0 
		{
			audio_stop_sound(SndBikeStart)
			audio_play_sound(SndBikeStart,0,0,clamp((abs(xspeed/3)),0.25,global.sfxvolume),0,1);
		}
	}
audio_sound_gain(SndBikeEngine,clamp((abs(xspeed/3)),0.25,1),0);

if grounded pitchoffset = 0
if !grounded pitchoffset = 0.2

if xspeed > 0.125 driving = true;
if boost > 0 boost -= 0.125
if boost < 0 boost += 0.125
if !place_meeting(x,y+1,[WALL,SLOPE]) {
		y += yspeed
		yspeed += grav
		grounded = false;
	} else grounded = true;
	
while place_meeting(x,y,[WALL,SLOPE]) {
		y -= 0.25
		yspeed = 0;
	}
	

	if !turning {
if InputPressed(INPUT_VERB.UP) {
	alarm[1] = 8
		if y_offset < 48 {
			y_offset += 16	
		}
	}
if InputPressed(INPUT_VERB.DOWN) {
	alarm[1] = 8
		if y_offset > 0 {
			y_offset -= 16	
		}
	}
	}
	
	
y_offset = clamp(y_offset,0,48)



if !turning {
//_yoffsetvisual = lerp(_yoffsetvisual,y_offset,0.25)
if _yoffsetvisual < y_offset then _yoffsetvisual += 2
if _yoffsetvisual > y_offset then _yoffsetvisual -= 2
}

//_yoffsetvisual = int64(y_offset)
y_offset = (y_offset div 16 * 16)



if turning {
	xspeed *= 0.95
	_yoffsetvisual = lerp(_yoffsetvisual,y_offset,0.05)
}

if (InputPressed(INPUT_VERB.ACCEPT)) and grounded and !turning {
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
	} else if !turning and !slopingbehind {
	spr = S_Banan	
	}
if slopingbehind and !turning {
	spr = S_Banan_Slope2
	} else if !turning and !sloping {
	spr = S_Banan	
	}
	
if yspeed > 3 and !turning{
	spr = S_Banan_Slope2
}

if !place_meeting(x+xspeed*1.5,y,[WALL]) {

if InputCheck(INPUT_VERB.BUMPL) {
		if abs(xspeed) < max_xspeed {
		xspeed += accel*facing	
		}
	} else if abs(xspeed) > 0 {
		if abs(xspeed) < 0.8 xspeed = 0
			if grounded and !turning {
			if xspeed < 0 xspeed += accel
			if xspeed > 0 xspeed -= accel
			}
		}
x+= xspeed
} else {
	xspeed = 0;
	}

if turning and !place_meeting(x+xspeed*2,y,WALL) {
	if alarm[0] < 20 xspeed -= facing * 0.25	
}

if place_meeting(x+facing*2,y,WALL) {
		xspeed = 0;
		if facing = -1 x+= 0.5
		if facing = 1 x-= 0.5
	}

if (InputPressed(INPUT_VERB.BUMPR)) and !turning and grounded and abs(xspeed) >= 2 {
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
if InputPressed(INPUT_VERB.BUMPR) and !turning and grounded and abs(xspeed) <= 0 {
xspeed = 0;
	yspeed = -2;
	y -= 2
	spr = S_Banan_Turn_Down
	alarm[0] = 40
	turning = true;	
}


if turning and alarm[0] = 10 {
yspeed = -1
y-= 1
}
	

if place_meeting(x,y+7,[SLOPE]) and yspeed >= 0 {
		while !place_meeting(x,y,[SLOPE]) {
			y+= 0.5
		}
	}
	
if alarm[0] > 15 and abs(xspeed) != 0 then image_index = 0;
if alarm[0] > 0 and alarm[0] <= 15 image_index = 1



if InputCheck(INPUT_VERB.ACTION) {
	shottimer = 20
		chargetimer ++
	}
if InputPressed(INPUT_VERB.ACTION) {
	if abs(x_offset) <= 4 {
	if instance_number(O_BananBullet) <= 4  {
		audio_play_sound(SndShoot,0,0,global.sfxvolume,0,random_range(0.9,1.1))
		audio_play_sound(SndShootPew,0,0,global.sfxvolume,0,1)
		instance_create_depth(x+20*facing,y-29-_yoffsetvisual,depth,O_BananBullet)
		instance_create_depth(x+20*facing,y-29-_yoffsetvisual,depth-10,O_MuzzleFlash)
	}
	x_offset = -(facing*4)
	}
	}
	
if InputCheck(INPUT_VERB.ACTION) and !audio_is_playing(SndCharge) {
		audio_play_sound(SndCharge,0,true,global.sfxvolume)
	}
if chargetimer < 78 and chargetimer > 0 {
	chargevolume += (1/78)/2
		audio_sound_gain(SndCharge,chargevolume,0)
	}
	
if InputReleased(INPUT_VERB.ACTION) {
	chargevolume = 0;
	audio_sound_gain(SndCharge,0,0)
	audio_stop_sound(SndCharge)
		if chargetimer >= 0 pal = 0;
		if chargetimer > 78 {
			instance_create_depth(x+20*facing,y-29-_yoffsetvisual,depth-10,O_MuzzleFlashBig)
			if turning and abs(xspeed) <= 1.5 {
					boost = 5* -facing
					xspeed += boost
				}
		instance_create_depth(x+20*facing,y-29-_yoffsetvisual,depth-10,O_BananBulletBig)
		audio_play_sound(SndBigShoot,0,0,1,0,1)
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

if yspeed < -jumpspeed bigjump = true;
if bigjump and !turning {
spr = S_Banan_Slope1
}
if yspeed > 0 bigjump = false;

if grounded and yspeed > 0 yspeed = 0

if hit = false and chargetimer = 0 {
		pal = 0;
	}

}

if !InputCheck(INPUT_VERB.ACTION) audio_stop_sound(SndCharge);

if hit = true {
		pal = 3;
	}
if hittimer > 0 hittimer--;
if hittimer <= 0 hit = false;

hp = clamp(hp,0,10)

if alarm[0] > 0 {if global.stop = true then alarm[0]++}
if alarm[1] > 0 {if global.stop = true then alarm[1]++}
if alarm[3] > 0 {if global.stop = true then alarm[3]++}