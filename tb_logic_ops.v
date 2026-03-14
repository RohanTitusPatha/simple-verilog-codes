`timescale 1ns/1ps

module tb_logic_ops;

reg a;
reg b;

wire and_;
wire or_;
wire xor_;
wire xnor_;
wire nand_;
wire nor_;

logic_ops_assign dut (
    .a(a),
    .b(b),
    .and_(and_),
    .or_(or_),
    .xor_(xor_),
    .xnor_(xnor_),
    .nand_(nand_),
    .nor_(nor_)
);

initial begin
    $dumpfile("logic_ops_assign.vcd");
    $dumpvars(0, tb_logic_ops);
end

initial begin
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    #10 $finish;
end

endmodule
