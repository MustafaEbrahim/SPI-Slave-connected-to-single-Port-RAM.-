vlib work
vlog RAM.v SPI.v Wrapper.v tb.v
vsim -voptargs=+acc work.SPI_Wrapper_tb
add wave *
run -all