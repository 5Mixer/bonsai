package bonsai;

import kha.Assets;
import kha.Framebuffer;
import kha.Scheduler;
import kha.System;

import bonsai.scene.Scene;
import bonsai.event.EventSystem;
import bonsai.input.Input;

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
