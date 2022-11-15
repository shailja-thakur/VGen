// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or posedge load)
        out = (data << amount) rshift in;
end
"""


def test_word():
    t = TestWord()
    assert t.bfigure() == ".ddXwdwdXwdwdXw"


def test_int():
    t = TestInt()
    assert t.bfigure() == ".dXXDdXDdXwd"


def test_left_rotation():
    t = TestLeftRotate()
    assert t.bfigure() == ".dXdXdXdXdXdXdXdXdXdXdXdXdXdXdXdXdXd"


def test_load_data_in():
    t = TestLoadDataIn()
    assert t.bfigure() == ("""
               .ddXwdendmodule
