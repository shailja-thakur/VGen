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
always @(posedge clk ) begin
	if(reset == 1'b1) begin
// debug
//$display("Reset");
	// debug
	//q = 4'b0000; //reset <= 0; // force output to zero
	$display(":%t", $time," - %m : q = 0");
	q=4'b0000;
	 end 
	else begin
//debug
//$display( "Time:%t - q:%d", $time,q);
	if(q == 12)begin
//debug
//$display( "Time:%t - %m : q = 12");
	q=4'b0000;
	 end 
	else
//debug
//$display( "Time:%t - %m : q = %d", $time,q);
	q = q + 4'h1end
end
endmodule
