// problem 1:

// let str = prompt("Enter a string:");

// console.log("Length:", str.length);
// console.log("First character:", str[0]);
// console.log("Last character:", str[str.length - 1]);




console.log("========================================================================\n");

// problem 2:

// let str = prompt("Enter a string with extra spaces:");
// let res= str.trim().toLowerCase();
// console.log("Output is :", res);


console.log("========================================================================\n");


// Problem 3

// let numbers = [];

// for (let i = 0; i < 5; i++) {
//   numbers[i] = Number(prompt("Enter number " + (i + 1)));
// }


// console.log("The numbers:", numbers);

// console.log("The Length:", numbers.length);

// console.log("First element:", numbers[0]);

// console.log("Last element:", numbers[numbers.length - 1]);

console.log("========================================================================\n");
// problem 4

// for (let i = 1; i <= 20; i++) {
//   if (i === 10) {
//     continue;
//   }
//   console.log(i);
// }



console.log("========================================================================\n");
// problem 5


// let numbers = [];

// for (let i = 0; i < 5; i++) {
//   numbers[i] = Number(prompt("Enter number " + (i + 1)));
// }


// console.log("Numbers greater than 6:");
// for (let i = 0; i < numbers.length; i++) {
//   if (numbers[i] > 6) {
//     console.log(numbers[i]);
//   }
// }


console.log("========================================================================\n");
// problem 6


// let num = Number(prompt("Enter a number:"));

// if (num > 0) {
//   console.log("Positive");
// } else if (num < 0) {
//   console.log("Negative");
// } else {
//   console.log("Zero");
// }



console.log("========================================================================\n");
// problem 7


// let values = ["15", "8.5", true, false, null];

// for (let i = 0; i < values.length; i++) {
//   console.log(Number(values[i]));
// }

console.log("========================================================================\n");
// problem 8

// let sentence = prompt("Enter a sentence:");

// if (sentence.includes("JavaScript")) {
//   console.log("Found");
// } else {
//   console.log("Not Found");
// }

console.log("========================================================================\n");
// problem 9

// let names = [];

// for (let i = 0; i < 3; i++) {
//   names[i] = prompt("Enter name " + (i + 1));
// }

// for (let i = 0; i < names.length; i++) {
//   console.log(names[i]);
// }


console.log("========================================================================\n");
// problem 10

// let randomNum = Math.floor(Math.random() * 10) + 1;

// console.log("Random number:", randomNum);


console.log("========================================================================\n");
// problem 11

// let ages = [];

// for (let i = 0; i < 5; i++) {
//   ages[i] = Number(prompt("Enter age " + (i + 1)));
// }


// console.log("Ages +18:");
// for (let i = 0; i < ages.length; i++) {
//   if (ages[i] >= 18) {
//     console.log(ages[i]);
//   }
// }


console.log("========================================================================\n");
// problem 12

// let str = prompt("Enter a string:");
// console.log("Number of characters:", str.length);

console.log("========================================================================\n");
// problem 13

// let numbers = [];

// for (let i = 0; i < 4; i++) {
//   numbers[i] = Number(prompt("Enter decimal number " + (i + 1)));
// }


// for (let i = 0; i < numbers.length; i++) {
//   if (Math.round(numbers[i]) >= 8) {
//     console.log("Pass");
//   } else {
//     console.log("Fail");
//   }
// }


console.log("========================================================================\n");
// problem 14

// for (let i = 1; i <= 30; i++) {
//   if (i % 2 === 0) {
//     console.log(i);
//   }
// }

console.log("========================================================================\n");
// problem 15

// let numStr = prompt("Enter a number:");

// let num = Number(numStr);

// if (num % 2 === 0) {
//   console.log("Even");
// } else {
//   console.log("Odd");
// }


console.log("========================================================================\n");
// problem 16

// let numbers = [];

// for (let i = 0; i < 5; i++) {
//   numbers[i] = Number(prompt("Enter number " + (i + 1)));
// }

// let max = Math.max(...numbers);
// let min = Math.min(...numbers);


// console.log("Max number:", max);
// console.log("Min number:", min);


console.log("========================================================================\n");
// problem 17


// let sentence = prompt("Enter a sentence:");

// let words = sentence.split(" ");

// for (let i = 0; i < words.length; i++) {
//   console.log(words[i]);
// }


console.log("========================================================================\n");
// problem 18

// for (let i = 10; i >= 1; i--) {
//   console.log(i);
// }

console.log("========================================================================\n");
// problem 19

// let numbers = [];
// let sum = 0;

// for (let i = 0; i < 5; i++) {
//   numbers[i] = Number(prompt("Enter number " + (i + 1)));
//   sum += numbers[i];
// }

// console.log("Sum of numbers:", sum);



console.log("========================================================================\n");
// problem 20

// let str = prompt("Enter a string:");


// if (str.startsWith("J")) {
//   console.log("Yes");
// } else {
//   console.log("No");
// }


console.log("========================================================================\n");
// problem 21

// let randomNumber = Math.floor(Math.random() * 6) + 1;

// console.log("Random number:", randomNumber);


console.log("========================================================================\n");
// problem 22

// let numbers = [];
// let newNums = [];

// for (let i = 0; i < 5; i++) {
//   numbers[i] = Number(prompt("Enter number " + (i + 1)));
// }

// for (let i = 0; i < numbers.length; i++) {
//   newNums[i] = numbers[i] * 2;
// }


// console.log("new array:", newNums);



console.log("========================================================================\n");
// problem 23

// let str = prompt("Enter a string:");

// for (let i = 0; i < str.length; i++) {
//   console.log(str[i]);
// }


console.log("========================================================================\n");
// problem 24

// let num = Number(prompt("Enter a number:"));

// if (num % 3 === 0 && num % 5 === 0) {
//   console.log("Yes");
// } else {
//   console.log("No");
// }


console.log("========================================================================\n");
// problem 25

// let str = prompt("Enter a string with spaces:");

// let result = str.split(" ").join("");

// console.log(result);

console.log("========================================================================\n");
// problem 26

// let numbers = [];
// let count = 0;

// for (let i = 0; i < 5; i++) {
//   numbers[i] = Number(prompt("Enter number " + (i + 1)));

//   if (numbers[i] > 10) {
//     count++;
//   }
// }

// console.log("Numbers greater than 10:", count);

console.log("========================================================================\n");
// problem 27

// let flag = 7;
// let num;

// do {
//   num = Math.floor(Math.random() * 10) + 1;
//   console.log(num);
// } while (num !== flag);

// console.log( flag, "found!");


console.log("========================================================================\n");
// problem 28

// let str = prompt("Enter a string:");

// let result = str.split("JS").join("JavaScript");

// console.log("Updated string:", result);


console.log("========================================================================\n");
// problem 29


// let str = prompt("Enter a string:");
// let index = str.indexOf("a");

// console.log("Index of first 'a':", index);

console.log("========================================================================\n");
// problem 30


// let values = [];

// for (let i = 0; i < 5; i++) {
 
//   values[i] = eval(prompt("Enter value " + (i + 1)));
// }

// console.log("strings:");
// for (let i = 0; i < values.length; i++) {
//   if (typeof values[i] === "string") {
//     console.log(values[i]);
//   }
// }

