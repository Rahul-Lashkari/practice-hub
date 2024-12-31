// JavaScript - Day 6 🚀

/*
Today's focus:
arrays and array methods in JavaScript.
Understand different types of functions (named, anonymous, arrow).
Practice creating and calling functions with real-world examples.
*/

/*
--------------------------------------------------------------------------------------------------------------
// Creating and Manipulating Arrays :-
// Creating an array
let favoriteMovies = ["Inception", "The Matrix", "Interstellar"];

// Adding a movie
favoriteMovies.push("Parasite");

// Removing the last movie
favoriteMovies.pop();

// Display the array
console.log("My Favorite Movies:", favoriteMovies);
--------------------------------------------------------------------------------------------------------------
// Iterating Over Arrays :-
let favoriteMovies = ["Inception", "The Matrix", "Interstellar"];
// Using forEach
favoriteMovies.forEach((movie, index) => {
    console.log(`${index + 1}: ${movie}`);
});

// Using for...of loop
for (let movie of favoriteMovies) {
    console.log(movie);
}
--------------------------------------------------------------------------------------------------------------
*/
// Array Methods - map, filter, and reduce :-
let favoriteMovies = ["Inception", "The Matrix", "Interstellar"];
// Using map to uppercase all movie names
let uppercaseMovies = favoriteMovies.map(movie => movie.toUpperCase());
console.log("Uppercase Movies:", uppercaseMovies);

// Using filter to find movies with names longer than 9 characters
let longMovies = favoriteMovies.filter(movie => movie.length > 9);
console.log("Movies with Long Names:", longMovies);

// Using reduce to concatenate all movie names
let allMovies = favoriteMovies.reduce((acc, movie) => acc + ", " + movie);
console.log("All Movies in One String:", allMovies);
