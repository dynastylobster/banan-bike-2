// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SwitchRatio(){
switch current_fixed_ratio {
	case 0: {FixedRatio = [16,9]; break;}	
	case 1: {FixedRatio = [4,3]; break;}	
	case 2: {FixedRatio = [16,10]; break;}
	case 3: {FixedRatio = [16,9]; current_fixed_ratio = 0; break;}
}
current_fixed_ratio ++;
WindowSizeCall();
}