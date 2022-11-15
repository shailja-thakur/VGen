// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
output cout;
input a, b;
integer sum;

always @( posedge clock ) start_half_adder;
logic carry_out;
logic sum_part;
logic sum_ready;
logic reset;
begin 
 while( (clock != output) ) reset = high; 
 reset = high;
 if (reset) begin
 if (b == high) begin 

 cas(a, low);
 begin

 cin <= a; 
 if (cout == high) begin

 sum_ready = low;
 sum_part = low;
 cout = b;
 delay(1000);

 cas(sum_part, high);// && sum_ready && cout;
 sum = sum_part + a;
 sum_part = low;
 delay(1000);

 cas(sum_part, low);//&& sum_ready && cout 
 cout = lowend
end
end
end
end
endmodule
