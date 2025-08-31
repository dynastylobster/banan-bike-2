/// @description Insert description here
// You can write your code in this editor
//draw_sprite(S_Shadow,0,x,y);
draw_sprite(sprite_index,image_index,x,y-y_offset);

if global.debugmode {
		draw_set_color(c_green) 
		if instance_exists(hitbox[0]) then draw_text(hitbox[0].x,hitbox[0].y,"0")
		if instance_exists(hitbox[1]) then draw_text(hitbox[1].x,hitbox[1].y,"1")
		if instance_exists(hitbox[2]) then draw_text(hitbox[2].x,hitbox[2].y,"2")
		if instance_exists(hitbox[3]) then draw_text(hitbox[3].x,hitbox[3].y,"3")
		if instance_exists(hitbox[4]) then draw_text(hitbox[4].x,hitbox[4].y,"4")
		if instance_exists(hitbox[5]) then draw_text(hitbox[5].x,hitbox[5].y,"4")
		draw_set_color(c_white)
	}