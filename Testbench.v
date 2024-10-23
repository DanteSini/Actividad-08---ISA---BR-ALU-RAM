module testbench();
    reg [31:0] a, b;           // Variables para la ALU
    reg [2:0] alu_op;          // Operación de la ALU
    wire [31:0] result;        // Resultado de la ALU

    // Instancia de la ALU
    ALU uut (
        .a(a),
        .b(b),
        .alu_op(alu_op),
        .result(result)
    );

    initial begin
        // Prueba de Suma
        a = 32'd10; b = 32'd5; alu_op = 3'b000;  // SUMA: 10 + 5 = 15
        #10; // Espera 10 unidades de tiempo
        $display("SUMA: %d + %d = %d", a, b, result);

        // Prueba de Resta
        a = 32'd15; b = 32'd5; alu_op = 3'b001;  // RESTA: 15 - 5 = 10
        #10;
        $display("RESTA: %d - %d = %d", a, b, result);

        // Prueba de AND
        a = 32'b1010; b = 32'b1100; alu_op = 3'b010;  // AND: 1010 & 1100 = 1000
        #10;
        $display("AND: %b & %b = %b", a, b, result);

        // Prueba de OR
        a = 32'b1010; b = 32'b1100; alu_op = 3'b011;  // OR: 1010 | 1100 = 1110
        #10;
        $display("OR: %b | %b = %b", a, b, result);

        // Prueba de MENORQ
        a = 32'd5; b = 32'd10; alu_op = 3'b101;  // MENORQ: 5 < 10 = 1
        #10;
        $display("MENORQ: %d < %d = %d", a, b, result);

        // Finaliza la simulación
        $finish;
    end
endmodule

