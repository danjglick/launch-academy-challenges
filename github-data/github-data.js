let data = require('./data');

// How many repositories does LaunchAcademy own?
console.log('LaunchAcademy owns ' + data.length + ' repositories');
console.log("");

// Which repository has the largest size?
let bigRepo = '(blank)';
let bigRepoSize = 0;
data.forEach(repo => {
	if (repo.size > bigRepoSize) {
		bigRepo = repo.name;
		bigRepoSize = repo.size;
	}
})
console.log(bigRepo + ' is the largest repository.');
console.log("");

// Which repository has the most watchers?
let mostWatchers = '(blank)';
let mostWatchersSize = 0;
data.forEach(repo => {
	if (repo.watchers_count > mostWatchersSize) {
		mostWatchers = repo.name;
		mostWatchersSize = repo.watchers_count;
	}
})
console.log(mostWatchers + ' has the most watchers.');
console.log("");

// What is the most-recently created repository?
let newestRepo = '(blank)';
let biggestDateScore = 0;
data.forEach(repo => {
	dateScore = Date.parse(repo.created_at)
	if (dateScore > biggestDateScore) {
		newestRepo = repo.name;
		biggestDateScore = dateScore;
	}
})
console.log(newestRepo + " is the most-recently created repository.");
console.log("");

// What is the oldest repository?
let oldestRepo = '(blank)';
let lowestDateScore = 99999999999 * 99999999999;
data.forEach(repo => {
	dateScore = Date.parse(repo.created_at);
	if (dateScore < lowestDateScore) {
		oldestRepo = repo.name;
		lowestDateScore = dateScore;
	}
})
console.log(oldestRepo + ' is the oldest repository.')
console.log("")

// Print out (to the console) the name and description for each repository.
data.forEach(repo => {
	console.log(repo.name + ": " + repo.description)
})
console.log("");

