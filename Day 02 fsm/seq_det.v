module seq_det(clk,rst,in,out);
input clk,rst,in;
output  out;
parameter s0=3'b000;
parameter s1=3'b001;
parameter s2=3'b010;
parameter s3=3'b011;
parameter s4=3'b100;
reg [2:0] ps,ns;

always @(posedge clk or posedge rst)
 begin
 if(rst)
 ps<=s0;
else
 ps<=ns;
 end

always @(ps or in)
begin
 case(ps)

 s0:begin
    if(in) ns=s1;
    else ns=s0;
    end
 s1:begin 
    if(in) ns=s2;
    else ns=s0;
    end
 s2:begin
    if(in) ns=s2;
    else ns=s3;
    end
 s3:begin
    if(in) ns=s4;
    else ns=s0;
    end
 s4:begin 
    if(in) ns=s3;
    else ns=s0;
    end
 default: ns=s0;
endcase
end

assign out=(ps==s4);
endmodule
