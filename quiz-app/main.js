let rami = 88;
let natoya = 92;
let bill = 68;
let susie = 100;
let sasha = 82;
let mohammed = 98;
let jennifer =94;
let ken = 92;

let justReact = [rami, natoya, bill, susie];
let weAreRuby = [sasha, mohammed, jennifer, ken];
let cohort = [rami, natoya, bill, susie, sasha, mohammed, jennifer, ken];

avg = 0;
justReact.forEach((score) => {
	avg += score;
})
avg /= justReact.length;
avg = Math.round(avg);
console.log("Just React Average: " + avg);

avg = 0;
weAreRuby.forEach((score) => {
	avg += score;
})
avg /= weAreRuby.length;
avg = Math.round(avg);
console.log("We Are Ruby Average: " + avg);

avg = 0;
cohort.forEach((score) => {
	avg += score;
})
avg /= cohort.length;
avg = Math.round(avg);
console.log("Cohort Average: " + avg);

sum = 0;
cohort.forEach((score) => {
	if (score >= 70) {
		sum++;
	}	
})
console.log("Total who passed: " + sum);


