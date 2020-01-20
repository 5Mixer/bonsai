package bonsai.fsm;


class Machine<MachineStateIdentifier> {
	public var name:String;
	public var currentState:MachineStateIdentifier;
	public var states:Map<MachineStateIdentifier, State>;
	public function new (name) {
		this.name = name;
		states = new Map<MachineStateIdentifier, State>();
	}
	public function registerState(identifier:MachineStateIdentifier, state:State) {
		if (states.exists(identifier))
			trace('Warning: Registering FSM state ${identifier} for FSM ${name} yet identifier already in FSM');
		states.set(identifier, state);
	}
	public function setState (newState:MachineStateIdentifier, payload) {
		this.currentState.onLeave();
		this.currentState = newState;
		this.currentState.onLoad(payload);
	}
	public function update () {
		this.currentState.update()
	}
}
