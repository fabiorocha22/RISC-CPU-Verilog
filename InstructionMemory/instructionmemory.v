module instructionmemory(
	input clk,
	input[9:0] pc,
	output reg[31:0] instructionOut
);

reg [31:0] instructionMem [0:255];

initial begin
	instructionMem[0] = 32'b001011_00000_00001_0000_0000_0000_0000; //lw $s1,0($s0)
	instructionMem[1] = 32'b001011_00000_00010_0000_0000_0000_0001; //lw $s2,1($s0)
	
	instructionMem[2] = 32'b001011_00000_00011_0000_0000_0000_0010; //lw $s3,2($s0)
	instructionMem[3] = 32'b001011_00000_00100_0000_0000_0000_0011; //lw $s4,3($s0)
	
	//instructionMem[4] = 32'b001010_00000_00000_00000_01010_011111; //NOP
	
	instructionMem[4] = 32'b001010_00001_00010_01000_01010_100000; //add $t0, $s1, $s2
	
	//instructionMem[6] = 32'b001010_00000_00000_00000_01010_011111; //NOP
	
	instructionMem[5] = 32'b001010_00011_00100_01001_01010_100000; //add $t1, $s3, $s4
	
	//instructionMem[8] = 32'b001010_00000_00000_00000_01010_011111;	//NOP
	//instructionMem[9] = 32'b001010_00000_00000_00000_01010_011111;	//NOP
	//instructionMem[10] = 32'b001010_00000_00000_00000_01010_011111; //NOP
	
	instructionMem[6] = 32'b001010_01000_01001_01010_01010_100010; //sub $t3, $t1, $t2
end

always @ (posedge clk) 
	instructionOut = instructionMem[pc];
	
endmodule
