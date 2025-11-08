/// @description Insert description here
// You can write your code in this editor
pal_swap_set(S_ObsticlePal,pal,false);

draw_sprite(S_TreeLeaves,leafframe[0],x+leafx0+leafswayfactor[0],y+leafy0+leafswayfactor[5]);
draw_sprite(S_TreeLeaves,leafframe[1],x+leafx1+leafswayfactor[1],y+leafy2);
draw_sprite(sprite_index,0,x,y);
draw_sprite(S_TreeLeaves,leafframe[2],leafx2+leafswayfactor[2],y+leafy2+leafswayfactor[5]);
draw_sprite(S_TreeLeaves,leafframe[3],leafx3+leafswayfactor[3],y+leafy3);
draw_sprite(S_TreeLeaves,leafframe[4],leafx4+leafswayfactor[4],y+leafy4+leafswayfactor[5]);


pal_swap_reset();