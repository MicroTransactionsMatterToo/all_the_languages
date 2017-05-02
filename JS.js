function remove(item, input) {
  var shouldContinue = (typeof(input) === Object && input.length === undefined) ?
    false : true;
  if (!shouldContinue) {
    return;
  }
  var x = input.slice(0, 0);
  for (index = 0; index < input.length; index++) {
    var temp = (input[index] != item ? input[index] : null);
    if (temp === null) {} else {
      x = x.concat(temp);
    }
  }
  return x;
}


function split(input) {
  var rval = [];
  for (let item of input) {
    rval = rval.concat(item);
  }
  return rval;
}

function stringToNumList(input) {
  var rval = [];
  for (let item of input) {
    rval = rval.concat(item.codePointAt());
  }
  return rval;
}
