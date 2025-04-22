`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2025 01:33:40 PM
// Design Name: 
// Module Name: MEM_WB_Register
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


module MEM_WB_Register(
    input clk, 
    input MemtoReg, 
    input RegWrite,
    input [63:0] ALU_Result,
    input [63:0] Read_Data,
    input [4:0] RD,
    
    output reg MemtoReg_Out, 
    output reg RegWrite_Out,
    output reg [63:0] ALU_Result_Out,
    output reg [63:0] Read_Data_Out,
    output reg [4:0] RD_Out
);
    
always @(posedge clk) begin 
    MemtoReg_Out   <= MemtoReg;
    RegWrite_Out   <= RegWrite;
    ALU_Result_Out <= ALU_Result;
    Read_Data_Out  <= Read_Data;
    RD_Out         <= RD;
end

endmodule

