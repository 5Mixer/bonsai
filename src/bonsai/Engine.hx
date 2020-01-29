package bonsai;

import kha.Assets;
import kha.Framebuffer;
import kha.Scheduler;
import kha.System;

import bonsai.scene.Scene;
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

	function keyDown (key) { downKeys.push(key); }
	function keyUp (key) { downKeys.remove(key); }
	function keyPress (char) { } // Same as keyDown but as a character. Only sent once, unrequired.
}

class Engine {
	public var currentScene:Scene;
	public var input:Input;
	public var time:Float;

	public function new () {
	}

	public function start (title:String="Bonsai Engine Game", width=800, height=600, onReady) {
		System.start({title: title, width: width, height: height}, function (_) {
			input = new Input();

			Assets.loadEverything(function () {
				Scheduler.addTimeTask(function () { update(); }, 0, 1 / 60);
				System.notifyOnFrames(function (framebuffers) { render(framebuffers[0]); });
				onReady();
			});
		});
	}

	function update(): Void {
		var delta = Scheduler.time() - time;
		this.currentScene.update(delta);
		time = Scheduler.time();
	}

	function render(framebuffer: Framebuffer): Void {
		var g = framebuffer.g2;
		g.begin();
		this.currentScene.render(g);
		g.end();
	}

}
