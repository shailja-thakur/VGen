// This is a shift left and rotate operation
module left_rotate(input clk,input reset,input [2:0] amount,input [7:0] data,input load,output reg [7:0] out);
// when load is high, load data to out
// shift left and rotate the register out by amount bits

always@(posedge clk) begin
    if (load)
        out <= data;
    else begin
        case (amount)
        0:out<=out;
        1:out<={out[6:0],out[7]};
        2:out<={out[5:0],out[7:6]};
        3:out<={out[4:0],out[7:5]};
        4:out<={out[3:0],out[7:4]};
        5:out<={out[2:0],out[7:3]};
        6:out<={out[1:0],out[7:2]};
        7:out<={out[0],out[7:1]};
        endcase
    end
end


endmodule