/* ================================================
 * Nombre del proyecto: Una ALU que opera con datos en 8-bit.
 * Archivo:             01 alu_top.v (1/...).
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

`timescale 1ns /100ps

 /* Códigos de operación
    000 - Suma
    001 - Resta
    010 - Producto
    011 - División Entera
    100 - Modulo (%)
*/

// Unidad aritemica logica (ALU) de 5 operaciones, datos de 8 bits
module alu_top(
    input [2:0] ctrl_i,
    input [7:0] data0_i,
    input [7:0] data1_i,
    output [7:0] result_o
);
// Cables internos
wire [7:0] sum_result;
wire [7:0] res_result;
wire [7:0] prod_result;
wire [7:0] div_result;
wire [7:0] mod_result;

// Instancia del sumador
sumador_top suma(
    .data0_i (data0_i),
    .data1_i (data1_i),
    .result_o (sum_result)
);

// Instancia del restador
restador_top resta(
    .data0_i (data0_i),
    .data1_i (data1_i),
    .result_o (res_result)
);

// Instancia del productor
productor_top producto(
    .data0_i (data0_i),
    .data1_i (data1_i),
    .result_o (prod_result)
);

// Instancia del divisor
divisor_top division(
    .data0_i (data0_i),
    .data1_i (data1_i),
    .result_o (div_result)
);

// Instancia del modulador
modulador_top mod(
    .data0_i (data0_i),
    .data1_i (data1_i),
    .result_o (mod_result)
);

// Instancia del multiplexor
multiplexor_top multiplexor(
    .portA_i (sum_result),
    .portB_i (res_result),
    .portC_i (prod_result),
    .portD_i (div_result),
    .portE_i (mod_result),
    .ctrl_i (ctrl_i),
    .data_o (result_o)
);

endmodule