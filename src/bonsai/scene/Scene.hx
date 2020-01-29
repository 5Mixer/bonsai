package bonsai.scene;

import bonsai.entity.Entity;

class Scene {
	var layers:Array<Array<Entity>> = [];

	public var name:String;
	public var engine:bonsai.Engine;

	public function new (?name:String, engine:bonsai.Engine) {
		this.name = name;
		this.engine = engine;
	}
	public function add (entity:Entity, layer=0) {
		if (this.layers[layer] == null)
			this.layers[layer] = [];

		this.layers[layer].push(entity);
	}
	public function remove (entity:Entity) {
		for (layer in this.layers)
			layer.remove(entity);
	}
	public function update (dt:Float) {
		for (layer in layers)
			for (entity in layer)
				entity.update(dt);
	}
	public function render (graphics:kha.graphics2.Graphics) {
		for (layer in layers)
			for (entity in layer)
				entity.render(graphics);
	}
}
