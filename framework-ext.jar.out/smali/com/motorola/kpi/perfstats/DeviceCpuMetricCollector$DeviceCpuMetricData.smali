.class public Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;
.super Ljava/lang/Object;
.source "DeviceCpuMetricCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceCpuMetricData"
.end annotation


# instance fields
.field public final mIdleTime:J

.field public final mIoWaitTime:J

.field public final mIrqTime:J

.field public final mSoftIrqTime:J

.field public final mSystemTime:J

.field public final mUserTime:J


# direct methods
.method private constructor <init>(JJJJJJ)V
    .locals 0
    .parameter "userTime"
    .parameter "systemTime"
    .parameter "ioWaitTime"
    .parameter "irqTime"
    .parameter "softIrqTime"
    .parameter "idleTime"

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-wide p1, p0, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;->mUserTime:J

    .line 72
    iput-wide p3, p0, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;->mSystemTime:J

    .line 73
    iput-wide p5, p0, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;->mIoWaitTime:J

    .line 74
    iput-wide p7, p0, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;->mIrqTime:J

    .line 75
    iput-wide p9, p0, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;->mSoftIrqTime:J

    .line 76
    iput-wide p11, p0, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;->mIdleTime:J

    .line 77
    return-void
.end method

.method synthetic constructor <init>(JJJJJJLcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p12}, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;-><init>(JJJJJJ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;->mUserTime:J

    .line 81
    const-string v0, "system"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;->mSystemTime:J

    .line 82
    const-string v0, "io_wait"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;->mIoWaitTime:J

    .line 83
    const-string v0, "irq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;->mIrqTime:J

    .line 84
    const-string v0, "soft_irq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;->mSoftIrqTime:J

    .line 85
    const-string v0, "idle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;->mIdleTime:J

    .line 86
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;->pack()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private pack()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "user"

    iget-wide v2, p0, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;->mUserTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 91
    const-string v1, "system"

    iget-wide v2, p0, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;->mSystemTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 92
    const-string v1, "idle"

    iget-wide v2, p0, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;->mIdleTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 93
    const-string v1, "io_wait"

    iget-wide v2, p0, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;->mIoWaitTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 94
    const-string v1, "irq"

    iget-wide v2, p0, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;->mIrqTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 95
    const-string v1, "soft_irq"

    iget-wide v2, p0, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;->mSoftIrqTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 96
    return-object v0
.end method

.method public static unpack(Landroid/os/Bundle;)Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;
    .locals 3
    .parameter "bundle"

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, data:Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;
    if-eqz p0, :cond_0

    .line 106
    const-string v2, "dev_cpu_data"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 107
    .local v1, dataBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 108
    new-instance v0, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;

    .end local v0           #data:Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;
    invoke-direct {v0, v1}, Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;-><init>(Landroid/os/Bundle;)V

    .line 111
    .end local v1           #dataBundle:Landroid/os/Bundle;
    .restart local v0       #data:Lcom/motorola/kpi/perfstats/DeviceCpuMetricCollector$DeviceCpuMetricData;
    :cond_0
    return-object v0
.end method
