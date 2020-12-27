/* ================================================
 * Nombre del proyecto: Una ALU que opera con datos en 8-bit.
 * Archivo:             alu.v (1/...).
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
 * ================================================
 
 Códigos de control
    000 - Suma
    001 - Resta
    010 - Producto
    011 - División Entera
    100 - Modulo (%)
*/

// INICIA CODIFICACIÓN PRINCIPAL DE LA ALU
module alu(
    input  [7:0] data0_i, data1_i,
    input  [2:0] ctrl_i,
    output [7:0] result_o   
);

// Wires
wire [7:0] suma_result   ;   
wire [7:0] resta_result   ;   
wire [7:0] prod_result  ;   
wire [7:0] div_result   ;
wire [7:0] mod_result   ;

// Instanciacion del sumador
sumador_top sumador(
    .data0_i  ( data0_i     ), 
    .data1_i  ( data1_i     ),
    .result_o ( sum_result  ) 
);

// Instanciacion del restador
restador_top restador(
    .data0_i  ( data0_i     ), 
    .data1_i  ( data1_i     ),
    .result_o ( res_result  )   
);

// Instanciacion del multiplicador
multiplicador_top multiplicador(
    .data0_i  ( data0_i     ), 
    .data1_i  ( data1_i     ),
    .result_o ( mult_result )   
);

// Instanciacion del divisor
divisor_top divisor(
    .data0_i  ( data0_i     ), 
    .data1_i  ( data1_i     ),
    .result_o ( div_result  )   
);

// Instanciacion del divisor
divisor_top mod(
    .data0_i  ( data0_i     ), 
    .data1_i  ( data1_i     ),
    .result_o ( mod_result  )   
);

// Instanciacion del multiplexor
multiplexor_top multiplexor(
    .portA_i  ( sum_result  ), 
    .portB_i  ( res_result  ), 
    .portC_i  ( mult_result ), 
    .portD_i  ( div_result  ), 
    .ctrl_i   ( ctrl_i      ), 
    .data_o   ( result_o    )    
);

endmodule