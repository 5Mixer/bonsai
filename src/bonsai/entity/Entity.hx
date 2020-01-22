package bonsai.entity;

//import kha.math.Vectohhh2;


class Entity {
	var position:kha.math.Vector2;
	var active = true;
	var visible = true;

	public function new () {
		position = new kha.math.Vector2();
	}
	public function render (graphics:kha.graphics2.Graphics) {

	}
	public function update (dt) {

	}
}
