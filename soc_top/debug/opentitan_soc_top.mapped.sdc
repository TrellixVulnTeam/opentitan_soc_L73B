###################################################################

# Created by write_sdc on Thu May 27 06:34:43 2021

###################################################################
set sdc_version 2.1

#set_units -time ps -resistance kOhm -capacitance fF -voltage V -current uA
create_clock [get_ports clk_i]  -name core_clock  -period 10000  -waveform {0 5000}
group_path -name FEEDTHROUGH  -from [list [get_ports rst_ni] [get_ports sel] [get_ports spi_ss] [get_ports spi_mosi] [get_ports uart_rx_inst] [get_ports uart_rx] [get_ports tempsense_clkref]]  -to [list [get_ports uart_tx] [get_ports uart_txen] [get_ports tempsense_clkout] [get_ports {gpio_o[19]}] [get_ports {gpio_o[18]}] [get_ports {gpio_o[17]}] [get_ports {gpio_o[16]}] [get_ports {gpio_o[15]}] [get_ports {gpio_o[14]}] [get_ports {gpio_o[13]}] [get_ports {gpio_o[12]}] [get_ports {gpio_o[11]}] [get_ports {gpio_o[10]}] [get_ports {gpio_o[9]}] [get_ports {gpio_o[8]}] [get_ports {gpio_o[7]}] [get_ports {gpio_o[6]}] [get_ports {gpio_o[5]}] [get_ports {gpio_o[4]}] [get_ports {gpio_o[3]}] [get_ports {gpio_o[2]}] [get_ports {gpio_o[1]}] [get_ports {gpio_o[0]}] [get_ports system_rst_ni] [get_ports {iccm_to_xbar[51]}] [get_ports {iccm_to_xbar[50]}] [get_ports {iccm_to_xbar[49]}] [get_ports {iccm_to_xbar[48]}] [get_ports {iccm_to_xbar[47]}] [get_ports {iccm_to_xbar[46]}] [get_ports {iccm_to_xbar[45]}] [get_ports {iccm_to_xbar[44]}] [get_ports {iccm_to_xbar[43]}] [get_ports {iccm_to_xbar[42]}] [get_ports {iccm_to_xbar[41]}] [get_ports {iccm_to_xbar[40]}] [get_ports {iccm_to_xbar[39]}] [get_ports {iccm_to_xbar[38]}] [get_ports {iccm_to_xbar[37]}] [get_ports {iccm_to_xbar[36]}] [get_ports {iccm_to_xbar[35]}] [get_ports {iccm_to_xbar[34]}] [get_ports {iccm_to_xbar[33]}] [get_ports {iccm_to_xbar[32]}] [get_ports {iccm_to_xbar[31]}] [get_ports {iccm_to_xbar[30]}] [get_ports {iccm_to_xbar[29]}] [get_ports {iccm_to_xbar[28]}] [get_ports {iccm_to_xbar[27]}] [get_ports {iccm_to_xbar[26]}] [get_ports {iccm_to_xbar[25]}] [get_ports {iccm_to_xbar[24]}] [get_ports {iccm_to_xbar[23]}] [get_ports {iccm_to_xbar[22]}] [get_ports {iccm_to_xbar[21]}] [get_ports {iccm_to_xbar[20]}] [get_ports {iccm_to_xbar[19]}] [get_ports {iccm_to_xbar[18]}] [get_ports {iccm_to_xbar[17]}] [get_ports {iccm_to_xbar[16]}] [get_ports {iccm_to_xbar[15]}] [get_ports {iccm_to_xbar[14]}] [get_ports {iccm_to_xbar[13]}] [get_ports {iccm_to_xbar[12]}] [get_ports {iccm_to_xbar[11]}] [get_ports {iccm_to_xbar[10]}] [get_ports {iccm_to_xbar[9]}] [get_ports {iccm_to_xbar[8]}] [get_ports {iccm_to_xbar[7]}] [get_ports {iccm_to_xbar[6]}] [get_ports {iccm_to_xbar[5]}] [get_ports {iccm_to_xbar[4]}] [get_ports {iccm_to_xbar[3]}] [get_ports {iccm_to_xbar[2]}] [get_ports {iccm_to_xbar[1]}] [get_ports {iccm_to_xbar[0]}] [get_ports {dccm_to_xbar[51]}] [get_ports {dccm_to_xbar[50]}] [get_ports {dccm_to_xbar[49]}] [get_ports {dccm_to_xbar[48]}] [get_ports {dccm_to_xbar[47]}] [get_ports {dccm_to_xbar[46]}] [get_ports {dccm_to_xbar[45]}] [get_ports {dccm_to_xbar[44]}] [get_ports {dccm_to_xbar[43]}] [get_ports {dccm_to_xbar[42]}] [get_ports {dccm_to_xbar[41]}] [get_ports {dccm_to_xbar[40]}] [get_ports {dccm_to_xbar[39]}] [get_ports {dccm_to_xbar[38]}] [get_ports {dccm_to_xbar[37]}] [get_ports {dccm_to_xbar[36]}] [get_ports {dccm_to_xbar[35]}] [get_ports {dccm_to_xbar[34]}] [get_ports {dccm_to_xbar[33]}] [get_ports {dccm_to_xbar[32]}] [get_ports {dccm_to_xbar[31]}] [get_ports {dccm_to_xbar[30]}] [get_ports {dccm_to_xbar[29]}] [get_ports {dccm_to_xbar[28]}] [get_ports {dccm_to_xbar[27]}] [get_ports {dccm_to_xbar[26]}] [get_ports {dccm_to_xbar[25]}] [get_ports {dccm_to_xbar[24]}] [get_ports {dccm_to_xbar[23]}] [get_ports {dccm_to_xbar[22]}] [get_ports {dccm_to_xbar[21]}] [get_ports {dccm_to_xbar[20]}] [get_ports {dccm_to_xbar[19]}] [get_ports {dccm_to_xbar[18]}] [get_ports {dccm_to_xbar[17]}] [get_ports {dccm_to_xbar[16]}] [get_ports {dccm_to_xbar[15]}] [get_ports {dccm_to_xbar[14]}] [get_ports {dccm_to_xbar[13]}] [get_ports {dccm_to_xbar[12]}] [get_ports {dccm_to_xbar[11]}] [get_ports {dccm_to_xbar[10]}] [get_ports {dccm_to_xbar[9]}] [get_ports {dccm_to_xbar[8]}] [get_ports {dccm_to_xbar[7]}] [get_ports {dccm_to_xbar[6]}] [get_ports {dccm_to_xbar[5]}] [get_ports {dccm_to_xbar[4]}] [get_ports {dccm_to_xbar[3]}] [get_ports {dccm_to_xbar[2]}] [get_ports {dccm_to_xbar[1]}] [get_ports {dccm_to_xbar[0]}] [get_ports {xbar_to_iccm[85]}] [get_ports {xbar_to_iccm[84]}] [get_ports {xbar_to_iccm[83]}] [get_ports {xbar_to_iccm[82]}] [get_ports {xbar_to_iccm[81]}] [get_ports {xbar_to_iccm[80]}] [get_ports {xbar_to_iccm[79]}] [get_ports {xbar_to_iccm[78]}] [get_ports {xbar_to_iccm[77]}] [get_ports {xbar_to_iccm[76]}] [get_ports {xbar_to_iccm[75]}] [get_ports {xbar_to_iccm[74]}] [get_ports {xbar_to_iccm[73]}] [get_ports {xbar_to_iccm[72]}] [get_ports {xbar_to_iccm[71]}] [get_ports {xbar_to_iccm[70]}] [get_ports {xbar_to_iccm[69]}] [get_ports {xbar_to_iccm[68]}] [get_ports {xbar_to_iccm[67]}] [get_ports {xbar_to_iccm[66]}] [get_ports {xbar_to_iccm[65]}] [get_ports {xbar_to_iccm[64]}] [get_ports {xbar_to_iccm[63]}] [get_ports {xbar_to_iccm[62]}] [get_ports {xbar_to_iccm[61]}] [get_ports {xbar_to_iccm[60]}] [get_ports {xbar_to_iccm[59]}] [get_ports {xbar_to_iccm[58]}] [get_ports {xbar_to_iccm[57]}] [get_ports {xbar_to_iccm[56]}] [get_ports {xbar_to_iccm[55]}] [get_ports {xbar_to_iccm[54]}] [get_ports {xbar_to_iccm[53]}] [get_ports {xbar_to_iccm[52]}] [get_ports {xbar_to_iccm[51]}] [get_ports {xbar_to_iccm[50]}] [get_ports {xbar_to_iccm[49]}] [get_ports {xbar_to_iccm[48]}] [get_ports {xbar_to_iccm[47]}] [get_ports {xbar_to_iccm[46]}] [get_ports {xbar_to_iccm[45]}] [get_ports {xbar_to_iccm[44]}] [get_ports {xbar_to_iccm[43]}] [get_ports {xbar_to_iccm[42]}] [get_ports {xbar_to_iccm[41]}] [get_ports {xbar_to_iccm[40]}] [get_ports {xbar_to_iccm[39]}] [get_ports {xbar_to_iccm[38]}] [get_ports {xbar_to_iccm[37]}] [get_ports {xbar_to_iccm[36]}] [get_ports {xbar_to_iccm[35]}] [get_ports {xbar_to_iccm[34]}] [get_ports {xbar_to_iccm[33]}] [get_ports {xbar_to_iccm[32]}] [get_ports {xbar_to_iccm[31]}] [get_ports {xbar_to_iccm[30]}] [get_ports {xbar_to_iccm[29]}] [get_ports {xbar_to_iccm[28]}] [get_ports {xbar_to_iccm[27]}] [get_ports {xbar_to_iccm[26]}] [get_ports {xbar_to_iccm[25]}] [get_ports {xbar_to_iccm[24]}] [get_ports {xbar_to_iccm[23]}] [get_ports {xbar_to_iccm[22]}] [get_ports {xbar_to_iccm[21]}] [get_ports {xbar_to_iccm[20]}] [get_ports {xbar_to_iccm[19]}] [get_ports {xbar_to_iccm[18]}] [get_ports {xbar_to_iccm[17]}] [get_ports {xbar_to_iccm[16]}] [get_ports {xbar_to_iccm[15]}] [get_ports {xbar_to_iccm[14]}] [get_ports {xbar_to_iccm[13]}] [get_ports {xbar_to_iccm[12]}] [get_ports {xbar_to_iccm[11]}] [get_ports {xbar_to_iccm[10]}] [get_ports {xbar_to_iccm[9]}] [get_ports {xbar_to_iccm[8]}] [get_ports {xbar_to_iccm[7]}] [get_ports {xbar_to_iccm[6]}] [get_ports {xbar_to_iccm[5]}] [get_ports {xbar_to_iccm[4]}] [get_ports {xbar_to_iccm[3]}] [get_ports {xbar_to_iccm[2]}] [get_ports {xbar_to_iccm[1]}] [get_ports {xbar_to_iccm[0]}] [get_ports {xbar_to_dccm[85]}] [get_ports {xbar_to_dccm[84]}] [get_ports {xbar_to_dccm[83]}] [get_ports {xbar_to_dccm[82]}] [get_ports {xbar_to_dccm[81]}] [get_ports {xbar_to_dccm[80]}] [get_ports {xbar_to_dccm[79]}] [get_ports {xbar_to_dccm[78]}] [get_ports {xbar_to_dccm[77]}] [get_ports {xbar_to_dccm[76]}] [get_ports {xbar_to_dccm[75]}] [get_ports {xbar_to_dccm[74]}] [get_ports {xbar_to_dccm[73]}] [get_ports {xbar_to_dccm[72]}] [get_ports {xbar_to_dccm[71]}] [get_ports {xbar_to_dccm[70]}] [get_ports {xbar_to_dccm[69]}] [get_ports {xbar_to_dccm[68]}] [get_ports {xbar_to_dccm[67]}] [get_ports {xbar_to_dccm[66]}] [get_ports {xbar_to_dccm[65]}] [get_ports {xbar_to_dccm[64]}] [get_ports {xbar_to_dccm[63]}] [get_ports {xbar_to_dccm[62]}] [get_ports {xbar_to_dccm[61]}] [get_ports {xbar_to_dccm[60]}] [get_ports {xbar_to_dccm[59]}] [get_ports {xbar_to_dccm[58]}] [get_ports {xbar_to_dccm[57]}] [get_ports {xbar_to_dccm[56]}] [get_ports {xbar_to_dccm[55]}] [get_ports {xbar_to_dccm[54]}] [get_ports {xbar_to_dccm[53]}] [get_ports {xbar_to_dccm[52]}] [get_ports {xbar_to_dccm[51]}] [get_ports {xbar_to_dccm[50]}] [get_ports {xbar_to_dccm[49]}] [get_ports {xbar_to_dccm[48]}] [get_ports {xbar_to_dccm[47]}] [get_ports {xbar_to_dccm[46]}] [get_ports {xbar_to_dccm[45]}] [get_ports {xbar_to_dccm[44]}] [get_ports {xbar_to_dccm[43]}] [get_ports {xbar_to_dccm[42]}] [get_ports {xbar_to_dccm[41]}] [get_ports {xbar_to_dccm[40]}] [get_ports {xbar_to_dccm[39]}] [get_ports {xbar_to_dccm[38]}] [get_ports {xbar_to_dccm[37]}] [get_ports {xbar_to_dccm[36]}] [get_ports {xbar_to_dccm[35]}] [get_ports {xbar_to_dccm[34]}] [get_ports {xbar_to_dccm[33]}] [get_ports {xbar_to_dccm[32]}] [get_ports {xbar_to_dccm[31]}] [get_ports {xbar_to_dccm[30]}] [get_ports {xbar_to_dccm[29]}] [get_ports {xbar_to_dccm[28]}] [get_ports {xbar_to_dccm[27]}] [get_ports {xbar_to_dccm[26]}] [get_ports {xbar_to_dccm[25]}] [get_ports {xbar_to_dccm[24]}] [get_ports {xbar_to_dccm[23]}] [get_ports {xbar_to_dccm[22]}] [get_ports {xbar_to_dccm[21]}] [get_ports {xbar_to_dccm[20]}] [get_ports {xbar_to_dccm[19]}] [get_ports {xbar_to_dccm[18]}] [get_ports {xbar_to_dccm[17]}] [get_ports {xbar_to_dccm[16]}] [get_ports {xbar_to_dccm[15]}] [get_ports {xbar_to_dccm[14]}] [get_ports {xbar_to_dccm[13]}] [get_ports {xbar_to_dccm[12]}] [get_ports {xbar_to_dccm[11]}] [get_ports {xbar_to_dccm[10]}] [get_ports {xbar_to_dccm[9]}] [get_ports {xbar_to_dccm[8]}] [get_ports {xbar_to_dccm[7]}] [get_ports {xbar_to_dccm[6]}] [get_ports {xbar_to_dccm[5]}] [get_ports {xbar_to_dccm[4]}] [get_ports {xbar_to_dccm[3]}] [get_ports {xbar_to_dccm[2]}] [get_ports {xbar_to_dccm[1]}] [get_ports {xbar_to_dccm[0]}] [get_ports {r_Clock_Count[15]}] [get_ports {r_Clock_Count[14]}] [get_ports {r_Clock_Count[13]}] [get_ports {r_Clock_Count[12]}] [get_ports {r_Clock_Count[11]}] [get_ports {r_Clock_Count[10]}] [get_ports {r_Clock_Count[9]}] [get_ports {r_Clock_Count[8]}] [get_ports {r_Clock_Count[7]}] [get_ports {r_Clock_Count[6]}] [get_ports {r_Clock_Count[5]}] [get_ports {r_Clock_Count[4]}] [get_ports {r_Clock_Count[3]}] [get_ports {r_Clock_Count[2]}] [get_ports {r_Clock_Count[1]}] [get_ports {r_Clock_Count[0]}] [get_ports {r_Bit_Index[2]}] [get_ports {r_Bit_Index[1]}] [get_ports {r_Bit_Index[0]}] [get_ports {r_SM_Main[2]}] [get_ports {r_SM_Main[1]}] [get_ports {r_SM_Main[0]}] [get_ports {r_Rx_Byte[7]}] [get_ports {r_Rx_Byte[6]}] [get_ports {r_Rx_Byte[5]}] [get_ports {r_Rx_Byte[4]}] [get_ports {r_Rx_Byte[3]}] [get_ports {r_Rx_Byte[2]}] [get_ports {r_Rx_Byte[1]}] [get_ports {r_Rx_Byte[0]}] [get_ports r_Rx_DV] [get_ports r_Rx_Data_R] [get_ports r_Rx_Data] [get_ports {rx_spi_inst_i[31]}] [get_ports {rx_spi_inst_i[30]}] [get_ports {rx_spi_inst_i[29]}] [get_ports {rx_spi_inst_i[28]}] [get_ports {rx_spi_inst_i[27]}] [get_ports {rx_spi_inst_i[26]}] [get_ports {rx_spi_inst_i[25]}] [get_ports {rx_spi_inst_i[24]}] [get_ports {rx_spi_inst_i[23]}] [get_ports {rx_spi_inst_i[22]}] [get_ports {rx_spi_inst_i[21]}] [get_ports {rx_spi_inst_i[20]}] [get_ports {rx_spi_inst_i[19]}] [get_ports {rx_spi_inst_i[18]}] [get_ports {rx_spi_inst_i[17]}] [get_ports {rx_spi_inst_i[16]}] [get_ports {rx_spi_inst_i[15]}] [get_ports {rx_spi_inst_i[14]}] [get_ports {rx_spi_inst_i[13]}] [get_ports {rx_spi_inst_i[12]}] [get_ports {rx_spi_inst_i[11]}] [get_ports {rx_spi_inst_i[10]}] [get_ports {rx_spi_inst_i[9]}] [get_ports {rx_spi_inst_i[8]}] [get_ports {rx_spi_inst_i[7]}] [get_ports {rx_spi_inst_i[6]}] [get_ports {rx_spi_inst_i[5]}] [get_ports {rx_spi_inst_i[4]}] [get_ports {rx_spi_inst_i[3]}] [get_ports {rx_spi_inst_i[2]}] [get_ports {rx_spi_inst_i[1]}] [get_ports {rx_spi_inst_i[0]}] [get_ports rx_spi_valid_i] [get_ports {command[31]}] [get_ports {command[30]}] [get_ports {command[29]}] [get_ports {command[28]}] [get_ports {command[27]}] [get_ports {command[26]}] [get_ports {command[25]}] [get_ports {command[24]}] [get_ports {command[23]}] [get_ports {command[22]}] [get_ports {command[21]}] [get_ports {command[20]}] [get_ports {command[19]}] [get_ports {command[18]}] [get_ports {command[17]}] [get_ports {command[16]}] [get_ports {command[15]}] [get_ports {command[14]}] [get_ports {command[13]}] [get_ports {command[12]}] [get_ports {command[11]}] [get_ports {command[10]}] [get_ports {command[9]}] [get_ports {command[8]}] [get_ports {command[7]}] [get_ports {command[6]}] [get_ports {command[5]}] [get_ports {command[4]}] [get_ports {command[3]}] [get_ports {command[2]}] [get_ports {command[1]}] [get_ports {command[0]}] [get_ports {data_out[31]}] [get_ports {data_out[30]}] [get_ports {data_out[29]}] [get_ports {data_out[28]}] [get_ports {data_out[27]}] [get_ports {data_out[26]}] [get_ports {data_out[25]}] [get_ports {data_out[24]}] [get_ports {data_out[23]}] [get_ports {data_out[22]}] [get_ports {data_out[21]}] [get_ports {data_out[20]}] [get_ports {data_out[19]}] [get_ports {data_out[18]}] [get_ports {data_out[17]}] [get_ports {data_out[16]}] [get_ports {data_out[15]}] [get_ports {data_out[14]}] [get_ports {data_out[13]}] [get_ports {data_out[12]}] [get_ports {data_out[11]}] [get_ports {data_out[10]}] [get_ports {data_out[9]}] [get_ports {data_out[8]}] [get_ports {data_out[7]}] [get_ports {data_out[6]}] [get_ports {data_out[5]}] [get_ports {data_out[4]}] [get_ports {data_out[3]}] [get_ports {data_out[2]}] [get_ports {data_out[1]}] [get_ports {data_out[0]}] [get_ports {rcv_bit_count[4]}] [get_ports {rcv_bit_count[3]}] [get_ports {rcv_bit_count[2]}] [get_ports {rcv_bit_count[1]}] [get_ports {rcv_bit_count[0]}] [get_ports {prev_rcv_bit_count[4]}] [get_ports {prev_rcv_bit_count[3]}] [get_ports {prev_rcv_bit_count[2]}] [get_ports {prev_rcv_bit_count[1]}] [get_ports {prev_rcv_bit_count[0]}]]
group_path -name REGIN  -from [list [get_ports rst_ni] [get_ports sel] [get_ports spi_ss] [get_ports spi_mosi] [get_ports uart_rx_inst] [get_ports uart_rx] [get_ports tempsense_clkref]]
group_path -name REGOUT  -to [list [get_ports uart_tx] [get_ports uart_txen] [get_ports tempsense_clkout] [get_ports {gpio_o[19]}] [get_ports {gpio_o[18]}] [get_ports {gpio_o[17]}] [get_ports {gpio_o[16]}] [get_ports {gpio_o[15]}] [get_ports {gpio_o[14]}] [get_ports {gpio_o[13]}] [get_ports {gpio_o[12]}] [get_ports {gpio_o[11]}] [get_ports {gpio_o[10]}] [get_ports {gpio_o[9]}] [get_ports {gpio_o[8]}] [get_ports {gpio_o[7]}] [get_ports {gpio_o[6]}] [get_ports {gpio_o[5]}] [get_ports {gpio_o[4]}] [get_ports {gpio_o[3]}] [get_ports {gpio_o[2]}] [get_ports {gpio_o[1]}] [get_ports {gpio_o[0]}] [get_ports system_rst_ni] [get_ports {iccm_to_xbar[51]}] [get_ports {iccm_to_xbar[50]}] [get_ports {iccm_to_xbar[49]}] [get_ports {iccm_to_xbar[48]}] [get_ports {iccm_to_xbar[47]}] [get_ports {iccm_to_xbar[46]}] [get_ports {iccm_to_xbar[45]}] [get_ports {iccm_to_xbar[44]}] [get_ports {iccm_to_xbar[43]}] [get_ports {iccm_to_xbar[42]}] [get_ports {iccm_to_xbar[41]}] [get_ports {iccm_to_xbar[40]}] [get_ports {iccm_to_xbar[39]}] [get_ports {iccm_to_xbar[38]}] [get_ports {iccm_to_xbar[37]}] [get_ports {iccm_to_xbar[36]}] [get_ports {iccm_to_xbar[35]}] [get_ports {iccm_to_xbar[34]}] [get_ports {iccm_to_xbar[33]}] [get_ports {iccm_to_xbar[32]}] [get_ports {iccm_to_xbar[31]}] [get_ports {iccm_to_xbar[30]}] [get_ports {iccm_to_xbar[29]}] [get_ports {iccm_to_xbar[28]}] [get_ports {iccm_to_xbar[27]}] [get_ports {iccm_to_xbar[26]}] [get_ports {iccm_to_xbar[25]}] [get_ports {iccm_to_xbar[24]}] [get_ports {iccm_to_xbar[23]}] [get_ports {iccm_to_xbar[22]}] [get_ports {iccm_to_xbar[21]}] [get_ports {iccm_to_xbar[20]}] [get_ports {iccm_to_xbar[19]}] [get_ports {iccm_to_xbar[18]}] [get_ports {iccm_to_xbar[17]}] [get_ports {iccm_to_xbar[16]}] [get_ports {iccm_to_xbar[15]}] [get_ports {iccm_to_xbar[14]}] [get_ports {iccm_to_xbar[13]}] [get_ports {iccm_to_xbar[12]}] [get_ports {iccm_to_xbar[11]}] [get_ports {iccm_to_xbar[10]}] [get_ports {iccm_to_xbar[9]}] [get_ports {iccm_to_xbar[8]}] [get_ports {iccm_to_xbar[7]}] [get_ports {iccm_to_xbar[6]}] [get_ports {iccm_to_xbar[5]}] [get_ports {iccm_to_xbar[4]}] [get_ports {iccm_to_xbar[3]}] [get_ports {iccm_to_xbar[2]}] [get_ports {iccm_to_xbar[1]}] [get_ports {iccm_to_xbar[0]}] [get_ports {dccm_to_xbar[51]}] [get_ports {dccm_to_xbar[50]}] [get_ports {dccm_to_xbar[49]}] [get_ports {dccm_to_xbar[48]}] [get_ports {dccm_to_xbar[47]}] [get_ports {dccm_to_xbar[46]}] [get_ports {dccm_to_xbar[45]}] [get_ports {dccm_to_xbar[44]}] [get_ports {dccm_to_xbar[43]}] [get_ports {dccm_to_xbar[42]}] [get_ports {dccm_to_xbar[41]}] [get_ports {dccm_to_xbar[40]}] [get_ports {dccm_to_xbar[39]}] [get_ports {dccm_to_xbar[38]}] [get_ports {dccm_to_xbar[37]}] [get_ports {dccm_to_xbar[36]}] [get_ports {dccm_to_xbar[35]}] [get_ports {dccm_to_xbar[34]}] [get_ports {dccm_to_xbar[33]}] [get_ports {dccm_to_xbar[32]}] [get_ports {dccm_to_xbar[31]}] [get_ports {dccm_to_xbar[30]}] [get_ports {dccm_to_xbar[29]}] [get_ports {dccm_to_xbar[28]}] [get_ports {dccm_to_xbar[27]}] [get_ports {dccm_to_xbar[26]}] [get_ports {dccm_to_xbar[25]}] [get_ports {dccm_to_xbar[24]}] [get_ports {dccm_to_xbar[23]}] [get_ports {dccm_to_xbar[22]}] [get_ports {dccm_to_xbar[21]}] [get_ports {dccm_to_xbar[20]}] [get_ports {dccm_to_xbar[19]}] [get_ports {dccm_to_xbar[18]}] [get_ports {dccm_to_xbar[17]}] [get_ports {dccm_to_xbar[16]}] [get_ports {dccm_to_xbar[15]}] [get_ports {dccm_to_xbar[14]}] [get_ports {dccm_to_xbar[13]}] [get_ports {dccm_to_xbar[12]}] [get_ports {dccm_to_xbar[11]}] [get_ports {dccm_to_xbar[10]}] [get_ports {dccm_to_xbar[9]}] [get_ports {dccm_to_xbar[8]}] [get_ports {dccm_to_xbar[7]}] [get_ports {dccm_to_xbar[6]}] [get_ports {dccm_to_xbar[5]}] [get_ports {dccm_to_xbar[4]}] [get_ports {dccm_to_xbar[3]}] [get_ports {dccm_to_xbar[2]}] [get_ports {dccm_to_xbar[1]}] [get_ports {dccm_to_xbar[0]}] [get_ports {xbar_to_iccm[85]}] [get_ports {xbar_to_iccm[84]}] [get_ports {xbar_to_iccm[83]}] [get_ports {xbar_to_iccm[82]}] [get_ports {xbar_to_iccm[81]}] [get_ports {xbar_to_iccm[80]}] [get_ports {xbar_to_iccm[79]}] [get_ports {xbar_to_iccm[78]}] [get_ports {xbar_to_iccm[77]}] [get_ports {xbar_to_iccm[76]}] [get_ports {xbar_to_iccm[75]}] [get_ports {xbar_to_iccm[74]}] [get_ports {xbar_to_iccm[73]}] [get_ports {xbar_to_iccm[72]}] [get_ports {xbar_to_iccm[71]}] [get_ports {xbar_to_iccm[70]}] [get_ports {xbar_to_iccm[69]}] [get_ports {xbar_to_iccm[68]}] [get_ports {xbar_to_iccm[67]}] [get_ports {xbar_to_iccm[66]}] [get_ports {xbar_to_iccm[65]}] [get_ports {xbar_to_iccm[64]}] [get_ports {xbar_to_iccm[63]}] [get_ports {xbar_to_iccm[62]}] [get_ports {xbar_to_iccm[61]}] [get_ports {xbar_to_iccm[60]}] [get_ports {xbar_to_iccm[59]}] [get_ports {xbar_to_iccm[58]}] [get_ports {xbar_to_iccm[57]}] [get_ports {xbar_to_iccm[56]}] [get_ports {xbar_to_iccm[55]}] [get_ports {xbar_to_iccm[54]}] [get_ports {xbar_to_iccm[53]}] [get_ports {xbar_to_iccm[52]}] [get_ports {xbar_to_iccm[51]}] [get_ports {xbar_to_iccm[50]}] [get_ports {xbar_to_iccm[49]}] [get_ports {xbar_to_iccm[48]}] [get_ports {xbar_to_iccm[47]}] [get_ports {xbar_to_iccm[46]}] [get_ports {xbar_to_iccm[45]}] [get_ports {xbar_to_iccm[44]}] [get_ports {xbar_to_iccm[43]}] [get_ports {xbar_to_iccm[42]}] [get_ports {xbar_to_iccm[41]}] [get_ports {xbar_to_iccm[40]}] [get_ports {xbar_to_iccm[39]}] [get_ports {xbar_to_iccm[38]}] [get_ports {xbar_to_iccm[37]}] [get_ports {xbar_to_iccm[36]}] [get_ports {xbar_to_iccm[35]}] [get_ports {xbar_to_iccm[34]}] [get_ports {xbar_to_iccm[33]}] [get_ports {xbar_to_iccm[32]}] [get_ports {xbar_to_iccm[31]}] [get_ports {xbar_to_iccm[30]}] [get_ports {xbar_to_iccm[29]}] [get_ports {xbar_to_iccm[28]}] [get_ports {xbar_to_iccm[27]}] [get_ports {xbar_to_iccm[26]}] [get_ports {xbar_to_iccm[25]}] [get_ports {xbar_to_iccm[24]}] [get_ports {xbar_to_iccm[23]}] [get_ports {xbar_to_iccm[22]}] [get_ports {xbar_to_iccm[21]}] [get_ports {xbar_to_iccm[20]}] [get_ports {xbar_to_iccm[19]}] [get_ports {xbar_to_iccm[18]}] [get_ports {xbar_to_iccm[17]}] [get_ports {xbar_to_iccm[16]}] [get_ports {xbar_to_iccm[15]}] [get_ports {xbar_to_iccm[14]}] [get_ports {xbar_to_iccm[13]}] [get_ports {xbar_to_iccm[12]}] [get_ports {xbar_to_iccm[11]}] [get_ports {xbar_to_iccm[10]}] [get_ports {xbar_to_iccm[9]}] [get_ports {xbar_to_iccm[8]}] [get_ports {xbar_to_iccm[7]}] [get_ports {xbar_to_iccm[6]}] [get_ports {xbar_to_iccm[5]}] [get_ports {xbar_to_iccm[4]}] [get_ports {xbar_to_iccm[3]}] [get_ports {xbar_to_iccm[2]}] [get_ports {xbar_to_iccm[1]}] [get_ports {xbar_to_iccm[0]}] [get_ports {xbar_to_dccm[85]}] [get_ports {xbar_to_dccm[84]}] [get_ports {xbar_to_dccm[83]}] [get_ports {xbar_to_dccm[82]}] [get_ports {xbar_to_dccm[81]}] [get_ports {xbar_to_dccm[80]}] [get_ports {xbar_to_dccm[79]}] [get_ports {xbar_to_dccm[78]}] [get_ports {xbar_to_dccm[77]}] [get_ports {xbar_to_dccm[76]}] [get_ports {xbar_to_dccm[75]}] [get_ports {xbar_to_dccm[74]}] [get_ports {xbar_to_dccm[73]}] [get_ports {xbar_to_dccm[72]}] [get_ports {xbar_to_dccm[71]}] [get_ports {xbar_to_dccm[70]}] [get_ports {xbar_to_dccm[69]}] [get_ports {xbar_to_dccm[68]}] [get_ports {xbar_to_dccm[67]}] [get_ports {xbar_to_dccm[66]}] [get_ports {xbar_to_dccm[65]}] [get_ports {xbar_to_dccm[64]}] [get_ports {xbar_to_dccm[63]}] [get_ports {xbar_to_dccm[62]}] [get_ports {xbar_to_dccm[61]}] [get_ports {xbar_to_dccm[60]}] [get_ports {xbar_to_dccm[59]}] [get_ports {xbar_to_dccm[58]}] [get_ports {xbar_to_dccm[57]}] [get_ports {xbar_to_dccm[56]}] [get_ports {xbar_to_dccm[55]}] [get_ports {xbar_to_dccm[54]}] [get_ports {xbar_to_dccm[53]}] [get_ports {xbar_to_dccm[52]}] [get_ports {xbar_to_dccm[51]}] [get_ports {xbar_to_dccm[50]}] [get_ports {xbar_to_dccm[49]}] [get_ports {xbar_to_dccm[48]}] [get_ports {xbar_to_dccm[47]}] [get_ports {xbar_to_dccm[46]}] [get_ports {xbar_to_dccm[45]}] [get_ports {xbar_to_dccm[44]}] [get_ports {xbar_to_dccm[43]}] [get_ports {xbar_to_dccm[42]}] [get_ports {xbar_to_dccm[41]}] [get_ports {xbar_to_dccm[40]}] [get_ports {xbar_to_dccm[39]}] [get_ports {xbar_to_dccm[38]}] [get_ports {xbar_to_dccm[37]}] [get_ports {xbar_to_dccm[36]}] [get_ports {xbar_to_dccm[35]}] [get_ports {xbar_to_dccm[34]}] [get_ports {xbar_to_dccm[33]}] [get_ports {xbar_to_dccm[32]}] [get_ports {xbar_to_dccm[31]}] [get_ports {xbar_to_dccm[30]}] [get_ports {xbar_to_dccm[29]}] [get_ports {xbar_to_dccm[28]}] [get_ports {xbar_to_dccm[27]}] [get_ports {xbar_to_dccm[26]}] [get_ports {xbar_to_dccm[25]}] [get_ports {xbar_to_dccm[24]}] [get_ports {xbar_to_dccm[23]}] [get_ports {xbar_to_dccm[22]}] [get_ports {xbar_to_dccm[21]}] [get_ports {xbar_to_dccm[20]}] [get_ports {xbar_to_dccm[19]}] [get_ports {xbar_to_dccm[18]}] [get_ports {xbar_to_dccm[17]}] [get_ports {xbar_to_dccm[16]}] [get_ports {xbar_to_dccm[15]}] [get_ports {xbar_to_dccm[14]}] [get_ports {xbar_to_dccm[13]}] [get_ports {xbar_to_dccm[12]}] [get_ports {xbar_to_dccm[11]}] [get_ports {xbar_to_dccm[10]}] [get_ports {xbar_to_dccm[9]}] [get_ports {xbar_to_dccm[8]}] [get_ports {xbar_to_dccm[7]}] [get_ports {xbar_to_dccm[6]}] [get_ports {xbar_to_dccm[5]}] [get_ports {xbar_to_dccm[4]}] [get_ports {xbar_to_dccm[3]}] [get_ports {xbar_to_dccm[2]}] [get_ports {xbar_to_dccm[1]}] [get_ports {xbar_to_dccm[0]}] [get_ports {r_Clock_Count[15]}] [get_ports {r_Clock_Count[14]}] [get_ports {r_Clock_Count[13]}] [get_ports {r_Clock_Count[12]}] [get_ports {r_Clock_Count[11]}] [get_ports {r_Clock_Count[10]}] [get_ports {r_Clock_Count[9]}] [get_ports {r_Clock_Count[8]}] [get_ports {r_Clock_Count[7]}] [get_ports {r_Clock_Count[6]}] [get_ports {r_Clock_Count[5]}] [get_ports {r_Clock_Count[4]}] [get_ports {r_Clock_Count[3]}] [get_ports {r_Clock_Count[2]}] [get_ports {r_Clock_Count[1]}] [get_ports {r_Clock_Count[0]}] [get_ports {r_Bit_Index[2]}] [get_ports {r_Bit_Index[1]}] [get_ports {r_Bit_Index[0]}] [get_ports {r_SM_Main[2]}] [get_ports {r_SM_Main[1]}] [get_ports {r_SM_Main[0]}] [get_ports {r_Rx_Byte[7]}] [get_ports {r_Rx_Byte[6]}] [get_ports {r_Rx_Byte[5]}] [get_ports {r_Rx_Byte[4]}] [get_ports {r_Rx_Byte[3]}] [get_ports {r_Rx_Byte[2]}] [get_ports {r_Rx_Byte[1]}] [get_ports {r_Rx_Byte[0]}] [get_ports r_Rx_DV] [get_ports r_Rx_Data_R] [get_ports r_Rx_Data] [get_ports {rx_spi_inst_i[31]}] [get_ports {rx_spi_inst_i[30]}] [get_ports {rx_spi_inst_i[29]}] [get_ports {rx_spi_inst_i[28]}] [get_ports {rx_spi_inst_i[27]}] [get_ports {rx_spi_inst_i[26]}] [get_ports {rx_spi_inst_i[25]}] [get_ports {rx_spi_inst_i[24]}] [get_ports {rx_spi_inst_i[23]}] [get_ports {rx_spi_inst_i[22]}] [get_ports {rx_spi_inst_i[21]}] [get_ports {rx_spi_inst_i[20]}] [get_ports {rx_spi_inst_i[19]}] [get_ports {rx_spi_inst_i[18]}] [get_ports {rx_spi_inst_i[17]}] [get_ports {rx_spi_inst_i[16]}] [get_ports {rx_spi_inst_i[15]}] [get_ports {rx_spi_inst_i[14]}] [get_ports {rx_spi_inst_i[13]}] [get_ports {rx_spi_inst_i[12]}] [get_ports {rx_spi_inst_i[11]}] [get_ports {rx_spi_inst_i[10]}] [get_ports {rx_spi_inst_i[9]}] [get_ports {rx_spi_inst_i[8]}] [get_ports {rx_spi_inst_i[7]}] [get_ports {rx_spi_inst_i[6]}] [get_ports {rx_spi_inst_i[5]}] [get_ports {rx_spi_inst_i[4]}] [get_ports {rx_spi_inst_i[3]}] [get_ports {rx_spi_inst_i[2]}] [get_ports {rx_spi_inst_i[1]}] [get_ports {rx_spi_inst_i[0]}] [get_ports rx_spi_valid_i] [get_ports {command[31]}] [get_ports {command[30]}] [get_ports {command[29]}] [get_ports {command[28]}] [get_ports {command[27]}] [get_ports {command[26]}] [get_ports {command[25]}] [get_ports {command[24]}] [get_ports {command[23]}] [get_ports {command[22]}] [get_ports {command[21]}] [get_ports {command[20]}] [get_ports {command[19]}] [get_ports {command[18]}] [get_ports {command[17]}] [get_ports {command[16]}] [get_ports {command[15]}] [get_ports {command[14]}] [get_ports {command[13]}] [get_ports {command[12]}] [get_ports {command[11]}] [get_ports {command[10]}] [get_ports {command[9]}] [get_ports {command[8]}] [get_ports {command[7]}] [get_ports {command[6]}] [get_ports {command[5]}] [get_ports {command[4]}] [get_ports {command[3]}] [get_ports {command[2]}] [get_ports {command[1]}] [get_ports {command[0]}] [get_ports {data_out[31]}] [get_ports {data_out[30]}] [get_ports {data_out[29]}] [get_ports {data_out[28]}] [get_ports {data_out[27]}] [get_ports {data_out[26]}] [get_ports {data_out[25]}] [get_ports {data_out[24]}] [get_ports {data_out[23]}] [get_ports {data_out[22]}] [get_ports {data_out[21]}] [get_ports {data_out[20]}] [get_ports {data_out[19]}] [get_ports {data_out[18]}] [get_ports {data_out[17]}] [get_ports {data_out[16]}] [get_ports {data_out[15]}] [get_ports {data_out[14]}] [get_ports {data_out[13]}] [get_ports {data_out[12]}] [get_ports {data_out[11]}] [get_ports {data_out[10]}] [get_ports {data_out[9]}] [get_ports {data_out[8]}] [get_ports {data_out[7]}] [get_ports {data_out[6]}] [get_ports {data_out[5]}] [get_ports {data_out[4]}] [get_ports {data_out[3]}] [get_ports {data_out[2]}] [get_ports {data_out[1]}] [get_ports {data_out[0]}] [get_ports {rcv_bit_count[4]}] [get_ports {rcv_bit_count[3]}] [get_ports {rcv_bit_count[2]}] [get_ports {rcv_bit_count[1]}] [get_ports {rcv_bit_count[0]}] [get_ports {prev_rcv_bit_count[4]}] [get_ports {prev_rcv_bit_count[3]}] [get_ports {prev_rcv_bit_count[2]}] [get_ports {prev_rcv_bit_count[1]}] [get_ports {prev_rcv_bit_count[0]}]]
