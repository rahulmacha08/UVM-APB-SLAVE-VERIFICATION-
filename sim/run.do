#vlog mem_top.sv +incdir+C:/questasim64_10.7c/verilog_src/uvm-1.1d/src
#vsim work.seq_item_tb -sv_lib C:/questasim64_10.7c/uvm-1.1d/win64/uvm_dpi -l run.log
#vsim -novopt work.top -sv_lib C:/questasim64_10.7c/uvm-1.1d/win64/uvm_dpi -l run.log +UVM_TESTNAME-phases_test
#run -all

vlog APB_TOP.sv +incdir+C:/questasim64_2021.1/verilog_src/uvm-1.1d/src +acc
vsim work.apb_top -sv_lib C:/questasim64_2021.1/uvm-1.1d/win64/uvm_dpi -l run.log
#vsim work.sram_top -sv_lib C:/questasim64_10.7c/uvm-1.1d/win64/uvm_dpi -l run.log #+UVM_TESTNAME=sram_test
#run -all
