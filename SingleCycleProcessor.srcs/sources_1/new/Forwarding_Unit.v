`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2025 12:50:11 PM
// Design Name: 
// Module Name: Forwarding_Unit
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


module Forwarding_Unit(
input [4:0] ID_EX_Rs1,
input [4:0] ID_EX_Rs2,
input [4:0] EX_MEM_Rd,
input [4:0] MEM_WB_Rd,
input EX_MEM_RegWrite, MEM_WB_RegWrite,
output reg [1:0] ForwardA,
output reg [1:0] ForwardB
    );
    
 always @(*)begin 
 
 // EX:
 //if (EX/MEM.RegWrite
//and (EX/MEM.RegisterRd ? 0)
//and (EX/MEM.RegisterRd = ID/EX.RegisterRs1)) ForwardA = 10
//if (EX/MEM.RegWrite
//and (EX/MEM.RegisterRd ? 0)
//and (EX/MEM.RegisterRd = ID/EX.RegisterRs2)) ForwardB = 10
 
 //forward A
 if((EX_MEM_RegWrite) && (EX_MEM_Rd != 0) && (EX_MEM_Rd == ID_EX_Rs1))
    begin 
    ForwardA = 2'b10;
    end 
  else if(((MEM_WB_RegWrite) && (MEM_WB_Rd != 0) && (MEM_WB_Rd == ID_EX_Rs1)) 
  && !((EX_MEM_RegWrite) && (EX_MEM_Rd != 0) && (EX_MEM_Rd == ID_EX_Rs1)))
    begin 
    ForwardA = 2'b01;
    end   
  else 
    begin
    ForwardA = 2'b00;
    end 
  
  //forwardB
  if((EX_MEM_RegWrite) && (EX_MEM_Rd != 0) && (EX_MEM_Rd == ID_EX_Rs2))
    begin 
    ForwardB = 2'b10;
    end 
  else if(((MEM_WB_RegWrite) && (MEM_WB_Rd != 0) && (MEM_WB_Rd == ID_EX_Rs2))
  && !((EX_MEM_RegWrite) && (EX_MEM_Rd != 0) && (EX_MEM_Rd == ID_EX_Rs2)))
    begin 
    ForwardB = 2'b01;
    end   
  else 
    begin
    ForwardB = 2'b00;
    end 
  
  
 
 end
 
 
endmodule
