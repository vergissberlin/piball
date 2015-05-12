// Undo
context.global.undo = {
	teamOne: msg.payload
};

// Game started?
if(typeof context.global.game === 'undefined') {
	return [null,null];
}

// Score
if(msg.payload < 10 && context.global.game.running) {
	msg.teamOne = msg.payload + 1;
	return [ null, msg ];
} else {
	context.global.game = {running: false};
	return [ msg, null];
}
