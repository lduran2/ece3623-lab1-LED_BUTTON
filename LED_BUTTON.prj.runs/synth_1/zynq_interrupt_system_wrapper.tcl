# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 1
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Zynq_Book/LED_BUTTON.prj/LED_BUTTON.prj.cache/wt [current_project]
set_property parent.project_path C:/Zynq_Book/LED_BUTTON.prj/LED_BUTTON.prj.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
set_property ip_output_repo c:/Zynq_Book/LED_BUTTON.prj/LED_BUTTON.prj.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib C:/Zynq_Book/LED_BUTTON.prj/LED_BUTTON.prj.srcs/sources_1/bd/zynq_interrupt_system/hdl/zynq_interrupt_system_wrapper.v
add_files C:/Zynq_Book/LED_BUTTON.prj/LED_BUTTON.prj.srcs/sources_1/bd/zynq_interrupt_system/zynq_interrupt_system.bd
set_property used_in_implementation false [get_files -all c:/Zynq_Book/LED_BUTTON.prj/LED_BUTTON.prj.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_processing_system7_0_0/zynq_interrupt_system_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Zynq_Book/LED_BUTTON.prj/LED_BUTTON.prj.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_axi_gpio_0_0/zynq_interrupt_system_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Zynq_Book/LED_BUTTON.prj/LED_BUTTON.prj.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_axi_gpio_0_0/zynq_interrupt_system_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Zynq_Book/LED_BUTTON.prj/LED_BUTTON.prj.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_axi_gpio_0_0/zynq_interrupt_system_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Zynq_Book/LED_BUTTON.prj/LED_BUTTON.prj.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_axi_gpio_1_0/zynq_interrupt_system_axi_gpio_1_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Zynq_Book/LED_BUTTON.prj/LED_BUTTON.prj.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_axi_gpio_1_0/zynq_interrupt_system_axi_gpio_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Zynq_Book/LED_BUTTON.prj/LED_BUTTON.prj.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_axi_gpio_1_0/zynq_interrupt_system_axi_gpio_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Zynq_Book/LED_BUTTON.prj/LED_BUTTON.prj.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_xbar_0/zynq_interrupt_system_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Zynq_Book/LED_BUTTON.prj/LED_BUTTON.prj.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_rst_ps7_0_100M_0/zynq_interrupt_system_rst_ps7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Zynq_Book/LED_BUTTON.prj/LED_BUTTON.prj.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_rst_ps7_0_100M_0/zynq_interrupt_system_rst_ps7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Zynq_Book/LED_BUTTON.prj/LED_BUTTON.prj.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_rst_ps7_0_100M_0/zynq_interrupt_system_rst_ps7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Zynq_Book/LED_BUTTON.prj/LED_BUTTON.prj.srcs/sources_1/bd/zynq_interrupt_system/ip/zynq_interrupt_system_auto_pc_0/zynq_interrupt_system_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Zynq_Book/LED_BUTTON.prj/LED_BUTTON.prj.srcs/sources_1/bd/zynq_interrupt_system/zynq_interrupt_system_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top zynq_interrupt_system_wrapper -part xc7z010clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef zynq_interrupt_system_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file zynq_interrupt_system_wrapper_utilization_synth.rpt -pb zynq_interrupt_system_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
