module comp4bit(
    input [3:0] A, [3:0] B,
    output GT, LT, EQ
);

wire gt[3:0], lt[3:0], eq[3:0];

comp1bit c0(A[0], B[0], gt[0], lt[0], eq[0]);
comp1bit c1(A[1], B[1], gt[1], lt[1], eq[1]);
comp1bit c2(A[2], B[2], gt[2], lt[2], eq[2]);
comp1bit c3(A[3], B[3], gt[3], lt[3], eq[3]);

assign GT = gt[3] | (eq[3] & gt[2]) | (eq[3] & eq[2] & gt[1]) |
            (eq[3] & eq[2] & eq[1] & gt[0]);

assign LT = lt[3] | (eq[3] & lt[2]) | (eq[3] & eq[2] & lt[1]) |
            (eq[3] & eq[2] & eq[1] & lt[0]);

assign EQ = eq[3] & eq[2] & eq[1] & eq[0];

endmodule
