module logic_ops_always(
    input a, b,
    output reg and_, or_, xor_, xnor_, nand_, nor_
);

always @(*) begin
    and_  = a & b;
    or_   = a | b;
    xor_  = a ^ b;
    xnor_ = ~(a ^ b);
    nand_ = ~(a & b);
    nor_  = ~(a | b);
end

endmodule
