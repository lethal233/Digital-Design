@echo off
REM ****************************************************************************
REM Vivado (TM) v2017.4 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Sun Nov 17 12:25:06 +0800 2019
REM SW Build 2086221 on Fri Dec 15 20:55:39 MST 2017
REM
REM Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
call xelab  -wto b37e8c2ccfba431ebed8d653bb10bebc --incr --debug typical --relax --mt 2 -L xil_defaultlib -L util_vector_logic_v2_0_1 -L xlconstant_v1_1_3 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot FullS_tb_behav xil_defaultlib.FullS_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0