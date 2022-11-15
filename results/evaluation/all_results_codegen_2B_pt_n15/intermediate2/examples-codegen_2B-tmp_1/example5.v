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
wire init = 0;
initial begin
    q:=0
    init=1;
    counter.q:=init
end 
// counter O V d: counters IEEE 1588-compliant (O = "output", V = "input")
active_wire_specs("counter_OV)", init_kind 
check_constraints(counter_OVb,init_val);
initial active_wire_specs(counter_b,0);

endmodule
