/// @description Insert description here
// You can write your code in this editor
x = int64(owner.x)

while !place_meeting(x,y,[SLOPE,WALL]) and y < room_height {
		y+= 1
	}

while place_meeting(x,y+1,[SLOPE,WALL]) {
	y-= 1	
}

		if owner.yspeed >= 0 and owner.grounded {
		if owner.facing = 1 {
			if owner.slopingbehind {image_xscale = -1} else image_xscale = 1
			}
		if owner.facing = -1 {
			if owner.slopingbehind {image_xscale = 1} else image_xscale = -1
			}
		}
			
		if owner.sloping or owner.slopingbehind {
				sprite_index = S_ShadowSlope
		} else if (owner.grounded and owner.yspeed >= 0) sprite_index = S_Shadow
	if !place_meeting(x,y+6,SLOPE) {
			sprite_index = S_Shadow
		}