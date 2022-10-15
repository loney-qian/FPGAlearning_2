module mult#(parameter width1 =7,width2 = 7,width_out=15)
(clk,rst_n,a,b,out);
input clk;
input rst_n;
input [width1:0]a;//乘数
input [width2:0]b;//被乘数
output reg [width_out:0]out;//输出结果
integer i;
reg [width_out:0]b_temp;
always@(posedge clk or negedge rst_n)begin
if(!rst_n)begin
out <=0;
end
else begin
for(i=0;i<width1;i=i+1)begin
if(a[i])begin
b_temp=b;
b_temp=b_temp<<i;
out=out+b_temp;
end
  end
     end
        end     
endmodule
