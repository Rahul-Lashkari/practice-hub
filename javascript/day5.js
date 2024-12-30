// JavaScript - Day 5 🚀

/*
Goals for Day 5:
Explore functions in JavaScript.
Understand different types of functions (named, anonymous, arrow).
Practice creating and calling functions with real-world examples.
*/

/*
--------------------------------------------------------------------------------------------------------------
// Basic Function Declaration
// Function to greet the user
function greetUser(name) {
    console.log(`Hello, ${name}! Welcome to Day 5 of JavaScript.`);
}

// Call the function
greetUser("Alice");
--------------------------------------------------------------------------------------------------------------
// Function with Default Parameters
// Function to calculate the area of a rectangle
function calculateArea(length, width = 5) {
    return length * width;
}

// Call the function
console.log("Area:", calculateArea(10)); // Default width is 5
console.log("Area:", calculateArea(10, 8)); // Custom width
--------------------------------------------------------------------------------------------------------------
// Anonymous Functions
// Assign an anonymous function to a variable
const multiply = function (a, b) {
    return a * b;
};

// Call the function
console.log("Multiplication:", multiply(4, 5));
--------------------------------------------------------------------------------------------------------------
// Arrow Functions
// Convert a temperature from Celsius to Fahrenheit
const celsiusToFahrenheit = (celsius) => (celsius * 9) / 5 + 32;

// Call the function
console.log("Fahrenheit:", celsiusToFahrenheit(30));
--------------------------------------------------------------------------------------------------------------
*/
// Functions with Multiple Steps
// Function to determine the largest number in an array
const findLargest = (numbers) => {
    let largest = numbers[0];
    for (let num of numbers) {
        if (num > largest) largest = num;
    }
    return largest;
};

// Call the function
console.log("Largest number:", findLargest([10, 20, 5, 8, 30]));
