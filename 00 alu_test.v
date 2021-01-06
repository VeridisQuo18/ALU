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


// Entradas para el modulo a prueba 
reg  [7:0] data0  ; 
reg  [7:0] data1  ;
reg  [2:0] ctrl   ; 

// Salidas del modulo a prueba 
wire [7:0] result ;


// Instanciacion del modulo a prueba
alu_top alu(
    .data0_i  ( data0  ), 
    .data1_i  ( data1  ),
    .ctrl_i   ( ctrl   ), 
    .result_o ( result )
);

// Pruebas
initial begin
// Dump waves
$dumpfile("dump.vcd");
$dumpvars(1,alu_tb);

// reset - todas las señales de entrada a 0
$display("-- start simulation --");
data0 = 4'h0;
data1 = 4'h0;
ctrl  = 3'b0;

#50 //delay
data0 = 4'h6;
data1 = 4'h2;
ctrl  = 2'b00;
$display("Resultado : %h", result  );
$display("--");
 
#50 //delay
data0 = 4'h6;
data1 = 4'h2;
ctrl  = 2'b01;
$display("Resultado : %h", result  );
$display("--");
 
#50 //delay
data0 = 4'h6;
data1 = 4'h2;
ctrl  = 2'b10;
$display("Resultado : %h", result  );
$display("--");

#50 //delay
data0 = 4'h6;
data1 = 4'h2;
ctrl  = 2'b11;
$display("Resultado : %h", result  );
$display("--");

#50 //delay
data0 = 4'h6;
data1 = 4'h2;
ctrl  = 2'b11;
$display("Resultado : %h", result  );
$display("--");

#50 //delay
$display("-- end simulation --");

end

endmodule
