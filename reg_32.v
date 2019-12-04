module reg_32(in,Q, writereg, readreg);
 input wire [31:0] in;
 output [31:0] Q;
 input wire writereg;
 input wire readreg;
 wire clk;
 assign clk = (readreg == 1) ? 0 : writereg ;

 reg_d flipflop (.D (in), .clk (clk), .Q (Q));
endmodule

