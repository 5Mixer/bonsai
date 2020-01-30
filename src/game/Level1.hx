package game;

import bonsai.scene.*;
import bonsai.render.*;
import bonsai.entity.*;

class Level1 extends Scene {
	var rain:RainParticleSystem;
	var transformation:Transformation;
	var t:TextParticleSystem;
	override public function new (engine) {
		super("Level1",engine);
		this.transformation = new Transformation();
		this.transformation.scale = new kha.math.Vector2(3, 3);
		add(new RainParticleSystem(),2);
		add(new PunchParticleSystem(),2);
		t = new TextParticleSystem();
		add(new Goblin(20, 46), 1);
		add(new Player(10, 30, engine.input), 1);
		add(new TileMap());
	}
	override public function update (dt:Float) {
		var dtMultiplier = engine.input.mouseInside ? 1 : .5;
		super.update(dt * dtMultiplier);
		t.update(dt);
	}
	override public function render (g) {
		transformation.apply(g);
		super.render(g);
		transformation.finish(g);
		t.render(g);
	}
}
