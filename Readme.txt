This repository contains all files related to my MSc dissertation project: Hand Gesture Recognition using IMU and FSR Sensors.

Contents
	HW_proj: vivado project 
	PC_software: PC pytorch and onnx training and deploying
	petaklinux_au9eg_proj: petalinux project
	Vitis-AI: generating the xmodel(copy to Vitis AI)

Hardware
	ALINX AU9EG board (Zynq UltraScale+ MPSoC XCZU9EG-FFVB1156-2-I)
	FSR402 force sensors
	ICM-42688-P IMUs
	AD7606C-16 ADC

Software
	Vivado 2024.2
	Vitis 2024.2
	PetaLinux 2024.2
	Ubuntu 24.04 (host)
	PyTorch 2.x (PC-side training)
	Vitis AI 3.5

------------------------------------------------------------------------------------------

Hardware Data Acquisition
	IMU (ICM-42688-P) via custom SPI controller
	FSR402 sensors read via AD7606C ADC (simultaneous sampling)
	Data streamed through UDP over RGMII Ethernet

PC-Side Training
	PyTorch ResNet2D models for gesture classification
	Dataset parsed from UDP packets
	ONNX model export

Embedded Linux (PetaLinux)
	Custom device-tree with reserved CMA for DPU
	Rootfs with Python, Vitis AI runtime, and utilities

Vitis AI Deployment
	Quantization and compilation to xmodel
	DPU runtime inference on AU9EG (XCZU9EG MPSoC)
	Real-time classification from sensor data