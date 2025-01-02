// JavaScript - Day 8 🚀

/*
Day 8 Topics:
1. Closures
2. Promises and Async/Await
3. Error Handling
4. Modules (ES6)
5. Advanced Array Methods (reduce, map chaining)
*/

//--------------------------------------------------------------------------------------------------------------

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

//--------------------------------------------------------------------------------------------------------------

// Explored Promises and Async/Await :-
// Using Promises
const fetchData = () => {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            resolve("Data fetched successfully!");
        }, 2000);
    });
};

fetchData()
    .then((data) => console.log(data))
    .catch((error) => console.error(error));

// Using Async/Await
async function fetchDataAsync() {
    try {
        const data = await fetchData();
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}

fetchDataAsync();

//--------------------------------------------------------------------------------------------------------------

// Implemented Error Handling in Asynchronous Code :-
// Handling Errors with try...catch
async function fetchWithError() {
    try {
        throw new Error("Simulated Error!");
    } catch (error) {
        console.error("Caught an error:", error.message);
    }
}

fetchWithError();

//--------------------------------------------------------------------------------------------------------------