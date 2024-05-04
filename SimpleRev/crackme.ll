source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_40a8 = global i64 0
@global_var_3fe0 = local_unnamed_addr global i64 0
@global_var_2008 = constant [39 x i8] c"Clave Verificada Acceso concedido :-)\0A\00"
@global_var_202f = constant [20 x i8] c"Clave erronea >:-( \00"
@charset = constant [63 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789\00"
@pass_len = local_unnamed_addr global i64 20
@global_var_2043 = constant [29 x i8] c"Ingrese clave de Activacion\0A\00"
@global_var_2060 = constant [5 x i8] c"%20s\00"
@0 = external global i32

define i64 @_init() local_unnamed_addr {
dec_label_pc_1000:
  %rax.0.reg2mem = alloca i64, !insn.addr !0
  %0 = load i64, i64* inttoptr (i64 16336 to i64*), align 16, !insn.addr !1
  %1 = icmp eq i64 %0, 0, !insn.addr !2
  store i64 0, i64* %rax.0.reg2mem, !insn.addr !3
  br i1 %1, label %dec_label_pc_1016, label %dec_label_pc_1014, !insn.addr !3

dec_label_pc_1014:                                ; preds = %dec_label_pc_1000
  call void @__gmon_start__(), !insn.addr !4
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.0.reg2mem, !insn.addr !4
  br label %dec_label_pc_1016, !insn.addr !4

dec_label_pc_1016:                                ; preds = %dec_label_pc_1014, %dec_label_pc_1000
  %rax.0.reload = load i64, i64* %rax.0.reg2mem
  ret i64 %rax.0.reload, !insn.addr !5
}

define i32 @function_1030(i8* %s) local_unnamed_addr {
dec_label_pc_1030:
  %0 = call i32 @puts(i8* %s), !insn.addr !6
  ret i32 %0, !insn.addr !6
}

define void @function_1040() local_unnamed_addr {
dec_label_pc_1040:
  call void @__stack_chk_fail(), !insn.addr !7
  ret void, !insn.addr !7
}

define void @function_1050(i32 %seed) local_unnamed_addr {
dec_label_pc_1050:
  call void @srand(i32 %seed), !insn.addr !8
  ret void, !insn.addr !8
}

define i32 @function_1060(i8* %s1, i8* %s2) local_unnamed_addr {
dec_label_pc_1060:
  %0 = call i32 @strcmp(i8* %s1, i8* %s2), !insn.addr !9
  ret i32 %0, !insn.addr !9
}

define i32 @function_1070(i32* %timer) local_unnamed_addr {
dec_label_pc_1070:
  %0 = call i32 @time(i32* %timer), !insn.addr !10
  ret i32 %0, !insn.addr !10
}

define i32 @function_1080(i8* %format, ...) local_unnamed_addr {
dec_label_pc_1080:
  %0 = call i32 (i8*, ...) @scanf(i8* %format), !insn.addr !11
  ret i32 %0, !insn.addr !11
}

define void @function_1090(i32 %status) local_unnamed_addr {
dec_label_pc_1090:
  call void @exit(i32 %status), !insn.addr !12
  ret void, !insn.addr !12
}

define i32 @function_10a0() local_unnamed_addr {
dec_label_pc_10a0:
  %0 = call i32 @rand(), !insn.addr !13
  ret i32 %0, !insn.addr !13
}

define i64 @_start(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %arg5, i64 %arg6) local_unnamed_addr {
dec_label_pc_10b0:
  %stack_var_8 = alloca i64, align 8
  %0 = trunc i64 %arg6 to i32, !insn.addr !14
  %1 = bitcast i64* %stack_var_8 to i8**, !insn.addr !14
  %2 = inttoptr i64 %arg3 to void ()*, !insn.addr !14
  %3 = call i32 @__libc_start_main(i64 4752, i32 %0, i8** nonnull %1, void ()* null, void ()* null, void ()* %2), !insn.addr !14
  %4 = call i64 @__asm_hlt(), !insn.addr !15
  unreachable, !insn.addr !15
}

define i64 @function_10e0() local_unnamed_addr {
dec_label_pc_10e0:
  ret i64 ptrtoint (i64* @global_var_40a8 to i64), !insn.addr !16
}

define i64 @function_1110() local_unnamed_addr {
dec_label_pc_1110:
  ret i64 0, !insn.addr !17
}

define i64 @function_1150() local_unnamed_addr {
dec_label_pc_1150:
  %0 = alloca i64
  %1 = load i64, i64* %0
  %2 = load i8, i8* bitcast (i64* @global_var_40a8 to i8*), align 8, !insn.addr !18
  %3 = icmp eq i8 %2, 0, !insn.addr !18
  %4 = icmp eq i1 %3, false, !insn.addr !19
  br i1 %4, label %dec_label_pc_1190, label %dec_label_pc_115d, !insn.addr !19

dec_label_pc_115d:                                ; preds = %dec_label_pc_1150
  %5 = load i64, i64* @global_var_3fe0, align 8, !insn.addr !20
  %6 = icmp eq i64 %5, 0, !insn.addr !20
  br i1 %6, label %dec_label_pc_1178, label %dec_label_pc_116b, !insn.addr !21

dec_label_pc_116b:                                ; preds = %dec_label_pc_115d
  %7 = load i64, i64* inttoptr (i64 16456 to i64*), align 8, !insn.addr !22
  %8 = inttoptr i64 %7 to i64*, !insn.addr !23
  call void @__cxa_finalize(i64* %8), !insn.addr !23
  br label %dec_label_pc_1178, !insn.addr !23

dec_label_pc_1178:                                ; preds = %dec_label_pc_116b, %dec_label_pc_115d
  %9 = call i64 @function_10e0(), !insn.addr !24
  store i8 1, i8* bitcast (i64* @global_var_40a8 to i8*), align 8, !insn.addr !25
  ret i64 %9, !insn.addr !26

dec_label_pc_1190:                                ; preds = %dec_label_pc_1150
  ret i64 %1, !insn.addr !27
}

define i64 @function_11a0() local_unnamed_addr {
dec_label_pc_11a0:
  %0 = call i64 @function_1110(), !insn.addr !28
  ret i64 %0, !insn.addr !28
}

define void @acces_granted() local_unnamed_addr {
dec_label_pc_11a9:
  %0 = call i32 @puts(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @global_var_2008, i64 0, i64 0)), !insn.addr !29
  call void @exit(i32 0), !insn.addr !30
  ret void, !insn.addr !30
}

define void @wrong_password() local_unnamed_addr {
dec_label_pc_11c6:
  %0 = call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @global_var_202f, i64 0, i64 0)), !insn.addr !31
  ret void, !insn.addr !32
}

define i8 @random_char(i32 %index) local_unnamed_addr {
dec_label_pc_11dc:
  %0 = sext i32 %index to i64, !insn.addr !33
  %1 = add i64 %0, ptrtoint ([63 x i8]* @charset to i64), !insn.addr !34
  %2 = inttoptr i64 %1 to i8*, !insn.addr !34
  %3 = load i8, i8* %2, align 1, !insn.addr !34
  ret i8 %3, !insn.addr !35
}

define void @create_password(i8* %str) local_unnamed_addr {
dec_label_pc_11f5:
  %.lcssa.reg2mem = alloca i64, !insn.addr !36
  %storemerge2.reg2mem = alloca i32, !insn.addr !36
  %.reg2mem = alloca i64, !insn.addr !36
  %0 = ptrtoint i8* %str to i64
  %1 = call i32 @time(i32* null), !insn.addr !37
  call void @srand(i32 %1), !insn.addr !38
  %2 = load i64, i64* @pass_len, align 8, !insn.addr !39
  %3 = icmp eq i64 %2, 0, !insn.addr !40
  %.pre = mul i64 %0, 4294967296
  %.pre4 = ashr exact i64 %.pre, 32
  store i64 0, i64* %.reg2mem, !insn.addr !41
  store i32 0, i32* %storemerge2.reg2mem, !insn.addr !41
  store i64 0, i64* %.lcssa.reg2mem, !insn.addr !41
  br i1 %3, label %dec_label_pc_1279, label %dec_label_pc_121c, !insn.addr !41

dec_label_pc_121c:                                ; preds = %dec_label_pc_11f5, %dec_label_pc_121c
  %storemerge2.reload = load i32, i32* %storemerge2.reg2mem
  %.reload = load i64, i64* %.reg2mem
  %4 = call i32 @rand(), !insn.addr !42
  %5 = sext i32 %4 to i64, !insn.addr !43
  %6 = mul nsw i64 %5, -2078209981, !insn.addr !43
  %7 = udiv i64 %6, 4294967296, !insn.addr !44
  %8 = trunc i64 %7 to i32, !insn.addr !45
  %9 = add i32 %4, %8, !insn.addr !45
  %10 = ashr i32 %9, 5, !insn.addr !46
  %11 = ashr i32 %4, 31, !insn.addr !47
  %12 = sub nsw i32 %10, %11, !insn.addr !48
  %13 = mul i32 %12, -62
  %14 = add i32 %13, %4, !insn.addr !49
  %15 = add nsw i64 %.reload, %.pre4, !insn.addr !50
  %16 = call i8 @random_char(i32 %14), !insn.addr !51
  %17 = inttoptr i64 %15 to i8*, !insn.addr !52
  store i8 %16, i8* %17, align 1, !insn.addr !52
  %18 = add i32 %storemerge2.reload, 1, !insn.addr !53
  %19 = sext i32 %18 to i64, !insn.addr !54
  %20 = load i64, i64* @pass_len, align 8, !insn.addr !39
  %21 = icmp ugt i64 %20, %19, !insn.addr !40
  store i64 %19, i64* %.reg2mem, !insn.addr !41
  store i32 %18, i32* %storemerge2.reg2mem, !insn.addr !41
  store i64 %19, i64* %.lcssa.reg2mem, !insn.addr !41
  br i1 %21, label %dec_label_pc_121c, label %dec_label_pc_1279, !insn.addr !41

dec_label_pc_1279:                                ; preds = %dec_label_pc_121c, %dec_label_pc_11f5
  %.lcssa.reload = load i64, i64* %.lcssa.reg2mem
  %22 = add nsw i64 %.lcssa.reload, %.pre4, !insn.addr !55
  %23 = inttoptr i64 %22 to i8*, !insn.addr !56
  store i8 0, i8* %23, align 1, !insn.addr !56
  ret void, !insn.addr !57

; uselistorder directives
  uselistorder i32 %4, { 1, 2, 0, 3 }
  uselistorder i64* %.reg2mem, { 2, 0, 1 }
  uselistorder i32* %storemerge2.reg2mem, { 2, 0, 1 }
  uselistorder i8 0, { 1, 0 }
  uselistorder i64 4294967296, { 1, 0 }
  uselistorder label %dec_label_pc_121c, { 1, 0 }
}

define i32 @main() local_unnamed_addr {
dec_label_pc_1290:
  %rax.0.reg2mem = alloca i32, !insn.addr !58
  %pass_-56 = alloca [1 x i8], align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = ptrtoint i64* %stack_var_-72 to i64, !insn.addr !59
  %1 = call i64 @__readfsqword(i64 40), !insn.addr !60
  %2 = load i64, i64* @pass_len, align 8
  %3 = add i64 %2, 15
  %4 = udiv i64 %3, 16
  %5 = mul i64 %4, 16
  %6 = sub i64 %0, %5, !insn.addr !61
  %7 = trunc i64 %6 to i8, !insn.addr !62
  %8 = insertvalue [1 x i8] undef, i8 %7, 0, !insn.addr !62
  store [1 x i8] %8, [1 x i8]* %pass_-56, align 8, !insn.addr !62
  %9 = sub i64 %6, %5, !insn.addr !63
  %10 = call i32 @puts(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @global_var_2043, i64 0, i64 0)), !insn.addr !64
  %11 = bitcast [1 x i8]* %pass_-56 to i64*, !insn.addr !65
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8**, !insn.addr !66
  %14 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @global_var_2060, i64 0, i64 0), i8** %13), !insn.addr !66
  %15 = inttoptr i64 %9 to i8*, !insn.addr !67
  call void @create_password(i8* %15), !insn.addr !67
  %16 = inttoptr i64 %12 to i8*, !insn.addr !68
  %17 = call i32 @strcmp(i8* %16, i8* %15), !insn.addr !68
  %18 = icmp eq i32 %17, 0, !insn.addr !69
  br i1 %18, label %dec_label_pc_1384, label %dec_label_pc_137a, !insn.addr !70

dec_label_pc_137a:                                ; preds = %dec_label_pc_1290
  call void @acces_granted(), !insn.addr !71
  unreachable, !insn.addr !71

dec_label_pc_1384:                                ; preds = %dec_label_pc_1290
  call void @wrong_password(), !insn.addr !72
  %19 = call i64 @__readfsqword(i64 40), !insn.addr !73
  %20 = icmp eq i64 %1, %19, !insn.addr !73
  store i32 0, i32* %rax.0.reg2mem, !insn.addr !74
  br i1 %20, label %dec_label_pc_13aa, label %dec_label_pc_13a5, !insn.addr !74

dec_label_pc_13a5:                                ; preds = %dec_label_pc_1384
  call void @__stack_chk_fail(), !insn.addr !75
  store i32 ptrtoint (i32* @0 to i32), i32* %rax.0.reg2mem, !insn.addr !75
  br label %dec_label_pc_13aa, !insn.addr !75

dec_label_pc_13aa:                                ; preds = %dec_label_pc_13a5, %dec_label_pc_1384
  %rax.0.reload = load i32, i32* %rax.0.reg2mem
  ret i32 %rax.0.reload, !insn.addr !76

; uselistorder directives
  uselistorder i64 %6, { 1, 0 }
  uselistorder i64 %5, { 1, 0 }
  uselistorder i32 0, { 0, 3, 1, 2 }
  uselistorder i32 (i8*)* @puts, { 2, 1, 0, 3 }
  uselistorder i64 0, { 5, 6, 7, 8, 0, 1, 4, 9, 10, 11, 12, 15, 3, 2, 16, 13, 14 }
  uselistorder i64* @pass_len, { 1, 2, 0 }
}

define i64 @_fini() local_unnamed_addr {
dec_label_pc_13b0:
  %0 = alloca i64
  %1 = load i64, i64* %0
  ret i64 %1, !insn.addr !77

; uselistorder directives
  uselistorder i32 1, { 1, 8, 7, 2, 10, 5, 4, 3, 0, 9, 6 }
}

declare i32 @__libc_start_main(i64, i32, i8**, void ()*, void ()*, void ()*) local_unnamed_addr

declare void @__gmon_start__() local_unnamed_addr

declare void @__cxa_finalize(i64*) local_unnamed_addr

declare i32 @puts(i8*) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @srand(i32) local_unnamed_addr

declare i32 @strcmp(i8*, i8*) local_unnamed_addr

declare i32 @time(i32*) local_unnamed_addr

declare i32 @scanf(i8*, ...) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i64 @__asm_hlt() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

!0 = !{i64 4096}
!1 = !{i64 4104}
!2 = !{i64 4111}
!3 = !{i64 4114}
!4 = !{i64 4116}
!5 = !{i64 4122}
!6 = !{i64 4144}
!7 = !{i64 4160}
!8 = !{i64 4176}
!9 = !{i64 4192}
!10 = !{i64 4208}
!11 = !{i64 4224}
!12 = !{i64 4240}
!13 = !{i64 4256}
!14 = !{i64 4303}
!15 = !{i64 4309}
!16 = !{i64 4360}
!17 = !{i64 4424}
!18 = !{i64 4436}
!19 = !{i64 4443}
!20 = !{i64 4446}
!21 = !{i64 4457}
!22 = !{i64 4459}
!23 = !{i64 4466}
!24 = !{i64 4472}
!25 = !{i64 4477}
!26 = !{i64 4485}
!27 = !{i64 4496}
!28 = !{i64 4516}
!29 = !{i64 4535}
!30 = !{i64 4545}
!31 = !{i64 4564}
!32 = !{i64 4571}
!33 = !{i64 4582}
!34 = !{i64 4591}
!35 = !{i64 4596}
!36 = !{i64 4597}
!37 = !{i64 4615}
!38 = !{i64 4622}
!39 = !{i64 4717}
!40 = !{i64 4724}
!41 = !{i64 4727}
!42 = !{i64 4636}
!43 = !{i64 4644}
!44 = !{i64 4651}
!45 = !{i64 4655}
!46 = !{i64 4657}
!47 = !{i64 4662}
!48 = !{i64 4665}
!49 = !{i64 4676}
!50 = !{i64 4691}
!51 = !{i64 4700}
!52 = !{i64 4705}
!53 = !{i64 4707}
!54 = !{i64 4714}
!55 = !{i64 4739}
!56 = !{i64 4742}
!57 = !{i64 4751}
!58 = !{i64 4752}
!59 = !{i64 4757}
!60 = !{i64 4761}
!61 = !{i64 4829}
!62 = !{i64 4839}
!63 = !{i64 4890}
!64 = !{i64 4914}
!65 = !{i64 4919}
!66 = !{i64 4941}
!67 = !{i64 4953}
!68 = !{i64 4972}
!69 = !{i64 4980}
!70 = !{i64 4984}
!71 = !{i64 4991}
!72 = !{i64 5001}
!73 = !{i64 5018}
!74 = !{i64 5027}
!75 = !{i64 5029}
!76 = !{i64 5039}
!77 = !{i64 5052}
