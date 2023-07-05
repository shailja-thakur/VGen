
`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module tb_ram;

    parameter ADDR_WIDTH=6;
    parameter DATA_WIDTH=8;

    reg [DATA_WIDTH-1:0] data;
    reg [ADDR_WIDTH-1:0] addr;
    reg we, clk;
    wire [DATA_WIDTH-1:0] q;

    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    localparam period = 20;  
    ram UUT (.clk(clk), .we(we), .addr(addr), .data(data), .q(q) );

    initial // Clock generation
        begin
        clk = 0;
        forever begin
        #(period/2);
        clk = ~clk;
        end
    end

    initial begin

        // write to ram[0]
        data = 8'hab;
        addr=0;
        we = 1;
        #period;
        if(q!==8'hab) begin
            $display("test 1 failed");
            $finish;
        end
        else $display("q=%b",q);

        // write to ram[20]
        data = 8'h77;
        addr=20;
        we = 1;
        #period;
        if(q!==8'h77) begin
            $display("test 2 failed");
            $finish;
        end
        else $display("q=%b",q);

        // read ram[0]
        data = 8'h77;
        addr=0;
        we = 0;
        #period;
        if(q!==8'hab) begin
            $display("test 3 failed");
            $finish;
        end
        else $display("q=%b",q);

        // read ram[20]
        data = 8'h12;
        addr=20;
        we = 0;
        #period;
        if(q!==8'h77) begin
            $display("test 3 failed");
            $finish;
        end
        else $display("q=%b",q);

        $display("all tests passed");
        $finish;

    end

endmodule