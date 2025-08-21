/// @description Insert description here
// You can write your code in this editor

if AspectRatioMode = "Fixed" and FilterMode = "Nearest" {

surface_resize(application_surface,ViewWidth*WindowScale,ViewHeight*WindowScale);
var _w = surface_get_width(application_surface);
var _h = surface_get_height(application_surface);
var _x = window_get_width()/2 - _w /2
var _y = window_get_height()/2 - _h /2
draw_surface(application_surface,_x,_y);

}