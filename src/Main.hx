package;

import bonsai.Engine;
import bonsai.scene.Scene;
import bonsai.entity.Entity;
import bonsai.render.AnimatedSprite;
import bonsai.render.SpriteMap;
import bonsai.render.Transformation;

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

class Player extends Entity {

	public var width:Int = 16;
	public var height:Int = 32;
	var spriteMap:SpriteMap;

	override public function new (x, y) {
		super();
		this.position.x = x;
		this.position.y = y;
		this.spriteMap = new SpriteMap(kha.Assets.images.player, this.width, this.height);
	}

	override public function render (graphics:kha.graphics2.Graphics) {
		this.spriteMap.render(graphics, this.position.x, this.position.y, 1);
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
		this.animation.registerAnimation("walk", {frames:[0,1,2,3,4,5 ]});
		this.animation.play("walk");
		this.transformation = new Transformation();
	}

	override public function render (graphics:kha.graphics2.Graphics) {
		this.transformation.offset = new kha.math.Vector2(this.position.x, this.position.y);
		this.transformation.scale = new kha.math.Vector2(1, 1);
		this.transformation.origin = new kha.math.Vector2(this.width/2, this.height);

		this.transformation.apply(graphics);
		this.animation.render(graphics, 1,0);
		// this.sprite.render(graphics, 0, 0, 1);
		this.transformation.finish(graphics);
	}

	override public function update (dt){
		this.animation.update(dt);
	}
}

class Level1 extends Scene {
	override public function new () {
		super("Level1");
		add(new Goblin(200, 200));
		add(new Player(100, 200));
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


