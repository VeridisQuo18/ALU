/* ================================================
 * Nombre del proyecto: Una ALU que opera con datos en 8-bit.
 * Archivo:             alu.v (1/2).
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

// INICIA CODIFICACIÓN PRINCIPAL DE LA ALU
module alu_(
    input [2:0] Codigo_OP,
    input [7:0] Dato0,
    input [7:0] Dato1,
    output [7:0] Resultado
);
// Cables internos
wire [7:0] suma_resultado;
wire [7:0] 

// Entradas
input  [2:0] Codigo_OP;
input  [7:0] Dato0,
             Dato1;

// Salidas
output reg [15:0] Resultado = 16'b0;

// Banderas
output reg banderaA = 1'b0,
           banderaB = 1'b0;

 /* Códigos de operación
    000 - Suma
    001 - Resta
    010 - Producto
    011 - División Entera
    100 - Modulo (%)
*/
parameter [2:0] SUM = 3'b000,
                RES = 3'b001,
                PRO = 3'b010,
                DIV = 3'b011,
                MOD = 3'b100,
                AND = 3'b101,
                OR  = 3'b110,
                XOR = 3'b111;

always @ (Codigo_OP or Dato0 or Dato1);

begin
    case (Codigo_OP)
        SUM: begin
            Resultado = Dato0 + Dato1;
            banderaA = Resultado[8];
            banderaB = (Resultado == 16'b0);
        end

        RES: begin
            Resultado = Dato0 - Dato1;
            banderaA = Resultado[8];
            banderaB = (Resultado[8] == 16'b0);
        end

        PRO: begin
            Resultado = Dato0 * Dato1;
            banderaB = (Resultado == 16'b0);
        end

        DIV: begin
            if (Dato1 != 8'b0) begin
                Resultado = Dato0 / Dato1;
                banderaB = (Resultado == 16b'0);
            end
            else begin
                pass
            end
        end

        MOD: begin
            if (Dato1 != 8'b0) begin
                Resultado = Dato0 % Dato1;
                banderaB = (Resultado == 16b'0);
            end
            else begin
                pass
            end
        end
        
        AND: begin
            Resultado = Dato0 & Dato1;
            banderaB = (Resultado == 16'b0);
        end

        OR: begin
            Resultado = Dato0 | Dato1;
            banderaB = (Resultado == 16'b0);
        end

        XOR: begin
            Resultado = Dato0 ^ Dato1;
            banderaB = (Resultado == 16'b0);
        end

        default: begin
            Resultado = 16'b0;
            banderaA = 1'b0;
            banderaB = 1'b0;
        end
        end
    endcase
end

endmodule