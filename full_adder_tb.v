`timescale 1ns/1ps

module full_adder_tb;

  reg [7:0] A;
  reg [7:0] B;
  reg cin;
  wire [7:0] sum;
  wire cout;

  // Instantiate the full_adder module
  full_adder dut(
    .A(A),
    .B(B),
    .cin(cin),
    .sum(sum),
    .cout(cout)
  );

  // Initialize inputs
  initial begin
    $display("Testing Full Adder");

    A = 8'b10101010;
    B = 8'b11001100;
    cin = 0;

    // Apply inputs and display results
    #10 A = 8'b01111011; B = 8'b10100101; cin = 1;
    #10 $display("Input: A=%b, B=%b, cin=%b, Output: sum=%b, cout=%b", A, B, cin, sum, cout);

    #10 A = 8'b11111111; B = 8'b00000001; cin = 0;
    #10 $display("Input: A=%b, B=%b, cin=%b, Output: sum=%b, cout=%b", A, B, cin, sum, cout);

	 #10 A = 8'b01010101; B = 8'b01010110; cin = 0;
    #10 $display("Input: A=%b, B=%b, cin=%b, Output: sum=%b, cout=%b", A, B, cin, sum, cout);
	 
    #10 A = 8'b01010101; B = 8'b10101010; cin = 1;
    #10 $display("Input: A=%b, B=%b, cin=%b, Output: sum=%b, cout=%b", A, B, cin, sum, cout);

    #10 $stop;
  end

endmodule
