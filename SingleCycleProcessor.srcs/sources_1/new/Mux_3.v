`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2025 01:50:29 PM
// Design Name: 
// Module Name: MUX_3
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MUX_3(
    input [63:0] a, b, c,
    input [1:0] sel,
    output reg [63:0] data_out   
);

always@(*)
begin
    case (sel)
    2'b00: data_out = a;
    2'b01: data_out = b;
    2'b10: data_out = c; 
    default: data_out = 2'bX;
    endcase

end


endmodule 
