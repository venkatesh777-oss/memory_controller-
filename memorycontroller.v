module memory_controller(
input clk,reset,
input write_en,
input read_en,
input [7:0]addr,
input [7:0]data_in,
output reg [7:0]data_out,
output reg ready
);
   reg [2047:0] memory;
always@(posedge clk)begin
if(reset)begin
data_out <= 8'd0;
ready <= 1'd0;
end     
else  
begin 
ready <= 1'd0; 
end
if(write_en)begin
memory[addr] <= data_in;
ready <= 1'd1;
end
else if(read_en)begin
data_out <= memory[addr];
ready <= 1'd1;
end
end
endmodule
