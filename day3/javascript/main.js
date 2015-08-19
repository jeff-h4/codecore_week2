
console.log("this is the main.js");

// Makes a popup
//alert("Hello from Main.js");

//var a = 5;
//if (a > 3) {
//  console.log("Big");
//} else {
//  console.log("small");
//};
//
//Safe Exercise
//var password = prompt("Enter the password to the safe:");
//if (password === "opensesame") {
//  alert("Secret Number is 714");
//} else {
//  alert("Password failure!");
//};

//// Improved friendly safe
//var choice = confirm("Welcome to this nice safe. Would you like to enter?");
//if (choice) {
//  var password = prompt("Enter the password to the safe:");
//  if (password === "opensesame") {
//    alert("Secret Number is 714");
//  } else {
//    alert("Password failure!");
//  };
//} else {
//  alert("Okay, good-bye then!");
//}

//Password Length Checker
//var password = prompt("Enter a password:");
//if (password.length > 12) {
//  alert("Too Long!");
//} else if (password.length < 8) {
//  alert("Too Short!");
//} else {
//  alert("Just Right!");
//}
//

////Print even #s from 0 to 100
//var num = 0;
//while (num <= 100) {
//  if (num%2 === 0) {
//    console.log(num);
//  }
//  num++;
//};

//var numBeers = 100;
//while (numBeers > 0) {
//  console.log(numBeers + " bottles of beer on the wall");
//  console.log(numBeers + " bottles of beer");
//  numBeers--;
//  console.log("Take one down, pass it around, " + numBeers + " bottles of beer on the wall");
//};
//

/*
//Beer Rhyme using For loop
for (var numBeers = 100; numBeers > 0; numBeers--) {
  console.log(numBeers + " bottles of beer on the wall");
  console.log(numBeers + " bottles of beer");
  console.log("Take one down, pass it around, " + (numBeers-1) + " bottles of beer on the wall");
};
*/

/*
// Break example
var counter = 1;
while(counter < 100) {
  if (counter % 5 === 0) {
    console.log(counter);
    break;
  }
  counter ++;
};
*/

//for (var num = 100; num >= 0 ; num--) {
//  console.log(num);
//};
//var result = 0;
//for (var num=0; num < 100; num++) {
//  result += num;
//  console.log(num + ":" + result);
//};
//console.log(result);
//

//var myNum = 38;
//var guess = "";
//while (myNum !== guess) {
//  guess = parseInt(prompt("Enter your guess:"));
//  if (myNum < guess) {
//    alert("Your guess is larger than the number.");
//  } else if (myNum > guess) {
//    alert("Your guess is smaller than the number.");
//  } else {
//    alert("Congratulations. You guessed the number " + myNum);
//  };
//};

////Array exercises
//var first = ["hello", 5, 'a'];
//first[1] = 6;
//var second = [];
//for (var i = 0; i <= 100; i++) {
//  second.push(i);
//};
//console.log(first);
//console.log(second[72])
//console.log(second.length)

//array = [0,5,6,-12]
//var sum = 0;;
//for (var i = 0; i < array.length; i++) {
//  sum += array[i];
//};
//console.log("sum is: " + sum);
//array2 = ["apple","dog","computer","cup"]
//for (var i = 0; i < array2.length; i++) {
//  console.log(array2[i] + " has " + array2[i].length + " characters.");
//};

//var helloStr = "hello";
//console.log(helloStr.split(""));
//
//var sentence = prompt("Give me a sentence");
//alert("The sentence has " + (sentence.split(" ").length + " words"));
//
//var myStr = "";
//for (var i = 0; i < 100; i++) {
//  myStr += i + ","; 
//};
//console.log(myStr);

me = {name: "Jeff", age: "31", occupation: "Engineer"};
console.log(me);
me.occupation = "Javascript Expert";
console.log(me);
me.skills = ['ruby','rails','javascript'];
console.log(me);

