package bonsai.entity;

class EntityGroup extends Entity {
	public var members:Array<Entity> = [];

	public function new (name:String) {

	}
	public function render () {
		for (member of this.members)
			member.render();
	}
	public function update (dt) {
		for (member of this.members)
			member.update();
	}

}
