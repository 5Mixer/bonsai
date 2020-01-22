package bonsai.render;

class Transformation {
	public var offset:kha.math.Vector2;
	public var rotation:Int;

	public function new () {
		offset = new kha.math.Vector2();
	}

	public function apply (graphics:kha.graphics2.Graphics) {
		graphics.pushTransformation();
		
		var mtran = FastMatrix3.translation(offset.x, offset.y);
		var mrot = FastMatrix3.rotation(rotation);

		g2.pushTransformation(mtran.multmat(mrot));
	}

	public function finish (graphics:kha.graphics2.Graphics) {
		graphics.popTransformation();
	}
}
