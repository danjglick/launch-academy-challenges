let eggs = {
  itemName: 'dozen eggs',
  quantity: 2,
  price: 0.99,
}

let milk = {
  itemName: 'gallon of milk',
  quantity: 1,
  price: 2.99,
}

let bread = {
  itemName: 'loaf of bread',
  quantity: 1,
  price: 3.50,
}

let coffee = {
  itemName: 'lbs. of coffee',
  quantity: 10,
  price: 8.99,
}

let shoppingCart = [eggs, milk, bread, coffee];

console.log('Coffee 1lb: $' + shoppingCart[3].price / 10);

console.log('Milk gallons: ' + shoppingCart[1].quantity);

let subtotal = 0;
shoppingCart.forEach((item) => {
  subtotal += item.price
}) 
console.log('Subtotal: $' + subtotal)

console.log('Total: $' + subtotal * 1.0625)