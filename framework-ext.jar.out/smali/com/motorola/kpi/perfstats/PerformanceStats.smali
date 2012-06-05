.class public final Lcom/motorola/kpi/perfstats/PerformanceStats;
.super Ljava/lang/Object;
.source "PerformanceStats.java"


# static fields
.field public static final INTENT_EXTRA_ACTION:Ljava/lang/String; = "action"

.field public static final INTENT_EXTRA_ACTION_START_TIME:Ljava/lang/String; = "action_start_time"

.field public static final INTENT_EXTRA_ACTION_STOP_TIME:Ljava/lang/String; = "action_stop_time"

.field public static final INTENT_EXTRA_COMPONENT:Ljava/lang/String; = "component"

.field public static final INTENT_EXTRA_LOG_TIME:Ljava/lang/String; = "log_time"

.field public static final INTENT_EXTRA_OVERHEAD_TIME:Ljava/lang/String; = "overhead_time"

.field public static final INTENT_START_COLLECTION:Ljava/lang/String; = "com.motorola.kpi.perfstats.intent.START_COLLECTION"

.field public static final INTENT_STOP_COLLECTION:Ljava/lang/String; = "com.motorola.kpi.perfstats.intent.STOP_COLLECTION"

.field private static final TAG:Ljava/lang/String; = "PerfStats"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startCollection(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 17
    .parameter "component"
    .parameter "action"
    .parameter "context"

    .prologue
    .line 49
    if-eqz p2, :cond_1

    invoke-static/range {p2 .. p2}, Lcom/motorola/kpi/perfstats/LogSetting;->isPerformanceStatsEnabled(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1

    .line 52
    invoke-static {}, Lcom/motorola/kpi/perfstats/Logger;->getLogTime()J

    move-result-wide v9

    .line 53
    .local v9, logTime:J
    invoke-static {}, Lcom/motorola/kpi/perfstats/Logger;->getCallTime()J

    move-result-wide v3

    .line 55
    .local v3, collectionStartTime:J
    const-string v14, "PerfStats"

    const/4 v15, 0x3

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 56
    const-string v14, "PerfStats"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "startCollection: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    new-instance v13, Lcom/motorola/kpi/perfstats/PerformanceCollector;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v13, v0, v1, v2}, Lcom/motorola/kpi/perfstats/PerformanceCollector;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 60
    .local v13, perfData:Lcom/motorola/kpi/perfstats/PerformanceCollector;
    invoke-virtual {v13}, Lcom/motorola/kpi/perfstats/PerformanceCollector;->collect()Landroid/os/Bundle;

    move-result-object v7

    .line 62
    .local v7, data:Landroid/os/Bundle;
    if-eqz v7, :cond_1

    .line 63
    invoke-static {}, Lcom/motorola/kpi/perfstats/Logger;->getCallTime()J

    move-result-wide v5

    .line 64
    .local v5, collectionStopTime:J
    sub-long v11, v5, v3

    .line 66
    .local v11, overheadTime:J
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v8, intent:Landroid/content/Intent;
    const-string v14, "com.motorola.kpi.perfstats.intent.START_COLLECTION"

    invoke-virtual {v8, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v14, "component"

    move-object/from16 v0, p0

    invoke-virtual {v8, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v14, "action"

    move-object/from16 v0, p1

    invoke-virtual {v8, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v14, "log_time"

    invoke-virtual {v8, v14, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 71
    const-string v14, "overhead_time"

    invoke-virtual {v8, v14, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 72
    const-string v14, "action_start_time"

    invoke-virtual {v8, v14, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 73
    invoke-virtual {v8, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 74
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 76
    const-string v14, "PerfStats"

    const/4 v15, 0x3

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 77
    const-string v14, "PerfStats"

    const-string v15, "INTENT_START_COLLECTION sent"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v3           #collectionStartTime:J
    .end local v5           #collectionStopTime:J
    .end local v7           #data:Landroid/os/Bundle;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #logTime:J
    .end local v11           #overheadTime:J
    .end local v13           #perfData:Lcom/motorola/kpi/perfstats/PerformanceCollector;
    :cond_1
    return-void
.end method

.method public static stopCollection(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 13
    .parameter "component"
    .parameter "action"
    .parameter "context"

    .prologue
    const/4 v12, 0x3

    .line 92
    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/motorola/kpi/perfstats/LogSetting;->isPerformanceStatsEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 95
    invoke-static {}, Lcom/motorola/kpi/perfstats/Logger;->getCallTime()J

    move-result-wide v0

    .line 97
    .local v0, collectionStartTime:J
    const-string v9, "PerfStats"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 98
    const-string v9, "PerfStats"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "stopCollection: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    new-instance v8, Lcom/motorola/kpi/perfstats/PerformanceCollector;

    invoke-direct {v8, p0, p1, p2}, Lcom/motorola/kpi/perfstats/PerformanceCollector;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 102
    .local v8, perfData:Lcom/motorola/kpi/perfstats/PerformanceCollector;
    invoke-virtual {v8}, Lcom/motorola/kpi/perfstats/PerformanceCollector;->collect()Landroid/os/Bundle;

    move-result-object v4

    .line 104
    .local v4, data:Landroid/os/Bundle;
    if-eqz v4, :cond_1

    .line 105
    invoke-static {}, Lcom/motorola/kpi/perfstats/Logger;->getCallTime()J

    move-result-wide v2

    .line 106
    .local v2, collectionStopTime:J
    sub-long v6, v2, v0

    .line 108
    .local v6, overheadTime:J
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 109
    .local v5, intent:Landroid/content/Intent;
    const-string v9, "com.motorola.kpi.perfstats.intent.STOP_COLLECTION"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v9, "component"

    invoke-virtual {v5, v9, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v9, "action"

    invoke-virtual {v5, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v9, "overhead_time"

    invoke-virtual {v5, v9, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 113
    const-string v9, "action_stop_time"

    invoke-virtual {v5, v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 114
    invoke-virtual {v5, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p2, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 117
    const-string v9, "PerfStats"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 118
    const-string v9, "PerfStats"

    const-string v10, "INTENT_STOP_COLLECTION sent"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v0           #collectionStartTime:J
    .end local v2           #collectionStopTime:J
    .end local v4           #data:Landroid/os/Bundle;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #overheadTime:J
    .end local v8           #perfData:Lcom/motorola/kpi/perfstats/PerformanceCollector;
    :cond_1
    return-void
.end method
