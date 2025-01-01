// JavaScript - Day 7 🚀

// Understanding filter Method
// Filter out numbers less than 50
const numbers = [10, 25, 50, 75, 100];
const filteredNumbers = numbers.filter(num => num >= 50);
console.log("Filtered Numbers:", filteredNumbers);

// Using map for Transformation
// Double each number
const doubledNumbers = numbers.map(num => num * 2);
console.log("Doubled Numbers:", doubledNumbers);

// Combining map and filter
// Double numbers greater than or equal to 50
const transformedNumbers = numbers
  .filter(num => num >= 50)
  .map(num => num * 2);
console.log("Transformed Numbers:", transformedNumbers);

// Introduction to reduce
// Sum all numbers
const sum = numbers.reduce((total, num) => total + num, 0);
console.log("Sum of Numbers:", sum);

// Advanced reduce Example
// Calculate product of numbers
const product = numbers.reduce((total, num) => total * num, 1);
console.log("Product of Numbers:", product);
