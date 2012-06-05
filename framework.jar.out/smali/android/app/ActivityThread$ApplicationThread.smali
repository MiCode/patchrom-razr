.class Landroid/app/ActivityThread$ApplicationThread;
.super Landroid/app/ApplicationThreadNative;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationThread"
.end annotation


# static fields
.field private static final ACTIVITY_THREAD_CHECKIN_VERSION:I = 0x1

.field private static final DB_INFO_FORMAT:Ljava/lang/String; = "  %8s %8s %14s %14s  %s"

.field private static final HEAP_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s"

.field private static final ONE_COUNT_COLUMN:Ljava/lang/String; = "%21s %8d"

.field private static final TWO_COUNT_COLUMNS:Ljava/lang/String; = "%21s %8d %21s %8d"

.field private static final TWO_COUNT_COLUMNS_DB:Ljava/lang/String; = "%21s %8d %21s %8d"


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/app/ApplicationThreadNative;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 510
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private dumpMemInfo(Ljava/io/PrintWriter;ZZ[Ljava/lang/String;)Landroid/os/Debug$MemoryInfo;
    .locals 53
    .parameter "pw"
    .parameter "checkin"
    .parameter "all"
    .parameter "args"

    .prologue
    .line 881
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v45

    const-wide/16 v47, 0x400

    div-long v28, v45, v47

    .line 882
    .local v28, nativeMax:J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v45

    const-wide/16 v47, 0x400

    div-long v24, v45, v47

    .line 883
    .local v24, nativeAllocated:J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v45

    const-wide/16 v47, 0x400

    div-long v26, v45, v47

    .line 885
    .local v26, nativeFree:J
    new-instance v23, Landroid/os/Debug$MemoryInfo;

    invoke-direct/range {v23 .. v23}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 886
    .local v23, memInfo:Landroid/os/Debug$MemoryInfo;
    invoke-static/range {v23 .. v23}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 888
    if-nez p3, :cond_1

    .line 1081
    :cond_0
    :goto_0
    return-object v23

    .line 892
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v37

    .line 894
    .local v37, runtime:Ljava/lang/Runtime;
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v45

    const-wide/16 v47, 0x400

    div-long v17, v45, v47

    .line 895
    .local v17, dalvikMax:J
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v45

    const-wide/16 v47, 0x400

    div-long v15, v45, v47

    .line 896
    .local v15, dalvikFree:J
    sub-long v13, v17, v15

    .line 897
    .local v13, dalvikAllocated:J
    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    move-result-wide v41

    .line 898
    .local v41, viewInstanceCount:J
    invoke-static {}, Landroid/view/ViewDebug;->getViewRootImplCount()J

    move-result-wide v43

    .line 899
    .local v43, viewRootInstanceCount:J
    const-class v45, Landroid/app/ContextImpl;

    invoke-static/range {v45 .. v45}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v7

    .line 900
    .local v7, appContextInstanceCount:J
    const-class v45, Landroid/app/Activity;

    invoke-static/range {v45 .. v45}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v5

    .line 901
    .local v5, activityInstanceCount:J
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v20

    .line 902
    .local v20, globalAssetCount:I
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v21

    .line 903
    .local v21, globalAssetManagerCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v11

    .line 904
    .local v11, binderLocalObjectCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v12

    .line 905
    .local v12, binderProxyObjectCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v10

    .line 906
    .local v10, binderDeathObjectCount:I
    const-class v45, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    invoke-static/range {v45 .. v45}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v30

    .line 907
    .local v30, openSslSocketCount:J
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getHeapAllocatedSize()J

    move-result-wide v45

    const-wide/16 v47, 0x400

    div-long v38, v45, v47

    .line 908
    .local v38, sqliteAllocated:J
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v40

    .line 911
    .local v40, stats:Landroid/database/sqlite/SQLiteDebug$PagerStats;
    if-eqz p2, :cond_4

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    move-object/from16 v45, v0

    if-eqz v45, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    .line 918
    .local v35, processName:Ljava/lang/String;
    :goto_1
    const/16 v45, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 919
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v45

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 920
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 923
    move-object/from16 v0, p1

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 924
    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 925
    const-string v45, "N/A,"

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 926
    add-long v45, v28, v17

    move-object/from16 v0, p1

    move-wide/from16 v1, v45

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 929
    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 930
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/io/PrintWriter;->print(J)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 931
    const-string v45, "N/A,"

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 932
    add-long v45, v24, v13

    move-object/from16 v0, p1

    move-wide/from16 v1, v45

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 935
    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 936
    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 937
    const-string v45, "N/A,"

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 938
    add-long v45, v26, v15

    move-object/from16 v0, p1

    move-wide/from16 v1, v45

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 941
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v45, v0

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 942
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v45, v0

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 943
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v45, v0

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 944
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v45, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v46, v0

    add-int v45, v45, v46

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v46, v0

    add-int v45, v45, v46

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 947
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v45, v0

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 948
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v45, v0

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 949
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v45, v0

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 950
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v45, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v46, v0

    add-int v45, v45, v46

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v46, v0

    add-int v45, v45, v46

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 951
    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 954
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v45, v0

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 955
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v45, v0

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 956
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v45, v0

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 957
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v45, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v46, v0

    add-int v45, v45, v46

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v46, v0

    add-int v45, v45, v46

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 958
    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 961
    move-object/from16 v0, p1

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 962
    move-object/from16 v0, p1

    move-wide/from16 v1, v43

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 963
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 964
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 966
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 967
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 968
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 969
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 971
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 972
    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 975
    move-object/from16 v0, p1

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 976
    move-object/from16 v0, v40

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    move/from16 v45, v0

    move/from16 v0, v45

    div-int/lit16 v0, v0, 0x400

    move/from16 v45, v0

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 977
    move-object/from16 v0, v40

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflo:I

    move/from16 v45, v0

    move/from16 v0, v45

    div-int/lit16 v0, v0, 0x400

    move/from16 v45, v0

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 978
    move-object/from16 v0, v40

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    move/from16 v45, v0

    move/from16 v0, v45

    div-int/lit16 v0, v0, 0x400

    move/from16 v45, v0

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 979
    const/16 v22, 0x0

    .local v22, i:I
    :goto_2
    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v45

    move/from16 v0, v22

    move/from16 v1, v45

    if-ge v0, v1, :cond_3

    .line 980
    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 981
    .local v19, dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 982
    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-wide/from16 v45, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v45

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 983
    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-wide/from16 v45, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v45

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 984
    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move/from16 v45, v0

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 985
    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 986
    const/16 v45, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 979
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 914
    .end local v19           #dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    .end local v22           #i:I
    .end local v35           #processName:Ljava/lang/String;
    :cond_2
    const-string/jumbo v35, "unknown"

    goto/16 :goto_1

    .line 988
    .restart local v22       #i:I
    .restart local v35       #processName:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0

    .line 994
    .end local v22           #i:I
    .end local v35           #processName:Ljava/lang/String;
    :cond_4
    const-string v45, "%13s %8s %8s %8s %8s %8s %8s"

    const/16 v46, 0x7

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, ""

    aput-object v48, v46, v47

    const/16 v47, 0x1

    const-string v48, ""

    aput-object v48, v46, v47

    const/16 v47, 0x2

    const-string v48, "Shared"

    aput-object v48, v46, v47

    const/16 v47, 0x3

    const-string v48, "Private"

    aput-object v48, v46, v47

    const/16 v47, 0x4

    const-string v48, "Heap"

    aput-object v48, v46, v47

    const/16 v47, 0x5

    const-string v48, "Heap"

    aput-object v48, v46, v47

    const/16 v47, 0x6

    const-string v48, "Heap"

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 995
    const-string v45, "%13s %8s %8s %8s %8s %8s %8s"

    const/16 v46, 0x7

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, ""

    aput-object v48, v46, v47

    const/16 v47, 0x1

    const-string v48, "Pss"

    aput-object v48, v46, v47

    const/16 v47, 0x2

    const-string v48, "Dirty"

    aput-object v48, v46, v47

    const/16 v47, 0x3

    const-string v48, "Dirty"

    aput-object v48, v46, v47

    const/16 v47, 0x4

    const-string v48, "Size"

    aput-object v48, v46, v47

    const/16 v47, 0x5

    const-string v48, "Alloc"

    aput-object v48, v46, v47

    const/16 v47, 0x6

    const-string v48, "Free"

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 996
    const-string v45, "%13s %8s %8s %8s %8s %8s %8s"

    const/16 v46, 0x7

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, ""

    aput-object v48, v46, v47

    const/16 v47, 0x1

    const-string v48, "------"

    aput-object v48, v46, v47

    const/16 v47, 0x2

    const-string v48, "------"

    aput-object v48, v46, v47

    const/16 v47, 0x3

    const-string v48, "------"

    aput-object v48, v46, v47

    const/16 v47, 0x4

    const-string v48, "------"

    aput-object v48, v46, v47

    const/16 v47, 0x5

    const-string v48, "------"

    aput-object v48, v46, v47

    const/16 v47, 0x6

    const-string v48, "------"

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 998
    const-string v45, "%13s %8s %8s %8s %8s %8s %8s"

    const/16 v46, 0x7

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, "Native"

    aput-object v48, v46, v47

    const/16 v47, 0x1

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x3

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x4

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x5

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x6

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1000
    const-string v45, "%13s %8s %8s %8s %8s %8s %8s"

    const/16 v46, 0x7

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, "Dalvik"

    aput-object v48, v46, v47

    const/16 v47, 0x1

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x3

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x4

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x5

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x6

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1003
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v33, v0

    .line 1004
    .local v33, otherPss:I
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v34, v0

    .line 1005
    .local v34, otherSharedDirty:I
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v32, v0

    .line 1007
    .local v32, otherPrivateDirty:I
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_3
    const/16 v45, 0x9

    move/from16 v0, v22

    move/from16 v1, v45

    if-ge v0, v1, :cond_5

    .line 1008
    const-string v45, "%13s %8s %8s %8s %8s %8s %8s"

    const/16 v46, 0x7

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-static/range {v22 .. v22}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x4

    const-string v48, ""

    aput-object v48, v46, v47

    const/16 v47, 0x5

    const-string v48, ""

    aput-object v48, v46, v47

    const/16 v47, 0x6

    const-string v48, ""

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1011
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v45

    sub-int v33, v33, v45

    .line 1012
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v45

    sub-int v34, v34, v45

    .line 1013
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v45

    sub-int v32, v32, v45

    .line 1007
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_3

    .line 1016
    :cond_5
    const-string v45, "%13s %8s %8s %8s %8s %8s %8s"

    const/16 v46, 0x7

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, "Unknown"

    aput-object v48, v46, v47

    const/16 v47, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x2

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x3

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x4

    const-string v48, ""

    aput-object v48, v46, v47

    const/16 v47, 0x5

    const-string v48, ""

    aput-object v48, v46, v47

    const/16 v47, 0x6

    const-string v48, ""

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1018
    const-string v45, "%13s %8s %8s %8s %8s %8s %8s"

    const/16 v46, 0x7

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, "TOTAL"

    aput-object v48, v46, v47

    const/16 v47, 0x1

    invoke-virtual/range {v23 .. v23}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x2

    invoke-virtual/range {v23 .. v23}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x3

    invoke-virtual/range {v23 .. v23}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x4

    add-long v48, v28, v17

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x5

    add-long v48, v24, v13

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x6

    add-long v48, v26, v15

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1023
    const-string v45, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1024
    const-string v45, " Objects"

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1025
    const-string v45, "%21s %8d %21s %8d"

    const/16 v46, 0x4

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, "Views:"

    aput-object v48, v46, v47

    const/16 v47, 0x1

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x2

    const-string v48, "ViewRootImpl:"

    aput-object v48, v46, v47

    const/16 v47, 0x3

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1028
    const-string v45, "%21s %8d %21s %8d"

    const/16 v46, 0x4

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, "AppContexts:"

    aput-object v48, v46, v47

    const/16 v47, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x2

    const-string v48, "Activities:"

    aput-object v48, v46, v47

    const/16 v47, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1031
    const-string v45, "%21s %8d %21s %8d"

    const/16 v46, 0x4

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, "Assets:"

    aput-object v48, v46, v47

    const/16 v47, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x2

    const-string v48, "AssetManagers:"

    aput-object v48, v46, v47

    const/16 v47, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1034
    const-string v45, "%21s %8d %21s %8d"

    const/16 v46, 0x4

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, "Local Binders:"

    aput-object v48, v46, v47

    const/16 v47, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x2

    const-string v48, "Proxy Binders:"

    aput-object v48, v46, v47

    const/16 v47, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1036
    const-string v45, "%21s %8d"

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, "Death Recipients:"

    aput-object v48, v46, v47

    const/16 v47, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1038
    const-string v45, "%21s %8d"

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, "OpenSSL Sockets:"

    aput-object v48, v46, v47

    const/16 v47, 0x1

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1041
    const-string v45, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1042
    const-string v45, " SQL"

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    const-string v45, "%21s %8d %21s %8d"

    const/16 v46, 0x4

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, "heap:"

    aput-object v48, v46, v47

    const/16 v47, 0x1

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x2

    const-string v48, "MEMORY_USED:"

    aput-object v48, v46, v47

    const/16 v47, 0x3

    move-object/from16 v0, v40

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    move/from16 v48, v0

    move/from16 v0, v48

    div-int/lit16 v0, v0, 0x400

    move/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1045
    const-string v45, "%21s %8d %21s %8d"

    const/16 v46, 0x4

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, "PAGECACHE_OVERFLOW:"

    aput-object v48, v46, v47

    const/16 v47, 0x1

    move-object/from16 v0, v40

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflo:I

    move/from16 v48, v0

    move/from16 v0, v48

    div-int/lit16 v0, v0, 0x400

    move/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    const/16 v47, 0x2

    const-string v48, "MALLOC_SIZE:"

    aput-object v48, v46, v47

    const/16 v47, 0x3

    move-object/from16 v0, v40

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    move/from16 v48, v0

    move/from16 v0, v48

    div-int/lit16 v0, v0, 0x400

    move/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1047
    const-string v45, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1048
    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1049
    .local v4, N:I
    if-lez v4, :cond_9

    .line 1050
    const-string v45, " DATABASES"

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    const-string v45, "  %8s %8s %14s %14s  %s"

    const/16 v46, 0x5

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, "pgsz"

    aput-object v48, v46, v47

    const/16 v47, 0x1

    const-string v48, "dbsz"

    aput-object v48, v46, v47

    const/16 v47, 0x2

    const-string v48, "Lookaside(b)"

    aput-object v48, v46, v47

    const/16 v47, 0x3

    const-string v48, "cache"

    aput-object v48, v46, v47

    const/16 v47, 0x4

    const-string v48, "Dbname"

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1053
    const/16 v22, 0x0

    :goto_4
    move/from16 v0, v22

    if-ge v0, v4, :cond_9

    .line 1054
    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1055
    .restart local v19       #dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    const-string v46, "  %8s %8s %14s %14s  %s"

    const/16 v45, 0x5

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-wide/from16 v49, v0

    const-wide/16 v51, 0x0

    cmp-long v45, v49, v51

    if-lez v45, :cond_6

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-wide/from16 v49, v0

    invoke-static/range {v49 .. v50}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v45

    :goto_5
    aput-object v45, v47, v48

    const/16 v48, 0x1

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-wide/from16 v49, v0

    const-wide/16 v51, 0x0

    cmp-long v45, v49, v51

    if-lez v45, :cond_7

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-wide/from16 v49, v0

    invoke-static/range {v49 .. v50}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v45

    :goto_6
    aput-object v45, v47, v48

    const/16 v48, 0x2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move/from16 v45, v0

    if-lez v45, :cond_8

    move-object/from16 v0, v19

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v45

    :goto_7
    aput-object v45, v47, v48

    const/16 v45, 0x3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    move-object/from16 v48, v0

    aput-object v48, v47, v45

    const/16 v45, 0x4

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    move-object/from16 v48, v0

    aput-object v48, v47, v45

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v46

    move-object/from16 v3, v47

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1053
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    .line 1055
    :cond_6
    const-string v45, " "

    goto :goto_5

    :cond_7
    const-string v45, " "

    goto :goto_6

    :cond_8
    const-string v45, " "

    goto :goto_7

    .line 1065
    .end local v19           #dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    :cond_9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v36

    .line 1066
    .local v36, rt:Ljava/lang/Runtime;
    const-string v45, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1067
    const-string v45, " Jave Heap Size(in kB)"

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1068
    const-string v45, "%21s %8d"

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, "Maximum Heap:"

    aput-object v48, v46, v47

    const/16 v47, 0x1

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v48

    const-wide/16 v50, 0x400

    div-long v48, v48, v50

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1069
    const-string v45, "%21s %8d"

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, "Total Heap:"

    aput-object v48, v46, v47

    const/16 v47, 0x1

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v48

    const-wide/16 v50, 0x400

    div-long v48, v48, v50

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1070
    const-string v45, "%21s %8d"

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, "Free Heap:"

    aput-object v48, v46, v47

    const/16 v47, 0x1

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v48

    const-wide/16 v50, 0x400

    div-long v48, v48, v50

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    aput-object v48, v46, v47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1074
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v9

    .line 1075
    .local v9, assetAlloc:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 1076
    const-string v45, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1077
    const-string v45, " Asset Allocations"

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1078
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private varargs printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "pw"
    .parameter "format"
    .parameter "objs"

    .prologue
    .line 1091
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1092
    return-void
.end method

.method private updatePendingConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 521
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 522
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iput-object p1, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 526
    :cond_1
    monitor-exit v1

    .line 527
    return-void

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ZLandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;IZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 4
    .parameter "processName"
    .parameter "appInfo"
    .parameter
    .parameter "instrumentationName"
    .parameter "profileFile"
    .parameter "profileFd"
    .parameter "autoStopProfiler"
    .parameter "instrumentationArgs"
    .parameter "instrumentationWatcher"
    .parameter "debugMode"
    .parameter "isRestrictedBackupMode"
    .parameter "persistent"
    .parameter "config"
    .parameter "compatInfo"
    .parameter
    .parameter "coreSettings"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            "Z",
            "Landroid/os/Bundle;",
            "Landroid/app/IInstrumentationWatcher;",
            "IZZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 700
    .local p3, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .local p15, services:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    if-eqz p15, :cond_0

    .line 702
    invoke-static/range {p15 .. p15}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    .line 705
    :cond_0
    move-object/from16 v0, p16

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread$ApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V

    .line 707
    new-instance v1, Landroid/app/ActivityThread$AppBindData;

    invoke-direct {v1}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    .line 708
    .local v1, data:Landroid/app/ActivityThread$AppBindData;
    iput-object p1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 709
    iput-object p2, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 710
    iput-object p3, v1, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    .line 711
    iput-object p4, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 712
    iput-object p8, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    .line 713
    iput-object p9, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    .line 714
    iput p10, v1, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    .line 715
    iput-boolean p11, v1, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    .line 716
    move/from16 v0, p12

    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    .line 717
    move-object/from16 v0, p13

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    .line 718
    move-object/from16 v0, p14

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 719
    iput-object p5, v1, Landroid/app/ActivityThread$AppBindData;->initProfileFile:Ljava/lang/String;

    .line 720
    iput-object p6, v1, Landroid/app/ActivityThread$AppBindData;->initProfileFd:Landroid/os/ParcelFileDescriptor;

    .line 721
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/ActivityThread$AppBindData;->initAutoStopProfiler:Z

    .line 722
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x6e

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 723
    return-void
.end method

.method public clearDnsCache()V
    .locals 0

    .prologue
    .line 748
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 749
    return-void
.end method

.method public dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 2
    .parameter "cmd"
    .parameter "packages"

    .prologue
    .line 846
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x85

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v0, v1, p2, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 847
    return-void
.end method

.method public dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "activitytoken"
    .parameter "prefix"
    .parameter "args"

    .prologue
    .line 855
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 857
    .local v0, data:Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 858
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 859
    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    .line 860
    iput-object p4, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 861
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x88

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    :goto_0
    return-void

    .line 862
    :catch_0
    move-exception v1

    .line 863
    .local v1, e:Ljava/io/IOException;
    const-string v2, "ActivityThread"

    const-string v3, "dumpActivity failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .parameter "fd"
    .parameter "args"

    .prologue
    .line 1086
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #calls: Landroid/app/ActivityThread;->dumpGraphicsInfo(Ljava/io/FileDescriptor;)V
    invoke-static {v0, p1}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;Ljava/io/FileDescriptor;)V

    .line 1087
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManagerImpl;->dumpGfxInfo(Ljava/io/FileDescriptor;)V

    .line 1088
    return-void
.end method

.method public dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 4
    .parameter "managed"
    .parameter "path"
    .parameter "fd"

    .prologue
    .line 823
    new-instance v0, Landroid/app/ActivityThread$DumpHeapData;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpHeapData;-><init>()V

    .line 824
    .local v0, dhd:Landroid/app/ActivityThread$DumpHeapData;
    iput-object p2, v0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    .line 825
    iput-object p3, v0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 826
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x87

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v2, v3, v0, v1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 827
    return-void

    .line 826
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dumpMemInfo(Ljava/io/FileDescriptor;ZZ[Ljava/lang/String;)Landroid/os/Debug$MemoryInfo;
    .locals 3
    .parameter "fd"
    .parameter "checkin"
    .parameter "all"
    .parameter "args"

    .prologue
    .line 870
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 871
    .local v0, fout:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 873
    .local v1, pw:Ljava/io/PrintWriter;
    :try_start_0
    invoke-direct {p0, v1, p2, p3, p4}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfo(Ljava/io/PrintWriter;ZZ[Ljava/lang/String;)Landroid/os/Debug$MemoryInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 875
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 873
    return-object v2

    .line 875
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    throw v2
.end method

.method public dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "servicetoken"
    .parameter "args"

    .prologue
    .line 761
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 763
    .local v0, data:Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 764
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 765
    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 766
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x7b

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :goto_0
    return-void

    .line 767
    :catch_0
    move-exception v1

    .line 768
    .local v1, e:Ljava/io/IOException;
    const-string v2, "ActivityThread"

    const-string v3, "dumpService failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V
    .locals 0
    .parameter "outInfo"

    .prologue
    .line 842
    invoke-static {p1}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 843
    return-void
.end method

.method public processInBackground()V
    .locals 3

    .prologue
    const/16 v2, 0x78

    .line 756
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 757
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v2}, Landroid/app/ActivityThread$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 758
    return-void
.end method

.method public profilerControl(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)V
    .locals 4
    .parameter "start"
    .parameter "path"
    .parameter "fd"
    .parameter "profileType"

    .prologue
    .line 816
    new-instance v0, Landroid/app/ActivityThread$ProfilerControlData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ProfilerControlData;-><init>()V

    .line 817
    .local v0, pcd:Landroid/app/ActivityThread$ProfilerControlData;
    iput-object p2, v0, Landroid/app/ActivityThread$ProfilerControlData;->path:Ljava/lang/String;

    .line 818
    iput-object p3, v0, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 819
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x7f

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V
    invoke-static {v2, v3, v0, v1, p4}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 820
    return-void

    .line 819
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestThumbnail(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 734
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x75

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 735
    return-void
.end method

.method public scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 811
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7d

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 812
    return-void
.end method

.method public final scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;Z)V
    .locals 3
    .parameter "token"
    .parameter "intent"
    .parameter "rebind"

    .prologue
    .line 659
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 660
    .local v0, s:Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 661
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 662
    iput-boolean p3, v0, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    .line 664
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x79

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 665
    return-void
.end method

.method public scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 738
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    .line 739
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x76

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 740
    return-void
.end method

.method public scheduleCrash(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 850
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x86

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 851
    return-void
.end method

.method public final scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3
    .parameter "app"
    .parameter "compatInfo"
    .parameter "backupMode"

    .prologue
    .line 630
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 631
    .local v0, d:Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 632
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 633
    iput p3, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    .line 635
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x80

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 636
    return-void
.end method

.method public final scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .parameter "token"
    .parameter "info"
    .parameter "compatInfo"

    .prologue
    .line 649
    new-instance v0, Landroid/app/ActivityThread$CreateServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateServiceData;-><init>()V

    .line 650
    .local v0, s:Landroid/app/ActivityThread$CreateServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 651
    iput-object p2, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    .line 652
    iput-object p3, v0, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 654
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x72

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 655
    return-void
.end method

.method public final scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    .locals 3
    .parameter "token"
    .parameter "finishing"
    .parameter "configChanges"

    .prologue
    .line 614
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6d

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V
    invoke-static {v1, v2, p1, v0, p3}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 616
    return-void

    .line 614
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .parameter "app"
    .parameter "compatInfo"

    .prologue
    .line 640
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 641
    .local v0, d:Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 642
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 644
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x81

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 645
    return-void
.end method

.method public final scheduleExit()V
    .locals 3

    .prologue
    .line 726
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6f

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 727
    return-void
.end method

.method public final scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V
    .locals 4
    .parameter "intent"
    .parameter "token"
    .parameter "ident"
    .parameter "info"
    .parameter "curConfig"
    .parameter "compatInfo"
    .parameter "state"
    .parameter
    .parameter
    .parameter "notResumed"
    .parameter "isForward"
    .parameter "profileName"
    .parameter "profileFd"
    .parameter "autoStopProfiler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 573
    .local p8, pendingResults:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p9, pendingNewIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v1, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v1}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 575
    .local v1, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 576
    iput p3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 577
    iput-object p1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 578
    iput-object p4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 579
    iput-object p6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 580
    iput-object p7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 582
    iput-object p8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 583
    iput-object p9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 585
    iput-boolean p10, v1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 586
    iput-boolean p11, v1, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    .line 588
    move-object/from16 v0, p12

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->profileFile:Ljava/lang/String;

    .line 589
    move-object/from16 v0, p13

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 590
    move/from16 v0, p14

    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->autoStopProfiler:Z

    .line 592
    invoke-direct {p0, p5}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    .line 594
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x64

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 595
    return-void
.end method

.method public scheduleLowMemory()V
    .locals 3

    .prologue
    .line 807
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 808
    return-void
.end method

.method public final scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    .locals 3
    .parameter
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 605
    .local p1, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v0, Landroid/app/ActivityThread$NewIntentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$NewIntentData;-><init>()V

    .line 606
    .local v0, data:Landroid/app/ActivityThread$NewIntentData;
    iput-object p1, v0, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    .line 607
    iput-object p2, v0, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    .line 609
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x70

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 610
    return-void
.end method

.method public final schedulePauseActivity(Landroid/os/IBinder;ZZI)V
    .locals 3
    .parameter "token"
    .parameter "finished"
    .parameter "userLeaving"
    .parameter "configChanges"

    .prologue
    .line 531
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v0, 0x66

    move v1, v0

    :goto_0
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    :goto_1
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V
    invoke-static {v2, v1, p1, v0, p4}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 536
    return-void

    .line 531
    :cond_0
    const/16 v0, 0x65

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;Z)V
    .locals 8
    .parameter "intent"
    .parameter "info"
    .parameter "compatInfo"
    .parameter "resultCode"
    .parameter "data"
    .parameter "extras"
    .parameter "sync"

    .prologue
    .line 621
    new-instance v0, Landroid/app/ActivityThread$ReceiverData;

    const/4 v6, 0x0

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object v1, p1

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v7}, Landroid/app/ActivityThread$ReceiverData;-><init>(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZLandroid/os/IBinder;)V

    .line 623
    .local v0, r:Landroid/app/ActivityThread$ReceiverData;
    iput-object p2, v0, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    .line 624
    iput-object p3, v0, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 625
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x71

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 626
    return-void
.end method

.method public scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 9
    .parameter "receiver"
    .parameter "intent"
    .parameter "resultCode"
    .parameter "dataStr"
    .parameter "extras"
    .parameter "ordered"
    .parameter "sticky"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 781
    :try_start_0
    invoke-interface/range {p1 .. p7}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    :goto_0
    return-void

    .line 782
    :catch_0
    move-exception v7

    .line 783
    .local v7, e:Landroid/os/RemoteException;
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in performReceive(), intent="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    move-object v3, p1

    .line 785
    .local v3, _receiver:Landroid/content/IIntentReceiver;
    move v4, p3

    .line 786
    .local v4, _resultCode:I
    move-object v5, p4

    .line 787
    .local v5, _dataStr:Ljava/lang/String;
    move-object v6, p5

    .line 789
    .local v6, _extras:Landroid/os/Bundle;
    new-instance v0, Landroid/app/ActivityThread$ApplicationThread$1;

    const-string v2, "finishReceiver"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread$ApplicationThread$1;-><init>(Landroid/app/ActivityThread$ApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 799
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public final scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V
    .locals 8
    .parameter "token"
    .parameter
    .parameter
    .parameter "configChanges"
    .parameter "notResumed"
    .parameter "config"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;IZ",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 600
    .local p2, pendingResults:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, pendingNewIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Z)V

    .line 602
    return-void
.end method

.method public final scheduleResumeActivity(Landroid/os/IBinder;Z)V
    .locals 3
    .parameter "token"
    .parameter "isForward"

    .prologue
    .line 556
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6b

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 557
    return-void

    .line 556
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 3
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 560
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ActivityThread$ResultData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ResultData;-><init>()V

    .line 561
    .local v0, res:Landroid/app/ActivityThread$ResultData;
    iput-object p1, v0, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    .line 562
    iput-object p2, v0, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    .line 563
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6c

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 564
    return-void
.end method

.method public final scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V
    .locals 3
    .parameter "token"
    .parameter "taskRemoved"
    .parameter "startId"
    .parameter "flags"
    .parameter "args"

    .prologue
    .line 677
    new-instance v0, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ServiceArgsData;-><init>()V

    .line 678
    .local v0, s:Landroid/app/ActivityThread$ServiceArgsData;
    iput-object p1, v0, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    .line 679
    iput-boolean p2, v0, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    .line 680
    iput p3, v0, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    .line 681
    iput p4, v0, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    .line 682
    iput-object p5, v0, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    .line 684
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x73

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 685
    return-void
.end method

.method public final scheduleSleeping(Landroid/os/IBinder;Z)V
    .locals 3
    .parameter "token"
    .parameter "sleeping"

    .prologue
    .line 552
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x89

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 553
    return-void

    .line 552
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleStopActivity(Landroid/os/IBinder;ZI)V
    .locals 3
    .parameter "token"
    .parameter "showWindow"
    .parameter "configChanges"

    .prologue
    .line 540
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v0, 0x67

    :goto_0
    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V
    invoke-static {v1, v0, p1, v2, p3}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 543
    return-void

    .line 540
    :cond_0
    const/16 v0, 0x68

    goto :goto_0
.end method

.method public final scheduleStopService(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 688
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x74

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 689
    return-void
.end method

.method public final scheduleSuicide()V
    .locals 3

    .prologue
    .line 730
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x82

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 731
    return-void
.end method

.method public scheduleTrimMemory(I)V
    .locals 3
    .parameter "level"

    .prologue
    .line 1121
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8c

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v0, v1, v2, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1122
    return-void
.end method

.method public final scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 3
    .parameter "token"
    .parameter "intent"

    .prologue
    .line 668
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 669
    .local v0, s:Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 670
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 672
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7a

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 673
    return-void
.end method

.method public final scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 2
    .parameter "token"
    .parameter "showWindow"

    .prologue
    .line 546
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v0, 0x69

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v0, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 549
    return-void

    .line 546
    :cond_0
    const/16 v0, 0x6a

    goto :goto_0
.end method

.method public setCoreSettings(Landroid/os/Bundle;)V
    .locals 2
    .parameter "coreSettings"

    .prologue
    .line 1095
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8a

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1096
    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "host"
    .parameter "port"
    .parameter "exclList"

    .prologue
    .line 752
    invoke-static {p1, p2, p3}, Landroid/net/Proxy;->setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    return-void
.end method

.method public setSchedulingGroup(I)V
    .locals 4
    .parameter "group"

    .prologue
    .line 835
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1, p1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    :goto_0
    return-void

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed setting process group to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .parameter "pkg"
    .parameter "info"

    .prologue
    .line 1100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ActivityThread$ApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    .line 1101
    return-void
.end method

.method public updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "pkg"
    .parameter "info"
    .parameter "config"

    .prologue
    .line 1105
    new-instance v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-direct {v0}, Landroid/app/ActivityThread$UpdateCompatibilityData;-><init>()V

    .line 1106
    .local v0, ucd:Landroid/app/ActivityThread$UpdateCompatibilityData;
    iput-object p1, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    .line 1107
    iput-object p2, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    .line 1109
    if-eqz p3, :cond_0

    .line 1110
    iput-object p3, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->config:Landroid/content/res/Configuration;

    .line 1111
    invoke-direct {p0, p3}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    .line 1113
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iput-object p2, v1, Landroid/app/ActivityThread;->mPendingCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 1117
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8b

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1118
    return-void
.end method

.method public updateTimeZone()V
    .locals 1

    .prologue
    .line 743
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 744
    return-void
.end method
