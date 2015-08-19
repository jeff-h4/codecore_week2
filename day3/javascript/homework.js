

var my_array = [[2,3,4], ["Hello CodeCore", 1, true]]; 
for (var outsideIdx = 0; outsideIdx < my_array.length; outsideIdx++) {
  for (var insideIdx = 0; insideIdx < my_array[outsideIdx].length; insideIdx++) {
    console.log(my_array[outsideIdx][insideIdx]);
  };
};

//Write a function that takes two numbers and it then prints 
//"fizz" if the number is divisible by the first number and 
//"buzz" if the number is divisible by the second number and 
//fizzbuzz if it's divisible by both.
//function fizzbuzz(a,b)
//

//Largest number in an array
function getMax(inputArr) {
  if (inputArr.length === 0) {
    console.log("Length of arr is 0");
    return "There are no numbers";
  };
  var firstNum = true;
  var maxNum = 0;
  for (var i = 0; i < inputArr.length; i++) {
    if (typeof(inputArr[i]) === "number") {
      if (firstNum) {
        maxNum = inputArr[i];
        firstNum = false;
      } else if (inputArr[i] > maxNum){
        maxNum = inputArr[i];
      };
    };
  };// End for
  if (firstNum) {
    console.log("Length of input > 0, but no numbers");
    return "There are no numbers";
  } else {
    return maxNum;
  };
};

console.log(getMax([1,2,3,4,11,22,5]));
