module onehot_checker(
    input  [7:0] x,
    output onehot
);

assign onehot = (x != 8'b0) && ((x & (x - 1)) == 8'b0);

endmodule
