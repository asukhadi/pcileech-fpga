#
# RUN FROM WITHIN "Vivado Tcl Shell" WITH COMMAND:
# source vivado_build.tcl -notrace
#
puts "-------------------------------------------------------"
puts " STARTING SYNTHESIS STEP.                              "
puts "-------------------------------------------------------"
launch_runs synth_1
puts "-------------------------------------------------------"
puts " WAITING FOR SYNTHESIS STEP TO FINISH ...              "
puts " THIS IS LIKELY TO TAKE A VERY LONG TIME.              "
puts "-------------------------------------------------------"
wait_on_run synth_1
puts "-------------------------------------------------------"
puts " STARTING IMPLEMENTATION STEP.                         "
puts "-------------------------------------------------------"
launch_runs impl_1 -to_step write_bitstream
puts "-------------------------------------------------------"
puts " WAITING FOR IMPLEMENTATION STEP TO FINISH ...         "
puts " THIS IS LIKELY TO TAKE A VERY LONG TIME.              "
puts "-------------------------------------------------------"
wait_on_run impl_1
file copy -force ./pcileech_screamer_m2/pcileech_screamer_m2.runs/impl_1/pcileech_screamer_m2_top.bin pcileech_screamer_m2.bin
puts "-------------------------------------------------------"
puts " BUILD HOPEFULLY COMPLETED.                            "
puts "-------------------------------------------------------"