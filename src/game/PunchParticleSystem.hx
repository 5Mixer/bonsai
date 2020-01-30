package game;

import bonsai.scene.*;
import bonsai.render.*;
import bonsai.entity.*;

typedef BloodParticle = {
	x:Float,
	y:Float,
	vx:Float
}
class PunchParticleSystem extends ParticleSystem<BloodParticle>{
	override public function new () {
		super(25);
	}
	override public function render(graphics:kha.graphics2.Graphics) {
		graphics.color = kha.Color.fromString("#ff3333");
		for (particle in members) {
			graphics.fillRect(particle.x, particle.y, 1, 1);
		}
		graphics.color = kha.Color.White;
	}
	override public function update (dt:Float) {
		for (particle in members) {
			particle.x += particle.vx * dt;
		}
	}	
	var direction = 0;
	public function spawnPunchParticles(handx:Float, handy:Float, facingRight:Bool){
		if(facingRight){
			direction = 1;
		}else{
			direction = -1;
		}
		for (i in 0...25){
			spawnParticle({ x: handx, y: handy, vx: Math.random() * 50 * direction});
		}
	}
}	
