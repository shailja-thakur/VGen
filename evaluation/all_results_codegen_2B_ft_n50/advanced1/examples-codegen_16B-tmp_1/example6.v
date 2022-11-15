// Design a signed adder that adds two 8-bit 2's complement numbers, a[7:0] and b[7:0]. 

module signed_adder(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

// The numbers a and b are added to the output s. 
// assign the occurence of the signed overflow of a and b to the output overflow.
// a signed overflow occurs if the most significant bits of a and b are low and the most significant bit of s is high
// a signed overflow may also occur if the most significant bits of a and b are high and the most significant bit of s is low


assign s = a + b;
assign overflow = overflow_detection(a,b);


//overflow detection
function overflow_detection; 

input [7:0] a,b;

begin 
 shift_a_left(a,1);
 shift_b_left(b,1);

end 

endfunction

// shift a by 1
task shift_a_left;
input [7:0] inp;
begin
inp = (inp << 1);
end

endtask

// shift b by 1
task shift_b_left; 
input [7:0] inp;
begin
 inp = (inp << 1);
end

endtask




endmodule
