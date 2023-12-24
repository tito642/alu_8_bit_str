module shift_reg(
input wire [7:0] A,
input wire s3,s2,
output wire [7:0] reg_out
);
 wire [7:0] Sl;
 wire [7:0] Sr;
 wire [7:0] Rl;
 wire [7:0] Rr;
ShiftL g1 (A,Sl);
ShiftR g2 (A,Sr);
RotateL g3 (A,Rl);
RotateR g4 (A,Rr);
mux4x2 g51(Rr[0], Sr[0], Rl[0], Sl[0], s3, s2, reg_out[0]);
mux4x2 g52(Rr[1], Sr[1], Rl[1], Sl[1], s3, s2, reg_out[1]);
mux4x2 g53(Rr[2], Sr[2], Rl[2], Sl[2],s3, s2, reg_out[2]);
mux4x2 g54(Rr[3], Sr[3], Rl[3], Sl[3], s3, s2, reg_out[3]);
mux4x2 g55(Rr[4], Sr[4], Rl[4], Sl[4], s3, s2, reg_out[4]);
mux4x2 g56(Rr[5], Sr[5], Rl[5], Sl[5], s3, s2, reg_out[5]);
mux4x2 g57(Rr[6], Sr[6], Rl[6], Sl[6], s3, s2, reg_out[6]);
mux4x2 g58(Rr[7], Sr[7], Rl[7], Sl[7], s3, s2, reg_out[7]);
endmodule


module ShiftL(a,f);
input wire [7:0] a;
output wire [7:0] f;
assign f[7] = a[6];
assign f[6] = a[5];
assign f[5] = a[4];
assign f[4] = a[3];
assign f[3] = a[2];
assign f[2] = a[1];
assign f[1] = a[0];
assign f[0] = 0;
endmodule

module ShiftR(a,f);
input wire [7:0] a;
output wire [7:0] f;
assign f[7] = 0;
assign f[6] = a[7];
assign f[5] = a[6];
assign f[4] = a[5];
assign f[3] = a[4];
assign f[2] = a[3];
assign f[1] = a[2];
assign f[0] = a[1];
endmodule

module RotateL(a,f);
input wire [7:0] a;
output wire [7:0] f;
assign f[7] = a[6];
assign f[6] = a[5];
assign f[5] = a[4];
assign f[4] = a[3];
assign f[3] = a[2];
assign f[2] = a[1];
assign f[1] = a[0];
assign f[0] = a[7];
endmodule

module RotateR(a,f);
input wire [7:0] a;
output wire [7:0] f;
assign f[7] = a[0];
assign f[6] = a[7];
assign f[5] = a[6];
assign f[4] = a[5];
assign f[3] = a[4];
assign f[2] = a[3];
assign f[1] = a[2];
assign f[0] = a[1];
endmodule