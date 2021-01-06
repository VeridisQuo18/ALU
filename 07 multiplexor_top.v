/* ================================================
 * Nombre del proyecto: Una ALU que opera con datos en 8-bit.
 * Archivo:             07 multiplexor_top.v (7/7).
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

module multiplexor_top(
    input [7:0] portA_i,
    input [7:0] portB_i,
    input [7:0] portC_i,
    input [7:0] portD_i,
    input [7:0] portE_i,
    input [2:0] ctrl_i,
    output reg  [7:0] data_o   
);

always @ * begin
    case (ctrl_i)
        3'b000: 
            data_o = portA_i;
        3'b001: 
            data_o = portB_i;
        3'b010: 
            data_o = portC_i;
        3'b011: 
            data_o = portD_i;
        3'b100: 
            data_o = portE_i;
        default: 
            data_o = portA_i;
    endcase
end

endmodule