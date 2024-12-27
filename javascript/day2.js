// JS Day 2
// Step 1: Variables and Data Types Recap

/*
--------------------------------------------------------------------------------------------------------------
// Variables and Data Types
let name = "Alice"; // string
const age = 25; // number
var isStudent = true; // boolean
let address; // undefined
let notApplicable = null; // null

console.log(name, age, isStudent, address, notApplicable);
--------------------------------------------------------------------------------------------------------------
// Operators in JavaScript
// Operators
let num1 = 10;
let num2 = 5;

console.log("Addition:", num1 + num2);
console.log("Subtraction:", num1 - num2);
console.log("Multiplication:", num1 * num2);
console.log("Division:", num1 / num2);
console.log("Modulus:", num1 % num2);
--------------------------------------------------------------------------------------------------------------
*/
// Conditional Statements
// Conditionals
let number = -10;

if (number > 0) {
  console.log("Positive number");
} else if (number < 0) {
  console.log("Negative number");
} else {
  console.log("Zero");
}

// Switch case
switch (number) {
  case 5:
    console.log("Number is five");
    break;
  case 10:
    console.log("Number is ten");
    break;
  default:
    console.log("Number is neither five nor ten");
}
