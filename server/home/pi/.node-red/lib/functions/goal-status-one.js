if(typeof context.global != 'undefined') {
	if(typeof context.global.game != 'undefined') {
		if(typeof context.global.game.running != 'undefined') {
			if(context.global.game.running) {
				return msg;
			}
		}
	}
}
return null;
