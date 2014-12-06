/**
 * Pizza
 *
 * LICENSE:    MIT
 *
 * @project    foosball
 * @package    ChromeExtension
 * @author     André Lademann <vergissberlin@googlemail.com>
 * @copyright  Copyright (c) 2014 andrelademann.de (http://www.andrelademann.de)
 * @license    http://andrelademann.de/license
 * @since      2014-12-18 - 11:53:21 PM
 *
 */

var
	pathColours = '/index.php',
	pathSounds = '/sound.php',
	colours = ['#118899', '#5533aa', '#ff0000', '#00ff00', '#0000ff'],
	sounds = ['zonk.mp3', 'woodpecker.mp3', 'air-raid-siren-alert.mp3', 'applaus.mp3', 'bird1.mp3', 'bom-chicka-wah-wah.mp3', 'bruce-lee.mp3', 'deine-mama.mp3', 'der-schoenste-mann.mp3', 'dingdongdiehexisttot.mp3', 'dominating.mp3', 'du-hast-nen-kleinen.mp3', 'evil-laugh.mp3', 'excellent.mp3', 'feierabend.mp3', 'geschenke.mp3', 'google-di-google-da.mp3', 'haha.mp3', 'kaka.mp3', 'knarre.mp3', 'mittagspause.mp3', 'nachtaktiv.mp3', 'perverser.mp3', 'pipi.mp3', 'rawwr.mp3', 'rhabarberbarbara.mp3', 'sad_trombone.mp3', 'schiffshorn.mp3', 'school-bell.mp3', 'thank-god-its-friday.mp3'],
	callAjax,
	runAnimation,
	playSound;

callAjax = function (url, params) {
	var r = new XMLHttpRequest();
	r.open('GET', url, true);
	r.onreadystatechange = function () {
		if (r.readyState != 4 || r.status != 200) return;
		console.log(r.responseText);
	};
	r.send(params);
//	setTimeout(runAnimationSound, 1000);
};

runAnimation = function () {
	callAjax(pathColours, colours[3]);
//	setTimeout(runAnimation, 1000);
};

playSound = function () {
	callAjax(pathSounds, 'file=' + sounds[0] + '&volume=10');
//	setTimeout(runAnimation, 1000);
};
