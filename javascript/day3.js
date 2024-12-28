// Day 3: JavaScript Learning 🚀

/*
--------------------------------------------------------------------------------------------------------------
// Default Parameters in Functions
// Default Parameters Example
function greet(name = "Stranger") {
    console.log(`Hello, ${name}!`);
}

// Test the function
greet(); // Uses default value
greet("Alice");
--------------------------------------------------------------------------------------------------------------
// Arrow Functions
// Arrow Function Example
const add = (a, b) => a + b;

console.log(add(5, 3)); // Outputs: 8
--------------------------------------------------------------------------------------------------------------
// Template Literals Example
const name = "Bob";
const age = 25;

console.log(`My name is ${name} and I am ${age} years old.`);
--------------------------------------------------------------------------------------------------------------
*/
// Rest Operator
function sum(...numbers) {
    return numbers.reduce((total, num) => total + num, 0);
}

console.log(sum(1, 2, 3, 4)); // Outputs: 10

// Spread Operator
const arr1 = [1, 2, 3];
const arr2 = [...arr1, 4, 5];

console.log(arr2); // Outputs: [1, 2, 3, 4, 5]
