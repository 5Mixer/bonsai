
let project = new Project('BonsaiGame');

project.cpp11 = true;
project.addFile('src/**');
// project.addFile('src/**');

await project.addProject('BonsaiGame');

project.setDebugDir('Deployment');

resolve(project);
