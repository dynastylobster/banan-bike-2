/// @description Insert description here
// You can write your code in this editor
global.debugmode = false;
//First Init the Palette Swap System, specify the name of the pal swap shader in case you've changed it for some reason.
pal_swap_init_system(shd_pal_swapper,shd_pal_html_sprite,shd_pal_html_surface);
//Delta time
//game_set_speed(TargFPS,gamespeed_fps)
#macro DT ((delta_time / 1000000) * (O_GameObject.TargFPS/4))
image_alpha = 0;
//Check monitor's resolution and set max values accordingly
CurrentWindowWidth = ViewWidth*WindowScale
CurrentWindowHeight = ViewWidth*WindowScale
MonitorResolution = display_get_height();
fullscreen = false;
monitorwidth = display_get_width()
monitorheight = display_get_height()
MaxWindowScale = ceil(MonitorResolution/ViewHeight);

_truewidth = ViewWidth
_trueheight = ViewHeight
current_fixed_ratio = 0;
//Set Window size depending on resolution and aspect ratio
WindowSizeCall();


//tile collision
global.walltiles = layer_get_id("ColTileWall")
global.slopetiles = layer_get_id("ColTileSlope")
global.semisolidtiles = layer_get_id("ColTileSemi")

walltiledata = layer_tilemap_get_id(global.walltiles)
slopetiledata = layer_tilemap_get_id(global.slopetiles)
semisolidtiledata = layer_tilemap_get_id(global.semisolidtiles)

tiledyet = false;

tilex = 0;
tiley = 0;

if !tiledyet {

var tileboundx = room_width div TilesetWidth;
var tileboundy = room_height div TilesetWidth;
x = 0;
while y < tileboundy*TilesetWidth {
		x+= TilesetWidth
		 tilex = x div TilesetWidth
		 tiley = y div TilesetWidth
		currenttile = tilemap_get_at_pixel(walltiledata,x,y)
		switch currenttile {
		case 02: {tilemap_set(slopetiledata,02,tilex,tiley); tilemap_set(walltiledata,00,tilex,tiley);break;}	
		case 03: {tilemap_set(slopetiledata,03,tilex,tiley); tilemap_set(walltiledata,00,tilex,tiley);break;}	
		case 04: {tilemap_set(slopetiledata,04,tilex,tiley); tilemap_set(walltiledata,00,tilex,tiley);break;}
		case 05: {tilemap_set(slopetiledata,05,tilex,tiley); tilemap_set(walltiledata,00,tilex,tiley);break;}
		case 06: {tilemap_set(slopetiledata,06,tilex,tiley); tilemap_set(walltiledata,00,tilex,tiley);break;}	
		case 07: {tilemap_set(slopetiledata,07,tilex,tiley); tilemap_set(walltiledata,00,tilex,tiley);break;}	
		case 08: {tilemap_set(slopetiledata,08,tilex,tiley); tilemap_set(walltiledata,00,tilex,tiley);break;}	
		case 09: {tilemap_set(semisolidtiledata,09,tilex,tiley); tilemap_set(walltiledata,00,tilex,tiley);break;}	
		}
		if x > room_width {
				y+= TilesetWidth
				x = 0;
			}
	}
x = 0; y = 0;
tiledyet = true;
	
}

//layer_set_visible(global.walltiles,false);
//layer_set_visible(global.slopetiles,false);
//layer_set_visible(global.semisolidtiles,false);

#macro WALL O_GameObject.walltiledata /*[global.walltiles,O_Wall] */
#macro SLOPE O_GameObject.slopetiledata /*[global.slopetiles,O_Slope] */
#macro SEMI O_GameObject.semisolidtiledata /*[global.semisolidtiles,O_Semi] */
#macro ANYWALL [global.walltiles,global.slopetiles,global.semisolidtiles,O_Wall,O_Slope,O_Semi]
#macro WALLTILE global.walltiles
#macro SLOPETILE global.slopetiles
#macro SEMITILE global.semisolidtiles

instance_create_depth(x,y,depth,O_OnScreenTest)