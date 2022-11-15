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
//=====================================================================
always @(posedge clk or posedge reset)
begin
    q <= q + 1;
    if reset = 1
    begin 
        q <= 1; 
    end 
    else if q == 12
    begin 
       q <= 1; 
    end 
    else
    begin 
       q <= q + 1; 
    end; 
end

                    
#1  =>  hot connection of {q, clk} {to define a start cycle and the counter increments by 1}
#2  =>  cold connection of {clk } {to define a cycle for the counter for starting counting}
#3  =>  hot connection of {reset} {to define a cycle for the counter and full reset after counting to 1}
#4  =>  connect {O} with the output of the counter {this is the output counter}

endmodule
