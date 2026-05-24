module alu_8bit(
    input  [7:0] A,
    input  [7:0] B,
    input  [2:0] sel,
    output reg [7:0] result,
    output reg carry_out
);
    reg [8:0] temp;
    always @(*) begin
        carry_out = 0;
        temp      = 0;
        case(sel)
            3'b000: begin temp = A+B; result = temp[7:0]; carry_out = temp[8]; end
            3'b001: result = A - B;
            3'b010: result = A & B;
            3'b011: result = A | B;
            3'b100: result = A ^ B;
            3'b101: result = ~A;
            3'b110: result = A << 1;
            3'b111: result = A >> 1;
            default: result = 8'b0;
        endcase
    end
endmodule
