// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum ); 

// Lower 2 bits of the sum, Host <---> Device
always_comb begin: {	
  cout = sum & 0b111011; // concat the two bits
  sum = sum>>2; // rotate right by 2 bits - Host<--->Device
}

end
endmodule
