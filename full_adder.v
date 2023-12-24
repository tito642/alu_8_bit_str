module full_adder(
    input [7:0] A,
    input [7:0] B,
    input wire cin,
    output wire[7:0] sum
   
);

wire cout;
wire [7:0] sum_add;
wire cout_add1;
wire cout_add2;
wire cout_add3;
wire cout_add4;
wire cout_add5;
wire cout_add6;
wire cout_add7;
wire cout_add;
wire [7:0] sum_sub;
wire cout_sub1;
wire cout_sub2;
wire cout_sub3;
wire cout_sub4;
wire cout_sub5;
wire cout_sub6;
wire cout_sub7;
wire cout_sub;
sumadd g1(A[0],B[0],cin,sum_add[0],cout_add1);
sumadd g2(A[1],B[1],cout_add1,sum_add[1],cout_add2);
sumadd g3(A[2],B[2],cout_add2,sum_add[2],cout_add3);
sumadd g4(A[3],B[3],cout_add3,sum_add[3],cout_add4);
sumadd g5(A[4],B[4],cout_add4,sum_add[4],cout_add5);
sumadd g6(A[5],B[5],cout_add5,sum_add[5],cout_add6);
sumadd g7(A[6],B[6],cout_add6,sum_add[6],cout_add7);
sumadd g8(A[7],B[7],cout_add7,sum_add[7],cout_add);

sumsub g21(A[0],B[0],cin,sum_sub[0],cout_sub1);
sumsub g22(A[1],B[1],cout_sub1,sum_sub[1],cout_sub2);
sumsub g23(A[2],B[2],cout_sub2,sum_sub[2],cout_sub3);
sumsub g24(A[3],B[3],cout_sub3,sum_sub[3],cout_sub4);
sumsub g25(A[4],B[4],cout_sub4,sum_sub[4],cout_sub5);
sumsub g26(A[5],B[5],cout_sub5,sum_sub[5],cout_sub6);
sumsub g27(A[6],B[6],cout_sub6,sum_sub[6],cout_sub7);
sumsub g28(A[7],B[7],cout_sub7,sum_sub[7],cout_sub);

mux2x1 g31(sum_add[0],sum_sub[0],cin,sum[0]);
mux2x1 g32(sum_add[1],sum_sub[1],cin,sum[1]);
mux2x1 g33(sum_add[2],sum_sub[2],cin,sum[2]);
mux2x1 g34(sum_add[3],sum_sub[3],cin,sum[3]);
mux2x1 g35(sum_add[4],sum_sub[4],cin,sum[4]);
mux2x1 g36(sum_add[5],sum_sub[5],cin,sum[5]);
mux2x1 g37(sum_add[6],sum_sub[6],cin,sum[6]);
mux2x1 g38(sum_add[7],sum_sub[7],cin,sum[7]);
mux2x1 g39(cout_add,cout_sub,cin,cout);



endmodule

module sumadd (
input A,B,C,
output s,co);

	wire x;
	wire y;
	wire z;
	xorgate3 g1(A,B,C,s);
	andgate g2(C,A,x);
	andgate g3(C,B,y);
	andgate g4(A,B,z);
	orgate3 g5(x,y,z,co);
endmodule


module sumsub (
   input A, B, C,
   output s, co
);

   wire x;
   wire y;
   wire w;
	wire t;
	wire z;
   xor g10(s,A,B,C); // SUM_SUB
	xorgate g2 (A,B,x); // A^B
	notgate g3(x,y); //~A^B
	andgate g4(y,C,w); // C& ~A^B
	notgate g5(A,t); // ~A
	andgate g7(t,B,z); // ~A&B
	orgate g8(w,z,co);
	
endmodule

	 




