/* ================================================
 * Nombre del proyecto: Una ALU que opera con datos en 8-bit.
 * Archivo:             alu_test.v (2/2).
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

module alu;

// Entradas
reg [2:0] Codigo_OP;
reg [7:0] Dato0;
reg [7:0] Dato1;

// Salidas
wire [15:0] Resultado;
wire banderaA;
wire banderaB;

// Contable variable
reg [2:0] cuenta = 3'd0;

alu test (
            .Codigo_OP(Codigo_OP),
            .Dato0(Dato0),
            .Dato1(Dato1),
            .Resultado(Resultado),
            .banderaA(banderaA),
            .banderaB(banderaB)
);

initial begin
    // Iniciar entradas
     Codigo_OP = 3'b0;
     Dato0 = 8'd0;
     Dato1 = 8'd0;

     // Espera cada 100 nanosegundo par el reinicio global para terminar
     #100;

     // Asignamos valores a Dato0 y Dato1
     Dato0 = 8'd16;
     Dato1 = 8'd55;

     // Cambio de operador
     for (cuenta = 0; cuenta < 8; cuenta + 1'b01)
     begin
         Codigo_OP = cuenta;
         #20;
     end
end

endmodule