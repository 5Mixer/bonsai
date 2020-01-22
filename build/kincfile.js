let fs = require('fs');
let path = require('path');
let project = new Project('BonsaiGame');
project.version = '1.0';
project.addDefine('HXCPP_API_LEVEL=400');
project.addDefine('HXCPP_DEBUG', 'Debug');
project.addDefine('HXCPP_GC_GENERATIONAL');
project.targetOptions = {"html5":{},"flash":{},"android":{},"ios":{},"xboxOne":{},"playStation4":{},"switch":{}};
project.setDebugDir('build/windows');
await project.addProject('build/windows-build');
await project.addProject('C:/Projects/bonsai/kha');
resolve(project);
