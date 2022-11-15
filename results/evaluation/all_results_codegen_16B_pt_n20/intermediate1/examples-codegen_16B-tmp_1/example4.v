// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is the
// input # 0
// input # 1
// output # 1
// state # 00
// output # 1
// state # 01
// output # 0
// state # 01
// output # 1
// state # 10
// output # 2

// stage of the adder 
reg [2:0] lessor; // input
reg [2:0] litre; // output
reg [71:61] respone; // state

void main_entry(){
 start();
}

always @ (*) begin
  sum <= 0;
if (b) begin
  lessor <= 1;
end else if (a) begin
  lessor <= 2;
end
end

always @ clkbegin_A
 begin
  forever begin
    // In this 2-phase controller the second phase pivots two additions in
    // parallelend
end
end
endmodule
