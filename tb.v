module tb;

reg [3:0] A, B;
wire GT, LT, EQ;

comp4bit dut(A, B, GT, LT, EQ);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);

    A = 4'b0001; B = 4'b0010; #10;
    A = 4'b0101; B = 4'b0011; #10;
    A = 4'b1001; B = 4'b1001; #10;

    #10 $finish;
end

endmodule
