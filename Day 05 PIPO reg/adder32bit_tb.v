/*module adder32bit_tb;
reg [31:0]I;
reg sel,clk;

wire [31:0]QB;

PIPO1 DUT(I,sel,clk,QB);

initial
begin
clk=1'b0;
forever #5 clk=~clk;
end

initial
begin
$monitor("time:%0t,sel=%b,I=%d,QB=%d",$time,sel,I,QB);
sel=1;I=32'b1111;
#10;
sel=1;I=32'b001;
#10;
sel=1;I=32'b110;
#10;
sel=0;I=32'b101;
#10;
sel=1;I=32'b1010;
#10;
sel=1;I=32'b0010;
#10;
sel=0; I=32'b10111;
#10;
end
initial
begin

#1000;
$finish;
end
endmodule */

module adder32bit_tb;
reg [32:0]I;
reg clk;

wire [32:0]QA;

PIPO2 DUT(clk,QA,I);

initial
begin
clk=1'b0;
forever #5 clk=~clk;
end

initial
begin
$monitor("time:%0t,I=%d,QA=%d",$time,I,QA);
I=33'b1111;
#10;
I=33'b001;
#10;
I=33'b110;
#10;
I=33'b101;
#10;
I=33'b1010;
#10;
I=33'b0010;
#10;
I=33'b10111;
#10;
end
initial
begin

#1000;
$finish;
end
endmodule 
