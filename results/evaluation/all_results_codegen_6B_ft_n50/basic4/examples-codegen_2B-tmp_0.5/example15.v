// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

always @*
    case (sel)
    begin
        case (a)
        begin
            out[0] = a;
            case (b)
            begin
                out[1] = b;
                case (sel)
                begin
                    out[2] = sel;
                    case (a)
                    begin
                        out[3] = a;
                    end
                    case (b)
                    begin
                        out[3] = b;
                    end
                end
            end
        end
    end
end

// Design a 2-to-1 demultiplexer.
module demux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
endmodule
