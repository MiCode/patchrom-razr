.class public Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;
.super Ljava/lang/Object;
.source "ProcessCpuMetricCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessCpuMetricData"
.end annotation


# static fields
.field private static final SORT_BY_PID:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPids:[I

.field public final mProcesses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;",
            ">;"
        }
    .end annotation
.end field

.field public final mUptime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData$1;

    invoke-direct {v0}, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData$1;-><init>()V

    sput-object v0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->SORT_BY_PID:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    .line 151
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->mProcesses:Ljava/util/List;

    .line 152
    const-string v5, "uptime"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->mUptime:J

    .line 153
    const-string v5, "pid_list"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->mPids:[I

    .line 154
    iget-object v5, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->mPids:[I

    if-eqz v5, :cond_2

    .line 155
    iget-object v0, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->mPids:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 156
    .local v3, pid:I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 157
    .local v4, processBundle:Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 158
    iget-object v5, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->mProcesses:Ljava/util/List;

    new-instance v6, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;-><init>(Landroid/os/Bundle;Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$1;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v3           #pid:I
    .end local v4           #processBundle:Landroid/os/Bundle;
    :cond_1
    iget-object v5, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->mProcesses:Ljava/util/List;

    sget-object v6, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->SORT_BY_PID:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 163
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_2
    return-void
.end method

.method private constructor <init>([I)V
    .locals 2
    .parameter "pids"

    .prologue
    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->mProcesses:Ljava/util/List;

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->mUptime:J

    .line 129
    iput-object p1, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->mPids:[I

    .line 130
    return-void
.end method

.method synthetic constructor <init>([ILcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;-><init>([I)V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->pack()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private pack()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->mPids:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->mPids:[I

    array-length v3, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->mProcesses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 139
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 140
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v3, "uptime"

    iget-wide v4, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->mUptime:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 141
    const-string v3, "pid_list"

    iget-object v4, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->mPids:[I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 142
    iget-object v3, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->mProcesses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;

    .line 143
    .local v1, data:Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;
    if-eqz v1, :cond_0

    .line 144
    iget v3, v1, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;->mPid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;->pack()Landroid/os/Bundle;
    invoke-static {v1}, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;->access$000(Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 148
    .end local v1           #data:Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuRawData;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public static unpack(Landroid/os/Bundle;)Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;
    .locals 3
    .parameter "bundle"

    .prologue
    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, metricData:Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;
    if-eqz p0, :cond_0

    .line 172
    const-string v2, "proc_cpu_data"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 173
    .local v0, dataBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 174
    new-instance v1, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;

    .end local v1           #metricData:Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;
    invoke-direct {v1, v0}, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;-><init>(Landroid/os/Bundle;)V

    .line 177
    .end local v0           #dataBundle:Landroid/os/Bundle;
    .restart local v1       #metricData:Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public isValid()Z
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->mPids:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->mPids:[I

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->mProcesses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/motorola/kpi/perfstats/ProcessCpuMetricCollector$ProcessCpuMetricData;->mUptime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
