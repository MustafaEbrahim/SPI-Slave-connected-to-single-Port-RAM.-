module SPI_Wrapper (clk, rst_n, SS_n, MOSI, MISO);
parameter MEM_DEPTH = 256;
parameter ADDR_SIZE = 8;

input clk, rst_n, SS_n, MOSI;
output MISO;

wire tx_valid_RAM_out, rx_valid_SPI_out;
wire [7:0] tx_data_RAM_out;
wire [9:0] rx_data_SPI_out;

SPI SPI_Slave (.clk(clk), .rst_n(rst_n), .SS_n(SS_n), .MOSI(MOSI), .tx_valid(tx_valid_RAM_out), .tx_data(tx_data_RAM_out), .MISO(MISO), .rx_valid(rx_valid_SPI_out), .rx_data(rx_data_SPI_out));
RAM #(MEM_DEPTH,ADDR_SIZE) Async_RAM (.clk(clk), .rst_n(rst_n), .rx_valid(rx_valid_SPI_out), .din(rx_data_SPI_out), .dout(tx_data_RAM_out), .tx_valid(tx_valid_RAM_out));

endmodule