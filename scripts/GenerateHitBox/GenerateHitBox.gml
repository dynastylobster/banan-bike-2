// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GenerateHitBox(_x,_y,width,height,xoffset,yoffset,owner,hitboxnum) {
	var hitbox = (instance_create_depth(x,y,depth,O_Hitbox))
			hitbox.owner = argument6
			hitbox.xoffset = argument4
			hitbox.yoffset = argument5
			hitbox.x = argument0
			hitbox.y = argument1
			hitbox.hitboxnum = argument7
			hitbox.image_xscale = argument2
			hitbox.image_yscale = argument3
			hitbox.owner.hitbox[argument0] = hitbox;
}