package game;

import bonsai.scene.*;
import bonsai.render.*;
import bonsai.entity.*;

typedef RainParticle = {
	x: Float,
	y: Float,
	vx: Float,
	vy: Float,
	opacity: Float
}
class RainParticleSystem extends ParticleSystem<RainParticle> {
	override public function new () {
		super(300);
	}
	override public function render(graphics:kha.graphics2.Graphics) {
		graphics.color = kha.Color.fromString("#8899aa");
		for (particle in members) {
			graphics.opacity = particle.opacity;
			graphics.fillRect(particle.x, particle.y, 1, 1);
		}
		graphics.opacity = 1;
		graphics.color = kha.Color.White;
	}
	var f = 0.;
	var s = 0.;
	override public function update (dt:Float) {
		f += dt;
		s += dt;
		for (particle in members) {
			particle.x += particle.vx * dt;
			particle.y += particle.vy * dt;
		}

		var rainLevel:Int = Math.floor(Math.max(0, 3 + Math.sin(f)*3));

		if (s > .01) {
			s = 0;
			for (i in 0...rainLevel)
				spawnParticle({ x: Math.round(Math.random() * 110) - 5, y: -1, vx: .3, vy: 100, opacity: .2 + Math.random() * .8 });
		}
	}
}
