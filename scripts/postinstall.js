var sys = require('sys');
var exec = require('child_process').exec;
function puts(error, stdout, stderr) { sys.puts(stdout) }
console.info('✪ Install OS dependencies ✪');
/*
exec("sudo aptitude update", puts);
exec("sudo aptitude install mc git mysql-server", puts);
*/
