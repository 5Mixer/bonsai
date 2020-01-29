package bonsai.input;

import bonsai.event.EventSystem;

enum InputEvent {
	MouseEnter;
	MouseLeave;
	MouseScroll(delta:Int);
}

class Input {
	var mousePosition:kha.math.Vector2;
	var mouseLeftDown:Bool = false;
	var mouseRightDown:Bool = false;

	public var events:EventSystem<InputEvent>;
	public var absoluteScroll = 0;
	public var mouseInside = true;

	public var downKeys = [];

	public function new () {
		mousePosition = new kha.math.Vector2(0,0);
		events = new EventSystem<InputEvent>();
		kha.input.Mouse.get().notify(mouseDown, mouseUp, mouseMove, mouseWheel, mouseLeave);
		kha.input.Keyboard.get().notify(keyDown, keyUp, keyPress);
	}

	public function isAnyKeyDown (keys:Array<kha.input.KeyCode>) {
		for (key in keys)
			if (downKeys.indexOf(key) != -1)
				return true;
		return false;
	}

	// Internal mouse
	function mouseDown (button, x, y) {
		if (button == 0) mouseLeftDown = true;
		if (button == 2) mouseRightDown = true;
		mousePosition.x = x;
		mousePosition.y = y;
	}
	function mouseUp (button, x, y) {
		if (button == 0) mouseLeftDown = false;
		if (button == 2) mouseRightDown = false;
		mousePosition.x = x;
		mousePosition.y = y;
	}
	function mouseMove (x, y, dx, dy) {
		if (!mouseInside)
			events.dispatch(InputEvent.MouseEnter);

		mouseInside = true;
		mousePosition.x = x;
		mousePosition.y = y;
	}
	function mouseWheel (delta) {
		absoluteScroll += delta;
		events.dispatch(InputEvent.MouseScroll(delta));
	}
	function mouseLeave () {
		mouseInside = false;
		downKeys = [];
		events.dispatch(InputEvent.MouseEnter);
	}
	
	// Internal keyboard
	function keyDown (key) { downKeys.push(key); }
	function keyUp (key) { downKeys.remove(key); }
	function keyPress (char) { } // Same as keyDown but as a character. Only sent once, unrequired.
}

