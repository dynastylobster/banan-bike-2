/// @description Insert description here
// You can write your code in this editor
camera_set_view_pos(view_camera[0],cam_x,cam_y);



layer_x(GETLAYER("Bg_Still"),CAM_X)
layer_y(GETLAYER("Bg_Still"),CAM_Y)

layer_x(GETLAYER("Bg_0"),CAM_X*(ParalaxFactor))
layer_x(GETLAYER("Bg_1"),CAM_X*(ParalaxFactor/1.25))
layer_x(GETLAYER("Bg_2"),CAM_X*(ParalaxFactor/1.8))
layer_x(GETLAYER("Bg_3"),CAM_X*(ParalaxFactor/4))

switch VerticalBgMode {
		case "Looping": {
			layer_y(GETLAYER("Bg_0"),CAM_Y*(ParalaxFactor))
			layer_y(GETLAYER("Bg_1"),CAM_Y*(ParalaxFactor/1.25))
			layer_y(GETLAYER("Bg_2"),CAM_Y*(ParalaxFactor/1.8))
			layer_y(GETLAYER("Bg_3"),CAM_Y*(ParalaxFactor/4))	
			break;
		}
}