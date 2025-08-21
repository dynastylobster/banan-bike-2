/// @description Insert description here
// You can write your code in this editor
if instance_exists(O_Banan) {
image_xscale = O_Banan.facing	
}
instance_create_depth(x+4,y+4,depth,O_MuzzleFlashParticle)
instance_create_depth(x-4,y+4,depth,O_MuzzleFlashParticle)
instance_create_depth(x-4,y-4,depth,O_MuzzleFlashParticle)
instance_create_depth(x+4,y-4,depth,O_MuzzleFlashParticle)