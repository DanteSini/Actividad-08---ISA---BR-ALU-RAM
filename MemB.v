module MemB(
    input [4:0] address, 
    input write_enable, 
    input [31:0] data_in, 
    output reg [31:0] data_out
);
    reg [31:0] memory [0:31];  // 32 registros de 32 bits

    always @(*) begin
        if (write_enable) begin
            memory[address] = data_in;
        end
        data_out = memory[address];
    end
endmodule

