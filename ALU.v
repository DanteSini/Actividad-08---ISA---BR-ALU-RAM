module ALU(
    input [31:0] a, 
    input [31:0] b, 
    input [2:0] alu_op, 
    output reg [31:0] result
);
    always @(*) begin
        case (alu_op)
            3'b000: result = a + b;        // SUMA
            3'b001: result = a - b;        // RESTA
            3'b010: result = a & b;        // AND
            3'b011: result = a | b;        // OR
            3'b100: result = ~(a | b);     // NOR
            3'b101: result = (a < b) ? 32'd1 : 32'd0; // Set on Less Than
            default: result = 32'd0;
        endcase
    end
endmodule

