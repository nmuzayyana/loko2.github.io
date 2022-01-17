/////////////////////////////////////////////////////////////
// EP Player v2 - JS API
// ----------------------------------------------------------
// Control functions
/////////////////////////////////////////////////////////////
function EP_get(id) {
	var el = document.getElementById(id);
	if(el && el.EP_isLoaded) {
		return el;
	} else {
		alert('\''+ id +'\' not found!');
		return;
	}
}

/////////////////////////////////////////////////////////////
function EP_play(id) {
	var p = EP_get(id);
	if(p) p.EP_play();
}

/////////////////////////////////////////////////////////////
function EP_setVolume(id, v) {
	var p = EP_get(id);
	if(p) p.EP_setVolume(v);
}

/////////////////////////////////////////////////////////////
function EP_pause(id) {
	var p = EP_get(id); 
	if(p) p.EP_pause();
}

/////////////////////////////////////////////////////////////
function EP_stop(id) {
	var p = EP_get(id); 
	if(p) p.EP_stop();
}

/////////////////////////////////////////////////////////////
function EP_playPause(id) {
	var p = EP_get(id); 
	if(p) p.EP_playPause();
}

/////////////////////////////////////////////////////////////
function EP_prev(id) {
	var p = EP_get(id); 
	if(p) p.EP_prev();
}

/////////////////////////////////////////////////////////////
function EP_next(id) {
	var p = EP_get(id); 
	if(p) p.EP_next();
}

/////////////////////////////////////////////////////////////
function EP_setShuffle(id, v) {
	var p = EP_get(id); 
	if(p) p.EP_setShuffle(v);
}

/////////////////////////////////////////////////////////////
function EP_setRepeat(id, v) {
	var p = EP_get(id); 
	if(p) p.EP_setRepeat(v);
}

/////////////////////////////////////////////////////////////
function EP_setAutoPlay(id, v) {
	var p = EP_get(id); 
	if(p) p.EP_setAutoPlay(v);
}

/////////////////////////////////////////////////////////////
function EP_addTracks(id, xml, i) {
	var p = EP_get(id); 
	if(p) p.EP_addTracks([xml, i]);
}

/////////////////////////////////////////////////////////////
function EP_removeTracks(id, xml) {
	var p = EP_get(id); 
	if(p) p.EP_removeTracks(xml);
}

/////////////////////////////////////////////////////////////
function EP_loadPlaylist(id, f) {
	var p = EP_get(id); 
	if(p) p.EP_loadPlaylist(f);
}

/////////////////////////////////////////////////////////////
function EP_setPlaylist(id, xml, s) {
	var p = EP_get(id); 
	if(p) p.EP_setPlaylist(xml);
	if(s == true) EP_play(id);
}

/////////////////////////////////////////////////////////////
function EP_clearPlaylist(id) {
	var p = EP_get(id); 
	if(p) p.EP_clearPlaylist();
}

/////////////////////////////////////////////////////////////
function EP_playTrack(id, i) {
	var p = EP_get(id); 
	if(p) p.EP_playTrack(i);
}

/////////////////////////////////////////////////////////////
function EP_getCurrentTrackData(id) {
	var p = EP_get(id); 
	if(p) return p.EP_getCurrentTrackData();
	return new Object();
}

/////////////////////////////////////////////////////////////
function EP_getTrackData(id , i) {
	var p = EP_get(id); 
	if(p) return p.EP_getTrackData(i);
	return new Object();
}

/////////////////////////////////////////////////////////////
function EP_setSize(id, w, h) {
	var el = EP_get(id);
	if(el) {
		el.style.width = w;
		el.style.height = h;
	}
}

/////////////////////////////////////////////////////////////
// Callback functions
/////////////////////////////////////////////////////////////
function EP_onLoad(id) {
	// alert(id +': onLoad');
}

function EP_onPlay(id) {
	// alert(id +': onPlay');
}

/////////////////////////////////////////////////////////////
function EP_onStop(id) {

}

/////////////////////////////////////////////////////////////
function EP_onPause(id) {

}

/////////////////////////////////////////////////////////////
function EP_onNext(id) {

}

/////////////////////////////////////////////////////////////
function EP_onPrev(id) {

}

/////////////////////////////////////////////////////////////
