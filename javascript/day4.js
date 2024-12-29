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
*/
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
