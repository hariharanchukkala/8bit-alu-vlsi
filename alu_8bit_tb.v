module alu_8bit_tb;
    reg [7:0] A, B;
    reg [2:0] sel;
    wire [7:0] result;
    wire carry_out;

    alu_8bit uut (
        .A(A), .B(B), .sel(sel),
        .result(result), .carry_out(carry_out)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, alu_8bit_tb);

        A = 8'd255; B = 8'd1;  sel = 3'b000; #10; // ADD
        A = 8'd10;  B = 8'd3;  sel = 3'b001; #10; // SUB
        A = 8'd12;  B = 8'd10; sel = 3'b010; #10; // AND
        A = 8'd12;  B = 8'd10; sel = 3'b011; #10; // OR
        A = 8'd12;  B = 8'd10; sel = 3'b100; #10; // XOR
        A = 8'd5;   B = 8'd0;  sel = 3'b101; #10; // NOT
        A = 8'd5;   B = 8'd0;  sel = 3'b110; #10; // Left Shift
        A = 8'd5;   B = 8'd0;  sel = 3'b111; #10; // Right Shift
        $finish;
    end

    initial begin
        $monitor("A=%d B=%d sel=%b | result=%d carry=%b",
                  A, B, sel, result, carry_out);
    end
endmodule
