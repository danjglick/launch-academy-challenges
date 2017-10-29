// Meets Expectations
let summary = (groceryList) => {
  console.log('Dear Bestie,');
  console.log('');
  console.log('I bought you:');
  console.log('');
  let bill = 0;
  groceryList.forEach(item => {
    let priceTimesQuanityStr = (item.price * item.quantity).toFixed(2);
    console.log(item.quantity + ' ' + item.name + ' - ' + '$' + priceTimesQuanityStr);   
    let priceTimesQuantityNum = item.price * item.quantity;
    bill += priceTimesQuantityNum;
  })
  console.log('');
  console.log('You owe me $' + bill + '0');
}

let GroceryItem = require('./GroceryItem.js');
let apple = new GroceryItem('apples', .5, 5);
let avocado = new GroceryItem('avocados', 2, 2);
let beer = new GroceryItem('beers', 2.5, 4);
let kale = new GroceryItem('kale', 2);
let groceryList = [apple, avocado, beer, kale];
summary(groceryList);

// Exceeds Expectations
let inventoryNearMe = {
  banana: 2,
  coffee: 2,
  kale: 5,
  chocolateBar: 5,
  apple: 10,
  potato: 11,
  tomato: 1,
  beer: 3,
  avocado: 1,
  milk: 5
};

let inventoryNearBestie = {
  banana: 2,
  coffee: 2,
  kale: 5,
  chocolateBar: 5,
  apple: 10,
  potato: 11,
  tomato: 1,
  beer: 6,
  avocado: 10,
  milk: 5
};
