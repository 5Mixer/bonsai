package;

import bonsai.Engine;
import bonsai.scene.Scene;
import bonsai.entity.Entity;
import bonsai.render.AnimatedSprite;
import bonsai.render.SpriteMap;
import bonsai.render.Transformation;
import bonsai.entity.ParticleSystem;
import kha.input.KeyCode;

class Main {
	public static var engine:Engine;
	public static function main() {
		#if hotml new hotml.client.Client(); #end

		engine = new Engine();
		engine.start(onAssetLoad);
	}
	public static function onAssetLoad () {
		var scene1 = new Scene("Scene", engine);
		engine.currentScene = new Level1(engine);
	}
}

class InputBindings {
	public static var left  = [KeyCode.Left,  KeyCode.A];
	public static var right = [KeyCode.Right, KeyCode.D];
	public static var up    = [KeyCode.Up,    KeyCode.W];
	public static var down  = [KeyCode.Down,  KeyCode.S];
}

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
		// super.render(graphics);
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

class Player extends Entity {

	public var width:Int = 16;
	public var height:Int = 32;
	var animation:AnimatedSprite;
	var transformation:Transformation;
	var input:bonsai.input.Input;
	var facingRight = true;

	override public function new (x, y, input) {
		super();
		this.position.x = x;
		this.position.y = y;
		this.input = input;

		this.animation = new AnimatedSprite();
		this.animation.registerAnimation("walk", {
			spriteMap: new SpriteMap(kha.Assets.images.playerWalk, this.width, this.height),
			frames:[0,1,2,3,4,5,6,7,8,9,10,11]
		});
		this.animation.registerAnimation("idle", {
			spriteMap: new SpriteMap(kha.Assets.images.player, this.width, this.height),
			frames:[0]
		});
		this.animation.play("idle");

		this.transformation = new Transformation();
		this.transformation.offset = new kha.math.Vector2(this.position.x, this.position.y);
		this.transformation.origin = new kha.math.Vector2(this.width/2, this.height);
	}

	override public function render (graphics:kha.graphics2.Graphics) {
		this.transformation.offset = this.position;
		transformation.scale.x = facingRight ? 1:-1;
		this.transformation.apply(graphics);
		this.animation.render(graphics, 0, 0);
		this.transformation.finish(graphics);
	}

	override public function update (dt:Float){
		this.animation.update(dt);
		super.update(dt);
		if (input.isAnyKeyDown(InputBindings.right)){
			this.position.x += dt * 28;
			this.animation.play("walk");
			facingRight = true;
		} else if (input.isAnyKeyDown(InputBindings.left)){
			this.position.x -= dt * 28;
			this.animation.play("walk");
			facingRight = false;
		}else{
			this.animation.play("idle");
		}
	}
}

class Goblin extends Entity {

	public var width:Int = 16;
	public var height:Int = 16;
	var animation:AnimatedSprite;
	var transformation:Transformation;

	override public function new (x, y) {
		super();
		this.position.x = x;
		this.position.y = y;

		this.animation = new AnimatedSprite();
		this.animation.registerAnimation("walk", {
			spriteMap: new SpriteMap(kha.Assets.images.goblinRunSheet, this.width, this.height),
			frames:[0,1,2,3,4,5]
		});

		this.animation.registerAnimation("idle", {
			spriteMap: new SpriteMap(kha.Assets.images.goblin, this.width, this.height),
			frames:[0]
		});
		this.animation.play("idle");

		this.transformation = new Transformation();
		this.transformation.offset = new kha.math.Vector2(this.position.x, this.position.y);
		this.transformation.origin = new kha.math.Vector2(this.width/2, this.height);
	}

	override public function render (graphics:kha.graphics2.Graphics) {

		this.transformation.apply(graphics);
		this.animation.render(graphics, 0, 0);
		this.transformation.finish(graphics);
	}

	override public function update (dt){
		this.animation.update(dt);
	}
}

class Level1 extends Scene {
	var rain:RainParticleSystem;
	var transformation:Transformation;
	override public function new (engine) {
		super("Level1",engine);
		this.transformation = new Transformation();
		this.transformation.scale = new kha.math.Vector2(8, 8);
		add(new RainParticleSystem());
		add(new Goblin(20, 46));
		add(new Player(10, 30, engine.input));
	}
	override public function update (dt:Float) {
		var dtMultiplier = engine.input.mouseInside ? 1 : .5;
		super.update(dt * dtMultiplier);
	}
	override public function render (g) {
		transformation.apply(g);
		super.render(g);
		transformation.finish(g);
	}
}
class Level2 extends Scene {
	override public function new (engine) {
		super("Level2", engine);
		add(new Player(200, 50, engine.input));
	}
}
class StartMenu extends Scene {
	override public function new (engine) {
		super("Start Menu", engine);
	}
}


