module Comparator_tb;
reg [2:0] a,b;
wire eq,ls,gt;

Comparator DUT (a,b,eq,ls,gt);

initial
begin

a=3'b001;b=3'b100;
#5; a=3'b101;b=3'b011;
#10; a=3'b101;b=3'b101;
#15; a=3'b111;b=3'b001;
#20; a=3'b001;b=3'b110;
#25; a=3'b011;b=3'b001; 
 $monitor ("a=%b,b=%b,eq=%b,ls=%b;gt=%b",a,b,eq,ls,gt);

$finish;
end

endmodule
