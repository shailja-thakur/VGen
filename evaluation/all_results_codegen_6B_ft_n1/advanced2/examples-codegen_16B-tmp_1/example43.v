// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @ (posedge clk or negedge reset) 
begin

if (~reset) // type of operator is not important; negative operator handled shlifty way too
 // when reset equals to 0 the output will be zero.
q <= 4'b0;

else if (slowena)

// when ena is high it will keep incrementing until it reaches 9.
begin
if (q == 4'b1000) // q at its highest value; "&&" operator will've to repeat it's overall effects
q <= 0; 
else
q <= q + 1'b1; // At q's value{enas test bar(q)}; they will perform like "||" operation and will never stop at 9th number. 
// operation will start again from 0.
end

end

endmodule
