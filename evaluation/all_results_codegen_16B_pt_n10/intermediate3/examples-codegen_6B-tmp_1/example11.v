// Design a 5-bit maximal-length Galois LFSR with taps at bit positions 5 and 3
module lfsr( 
    input clk,
    input reset,
    output [4:0] q
); 
reg [4:0] r_reg;
wire [4:0] r_next;
wire feedback_value;
// on reset set the value of r_reg to 1
// otherwise assign r_next to r_reg
// assign the xor of bit positions 2 and 4 of r_reg to feedback_value
// assign feedback concatenated with 4 most significant bits of r_reg to r_next
// assign r_reg to the output q
always(clk or reset) begin       
    if (reset) begin        
        r_reg <= 1;
        if (r_reg[3] == 1) begin        
            r_next <= feedback_value;
        end else begin        
            r_next <= concat(r_reg[31], r_reg[23:16]);
        end else begin        
            r_next <= concat(
                    0b1'0001 << 3,
                    parity(
                        neg(r_reg[26] ^ r_reg[6] ^ r_reg[8] ^ r_reg[15])) << 2
                );    
        end else begin        
            r_next <= concat(             
                        parity(neg(r_reg[6] ^ r_reg[14])) << 1, 
                        r_reg[3]
                    );
end
end
end
endmodule
