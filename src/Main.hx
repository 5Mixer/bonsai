package;

import bonsai.Engine;
import bonsai.scene.Scene;
import bonsai.entity.Entity;

class Main {
	public static function main() {
		var engine = new Engine();
		engine.start();
		var scene1 = new Scene("Scene 1");
		engine.currentScene = new Level1();
	}
}

class Player extends Entity {

	public var width:Float;
	public var height:Float;

	override public function new (x,y,width,height) {
		super("Player");
		this.position.x = x;
		this.position.y = y;
		this.width = width;
		this.height = height;
	}

	override public function render(){
		trace("Rendered Player");
		//render a blue square with the dimentions of the player
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
	}
}
class StartMenu extends Scene {
	override public function new () {
		super("Start Menu");
	}
}


