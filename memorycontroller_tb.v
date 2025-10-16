//testbench module
module memory_controller_tb;
reg clk,reset;
reg read_en,write_en;
reg [7:0]data_in;
reg [7:0]addr;
wire [7:0]data_out; 
wire ready;
memory_controller dut(
		.clk(clk), 
		.reset(reset),
		.read_en(read_en),
		.write_en(write_en),
		.data_in(data_in),
		.data_out(data_out),  
		.addr(addr),
		.ready(ready)
);

// Clock generation
    initial clk = 0;
    always #5 clk = ~clk;
initial begin
$display("memory controller");
reset=1;
read_en=0;write_en=0;
data_in=0;
addr=0;

#30;
reset=0;
//WRITE TO ADDRESS 1
 addr = 8'd1; data_in = 8'd22; write_en = 1;
        #10 write_en = 0; 
	wait(ready);
        $display("WRITE: Addr=1, Data=%h", data_in);

//WRITE TO ADDRESS 2
 addr = 8'd2; data_in = 8'hAA; write_en = 1;
        #10 write_en = 0; 
	wait(ready);
        $display("WRITE: Addr=1, Data=%h", data_in);

//READ FROM ADDRESS 1
 addr = 8'd1; read_en = 1;
        #10 read_en = 0; 
	data_in=8'd22;
	wait(ready);
        $display("WRITE: Addr=2, Data=%h", data_in);

//READ FROM ADDRESS 2

 addr = 8'd2; read_en = 1;
        #10 read_en = 0; 
data_in=8'hAA;
	wait(ready);
        $display("WRITE: Addr=2, Data=%h", data_in);


$finish;
end
endmodule

