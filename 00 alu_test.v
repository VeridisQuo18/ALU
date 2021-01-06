/* ================================================
 * Nombre del proyecto: Una ALU que opera con datos en 8-bit.
 * Archivo:             00 alu_test.v (0/7).
 *
 * Facultad:            ... de Ingeniería en Electrónica y Comunicaciones.
 * Universidad:         Universidad Veracruzana.
 *
 * Autores:             Paulo Abraham Barrientos Casanova (cnnick.ex@gmail.com),
 *                      Garrifo Fernández Alexis Alfonso (alexisfdx24@gmail.com),
 *                      Loyda de León Cristian Armando (loyda182@hotmail.com), y
 *                      Martagón García Julio César (juliomg458@gmail.com).
 *
 * Inspirado por el trabajo del Dr. Neiel I. Leyva Santes.
 * ================================================*/

module alu_test;

// Iniciar registros y salidas
reg [7:0] data0; 
reg [7:0] data1;
reg [2:0] ctrl;  
wire [7:0] result;

// Instancia de alu_top
alu_top alu(
    .ctrl_i (ctrl),
    .data0_i (data0),
    .data1_i (data1),
    .result_o (result)
);

// Iniciar pruebas
initial begin

// Volcados
$dumpfile("dump.vcd");
$dumpvars(1, alu_test);

// Reinicio de Señales
$display("-- Inicia Simulación --");
data0 = 8'd0;
data1 = 8'd0;
ctrl  = 3'b000;

#50 //delay
data0 = 8'd200;
data1 = 8'd23;
ctrl  = 3'b000;
$display("Resultado de suma: %h", result);
$display("--");
 
#50 //delay
data0 = 8'd23;
data1 = 8'd21;
ctrl  = 3'b001;
$display("Resultado de res: %h", result);
$display("--");
 
#50 //delay
data0 = 8'd10;
data1 = 8'd12;
ctrl  = 3'b010;
$display("Resultado de producto: %h", result);
$display("--");

#50 //delay
data0 = 8'd10;
data1 = 8'd2;
ctrl  = 3'b011;
$display("Resultado de division: %h", result);
$display("--");

#50 //delay
data0 = 8'd9;
data1 = 8'd3;
ctrl  = 3'b100;
$display("Resultado de modulo: %h", result);
$display("--");


#50 //delay
$display("-- Fin de la Simulación --");
end

endmodule