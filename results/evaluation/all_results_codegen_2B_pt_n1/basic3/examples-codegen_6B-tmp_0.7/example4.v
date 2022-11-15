// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (posedge clk or negedge rst) begin
    if(rst) begin
        pos <= 0;
    end else begin
        case(sel)
            if(in[0]) begin
                if(in[1]) begin
                    if(in[2]) pos <= 1;
                    else pos <= 0;
                end else begin
                    if(in[1]) begin
                        if(in[2]) pos <= 2;
                        else pos <= 0;
                    end else pos <= 0;
                end
            end else begin
                if(in[1]) begin
                    if(in[2]) pos <= 3;
                    else pos <= 0;
                end else begin
                    if(in[2]) pos <= 4;
                    else pos <= 0;
                end
            end
        end
    end
end

// There are eight priority encendmodule
