/// @description Insert description here
// You can write your code in this editor
pal_swap_set(S_GameSpritePal,currentpal,false);
draw_sprite(sprite_index,0,x-32,y-32);
pal_swap_reset();

//draw_text(0,0,string((camera_get_view_x(view_camera[0])-O_GameObject.OutOfScreenBuffer)-width)+"  "+string((camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]))+width+O_GameObject.OutOfScreenBuffer)+"  "+ string(x))