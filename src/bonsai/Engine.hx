package bonsai;

import kha.Assets;
import kha.Framebuffer;
import kha.Scheduler;
import kha.System;

import bonsai.scene.Scene;
import bonsai.event.EventSystem;

class Engine {
	public var events:EventSystem;
	public var currentScene:Scene;

	public function new () {

	}

	public function start (title:String="Bonsai Engine Game", width=800, height=600) {
		System.start({title: title, width: width, height: height}, function (_) {
			Assets.loadEverything(function () {
				Scheduler.addTimeTask(function () { update(); }, 0, 1 / 60);
				System.notifyOnFrames(function (framebuffers) { render(framebuffers[0]); });
			});
		});
	}

	function update(): Void {

	}

	function render(framebuffer: Framebuffer): Void {
		var g = framebuffer.g2;
		g.begin();
		this.currentScene.render(g);
		g.end();
	}

}