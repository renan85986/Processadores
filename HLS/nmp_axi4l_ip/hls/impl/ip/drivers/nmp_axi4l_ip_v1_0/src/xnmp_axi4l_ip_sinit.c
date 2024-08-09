// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xnmp_axi4l_ip.h"

extern XNmp_axi4l_ip_Config XNmp_axi4l_ip_ConfigTable[];

#ifdef SDT
XNmp_axi4l_ip_Config *XNmp_axi4l_ip_LookupConfig(UINTPTR BaseAddress) {
	XNmp_axi4l_ip_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XNmp_axi4l_ip_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XNmp_axi4l_ip_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XNmp_axi4l_ip_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XNmp_axi4l_ip_Initialize(XNmp_axi4l_ip *InstancePtr, UINTPTR BaseAddress) {
	XNmp_axi4l_ip_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XNmp_axi4l_ip_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XNmp_axi4l_ip_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XNmp_axi4l_ip_Config *XNmp_axi4l_ip_LookupConfig(u16 DeviceId) {
	XNmp_axi4l_ip_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XNMP_AXI4L_IP_NUM_INSTANCES; Index++) {
		if (XNmp_axi4l_ip_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XNmp_axi4l_ip_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XNmp_axi4l_ip_Initialize(XNmp_axi4l_ip *InstancePtr, u16 DeviceId) {
	XNmp_axi4l_ip_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XNmp_axi4l_ip_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XNmp_axi4l_ip_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

