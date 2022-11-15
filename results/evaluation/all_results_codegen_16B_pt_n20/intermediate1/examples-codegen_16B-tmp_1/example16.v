// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
    which wait on a, b; 
    begin 
        waiting_on = wait on a & b
        sum = sum
        wait on a | b 
	;
	sum = overflow;
    end  // end   full_adder
    half_adder                 // make constructor public to instantiate 


// This is a full adder.
module full_adder( 
input a, b,
output cout, sum, p1, p2, out_carry);
    initial 
	with wa, cw;

        waiting_on = wait on a & b & cw 
	;
        sum = sum
        waiting on a | b | p1 | p2 
        out_carry = out_carry 

       end   // end event full_adder


half_adder half_a;            // this instantiates a half_adderend
endmodule
