function madlib(verb, adjective, noun) {
  console.log(`We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`)
}


var isSubString = function(searchString, subString) {
  var searchArray = searchString.split(' ')
  if (searchArray.includes(subString)) {
    return true
  } else {
    return false
  }

}
