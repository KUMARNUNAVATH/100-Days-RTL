
/*module PIPO1(I,sel,clk,QB);
input  [31:0]I;
input sel,clk;
output reg [31:0]QB;

wire [31:0]y;
assign y= (sel)?I:32'b0; 
always @(posedge clk) 
QB<=y;
endmodule 
*/
module PIPO2(clk,QA,D);
input clk;
input [32:0] D;
output reg[32:0]QA;
always@(posedge clk)
QA<=D;

endmodule
