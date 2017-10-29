// I was really struggling with this problem, so Jenah told me to submit what I have and come back later.

let TRACKS = require('./space-jams-tracks');

//album = new Album(track.album_id, track.album_name, track.artists)
class Album {
  constructor(id, title, artists) {
  	this.id = id;
  	this.title = title;
  	this.artists = artists;
  	this.tracks = [];
  }
  
  summary() {
  	console.log('Name: ' + this.title);
  	console.log('Artist(s): ' + this.artists);
  	console.log('Tracks: ' + this.tracks)
  }
}

module.exports = Album;
