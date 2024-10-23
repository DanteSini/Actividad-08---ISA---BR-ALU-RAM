module ISA(
    input [4:0] op1, 
    input [4:0] op2, 
    input [2:0] alu_op, 
    input we_br, 
    output [31:0] result
);
    wire [31:0] mem_a_data, mem_b_data;
    wire [31:0] alu_result;

    // Instanciar MemA y MemB
    MemA mem_a(op1, we_br, mem_a_data, mem_a_data);
    MemB mem_b(op2, we_br, mem_b_data, mem_b_data);

    // Instanciar la ALU
    ALU alu(mem_a_data, mem_b_data, alu_op, alu_result);

    assign result = alu_result;
endmodule

