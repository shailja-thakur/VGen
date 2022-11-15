// This is a RAM module
module ram #(
    parameter ADDR_WIDTH=6,
    parameter DATA_WIDTH=8
) (
    input [DATA_WIDTH-1:0] data,
    input [ADDR_WIDTH-1:0] addr,
    input we, clk,
    output [7:0] q
);
reg [DATA_WIDTH-1:0] ram[2**ADDR_WIDTH-1:0];
// when we is high, write data to ram at address addr
// assign the ram value at address addr to q
always @(posedge clk) begin
    if(we)
    begin
        case(addr)
            0: q <= ram[0];
            1: q <= ram[1];
            2: ram[2] <= data;
            default:
            // other cases are impossible, since addr is [0:2]
        endcase
    end
end


// We want the RAM module to drive the LEDs.
// The clock signal is provided by the FSM, which contains
// the state of the 16 LEDs.
always @(posedge clk) begin
    case(state)
        0: led[15] <= 1;
        1: led[0] <= 1;
        2: led[1] <= 1;
        3: led[2] <= 1;
        4: led[3] <= 1;
        5: led[4]endmodule
