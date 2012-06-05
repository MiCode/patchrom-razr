.class public Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector;
.super Lcom/motorola/kpi/perfstats/MetricCollector;
.source "DeviceMemoryMetricCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$1;,
        Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "dev_mem_data"

.field private static final KEY_MEM_BUFFERS:Ljava/lang/String; = "buffers"

.field private static final KEY_MEM_CACHED:Ljava/lang/String; = "cached"

.field private static final KEY_MEM_FREE:Ljava/lang/String; = "free"

.field private static final KEY_MEM_TOTAL:Ljava/lang/String; = "total"

.field private static final MEM_INDEX_BUFFERS:I = 0x2

.field private static final MEM_INDEX_CACHED:I = 0x3

.field private static final MEM_INDEX_FREE:I = 0x1

.field private static final MEM_INDEX_TOTAL:I = 0x0

.field private static final MEM_STR_BUFFERS:Ljava/lang/String; = "MemBuffers:"

.field private static final MEM_STR_CACHED:Ljava/lang/String; = "MemCached:"

.field private static final MEM_STR_FREE:Ljava/lang/String; = "MemFree:"

.field private static final MEM_STR_TOTAL:Ljava/lang/String; = "MemTotal:"

.field private static final TAG:Ljava/lang/String; = "DevMemMetricCol"


# direct methods
.method constructor <init>(Lcom/motorola/kpi/perfstats/LogSetting;)V
    .locals 0
    .parameter "logSetting"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/motorola/kpi/perfstats/MetricCollector;-><init>(Lcom/motorola/kpi/perfstats/LogSetting;)V

    .line 89
    return-void
.end method


# virtual methods
.method collect()Landroid/os/Bundle;
    .locals 15

    .prologue
    .line 93
    const/4 v10, 0x0

    .line 95
    .local v10, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/motorola/kpi/perfstats/MetricCollector;->mLogSetting:Lcom/motorola/kpi/perfstats/LogSetting;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/kpi/perfstats/MetricCollector;->mLogSetting:Lcom/motorola/kpi/perfstats/LogSetting;

    sget-object v2, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;->DEVICE_MEMORY:Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    invoke-virtual {v1, v2}, Lcom/motorola/kpi/perfstats/LogSetting;->isMetricLogged(Lcom/motorola/kpi/perfstats/LogSetting$Metrics;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-static {}, Lcom/motorola/kpi/perfstats/Logger;->getCallTime()J

    move-result-wide v11

    .line 98
    .local v11, callStartTime:J
    const/4 v1, 0x4

    new-array v13, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MemTotal:"

    aput-object v2, v13, v1

    const/4 v1, 0x1

    const-string v2, "MemFree:"

    aput-object v2, v13, v1

    const/4 v1, 0x2

    const-string v2, "MemBuffers:"

    aput-object v2, v13, v1

    const/4 v1, 0x3

    const-string v2, "MemCached:"

    aput-object v2, v13, v1

    .line 100
    .local v13, procMemFields:[Ljava/lang/String;
    const/4 v1, 0x4

    new-array v14, v1, [J

    .line 101
    .local v14, procMemValues:[J
    const-string v1, "/proc/meminfo"

    invoke-static {v1, v13, v14}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 102
    new-instance v0, Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;

    const/4 v1, 0x0

    aget-wide v1, v14, v1

    const/4 v3, 0x1

    aget-wide v3, v14, v3

    const/4 v5, 0x2

    aget-wide v5, v14, v5

    const/4 v7, 0x3

    aget-wide v7, v14, v7

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;-><init>(JJJJLcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$1;)V

    .line 106
    .local v0, data:Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;
    #calls: Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;->pack()Landroid/os/Bundle;
    invoke-static {v0}, Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;->access$100(Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;)Landroid/os/Bundle;

    move-result-object v10

    .line 108
    const-string v1, "DevMemMetricCol"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "DevMemMetricCol"

    const-string v2, "pack"

    invoke-static {v1, v2, v11, v12}, Lcom/motorola/kpi/perfstats/Logger;->logExecutionTime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 112
    .end local v0           #data:Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;
    .end local v11           #callStartTime:J
    .end local v13           #procMemFields:[Ljava/lang/String;
    .end local v14           #procMemValues:[J
    :cond_0
    return-object v10
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string v0, "dev_mem_data"

    return-object v0
.end method
