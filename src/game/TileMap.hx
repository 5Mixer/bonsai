package game;

import bonsai.scene.*;
import bonsai.render.*;
import bonsai.entity.*;

class TileMap extends Entity {
	public var width:Int = 10;
	public var height:Int = 10;
	var transformation:Transformation;
	var tiles:Array<Array<Int>> = [];

	var tiled:bonsai.resource.Tiled;
	var tiled2:bonsai.resource.Tiled;
	var spriteMap:bonsai.render.SpriteMap;
	var spriteMap2:bonsai.render.SpriteMap;

	override public function new () {
		super();

		tiled = new bonsai.resource.Tiled(kha.Assets.blobs.levelDanny_tmx.toString());
		tiled2 = new bonsai.resource.Tiled(kha.Assets.blobs.levelInn_tmx.toString());
		width = tiled2.width;
		height = tiled2.height;

		spriteMap = new SpriteMap(kha.Assets.images.tiles, 4, 4);
		spriteMap2 = new SpriteMap(kha.Assets.images.tiles2, 16, 16);

		this.transformation = new Transformation();
		this.transformation.offset = new kha.math.Vector2(0,0);
		this.transformation.origin = new kha.math.Vector2(0,0);
	}

	override public function render (graphics:kha.graphics2.Graphics) {
		this.transformation.apply(graphics);
		
		for (y in 0...width) {
			for (x in 0...height) {
				// spriteMap.render(graphics, x*4, y*4, tiled.tiles[y][x] - 1);
				spriteMap2.render(graphics, x*16, y*16, tiled2.tiles[y][x] - 1);
			}
		}

		this.transformation.finish(graphics);
	}

	override public function update (dt){
	}
}
