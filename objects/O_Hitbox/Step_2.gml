/// @description Insert description here
// You can write your code in this editor

if !instance_exists(owner) {
		instance_destroy();
		exit;
	}

x = owner.x + xoffset
//y = owner.y + yoffset

if instance_exists(owner) {

if !global.stop {
	
if !following {
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
		
		case O_Barrel: {
			if hitboxnum = 0 {
	/*
    show_debug_message("~~~~Barrel hitbox 0 running!\n");
    var hitbox = O_Banan.hitbox[0];
    if (!instance_exists(hitbox)) {
        show_debug_message("O_Banan has no hitbox!\n~~~~");
        return;
    }
    var name = object_get_name(hitbox.object_index);
    show_debug_message($"Checking for {name} at:\n{hitbox.bbox_left}, {hitbox.bbox_top}, {hitbox.bbox_right}, {hitbox.bbox_bottom}");
    
    show_debug_message($"My hitbox:\n{bbox_left}, {bbox_top}, {bbox_right}, {bbox_bottom}");

    if (place_meeting(x, y, O_Banan.hitbox[0])) {
        show_debug_message("Found a collision!\n~~~~");
        HitPlayer(2);
    }
    else {
        show_debug_message("No collision found.\n~~~~");
    }*/
	
				if (place_meeting(x, y, O_Banan.hitbox[0])) and owner.y_offset = O_Banan.y_offset {
						if !O_Banan.hit then HitPlayer(3);
						with (owner) {
							event_user(0);	
						}
					}
			
				y = owner.y-owner.y_offset -22
				x = owner.x-8
				
				if instance_place(x,y,O_BananBullet) {
					
				owner.xspeed = instance_place(x,y,O_BananBullet).xspeed * 0.5 ;
				if instance_place(x,y,O_BananBullet).x > owner.x then owner.xspeed = -abs(owner.xspeed)
				owner.xoffset = owner.x + sign(owner.xspeed)*8
				
				with owner {
							event_user(0);
						}
					
					with instance_place(x,y,O_BananBullet)	{
						instance_destroy();	
					}
				}
				
					if instance_place(x,y,O_BananBulletBig) {
									owner.xspeed = instance_place(x,y,O_BananBulletBig).xspeed * 0.5 ;
				if instance_place(x,y,O_BananBulletBig).x > owner.x then owner.xspeed = -abs(owner.xspeed)
				owner.xoffset = owner.x + sign(owner.xspeed)*8
				with owner {
							event_user(0);
						}
						global.stoptimer = 5;
					
					with instance_place(x,y,O_BananBulletBig)	{
						instance_destroy();	
					}
				}
				
			}
			break;
		}
		
		case O_EnemyBiker: {
			if hitboxnum = 0 {
			y = owner.y - owner.y_offset -yoffset
			x = owner.x - (xoffset)
			
		if place_meeting(x+(owner.facing*4),y+6,O_JumpPoint) and owner.jumped = false {
				with (owner) {event_user(1)};
		}
		
		if place_meeting(x,y,O_Banan.hitbox[0]) {
		if owner.y_offset = O_Banan.y_offset {
		if !O_Banan.hit	HitPlayer(5)
		}
		}
			
			}
			
			if hitboxnum = 3 {
			y = owner.y - owner.y_offset -yoffset
			x = owner.x - xoffset
				if place_meeting(x,y,O_BananBullet) {
				with (owner) {
					event_user(0);
				}
			with instance_nearest(x,y,O_BananBullet) {
				instance_destroy();
				}
			}
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
				
			break;
			}
	
		
		
	}
}

if following {
	
		x = owner.x + xoffset
		if variable_instance_exists(owner,"y_offset") {  
		y = owner.y + yoffset - owner.y_offset
		} else {y = owner.y + yoffset}
		
		//enemy specific stuff
			switch owner.object_index {
				case O_All:{
					
				}
				break;
				
				case O_EnemyBiker: {
					if hitboxnum = 0 {
		if place_meeting(x+(owner.facing*4),y+6,O_JumpPoint) and owner.jumped = false {
				with(owner) {event_user(1)};
		}
		
		if place_meeting(x,y,O_Banan.hitbox[0]) {
		if owner.y_offset = O_Banan.y_offset {
		if !O_Banan.hit	HitPlayer(5)
		}
		}
			
			}
				}
				break
			}
		
	}


}

}