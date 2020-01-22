package bonsai.entity;

class EntityGroup extends Entity {
	public var members:Array<Entity> = [];

	public function new (name:String) {

	}
	public function render (graphics:kha.graphics2.Graphics) {
		for (member of this.members)
			member.render(graphics);
	}
	public function update (dt) {
		for (member of this.members)
			member.update();
	}

}
