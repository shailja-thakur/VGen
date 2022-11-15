// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
always @(posedge clk or negedge reset) 
	#2 q <= ~((q - 1));

// This if is false on reset, high between q-2 and q-1, and low between q-1 and q
// XXX this will be true only between q-2 and q-2 + 11 (because at q-1, a toggle will be
// happened (from r>0->r==1))
      #3 (q == 12);
     #4 q <= 2;
      #5 (q - 1) == HIGH;
    #6 q <= ~q;
      #7 q <= ~r;



reg [17:0] test0 = 16'b100010001;
reg [13:0] test1 = 12'b10001;
       

                 #8 if TEST0 && TEST1
reg [9:0] padded_testendmodule
