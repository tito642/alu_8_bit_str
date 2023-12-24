module logic_unit_tb;

  // Inputs
  reg [7:0] A, B;
  reg [1:0] s;

  // Outputs
  wire [7:0] logic_out;

  // Instantiate the logic_unit module
  logic_unit uut (
    .A(A),
    .B(B),
    .s(s),
    .logic_out(logic_out)
  );

  // Stimulus generation
  initial begin
    // Test case 1: s = 00, expect Fand as the output
    A = 8'b10101010;
    B = 8'b01010101;
    s = 2'b00;
    #10; // Allow some time for the signals to propagate
    if (logic_out !== (A & B))
      $display("Test case 1 failed");

    // Test case 2: s = 10, expect Fnor as the output
    A = 8'b10101010;
    B = 8'b01010101;
    s = 2'b10;
    #10;
    if (logic_out !== (A | B))
      $display("Test case 2 failed");

    // Test case 3: s = 01, expect For as the output
    A = 8'b10101010;
    B = 8'b01010101;
    s = 2'b01;
    #10;
    if (logic_out !== (A ^ B))
      $display("Test case 3 failed");

    // Test case 4: s = 11, expect Fnot as the output
    A = 8'b10101010;
    B = 8'b01010101;
    s = 2'b11;
    #10;
    if (logic_out !== ~B)
      $display("Test case 4 failed");

    // Add more test cases if needed

    // End simulation
    $finish;
  end

endmodule
