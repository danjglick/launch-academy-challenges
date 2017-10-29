let crewMembers = ["River", "Zoe", "Wash", "Mal", "Book", "Jayne"];

let allQuotes = [
  [
    "No power in the Verse can stop me.",
    "I can kill you with my brain.",
    "My food is problematic.",
    "This whole conclusion is fallacious.",
    "Now they see the sky and they remember what they are."
  ],
  [
    "Sorry, sir. Didn't mean to enjoy the moment.",
    "Is there any way I'm gonna get out of this with honor and dignity?",
    "If it moves, shoot it.",
    "I ain't so afraid of losing something that I ain't gonna try to have it.",
    "Big damn heroes.",
    "We crashing again?"
  ],
  [
    "I am a leaf on the wind. Watch how I soar.",
    "Oh God, oh God, we're all going to die?"
  ],
  [
    "Did something just fly off my gorram ship?",
    "We've done the impossible, and that makes us mighty.",
    "We are just too pretty for God to let us die.",
    "Morbid and creepifying, I got no problem with, long as she does it quiet-like.",
    "I swear, by my pretty floral bonnet, I will end you."
  ],
  [
    "I don't care what you believe in, just believe in it.",
    "A government is a body of people, usually, notably ungoverned.",
    "You don't fix faith, River. It fixes you.",
    "If you can't do something smart, do something right."
  ],
  [
    "We're gonna explode? I don't wanna explode!",
    "Let's be bad guys.",
    "You don't pay me to talk pretty.",
    "You guys had a riot? On account o' me? My very own riot?",
    "Aw, hell, if I had wanted schooling, I would have gone to school.",
    "Not as deceiving as a low down, dirty... deceiver."
  ]
];

// 1. How many quotes does Mal have? Write a function that takes the name of a character as an argument, and returns the number of quotes that character has. Then, call that function for `"Mal"`
console.log("");
let numQuotes = (name) => {
  return allQuotes[crewMembers.indexOf(name)].length;
}
console.log(numQuotes("Mal"));
console.log("");

// 2. Which character said `"I am a leaf on the wind. Watch how I soar."`? Write a function that takes a quote as an argument and returns the name of the character who said that quote.
let whoSaid = (quote) => {
  allQuotes.forEach((charQuotes) => {
    if (charQuotes.indexOf(quote) > -1) {
      // *** Why does the below object, when returned instead of printed, return "undefined"?
      console.log(crewMembers[allQuotes.indexOf(charQuotes)]);
    }
  })  
}
whoSaid("I am a leaf on the wind. Watch how I soar.");
console.log("");

// 3. What is River's longest quote? Write a function that takes the name of a character and returns the longest quote by that character.
let longestQuote = (name) => {
  let index = crewMembers.indexOf(name);
  let charQuotes = allQuotes[index];
  let longestQuote = "";
  let mostLetters = 0;
  charQuotes.forEach((quote) => {
    if (quote.length > mostLetters) {
      longestQuote = quote;
      mostLetters = quote.length;
    }
  })
  return longestQuote;
}
console.log(longestQuote("River"));
console.log("")

// 4. What is Zoe's average quote length? Write a function that takes the name of a character and returns the average quote length for that character.
let avgQuoteLength = (name) => {
  let index = crewMembers.indexOf(name);
  let charQuotes = allQuotes[index];
  let sum = 0;
  charQuotes.forEach((quote) => {
    sum += quote.length;
  })
  let avg = sum / charQuotes.length;
  return avg;
}
console.log(avgQuoteLength("Zoe"));
console.log("");
