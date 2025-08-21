/// @description Insert description here
// You can write your code in this editor
if !instance_exists(O_LevelObject) {
		instance_create_depth(x,y,depth,O_LevelObject);
	}
	
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