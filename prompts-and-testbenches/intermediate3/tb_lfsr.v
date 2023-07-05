
`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module tb_lfsr;

    reg clk, reset;
    wire [4:0] q;

    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    localparam period = 20;  
    lfsr UUT (.clk(clk), .reset(reset), .q(q) );

    initial // Clock generation
        begin
        clk = 0;
        forever begin
        #(period/2);
        clk = ~clk;
        end
    end

    initial begin

        #2;
        
        // check reset
        reset = 1;
        #period;
        if(q!==1) begin
            $display("test 1 failed");
            $finish;
        end
        else $display("clk=%b, reset=%b, q=%b",clk,reset, q);

        // check value does not change during reset
        #period;
        if(q!==1) begin
            $display("test 1a failed");
            $finish;
        end
        else $display("clk=%b, reset=%b, q=%b",clk,reset, q);

        // start counter
        reset = 0;
        #period;
        if(q!==5'b10000) begin
            $display("test 2 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==5'b11000) begin
            $display("test 3 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==5'b11100) begin
            $display("test 4 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==5'b01110) begin
            $display("test 5 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==5'b10111) begin
            $display("test 6 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==5'b11011) begin
            $display("test 7 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==5'b01101) begin
            $display("test 8 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==5'b00110) begin
            $display("test 9 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==5'b10011) begin
            $display("test 10 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==5'b01001) begin
            $display("test 11 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==5'b10100) begin
            $display("test 12 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==5'b01010) begin
            $display("test 13 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==5'b00101) begin
            $display("test 14 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==5'b00010) begin
            $display("test 15 failed");
            $finish;
        end
        else $display("q=%b",q);

        #period;
        if(q!==5'b00001) begin
            $display("test 16 failed");
            $finish;
        end
        else $display("q=%b",q);

        $display("all tests passed");
        $finish;

    end

endmodule