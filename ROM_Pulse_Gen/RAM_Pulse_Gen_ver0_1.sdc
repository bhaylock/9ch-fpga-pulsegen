## Generated SDC file "RAM_Pulse_Gen_ver0_1.sdc"

## Copyright (C) 1991-2013 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

## DATE    "Fri Mar 11 16:40:00 2016"

##
## DEVICE  "EP3C25F324C6"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {in_clk} -period 20.000 -waveform { 0.000 10.000 } [get_ports {in_clk}]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {inst2|altpll_component|auto_generated|pll1|clk[0]} -source [get_pins {inst2|altpll_component|auto_generated|pll1|inclk[0]}] -duty_cycle 50.000 -multiply_by 64 -divide_by 5 -master_clock {in_clk} [get_pins {inst2|altpll_component|auto_generated|pll1|clk[0]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************



#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {inst2|altpll_component|auto_generated|pll1|clk[0]}]  0.500 [get_ports {pulse_out[0]}]
set_output_delay -add_delay  -clock [get_clocks {inst2|altpll_component|auto_generated|pll1|clk[0]}]  0.500 [get_ports {pulse_out[1]}]
set_output_delay -add_delay  -clock [get_clocks {inst2|altpll_component|auto_generated|pll1|clk[0]}]  0.500 [get_ports {pulse_out[2]}]
set_output_delay -add_delay  -clock [get_clocks {inst2|altpll_component|auto_generated|pll1|clk[0]}]  0.500 [get_ports {pulse_out[3]}]
set_output_delay -add_delay  -clock [get_clocks {inst2|altpll_component|auto_generated|pll1|clk[0]}]  0.500 [get_ports {pulse_out[4]}]
set_output_delay -add_delay  -clock [get_clocks {inst2|altpll_component|auto_generated|pll1|clk[0]}]  0.500 [get_ports {pulse_out[5]}]
set_output_delay -add_delay  -clock [get_clocks {inst2|altpll_component|auto_generated|pll1|clk[0]}]  0.500 [get_ports {pulse_out[6]}]
set_output_delay -add_delay  -clock [get_clocks {inst2|altpll_component|auto_generated|pll1|clk[0]}]  0.500 [get_ports {pulse_out[7]}]
set_output_delay -add_delay  -clock [get_clocks {inst2|altpll_component|auto_generated|pll1|clk[0]}]  0.500 [get_ports {pulse_out[8]}]
set_output_delay -add_delay  -clock [get_clocks {inst2|altpll_component|auto_generated|pll1|clk[0]}]  0.500 [get_ports {pulse_out[9]}]
set_output_delay -add_delay  -clock [get_clocks {inst2|altpll_component|auto_generated|pll1|clk[0]}]  0.500 [get_ports {pulse_out[10]}]
set_output_delay -add_delay  -clock [get_clocks {inst2|altpll_component|auto_generated|pll1|clk[0]}]  0.500 [get_ports {pulse_out[11]}]
set_output_delay -add_delay  -clock [get_clocks {inst2|altpll_component|auto_generated|pll1|clk[0]}]  0.500 [get_ports {pulse_out[12]}]
set_output_delay -add_delay  -clock [get_clocks {inst2|altpll_component|auto_generated|pll1|clk[0]}]  0.500 [get_ports {pulse_out[13]}]
set_output_delay -add_delay  -clock [get_clocks {inst2|altpll_component|auto_generated|pll1|clk[0]}]  0.500 [get_ports {pulse_out[14]}]
set_output_delay -add_delay  -clock [get_clocks {inst2|altpll_component|auto_generated|pll1|clk[0]}]  0.500 [get_ports {pulse_out[15]}]
set_output_delay -add_delay  -clock [get_clocks {inst2|altpll_component|auto_generated|pll1|clk[0]}]  0.500 [get_ports {pulse_out[16]}]
set_output_delay -add_delay  -clock [get_clocks {inst2|altpll_component|auto_generated|pll1|clk[0]}]  0.500 [get_ports {pulse_out[17]}]


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

