// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XNMP_AXI4L_IP_H
#define XNMP_AXI4L_IP_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xnmp_axi4l_ip_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XNmp_axi4l_ip_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XNmp_axi4l_ip;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XNmp_axi4l_ip_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XNmp_axi4l_ip_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XNmp_axi4l_ip_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XNmp_axi4l_ip_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XNmp_axi4l_ip_Initialize(XNmp_axi4l_ip *InstancePtr, UINTPTR BaseAddress);
XNmp_axi4l_ip_Config* XNmp_axi4l_ip_LookupConfig(UINTPTR BaseAddress);
#else
int XNmp_axi4l_ip_Initialize(XNmp_axi4l_ip *InstancePtr, u16 DeviceId);
XNmp_axi4l_ip_Config* XNmp_axi4l_ip_LookupConfig(u16 DeviceId);
#endif
int XNmp_axi4l_ip_CfgInitialize(XNmp_axi4l_ip *InstancePtr, XNmp_axi4l_ip_Config *ConfigPtr);
#else
int XNmp_axi4l_ip_Initialize(XNmp_axi4l_ip *InstancePtr, const char* InstanceName);
int XNmp_axi4l_ip_Release(XNmp_axi4l_ip *InstancePtr);
#endif


void XNmp_axi4l_ip_Set_awaddr(XNmp_axi4l_ip *InstancePtr, u32 Data);
u32 XNmp_axi4l_ip_Get_awaddr(XNmp_axi4l_ip *InstancePtr);
void XNmp_axi4l_ip_Set_awvalid(XNmp_axi4l_ip *InstancePtr, u32 Data);
u32 XNmp_axi4l_ip_Get_awvalid(XNmp_axi4l_ip *InstancePtr);
void XNmp_axi4l_ip_Set_awready_i(XNmp_axi4l_ip *InstancePtr, u32 Data);
u32 XNmp_axi4l_ip_Get_awready_i(XNmp_axi4l_ip *InstancePtr);
u32 XNmp_axi4l_ip_Get_awready_o(XNmp_axi4l_ip *InstancePtr);
u32 XNmp_axi4l_ip_Get_awready_o_vld(XNmp_axi4l_ip *InstancePtr);
void XNmp_axi4l_ip_Set_wdata(XNmp_axi4l_ip *InstancePtr, u32 Data);
u32 XNmp_axi4l_ip_Get_wdata(XNmp_axi4l_ip *InstancePtr);
void XNmp_axi4l_ip_Set_wvalid(XNmp_axi4l_ip *InstancePtr, u32 Data);
u32 XNmp_axi4l_ip_Get_wvalid(XNmp_axi4l_ip *InstancePtr);
void XNmp_axi4l_ip_Set_wready_i(XNmp_axi4l_ip *InstancePtr, u32 Data);
u32 XNmp_axi4l_ip_Get_wready_i(XNmp_axi4l_ip *InstancePtr);
u32 XNmp_axi4l_ip_Get_wready_o(XNmp_axi4l_ip *InstancePtr);
u32 XNmp_axi4l_ip_Get_wready_o_vld(XNmp_axi4l_ip *InstancePtr);
void XNmp_axi4l_ip_Set_bvalid_i(XNmp_axi4l_ip *InstancePtr, u32 Data);
u32 XNmp_axi4l_ip_Get_bvalid_i(XNmp_axi4l_ip *InstancePtr);
u32 XNmp_axi4l_ip_Get_bvalid_o(XNmp_axi4l_ip *InstancePtr);
u32 XNmp_axi4l_ip_Get_bvalid_o_vld(XNmp_axi4l_ip *InstancePtr);
void XNmp_axi4l_ip_Set_bready(XNmp_axi4l_ip *InstancePtr, u32 Data);
u32 XNmp_axi4l_ip_Get_bready(XNmp_axi4l_ip *InstancePtr);
void XNmp_axi4l_ip_Set_araddr(XNmp_axi4l_ip *InstancePtr, u32 Data);
u32 XNmp_axi4l_ip_Get_araddr(XNmp_axi4l_ip *InstancePtr);
void XNmp_axi4l_ip_Set_arvalid(XNmp_axi4l_ip *InstancePtr, u32 Data);
u32 XNmp_axi4l_ip_Get_arvalid(XNmp_axi4l_ip *InstancePtr);
void XNmp_axi4l_ip_Set_arready_i(XNmp_axi4l_ip *InstancePtr, u32 Data);
u32 XNmp_axi4l_ip_Get_arready_i(XNmp_axi4l_ip *InstancePtr);
u32 XNmp_axi4l_ip_Get_arready_o(XNmp_axi4l_ip *InstancePtr);
u32 XNmp_axi4l_ip_Get_arready_o_vld(XNmp_axi4l_ip *InstancePtr);
u32 XNmp_axi4l_ip_Get_rdata(XNmp_axi4l_ip *InstancePtr);
u32 XNmp_axi4l_ip_Get_rdata_vld(XNmp_axi4l_ip *InstancePtr);
void XNmp_axi4l_ip_Set_rvalid_i(XNmp_axi4l_ip *InstancePtr, u32 Data);
u32 XNmp_axi4l_ip_Get_rvalid_i(XNmp_axi4l_ip *InstancePtr);
u32 XNmp_axi4l_ip_Get_rvalid_o(XNmp_axi4l_ip *InstancePtr);
u32 XNmp_axi4l_ip_Get_rvalid_o_vld(XNmp_axi4l_ip *InstancePtr);
void XNmp_axi4l_ip_Set_rready(XNmp_axi4l_ip *InstancePtr, u32 Data);
u32 XNmp_axi4l_ip_Get_rready(XNmp_axi4l_ip *InstancePtr);
void XNmp_axi4l_ip_Set_rst_n(XNmp_axi4l_ip *InstancePtr, u32 Data);
u32 XNmp_axi4l_ip_Get_rst_n(XNmp_axi4l_ip *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
