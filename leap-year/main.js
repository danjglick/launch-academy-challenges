class Year {
	constructor(year) {
		this.year = year;
	}
	isLeapYear() {
		if (this.year % 4 != 0) {
			return false;
		} else if (this.year % 100) {
			return true;
		} else if (this.year % 400) {
			return false;
		} else {
			return true;
		}
	} 
}

for (i = 2000; i < 2018; i++) {
	let year = new Year(i);
	if (year.isLeapYear() == true) {
		console.log(i)
	}
}
