package bonsai.entity;

class Particle extends Entity {
	public var velocity:kha.math.Vector2;
	public var totalLife:Float;
	public var consumedLife:Float;

	override public function new (totalLife) {
		this.totalLife = totalLife;
		super();
	}
	inline public function isAlive () {
		return consumedLife < totalLife;
	}
	override public function update (dt) {
		this.consumedLife += dt;
		super.update(dt);
	}

}
