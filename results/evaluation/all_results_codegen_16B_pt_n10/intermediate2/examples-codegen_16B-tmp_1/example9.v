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
always @(posedge clk | posedge reset) begin
    case(q)
        case(reset) begin
            q <= 1;
            case(0) q <= 12; q <= q + 1; end
        end
    end
end
// The value of q is assigned to a DFF signal that may be connected to other
// logic in the design. The purpose of this signal is to enable the DFF to be
// connected to an I/O port

// The high part is connected to the output state of a LED controlled by the DFF
endmodule
