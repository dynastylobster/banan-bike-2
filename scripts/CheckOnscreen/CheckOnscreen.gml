// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckOnscreen(horizontal,vertical)	{
	

	if sprite_index != -4 {
		height = abs(sprite_height/2)	
		width = abs(sprite_width/2)	
	} else	width = 8; 
	
	if x > (camera_get_view_x(view_camera[0])-O_GameObject.OutOfScreenBuffer)-width and x < (camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]))+width+O_GameObject.OutOfScreenBuffer {
		onscreenH = true;	
	} else onscreenH = false;

	if y > (camera_get_view_y(view_camera[0])-O_GameObject.OutOfScreenBuffer)-height and y < (camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]))+height+O_GameObject.OutOfScreenBuffer {
		onscreenV = true;	
	} else onscreenV = false;
	
	if horizontal and !vertical {
		if onscreenH {onscreen = true} else onscreen = false;
	}
	if !horizontal and vertical {
		if onscreenV {onscreen = true} else onscreen = false;
	}
	if horizontal and vertical {
		if onscreenH and onscreenV {onscreen = true} else onscreen = false;	
	}
	
}