/// @description Insert description here
// You can write your code in this editor
pal_swap_set(S_ObsticlePal,pal,false);
draw_sprite_ext(sprite_index,image_index,x,y-y_offset,image_xscale,image_yscale,0,c_white,1);

pal_swap_reset();

if hittimer > 0 {
	if hittimer >= 4 pal_swap_set(S_ObsticlePal,6,false);
	if hittimer < 4 pal_swap_set(S_ObsticlePal,4,false);
	if hittimer <= 2 pal_swap_set(S_ObsticlePal,7,false);
draw_sprite_ext(sprite_index,image_index,x,y-y_offset,image_xscale,image_yscale,0,c_white,1);
	pal_swap_reset();
	}
	if global.debugmode {
draw_text(x,y,string(hit))
	}