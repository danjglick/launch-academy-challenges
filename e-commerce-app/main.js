let inventory = [
  ['LA-LG-STICKER', 300, 'Large Sticker', 'images/la-large-sticker-256px.png', 'Show your Launch pride by plastering your laptop with these beautiful die-cut stickers.'],
  ['LA-SM-STICKER', 200, 'Small Sticker', 'images/la-small-sticker-128px.png', "It\'s a tiny Launch sticker. How cute!"],
  ['LA-T-SHIRT', 50, 'T-Shirt', 'images/la-t-shirt-200px.png', '100% Cotton. Makes a great gift.']
]

let Product = {
	constructor(id, quantity, name, image, description) {
		this.id = id;
		this.quantity = quantity;
		this.name = name;
		this.image = image;
		this.description = description;
	}

	sell() {
		this.quantity -= 1;
	}

	toHTML() {
		
	}

}
