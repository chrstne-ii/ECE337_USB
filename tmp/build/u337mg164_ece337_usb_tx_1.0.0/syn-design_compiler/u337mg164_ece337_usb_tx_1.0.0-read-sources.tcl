# Auto-generated project tcl file to read all sources

set search_path [concat [list .] $search_path]
analyze -format sverilog -define { } -work work src/u337mg046_ece337_flex_counter_1.0.0/source/flex_counter.sv
analyze -format sverilog -define { } -work work src/u337mg046_ece337_flex_sr_1.0.0/source/flex_sr.sv
source  src/u337mg164_ece337_synfiles_0/detect-reset-logic.tcl
analyze -format sverilog -define { } -work work src/u337mg164_ece337_tx_fsm_1.0.0/source/tx_fsm.sv
analyze -format sverilog -define { } -work work src/u337mg164_ece337_usb_tx_1.0.0/source/usb_tx.sv
source  src/u337mg164_ece337_usb_tx_1.0.0/scripts/syn_usb_tx.tcl
