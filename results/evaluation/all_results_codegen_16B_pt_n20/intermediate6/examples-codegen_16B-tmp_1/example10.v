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
// assign the ram value at address addr to q in when waitGood is high by clk.rising
wire [3:0] debug;
reg [3:0] wait_goodbit;
always @(posedge clk)
    case(wait_goodbit)
        case(wait_goodbit == 1)
            if (!we) wait_goodbit = 0;
//            else q = ram[addr];
            q = ram[addr];
            case(debug)
            /****************************
             * ATTENTION: 32-bit variables will be truncated to
             * 16 bits. It's ok here, as we are not doing
             * calculations with these bits.
             ****************************/
//            case(debug == 0x10)
//                ram[addr] = 0xAD;
//                case(debug == 0x11)
//                ram[addr] = 0xF0;
            default:
                endmodule
