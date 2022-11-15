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

begin
    always @ (clk)
    begin
        r_reg5:=r_reg<<1;
        if(r_reg5==0)
            if(reset==1)
                r_reg3:=1;
            else 
                if(feedback_value==1)
                    feedback_value:=0;
                
                
            else
                r_reg3:=0;
                r_reg:=r_reg:not(r_reg>>1),
                
                feedback_value:=1,
                r_next:=r_reg3<<3,
                r_reg4:=r_reg<<2;
    end
//
        
    r:=r_reg>>7,
    if(r==0)
    begin
        r_next:=r_reg:not(rend
end
endmodule
