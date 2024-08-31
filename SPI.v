module SPI (clk, rst_n, SS_n, MOSI, tx_valid, tx_data, MISO, rx_valid, rx_data);
parameter IDLE = 0;
parameter CHK_CMD = 1;
parameter WRITE = 2;
parameter READ_ADD = 3;
parameter READ_DATA = 4;

input clk, rst_n, SS_n, MOSI, tx_valid;
input [7:0] tx_data;

output reg MISO, rx_valid;
output reg [9:0] rx_data;

(* fsm_encoding="sequential" *)
reg [2:0] cs, ns;

reg address_recieved;
reg [3:0] counter_sp;
reg [2:0] counter_ps;

//State memory
always @(posedge clk) begin
	if (~rst_n) begin
		// reset
		cs <= IDLE;
	end
	else begin
		cs <= ns;
	end
end

//Next state logic
always @(*) begin
	case(cs)
	    IDLE:
	        if (SS_n) begin
	        	ns = IDLE;
	        end
	        else begin
	        	ns = CHK_CMD;
	        end
	    READ_ADD:
	        if (SS_n) begin
	        	ns = IDLE;
	        	address_recieved = 1;
	        end
	        else begin
	        	ns = READ_ADD;
	        end
	    CHK_CMD:
	        if (SS_n) begin
	        	ns = IDLE;
	        end
	        else if (MOSI) begin
	        	if (address_recieved) begin
	        		ns = READ_DATA;
	        	end
	        	else begin
	        		ns = READ_ADD;
	        	end
	        end
	        else begin
	        	ns = WRITE;
	        end
	    WRITE:
	        if (SS_n) begin
	        	ns = IDLE;
	        	address_recieved = 0;
	        end
	        else begin
	        	ns = WRITE;
	        end
	    READ_DATA:
	        if (SS_n) begin
	        	ns = IDLE;
	        	address_recieved = 0;
	        end
	        else begin
	        	ns = READ_DATA;
	        end
	    default: ns = IDLE;
	endcase
end

//Output logic
always @(posedge clk) begin
	if (~rst_n) begin
		// reset
		rx_data <= 0;
		rx_valid <= 0;
		MISO <= 0;
		counter_sp <= 0;
		counter_ps <= 7;
	end
	else if (SS_n) begin
		rx_data <= 0;
		rx_valid <= 0;
		MISO <= 0;
		counter_sp <= 0;
		counter_ps <= 7;
	end
	else begin
		case(cs)
		    WRITE: begin
		    	if (counter_sp<10) begin
		    	 	rx_data <= {rx_data,MOSI};
		    	    counter_sp <= counter_sp + 1;
		    	end
		    	else if (counter_sp==10) begin
		    		rx_valid <= 1;
		    	end
		    end
		    READ_ADD: begin
		    	if (counter_sp<10) begin
		    	 	rx_data <= {rx_data,MOSI};
		    	    counter_sp <= counter_sp + 1;
		    	end
		    	else if (counter_sp==10) begin
		    		rx_valid <= 1;
		    	end
		    end
		    READ_DATA: begin
		    	if (counter_sp<10) begin
		    	 	rx_data <= {rx_data,MOSI};
		    	    counter_sp <= counter_sp + 1;
		    	end
		    	else if (tx_valid && counter_ps>=0) begin
		    		MISO <= tx_data[counter_ps];
		    		if (counter_ps!=0) begin //numbers are unsigned, MISO holds last value
		    			counter_ps <= counter_ps - 1;
		    		end
		    	end
		    end
		endcase
	end
end
endmodule