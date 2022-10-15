`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/11 20:43:11
// Design Name: 
// Module Name: mult_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mult_tb;
parameter width1 =11,width2 = 15,width_out=27;
reg clk;
reg rst_n;
reg [width1:0]a;
reg [width2:0]b;
wire [width_out:0]out;
mult #(.width1(11),.width2(15),.width_out(27))
test(.clk(clk),.rst_n(rst_n),.a(a),.b(b),.out(out));
initial clk=1;
always #50 clk = ~clk;
initial begin
rst_n=0;
#50
rst_n=1;

a=8'b0110_1100; b=8'b0010_0101;

#100 $stop;
end

endmodule
