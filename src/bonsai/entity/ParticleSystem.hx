package bonsai.entity;

class ParticleSystem extends EntityGroup {
	public var poolMaximum:Int;
	override public function new (poolMaximum=200) {
		this.poolMaximum = poolMaximum;
		super();
	}
	public function spawnParticle(particle:Particle) {
		if (members.length >= poolMaximum) {
			this.members.shift();
			this.members.push(particle);
		}

	}
}
