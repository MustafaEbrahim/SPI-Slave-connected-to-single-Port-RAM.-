module RAM (clk, rst_n, rx_valid, din, dout, tx_valid);
parameter MEM_DEPTH = 256;
parameter ADDR_SIZE = 8;

input clk, rst_n, rx_valid;
input [9:0] din;

output reg [7:0] dout;
output reg tx_valid;

reg [7:0] mem [MEM_DEPTH-1:0];

reg [7:0] address;

always @(posedge clk) begin  //async rst is not supported with RAM
	if (~rst_n) begin
		// reset
		dout <= 0;
		address <= 0;
	end
	else if (rx_valid && ~din[8]) begin
		address <= din[7:0];
	end
	else if (rx_valid && ~din[9]) begin
		mem[address] <= din[7:0];
	end
	else if (din[9:8]==2'b11) begin
		dout <= mem[address];
	end
end

always @(posedge clk) begin
	if (~rst_n) begin
		// reset
		tx_valid <= 0;
	end
	else if (din[9:8]==2'b11) begin
		tx_valid <= 1;
	end
	else begin
		tx_valid <= 0;
	end
end

endmodule