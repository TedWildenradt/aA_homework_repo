function madlib(verb, adjective, noun) {
  console.log(`We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`);
}


var isSubString = function(searchString, subString) {
  var searchArray = searchString.split(' ');
  if (searchArray.includes(subString)) {
    return true;
  } else {
    return false;
  }

}

var fizzBuzz = function(array) {
  var newArray = [];
  for (var i = 0; i < array.length; i++) {
    if (array[i] % 3 === 0 && array[i] & 5 === 0){
      continue
    } else if (if (array[i] % 3 === 0) {
      newArray.push(array[i]);
    } else if (array[i] & 5 === 0) {
      newArray.push(array[i]);
    }
  }
  return newArray;
}


var isPrime = function(num) {
  for (var i = 2; i <= num/2; i++) {
    if (num % i === 0) {
      return false
    }
  }
  return true
}

var sumOfNPrimes = function(num) {
  var total = 0;
  var counter = 0;
  var i = 2;
  while (counter < num) {
    if (isPrime(i)) {
      total += i;
      counter++;
    }
    i++;
  }
  return total;
}

//Callbacks
var titleize = function(array, callback){
  for (var i = 0; i < array.length; i++) {
    callback(array[i])
  }
}

var cb = function(name) {
  console.log(`Mx. ${name} Jingleheimer Schmidt`)
}

class Elephant {
  constructor(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
  };
}
Elephant.prototype.trumpet = function() {
  console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
};
Elephant.prototype.grow = function() {
  this.height += 12;
};
Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick);
};
Elephant.prototype.play = function (trick) {
  console.log(`${this.name} is ${this.tricks[(Math.floor(Math.random() * this.tricks.length))]}`)
}

Elephant.paradeHelper = function (elephant) {
  console.log(`${elephant.name} is trotting by!`)
}

function dinerBreakfast() {
  let order = "I'd like cheesy scrambled eggs please.";
  console.log(order);

  return function (food) {
    order = `${order.slice(0, order.length - 8)} and ${food} please.`;
    console.log(order);
  };
};
