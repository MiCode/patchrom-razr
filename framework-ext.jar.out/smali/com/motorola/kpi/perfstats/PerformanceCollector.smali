.class public final Lcom/motorola/kpi/perfstats/PerformanceCollector;
.super Ljava/lang/Object;
.source "PerformanceCollector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PerfCollector"


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mComponent:Ljava/lang/String;

.field private final mLogSetting:Lcom/motorola/kpi/perfstats/LogSetting;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .parameter "component"
    .parameter "action"
    .parameter "context"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/motorola/kpi/perfstats/PerformanceCollector;->mComponent:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/motorola/kpi/perfstats/PerformanceCollector;->mAction:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/motorola/kpi/perfstats/LogSetting;

    iget-object v1, p0, Lcom/motorola/kpi/perfstats/PerformanceCollector;->mComponent:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/kpi/perfstats/PerformanceCollector;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p3}, Lcom/motorola/kpi/perfstats/LogSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/kpi/perfstats/PerformanceCollector;->mLogSetting:Lcom/motorola/kpi/perfstats/LogSetting;

    .line 39
    return-void
.end method


# virtual methods
.method collect()Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/motorola/kpi/perfstats/PerformanceCollector;->mLogSetting:Lcom/motorola/kpi/perfstats/LogSetting;

    invoke-virtual {v5}, Lcom/motorola/kpi/perfstats/LogSetting;->logLimitReached()Z

    move-result v5

    if-nez v5, :cond_5

    .line 49
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .restart local v0       #bundle:Landroid/os/Bundle;
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 52
    .local v2, collectorList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/motorola/kpi/perfstats/MetricCollector;>;"
    iget-object v5, p0, Lcom/motorola/kpi/perfstats/PerformanceCollector;->mLogSetting:Lcom/motorola/kpi/perfstats/LogSetting;

    sget-object v6, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;->DEVICE_CPU:Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    invoke-virtual {v5, v6}, Lcom/motorola/kpi/perfstats/LogSetting;->isMetricLogged(Lcom/motorola/kpi/perfstats/LogSetting$Metrics;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    new-instance v5, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector;

    iget-object v6, p0, Lcom/motorola/kpi/perfstats/PerformanceCollector;->mLogSetting:Lcom/motorola/kpi/perfstats/LogSetting;

    invoke-direct {v5, v6}, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector;-><init>(Lcom/motorola/kpi/perfstats/LogSetting;)V

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    iget-object v5, p0, Lcom/motorola/kpi/perfstats/PerformanceCollector;->mLogSetting:Lcom/motorola/kpi/perfstats/LogSetting;

    sget-object v6, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;->DEVICE_MEMORY:Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    invoke-virtual {v5, v6}, Lcom/motorola/kpi/perfstats/LogSetting;->isMetricLogged(Lcom/motorola/kpi/perfstats/LogSetting$Metrics;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    new-instance v5, Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector;

    iget-object v6, p0, Lcom/motorola/kpi/perfstats/PerformanceCollector;->mLogSetting:Lcom/motorola/kpi/perfstats/LogSetting;

    invoke-direct {v5, v6}, Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector;-><init>(Lcom/motorola/kpi/perfstats/LogSetting;)V

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_1
    iget-object v5, p0, Lcom/motorola/kpi/perfstats/PerformanceCollector;->mLogSetting:Lcom/motorola/kpi/perfstats/LogSetting;

    sget-object v6, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;->DEVICE_DISK:Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    invoke-virtual {v5, v6}, Lcom/motorola/kpi/perfstats/LogSetting;->isMetricLogged(Lcom/motorola/kpi/perfstats/LogSetting$Metrics;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 62
    iget-object v5, p0, Lcom/motorola/kpi/perfstats/PerformanceCollector;->mLogSetting:Lcom/motorola/kpi/perfstats/LogSetting;

    invoke-static {v5}, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->create(Lcom/motorola/kpi/perfstats/LogSetting;)Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_2
    iget-object v5, p0, Lcom/motorola/kpi/perfstats/PerformanceCollector;->mLogSetting:Lcom/motorola/kpi/perfstats/LogSetting;

    sget-object v6, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;->PROCESS_CPU:Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    invoke-virtual {v5, v6}, Lcom/motorola/kpi/perfstats/LogSetting;->isMetricLogged(Lcom/motorola/kpi/perfstats/LogSetting$Metrics;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 67
    new-instance v5, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector;

    iget-object v6, p0, Lcom/motorola/kpi/perfstats/PerformanceCollector;->mLogSetting:Lcom/motorola/kpi/perfstats/LogSetting;

    invoke-direct {v5, v6}, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector;-><init>(Lcom/motorola/kpi/perfstats/LogSetting;)V

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_3
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/kpi/perfstats/MetricCollector;

    .line 75
    .local v1, collector:Lcom/motorola/kpi/perfstats/MetricCollector;
    if-eqz v1, :cond_4

    .line 76
    invoke-virtual {v1}, Lcom/motorola/kpi/perfstats/MetricCollector;->collect()Landroid/os/Bundle;

    move-result-object v4

    .line 77
    .local v4, metricBundle:Landroid/os/Bundle;
    if-eqz v4, :cond_4

    .line 78
    invoke-virtual {v1}, Lcom/motorola/kpi/perfstats/MetricCollector;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 83
    .end local v1           #collector:Lcom/motorola/kpi/perfstats/MetricCollector;
    .end local v2           #collectorList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/motorola/kpi/perfstats/MetricCollector;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #metricBundle:Landroid/os/Bundle;
    :cond_5
    const-string v5, "PerfCollector"

    const-string v6, "Log limit reached."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_6
    return-object v0
.end method
