################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name PL_ACLK -period 5 [get_ports PL_ACLK]
create_clock -name ddr4_sysclk_200M -period 4.998 [get_ports ddr4_sysclk_200M]

################################################################################