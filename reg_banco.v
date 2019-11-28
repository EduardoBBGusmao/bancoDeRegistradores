module banco_reg (sel,RegWrite, selA, selB, data, ReadData1, ReadData2);
 input  [0:5] sel;
 input  [0:5] selA;
 input  [0:5] selB;
 output wire [0:31] ReadData1;
 output wire [0:31] ReadData2;
 input [0:31] data;
 reg enable[0:31];
 integer i;
 integer index;
 integer indexA;
 integer indexB;
 input RegWrite;
 wire [0:31] Q [0:31];
 wire readreg;
 assign readreg = ~RegWrite;
always @(*) begin
  for (i=0;i<32;i=i+1)
    enable[i] =0;

if(RegWrite == 1) begin
   enable[sel] = 1;
end
end

reg_zero zero(.Q (Q[0])); 
reg_32 at(.in(data),.Q (Q[1]), .writereg (enable[1]),.readreg(readreg));     
reg_32 v0(.in(data),.Q (Q[2]), .writereg (enable[2]),.readreg(readreg));
reg_32 v1(.in(data),.Q (Q[3]), .writereg (enable[3]),.readreg(readreg)); 
reg_32 a0(.in(data),.Q (Q[4]), .writereg (enable[4]),.readreg(readreg));     
reg_32 a1(.in(data),.Q (Q[5]), .writereg (enable[5]),.readreg(readreg));
reg_32 a2(.in(data),.Q (Q[6]), .writereg (enable[6]),.readreg(readreg));
reg_32 a3(.in(data),.Q (Q[7]), .writereg (enable[7]),.readreg(readreg));
reg_32 t0(.in(data),.Q (Q[8]), .writereg (enable[8]),.readreg(readreg));
reg_32 t1(.in(data),.Q (Q[9]), .writereg (enable[9]),.readreg(readreg));
reg_32 t2(.in(data),.Q (Q[10]), .writereg (enable[10]),.readreg(readreg));
reg_32 t3(.in(data),.Q (Q[11]), .writereg (enable[11]),.readreg(readreg));
reg_32 t4(.in(data),.Q (Q[12]), .writereg (enable[12]),.readreg(readreg));
reg_32 t5(.in(data),.Q (Q[13]), .writereg (enable[13]),.readreg(readreg));
reg_32 t6(.in(data),.Q (Q[14]), .writereg (enable[14]),.readreg(readreg)); 
reg_32 t7(.in(data),.Q (Q[15]), .writereg (enable[15]),.readreg(readreg)); 
reg_32 s0(.in(data),.Q (Q[16]), .writereg (enable[16]),.readreg(readreg));
reg_32 s1(.in(data),.Q (Q[17]), .writereg (enable[17]),.readreg(readreg));
reg_32 s2(.in(data),.Q (Q[18]), .writereg (enable[18]),.readreg(readreg));
reg_32 s3(.in(data),.Q (Q[19]), .writereg (enable[19]),.readreg(readreg)); 
reg_32 s4(.in(data),.Q (Q[20]), .writereg (enable[20]),.readreg(readreg));
reg_32 s5(.in(data),.Q (Q[21]), .writereg (enable[21]),.readreg(readreg));
reg_32 s6(.in(data),.Q (Q[22]), .writereg (enable[22]),.readreg(readreg));
reg_32 s7(.in(data),.Q (Q[23]), .writereg (enable[23]),.readreg(readreg)); 
reg_32 t8(.in(data),.Q (Q[24]), .writereg (enable[24]),.readreg(readreg));
reg_32 t9(.in(data),.Q (Q[25]), .writereg (enable[25]),.readreg(readreg));
reg_32 k0(.in(data),.Q (Q[26]), .writereg (enable[26]),.readreg(readreg));  
reg_32 k1(.in(data),.Q (Q[27]), .writereg (enable[27]),.readreg(readreg));  
reg_32 gp(.in(data),.Q (Q[28]), .writereg (enable[28]),.readreg(readreg));  
reg_32 sp(.in(data),.Q (Q[29]), .writereg (enable[29]),.readreg(readreg));  
reg_32 fp(.in(data),.Q (Q[30]), .writereg (enable[30]),.readreg(readreg));  
reg_32 ra(.in(data),.Q (Q[31]), .writereg (enable[31]),.readreg(readreg));

//always @(*) begin
assign ReadData1[0:31] = Q[selA];
assign ReadData2[0:31] = Q[selB];
//end

endmodule


