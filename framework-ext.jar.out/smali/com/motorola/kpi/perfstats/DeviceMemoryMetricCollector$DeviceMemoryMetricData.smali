.class public Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;
.super Ljava/lang/Object;
.source "DeviceMemoryMetricCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceMemoryMetricData"
.end annotation


# instance fields
.field public final mMemBuffers:J

.field public final mMemCached:J

.field public final mMemFree:J

.field public final mMemTotal:J


# direct methods
.method private constructor <init>(JJJJ)V
    .locals 0
    .parameter "memTotal"
    .parameter "memFree"
    .parameter "memBuffers"
    .parameter "memCached"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;->mMemTotal:J

    .line 50
    iput-wide p3, p0, Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;->mMemFree:J

    .line 51
    iput-wide p5, p0, Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;->mMemBuffers:J

    .line 52
    iput-wide p7, p0, Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;->mMemCached:J

    .line 53
    return-void
.end method

.method synthetic constructor <init>(JJJJLcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p8}, Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;-><init>(JJJJ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "total"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;->mMemTotal:J

    .line 57
    const-string v0, "free"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;->mMemFree:J

    .line 58
    const-string v0, "buffers"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;->mMemBuffers:J

    .line 59
    const-string v0, "cached"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;->mMemCached:J

    .line 60
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;->pack()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private pack()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "total"

    iget-wide v2, p0, Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;->mMemTotal:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 65
    const-string v1, "free"

    iget-wide v2, p0, Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;->mMemFree:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 66
    const-string v1, "buffers"

    iget-wide v2, p0, Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;->mMemBuffers:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 67
    const-string v1, "cached"

    iget-wide v2, p0, Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;->mMemCached:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 68
    return-object v0
.end method

.method public static unpack(Landroid/os/Bundle;)Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;
    .locals 3
    .parameter "bundle"

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, data:Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;
    if-eqz p0, :cond_0

    .line 78
    const-string v2, "dev_mem_data"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 79
    .local v1, dataBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 80
    new-instance v0, Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;

    .end local v0           #data:Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;
    invoke-direct {v0, v1}, Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;-><init>(Landroid/os/Bundle;)V

    .line 83
    .end local v1           #dataBundle:Landroid/os/Bundle;
    .restart local v0       #data:Lcom/motorola/kpi/perfstats/DeviceMemoryMetricCollector$DeviceMemoryMetricData;
    :cond_0
    return-object v0
.end method
