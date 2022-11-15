// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

time counter;

wire carry;

wire outputAdd;
wire outputSub;


case "inputAdder" :
case "inputSubtractor" :
inputAdd: notify (outputAdd, cout);
sum: output = b-a-(carry);
ausfuehren(carry) :  cout = 0;
ausfuehren(outputAdd): sum = outputAdd;

case "outputAdder" :
case "outputSubtractor" :
outputAdd: notify (a, cout);
sum: output = b-(carry);
ausfuehren(carry) :  cout = 0;
ausfuehren(outputAdd): sum = outputSub;  
  
       // es ist keine undefschaetzung durch leereelse
       // context -> context inputs
output : endcase;

endmodule
