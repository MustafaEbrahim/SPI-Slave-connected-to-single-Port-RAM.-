module SPI_Wrapper_tb ();
parameter MEM_DEPTH = 256;
parameter ADDR_SIZE = 8;

reg clk, rst_n, SS_n, MOSI;
wire MISO;

SPI_Wrapper DUT (clk, rst_n, SS_n, MOSI, MISO);

initial begin
	clk = 0;
	forever 
	    #1 clk=~clk;
end

initial begin
	$readmemh ("mem.dat",DUT.Async_RAM.mem);  //initialise memory
	rst_n=0;
	SS_n=1;
	MOSI=0;
	repeat(10) @(negedge clk);
	rst_n=1;
	repeat(20) @(negedge clk);

	//test Write Address
	SS_n=0;
	repeat(4) @(negedge clk);
	repeat(12) begin
		MOSI = 1;   //to access address 255
		@(negedge clk);
	end
	SS_n=1;
	repeat(4) @(negedge clk);

	//test Write Data
	SS_n=0;
	MOSI=0;
	repeat(3) @(negedge clk);
	MOSI=1;
	repeat(1) @(negedge clk);
	repeat(12) begin
		MOSI = $random; //write in address 255 random value
		@(negedge clk);
	end
	SS_n=1;
	repeat(4) @(negedge clk);

	//test Read Address
	SS_n=0;
	MOSI=1;
	repeat(3) @(negedge clk);
	MOSI=0;
	repeat(1) @(negedge clk);
	repeat(12) begin
		MOSI = 1; //to access address 255
		@(negedge clk);
	end
	SS_n=1;
	repeat(4) @(negedge clk);

	//test Read Data
	SS_n=0;
	MOSI=1;
	repeat(4) @(negedge clk);
	repeat(12) begin
		MOSI = 1; //to read address 255
		@(negedge clk);
	end
	repeat(8) @(negedge clk); //waiting for output MISO
	SS_n=1;
	repeat(4) @(negedge clk);

	$stop; 
end
endmodule