module testbench;
  reg [5:0] WriteRegister;
  reg RegWrite;
  reg [5:0] ReadRegister1;
  reg [5:0] ReadRegister2;
  reg [0:31] WriteData;
  reg x;
  wire [0:31] ReadData1;
  wire [0:31] ReadData2;
  integer index;
  initial begin
    x = 1;
    RegWrite = 1;
    ReadRegister1 = 5'b11010;
    ReadRegister2 = 5'b11011;
    for(index =1; index<32; index=index+1) begin
    #5
    WriteRegister = index;
    WriteData = 12*index; // valores diferentes para cada registrador
    end
    #20
    RegWrite = 1;
    WriteRegister = 18;
    WriteData = 70;
    ReadRegister1 = 18; // Registrador $s2
    ReadRegister2 = 27;
    #20
    RegWrite = 0;
    WriteRegister = 18;
    ReadRegister1 = 18; // Registrador $s2 teve seus dados mudados na linha 23						
    ReadRegister2 = 0;  // registrador $zero   
    WriteData = 15;
    #20
    RegWrite = 1;
    WriteRegister = 15;
    ReadRegister1 = 15; // testando registrador $t7
    ReadRegister2 = 30; // testando registrador $fp
    #20
    RegWrite = 1;
    WriteRegister = 30;
    ReadRegister1 = 15; // testando registrador $t7
    ReadRegister2 = 30; // testando registrador $fp
     
end 

 //assign WriteData[1]=data; 
 banco_reg test1(.sel(WriteRegister), .RegWrite(RegWrite), .selA(ReadRegister1), .selB(ReadRegister2), .data(WriteData[0:31]), .ReadData1(ReadData1[0:31]), .ReadData2(ReadData2[0:31]));


  endmodule
// modul e banco_reg (sel, RegWrite, selA, selB, data, ReadData1, ReadData2);
