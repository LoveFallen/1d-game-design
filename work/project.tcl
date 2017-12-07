set projDir "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/planAhead"
set projName "Qisiwole"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/mojo_top_0.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/starting_screen_1.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/right_display_2.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/comparator_3.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/pushB_4.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/reset_conditioner_5.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/display_6.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/initialize_7.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/switcher_8.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/alu_9.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/alu_9.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/alu_9.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/alu_9.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/counter_13.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/edge_detector_14.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/edge_detector_14.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/edge_detector_14.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/edge_detector_14.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/edge_detector_14.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/edge_detector_14.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/button_conditioner_20.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/button_conditioner_20.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/button_conditioner_20.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/button_conditioner_20.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/button_conditioner_20.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/button_conditioner_20.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/pipeline_26.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/pipeline_26.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/pipeline_26.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/pipeline_26.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/pipeline_26.v" "C:/Users/JackO/Downloads/Telegram Desktop/Qisiwole/work/verilog/pipeline_26.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "C:/Users/JackO/Downloads/Telegram\ Desktop/Qisiwole/constraint/user.ucf" "D:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
