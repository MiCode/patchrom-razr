.class public Lcom/motorola/kpi/perfstats/Omap4DiskMetricCollector;
.super Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;
.source "Omap4DiskMetricCollector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Omap4DiskMetricCol"


# direct methods
.method constructor <init>(Lcom/motorola/kpi/perfstats/LogSetting;)V
    .locals 0
    .parameter "logSetting"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;-><init>(Lcom/motorola/kpi/perfstats/LogSetting;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected parseDisks()V
    .locals 14

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x4

    const/4 v11, 0x3

    .line 38
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/MetricCollector;->mLogSetting:Lcom/motorola/kpi/perfstats/LogSetting;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/motorola/kpi/perfstats/MetricCollector;->mLogSetting:Lcom/motorola/kpi/perfstats/LogSetting;

    sget-object v9, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;->DEVICE_DISK:Lcom/motorola/kpi/perfstats/LogSetting$Metrics;

    invoke-virtual {v8, v9}, Lcom/motorola/kpi/perfstats/LogSetting;->isMetricLogged(Lcom/motorola/kpi/perfstats/LogSetting$Metrics;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 39
    invoke-static {}, Lcom/motorola/kpi/perfstats/Logger;->getCallTime()J

    move-result-wide v2

    .line 41
    .local v2, callStartTime:J
    const/4 v0, 0x0

    .line 46
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardInternal:Lcom/motorola/kpi/perfstats/DiskData;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardExternal:Lcom/motorola/kpi/perfstats/DiskData;

    if-nez v8, :cond_1b

    .line 47
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/proc/mounts"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, line:Ljava/lang/String;
    if-eqz v6, :cond_b

    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardInternal:Lcom/motorola/kpi/perfstats/DiskData;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardExternal:Lcom/motorola/kpi/perfstats/DiskData;

    if-nez v8, :cond_b

    .line 59
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\s+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, tokens:[Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 61
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardInternal:Lcom/motorola/kpi/perfstats/DiskData;

    if-nez v8, :cond_9

    const-string v8, "/mnt/sdcard"

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string v9, "/dev/block/vold/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 63
    new-instance v8, Lcom/motorola/kpi/perfstats/DiskData;

    invoke-direct {v8}, Lcom/motorola/kpi/perfstats/DiskData;-><init>()V

    iput-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardInternal:Lcom/motorola/kpi/perfstats/DiskData;

    .line 64
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardInternal:Lcom/motorola/kpi/perfstats/DiskData;

    const/4 v9, 0x0

    aget-object v9, v7, v9

    const-string v10, "/dev/block/vold/"

    invoke-virtual {v8, v9, v10}, Lcom/motorola/kpi/perfstats/DiskData;->extractPartitionNo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 161
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #tokens:[Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v1

    .line 162
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .local v5, ioe:Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v8, "Omap4DiskMetricCol"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 164
    if-eqz v0, :cond_3

    .line 166
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 178
    .end local v5           #ioe:Ljava/io/IOException;
    :cond_3
    :goto_2
    invoke-static {}, Lcom/motorola/kpi/perfstats/Logger;->getCallTime()J

    move-result-wide v2

    .line 179
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSystem:Lcom/motorola/kpi/perfstats/DiskData;

    if-eqz v8, :cond_4

    .line 180
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSystem:Lcom/motorola/kpi/perfstats/DiskData;

    invoke-virtual {v8}, Lcom/motorola/kpi/perfstats/DiskData;->updateSectorSize()V

    .line 182
    :cond_4
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskUserData:Lcom/motorola/kpi/perfstats/DiskData;

    if-eqz v8, :cond_5

    .line 183
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskUserData:Lcom/motorola/kpi/perfstats/DiskData;

    invoke-virtual {v8}, Lcom/motorola/kpi/perfstats/DiskData;->updateSectorSize()V

    .line 185
    :cond_5
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardInternal:Lcom/motorola/kpi/perfstats/DiskData;

    if-eqz v8, :cond_6

    .line 186
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardInternal:Lcom/motorola/kpi/perfstats/DiskData;

    invoke-virtual {v8}, Lcom/motorola/kpi/perfstats/DiskData;->updateSectorSize()V

    .line 188
    :cond_6
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardExternal:Lcom/motorola/kpi/perfstats/DiskData;

    if-eqz v8, :cond_7

    .line 189
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardExternal:Lcom/motorola/kpi/perfstats/DiskData;

    invoke-virtual {v8}, Lcom/motorola/kpi/perfstats/DiskData;->updateSectorSize()V

    .line 192
    :cond_7
    const-string v8, "Omap4DiskMetricCol"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 193
    const-string v8, "Omap4DiskMetricCol"

    const-string v9, "parseDisks getSectorSize"

    invoke-static {v8, v9, v2, v3}, Lcom/motorola/kpi/perfstats/Logger;->logExecutionTime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 196
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #callStartTime:J
    :cond_8
    return-void

    .line 66
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #callStartTime:J
    .restart local v6       #line:Ljava/lang/String;
    .restart local v7       #tokens:[Ljava/lang/String;
    :cond_9
    :try_start_4
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardExternal:Lcom/motorola/kpi/perfstats/DiskData;

    if-nez v8, :cond_1

    const-string v8, "/mnt/sdcard-ext"

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string v9, "/dev/block/vold/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 69
    new-instance v8, Lcom/motorola/kpi/perfstats/DiskData;

    invoke-direct {v8}, Lcom/motorola/kpi/perfstats/DiskData;-><init>()V

    iput-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardExternal:Lcom/motorola/kpi/perfstats/DiskData;

    .line 70
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardExternal:Lcom/motorola/kpi/perfstats/DiskData;

    const/4 v9, 0x0

    aget-object v9, v7, v9

    const-string v10, "/dev/block/vold/"

    invoke-virtual {v8, v9, v10}, Lcom/motorola/kpi/perfstats/DiskData;->extractPartitionNo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 164
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #tokens:[Ljava/lang/String;
    :catchall_0
    move-exception v8

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_3
    if-eqz v0, :cond_a

    .line 166
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 169
    :cond_a
    :goto_4
    throw v8

    .line 75
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v6       #line:Ljava/lang/String;
    :cond_b
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 76
    const-string v8, "Omap4DiskMetricCol"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 77
    const-string v8, "Omap4DiskMetricCol"

    const-string v9, "parseDisks /proc/mounts"

    invoke-static {v8, v9, v2, v3}, Lcom/motorola/kpi/perfstats/Logger;->logExecutionTime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 85
    .end local v6           #line:Ljava/lang/String;
    :cond_c
    :goto_5
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSystem:Lcom/motorola/kpi/perfstats/DiskData;

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskUserData:Lcom/motorola/kpi/perfstats/DiskData;

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardInternal:Lcom/motorola/kpi/perfstats/DiskData;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardInternal:Lcom/motorola/kpi/perfstats/DiskData;

    iget-object v8, v8, Lcom/motorola/kpi/perfstats/DiskData;->mBlockName:Ljava/lang/String;

    if-eqz v8, :cond_e

    :cond_d
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardExternal:Lcom/motorola/kpi/perfstats/DiskData;

    if-eqz v8, :cond_1a

    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardExternal:Lcom/motorola/kpi/perfstats/DiskData;

    iget-object v8, v8, Lcom/motorola/kpi/perfstats/DiskData;->mBlockName:Ljava/lang/String;

    if-nez v8, :cond_1a

    .line 98
    :cond_e
    invoke-static {}, Lcom/motorola/kpi/perfstats/Logger;->getCallTime()J

    move-result-wide v2

    .line 99
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/proc/partitions"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 103
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_f
    :goto_6
    :try_start_7
    invoke-static {v0}, Lcom/motorola/kpi/perfstats/MetricCollector;->sanitizedReadLine(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #line:Ljava/lang/String;
    if-eqz v6, :cond_13

    .line 104
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\s+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 105
    .restart local v7       #tokens:[Ljava/lang/String;
    if-eqz v7, :cond_f

    array-length v8, v7

    if-lt v8, v12, :cond_f

    .line 112
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSystem:Lcom/motorola/kpi/perfstats/DiskData;

    if-nez v8, :cond_10

    array-length v8, v7

    if-ne v8, v13, :cond_10

    const-string v8, "system"

    const/4 v9, 0x4

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 114
    new-instance v8, Lcom/motorola/kpi/perfstats/DiskData;

    invoke-direct {v8}, Lcom/motorola/kpi/perfstats/DiskData;-><init>()V

    iput-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSystem:Lcom/motorola/kpi/perfstats/DiskData;

    .line 115
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSystem:Lcom/motorola/kpi/perfstats/DiskData;

    const/4 v9, 0x0

    aget-object v9, v7, v9

    iput-object v9, v8, Lcom/motorola/kpi/perfstats/DiskData;->mMajorPartition:Ljava/lang/String;

    .line 116
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSystem:Lcom/motorola/kpi/perfstats/DiskData;

    const/4 v9, 0x1

    aget-object v9, v7, v9

    iput-object v9, v8, Lcom/motorola/kpi/perfstats/DiskData;->mMinorPartition:Ljava/lang/String;

    .line 117
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSystem:Lcom/motorola/kpi/perfstats/DiskData;

    const/4 v9, 0x3

    aget-object v9, v7, v9

    iput-object v9, v8, Lcom/motorola/kpi/perfstats/DiskData;->mBlockName:Ljava/lang/String;

    goto :goto_6

    .line 161
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #tokens:[Ljava/lang/String;
    :catch_1
    move-exception v5

    goto/16 :goto_1

    .line 118
    .restart local v6       #line:Ljava/lang/String;
    .restart local v7       #tokens:[Ljava/lang/String;
    :cond_10
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskUserData:Lcom/motorola/kpi/perfstats/DiskData;

    if-nez v8, :cond_11

    array-length v8, v7

    if-ne v8, v13, :cond_11

    const-string v8, "userdata"

    const/4 v9, 0x4

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 120
    new-instance v8, Lcom/motorola/kpi/perfstats/DiskData;

    invoke-direct {v8}, Lcom/motorola/kpi/perfstats/DiskData;-><init>()V

    iput-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskUserData:Lcom/motorola/kpi/perfstats/DiskData;

    .line 121
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskUserData:Lcom/motorola/kpi/perfstats/DiskData;

    const/4 v9, 0x0

    aget-object v9, v7, v9

    iput-object v9, v8, Lcom/motorola/kpi/perfstats/DiskData;->mMajorPartition:Ljava/lang/String;

    .line 122
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskUserData:Lcom/motorola/kpi/perfstats/DiskData;

    const/4 v9, 0x1

    aget-object v9, v7, v9

    iput-object v9, v8, Lcom/motorola/kpi/perfstats/DiskData;->mMinorPartition:Ljava/lang/String;

    .line 123
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskUserData:Lcom/motorola/kpi/perfstats/DiskData;

    const/4 v9, 0x3

    aget-object v9, v7, v9

    iput-object v9, v8, Lcom/motorola/kpi/perfstats/DiskData;->mBlockName:Ljava/lang/String;

    goto :goto_6

    .line 164
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #tokens:[Ljava/lang/String;
    :catchall_1
    move-exception v8

    goto/16 :goto_3

    .line 124
    .restart local v6       #line:Ljava/lang/String;
    .restart local v7       #tokens:[Ljava/lang/String;
    :cond_11
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardInternal:Lcom/motorola/kpi/perfstats/DiskData;

    if-eqz v8, :cond_12

    const/4 v8, 0x1

    aget-object v8, v7, v8

    iget-object v9, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardInternal:Lcom/motorola/kpi/perfstats/DiskData;

    iget-object v9, v9, Lcom/motorola/kpi/perfstats/DiskData;->mMinorPartition:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    const/4 v8, 0x0

    aget-object v8, v7, v8

    iget-object v9, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardInternal:Lcom/motorola/kpi/perfstats/DiskData;

    iget-object v9, v9, Lcom/motorola/kpi/perfstats/DiskData;->mMajorPartition:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 127
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardInternal:Lcom/motorola/kpi/perfstats/DiskData;

    const/4 v9, 0x3

    aget-object v9, v7, v9

    iput-object v9, v8, Lcom/motorola/kpi/perfstats/DiskData;->mBlockName:Ljava/lang/String;

    goto/16 :goto_6

    .line 128
    :cond_12
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardExternal:Lcom/motorola/kpi/perfstats/DiskData;

    if-eqz v8, :cond_f

    const/4 v8, 0x1

    aget-object v8, v7, v8

    iget-object v9, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardExternal:Lcom/motorola/kpi/perfstats/DiskData;

    iget-object v9, v9, Lcom/motorola/kpi/perfstats/DiskData;->mMinorPartition:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v8, 0x0

    aget-object v8, v7, v8

    iget-object v9, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardExternal:Lcom/motorola/kpi/perfstats/DiskData;

    iget-object v9, v9, Lcom/motorola/kpi/perfstats/DiskData;->mMajorPartition:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 131
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardExternal:Lcom/motorola/kpi/perfstats/DiskData;

    const/4 v9, 0x3

    aget-object v9, v7, v9

    iput-object v9, v8, Lcom/motorola/kpi/perfstats/DiskData;->mBlockName:Ljava/lang/String;

    goto/16 :goto_6

    .line 135
    .end local v7           #tokens:[Ljava/lang/String;
    :cond_13
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 136
    const-string v8, "Omap4DiskMetricCol"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 137
    const-string v8, "Omap4DiskMetricCol"

    const-string v9, "parseDisks /proc/partitions"

    invoke-static {v8, v9, v2, v3}, Lcom/motorola/kpi/perfstats/Logger;->logExecutionTime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 142
    .end local v6           #line:Ljava/lang/String;
    :cond_14
    :goto_7
    invoke-static {}, Lcom/motorola/kpi/perfstats/Logger;->getCallTime()J

    move-result-wide v2

    .line 143
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSystem:Lcom/motorola/kpi/perfstats/DiskData;

    if-eqz v8, :cond_15

    .line 144
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSystem:Lcom/motorola/kpi/perfstats/DiskData;

    invoke-virtual {v8}, Lcom/motorola/kpi/perfstats/DiskData;->updateIoStat()V

    .line 146
    :cond_15
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskUserData:Lcom/motorola/kpi/perfstats/DiskData;

    if-eqz v8, :cond_16

    .line 147
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskUserData:Lcom/motorola/kpi/perfstats/DiskData;

    invoke-virtual {v8}, Lcom/motorola/kpi/perfstats/DiskData;->updateIoStat()V

    .line 149
    :cond_16
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardInternal:Lcom/motorola/kpi/perfstats/DiskData;

    if-eqz v8, :cond_17

    .line 150
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardInternal:Lcom/motorola/kpi/perfstats/DiskData;

    invoke-virtual {v8}, Lcom/motorola/kpi/perfstats/DiskData;->updateIoStat()V

    .line 152
    :cond_17
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardExternal:Lcom/motorola/kpi/perfstats/DiskData;

    if-eqz v8, :cond_18

    .line 153
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DeviceDiskMetricCollector;->mDiskSdcardExternal:Lcom/motorola/kpi/perfstats/DiskData;

    invoke-virtual {v8}, Lcom/motorola/kpi/perfstats/DiskData;->updateIoStat()V

    .line 155
    :cond_18
    const-string v8, "Omap4DiskMetricCol"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 156
    const-string v8, "Omap4DiskMetricCol"

    const-string v9, "parseDisks /proc/mmcblock#/mmcblock#p#/stat"

    invoke-static {v8, v9, v2, v3}, Lcom/motorola/kpi/perfstats/Logger;->logExecutionTime(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 164
    :cond_19
    if-eqz v0, :cond_3

    .line 166
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_2

    .line 167
    :catch_2
    move-exception v4

    .line 168
    .local v4, e:Ljava/io/IOException;
    const-string v8, "Omap4DiskMetricCol"

    const-string v9, "Unable to close BufferedReader."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 167
    .end local v4           #e:Ljava/io/IOException;
    .restart local v5       #ioe:Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 168
    .restart local v4       #e:Ljava/io/IOException;
    const-string v8, "Omap4DiskMetricCol"

    const-string v9, "Unable to close BufferedReader."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 167
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #ioe:Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 168
    .restart local v4       #e:Ljava/io/IOException;
    const-string v9, "Omap4DiskMetricCol"

    const-string v10, "Unable to close BufferedReader."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :cond_1a
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_7

    :cond_1b
    move-object v1, v0

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    goto/16 :goto_5
.end method
