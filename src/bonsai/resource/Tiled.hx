package bonsai.resource;

typedef TiledEntity = {
	var x:Int;
	var y:Int;
	var properties:Map<String,String>;
}

class Tiled {
	public var width:Int;
	public var height:Int;
	public var tiles:Array<Array<Int>> = [];
	public var entities:Array<TiledEntity> = [];

	public function new (data:String) {
		loadRawData(data);
	}
	function loadRawData(raw) {
		var data = haxe.xml.Parser.parse(raw);

		var map = data.elementsNamed("map").next();
		width = Std.parseInt(map.get("width"));
		height = Std.parseInt(map.get("height"));

		for (layer in map.elementsNamed("layer")){
			var n = 0;
			var layerTiles = layer.elementsNamed("data").next().firstChild().nodeValue.split(",");
			// trace(layer.elementsNamed("data").next().firstChild());
			// trace(layerTiles);
			for (tile in layerTiles){
				// var tile = Std.parseInt(tile.get("gid"));
				var x = n%width;
				var y = Math.floor(n/width);

				// Load individual tile
				if (tiles[y] == null)
					tiles[y] = [];

				tiles[y][x] = Std.parseInt(tile);

				n++;
			}
			trace(tiles);
		}

		for (objectlayer in map.elementsNamed("objectgroup")){
			for (object in objectlayer.elements()){
				var name = object.get("name");
				var properties = new Map<String,String>();
				for (element in object.elements()){
					if (element.nodeName == "properties"){
						for (property in element.elements()){
							properties.set(property.get("name"),property.get("value"));
						}
					}
				}
				entities.push({
					x: Math.floor(Std.parseInt(object.get("x"))),
					y: Math.floor(Std.parseInt(object.get("y"))),
					properties: properties
				});
			}
		}
	}
}
