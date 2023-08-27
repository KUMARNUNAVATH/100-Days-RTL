/*module seq_det_tb;

reg clk,rst,in;
wire out;

seq_det DUT (clk,rst,in,out);

initial 
begin
clk=1'b0;
 forever #10 clk=~clk; 
end

task rst_cmd;
begin
@(negedge clk)
rst=1'b0;
@(negedge clk)
rst=1'b1;
end
endtask

task seq_in (input i);
begin
@(negedge clk)
in=i;
end
endtask

initial 
begin
rst_cmd;
seq_in(0);
seq_in(1);
seq_in(1);
seq_in(0);
seq_in(1);
seq_in(1);
seq_in(0);
seq_in(1);
seq_in(1);
seq_in(0);
seq_in(0);
seq_in(1);
$display ("rst=%b,in=%b,out=%b",rst,in,out);
$finish;
end
endmodule 
*/
module seq_det_tb;

reg clk,rst,in;
wire out;

seq_det DUT (clk,rst,in,out);

initial
begin
clk=1'b0;
 forever #5 clk=~clk;
end

task rst_cmd;
begin
@(negedge clk)
  rst=1'b1;
@(negedge clk)
  rst=1'b0;
end
endtask

task  seq_in(input d_in);
begin
@(negedge clk)
  in=d_in;
end
endtask

initial
begin
rst_cmd;
seq_in(0);
seq_in(1);
seq_in(1);
seq_in(0);
seq_in(1);
seq_in(1);
seq_in(0);
seq_in(1);
seq_in(1);
seq_in(1);
seq_in(0);
seq_in(0);
#1000;
 $finish;
end

endmodule

