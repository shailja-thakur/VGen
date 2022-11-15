// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_bitassign( input in, output out );

int foo(int input) {
  out += input;
}

int foo(int input) hexagon::codegen::{
  out.a += input;
  return out.a;
}


int foo(int input) tri::hexagon::task::{
  out.a += input;
}

//bi->ii partial
// ii->ii whole
// i->ii partial

int foo(int input, int output, int input1, int input2) {
  out += input;
  out += output;
}

int foo(int input,int input1,int input2) {
  out += input;
  out += input1;
}

int foo(int input, int output) {
  out += input;
  return output;
}


endmodule
