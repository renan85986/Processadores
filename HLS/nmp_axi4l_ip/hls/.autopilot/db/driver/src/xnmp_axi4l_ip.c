// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xnmp_axi4l_ip.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XNmp_axi4l_ip_CfgInitialize(XNmp_axi4l_ip *InstancePtr, XNmp_axi4l_ip_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XNmp_axi4l_ip_Set_awaddr(XNmp_axi4l_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNmp_axi4l_ip_WriteReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_AWADDR_DATA, Data);
}

u32 XNmp_axi4l_ip_Get_awaddr(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_AWADDR_DATA);
    return Data;
}

void XNmp_axi4l_ip_Set_awvalid(XNmp_axi4l_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNmp_axi4l_ip_WriteReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_AWVALID_DATA, Data);
}

u32 XNmp_axi4l_ip_Get_awvalid(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_AWVALID_DATA);
    return Data;
}

void XNmp_axi4l_ip_Set_awready_i(XNmp_axi4l_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNmp_axi4l_ip_WriteReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_AWREADY_I_DATA, Data);
}

u32 XNmp_axi4l_ip_Get_awready_i(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_AWREADY_I_DATA);
    return Data;
}

u32 XNmp_axi4l_ip_Get_awready_o(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_AWREADY_O_DATA);
    return Data;
}

u32 XNmp_axi4l_ip_Get_awready_o_vld(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_AWREADY_O_CTRL);
    return Data & 0x1;
}

void XNmp_axi4l_ip_Set_wdata(XNmp_axi4l_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNmp_axi4l_ip_WriteReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_WDATA_DATA, Data);
}

u32 XNmp_axi4l_ip_Get_wdata(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_WDATA_DATA);
    return Data;
}

void XNmp_axi4l_ip_Set_wvalid(XNmp_axi4l_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNmp_axi4l_ip_WriteReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_WVALID_DATA, Data);
}

u32 XNmp_axi4l_ip_Get_wvalid(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_WVALID_DATA);
    return Data;
}

void XNmp_axi4l_ip_Set_wready_i(XNmp_axi4l_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNmp_axi4l_ip_WriteReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_WREADY_I_DATA, Data);
}

u32 XNmp_axi4l_ip_Get_wready_i(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_WREADY_I_DATA);
    return Data;
}

u32 XNmp_axi4l_ip_Get_wready_o(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_WREADY_O_DATA);
    return Data;
}

u32 XNmp_axi4l_ip_Get_wready_o_vld(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_WREADY_O_CTRL);
    return Data & 0x1;
}

void XNmp_axi4l_ip_Set_bvalid_i(XNmp_axi4l_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNmp_axi4l_ip_WriteReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_BVALID_I_DATA, Data);
}

u32 XNmp_axi4l_ip_Get_bvalid_i(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_BVALID_I_DATA);
    return Data;
}

u32 XNmp_axi4l_ip_Get_bvalid_o(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_BVALID_O_DATA);
    return Data;
}

u32 XNmp_axi4l_ip_Get_bvalid_o_vld(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_BVALID_O_CTRL);
    return Data & 0x1;
}

void XNmp_axi4l_ip_Set_bready(XNmp_axi4l_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNmp_axi4l_ip_WriteReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_BREADY_DATA, Data);
}

u32 XNmp_axi4l_ip_Get_bready(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_BREADY_DATA);
    return Data;
}

void XNmp_axi4l_ip_Set_araddr(XNmp_axi4l_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNmp_axi4l_ip_WriteReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_ARADDR_DATA, Data);
}

u32 XNmp_axi4l_ip_Get_araddr(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_ARADDR_DATA);
    return Data;
}

void XNmp_axi4l_ip_Set_arvalid(XNmp_axi4l_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNmp_axi4l_ip_WriteReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_ARVALID_DATA, Data);
}

u32 XNmp_axi4l_ip_Get_arvalid(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_ARVALID_DATA);
    return Data;
}

void XNmp_axi4l_ip_Set_arready_i(XNmp_axi4l_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNmp_axi4l_ip_WriteReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_ARREADY_I_DATA, Data);
}

u32 XNmp_axi4l_ip_Get_arready_i(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_ARREADY_I_DATA);
    return Data;
}

u32 XNmp_axi4l_ip_Get_arready_o(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_ARREADY_O_DATA);
    return Data;
}

u32 XNmp_axi4l_ip_Get_arready_o_vld(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_ARREADY_O_CTRL);
    return Data & 0x1;
}

u32 XNmp_axi4l_ip_Get_rdata(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_RDATA_DATA);
    return Data;
}

u32 XNmp_axi4l_ip_Get_rdata_vld(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_RDATA_CTRL);
    return Data & 0x1;
}

void XNmp_axi4l_ip_Set_rvalid_i(XNmp_axi4l_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNmp_axi4l_ip_WriteReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_RVALID_I_DATA, Data);
}

u32 XNmp_axi4l_ip_Get_rvalid_i(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_RVALID_I_DATA);
    return Data;
}

u32 XNmp_axi4l_ip_Get_rvalid_o(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_RVALID_O_DATA);
    return Data;
}

u32 XNmp_axi4l_ip_Get_rvalid_o_vld(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_RVALID_O_CTRL);
    return Data & 0x1;
}

void XNmp_axi4l_ip_Set_rready(XNmp_axi4l_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNmp_axi4l_ip_WriteReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_RREADY_DATA, Data);
}

u32 XNmp_axi4l_ip_Get_rready(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_RREADY_DATA);
    return Data;
}

void XNmp_axi4l_ip_Set_rst_n(XNmp_axi4l_ip *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XNmp_axi4l_ip_WriteReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_RST_N_DATA, Data);
}

u32 XNmp_axi4l_ip_Get_rst_n(XNmp_axi4l_ip *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XNmp_axi4l_ip_ReadReg(InstancePtr->Control_BaseAddress, XNMP_AXI4L_IP_CONTROL_ADDR_RST_N_DATA);
    return Data;
}

