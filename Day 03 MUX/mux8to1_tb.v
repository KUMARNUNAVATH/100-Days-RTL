module mux8to1_tb;
reg [7:0]I;
reg [2:0]sel;

wire y;

mux8to1 DUT(I,sel,y);

initial
begin
sel=3'b000; I=8'b1;
#5;sel=3'b001; I=8'b01;
#10;sel=3'b010; I=8'b011;
#15;sel=3'b011; I=8'b1011;
#20;sel=3'b100; I=8'b01110011;
#25;sel=3'b101; I=8'b10111010;
#30;sel=3'b110; I=8'b01101010;
#35;sel=3'b111; I=8'b01010101;
#100 $finish;
end
endmodule
