; ModuleID = '/primary/PGSQL_Vitis/DELETE_Q/DELETE_Q/DELETE_Q/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<ap_uint<32>, 0>" = type { %"struct.ap_uint<32>" }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }
%"class.hls::stream<ap_uint<128>, 0>" = type { %"struct.ap_uint<128>" }
%"struct.ap_uint<128>" = type { %"struct.ap_int_base<128, false>" }
%"struct.ap_int_base<128, false>" = type { %"struct.ssdm_int<128, false>" }
%"struct.ssdm_int<128, false>" = type { i128 }
%"class.hls::stream<bool, 0>" = type { i1 }

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_delete_top_ir(%"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull dereferenceable(4) %i_hash_strm, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull dereferenceable(4) %i_col1_strm, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull dereferenceable(4) %i_col2_strm, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull dereferenceable(4) %i_col3_strm, %"class.hls::stream<ap_uint<128>, 0>"* noalias nocapture nonnull dereferenceable(16) %i_payload_strm, %"class.hls::stream<bool, 0>"* noalias nocapture nonnull dereferenceable(1) %i_e_strm, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull dereferenceable(4) %i_d_key1_strm, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull dereferenceable(4) %o_hash_strm, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull dereferenceable(4) %o_col1_strm, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull dereferenceable(4) %o_col2_strm, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull dereferenceable(4) %o_col3_strm, %"class.hls::stream<ap_uint<128>, 0>"* noalias nocapture nonnull dereferenceable(16) %o_payload_strm, %"class.hls::stream<bool, 0>"* noalias nocapture nonnull dereferenceable(1) %o_e_strm) local_unnamed_addr #1 {
entry:
  %i_hash_strm_copy = alloca i32, align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(i32* %i_hash_strm_copy, i32 0) ]
  %i_col1_strm_copy = alloca i32, align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(i32* %i_col1_strm_copy, i32 0) ]
  %i_col2_strm_copy = alloca i32, align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(i32* %i_col2_strm_copy, i32 0) ]
  %i_col3_strm_copy = alloca i32, align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(i32* %i_col3_strm_copy, i32 0) ]
  %i_payload_strm_copy = alloca i128, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i128* %i_payload_strm_copy, i32 0) ]
  %i_e_strm_copy = alloca i1, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i1* %i_e_strm_copy, i32 0) ]
  %i_d_key1_strm_copy = alloca i32, align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(i32* %i_d_key1_strm_copy, i32 0) ]
  %o_hash_strm_copy = alloca i32, align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(i32* %o_hash_strm_copy, i32 0) ]
  %o_col1_strm_copy = alloca i32, align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(i32* %o_col1_strm_copy, i32 0) ]
  %o_col2_strm_copy = alloca i32, align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(i32* %o_col2_strm_copy, i32 0) ]
  %o_col3_strm_copy = alloca i32, align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(i32* %o_col3_strm_copy, i32 0) ]
  %o_payload_strm_copy = alloca i128, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i128* %o_payload_strm_copy, i32 0) ]
  %o_e_strm_copy = alloca i1, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i1* %o_e_strm_copy, i32 0) ]
  call fastcc void @copy_in(%"class.hls::stream<ap_uint<32>, 0>"* nonnull %i_hash_strm, i32* nonnull align 512 %i_hash_strm_copy, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %i_col1_strm, i32* nonnull align 512 %i_col1_strm_copy, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %i_col2_strm, i32* nonnull align 512 %i_col2_strm_copy, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %i_col3_strm, i32* nonnull align 512 %i_col3_strm_copy, %"class.hls::stream<ap_uint<128>, 0>"* nonnull %i_payload_strm, i128* nonnull align 512 %i_payload_strm_copy, %"class.hls::stream<bool, 0>"* nonnull %i_e_strm, i1* nonnull align 512 %i_e_strm_copy, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %i_d_key1_strm, i32* nonnull align 512 %i_d_key1_strm_copy, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %o_hash_strm, i32* nonnull align 512 %o_hash_strm_copy, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %o_col1_strm, i32* nonnull align 512 %o_col1_strm_copy, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %o_col2_strm, i32* nonnull align 512 %o_col2_strm_copy, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %o_col3_strm, i32* nonnull align 512 %o_col3_strm_copy, %"class.hls::stream<ap_uint<128>, 0>"* nonnull %o_payload_strm, i128* nonnull align 512 %o_payload_strm_copy, %"class.hls::stream<bool, 0>"* nonnull %o_e_strm, i1* nonnull align 512 %o_e_strm_copy)
  call void @apatb_delete_top_hw(i32* %i_hash_strm_copy, i32* %i_col1_strm_copy, i32* %i_col2_strm_copy, i32* %i_col3_strm_copy, i128* %i_payload_strm_copy, i1* %i_e_strm_copy, i32* %i_d_key1_strm_copy, i32* %o_hash_strm_copy, i32* %o_col1_strm_copy, i32* %o_col2_strm_copy, i32* %o_col3_strm_copy, i128* %o_payload_strm_copy, i1* %o_e_strm_copy)
  call void @copy_back(%"class.hls::stream<ap_uint<32>, 0>"* %i_hash_strm, i32* %i_hash_strm_copy, %"class.hls::stream<ap_uint<32>, 0>"* %i_col1_strm, i32* %i_col1_strm_copy, %"class.hls::stream<ap_uint<32>, 0>"* %i_col2_strm, i32* %i_col2_strm_copy, %"class.hls::stream<ap_uint<32>, 0>"* %i_col3_strm, i32* %i_col3_strm_copy, %"class.hls::stream<ap_uint<128>, 0>"* %i_payload_strm, i128* %i_payload_strm_copy, %"class.hls::stream<bool, 0>"* %i_e_strm, i1* %i_e_strm_copy, %"class.hls::stream<ap_uint<32>, 0>"* %i_d_key1_strm, i32* %i_d_key1_strm_copy, %"class.hls::stream<ap_uint<32>, 0>"* %o_hash_strm, i32* %o_hash_strm_copy, %"class.hls::stream<ap_uint<32>, 0>"* %o_col1_strm, i32* %o_col1_strm_copy, %"class.hls::stream<ap_uint<32>, 0>"* %o_col2_strm, i32* %o_col2_strm_copy, %"class.hls::stream<ap_uint<32>, 0>"* %o_col3_strm, i32* %o_col3_strm_copy, %"class.hls::stream<ap_uint<128>, 0>"* %o_payload_strm, i128* %o_payload_strm_copy, %"class.hls::stream<bool, 0>"* %o_e_strm, i1* %o_e_strm_copy)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="0", i32* noalias nocapture align 512 "unpacked"="1.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="2", i32* noalias nocapture align 512 "unpacked"="3.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="4", i32* noalias nocapture align 512 "unpacked"="5.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="6", i32* noalias nocapture align 512 "unpacked"="7.0", %"class.hls::stream<ap_uint<128>, 0>"* noalias "unpacked"="8", i128* noalias nocapture align 512 "unpacked"="9.0", %"class.hls::stream<bool, 0>"* noalias "unpacked"="10", i1* noalias nocapture align 512 "unpacked"="11.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="12", i32* noalias nocapture align 512 "unpacked"="13.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="14", i32* noalias nocapture align 512 "unpacked"="15.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="16", i32* noalias nocapture align 512 "unpacked"="17.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="18", i32* noalias nocapture align 512 "unpacked"="19.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="20", i32* noalias nocapture align 512 "unpacked"="21.0", %"class.hls::stream<ap_uint<128>, 0>"* noalias "unpacked"="22", i128* noalias nocapture align 512 "unpacked"="23.0", %"class.hls::stream<bool, 0>"* noalias "unpacked"="24", i1* noalias nocapture align 512 "unpacked"="25.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(i32* align 512 %1, %"class.hls::stream<ap_uint<32>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(i32* align 512 %3, %"class.hls::stream<ap_uint<32>, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(i32* align 512 %5, %"class.hls::stream<ap_uint<32>, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(i32* align 512 %7, %"class.hls::stream<ap_uint<32>, 0>"* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<128>, 0>"(i128* align 512 %9, %"class.hls::stream<ap_uint<128>, 0>"* %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>.13"(i1* align 512 %11, %"class.hls::stream<bool, 0>"* %10)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(i32* align 512 %13, %"class.hls::stream<ap_uint<32>, 0>"* %12)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(i32* align 512 %15, %"class.hls::stream<ap_uint<32>, 0>"* %14)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(i32* align 512 %17, %"class.hls::stream<ap_uint<32>, 0>"* %16)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(i32* align 512 %19, %"class.hls::stream<ap_uint<32>, 0>"* %18)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(i32* align 512 %21, %"class.hls::stream<ap_uint<32>, 0>"* %20)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<128>, 0>"(i128* align 512 %23, %"class.hls::stream<ap_uint<128>, 0>"* %22)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>.13"(i1* align 512 %25, %"class.hls::stream<bool, 0>"* %24)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="0", i32* noalias nocapture align 512 "unpacked"="1.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="2", i32* noalias nocapture align 512 "unpacked"="3.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="4", i32* noalias nocapture align 512 "unpacked"="5.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="6", i32* noalias nocapture align 512 "unpacked"="7.0", %"class.hls::stream<ap_uint<128>, 0>"* noalias "unpacked"="8", i128* noalias nocapture align 512 "unpacked"="9.0", %"class.hls::stream<bool, 0>"* noalias "unpacked"="10", i1* noalias nocapture align 512 "unpacked"="11.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="12", i32* noalias nocapture align 512 "unpacked"="13.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="14", i32* noalias nocapture align 512 "unpacked"="15.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="16", i32* noalias nocapture align 512 "unpacked"="17.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="18", i32* noalias nocapture align 512 "unpacked"="19.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="20", i32* noalias nocapture align 512 "unpacked"="21.0", %"class.hls::stream<ap_uint<128>, 0>"* noalias "unpacked"="22", i128* noalias nocapture align 512 "unpacked"="23.0", %"class.hls::stream<bool, 0>"* noalias "unpacked"="24", i1* noalias nocapture align 512 "unpacked"="25.0") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.36"(%"class.hls::stream<ap_uint<32>, 0>"* %0, i32* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.36"(%"class.hls::stream<ap_uint<32>, 0>"* %2, i32* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.36"(%"class.hls::stream<ap_uint<32>, 0>"* %4, i32* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.36"(%"class.hls::stream<ap_uint<32>, 0>"* %6, i32* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<128>, 0>.29"(%"class.hls::stream<ap_uint<128>, 0>"* %8, i128* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>"(%"class.hls::stream<bool, 0>"* %10, i1* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.36"(%"class.hls::stream<ap_uint<32>, 0>"* %12, i32* align 512 %13)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.36"(%"class.hls::stream<ap_uint<32>, 0>"* %14, i32* align 512 %15)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.36"(%"class.hls::stream<ap_uint<32>, 0>"* %16, i32* align 512 %17)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.36"(%"class.hls::stream<ap_uint<32>, 0>"* %18, i32* align 512 %19)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.36"(%"class.hls::stream<ap_uint<32>, 0>"* %20, i32* align 512 %21)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<128>, 0>.29"(%"class.hls::stream<ap_uint<128>, 0>"* %22, i128* align 512 %23)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>"(%"class.hls::stream<bool, 0>"* %24, i1* align 512 %25)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>"(%"class.hls::stream<bool, 0>"* noalias "unpacked"="0" %dst, i1* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::stream<bool, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>.7"(%"class.hls::stream<bool, 0>"* nonnull %dst, i1* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>.7"(%"class.hls::stream<bool, 0>"* noalias nocapture "unpacked"="0", i1* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #5 {
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
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>.13"(i1* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<bool, 0>"* noalias "unpacked"="1" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::stream<bool, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>.16"(i1* align 512 %dst, %"class.hls::stream<bool, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>.16"(i1* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<bool, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #5 {
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
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<128>, 0>"(i128* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<ap_uint<128>, 0>"* noalias "unpacked"="1" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<128>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<128>, 0>.23"(i128* align 512 %dst, %"class.hls::stream<ap_uint<128>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<128>, 0>.23"(i128* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<ap_uint<128>, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #5 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<128>, 0>"
  %3 = alloca i128
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ap_uint<128>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_16(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ap_uint<128>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ap_uint<128>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ap_uint<128>, 0>", %"class.hls::stream<ap_uint<128>, 0>"* %2
  %.evi = extractvalue %"class.hls::stream<ap_uint<128>, 0>" %8, 0, 0, 0, 0
  store i128 %.evi, i128* %3
  %9 = bitcast i128* %3 to i8*
  %10 = bitcast i128* %0 to i8*
  call void @fpga_fifo_push_16(i8* %9, i8* %10)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<128>, 0>.29"(%"class.hls::stream<ap_uint<128>, 0>"* noalias "unpacked"="0" %dst, i128* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<128>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<128>, 0>.32"(%"class.hls::stream<ap_uint<128>, 0>"* nonnull %dst, i128* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<128>, 0>.32"(%"class.hls::stream<ap_uint<128>, 0>"* noalias nocapture "unpacked"="0", i128* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #5 {
entry:
  %2 = alloca i128
  %3 = alloca %"class.hls::stream<ap_uint<128>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i128* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_16(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i128* %2 to i8*
  %7 = bitcast i128* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %6, i8* %7)
  %8 = load volatile i128, i128* %2
  %.ivi = insertvalue %"class.hls::stream<ap_uint<128>, 0>" undef, i128 %8, 0, 0, 0, 0
  store %"class.hls::stream<ap_uint<128>, 0>" %.ivi, %"class.hls::stream<ap_uint<128>, 0>"* %3
  %9 = bitcast %"class.hls::stream<ap_uint<128>, 0>"* %3 to i8*
  %10 = bitcast %"class.hls::stream<ap_uint<128>, 0>"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %9, i8* %10)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.36"(%"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="0" %dst, i32* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<32>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.39"(%"class.hls::stream<ap_uint<32>, 0>"* nonnull %dst, i32* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.39"(%"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture "unpacked"="0", i32* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #5 {
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
  br label %empty, !llvm.loop !10

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(i32* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="1" %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<32>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.48"(i32* align 512 %dst, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.48"(i32* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #5 {
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
  br label %empty, !llvm.loop !11

ret:                                              ; preds = %empty
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_delete_top_hw(i32*, i32*, i32*, i32*, i128*, i1*, i32*, i32*, i32*, i32*, i32*, i128*, i1*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="0", i32* noalias nocapture align 512 "unpacked"="1.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="2", i32* noalias nocapture align 512 "unpacked"="3.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="4", i32* noalias nocapture align 512 "unpacked"="5.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="6", i32* noalias nocapture align 512 "unpacked"="7.0", %"class.hls::stream<ap_uint<128>, 0>"* noalias "unpacked"="8", i128* noalias nocapture align 512 "unpacked"="9.0", %"class.hls::stream<bool, 0>"* noalias "unpacked"="10", i1* noalias nocapture align 512 "unpacked"="11.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="12", i32* noalias nocapture align 512 "unpacked"="13.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="14", i32* noalias nocapture align 512 "unpacked"="15.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="16", i32* noalias nocapture align 512 "unpacked"="17.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="18", i32* noalias nocapture align 512 "unpacked"="19.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="20", i32* noalias nocapture align 512 "unpacked"="21.0", %"class.hls::stream<ap_uint<128>, 0>"* noalias "unpacked"="22", i128* noalias nocapture align 512 "unpacked"="23.0", %"class.hls::stream<bool, 0>"* noalias "unpacked"="24", i1* noalias nocapture align 512 "unpacked"="25.0") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.36"(%"class.hls::stream<ap_uint<32>, 0>"* %0, i32* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.36"(%"class.hls::stream<ap_uint<32>, 0>"* %2, i32* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.36"(%"class.hls::stream<ap_uint<32>, 0>"* %4, i32* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.36"(%"class.hls::stream<ap_uint<32>, 0>"* %6, i32* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<128>, 0>.29"(%"class.hls::stream<ap_uint<128>, 0>"* %8, i128* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>"(%"class.hls::stream<bool, 0>"* %10, i1* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.36"(%"class.hls::stream<ap_uint<32>, 0>"* %12, i32* align 512 %13)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.36"(%"class.hls::stream<ap_uint<32>, 0>"* %14, i32* align 512 %15)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.36"(%"class.hls::stream<ap_uint<32>, 0>"* %16, i32* align 512 %17)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.36"(%"class.hls::stream<ap_uint<32>, 0>"* %18, i32* align 512 %19)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.36"(%"class.hls::stream<ap_uint<32>, 0>"* %20, i32* align 512 %21)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<128>, 0>.29"(%"class.hls::stream<ap_uint<128>, 0>"* %22, i128* align 512 %23)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>"(%"class.hls::stream<bool, 0>"* %24, i1* align 512 %25)
  ret void
}

declare void @delete_top_hw_stub(%"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_uint<128>, 0>"* noalias nocapture nonnull, %"class.hls::stream<bool, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_uint<128>, 0>"* noalias nocapture nonnull, %"class.hls::stream<bool, 0>"* noalias nocapture nonnull)

define void @delete_top_hw_stub_wrapper(i32*, i32*, i32*, i32*, i128*, i1*, i32*, i32*, i32*, i32*, i32*, i128*, i1*) #6 {
entry:
  %13 = call i8* @malloc(i64 4)
  %14 = bitcast i8* %13 to %"class.hls::stream<ap_uint<32>, 0>"*
  %15 = call i8* @malloc(i64 4)
  %16 = bitcast i8* %15 to %"class.hls::stream<ap_uint<32>, 0>"*
  %17 = call i8* @malloc(i64 4)
  %18 = bitcast i8* %17 to %"class.hls::stream<ap_uint<32>, 0>"*
  %19 = call i8* @malloc(i64 4)
  %20 = bitcast i8* %19 to %"class.hls::stream<ap_uint<32>, 0>"*
  %21 = call i8* @malloc(i64 16)
  %22 = bitcast i8* %21 to %"class.hls::stream<ap_uint<128>, 0>"*
  %23 = call i8* @malloc(i64 1)
  %24 = bitcast i8* %23 to %"class.hls::stream<bool, 0>"*
  %25 = call i8* @malloc(i64 4)
  %26 = bitcast i8* %25 to %"class.hls::stream<ap_uint<32>, 0>"*
  %27 = call i8* @malloc(i64 4)
  %28 = bitcast i8* %27 to %"class.hls::stream<ap_uint<32>, 0>"*
  %29 = call i8* @malloc(i64 4)
  %30 = bitcast i8* %29 to %"class.hls::stream<ap_uint<32>, 0>"*
  %31 = call i8* @malloc(i64 4)
  %32 = bitcast i8* %31 to %"class.hls::stream<ap_uint<32>, 0>"*
  %33 = call i8* @malloc(i64 4)
  %34 = bitcast i8* %33 to %"class.hls::stream<ap_uint<32>, 0>"*
  %35 = call i8* @malloc(i64 16)
  %36 = bitcast i8* %35 to %"class.hls::stream<ap_uint<128>, 0>"*
  %37 = call i8* @malloc(i64 1)
  %38 = bitcast i8* %37 to %"class.hls::stream<bool, 0>"*
  call void @copy_out(%"class.hls::stream<ap_uint<32>, 0>"* %14, i32* %0, %"class.hls::stream<ap_uint<32>, 0>"* %16, i32* %1, %"class.hls::stream<ap_uint<32>, 0>"* %18, i32* %2, %"class.hls::stream<ap_uint<32>, 0>"* %20, i32* %3, %"class.hls::stream<ap_uint<128>, 0>"* %22, i128* %4, %"class.hls::stream<bool, 0>"* %24, i1* %5, %"class.hls::stream<ap_uint<32>, 0>"* %26, i32* %6, %"class.hls::stream<ap_uint<32>, 0>"* %28, i32* %7, %"class.hls::stream<ap_uint<32>, 0>"* %30, i32* %8, %"class.hls::stream<ap_uint<32>, 0>"* %32, i32* %9, %"class.hls::stream<ap_uint<32>, 0>"* %34, i32* %10, %"class.hls::stream<ap_uint<128>, 0>"* %36, i128* %11, %"class.hls::stream<bool, 0>"* %38, i1* %12)
  call void @delete_top_hw_stub(%"class.hls::stream<ap_uint<32>, 0>"* %14, %"class.hls::stream<ap_uint<32>, 0>"* %16, %"class.hls::stream<ap_uint<32>, 0>"* %18, %"class.hls::stream<ap_uint<32>, 0>"* %20, %"class.hls::stream<ap_uint<128>, 0>"* %22, %"class.hls::stream<bool, 0>"* %24, %"class.hls::stream<ap_uint<32>, 0>"* %26, %"class.hls::stream<ap_uint<32>, 0>"* %28, %"class.hls::stream<ap_uint<32>, 0>"* %30, %"class.hls::stream<ap_uint<32>, 0>"* %32, %"class.hls::stream<ap_uint<32>, 0>"* %34, %"class.hls::stream<ap_uint<128>, 0>"* %36, %"class.hls::stream<bool, 0>"* %38)
  call void @copy_in(%"class.hls::stream<ap_uint<32>, 0>"* %14, i32* %0, %"class.hls::stream<ap_uint<32>, 0>"* %16, i32* %1, %"class.hls::stream<ap_uint<32>, 0>"* %18, i32* %2, %"class.hls::stream<ap_uint<32>, 0>"* %20, i32* %3, %"class.hls::stream<ap_uint<128>, 0>"* %22, i128* %4, %"class.hls::stream<bool, 0>"* %24, i1* %5, %"class.hls::stream<ap_uint<32>, 0>"* %26, i32* %6, %"class.hls::stream<ap_uint<32>, 0>"* %28, i32* %7, %"class.hls::stream<ap_uint<32>, 0>"* %30, i32* %8, %"class.hls::stream<ap_uint<32>, 0>"* %32, i32* %9, %"class.hls::stream<ap_uint<32>, 0>"* %34, i32* %10, %"class.hls::stream<ap_uint<128>, 0>"* %36, i128* %11, %"class.hls::stream<bool, 0>"* %38, i1* %12)
  call void @free(i8* %13)
  call void @free(i8* %15)
  call void @free(i8* %17)
  call void @free(i8* %19)
  call void @free(i8* %21)
  call void @free(i8* %23)
  call void @free(i8* %25)
  call void @free(i8* %27)
  call void @free(i8* %29)
  call void @free(i8* %31)
  call void @free(i8* %33)
  call void @free(i8* %35)
  call void @free(i8* %37)
  ret void
}

declare i1 @fpga_fifo_not_empty_1(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #6 = { "fpga.wrapper.func"="stub" }
attributes #7 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #8 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="128" "xlx.source"="user" }
attributes #9 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="8" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
