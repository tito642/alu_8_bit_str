module alu_tb;

   reg [7:0] A, B;
   reg [3:0] s;
   reg clk, reset;
   wire [7:0] alu_out;

   // Instantiate the alu module
   alu dut (
      .A(A),
      .B(B),
      .s(s),
      .clk(clk),
      //.reset(reset), // Uncomment this line if reset is used in the alu module
      .alu_out(alu_out)
   );

   // Clock generation
   initial begin
      clk = 0;
      forever #1 clk = ~clk;
   end

// Test Case 1
initial begin
   A = 8'b01111011;
   B = 8'b01011011;
   s = 4'b0000; //addition
   // reset = 0; // Uncomment this line if reset is used in the alu module
   #10; // Wait for a few clock cycles
   $display("Test Case 1: A=%b, B=%b, s=%b, alu_out=%b", A, B, s, alu_out);
   // Add assertions to check the correctness of alu_out for Test Case 1

end


   // Add $finish at the end to end simulation
   initial #100 $finish;

endmodule
