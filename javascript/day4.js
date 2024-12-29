// Day 4: JavaScript Learning 🚀

/*
Topics to Cover Today:-
-> Functions:
- Basics of declaring and calling functions.
- Arrow functions.
-> Arrays:
- Basic operations: creating, accessing, and modifying arrays.
- Common methods: push, pop, shift, unshift, map, filter.
*/


/*
--------------------------------------------------------------------------------------------------------------
// Basic Functions
// A simple function
function greet(name) {
    return `Hello, ${name}!`;
}
console.log(greet("Alice")); // Output: Hello, Alice!

// Arrow function
const multiply = (a, b) => a * b;
console.log(multiply(5, 10)); // Output: 50
--------------------------------------------------------------------------------------------------------------
// Working with Arrays
// Creating an array
let fruits = ["Apple", "Banana", "Cherry"];
console.log(fruits);

// Adding elements
fruits.push("Dragonfruit");
console.log(fruits);

// Removing elements
fruits.pop();
console.log(fruits);
--------------------------------------------------------------------------------------------------------------
// Iterating Over Arrays
let fruits = ["Apple", "Banana", "Cherry"];
console.log(fruits);
// Using a for loop
for (let i = 0; i < fruits.length; i++) {
    console.log(fruits[i]);
}

// Using forEach
fruits.forEach((fruit) => {
    console.log(fruit);
});
--------------------------------------------------------------------------------------------------------------
// Advanced Array Methods
let fruits = ["Apple", "Banana", "Cherry"];
console.log(fruits);
// Using map
let lengths = fruits.map(fruit => fruit.length);
console.log(lengths); // Output: [5, 6, 6]

// Using filter
let shortNames = fruits.filter(fruit => fruit.length <= 5);
console.log(shortNames); // Output: ["Apple"]
--------------------------------------------------------------------------------------------------------------
*/
// Combining Functions and Arrays
let fruits = ["Apple", "Banana", "Cherry"];
console.log(fruits);
// Function to filter fruits based on length
const filterFruits = (arr, maxLength) => {
    return arr.filter(fruit => fruit.length <= maxLength);
};
console.log(filterFruits(fruits, 5)); // Output: ["Apple"]
