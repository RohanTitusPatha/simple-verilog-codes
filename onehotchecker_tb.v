`timescale 1ns/1ps

module onehotchecker_tb;

reg [7:0] x;
wire onehot;

onehot_checker dut(x, onehot);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);

    x = 8'b00000000; #10;
    x = 8'b00000001; #10;
    x = 8'b00000010; #10;
    x = 8'b00000110; #10;
    x = 8'b00001000; #10;

    $finish;
end

endmodule
