`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2025 04:44:24 PM
// Design Name: 
// Module Name: Hazard_Detection_Unit
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


module Hazard_Detection_Unit(
    input ID_EX_MemRead,
    input [4:0] ID_EX_Rd,
    input [4:0] IF_ID_Rs1,
    input [4:0] IF_ID_Rs2,
    output reg stall
);
    always @(*) begin
        if (ID_EX_MemRead && 
           ((ID_EX_Rd == IF_ID_Rs1) || (ID_EX_Rd == IF_ID_Rs2))) begin
            stall = 1'b1;
        end else begin
            stall = 1'b0;
        end
    end
endmodule    
