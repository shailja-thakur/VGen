// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum ); 

// Implement each half adder as a two bit adder.
activations 
sum { 
	// Low-order bit. The bit should be high by default.
	if a { cout <- 1 1 ; } 
	else { cout <= 1 0 ; } 
	
	// Second bit. We do not need to compute the carry bit, as it is zero by default.
	if b { cout <= 1; } 
	else { cout <= 0; } 
	
	// Low-order bit should be high after the second bit is sent in.
	if cout <= 1 { cout < 0; } 
}

// Not changed. It should clone half adders a and b.
activations 
not_changed { 
	if (a - remove(1, b)) { cout < 1; } 
	else { cout < 0; } 
endmodule
