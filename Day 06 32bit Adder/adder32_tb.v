module adder33_tb;

reg [31:0] A;
reg [31:0] B;
wire [31:0] sum;
wire carry_out;

adder33 dut (
    .A(A),
    .B(B),
    .sum(sum),
    .carry_out(carry_out)
);

initial begin
    // Test case 1: A = 10, B = 20
    A = 32'd8589931;
    B = 32'b0000000000000000000000000001010;
    #10;
    $display("Test case 1: A = %d, B = %d, sum = %d, carry_out = %b", A, B, sum, carry_out);

    // Test case 2: A = 100, B = 50
    A = 32'b000000000000000000000000000011001;
    B = 32'b000000000000000000000000000001100;
    #10;
    $display("Test case 2: A = %b, B = %b, sum = %b, carry_out = %b", A, B, sum, carry_out);

    // Test case 3: A = 255, B = 1
    A = 32'b000000000000000000000000111111111;
    B = 32'b000000000000000000000000000000001;
    #10;
    $display("Test case 3: A = %b, B = %b, sum = %b, carry_out = %b", A, B, sum, carry_out);

    // Add more test cases as needed

    $finish;
end

endmodule
