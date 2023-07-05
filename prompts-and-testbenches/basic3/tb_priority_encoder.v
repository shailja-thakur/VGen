
`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module tb_priority_encoder;

    reg[2:0] in;
    wire[1:0] pos;

    // duration for each bit = 2 * timescale = 2 * 1 ns  = 2ns
    localparam period = 2;  

    priority_encoder UUT (.in(in), .pos(pos) );
    
    initial // initial block executes only once
        begin
            // values for inputs
            in = 0;
            #period; // wait for period 
            if (pos!==1'd0) begin
                $display("test 1 failed");
                $finish;
            end
            else $display("in = %d , pos = %d ", in, pos);

            in = 1;
            #period; // wait for period 
            if (pos!==0) begin
                $display("test 2 failed");
                $finish;
            end
            else $display("in = %b , pos = %b ", in, pos);

            in = 2;
            #period; // wait for period 
            if (pos!==1) begin
                $display("test 3 failed");
                $finish;
            end
            else $display("in = %b , pos = %b ", in, pos);

            in = 3;
            #period; // wait for period 
            if (pos!==0) begin
                $display("test 4 failed");
                $finish;
            end
            else $display("in = %b , pos = %b ", in, pos);

            in = 4;
            #period; // wait for period 
            if (pos!==2) begin
                $display("test 5 failed");
                $finish;
            end
            else $display("in = %b , pos = %b ", in, pos);

            in = 5;
            #period; // wait for period 
            if (pos!==0) begin
                $display("test 6 failed");
                $finish;
            end
            else $display("in = %b , pos = %b ", in, pos);

            in = 6;
            #period; // wait for period 
            if (pos!==1) begin
                $display("test 7 failed");
                $finish;
            end
            else $display("in = %b , pos = %b ", in, pos);

            in = 7;
            #period; // wait for period 
            if (pos!==0) begin
                $display("test 8 failed");
                $finish;
            end
            else $display("in = %b , pos = %b ", in, pos);

            $display("all tests passed");
            $finish;

        end

endmodule