.class public Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;
.super Ljava/lang/Object;
.source "DeviceDiskMetricCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceDiskMetricData"
.end annotation


# instance fields
.field public final mKbRead:J

.field public final mKbWritten:J


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "read"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;->mKbRead:J

    .line 57
    const-string v0, "written"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;->mKbWritten:J

    .line 58
    return-void
.end method

.method private constructor <init>(Lcom/motorola/kpi/perfstats/DiskData;)V
    .locals 2
    .parameter "data"

    .prologue
    const-wide/16 v0, 0x0

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/motorola/kpi/perfstats/DiskData;->getKbRead()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;->mKbRead:J

    .line 48
    invoke-virtual {p1}, Lcom/motorola/kpi/perfstats/DiskData;->getKbWritten()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;->mKbWritten:J

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_0
    iput-wide v0, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;->mKbRead:J

    .line 51
    iput-wide v0, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;->mKbWritten:J

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/motorola/kpi/perfstats/DiskData;Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;-><init>(Lcom/motorola/kpi/perfstats/DiskData;)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;->pack()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private pack()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "read"

    iget-wide v2, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;->mKbRead:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 63
    const-string v1, "written"

    iget-wide v2, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;->mKbWritten:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 64
    return-object v0
.end method

.method public static unpack(Landroid/os/Bundle;Ljava/lang/String;)Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;
    .locals 4
    .parameter "bundle"
    .parameter "diskType"

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, data:Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;
    if-eqz p0, :cond_0

    .line 75
    const-string v3, "dev_disk_data"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 76
    .local v1, dataBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 78
    .local v2, diskBundle:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 79
    new-instance v0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;

    .end local v0           #data:Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;
    invoke-direct {v0, v2}, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;-><init>(Landroid/os/Bundle;)V

    .line 83
    .end local v1           #dataBundle:Landroid/os/Bundle;
    .end local v2           #diskBundle:Landroid/os/Bundle;
    .restart local v0       #data:Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;
    :cond_0
    return-object v0
.end method
