let wide = 8;
let long = 20;
let tall = 8 / 12;
let cubic = wide * long * tall
console.log("Cubic Feet:")
console.log(cubic)
console.log("Quote Price ($):")
if (cubic < 50) {
	console.log(20)
} else if (cubic < 150) {
	console.log(50)
} else if (cubic < 300) {
	console.log(100)
} else {
	console.log(150)
}

