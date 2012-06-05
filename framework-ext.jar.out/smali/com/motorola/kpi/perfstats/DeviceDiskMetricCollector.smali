.class public abstract Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;
.super Lcom/motorola/kpi/perfstats/MetricCollector;
.source "DeviceDiskMetricCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$1;,
        Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "dev_disk_data"

.field public static final KEY_DISK_SDCARD_EXTERNAL:Ljava/lang/String; = "sdext"

.field public static final KEY_DISK_SDCARD_INTERNAL:Ljava/lang/String; = "sdint"

.field public static final KEY_DISK_SYSTEM:Ljava/lang/String; = "sys"

.field public static final KEY_DISK_USER_DATA:Ljava/lang/String; = "user"

.field private static final KEY_KB_READ:Ljava/lang/String; = "read"

.field private static final KEY_KB_WRITTEN:Ljava/lang/String; = "written"

.field private static final TAG:Ljava/lang/String; = "DevDiskMetricCol"


# instance fields
.field protected mDiskSdcardExternal:Lcom/motorola/kpi/perfstats/DiskData;

.field protected mDiskSdcardInternal:Lcom/motorola/kpi/perfstats/DiskData;

.field protected mDiskSystem:Lcom/motorola/kpi/perfstats/DiskData;

.field protected mDiskUserData:Lcom/motorola/kpi/perfstats/DiskData;


# direct methods
.method protected constructor <init>(Lcom/motorola/kpi/perfstats/LogSetting;)V
    .locals 0
    .parameter "logSetting"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/motorola/kpi/perfstats/MetricCollector;-><init>(Lcom/motorola/kpi/perfstats/LogSetting;)V

    .line 89
    return-void
.end method

.method static final create(Lcom/motorola/kpi/perfstats/LogSetting;)Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;
    .locals 3
    .parameter "logSetting"

    .prologue
    .line 96
    new-instance v0, Lcom/motorola/kpi/perfstats/Omap4DiskMetricCollector;

    invoke-direct {v0, p0}, Lcom/motorola/kpi/perfstats/Omap4DiskMetricCollector;-><init>(Lcom/motorola/kpi/perfstats/LogSetting;)V

    .line 99
    .local v0, diskMetricCollector:Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;
    const-string v1, "DevDiskMetricCol"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const-string v1, "DevDiskMetricCol"

    const-string v2, "Created Omap4DiskMetricCollector"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    return-object v0
.end method


# virtual methods
.method collect()Landroid/os/Bundle;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 113
    invoke-static {}, Lcom/motorola/kpi/perfstats/Logger;->getCallTime()J

    move-result-wide v1

    .line 115
    .local v1, callStartTime:J
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->parseDisks()V

    .line 122
    iget-object v4, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSystem:Lcom/motorola/kpi/perfstats/DiskData;

    if-eqz v4, :cond_0

    .line 123
    new-instance v3, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;

    iget-object v4, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSystem:Lcom/motorola/kpi/perfstats/DiskData;

    invoke-direct {v3, v4, v6}, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;-><init>(Lcom/motorola/kpi/perfstats/DiskData;Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$1;)V

    .line 124
    .local v3, data:Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;
    const-string v4, "sys"

    #calls: Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;->pack()Landroid/os/Bundle;
    invoke-static {v3}, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;->access$100(Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 127
    .end local v3           #data:Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;
    :cond_0
    iget-object v4, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskUserData:Lcom/motorola/kpi/perfstats/DiskData;

    if-eqz v4, :cond_1

    .line 128
    new-instance v3, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;

    iget-object v4, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskUserData:Lcom/motorola/kpi/perfstats/DiskData;

    invoke-direct {v3, v4, v6}, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;-><init>(Lcom/motorola/kpi/perfstats/DiskData;Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$1;)V

    .line 129
    .restart local v3       #data:Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;
    const-string v4, "user"

    #calls: Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;->pack()Landroid/os/Bundle;
    invoke-static {v3}, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;->access$100(Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 132
    .end local v3           #data:Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;
    :cond_1
    iget-object v4, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardInternal:Lcom/motorola/kpi/perfstats/DiskData;

    if-eqz v4, :cond_2

    .line 133
    new-instance v3, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;

    iget-object v4, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardInternal:Lcom/motorola/kpi/perfstats/DiskData;

    invoke-direct {v3, v4, v6}, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;-><init>(Lcom/motorola/kpi/perfstats/DiskData;Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$1;)V

    .line 134
    .restart local v3       #data:Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;
    const-string v4, "sdint"

    #calls: Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;->pack()Landroid/os/Bundle;
    invoke-static {v3}, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;->access$100(Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 137
    .end local v3           #data:Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;
    :cond_2
    iget-object v4, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardExternal:Lcom/motorola/kpi/perfstats/DiskData;

    if-eqz v4, :cond_3

    .line 138
    new-instance v3, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;

    iget-object v4, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardExternal:Lcom/motorola/kpi/perfstats/DiskData;

    invoke-direct {v3, v4, v6}, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;-><init>(Lcom/motorola/kpi/perfstats/DiskData;Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$1;)V

    .line 139
    .restart local v3       #data:Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;
    const-string v4, "sdext"

    #calls: Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;->pack()Landroid/os/Bundle;
    invoke-static {v3}, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;->access$100(Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 142
    .end local v3           #data:Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector$DeviceDiskMetricData;
    :cond_3
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 143
    const/4 v0, 0x0

    .line 146
    :cond_4
    const-string v4, "DevDiskMetricCol"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 147
    const-string v4, "DevDiskMetricCol"

    const-string v5, "pack"

    invoke-static {v4, v5, v1, v2}, Lcom/motorola/kpi/perfstats/Logger;->logExecutionTime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 150
    :cond_5
    return-object v0
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "dev_disk_data"

    return-object v0
.end method

.method protected abstract parseDisks()V
.end method
