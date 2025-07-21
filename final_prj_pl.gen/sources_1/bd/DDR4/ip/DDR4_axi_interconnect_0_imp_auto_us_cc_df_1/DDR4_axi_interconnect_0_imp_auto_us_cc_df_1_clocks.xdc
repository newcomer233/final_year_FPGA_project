###############################################################################################################
# Core-Level Timing Constraints for axi_dwidth_converter Component "DDR4_axi_interconnect_0_imp_auto_us_cc_df_1"
###############################################################################################################
#
# This component is configured to perform asynchronous clock-domain-crossing.
# In order for these core-level constraints to work properly, 
# the following rules apply to your system-level timing constraints:
#   1. Each of the nets connected to the s_axi_aclk and m_axi_aclk ports of this component
#      must have exactly one clock defined on it, using either
#      a) a create_clock command on a top-level clock pin specified in your system XDC file, or
#      b) a create_generated_clock command, typically generated automatically by a core 
#          producing a derived clock signal.
#   2. The s_axi_aclk and m_axi_aclk ports of this component should not be connected to the
#      same clock source.
#
set s_ram_cells [filter [all_fanout -from [get_ports -scoped_to_current_instance s_axi_aclk] -flat -endpoints_only -only_cells] {(NAME =~ *dw_fifogen*) && (PRIMITIVE_SUBGROUP==dram || PRIMITIVE_SUBGROUP==LUTRAM)}]
set m_ram_cells [filter [all_fanout -from [get_ports -scoped_to_current_instance m_axi_aclk] -flat -endpoints_only -only_cells] {(NAME =~ *dw_fifogen*) && (PRIMITIVE_SUBGROUP==dram || PRIMITIVE_SUBGROUP==LUTRAM)}]
set_false_path -from [get_pins -of $s_ram_cells -filter {REF_PIN_NAME == CLK}] -through [get_pins -of $s_ram_cells -filter {REF_PIN_NAME == O}] 
set_false_path -from [get_pins -of $m_ram_cells -filter {REF_PIN_NAME == CLK}] -through [get_pins -of $m_ram_cells -filter {REF_PIN_NAME == O}] 

create_waiver -type CDC -id {CDC-1} -user "axi_dwidth_converter" -desc "Timing-uncritical signals driving a simple status LED (combined from multiple sources)" -tags "1165309" -scope -internal \
    -to [get_pins -quiet -filter REF_PIN_NAME=~*CE -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_*.gen_pktfifo_*_upsizer.pktfifo_*_data_inst/dw_fifogen_*/inst_fifo_gen/gaxi_full_lite.*_ch.*.axi_*/grf.rf/gntv_or_sync_fifo.gl0.*/*/*[*]}]]

create_waiver -type CDC -id {CDC-1} -user "axi_dwidth_converter" -desc "Timing-uncritical signals driving a simple status LED (combined from multiple sources)" -tags "1165309" -scope -internal \
    -to [get_pins -quiet -filter REF_PIN_NAME=~* -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_*.gen_pktfifo_*_upsizer.pktfifo_*_data_inst/dw_fifogen_*/inst_fifo_gen/gaxi_full_lite.*_ch.*.axi_*/grf.rf/gntv_or_sync_fifo.*/gdm.dm_gen.dm/*/*}]]

create_waiver -type CDC -id {CDC-1} -user "axi_dwidth_converter" -desc "Timing-uncritical signals driving a simple status LED (combined from multiple sources)" -tags "1165309" -scope -internal \
    -to [get_pins -quiet -filter REF_PIN_NAME=~*D -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_*.gen_pktfifo_*_upsizer.pktfifo_*_data_inst/dw_fifogen_*/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.*/*}]]

create_waiver -type CDC -id {CDC-1} -user "axi_dwidth_converter" -desc "Timing-uncritical signals driving a simple status LED (combined from multiple sources)" -tags "1165309" -scope -internal \
    -to [get_pins -quiet -filter REF_PIN_NAME=~*D -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_*.gen_pktfifo_*_upsizer.pktfifo_*_data_inst/dw_fifogen_*/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.*/*[*]}]]

create_waiver -type CDC -id {CDC-1} -user "axi_dwidth_converter" -desc "Timing-uncritical signals driving a simple status LED (combined from multiple sources)" -tags "1165309" -scope -internal \
    -to [get_pins -quiet -filter REF_PIN_NAME=~* -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_*.gen_pktfifo_*_upsizer.pktfifo_*_data_inst/dw_fifogen_*/inst_fifo_gen/gaxi_full_lite.*_ch.*.axi_*/grf.rf/gntv_or_sync_fifo.gl0.*/*.*/*}]]

create_waiver -type CDC -id {CDC-1} -user "axi_dwidth_converter" -desc "Timing-uncritical signals driving a simple status LED (combined from multiple sources)" -tags "1165309" -scope -internal \
    -to [get_pins -quiet -filter REF_PIN_NAME=~*D -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_*.gen_b_clk_conv.gen_*_sync_conv.*_sync_clock_converter/gen_sync_clock_converter.s_tready_*_reg}]]

create_waiver -type CDC -id {CDC-1} -user "axi_dwidth_converter" -desc "Timing-uncritical signals driving a simple status LED (combined from multiple sources)" -tags "1165309" -scope -internal \
    -to [get_pins -quiet -filter REF_PIN_NAME=~* -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_*.gen_pktfifo_*_upsizer.pktfifo_*_data_inst/*}]]

create_waiver -type CDC -id {CDC-1} -user "axi_dwidth_converter" -desc "Timing-uncritical signals driving a simple status LED (combined from multiple sources)" -tags "1165309" -scope -internal \
    -to [get_pins -quiet -filter REF_PIN_NAME=~* -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/*}]]

create_waiver -type CDC -id {CDC-1} -user "axi_dwidth_converter" -desc "Timing-uncritical signals driving a simple status LED (combined from multiple sources)" -tags "1165309" -scope -internal \
    -to [get_pins -quiet -filter REF_PIN_NAME=~*D -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/gen_clock_conv.gen_sync_conv.axic_sample_cycle_inst/gen_sample_cycle.*_*_*_reg}]]

create_waiver -type CDC -id {CDC-1} -user "axi_dwidth_converter" -desc "Timing-uncritical signals driving a simple status LED (combined from multiple sources)" -tags "1165309" -scope -internal \
    -to [get_pins -quiet -filter REF_PIN_NAME=~*D -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/gen_clock_conv.gen_sync_conv.axic_sample_cycle_inst/gen_sample_cycle.gen_delay[*].sample_cycle_d_reg[*]}]]

create_waiver -type CDC -id {CDC-10} -user "axi_dwidth_converter" -desc "Timing-uncritical signals driving a simple status LED (combined from multiple sources)" -tags "1165309" -scope -internal \
    -to [get_pins -quiet -filter REF_PIN_NAME=~*D -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/gen_clock_conv.gen_sync_conv.axic_sample_cycle_inst/gen_sample_cycle.gen_delay[*].sample_cycle_d_reg[*]}]]

create_waiver -type CDC -id {CDC-10} -user "axi_dwidth_converter" -desc "Timing-uncritical signals driving a simple status LED (combined from multiple sources)" -tags "1165309" -scope -internal \
    -to [get_pins -quiet -filter REF_PIN_NAME=~*PRE -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/*/dw_fifogen_*/inst_fifo_gen/*/grf.rf/rstblk/*/arststages_ff_reg[*]}]]

create_waiver -type CDC -id {CDC-10} -user "axi_dwidth_converter" -desc "Timing-uncritical signals driving a simple status LED (combined from multiple sources)" -tags "1165309" -scope -internal \
    -to [get_pins -quiet -filter REF_PIN_NAME=~*PRE -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/*/inst_fifo_gen/*/grf.rf/rstblk/*/arststages_ff_reg[*]}]]

create_waiver -type CDC -id {CDC-2} -user "axi_dwidth_converter" -desc "Timing-uncritical signals driving a simple status LED (combined from multiple sources)" -tags "1165309" -scope -internal \
    -to [get_pins -quiet -filter REF_PIN_NAME=~*D -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/gen_clock_conv.gen_sync_conv.axic_sample_cycle_inst/gen_sample_cycle.gen_delay[*].sample_cycle_*_reg[*]}]]

create_waiver -type CDC -id {CDC-11} -user "axi_dwidth_converter" -desc "Timing-uncritical signals driving a simple status LED (combined from multiple sources)" -tags "1165309" -scope -internal \
    -to [get_pins -quiet -filter REF_PIN_NAME=~*PRE -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/*/*/inst_fifo_*/*/grf.rf/rstblk/*/arststages_ff_reg[*]}]]

create_waiver -type CDC -id {CDC-11} -user "axi_dwidth_converter" -desc "Timing-uncritical signals driving a simple status LED (combined from multiple sources)" -tags "1165309" -scope -internal \
    -to [get_pins -quiet -filter REF_PIN_NAME=~*PRE -of_objects [get_cells -hierarchical -filter {NAME =~ */inst/gen_upsizer.gen_full_upsizer.axi_upsizer_inst/*/inst_fifo_gen/*/grf.rf/rstblk/*/arststages_ff_reg[*]}]]




