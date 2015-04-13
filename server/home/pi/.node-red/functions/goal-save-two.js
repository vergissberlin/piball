// Undo
context.global.undo = {
	teamTwo: msg.payload
};

// Game started?
if(typeof context.global.game === 'undefined') {
	return [null,null];
}

// Score
if(msg.payload < 10 && context.global.game.running) {
	msg.teamTwo = msg.payload + 1;
	return [ msg, null ];
} else {
	context.global.game = {running: false};
	return [ null, msg ];
}
