class Rectangle {
	constructor(width, height) {
		this.width = width;
		this.height = height || width;
	}
	area() {
		return this.width * this.height
	}
}

 