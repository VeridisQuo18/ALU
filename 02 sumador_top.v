/* ================================================
 * Nombre del proyecto: Una ALU que opera con datos en 8-bit.
 * Archivo:             02 sumador_top.v (1/...).
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

module sumador_top(
    input  [7:0] data0_i    ,
    input  [7:0] data1_i    ,
    output [7:0] result_o   
);

assign result_o = data0_i + data1_i ;

endmodule