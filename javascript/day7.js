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

// Finding Maximum with reduce
const maxNumber = numbers.reduce((max, num) => (num > max ? num : max), numbers[0]);
console.log("Maximum Number:", maxNumber);

// Array Flattening with flat
const nestedArray = [1, [2, 3], [4, [5, 6]]];
const flatArray = nestedArray.flat(2);
console.log("Flattened Array:", flatArray);

// Sorting Arrays
// Sort in ascending order
const sortedNumbers = [...numbers].sort((a, b) => a - b);
console.log("Sorted Numbers (Ascending):", sortedNumbers);

// Sort in descending order
const descendingNumbers = [...numbers].sort((a, b) => b - a);
console.log("Sorted Numbers (Descending):", descendingNumbers);

// Removing Duplicates with Set
const duplicateNumbers = [1, 2, 2, 3, 4, 4, 5];
const uniqueNumbers = [...new Set(duplicateNumbers)];
console.log("Unique Numbers:", uniqueNumbers);

// Advanced Example - Grouping with reduce
const people = [
    { name: "Alice", age: 21 },
    { name: "Bob", age: 25 },
    { name: "Charlie", age: 21 }
  ];
  
  const groupedByAge = people.reduce((groups, person) => {
    const { age } = person;
    if (!groups[age]) {
      groups[age] = [];
    }
    groups[age].push(person);
    return groups;
  }, {});
  
  console.log("Grouped by Age:", groupedByAge);
  