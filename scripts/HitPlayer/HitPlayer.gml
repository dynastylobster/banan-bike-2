// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HitPlayer(_knockback){
		if instance_exists(O_Banan) and !O_Banan.hit {
				if x > O_Banan.x then {O_Banan.xspeed = -argument0}
				if x < O_Banan.x then {O_Banan.xspeed = argument0}
				if O_Banan.hittimer <= 0 {
				}
				O_Banan.hittimer = 30;
				if x > O_Banan.x then {O_Banan.x-= 2}
				if x < O_Banan.x then {O_Banan.x+= 2}
			}
			O_Banan.hit = true;
			global.stoptimer = 8;
			
}