/// @description Insert description here
// You can write your code in this editor
gpu_set_blendmode(bm_add)
draw_set_color(#000055)
draw_circle(x,y,20+(image_index*3),false)
draw_set_color(#332266)
draw_circle(x,y,19-(image_index*3),false)
draw_set_color(c_white)
gpu_set_blendmode(bm_normal)
draw_self()