create_project project2_sequential C:/Project2_SPI -part xc7a35ticpg236-1L -force

add_files RAM.v SPI.v Wrapper.v Wrapper_Basys3.xdc

synth_design -rtl -top SPI_Wrapper > elab_sequential.log

write_schematic elaborated_schematic_sequential.pdf -format pdf -force 

launch_runs synth_1 > synth_sequential.log

wait_on_run synth_1
open_run synth_1

write_schematic synthesized_schematic_sequential.pdf -format pdf -force 

write_verilog -force SPI_Wrapper_netlist_sequential.v

launch_runs impl_1 -to_step write_bitstream 

wait_on_run impl_1
open_run impl_1

open_hw

connect_hw_server