package;

import bonsai.Engine;
import bonsai.scene.Scene;
import bonsai.entity.Entity;
import bonsai.render.AnimatedSprite;
import bonsai.render.SpriteMap;
import bonsai.render.Transformation;
import bonsai.entity.ParticleSystem;

enum GameEvents {
	PlayerEat(food:String);
}

class Main {
	public static var engine:Engine<GameEvents>;
	public static function main() {
		#if hotml new hotml.client.Client(); #end

		engine = new Engine<GameEvents>();
		engine.start(onAssetLoad);
	}
	public static function onAssetLoad () {
		var scene1 = new Scene("Scene");
		engine.currentScene = new Level1();
	}
}

typedef RainParticle = {
	x: Float,
	y: Float,
	vx: Float,
	vy: Float,
	opacity: Float,
	life: Int
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
	var f = 0;
	override public function update (dt:Float) {
		f++;
		for (particle in members) {
			particle.life++;
			particle.x += particle.vx;
			particle.y += particle.vy;
		}

		var rainLevel:Int = Math.floor(Math.max(0, 3 + Math.sin(f/200)*3));

		for (i in 0...rainLevel)
			spawnParticle({ x: Math.round(Math.random() * 110) - 5, y: -1, vx: .3, vy: 2, life: 0, opacity: .2 + Math.random() * .8 });
	}
}

class Player extends Entity {

	public var width:Int = 16;
	public var height:Int = 32;
	var sprite:SpriteMap;
	var walkingSpriteMap:SpriteMap;
	var animation:AnimatedSprite;
	var transformation:Transformation;

	override public function new (x, y) {
		super();
		this.position.x = x;
		this.position.y = y;

		this.sprite = new SpriteMap(kha.Assets.images.player, this.width, this.height);
		this.walkingSpriteMap = new SpriteMap(kha.Assets.images.playerWalk, this.width, this.height);

		this.animation = new AnimatedSprite(walkingSpriteMap);
		this.animation.registerAnimation("walk", {frames:[0,1,2,3,4,5,6,7,8,9,10,11,12]});
		this.animation.play("walk");

		this.transformation = new Transformation();
		this.transformation.offset = new kha.math.Vector2(this.position.x, this.position.y);
		this.transformation.origin = new kha.math.Vector2(this.width/2, this.height);
	}

	override public function render (graphics:kha.graphics2.Graphics) {
		this.transformation.apply(graphics);
		this.animation.render(graphics, 0, 0);
		// this.sprite.render(graphics, 0, 0, 1);
		this.transformation.finish(graphics);
	}

	override public function update (dt){
		this.animation.update(dt);
	}
}

class Goblin extends Entity {

	public var width:Int = 16;
	public var height:Int = 16;
	var sprite:SpriteMap;
	var spriteMap:SpriteMap;
	var animation:AnimatedSprite;
	var transformation:Transformation;

	override public function new (x, y) {
		super();
		this.position.x = x;
		this.position.y = y;

		this.sprite = new SpriteMap(kha.Assets.images.goblin, this.width, this.height);
		this.spriteMap = new SpriteMap(kha.Assets.images.goblinRunSheet, this.width, this.height);

		this.animation = new AnimatedSprite(this.spriteMap);
		this.animation.registerAnimation("walk", {frames:[0,1,2,3,4,5]});
		this.animation.play("walk");

		this.transformation = new Transformation();
		this.transformation.offset = new kha.math.Vector2(this.position.x, this.position.y);
		this.transformation.origin = new kha.math.Vector2(this.width/2, this.height);
	}

	override public function render (graphics:kha.graphics2.Graphics) {

		this.transformation.apply(graphics);
		this.animation.render(graphics, 0, 0);
		// this.sprite.render(graphics, 0, 0, 1);
		this.transformation.finish(graphics);
	}

	override public function update (dt){
		this.animation.update(dt);
	}
}

class Level1 extends Scene {
	var rain:RainParticleSystem;
	var transformation:Transformation;
	override public function new () {
		super("Level1");
		this.transformation = new Transformation();
		this.transformation.scale = new kha.math.Vector2(8, 8);
		add(new RainParticleSystem());
		add(new Goblin(20, 20));
		add(new Player(10, 20));
	}
	override public function render (g) {
		transformation.apply(g);
		super.render(g);
		transformation.finish(g);
	}
}
class Level2 extends Scene {
	override public function new () {
		super("Level2");
		add(new Player(200, 50));
	}
}
class StartMenu extends Scene {
	override public function new () {
		super("Start Menu");
	}
}


