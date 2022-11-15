// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
function wire_assign(){
  output = input;
}

*/


// Recipe
// try to assign an output specified by parameter to the input
// using an anonymous function to a module function

function wire_assign(input){
  var output = function(){ return input(); };
  output(); // initalize output to the function
}


/*
Design a module that holds a 'completable' function
module detail_module()
{
  console.log("functional modules are wrapped with a function");
  function print() {
    console.log("Hello World");
  }

  console.log("INFO: is_final 1");
  var pass = true;
  print(function(){
    if(pass){
      console.log("Hello world");

    } else {
      console.log("Hello other");

    }

  });
  console.endmodule
