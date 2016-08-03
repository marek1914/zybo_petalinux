# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /opt/Xilinx/Projects/zybo_petalinux_piano/zybo_petalinux_piano.tmp/axi_pmodmic_spi_0_v1_0_project/axi_pmodmic_spi_0_v1_0_project.cache/wt [current_project]
set_property parent.project_path /opt/Xilinx/Projects/zybo_petalinux_piano/zybo_petalinux_piano.tmp/axi_pmodmic_spi_0_v1_0_project/axi_pmodmic_spi_0_v1_0_project.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_repo_paths /opt/Xilinx/Projects/zybo_petalinux_piano/ip_repo [current_project]
read_vhdl -library xil_defaultlib {
  /opt/Xilinx/Projects/zybo_petalinux_piano/ip_repo/axi_pmodmic_spi_0_1.0/hdl/update_fifo_0.vhd
  /opt/Xilinx/Projects/zybo_petalinux_piano/ip_repo/axi_pmodmic_spi_0_1.0/hdl/generate_spi_clk_0.vhd
  /opt/Xilinx/Projects/zybo_petalinux_piano/ip_repo/axi_pmodmic_spi_0_1.0/hdl/fifo_adi_0.vhd
  /opt/Xilinx/Projects/zybo_petalinux_piano/ip_repo/axi_pmodmic_spi_0_1.0/hdl/axi_ctrlif.vhd
  /opt/Xilinx/Projects/zybo_petalinux_piano/ip_repo/axi_pmodmic_spi_0_1.0/hdl/spi_cntrl_0.vhd
  /opt/Xilinx/Projects/zybo_petalinux_piano/ip_repo/axi_pmodmic_spi_0_1.0/hdl/axi_pmodmic_spi_0_v1_0.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top axi_pmodmic_spi_0_v1_0 -part xc7z010clg400-1


write_checkpoint -force -noxdef axi_pmodmic_spi_0_v1_0.dcp

catch { report_utilization -file axi_pmodmic_spi_0_v1_0_utilization_synth.rpt -pb axi_pmodmic_spi_0_v1_0_utilization_synth.pb }
