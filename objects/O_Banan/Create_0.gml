/// @description Insert description here
// You can write your code in this editor
sprite_index = S_Shadow
audio_play_sound(SndBikeEngine,0,true,1,0,1);
GenerateHitBox(x,y,24,13,-12,-24,O_Banan,0)
GenerateHitBox(x,y,8,5,22,-2,O_Banan,1)
GenerateHitBox(x,y,8,5,-24,0,O_Banan,2)
audio_sound_gain(SndCharge,0,0)
hit = false;
hittimer = 0;
exhausttimer = 0;
chargevolume = 0;
pitchoffset = 0;
_yoffsetvisual = y_offset
jumpspeed = 3
grounded = false;
facing = 1;
max_xspeed = 4;
accel = 0.125
driving = false;
turning = false;
sloping = false;
 lanetimer = 0
 yoffsetdir = 1;
spr = S_Banan
starty = y;
shadowy = y;
chargetimer = 0;
pal = 0
shot = false;
shottimer = 0;
displaypal = 0
x_offset =0 ;
bigjump = false;
boost = 0;
instance_create_depth(x,y,depth+10,O_Shadow)