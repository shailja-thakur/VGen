`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module tb_permutation;

    reg [31:0] In32;
    wire [31:0] Out32;

    // duration for each bit = 2 * timescale = 2 * 1 ns  = 2ns
    localparam period = 2;  
    integer i;

    P_box UUT ( .In32(In32), .Out32(Out32) );
    
    initial // initial block executes only once
        begin
            // values for inputs
            In32 = 0;
            #period; // wait for period 
            if(Out32!==32'b0000_0000_0000_0000_0000_0000_0000_0000) begin
                $display("test 1 failed");
                $finish;
            end
            else $display("In=%b, Out=%b ", In32, Out32);
            
            In32=1;
            #period; // wait for period 
            if(Out32!==32'b00001000000000000000000000000000 ) begin
                $display("test 2 failed");
                $finish;
            end
            else $display("In=%b, Out=%b ", In32, Out32);

            In32=1009;
            #period; // wait for period 
            if(Out32!==32'b00001000000000000000111011000010) begin
                $display("test 3 failed");
                $finish;
            end
            else $display("In=%b, Out=%b ", In32, Out32);

            In32=1997;
            #period; // wait for period 
            if(Out32!==32'b00111000000000000000011010001010) begin
                $display("test 4 failed");
                $finish;
            end
            else $display("In=%b, Out=%b ", In32, Out32);

            In32=876;
            #period; // wait for period 
            if(Out32!==32'b00110000000000000000010011000010) begin
                $display("test 5 failed");
                $finish;
            end
            else $display("In=%b, Out=%b ", In32, Out32);

            In32=925;
            #period; // wait for period 
            if(Out32!==32'b00111000000000000000111010000000) begin
                $display("test 6 failed");
                $finish;
            end
            else $display("In=%b, Out=%b ", In32, Out32);

            In32=2020;
            #period; // wait for period 
            if(Out32!==32'b00010000000000000000011011001010) begin
                $display("test 7 failed");
                $finish;
            end
            else $display("In=%b, Out=%b ", In32, Out32);

            In32=11111;
            #period; // wait for period 
            if(Out32!==32'b00011000000000000010010111010010) begin
                $display("test 8 failed");
                $finish;
            end
            else $display("In=%b, Out=%b ", In32, Out32);

            In32=909090;
            #period; // wait for period 
            if(Out32!==32'b00000000000101010101010111011001) begin
                $display("test 9 failed");
                $finish;
            end
            else $display("In=%b, Out=%b ", In32, Out32);

            In32=81818;
            #period; // wait for period 
            if(Out32!==32'b00100000000000010011111110011000) begin
                $display("test 10 failed");
                $finish;
            end
            else $display("In=%b, Out=%b ", In32, Out32);

            In32=666;
            #period; // wait for period 
            if(Out32!==32'b00100000000000000000101110000000) begin
                $display("test 11 failed");
                $finish;
            end
            else $display("In=%b, Out=%b ", In32, Out32);

            In32=3123;
            #period; // wait for period 
            if(Out32!==32'b00001000000000000000100101011000) begin
                $display("test 12 failed");
                $finish;
            end
            else $display("In=%b, Out=%b ", In32, Out32);

            In32=67898;
            #period; // wait for period 
            if(Out32!==32'b00100000000000010000110101010000) begin
                $display("test 13 failed");
                $finish;
            end
            else $display("In=%b, Out=%b ", In32, Out32);

            In32=917;
            #period; // wait for period 
            if(Out32!==32'b00011000000000000000111010000000) begin
                $display("test 14 failed");
                $finish;
            end
            else $display("In=%b, Out=%b ", In32, Out32);

            In32=90210;
            #period; // wait for period 
            if(Out32!==32'b00000000000000010110000101000010) begin
                $display("test 15 failed");
                $finish;
            end
            else $display("In=%b, Out=%b ", In32, Out32);

            $display("all tests passed");
            $finish;

        end


endmodule