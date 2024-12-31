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
*/
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
