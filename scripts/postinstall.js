var sys = require('sys');
var exec = require('child_process').exec;
function puts(error, stdout, stderr) { sys.puts(stdout) }
console.info('✪ Install OS dependencies ✪');
exec("aptitude update", puts);
exec("aptitude install mc git mysql-server", puts);
