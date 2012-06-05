.class public Lcom/motorola/kpi/perfstats/DiskData;
.super Ljava/lang/Object;
.source "DiskData.java"


# static fields
.field private static final DISK_STATS_INDEX_READ_SECTORS:I = 0x2

.field private static final DISK_STATS_INDEX_WRITTEN_SECTORS:I = 0x6

.field private static final KILOBYTE:J = 0x400L

.field private static final TAG:Ljava/lang/String; = "DiskData"


# instance fields
.field mBlockName:Ljava/lang/String;

.field mMajorPartition:Ljava/lang/String;

.field mMinorPartition:Ljava/lang/String;

.field private mSectorSize:I

.field private mSectorsRead:J

.field private mSectorsWritten:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/kpi/perfstats/DiskData;->mSectorSize:I

    .line 36
    return-void
.end method


# virtual methods
.method extractPartitionNo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "input"
    .parameter "removal"

    .prologue
    .line 43
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 44
    const-string v1, ""

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, partNums:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 46
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/motorola/kpi/perfstats/DiskData;->mMajorPartition:Ljava/lang/String;

    .line 47
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/motorola/kpi/perfstats/DiskData;->mMinorPartition:Ljava/lang/String;

    .line 50
    .end local v0           #partNums:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method getKbRead()J
    .locals 6

    .prologue
    .line 101
    iget-wide v2, p0, Lcom/motorola/kpi/perfstats/DiskData;->mSectorsRead:J

    iget v4, p0, Lcom/motorola/kpi/perfstats/DiskData;->mSectorSize:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long v0, v2, v4

    .line 102
    .local v0, kbRead:J
    return-wide v0
.end method

.method getKbWritten()J
    .locals 6

    .prologue
    .line 109
    iget-wide v2, p0, Lcom/motorola/kpi/perfstats/DiskData;->mSectorsWritten:J

    iget v4, p0, Lcom/motorola/kpi/perfstats/DiskData;->mSectorSize:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long v0, v2, v4

    .line 110
    .local v0, kbWritten:J
    return-wide v0
.end method

.method updateIoStat()V
    .locals 11

    .prologue
    .line 61
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DiskData;->mBlockName:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 65
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DiskData;->mBlockName:Ljava/lang/String;

    const/16 v9, 0x70

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 66
    .local v6, position:I
    if-lez v6, :cond_1

    .line 67
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DiskData;->mBlockName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, parentBlock:Ljava/lang/String;
    const/4 v0, 0x0

    .line 70
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/sys/block/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/kpi/perfstats/DiskData;->mBlockName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/stat"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {v1}, Lcom/motorola/kpi/perfstats/MetricCollector;->sanitizedReadLine(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 75
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\s+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, tokens:[Ljava/lang/String;
    array-length v8, v7

    const/16 v9, 0xb

    if-ne v8, v9, :cond_0

    .line 77
    const/4 v8, 0x2

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/motorola/kpi/perfstats/DiskData;->mSectorsRead:J

    .line 78
    const/4 v8, 0x6

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/motorola/kpi/perfstats/DiskData;->mSectorsWritten:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 85
    .end local v7           #tokens:[Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    .line 87
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 95
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #parentBlock:Ljava/lang/String;
    .end local v6           #position:I
    :cond_1
    :goto_0
    return-void

    .line 88
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #parentBlock:Ljava/lang/String;
    .restart local v6       #position:I
    :catch_0
    move-exception v3

    .line 89
    .local v3, ioe:Ljava/io/IOException;
    const-string v8, "DiskData"

    const-string v9, "Unable to close BufferedReader while getting disk io stat"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #ioe:Ljava/io/IOException;
    .end local v4           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 83
    .local v2, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v8, "DiskData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to find block "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/kpi/perfstats/DiskData;->mBlockName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    if-eqz v0, :cond_1

    .line 87
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 88
    :catch_2
    move-exception v3

    .line 89
    .restart local v3       #ioe:Ljava/io/IOException;
    const-string v8, "DiskData"

    const-string v9, "Unable to close BufferedReader while getting disk io stat"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v0, :cond_2

    .line 87
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 90
    :cond_2
    :goto_3
    throw v8

    .line 88
    :catch_3
    move-exception v3

    .line 89
    .restart local v3       #ioe:Ljava/io/IOException;
    const-string v9, "DiskData"

    const-string v10, "Unable to close BufferedReader while getting disk io stat"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 85
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #ioe:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .line 82
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method updateSectorSize()V
    .locals 11

    .prologue
    .line 118
    iget v8, p0, Lcom/motorola/kpi/perfstats/DiskData;->mSectorSize:I

    if-nez v8, :cond_1

    .line 119
    const/4 v7, -0x1

    .line 120
    .local v7, pIndex:I
    const/4 v2, 0x0

    .line 121
    .local v2, fullBlock:Ljava/lang/String;
    const/4 v0, 0x0

    .line 124
    .local v0, br:Ljava/io/BufferedReader;
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DiskData;->mBlockName:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 125
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DiskData;->mBlockName:Ljava/lang/String;

    const/16 v9, 0x70

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 126
    if-lez v7, :cond_1

    .line 127
    iget-object v8, p0, Lcom/motorola/kpi/perfstats/DiskData;->mBlockName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 128
    if-eqz v2, :cond_1

    .line 130
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/sys/block/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/queue/hw_sector_size"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 133
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {v1}, Lcom/motorola/kpi/perfstats/MetricCollector;->sanitizedReadLine(Ljava/io/BufferedReader;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 135
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/motorola/kpi/perfstats/DiskData;->mSectorSize:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 143
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 145
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 155
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #fullBlock:Ljava/lang/String;
    .end local v5           #line:Ljava/lang/String;
    .end local v7           #pIndex:I
    :cond_1
    :goto_1
    return-void

    .line 136
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #fullBlock:Ljava/lang/String;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v7       #pIndex:I
    :catch_0
    move-exception v6

    .line 137
    .local v6, nfe:Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v8, "DiskData"

    const-string v9, "Unable to parse sector size"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 140
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #nfe:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    move-object v0, v1

    .line 141
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .local v3, ioe:Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v8, "DiskData"

    const-string v9, "Problem reading sector size."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 143
    if-eqz v0, :cond_1

    .line 145
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 146
    :catch_2
    move-exception v4

    .line 147
    .local v4, ioe2:Ljava/io/IOException;
    const-string v8, "DiskData"

    const-string v9, "Problem closing sector size read."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 146
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #ioe:Ljava/io/IOException;
    .end local v4           #ioe2:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #line:Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 147
    .restart local v4       #ioe2:Ljava/io/IOException;
    const-string v8, "DiskData"

    const-string v9, "Problem closing sector size read."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 143
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #ioe2:Ljava/io/IOException;
    .end local v5           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v0, :cond_2

    .line 145
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 148
    :cond_2
    :goto_4
    throw v8

    .line 146
    :catch_4
    move-exception v4

    .line 147
    .restart local v4       #ioe2:Ljava/io/IOException;
    const-string v9, "DiskData"

    const-string v10, "Problem closing sector size read."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 143
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #ioe2:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .line 140
    :catch_5
    move-exception v3

    goto :goto_2
.end method
