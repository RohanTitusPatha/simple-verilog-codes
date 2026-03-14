module logic_ops_assign(
    input a, b,
    output and_, or_, xor_, xnor_, nand_, nor_
);

assign and_  = a & b;
assign or_   = a | b;
assign xor_  = a ^ b;
assign xnor_ = ~(a ^ b);
assign nand_ = ~(a & b);
assign nor_  = ~(a | b);

endmodule
