/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.smallfont)
pal_swap_set(S_BananPal,displaypal,false);
if shottimer > 0 draw_sprite_ext(S_Banan_Shoot,image_index,int64(x)+x_offset,int64(y)-_yoffsetvisual,facing,1,0,c_white,1)

draw_sprite_ext(spr,image_index,int64(x)+x_offset,int64(y)-_yoffsetvisual,facing,1,0,c_white,1)

pal_swap_reset();

if hp > 0 {

for(i = 0 ; i < hp*16 ; i+= 16 ) {
		draw_sprite(S_BananHP,0,CAM_X+8+i,CAM_Y+8)
		var _y = irandom_range(-2,2)
	}
		if hit {
			if hittimer > 20 {
			draw_sprite(S_BananHP,2,(CAM_X+8+(hp*16)),_y+CAM_Y+8)}
			if hittimer <= 20 and hittimer > 10 {
			draw_sprite(S_BananHP,1,(CAM_X+8+(hp*16)),_y+CAM_Y+8)}	
			
			if hittimer <= 10 {
				draw_sprite_ext(S_BananHP,0,(CAM_X+8+(hp*16)),CAM_Y+18-hittimer,1,1,0,c_white,0+ (hittimer/10) )}
			}
		}

if hit {
if hittimer < 30 {pal_swap_set(S_HPal,2,false);}
if hittimer < 20 {pal_swap_set(S_HPal,1,false);}
if hittimer < 10 {pal_swap_set(S_HPal,0,false);}
}
draw_sprite(S_BananHPeel,0,CAM_X+6,CAM_Y+8)
draw_sprite_ext(S_BananHPeel,1,CAM_X+10,CAM_Y+8,(hp*16)-16+(hittimer/2),1,0,c_white,1)
draw_sprite(S_BananHPeel,2,CAM_X+6+(hp*16)-16+(hittimer/2),CAM_Y+8)
if hit {
pal_swap_reset();
}

//draw_text(x,y-30,string(lanetimer))

if global.debugmode {
		draw_text(x,y-30,"grounded:"+string(grounded))
		draw_text(x,y-40,"yspeed:"+string(yspeed))
	}
	
