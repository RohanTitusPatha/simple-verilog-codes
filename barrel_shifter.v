module barrel_shifter (
    input  [7:0] x,
    input  [2:0] shift_amt,
    input  dir,
    output reg [7:0] y
);

always @(*) begin
    case (shift_amt)

        3'b000: y = x;

        3'b001: begin
            if (dir == 0) y = x << 1;
            else          y = x >> 1;
        end

        3'b010: begin
            if (dir == 0) y = x << 2;
            else          y = x >> 2;
        end

        3'b011: begin
            if (dir == 0) y = x << 3;
            else          y = x >> 3;
        end

        3'b100: begin
            if (dir == 0) y = x << 4;
            else          y = x >> 4;
        end

        3'b101: begin
            if (dir == 0) y = x << 5;
            else          y = x >> 5;
        end

        3'b110: begin
            if (dir == 0) y = x << 6;
            else          y = x >> 6;
        end

        3'b111: begin
            if (dir == 0) y = x << 7;
            else          y = x >> 7;
        end

        default: y = 8'b00000000;

    endcase
end

endmodule
