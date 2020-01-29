let project = new Project('BonsaiGame');

project.addSources('src');
project.addAssets('assets/**');
project.addLibrary('zui');
project.addLibrary('differ');

if (process.argv.includes("--watch")) { // run only in watch mode
	let libPath = project.addLibrary('hotml'); // client code for code-patching
	project.addDefine('js_classic'); // to support constructors patching, optional
	// start websocket server that will send type diffs to client
	const path = require('path');
	if (!libPath) libPath = path.resolve('./Libraries/hotml');
	const Server = require(path.resolve(`${libPath}/bin/server.js`)).hotml.server.Main;
	// path to target build folder and main js file.
	const server = new Server(`${path.resolve('.')}/build/${platform}`, 'kha.js');
	callbacks.postHaxeRecompilation = () => {
		server.reload(); // parse js file every compilation
	}
	// for assets reloading
	callbacks.postAssetReexporting = (path) => {
		server.reloadAsset(path);
	}
}

resolve(project);
