/// @description Insert description here
// You can write your code in this editor
onscreen = false;

if instance_exists(O_Banan) {
		facing = O_Banan.facing
		xspeed = (4.25+ abs(O_Banan.xspeed) )* facing
	}
	image_xscale = facing