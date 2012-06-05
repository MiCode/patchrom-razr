.class public Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector;
.super Lcom/motorola/kpi/perfstats/MetricCollector;
.source "DeviceCpuMetricCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$1;,
        Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;
    }
.end annotation


# static fields
.field private static final INDEX_IDLE_TIME:I = 0x3

.field private static final INDEX_IO_WAIT_TIME:I = 0x4

.field private static final INDEX_IRQ_TIME:I = 0x5

.field private static final INDEX_NICE_TIME:I = 0x1

.field private static final INDEX_SOFT_IRQ_TIME:I = 0x6

.field private static final INDEX_SYSTEM_TIME:I = 0x2

.field private static final INDEX_USER_TIME:I = 0x0

.field private static final KEY:Ljava/lang/String; = "dev_cpu_data"

.field private static final KEY_IDLE_TIME:Ljava/lang/String; = "idle"

.field private static final KEY_IO_WAIT_TIME:Ljava/lang/String; = "io_wait"

.field private static final KEY_IRQ_TIME:Ljava/lang/String; = "irq"

.field private static final KEY_SOFT_IRQ_TIME:Ljava/lang/String; = "soft_irq"

.field private static final KEY_SYSTEM_TIME:Ljava/lang/String; = "system"

.field private static final KEY_USER_TIME:Ljava/lang/String; = "user"

.field private static final SYSTEM_CPU_FORMAT:[I = null

.field private static final SYS_CPU_TIME_SIZE:I = 0x7

.field private static final TAG:Ljava/lang/String; = "DevCpuMetricCol"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector;->SYSTEM_CPU_FORMAT:[I

    return-void

    :array_0
    .array-data 0x4
        0x20t 0x1t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Lcom/motorola/kpi/perfstats/LogSetting;)V
    .locals 0
    .parameter "logSetting"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/motorola/kpi/perfstats/MetricCollector;-><init>(Lcom/motorola/kpi/perfstats/LogSetting;)V

    .line 117
    return-void
.end method


# virtual methods
.method collect()Landroid/os/Bundle;
    .locals 27

    .prologue
    .line 126
    const/16 v19, 0x0

    .line 128
    .local v19, bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/kpi/perfstats/MetricCollector;->mLogSetting:Lcom/motorola/kpi/perfstats/LogSetting;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/kpi/perfstats/MetricCollector;->mLogSetting:Lcom/motorola/kpi/perfstats/LogSetting;

    move-object/from16 v18, v0

    sget-object v23, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;->DEVICE_CPU:Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/kpi/perfstats/LogSetting;->isMetricLogged(Lcom/motorola/kpi/perfstats/LogSetting$Metrics;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 129
    invoke-static {}, Lcom/motorola/kpi/perfstats/Logger;->getCallTime()J

    move-result-wide v20

    .line 131
    .local v20, callStartTime:J
    const/16 v18, 0x7

    move/from16 v0, v18

    new-array v0, v0, [J

    move-object/from16 v22, v0

    .line 132
    .local v22, sysCpu:[J
    const-string v18, "/proc/stat"

    sget-object v23, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector;->SYSTEM_CPU_FORMAT:[I

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v22

    move-object/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 134
    const/16 v18, 0x0

    aget-wide v23, v22, v18

    const/16 v18, 0x1

    aget-wide v25, v22, v18

    add-long v6, v23, v25

    .line 135
    .local v6, userTime:J
    const/16 v18, 0x2

    aget-wide v8, v22, v18

    .line 136
    .local v8, systemTime:J
    const/16 v18, 0x3

    aget-wide v16, v22, v18

    .line 137
    .local v16, idleTime:J
    const/16 v18, 0x4

    aget-wide v10, v22, v18

    .line 138
    .local v10, ioWaitTime:J
    const/16 v18, 0x5

    aget-wide v12, v22, v18

    .line 139
    .local v12, irqTime:J
    const/16 v18, 0x6

    aget-wide v14, v22, v18

    .line 140
    .local v14, softIrqTime:J
    new-instance v5, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;

    const/16 v18, 0x0

    invoke-direct/range {v5 .. v18}, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;-><init>(JJJJJJLcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$1;)V

    .line 142
    .local v5, data:Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;
    #calls: Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;->pack()Landroid/os/Bundle;
    invoke-static {v5}, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;->access$100(Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;)Landroid/os/Bundle;

    move-result-object v19

    .line 144
    .end local v5           #data:Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;
    .end local v6           #userTime:J
    .end local v8           #systemTime:J
    .end local v10           #ioWaitTime:J
    .end local v12           #irqTime:J
    .end local v14           #softIrqTime:J
    .end local v16           #idleTime:J
    :cond_0
    const-string v18, "DevCpuMetricCol"

    const/16 v23, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 145
    const-string v18, "DevCpuMetricCol"

    const-string v23, "pack"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/kpi/perfstats/Logger;->logExecutionTime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 148
    .end local v20           #callStartTime:J
    .end local v22           #sysCpu:[J
    :cond_1
    return-object v19
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string v0, "dev_cpu_data"

    return-object v0
.end method
