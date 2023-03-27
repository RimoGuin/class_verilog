//After K-map implementation,
//B2 = A1. A0 + A2. A0 + A2. A1
//B1 = A2. -A1. -A0 + -A2. -A1. A0 + A2. A1. A0 + -A2. A1. -A0
//B0 = -A0

module miniFunc(
	input[2:0] A, 
	output[2:0] B);

	assign B[0] = ~A[0];
	assign B[1] = (A[2] & ~A[1] & ~A[0]) | (~A[2] & ~A[1] & A[0]) |
					(A[2] & A[1] & A[0]) | (~A[2] & A[1] & ~A[0]);
	assign B[2] = (A[1] & A[0]) | (A[2] & A[0]) | (A[2] & A[1]); 
endmodule
