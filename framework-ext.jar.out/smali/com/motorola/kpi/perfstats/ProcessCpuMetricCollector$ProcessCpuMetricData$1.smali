.class final Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData$1;
.super Ljava/lang/Object;
.source "ProcessCpuMetricCollector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;)I
    .locals 5
    .parameter "p1"
    .parameter "p2"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 109
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 112
    goto :goto_0

    .line 113
    :cond_2
    if-nez p2, :cond_3

    move v0, v2

    .line 114
    goto :goto_0

    .line 117
    :cond_3
    iget v3, p1, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;->mPid:I

    iget v4, p2, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;->mPid:I

    if-eq v3, v4, :cond_0

    .line 119
    iget v0, p1, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;->mPid:I

    iget v3, p2, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;->mPid:I

    if-ge v0, v3, :cond_4

    move v0, v2

    .line 120
    goto :goto_0

    :cond_4
    move v0, v1

    .line 122
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    check-cast p1, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;

    .end local p1
    check-cast p2, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData$1;->compare(Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;)I

    move-result v0

    return v0
.end method
