package bonsai.scene;

import bonsai.entity.Entity;

class Scene {
	var layers:Array<Array<Entity>>;

	public var name:String;

	public function new (name:String) {
		this.name = name;
	}
	public function add (entity:Entity, layer=0) {
		if (this.layers[layer] == undefined)
			this.layers[layer] = [];

		this.layers[layer].push(entity);
	}
	public function remove (entity:Entity, layer=0) {
		for (layer of this.layers)
			layer[entity.layer].remove(entity);
	}
	public function update (dt:Float) {
		for (layer of layers)
			for (entity in layer)
				entity.update(dt);
	}
	public function render (canvas) {
		for (layer of layers)
			for (entity in layer)
				entity.render(dt);
	}
}
