module alu(
    input wire [7:0] A,
    input wire [7:0] B,
    input wire [3:0] s,
    input wire clk,
    //input wire reset,
    output reg [7:0] alu_out
);

    wire [7:0] fullout;
    wire [7:0] logicout;
    wire [7:0] shiftout;
    wire [7:0] finalout;
	 
	full_adder g1(A, B,s[3],fullout);
	logic_unit g2(A, B,s[3],s[2],logicout);
	shift_reg g3(A,s[3],s[2],shiftout);
	
	control_unit g43 (fullout[0],logicout[0],shiftout[0],s[1],s[0],finalout[0]);
	control_unit g45 (fullout[1],logicout[1],shiftout[1],s[1],s[0],finalout[1]);
	control_unit g44 (fullout[2],logicout[2],shiftout[2],s[1],s[0],finalout[2]);
	control_unit g46 (fullout[3],logicout[3],shiftout[3],s[1],s[0],finalout[3]);
	control_unit g42 (fullout[4],logicout[4],shiftout[4],s[1],s[0],finalout[4]);
	control_unit g47 (fullout[5],logicout[5],shiftout[5],s[1],s[0],finalout[5]);
	control_unit g48 (fullout[6],logicout[6],shiftout[6],s[1],s[0],finalout[6]);
	control_unit g49 (fullout[7],logicout[7],shiftout[7],s[1],s[0],finalout[7]);
    always @(posedge clk) begin
        
            alu_out <= finalout;
        
    end

	 

endmodule


module control_unit (
input A,
input B,
input C,
input s1,s0,
output  res);

wire x;
mux2x1 g1(B,C,s1,x);
mux2x1 g2(A,x,s0,res);

endmodule


module xorgate(a,b,f);
input  a,b;
output  f;
xor g1(f,a,b);
endmodule
module xorgate3(a,b,c,f);
input  a,b,c;
output  f;
xor g1(f,a,b,c);
endmodule


module orgate(a,b,f);
input  a, b ;
output  f ;
or g1(f,a,b) ;
endmodule

module orgate3(a,b,c,f);
input  a, b, c ;
output  f ;
or g1(f,a,b,c) ;
endmodule


module andgate(a,b,f);
input  a, b;
output  f;
and g1(f,a,b);
endmodule
module andgatem8 (a,b,c,f);
input a,b,c;
output f;
and g1(f,a,b,c);
endmodule

module andgatem4 (a,b,f);
input [7:0] a;
input b;
output [7:0] f;
assign f= a&b;
endmodule

module orgate_cout(a,b,c,f);
input a, b, c;
output f;
assign f = a | b | c;
endmodule 


module notgate(a, f);

input  a;

output  f;

not (f,a);

endmodule
//module notgate(a, f);
//
//input [7:0] a;
//
//output [7:0] f;
//
//assign f[0] = ~ a[0];
//assign f[1] = ~ a[1];
//assign f[2] = ~ a[2];
//assign f[3] = ~ a[3];
//assign f[4] = ~ a[4];
//assign f[5] = ~ a[5];
//assign f[6] = ~ a[6];
//assign f[7] = ~ a[7];
//
//endmodule

module mux2x1(a, b, s, f);
  input  a, b;
  input s;
  output  f;
  wire  x1;
  wire  x2;
  andgate g1(a, ~s, x1);
  andgate g2(b, s, x2);
  orgate g3(x1, x2, f);
endmodule

//module mux4x2(a, b, c, d, s3, s2, f);
//  input  [7:0] a, b, c, d;
//  input s3, s2;
//  output  [7:0] f;
//  wire [7:0] x1, x2, x3, x4, x5, x6;
//  andgatem8 g1(a, ~s3, ~s2, x1);
//  andgatem8 g2(b, ~s3, s2, x2);
//  andgatem8 g3(c, s3, ~s2, x3);
//  andgatem8 g4(d, s3, s2, x4);
//  orgate g5(x1, x2, x5);
//  orgate g6(x3, x4, x6);
//  orgate g7(x6, x5, f);
//endmodule
module mux4x2(a, b, c, d, s3, s2, f);
  input  a, b, c, d;
  input s3, s2;
  output  f;
  wire  x1, x2, x3, x4, x5, x6;
  andgatem8 g1(a, ~s3, ~s2, x1);
  andgatem8 g2(b, ~s3, s2, x2);
  andgatem8 g3(c, s3, ~s2, x3);
  andgatem8 g4(d, s3, s2, x4);
  orgate g5(x1, x2, x5);
  orgate g6(x3, x4, x6);
  orgate g7(x6, x5, f);
endmodule

