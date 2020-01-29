package game;

import bonsai.scene.*;
import bonsai.render.*;
import bonsai.entity.*;

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
