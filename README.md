# 9ch-fpga-pulsegen
FPGA Many Channel Bipolar Pulse Generator

ROM_Pulse_Gen contains a compiled copy of the Altera Quartus II files used to programme the chip on an Altera Cyclone III Starter Kit.

FPGA_PCB_1 and 2 are images of the combination of three separate PCB's used to allow for SMA connection in and out of the FPGA Starter Kit Board.
The blue board is the Cyclone III FPGA Starter Kit from Altera
http://www.digikey.com.au/product-detail/en/altera/DK-START-3C25N/544-2370-ND/1473395
The green board is the HSMC Prototyping Daughter Card from Bitec
http://bitec-dsp.com/product/hsmc-prototyping-daugther-card/
The bare copper board is a custom board made in-house. Altium Design Files in the folder HSMC-SMA_Adapter_Board.

The attenuator board is comprised of two chips, a fixed attenuator, LAT-12+ from Minicircuits https://www.minicircuits.com/pdfs/LAT-12+.pdf and a voltage variable attenuator RVA-2500+ from Minicircuits http://www.minicircuits.com/pdfs/RVA-2500+.pdf. The PCB is a custom in-house two layer board. Altium Design Files in the folder Voltage_Variable_Attenuator_Board
