module logic_unit(
  input wire[7:0] A,
  input wire [7:0] B,
  input wire  s3,s2,
  output wire [7:0] logic_out
);

  wire [7:0] Fand;
  wire [7:0] For;
  wire [7:0] Fxor;
  wire [7:0] Fnot;

andgate g1(A[0], B[0], Fand[0]);
andgate g2(A[1], B[1], Fand[1]);
andgate g3(A[2], B[2], Fand[2]);
andgate g4(A[3], B[3], Fand[3]);
andgate g5(A[4], B[4], Fand[4]);
andgate g6(A[5], B[5], Fand[5]);
andgate g7(A[6], B[6], Fand[6]);
andgate g8(A[7], B[7], Fand[7]);



orgate g21(A[0], B[0], For[0]);
orgate g22(A[1], B[1], For[1]);
orgate g23(A[2], B[2], For[2]);
orgate g24(A[3], B[3], For[3]);
orgate g25(A[4], B[4], For[4]);
orgate g26(A[5], B[5], For[5]);
orgate g27(A[6], B[6], For[6]);
orgate g28(A[7], B[7], For[7]);

xorgate g31(A[0], B[0], Fxor[0]);
xorgate g32(A[1], B[1], Fxor[1]);
xorgate g33(A[2], B[2], Fxor[2]);
xorgate g34(A[3], B[3], Fxor[3]);
xorgate g35(A[4], B[4], Fxor[4]);
xorgate g36(A[5], B[5], Fxor[5]);
xorgate g37(A[6], B[6], Fxor[6]);
xorgate g38(A[7], B[7], Fxor[7]);

notgate g41(B[0], Fnot[0]);
notgate g42(B[1], Fnot[1]);
notgate g43(B[2], Fnot[2]);
notgate g44(B[3], Fnot[3]);
notgate g45(B[4], Fnot[4]);
notgate g46(B[5], Fnot[5]);
notgate g47(B[6], Fnot[6]);
notgate g48(B[7], Fnot[7]);


mux4x2 g51(Fand[0], For[0], Fxor[0], Fnot[0], s3, s2, logic_out[0]);
mux4x2 g52(Fand[1], For[1], Fxor[1], Fnot[1], s3, s2, logic_out[1]);
mux4x2 g53(Fand[2], For[2], Fxor[2], Fnot[2], s3, s2, logic_out[2]);
mux4x2 g54(Fand[3], For[3], Fxor[3], Fnot[3], s3, s2, logic_out[3]);
mux4x2 g55(Fand[4], For[4], Fxor[4], Fnot[4], s3, s2, logic_out[4]);
mux4x2 g56(Fand[5], For[5], Fxor[5], Fnot[5], s3, s2, logic_out[5]);
mux4x2 g57(Fand[6], For[6], Fxor[6], Fnot[6], s3, s2, logic_out[6]);
mux4x2 g58(Fand[7], For[7], Fxor[7], Fnot[7], s3, s2, logic_out[7]);


endmodule
//module mux4x2(a, b, c, d, s3, s2, f);
//  input  a, b, c, d;
//  input s3, s2;
//  output  f;
//  wire  x1, x2, x3, x4, x5, x6;
//  andgatem8 g1(a, ~s3, ~s2, x1);
//  andgatem8 g2(b, ~s3, s2, x2);
//  andgatem8 g3(c, s3, ~s2, x3);
//  andgatem8 g4(d, s3, s2, x4);
//  orgate g5(x1, x2, x5);
//  orgate g6(x3, x4, x6);
//  orgate g7(x6, x5, f);
//endmodule