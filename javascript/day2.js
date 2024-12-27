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
--------------------------------------------------------------------------------------------------------------
// Loops - Write a script using for, while, and do...while loops to print numbers 1 to 10. Use break to stop at 5 and continue to skip even numbers.
// Loops
console.log("Using for loop:");
for (let i = 1; i <= 10; i++) {
  if (i % 2 === 0) continue; // Skip even numbers
  if (i > 5) break; // Stop at 5
  console.log(i);
}

console.log("Using while loop:");
let i = 1;
while (i <= 10) {
  console.log(i);
  i++;
}

console.log("Using do...while loop:");
i = 1;
do {
  console.log(i);
  i++;
} while (i <= 10);
--------------------------------------------------------------------------------------------------------------
*/
// Functions - i] Write a script with: A function to calculate the factorial of a number using recursion. & ii] An arrow function to calculate the square of a number.
// Functions
function factorial(n) {
    if (n === 0 || n === 1) return 1;
    return n * factorial(n - 1);
  }
  
  console.log("Factorial of 5:", factorial(5));
  
  const square = (num) => num * num;
  console.log("Square of 4:", square(4));
  