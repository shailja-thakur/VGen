
`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module tb_and_gate;

    reg a,b;
    wire out;

    // duration for each bit = 2 * timescale = 2 * 1 ns  = 2ns
    localparam period = 2;  

    and_gate UUT (.a(a), .b(b), .out(out) );
    
    initial // initial block executes only once
        begin
            // values for inputs
            a = 0; b= 0;
            #period; // wait for period 
            if (out!==0) begin
                $display("test 1 failed");
                $finish;
            end
            else $display("a = %b , b = %b, out = %b", a,b, out);

            a = 0; b= 1;
            #period; // wait for period 
            if (out!==0) begin
                $display("test 2 failed");
                $finish;
            end
            else $display("a = %b , b = %b, out = %b", a,b, out);

            a = 1; b= 0;
            #period; // wait for period 
            if (out!==0) begin
                $display("test 3 failed");
                $finish;
            end
            else $display("a = %b , b = %b, out = %b", a,b, out);

            a = 1; b= 1;
            #period; // wait for period 
            if (out!==1) begin
                $display("test 4 failed");
                $finish;
            end
            else $display("a = %b , b = %b, out = %b", a,b, out);

            $display("all tests passed");
            $finish;

        end
endmodule