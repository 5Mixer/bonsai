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
		engine = new Engine<GameEvents>();
		engine.start(onAssetLoad);
	}
	public static function onAssetLoad () {
		var scene1 = new Scene("Scene");
		engine.currentScene = new Level2();
	}
}

class Player extends Entity {

	public var width:Float;
	public var height:Float;

	override public function new (x, y, width, height) {
		super();
		this.position.x = x;
		this.position.y = y;
		this.width = width;
		this.height = height;
	}

	override public function render (canvas:kha.graphics2.Graphics) {
		canvas.color = kha.Color.White;
		canvas.fillRect(this.position.x, this.position.y, this.width, this.height);
	}
}

class Goblin extends Entity {

	public var width:Float = 16;
	public var height:Float = 16;
	var spriteMap:SpriteMap;
	var animation:AnimatedSprite;
	var transformation:Transformation;

	override public function new (x, y) {
		super();
		this.position.x = x;
		this.position.y = y;
		this.animation = new AnimatedSprite(new SpriteMap(kha.Assets.images.goblinRun, 16, 16));
		this.animation.registerAnimation("walk", {frames:[0,1,2,3,4,5]});
		this.animation.play("walk");
		this.transformation = new Transformation();
		this.transformation.rotation=Math.PI/8;
	}

	override public function render (graphics:kha.graphics2.Graphics) {
		this.transformation.apply(graphics);
		// this.spriteMap.render(canvas, this.position.x, this.position.y, 1);
		this.animation.render(graphics, this.position.x, this.position.y);
		this.transformation.finish(graphics);	
	}

	override public function update (dt){
		this.animation.update(dt);
	}
}

class Level1 extends Scene {
	override public function new () {
		super("Level1");
		add(new Player(50,50,30,60));
	}
}
class Level2 extends Scene {
	override public function new () {
		super("Level2");
		add(new Goblin(200,200));
		// add(new Player(200,50,30,60));
	}
}
class StartMenu extends Scene {
	override public function new () {
		super("Start Menu");
	}
}


