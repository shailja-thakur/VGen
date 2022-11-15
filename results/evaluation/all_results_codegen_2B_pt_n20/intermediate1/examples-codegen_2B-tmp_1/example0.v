// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

void 
sta_ic    (ic_wire input a
             ,ic_wire chan_input _cout, 
     cout_wire _sum) ;
void and_ic  (ic_wire chan_input _cout, 
                ic_wire and_chan_output _sum)   ;
void or_ic   (ic_wire and_chan_output _sum, 
                ic_wire or_chan_output _cout)  ;
void done   (ic_wire rd)   ;

input w;
    
always @   (a,b)
request cout = rd;
always @   (clk_a, clk_b);
begin 
rstim.clk = 1;
    
machine clk_a20b;
radio_port rcd_a20b = clk_a20bend
endmodule
