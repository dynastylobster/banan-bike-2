/// @description Insert description here
// You can write your code in this editor

switch CameraMode {
		case "Center": {
				cam_x = int64(clamp( ObjectFollowing.x - CAM_W/2 , 0 , room_width-CAM_W))
				//cam_y = int64(clamp( ObjectFollowing.y - CAM_H/2 , 0 , room_height-CAM_H))
				cam_y = y
			}
	}