module reg_d(D,clk, Q);
input wire [0:31] D; // Data input 
output reg [0:31] Q; // output Q 
input clk; // clock input 
always @(posedge clk) 
begin
 Q <= D; 
end 
endmodule