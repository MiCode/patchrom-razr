.class public Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;
.super Ljava/lang/Object;
.source "ProcessCpuMetricCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessCpuRawData"
.end annotation


# instance fields
.field public final mBaseName:Ljava/lang/String;

.field public final mPid:I

.field public final mSystemTime:J

.field public final mUserTime:J


# direct methods
.method private constructor <init>(ILjava/lang/String;JJ)V
    .locals 0
    .parameter "pid"
    .parameter "baseName"
    .parameter "userTime"
    .parameter "systemTime"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;->mPid:I

    .line 79
    iput-object p2, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;->mBaseName:Ljava/lang/String;

    .line 80
    iput-wide p3, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;->mUserTime:J

    .line 81
    iput-wide p5, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;->mSystemTime:J

    .line 82
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;JJLcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p6}, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;-><init>(ILjava/lang/String;JJ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, "pid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;->mPid:I

    .line 86
    const-string v0, "utime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;->mUserTime:J

    .line 87
    const-string v0, "stime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;->mSystemTime:J

    .line 88
    const-string v0, "bname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;->mBaseName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;->pack()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private pack()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "pid"

    iget v2, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;->mPid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    const-string v1, "utime"

    iget-wide v2, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;->mUserTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 95
    const-string v1, "stime"

    iget-wide v2, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;->mSystemTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 96
    const-string v1, "bname"

    iget-object v2, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;->mBaseName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-object v0
.end method
