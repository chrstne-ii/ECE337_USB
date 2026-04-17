SHELL=/bin/bash
NAME := u337mg164_ece337_hready_read_fsm_1.0.0
REPORT_DIR := reports


all:
			mkdir -p ${REPORT_DIR}
			dc_shell-t -f ${NAME}.tcl |& tee ${REPORT_DIR}/synth.log