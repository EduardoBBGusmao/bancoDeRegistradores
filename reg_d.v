
module reg_d(D,clk, Q);
input wire [31:0] D; // Data input 
output reg [31:0] Q; // output Q 
input clk; // clock input 
always @(posedge clk) 
begin
 Q <= D; 
end 
endmodule