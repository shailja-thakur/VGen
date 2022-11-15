// This is a RAM module
module ram #(
    parameter ADDR_WIDTH=6,
    parameter DATA_WIDTH=8
) (
    input [DATA_WIDTH-1:0] data,
    input [ADDR_WIDTH-1:0] addr,
    input we, clk,
    output [7:0] q
);
reg [DATA_WIDTH-1:0] ram[2**ADDR_WIDTH-1:0];
// when we is high, write data to ram at address addr
// assign the ram value at address addr to q
always @(posedge clk) begin
    if (we) begin
        q <= ram[addr];
    end
end

    data
    ram      // ram access lib
    /***************************************/
    clk
    addr_write
    addr_addr
    addr_data

'''
        (data_line, addressing) = get_inputs('ram', content)

        data_values = [self.convert_val(data_line + ' '), ADC(macro=DATA_WIDTH)]
        addr_values = [self.convert_val('addr' + ' '), ADC(macro=ADDR_WIDTH)]

        result = alu(data_values[0], ' ', data_values[1], addressing, data_values[1])
        self.assertEqual(data_line + ' ' + self.endmodule
