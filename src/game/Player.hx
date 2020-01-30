package game;

import bonsai.scene.*;
import bonsai.render.*;
import bonsai.entity.*;
import Main;

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
		if (input.isAnyKeyDown(InputBindings.punch)){
			// this.scene.SCENEELEMENTTHATSPAWNSPUNCHPARTICLES.spawnPunchParticles(this.position.x + this.width/2, this.position.y + this.height/2, this.facingRight);
			trace("POW!!!");
		}
	}
}
