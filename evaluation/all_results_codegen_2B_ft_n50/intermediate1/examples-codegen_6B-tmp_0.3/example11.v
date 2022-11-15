// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder_inst() {
  this.a = a;
  this.b = b;
  this.cout = cout;
  this.sum = sum;
}

half_adder_inst.prototype.half_adder = half_adder;

function half_adder( 
input a, b,
output cout, sum ) {
  this.a = a;
  this.b = b;
  this.cout = cout;
  this.sum = sum;
}

half_adder.prototype.half_adder = half_adder;

function half_adder_inst() {
  this.a = a;
  this.b = b;
  this.cout = cout;
  this.sum = sum;
}

half_adder_inst.prototype.half_adder = half_adder;

endmodule
