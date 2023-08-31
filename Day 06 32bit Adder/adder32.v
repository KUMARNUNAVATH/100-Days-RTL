module adder33(
    input [31:0] A,
    input [31:0] B,
    output [31:0] sum,
    output carry_out
);

wire [32:0] carry;
wire [31:0] sum_temp;
assign carry[0]=1'b0;
// Full adder instantiation
genvar i;
generate
    for (i = 0; i < 32; i = i + 1) 
begin : full_adder_inst
        full_adder FA(
            .A(A[i]),
            .B(B[i]),
            .carry_in(carry[i]),
            .sum(sum_temp[i]),
            .carry_out(carry[i+1])
        );
    end
endgenerate

assign sum = sum_temp;
assign carry_out = carry[32];

endmodule

module full_adder(
    input A,
    input B,
    input carry_in,
    output sum,
    output carry_out
);

assign sum = A ^ B ^ carry_in;
assign carry_out = (A & B) | (carry_in & (A ^ B));

endmodule
