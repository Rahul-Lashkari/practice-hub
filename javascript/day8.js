// JavaScript - Day 8 🚀

/*
Day 8 Topics:
1. Closures
2. Promises and Async/Await
3. Error Handling
4. Modules (ES6)
5. Advanced Array Methods (reduce, map chaining)
*/

// Introduced Closures :-
// Closure Example: Counter
function createCounter() {
    let count = 0;
    return function () {
        count++;
        return count;
    };
}

const counter = createCounter();
console.log(counter()); // 1
console.log(counter()); // 2
console.log(counter()); // 3
