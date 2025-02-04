; ModuleID = '/home/chips/Storage/zoho/hls_component/filter_dut/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<ap_uint<32>, 0>" = type { %"struct.ap_uint<32>" }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }
%"class.hls::stream<bool, 0>" = type { i1 }

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_filter_dut_ir(%"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull dereferenceable(4) %filter_cfg_strm, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="4" %k_strms, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull dereferenceable(4) %p_strm, %"class.hls::stream<bool, 0>"* noalias nocapture nonnull dereferenceable(1) %e_strm, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull dereferenceable(4) %f_strm, %"class.hls::stream<bool, 0>"* noalias nocapture nonnull dereferenceable(1) %e_f_strm) local_unnamed_addr #1 {
entry:
  %filter_cfg_strm_copy = alloca i32, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i32* %filter_cfg_strm_copy, i32 0) ]
  %k_strms_copy_0 = alloca i32, align 512
  %k_strms_copy_1 = alloca i32, align 512
  %k_strms_copy_2 = alloca i32, align 512
  %k_strms_copy_3 = alloca i32, align 512
  call void @llvm.sideeffect() #10 [ "stream_interface"(i32* %k_strms_copy_3, i32 0) ]
  call void @llvm.sideeffect() #10 [ "stream_interface"(i32* %k_strms_copy_2, i32 0) ]
  call void @llvm.sideeffect() #10 [ "stream_interface"(i32* %k_strms_copy_1, i32 0) ]
  call void @llvm.sideeffect() #10 [ "stream_interface"(i32* %k_strms_copy_0, i32 0) ]
  %p_strm_copy = alloca i32, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i32* %p_strm_copy, i32 0) ]
  %e_strm_copy = alloca i1, align 512
  call void @llvm.sideeffect() #11 [ "stream_interface"(i1* %e_strm_copy, i32 0) ]
  %f_strm_copy = alloca i32, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i32* %f_strm_copy, i32 0) ]
  %e_f_strm_copy = alloca i1, align 512
  call void @llvm.sideeffect() #11 [ "stream_interface"(i1* %e_f_strm_copy, i32 0) ]
  %0 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %k_strms to [4 x %"class.hls::stream<ap_uint<32>, 0>"]*
  call void @copy_in(%"class.hls::stream<ap_uint<32>, 0>"* nonnull %filter_cfg_strm, i32* nonnull align 512 %filter_cfg_strm_copy, [4 x %"class.hls::stream<ap_uint<32>, 0>"]* nonnull %0, i32* nonnull align 512 %k_strms_copy_0, i32* nonnull align 512 %k_strms_copy_1, i32* nonnull align 512 %k_strms_copy_2, i32* nonnull align 512 %k_strms_copy_3, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %p_strm, i32* nonnull align 512 %p_strm_copy, %"class.hls::stream<bool, 0>"* nonnull %e_strm, i1* nonnull align 512 %e_strm_copy, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %f_strm, i32* nonnull align 512 %f_strm_copy, %"class.hls::stream<bool, 0>"* nonnull %e_f_strm, i1* nonnull align 512 %e_f_strm_copy)
  call void @apatb_filter_dut_hw(i32* %filter_cfg_strm_copy, i32* %k_strms_copy_0, i32* %k_strms_copy_1, i32* %k_strms_copy_2, i32* %k_strms_copy_3, i32* %p_strm_copy, i1* %e_strm_copy, i32* %f_strm_copy, i1* %e_f_strm_copy)
  call void @copy_back(%"class.hls::stream<ap_uint<32>, 0>"* %filter_cfg_strm, i32* %filter_cfg_strm_copy, [4 x %"class.hls::stream<ap_uint<32>, 0>"]* %0, i32* %k_strms_copy_0, i32* %k_strms_copy_1, i32* %k_strms_copy_2, i32* %k_strms_copy_3, %"class.hls::stream<ap_uint<32>, 0>"* %p_strm, i32* %p_strm_copy, %"class.hls::stream<bool, 0>"* %e_strm, i1* %e_strm_copy, %"class.hls::stream<ap_uint<32>, 0>"* %f_strm, i32* %f_strm_copy, %"class.hls::stream<bool, 0>"* %e_f_strm, i1* %e_f_strm_copy)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>.86"(%"class.hls::stream<bool, 0>"* noalias "unpacked"="0" %dst, i1* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<bool, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>.89"(%"class.hls::stream<bool, 0>"* nonnull %dst, i1* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>.89"(%"class.hls::stream<bool, 0>"* noalias nocapture "unpacked"="0", i1* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #3 {
entry:
  %2 = alloca i1
  %3 = alloca %"class.hls::stream<bool, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i1* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i1* %2 to i8*
  %7 = bitcast i1* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %6, i8* %7)
  %8 = bitcast i1* %2 to i8*
  %9 = load i8, i8* %8
  %10 = trunc i8 %9 to i1
  %.ivi = insertvalue %"class.hls::stream<bool, 0>" undef, i1 %10, 0
  store %"class.hls::stream<bool, 0>" %.ivi, %"class.hls::stream<bool, 0>"* %3
  %11 = bitcast %"class.hls::stream<bool, 0>"* %3 to i8*
  %12 = bitcast %"class.hls::stream<bool, 0>"* %0 to i8*
  call void @fpga_fifo_push_1(i8* %11, i8* %12)
  br label %empty, !llvm.loop !15

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>"(i1* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<bool, 0>"* noalias "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<bool, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>.99"(i1* align 512 %dst, %"class.hls::stream<bool, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>.99"(i1* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<bool, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream<bool, 0>"
  %3 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<bool, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<bool, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<bool, 0>"* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<bool, 0>", %"class.hls::stream<bool, 0>"* %2
  %.evi = extractvalue %"class.hls::stream<bool, 0>" %8, 0
  store i1 %.evi, i1* %3
  %9 = bitcast i1* %3 to i8*
  %10 = bitcast i1* %0 to i8*
  call void @fpga_fifo_push_1(i8* %9, i8* %10)
  br label %empty, !llvm.loop !17

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.103"(i32* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<32>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.106"(i32* align 512 %dst, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.106"(i32* nocapture align 512 "unpacked"="0.0", %"class.hls::stream<ap_uint<32>, 0>"* nocapture "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<32>, 0>"
  %3 = alloca i32
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ap_uint<32>, 0>", %"class.hls::stream<ap_uint<32>, 0>"* %2
  %.evi = extractvalue %"class.hls::stream<ap_uint<32>, 0>" %8, 0, 0, 0, 0
  store i32 %.evi, i32* %3
  %9 = bitcast i32* %3 to i8*
  %10 = bitcast i32* %0 to i8*
  call void @fpga_fifo_push_4(i8* %9, i8* %10)
  br label %empty, !llvm.loop !18

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="0" %dst, i32* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<32>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.116"(%"class.hls::stream<ap_uint<32>, 0>"* nonnull %dst, i32* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.116"(%"class.hls::stream<ap_uint<32>, 0>"* nocapture "unpacked"="0", i32* nocapture align 512 "unpacked"="1.0") unnamed_addr #3 {
entry:
  %2 = alloca i32
  %3 = alloca %"class.hls::stream<ap_uint<32>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i32* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i32* %2 to i8*
  %7 = bitcast i32* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = load volatile i32, i32* %2
  %.ivi = insertvalue %"class.hls::stream<ap_uint<32>, 0>" undef, i32 %8, 0, 0, 0, 0
  store %"class.hls::stream<ap_uint<32>, 0>" %.ivi, %"class.hls::stream<ap_uint<32>, 0>"* %3
  %9 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %3 to i8*
  %10 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %9, i8* %10)
  br label %empty, !llvm.loop !19

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: argmemonly noinline willreturn
define void @"arraycpy_hls.p0a4class.hls::stream<ap_uint<32>, 0>"(i32* nocapture "orig.arg.no"="0" "unpacked"="0.0.0" %dst_0, i32* nocapture "orig.arg.no"="0" "unpacked"="0.0.1" %dst_1, i32* nocapture "orig.arg.no"="0" "unpacked"="0.0.2" %dst_2, i32* nocapture "orig.arg.no"="0" "unpacked"="0.0.3" %dst_3, [4 x %"class.hls::stream<ap_uint<32>, 0>"]* "orig.arg.no"="1" "unpacked"="1" %src, i64 "orig.arg.no"="2" "unpacked"="2" %num) #5 {
entry:
  %0 = icmp eq [4 x %"class.hls::stream<ap_uint<32>, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond2 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond2, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %for.loop.lr.ph
  %for.loop.idx3 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [4 x %"class.hls::stream<ap_uint<32>, 0>"], [4 x %"class.hls::stream<ap_uint<32>, 0>"]* %src, i64 0, i64 %for.loop.idx3
  switch i64 %for.loop.idx3, label %dst.addr.case.3 [
    i64 0, label %dst.addr.case.0
    i64 1, label %dst.addr.case.1
    i64 2, label %dst.addr.case.2
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.106"(i32* %dst_0, %"class.hls::stream<ap_uint<32>, 0>"* %src.addr)
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.106"(i32* %dst_1, %"class.hls::stream<ap_uint<32>, 0>"* %src.addr)
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.106"(i32* %dst_2, %"class.hls::stream<ap_uint<32>, 0>"* %src.addr)
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  %1 = icmp eq i64 %for.loop.idx3, 3
  call void @llvm.assume(i1 %1)
  call void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.106"(i32* %dst_3, %"class.hls::stream<ap_uint<32>, 0>"* %src.addr)
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal void @"onebyonecpy_hls.p0a4class.hls::stream<ap_uint<32>, 0>"(i32* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.0" %dst_0, i32* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.1" %dst_1, i32* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.2" %dst_2, i32* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.3" %dst_3, [4 x %"class.hls::stream<ap_uint<32>, 0>"]* noalias "orig.arg.no"="1" "unpacked"="1" %src) #2 {
entry:
  %0 = icmp eq [4 x %"class.hls::stream<ap_uint<32>, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a4class.hls::stream<ap_uint<32>, 0>"(i32* %dst_0, i32* %dst_1, i32* %dst_2, i32* %dst_3, [4 x %"class.hls::stream<ap_uint<32>, 0>"]* nonnull %src, i64 4)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal void @copy_in(%"class.hls::stream<ap_uint<32>, 0>"* noalias "orig.arg.no"="0" "unpacked"="0", i32* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0", [4 x %"class.hls::stream<ap_uint<32>, 0>"]* noalias "orig.arg.no"="2" "unpacked"="2", i32* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_0, i32* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_1, i32* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_2, i32* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_3, %"class.hls::stream<ap_uint<32>, 0>"* noalias "orig.arg.no"="4" "unpacked"="4", i32* noalias nocapture align 512 "orig.arg.no"="5" "unpacked"="5.0", %"class.hls::stream<bool, 0>"* noalias "orig.arg.no"="6" "unpacked"="6", i1* noalias nocapture align 512 "orig.arg.no"="7" "unpacked"="7.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "orig.arg.no"="8" "unpacked"="8", i32* noalias nocapture align 512 "orig.arg.no"="9" "unpacked"="9.0", %"class.hls::stream<bool, 0>"* noalias "orig.arg.no"="10" "unpacked"="10", i1* noalias nocapture align 512 "orig.arg.no"="11" "unpacked"="11.0") #6 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.103"(i32* align 512 %1, %"class.hls::stream<ap_uint<32>, 0>"* %0)
  call void @"onebyonecpy_hls.p0a4class.hls::stream<ap_uint<32>, 0>"(i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2, i32* align 512 %_3, [4 x %"class.hls::stream<ap_uint<32>, 0>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.103"(i32* align 512 %4, %"class.hls::stream<ap_uint<32>, 0>"* %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>"(i1* align 512 %6, %"class.hls::stream<bool, 0>"* %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.103"(i32* align 512 %8, %"class.hls::stream<ap_uint<32>, 0>"* %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>"(i1* align 512 %10, %"class.hls::stream<bool, 0>"* %9)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define void @"arraycpy_hls.p0a4class.hls::stream<ap_uint<32>, 0>.134"([4 x %"class.hls::stream<ap_uint<32>, 0>"]* "orig.arg.no"="0" "unpacked"="0" %dst, i32* nocapture "orig.arg.no"="1" "unpacked"="1.0.0" %src_0, i32* nocapture "orig.arg.no"="1" "unpacked"="1.0.1" %src_1, i32* nocapture "orig.arg.no"="1" "unpacked"="1.0.2" %src_2, i32* nocapture "orig.arg.no"="1" "unpacked"="1.0.3" %src_3, i64 "orig.arg.no"="2" "unpacked"="2" %num) #5 {
entry:
  %0 = icmp eq [4 x %"class.hls::stream<ap_uint<32>, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond2 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond2, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %for.loop.lr.ph
  %for.loop.idx3 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [4 x %"class.hls::stream<ap_uint<32>, 0>"], [4 x %"class.hls::stream<ap_uint<32>, 0>"]* %dst, i64 0, i64 %for.loop.idx3
  switch i64 %for.loop.idx3, label %src.addr.case.3 [
    i64 0, label %src.addr.case.0
    i64 1, label %src.addr.case.1
    i64 2, label %src.addr.case.2
  ]

src.addr.case.0:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.116"(%"class.hls::stream<ap_uint<32>, 0>"* %dst.addr, i32* %src_0)
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.116"(%"class.hls::stream<ap_uint<32>, 0>"* %dst.addr, i32* %src_1)
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.116"(%"class.hls::stream<ap_uint<32>, 0>"* %dst.addr, i32* %src_2)
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  %1 = icmp eq i64 %for.loop.idx3, 3
  call void @llvm.assume(i1 %1)
  call void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.116"(%"class.hls::stream<ap_uint<32>, 0>"* %dst.addr, i32* %src_3)
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal void @"onebyonecpy_hls.p0a4class.hls::stream<ap_uint<32>, 0>.131"([4 x %"class.hls::stream<ap_uint<32>, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0" %dst, i32* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %src_0, i32* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %src_1, i32* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0.2" %src_2, i32* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0.3" %src_3) #2 {
entry:
  %0 = icmp eq [4 x %"class.hls::stream<ap_uint<32>, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a4class.hls::stream<ap_uint<32>, 0>.134"([4 x %"class.hls::stream<ap_uint<32>, 0>"]* nonnull %dst, i32* %src_0, i32* %src_1, i32* %src_2, i32* %src_3, i64 4)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal void @copy_out(%"class.hls::stream<ap_uint<32>, 0>"* noalias "orig.arg.no"="0" "unpacked"="0", i32* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0", [4 x %"class.hls::stream<ap_uint<32>, 0>"]* noalias "orig.arg.no"="2" "unpacked"="2", i32* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_0, i32* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_1, i32* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_2, i32* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_3, %"class.hls::stream<ap_uint<32>, 0>"* noalias "orig.arg.no"="4" "unpacked"="4", i32* noalias nocapture align 512 "orig.arg.no"="5" "unpacked"="5.0", %"class.hls::stream<bool, 0>"* noalias "orig.arg.no"="6" "unpacked"="6", i1* noalias nocapture align 512 "orig.arg.no"="7" "unpacked"="7.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "orig.arg.no"="8" "unpacked"="8", i32* noalias nocapture align 512 "orig.arg.no"="9" "unpacked"="9.0", %"class.hls::stream<bool, 0>"* noalias "orig.arg.no"="10" "unpacked"="10", i1* noalias nocapture align 512 "orig.arg.no"="11" "unpacked"="11.0") #7 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* %0, i32* align 512 %1)
  call void @"onebyonecpy_hls.p0a4class.hls::stream<ap_uint<32>, 0>.131"([4 x %"class.hls::stream<ap_uint<32>, 0>"]* %2, i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2, i32* align 512 %_3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* %3, i32* align 512 %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>.86"(%"class.hls::stream<bool, 0>"* %5, i1* align 512 %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* %7, i32* align 512 %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>.86"(%"class.hls::stream<bool, 0>"* %9, i1* align 512 %10)
  ret void
}

declare void @apatb_filter_dut_hw(i32*, i32*, i32*, i32*, i32*, i32*, i1*, i32*, i1*)

; Function Attrs: argmemonly noinline willreturn
define internal void @copy_back(%"class.hls::stream<ap_uint<32>, 0>"* noalias "orig.arg.no"="0" "unpacked"="0", i32* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0", [4 x %"class.hls::stream<ap_uint<32>, 0>"]* noalias "orig.arg.no"="2" "unpacked"="2", i32* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_0, i32* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_1, i32* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_2, i32* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_3, %"class.hls::stream<ap_uint<32>, 0>"* noalias "orig.arg.no"="4" "unpacked"="4", i32* noalias nocapture align 512 "orig.arg.no"="5" "unpacked"="5.0", %"class.hls::stream<bool, 0>"* noalias "orig.arg.no"="6" "unpacked"="6", i1* noalias nocapture align 512 "orig.arg.no"="7" "unpacked"="7.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "orig.arg.no"="8" "unpacked"="8", i32* noalias nocapture align 512 "orig.arg.no"="9" "unpacked"="9.0", %"class.hls::stream<bool, 0>"* noalias "orig.arg.no"="10" "unpacked"="10", i1* noalias nocapture align 512 "orig.arg.no"="11" "unpacked"="11.0") #7 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* %0, i32* align 512 %1)
  call void @"onebyonecpy_hls.p0a4class.hls::stream<ap_uint<32>, 0>.131"([4 x %"class.hls::stream<ap_uint<32>, 0>"]* %2, i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2, i32* align 512 %_3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* %3, i32* align 512 %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>.86"(%"class.hls::stream<bool, 0>"* %5, i1* align 512 %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* %7, i32* align 512 %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>.86"(%"class.hls::stream<bool, 0>"* %9, i1* align 512 %10)
  ret void
}

define void @filter_dut_hw_stub_wrapper(i32*, i32*, i32*, i32*, i32*, i32*, i1*, i32*, i1*) #8 {
entry:
  %9 = alloca %"class.hls::stream<ap_uint<32>, 0>"
  %10 = alloca [4 x %"class.hls::stream<ap_uint<32>, 0>"]
  %11 = alloca %"class.hls::stream<ap_uint<32>, 0>"
  %12 = alloca %"class.hls::stream<bool, 0>"
  %13 = alloca %"class.hls::stream<ap_uint<32>, 0>"
  %14 = alloca %"class.hls::stream<bool, 0>"
  call void @copy_out(%"class.hls::stream<ap_uint<32>, 0>"* %9, i32* %0, [4 x %"class.hls::stream<ap_uint<32>, 0>"]* %10, i32* %1, i32* %2, i32* %3, i32* %4, %"class.hls::stream<ap_uint<32>, 0>"* %11, i32* %5, %"class.hls::stream<bool, 0>"* %12, i1* %6, %"class.hls::stream<ap_uint<32>, 0>"* %13, i32* %7, %"class.hls::stream<bool, 0>"* %14, i1* %8)
  %15 = bitcast [4 x %"class.hls::stream<ap_uint<32>, 0>"]* %10 to %"class.hls::stream<ap_uint<32>, 0>"*
  call void @filter_dut_hw_stub(%"class.hls::stream<ap_uint<32>, 0>"* %9, %"class.hls::stream<ap_uint<32>, 0>"* %15, %"class.hls::stream<ap_uint<32>, 0>"* %11, %"class.hls::stream<bool, 0>"* %12, %"class.hls::stream<ap_uint<32>, 0>"* %13, %"class.hls::stream<bool, 0>"* %14)
  call void @copy_in(%"class.hls::stream<ap_uint<32>, 0>"* %9, i32* %0, [4 x %"class.hls::stream<ap_uint<32>, 0>"]* %10, i32* %1, i32* %2, i32* %3, i32* %4, %"class.hls::stream<ap_uint<32>, 0>"* %11, i32* %5, %"class.hls::stream<bool, 0>"* %12, i1* %6, %"class.hls::stream<ap_uint<32>, 0>"* %13, i32* %7, %"class.hls::stream<bool, 0>"* %14, i1* %8)
  ret void
}

declare void @filter_dut_hw_stub(%"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull, %"class.hls::stream<bool, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull, %"class.hls::stream<bool, 0>"* noalias nocapture nonnull)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #4 = { nounwind willreturn }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #6 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #7 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #8 = { "fpga.wrapper.func"="stub" }
attributes #9 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #10 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="32" "xlx.source"="infer-from-design" }
attributes #11 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="8" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"1.0", [4 x i32]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=1"}
!10 = !{!11, !12, !13, !14}
!11 = !{!"1.0.0", i32* null}
!12 = !{!"1.0.1", i32* null}
!13 = !{!"1.0.2", i32* null}
!14 = !{!"1.0.3", i32* null}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.rotate.disable"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
