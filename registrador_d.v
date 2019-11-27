module registrador_d(D,clk,out);
input D; // Data input 
input clk; // clock input 
output reg out; // output Q 
always @(posedge clk) 
begin
 out <= D; 
end 
endmodule 