// This is a permutation block module.
module P_box ( input wire [31:0] In32, output reg [31:0] Out32 );
localparam len_table = 32;
reg [5:0] In32table [len_table-1:0];
initial begin
In32table[0] = 15;
In32table[1] = 6;
In32table[2] = 20;
In32table[3] = 10;
In32table[4] = 11;
In32table[5] = 22;
In32table[6] = 5;
In32table[7] = 9;
In32table[8] = 1;
In32table[9] = 7;
In32table[10] = 8;
In32table[11] = 4;
In32table[12] = 12;
In32table[13] = 13;
In32table[14] = 14;
In32table[15] = 17;
In32table[16] = 16;
In32table[17] = 25;
In32table[18] = 19;
In32table[19] = 23;
In32table[20] = 18;
In32table[21] = 26;
In32table[22] = 28;
In32table[23] = 27;
In32table[24] = 29;
In32table[25] = 31;
In32table[26] = 30;
In32table[27] = 0;
In32table[28] = 2;
In32table[29] = 3;
In32table[30] = 21;       
In32table[31] = 24;
end
integer i;
