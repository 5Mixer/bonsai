package bonsai.render;

typedef Animation = {
	var frames: Array<Int>;
}

class AnimatedSprite<AnimationIdentifier> {
	var animations:Map<AnimationIdentifier, Animation>;
	var playing:AnimationIdentifier;
	var frame:Int;
	var spriteMap:SpriteMap;

	public function new (spriteMap:SpriteMap) {
		this.spriteMap = spriteMap;
		animations = new Map<AnimationIdentifier, Animation>();
	}
	public function registerAnimation (identifier:AnimationIdentifier, animation:Animation) {
		animations.set(identifier, animation);
	}
	public function play (identifier:AnimationIdentifier) {
		playing = identifier;
		frame = 0;
	}
	public function render (canvas:kha.graphics2.Graphics, x, y) {
		var currentAnimation = animations.get(playing);
		var currentFrame = currentAnimation.frames[frame];
		spriteMap.render(canvas, x, y, currentFrame);

	}
}
