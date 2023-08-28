module Priority_en8to3_tb;
reg [7:0] in;
reg valid;
wire [2:0] out;
Priority_en8to3 PE(in,valid,out);
initial
begin
     valid=1; in=8'b10000000;
#10; valid=1; in=8'b01000000;
#10; valid=1; in=8'b00110000;
#10; valid=1; in=8'b00010000;
#10; valid=1; in=8'b00001000;
#10; valid=1; in=8'b01000100;
#10; valid=1; in=8'b00000010;
#10; valid=1; in=8'b00001001;
#10; valid=0; in=8'bx;
#10;
$finish;
end
endmodule 