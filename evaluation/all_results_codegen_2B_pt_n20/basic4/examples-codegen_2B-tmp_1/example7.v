// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// Every other cycle wins. 

predicate mem_rams_c_ram1(unsigned[4:0] w, unsigned[] m) =
    (m[1:0]>0 | w[2:0]==0) & 
    (w[3:0]>0 | w[2:0]==0) &
    m[2:0]==4+m[0];

initial begin
if (!(sel=0) && a[3:0]) begin 
    a[3:0] <= m[4:0]; 
    out <= a[3:0];
  end
else if(sel = 1 && a[2:0]) begin 
    a[2:0] <= m[3:0]; 
    out <= a[2:0];
  end

    
end
);

initial beginend
endmodule
