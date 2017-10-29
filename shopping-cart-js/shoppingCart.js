let apples = {
	itemName: 'apples',
	quantity: 6
}

let oranges = {
	itemName: 'oranges',
	quantity: 19
}

let pears = {
	itemName: 'pears',
	quantity: 3
}

let grapes = {
	itemName: 'grapes',
	quantity: 12
}

let shoppingCart = [apples, oranges, pears, grapes]

shoppingCart.forEach((item) => {
	console.log(item.quantity + " " + item.itemName)
})