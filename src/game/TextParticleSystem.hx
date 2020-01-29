package game;

import bonsai.scene.*;
import bonsai.render.*;
import bonsai.entity.*;

typedef TextParticle = {
	x: Float,
	y: Float,
	vx: Float,
	vy: Float,
	life: Float,
	text: String
}
class TextParticleSystem extends ParticleSystem<TextParticle> {
	override public function new () {
		super(0);
	}
	override public function render(graphics:kha.graphics2.Graphics) {
		graphics.color = kha.Color.fromString("#44cc55");
		graphics.font = kha.Assets.fonts.KenneyMini;
		graphics.fontSize = 20;
		for (particle in members) {
			graphics.drawString(particle.text, particle.x, particle.y);
		}
		graphics.opacity = 1;
		graphics.color = kha.Color.White;
	}
	var s = 0.;
	override public function update (dt:Float) {
		s += dt;
		
		for (particle in members) {
			particle.x += particle.vx * dt;
			particle.y += particle.vy * dt;
			particle.vy *= .8;
			particle.life -= dt;
		}

		if (s > 1) {
			s = 0;
			spawnParticle({ x: Math.round(Math.random() * 110) - 5, y: 30 + Math.random() * 40, vx: 0, vy: -170, life: 1000 + Math.random() * 500, text: "$"+Math.floor(100+Math.random()*900) });
		}
	}
}
