var sys = require('sys');
var exec = require('child_process').exec;
function puts(error, stdout, stderr) { sys.puts(stdout) }
console.info('✪ Uninstall OS dependencies ✪');
exec("ls -la", puts);
