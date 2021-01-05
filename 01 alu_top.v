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
    input [2:0] Codigo_OP,
    input [7:0] Dato0,
    input [7:0] Dato1,
    output [7:0] Resultado
);
// Cables internos
wire [7:0] suma_resultado;
wire [7:0] resta_resultado;
wire [7:0] prod_resultado;
wire [7:0] div_resultado;
wire [7:0] mod_resultado;


endmodule