/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
GenerateHitBox(x,y,18,13,8,21,self.id,0);
GenerateHitBox(x,y,18,24,8,32,self.id,3);
GenerateHitBox(x,y,8,5,24,0,self.id,1);
GenerateHitBox(x,y,8,5,-24,0,self.id,2);
discovered = false;
jumped = false;
grav = 0.125;
turntimer = 0;
mask_index = S_EnemyBiker;
facing = -1