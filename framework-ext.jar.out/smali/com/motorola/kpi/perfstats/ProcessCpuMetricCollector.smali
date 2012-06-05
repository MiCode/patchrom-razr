.class public Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector;
.super Lcom/motorola/kpi/perfstats/MetricCollector;
.source "ProcessCpuMetricCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$1;,
        Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;,
        Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "proc_cpu_data"

.field private static final KEY_BASE_NAME:Ljava/lang/String; = "bname"

.field private static final KEY_PID:Ljava/lang/String; = "pid"

.field private static final KEY_PID_LIST:Ljava/lang/String; = "pid_list"

.field private static final KEY_SYSTEM_TIME:Ljava/lang/String; = "stime"

.field private static final KEY_UPTIME:Ljava/lang/String; = "uptime"

.field private static final KEY_USER_TIME:Ljava/lang/String; = "utime"

.field private static final PROCESS_STATS_FORMAT:[I = null

.field private static final PROCESS_STAT_BASE_NAME:I = 0x0

.field private static final PROCESS_STAT_STIME:I = 0x2

.field private static final PROCESS_STAT_UTIME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ProcCpuMetricCol"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector;->PROCESS_STATS_FORMAT:[I

    return-void

    :array_0
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x12t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/motorola/kpi/perfstats/LogSetting;)V
    .locals 0
    .parameter "logSetting"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/motorola/kpi/perfstats/MetricCollector;-><init>(Lcom/motorola/kpi/perfstats/LogSetting;)V

    .line 183
    return-void
.end method


# virtual methods
.method public collect()Landroid/os/Bundle;
    .locals 24

    .prologue
    .line 192
    const/4 v13, 0x0

    .line 194
    .local v13, bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/motorola/kpi/perfstats/MetricCollector;->mLogSetting:Lcom/motorola/kpi/perfstats/LogSetting;

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/motorola/kpi/perfstats/MetricCollector;->mLogSetting:Lcom/motorola/kpi/perfstats/LogSetting;

    sget-object v22, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;->PROCESS_CPU:Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/motorola/kpi/perfstats/LogSetting;->isMetricLogged(Lcom/motorola/kpi/perfstats/LogSetting$Metrics;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 195
    invoke-static {}, Lcom/motorola/kpi/perfstats/Logger;->getCallTime()J

    move-result-wide v14

    .line 197
    .local v14, callStartTime:J
    const-string v11, "/proc"

    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-static {v11, v0}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v19

    .line 199
    .local v19, pids:[I
    if-eqz v19, :cond_3

    move-object/from16 v0, v19

    array-length v11, v0

    if-lez v11, :cond_3

    .line 200
    new-instance v16, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;

    const/4 v11, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v11}, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;-><init>([ILcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$1;)V

    .line 201
    .local v16, data:Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;
    move-object/from16 v12, v19

    .local v12, arr$:[I
    array-length v0, v12

    move/from16 v18, v0

    .local v18, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    aget v5, v12, v17

    .line 202
    .local v5, pid:I
    if-lez v5, :cond_1

    .line 203
    const/4 v11, 0x3

    new-array v0, v11, [J

    move-object/from16 v20, v0

    .line 204
    .local v20, procStats:[J
    const/4 v11, 0x3

    new-array v0, v11, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 205
    .local v21, procStatsString:[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "/proc/"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v22, "/"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v22, "stat"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v22, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector;->PROCESS_STATS_FORMAT:[I

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-static {v11, v0, v1, v2, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 208
    const/4 v11, 0x0

    aget-object v6, v21, v11

    .line 209
    .local v6, baseName:Ljava/lang/String;
    const/4 v11, 0x1

    aget-wide v7, v20, v11

    .line 210
    .local v7, userTime:J
    const/4 v11, 0x2

    aget-wide v9, v20, v11

    .line 211
    .local v9, systemTime:J
    const-wide/16 v22, 0x0

    cmp-long v11, v7, v22

    if-gtz v11, :cond_0

    const-wide/16 v22, 0x0

    cmp-long v11, v9, v22

    if-lez v11, :cond_1

    .line 212
    :cond_0
    new-instance v4, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;-><init>(ILjava/lang/String;JJLcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$1;)V

    .line 214
    .local v4, rawData:Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;
    move-object/from16 v0, v16

    iget-object v11, v0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->mProcesses:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    .end local v4           #rawData:Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;
    .end local v6           #baseName:Ljava/lang/String;
    .end local v7           #userTime:J
    .end local v9           #systemTime:J
    .end local v20           #procStats:[J
    .end local v21           #procStatsString:[Ljava/lang/String;
    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 219
    .end local v5           #pid:I
    :cond_2
    #calls: Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->pack()Landroid/os/Bundle;
    invoke-static/range {v16 .. v16}, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->access$400(Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;)Landroid/os/Bundle;

    move-result-object v13

    .line 222
    .end local v12           #arr$:[I
    .end local v16           #data:Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;
    .end local v17           #i$:I
    .end local v18           #len$:I
    :cond_3
    const-string v11, "ProcCpuMetricCol"

    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-static {v11, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 223
    const-string v11, "ProcCpuMetricCol"

    const-string v22, "pack"

    move-object/from16 v0, v22

    invoke-static {v11, v0, v14, v15}, Lcom/motorola/kpi/perfstats/Logger;->logExecutionTime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 226
    .end local v14           #callStartTime:J
    .end local v19           #pids:[I
    :cond_4
    return-object v13
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const-string v0, "proc_cpu_data"

    return-object v0
.end method
