; ModuleID = 'C:/Users/renan/Desktop/teste/nmp_axi4l_ip/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ssdm_int<8, false>" = type { i8 }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }

; Function Attrs: noinline willreturn
define void @apatb_nmp_axi4l_ip_ir(%"struct.ap_uint<8>"* nocapture readonly %awaddr, i1 zeroext %awvalid, i1* noalias nocapture nonnull dereferenceable(1) %awready, %"struct.ap_uint<32>"* nocapture readonly %wdata, i1 zeroext %wvalid, i1* noalias nocapture nonnull dereferenceable(1) %wready, i1* noalias nocapture nonnull dereferenceable(1) %bvalid, i1 zeroext %bready, %"struct.ap_uint<8>"* nocapture readonly %araddr, i1 zeroext %arvalid, i1* noalias nocapture nonnull dereferenceable(1) %arready, %"struct.ap_uint<32>"* noalias nocapture nonnull dereferenceable(4) %rdata, i1* noalias nocapture nonnull dereferenceable(1) %rvalid, i1 zeroext %rready, i1 zeroext %clk, i1 zeroext %rst_n) local_unnamed_addr #0 {
entry:
  %awready_copy = alloca i1, align 512
  %wready_copy = alloca i1, align 512
  %bvalid_copy = alloca i1, align 512
  %arready_copy = alloca i1, align 512
  %rdata_copy = alloca i32, align 512
  %rvalid_copy = alloca i1, align 512
  call fastcc void @copy_in(i1* nonnull %awready, i1* nonnull align 512 %awready_copy, i1* nonnull %wready, i1* nonnull align 512 %wready_copy, i1* nonnull %bvalid, i1* nonnull align 512 %bvalid_copy, i1* nonnull %arready, i1* nonnull align 512 %arready_copy, %"struct.ap_uint<32>"* nonnull %rdata, i32* nonnull align 512 %rdata_copy, i1* nonnull %rvalid, i1* nonnull align 512 %rvalid_copy)
  call void @apatb_nmp_axi4l_ip_hw(%"struct.ap_uint<8>"* %awaddr, i1 %awvalid, i1* %awready_copy, %"struct.ap_uint<32>"* %wdata, i1 %wvalid, i1* %wready_copy, i1* %bvalid_copy, i1 %bready, %"struct.ap_uint<8>"* %araddr, i1 %arvalid, i1* %arready_copy, i32* %rdata_copy, i1* %rvalid_copy, i1 %rready, i1 %clk, i1 %rst_n)
  call void @copy_back(i1* %awready, i1* %awready_copy, i1* %wready, i1* %wready_copy, i1* %bvalid, i1* %bvalid_copy, i1* %arready, i1* %arready_copy, %"struct.ap_uint<32>"* %rdata, i32* %rdata_copy, i1* %rvalid, i1* %rvalid_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(i1* noalias readonly "unpacked"="0", i1* noalias align 512 "unpacked"="1", i1* noalias readonly "unpacked"="2", i1* noalias align 512 "unpacked"="3", i1* noalias readonly "unpacked"="4", i1* noalias align 512 "unpacked"="5", i1* noalias readonly "unpacked"="6", i1* noalias align 512 "unpacked"="7", %"struct.ap_uint<32>"* noalias readonly "unpacked"="8", i32* noalias nocapture align 512 "unpacked"="9.0", i1* noalias readonly "unpacked"="10", i1* noalias align 512 "unpacked"="11") unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %1, i1* %0)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %3, i1* %2)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %5, i1* %4)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %7, i1* %6)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(i32* align 512 %9, %"struct.ap_uint<32>"* %8)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %11, i1* %10)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0i1(i1* noalias align 512 %dst, i1* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq i1* %dst, null
  %1 = icmp eq i1* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %3 = bitcast i1* %src to i8*
  %4 = load i8, i8* %3
  %5 = trunc i8 %4 to i1
  store i1 %5, i1* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(i32* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<32>"* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_uint<32>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %src.0.0.03, align 4
  store i32 %1, i32* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out(i1* noalias "unpacked"="0", i1* noalias readonly align 512 "unpacked"="1", i1* noalias "unpacked"="2", i1* noalias readonly align 512 "unpacked"="3", i1* noalias "unpacked"="4", i1* noalias readonly align 512 "unpacked"="5", i1* noalias "unpacked"="6", i1* noalias readonly align 512 "unpacked"="7", %"struct.ap_uint<32>"* noalias "unpacked"="8", i32* noalias nocapture readonly align 512 "unpacked"="9.0", i1* noalias "unpacked"="10", i1* noalias readonly align 512 "unpacked"="11") unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0i1(i1* %0, i1* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %2, i1* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %4, i1* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %6, i1* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.9"(%"struct.ap_uint<32>"* %8, i32* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %10, i1* align 512 %11)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.9"(%"struct.ap_uint<32>"* noalias "unpacked"="0" %dst, i32* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_uint<32>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %src, align 512
  store i32 %1, i32* %dst.0.0.04, align 4
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @apatb_nmp_axi4l_ip_hw(%"struct.ap_uint<8>"*, i1, i1*, %"struct.ap_uint<32>"*, i1, i1*, i1*, i1, %"struct.ap_uint<8>"*, i1, i1*, i32*, i1*, i1, i1, i1)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(i1* noalias "unpacked"="0", i1* noalias readonly align 512 "unpacked"="1", i1* noalias "unpacked"="2", i1* noalias readonly align 512 "unpacked"="3", i1* noalias "unpacked"="4", i1* noalias readonly align 512 "unpacked"="5", i1* noalias "unpacked"="6", i1* noalias readonly align 512 "unpacked"="7", %"struct.ap_uint<32>"* noalias "unpacked"="8", i32* noalias nocapture readonly align 512 "unpacked"="9.0", i1* noalias "unpacked"="10", i1* noalias readonly align 512 "unpacked"="11") unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0i1(i1* %0, i1* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %2, i1* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %4, i1* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %6, i1* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.9"(%"struct.ap_uint<32>"* %8, i32* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %10, i1* align 512 %11)
  ret void
}

define void @nmp_axi4l_ip_hw_stub_wrapper(%"struct.ap_uint<8>"*, i1, i1*, %"struct.ap_uint<32>"*, i1, i1*, i1*, i1, %"struct.ap_uint<8>"*, i1, i1*, i32*, i1*, i1, i1, i1) #4 {
entry:
  %16 = alloca %"struct.ap_uint<32>"
  call void @copy_out(i1* null, i1* %2, i1* null, i1* %5, i1* null, i1* %6, i1* null, i1* %10, %"struct.ap_uint<32>"* %16, i32* %11, i1* null, i1* %12)
  call void @nmp_axi4l_ip_hw_stub(%"struct.ap_uint<8>"* %0, i1 %1, i1* %2, %"struct.ap_uint<32>"* %3, i1 %4, i1* %5, i1* %6, i1 %7, %"struct.ap_uint<8>"* %8, i1 %9, i1* %10, %"struct.ap_uint<32>"* %16, i1* %12, i1 %13, i1 %14, i1 %15)
  call void @copy_in(i1* null, i1* %2, i1* null, i1* %5, i1* null, i1* %6, i1* null, i1* %10, %"struct.ap_uint<32>"* %16, i32* %11, i1* null, i1* %12)
  ret void
}

declare void @nmp_axi4l_ip_hw_stub(%"struct.ap_uint<8>"* nocapture readonly, i1 zeroext, i1* noalias nocapture nonnull, %"struct.ap_uint<32>"* nocapture readonly, i1 zeroext, i1* noalias nocapture nonnull, i1* noalias nocapture nonnull, i1 zeroext, %"struct.ap_uint<8>"* nocapture readonly, i1 zeroext, i1* noalias nocapture nonnull, %"struct.ap_uint<32>"* noalias nocapture nonnull, i1* noalias nocapture nonnull, i1 zeroext, i1 zeroext, i1 zeroext)

attributes #0 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
