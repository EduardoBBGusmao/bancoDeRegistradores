module testbench;
  reg [5:0] WriteRegister;
  reg RegWrite;
  reg [5:0] ReadRegister1;
  reg [5:0] ReadRegister2;
  wire WriteData[0:31];
  reg x;
  wire ReadData1[0:31];
  wire ReadData2[0:31];
  integer index;
  initial begin
    x = 1;
    RegWrite = 1;
    WriteRegister = 5'b10010;
    ReadRegister1 = 5'b11010;
    ReadRegister2 = 5'b10110;
   
  end
  assign WriteData[0] = 1;
assign WriteData[1] = 0;
assign WriteData[2] = 0;
assign WriteData[3] = 1;
assign WriteData[4] = 1;
assign WriteData[5] = 0;
assign WriteData[6] = 0;
assign WriteData[7] = 1;
assign WriteData[8] = 1;
assign WriteData[9] = 1;
assign WriteData[10] = 1;
assign WriteData[11] = 1;
assign WriteData[12] = 1;
assign WriteData[13] = 1;
assign WriteData[14] = 1;
assign WriteData[15] = 1;
assign WriteData[16] = 1;
assign WriteData[17] = 1;
assign WriteData[18] = 1;
assign WriteData[19] = 1;
assign WriteData[20] = 1;
assign WriteData[21] = 1;
assign WriteData[22] = 1;
assign WriteData[23] = 1;
assign WriteData[24] = 1;
assign WriteData[25] = 1;
assign WriteData[26] = 1;
assign WriteData[27] = 1;
assign WriteData[28] = 1;
assign WriteData[29] = 1;
assign WriteData[30] = 1;
assign WriteData[31] = 1;
 banco_reg test1(.sel(WriteRegister), .RegWrite(RegWrite), .selA(ReadRegister1), .selB(ReadRegister2), .data(WriteData[0:31]), .ReadData1(ReadData1[0:31]), .ReadData2(ReadData2[0:31]));
  

  endmodule
// modul e banco_reg (sel, RegWrite, selA, selB, data, ReadData1, ReadData2);
