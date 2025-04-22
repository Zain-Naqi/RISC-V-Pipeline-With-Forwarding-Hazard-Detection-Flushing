//`timescale 1ns / 1ps

//module Instruction_Memory(
//    input [63:0] Inst_Address,
//    output [31:0] Instruction
//);

//reg [7:0] Inst_Memory [15:0];

//initial begin
//    Inst_Memory[15] = 8'b00001110;
//    Inst_Memory[14] = 8'b10010101;
//    Inst_Memory[13] = 8'b00111000;
//    Inst_Memory[12] = 8'b00100011;
//    Inst_Memory[11] = 8'b00000000;
//    Inst_Memory[10] = 8'b00010100;
//    Inst_Memory[9] = 8'b10000100;
//    Inst_Memory[8] = 8'b10010011;
//    Inst_Memory[7] = 8'b00000000;
//    Inst_Memory[6] = 8'b10011010;
//    Inst_Memory[5] = 8'b10000100;
//    Inst_Memory[4] = 8'b10110011;
//    Inst_Memory[3] = 8'b00001111;
//    Inst_Memory[2] = 8'b00000101;
//    Inst_Memory[1] = 8'b00110100;
//    Inst_Memory[0] = 8'b10000011;
//end

//assign Instruction[7:0] = Inst_Memory[Inst_Address];
//assign Instruction[15:8] = Inst_Memory[Inst_Address+1];
//assign Instruction[23:16] = Inst_Memory[Inst_Address+2];
//assign Instruction[31:24] = Inst_Memory[Inst_Address+3];

//endmodule

`timescale 1ns / 1ps

module Instruction_Memory(
    input  [63:0] Instr_Addr,
    output [31:0] Instruction
);

    // Size of memory in bytes (16 bytes = 4 instructions)
    parameter MEM_SIZE = 36;

    // Memory array: 8-bit wide, MEM_SIZE deep
    reg [31:0] instruction_memory [41:0];

    // Used for address indexing
    wire [3:0] index;
    assign index = Instr_Addr[3:0];

    // Initialize instruction memory
    initial begin
            
//  Load and Store Code:    
//        instruction_memory[0] = 32'h00a00093	;
//        instruction_memory[1] = 32'h00500113;
//        instruction_memory[2] = 32'h10102023;
//        instruction_memory[3] = 32'h10002183;
//        instruction_memory[4] = 32'h00310133;

//  Forwarding code from book:
//        instruction_memory[0] = 32'h00a00093;
//        instruction_memory[1] = 32'h00400193;
//        instruction_memory[2] = 32'h00200313;
//        instruction_memory[3] = 32'h40308133;
//        instruction_memory[4] = 32'h00517633;
//        instruction_memory[5] = 32'h002366b3;
//        instruction_memory[6] = 32'h00210733;
//        instruction_memory[7] = 32'h06f12223;

//  Bubble Sort without nops:
        instruction_memory[0]  = 32'h10000293;
        instruction_memory[1]  = 32'h00a00313;
        instruction_memory[2]  = 32'h00700393;
        instruction_memory[3]  = 32'h0072a023;
        instruction_memory[4]  = 32'h00600393;
        instruction_memory[5]  = 32'h0072a223;
        instruction_memory[6]  = 32'h00500393;
        instruction_memory[7]  = 32'h0072a423;
        instruction_memory[8]  = 32'h00400393;
        instruction_memory[9]  = 32'h0072a623;
        instruction_memory[10] = 32'h00300393;
        instruction_memory[11] = 32'h0072a823;
        instruction_memory[12] = 32'h00200393;
        instruction_memory[13] = 32'h0072aa23;
        instruction_memory[14] = 32'h00100393;
        instruction_memory[15] = 32'h0072ac23;
        instruction_memory[16] = 32'h00a00393;
        instruction_memory[17] = 32'h0072ae23;
        instruction_memory[18] = 32'h00900393;
        instruction_memory[19] = 32'h0272a023;
        instruction_memory[20] = 32'h00800393;
        instruction_memory[21] = 32'h0272a223;
        instruction_memory[22] = 32'h00000e13;
        instruction_memory[23] = 32'h00000e93;
        instruction_memory[24] = 32'h000e0e93;
        instruction_memory[25] = 32'h002e1f13;
        instruction_memory[26] = 32'h005f0fb3;
        instruction_memory[27] = 32'h000fa103;
        instruction_memory[28] = 32'h002e9f13;
        instruction_memory[29] = 32'h005f0ab3;
        instruction_memory[30] = 32'h000aa183;
        instruction_memory[31] = 32'h0021c463;
        instruction_memory[32] = 32'h00000463;
        instruction_memory[33] = 32'h00000c63;
        instruction_memory[34] = 32'h001e8e93;
        instruction_memory[35] = 32'hfc6ecce3;
        instruction_memory[36] = 32'h001e0e13;
        instruction_memory[37] = 32'hfc6e46e3;
        instruction_memory[38] = 32'h00000863;
        instruction_memory[39] = 32'h002aa023;
        instruction_memory[40] = 32'h003fa023;
        instruction_memory[41] = 32'hfe0002e3;

//  Bubble Sort with 3 nops:
//        instruction_memory[0]  = 32'h10000293;
//        instruction_memory[1]  = 32'h00800313;
//        instruction_memory[2]  = 32'h00700393;
//        instruction_memory[3]  = 32'h0072a023;
//        instruction_memory[4]  = 32'h00600393;
//        instruction_memory[5]  = 32'h0072a223;
//        instruction_memory[6]  = 32'h00500393;
//        instruction_memory[7]  = 32'h0072a423;
//        instruction_memory[8]  = 32'h00400393;
//        instruction_memory[9]  = 32'h0072a623;
//        instruction_memory[10] = 32'h00300393;
//        instruction_memory[11] = 32'h0072a823;
//        instruction_memory[12] = 32'h00800393;
//        instruction_memory[13] = 32'h0072aa23;
//        instruction_memory[14] = 32'h00100393;
//        instruction_memory[15] = 32'h0072ac23;
//        instruction_memory[16] = 32'h00200393;
//        instruction_memory[17] = 32'h0072ae23;
//        instruction_memory[18] = 32'h00000e13;
//        instruction_memory[19] = 32'h00000e93;
//        instruction_memory[20] = 32'h000e0e93;
//        instruction_memory[21] = 32'h002e1f13;
//        instruction_memory[22] = 32'h005f0fb3;
//        instruction_memory[23] = 32'h000fa103;
//        instruction_memory[24] = 32'h002e9f13;
//        instruction_memory[25] = 32'h005f0ab3;
//        instruction_memory[26] = 32'h000aa183;
//        instruction_memory[27] = 32'h0221c063;
//        instruction_memory[28] = 32'h00000013;
//        instruction_memory[29] = 32'h00000013;
//        instruction_memory[30] = 32'h00000013;
//        instruction_memory[31] = 32'h02005063;
//        instruction_memory[32] = 32'h00000013;
//        instruction_memory[33] = 32'h00000013;
//        instruction_memory[34] = 32'h00000013;
//        instruction_memory[35] = 32'h04000463;
//        instruction_memory[36] = 32'h00000013;
//        instruction_memory[37] = 32'h00000013;
//        instruction_memory[38] = 32'h00000013;
//        instruction_memory[39] = 32'h001e8e93;
//        instruction_memory[40] = 32'hfa6ecae3;
//        instruction_memory[41] = 32'h00000013;
//        instruction_memory[42] = 32'h00000013;
//        instruction_memory[43] = 32'h00000013;
//        instruction_memory[44] = 32'h001e0e13;
//        instruction_memory[45] = 32'hf86e4ee3;
//        instruction_memory[46] = 32'h00000013;
//        instruction_memory[47] = 32'h00000013;
//        instruction_memory[48] = 32'h00000013;
//        instruction_memory[49] = 32'h02005463;
//        instruction_memory[50] = 32'h00000013;
//        instruction_memory[51] = 32'h00000013;
//        instruction_memory[52] = 32'h00000013;
//        instruction_memory[53] = 32'h002aa023;
//        instruction_memory[54] = 32'h003fa023;
//        instruction_memory[55] = 32'hfc0000e3;
//        instruction_memory[56] = 32'h00000013;
//        instruction_memory[57] = 32'h00000013;
//        instruction_memory[58] = 32'h00000013;


// Bubble Sort with 2 Nops:
//        instruction_memory[0]  = 32'h10000293;
//        instruction_memory[1]  = 32'h00700313;
//        instruction_memory[2]  = 32'h00700393;
//        instruction_memory[3]  = 32'h0072a023;
//        instruction_memory[4]  = 32'h00600393;
//        instruction_memory[5]  = 32'h0072a223;
//        instruction_memory[6]  = 32'h00500393;
//        instruction_memory[7]  = 32'h0072a423;
//        instruction_memory[8]  = 32'h00400393;
//        instruction_memory[9]  = 32'h0072a623;
//        instruction_memory[10] = 32'h00300393;
//        instruction_memory[11] = 32'h0072a823;
//        instruction_memory[12] = 32'h00200393;
//        instruction_memory[13] = 32'h0072aa23;
//        instruction_memory[14] = 32'h00100393;
//        instruction_memory[15] = 32'h0072ac23;
//        instruction_memory[16] = 32'h00000e13;
//        instruction_memory[17] = 32'h00000e93;
//        instruction_memory[18] = 32'h000e0e93;
//        instruction_memory[19] = 32'h002e1f13;
//        instruction_memory[20] = 32'h005f0fb3;
//        instruction_memory[21] = 32'h000fa103;
//        instruction_memory[22] = 32'h002e9f13;
//        instruction_memory[23] = 32'h005f0ab3;
//        instruction_memory[24] = 32'h000aa183;
//        instruction_memory[25] = 32'h0021cc63;
//        instruction_memory[26] = 32'h00000013;
//        instruction_memory[27] = 32'h00000013;
//        instruction_memory[28] = 32'h00005c63;
//        instruction_memory[29] = 32'h00000013;
//        instruction_memory[30] = 32'h00000013;
//        instruction_memory[31] = 32'h02000c63;
//        instruction_memory[32] = 32'h00000013;
//        instruction_memory[33] = 32'h00000013;
//        instruction_memory[34] = 32'h001e8e93;
//        instruction_memory[35] = 32'hfc6ec0e3;
//        instruction_memory[36] = 32'h00000013;
//        instruction_memory[37] = 32'h00000013;
//        instruction_memory[38] = 32'h001e0e13;
//        instruction_memory[39] = 32'hfa6e46e3;
//        instruction_memory[40] = 32'h00000013;
//        instruction_memory[41] = 32'h00000013;
//        instruction_memory[42] = 32'h02005063;
//        instruction_memory[43] = 32'h00000013;
//        instruction_memory[44] = 32'h00000013;
//        instruction_memory[45] = 32'h002aa023;
//        instruction_memory[46] = 32'h003fa023;
//        instruction_memory[47] = 32'hfc0006e3;
//        instruction_memory[48] = 32'h00000013;
//        instruction_memory[49] = 32'h00000013;



 
    end

    
    assign Instruction = instruction_memory[Instr_Addr / 4];

endmodule
