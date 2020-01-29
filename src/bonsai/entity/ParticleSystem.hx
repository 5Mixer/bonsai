package bonsai.entity;

class ParticleSystem<ParticleType> extends Entity {
	var members:Array<ParticleType>;
	public var poolMaximum:Int;
	var index = 0;
	public function new (poolMaximum=300) {
		this.members = new Array<ParticleType>();
		this.poolMaximum = poolMaximum;
		super();
	}
	public function spawnParticle(particle:ParticleType) {
		members[index] = particle;
		index++;
		if (index > poolMaximum)
			index = 0;
	}
}
