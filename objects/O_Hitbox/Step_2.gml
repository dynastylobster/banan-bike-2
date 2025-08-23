/// @description Insert description here
// You can write your code in this editor
x = owner.x + xoffset
y = owner.y + yoffset


switch owner.object_index {
	
		case  O_OnScreenTest : {
			
			if hitboxnum = 0 {
				if place_meeting(x,y,WALL) {
					owner.currentpal = 1
					owner.touchingtiles = true;
				} else {owner.currentpal = 0; owner.touchingtiles = false;}	
			}
			break;
		}
	
		case  O_Banan : {
			
			if hitboxnum = 0 {
				
				y = owner.y-owner.y_offset -24
				
			}
			if hitboxnum = 1 {
				
				y = owner.y
				if owner.facing = 1 x = owner.x + 24
				if owner.facing = -1 x = owner.x - 24
				owner.sloping = place_meeting(x,y,[SLOPE])
			}
			if hitboxnum = 2 {
				
				y = owner.y
				if owner.facing = 1 x = owner.x - 24
				if owner.facing = -1 x = owner.x + 24
				owner.slopingbehind = place_meeting(x,y,[SLOPE])
			}
			break;
		}
	
		
		
	}
