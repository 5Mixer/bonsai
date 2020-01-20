package bonsai.entity;

//import kha.math.Vectohhh2;

typdef PhysicsData = {
	enabled:Bool,
	vx:Float,
	vy:Float,
	friction:Float,
	mass:Float
}
typedef CollisionData = {
	enabled:Bool,
	boundingBox: Box,
	shape: Shape.Circle(5),
	origin: kha.math.Vector2
}

class Entity {
	var position:kha.math.Vector2;
	var active = true;
	var visible = true;

	var physics:PhysicsData;
	var collision:CollisionData;

	public function new () {
	}
	public function render () {

	}
	public function update (dt) {

	}
}
