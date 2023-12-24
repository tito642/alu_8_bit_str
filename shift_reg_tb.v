`timescale 1ns/1ps

module shift_reg_tb;
  reg [7:0] A;
  reg [1:0] s;
  wire [7:0] reg_out;

  shift_reg dut(
    .A(A),
    .s(s),
    .reg_out(reg_out)
  );

  initial begin
    // Test Case 1: rotate right
    A = 8'b10101110;
    s = 2'b00;
    #10;
    $display("Test Case 1: rotate right ");
    $display("A = %b, s = %b, reg_out = %b", A, s, reg_out);

    // Test Case 2: Shift Right
    A = 8'b10101110;
    s = 2'b01;
    #10;
    $display("Test Case 2: Shift Right");
    $display("A = %b, s = %b, reg_out = %b", A, s, reg_out);

    // Test Case 3: Rotate Left
    A = 8'b10101110;
    s = 2'b10;
    #10;
    $display("Test Case 3: Rotate Left");
    $display("A = %b, s = %b, reg_out = %b", A, s, reg_out);

    // Test Case 4: shift left
    A = 8'b10101110;
    s = 2'b11;
    #10;
    $display("Test Case 4: shift left");
    $display("A = %b, s = %b, reg_out = %b", A, s, reg_out);

    // Add more test cases if needed

    $stop;
  end
endmodule
