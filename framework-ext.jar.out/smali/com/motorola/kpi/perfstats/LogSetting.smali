.class public Lcom/motorola/kpi/perfstats/LogSetting;
.super Ljava/lang/Object;
.source "LogSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/kpi/perfstats/LogSetting$1;,
        Lcom/motorola/kpi/perfstats/LogSetting$LogValues;,
        Lcom/motorola/kpi/perfstats/LogSetting$Metrics;
    }
.end annotation


# static fields
.field private static final COL_NAME:Ljava/lang/String; = "name"

.field private static final COL_VALUE:Ljava/lang/String; = "value"

.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final KEY_ENABLE_CPU_METRIC:Ljava/lang/String; = "enableCpuMetric"

.field private static final KEY_ENABLE_DISK_METRIC:Ljava/lang/String; = "enableDiskMetric"

.field private static final KEY_ENABLE_MEMORY_METRIC:Ljava/lang/String; = "enableMemoryMetric"

.field private static final KEY_ENABLE_NETWORK_METRIC:Ljava/lang/String; = "enableNetworkMetric"

.field private static final KEY_ENABLE_PERF_STATS:Ljava/lang/String; = "perfstats.enablePerfStats"

.field private static final KEY_ENABLE_PROCESS_CPU_METRIC:Ljava/lang/String; = "enableProcessCpuMetric"

.field private static final KEY_LOG_LIMIT:Ljava/lang/String; = "logLimit"

.field private static final KEY_LOG_RATE:Ljava/lang/String; = "logRate"

.field private static final KEY_MAX_NUM_PROCESS:Ljava/lang/String; = "maxNumProcess"

.field private static final SETTING_DELIM:Ljava/lang/String; = "."

.field private static final SETTING_HEADER:Ljava/lang/String; = "perfstats"

.field private static final TAG:Ljava/lang/String; = "LogSetting"


# instance fields
.field private mLogValues:Lcom/motorola/kpi/perfstats/LogSetting$LogValues;

.field private mLoggedTotal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "content://com.motorola.blur.setupprovider/app_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/kpi/perfstats/LogSetting;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter "component"
    .parameter "action"
    .parameter "context"

    .prologue
    .line 358
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 360
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 361
    new-instance v0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;

    invoke-direct {v0, p1, p2, p3}, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/kpi/perfstats/LogSetting;->mLogValues:Lcom/motorola/kpi/perfstats/LogSetting$LogValues;

    .line 363
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/kpi/perfstats/LogSetting;->mLoggedTotal:I

    .line 365
    :cond_0
    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/motorola/kpi/perfstats/LogSetting;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static enablePerfStats(ZLandroid/content/Context;)V
    .locals 4
    .parameter "enable"
    .parameter "context"

    .prologue
    .line 318
    if-eqz p1, :cond_1

    .line 319
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 320
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "name"

    const-string v3, "perfstats.enablePerfStats"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v1, "0"

    .line 322
    .local v1, perfStatsEnabled:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 323
    const-string v1, "1"

    .line 325
    :cond_0
    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/motorola/kpi/perfstats/LogSetting;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 329
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #perfStatsEnabled:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static isPerformanceStatsEnabled(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 336
    const/4 v7, 0x0

    .line 337
    .local v7, enabled:Z
    if-eqz p0, :cond_1

    .line 338
    const-string v0, "LogSetting"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const-string v0, "LogSetting"

    const-string v1, "getPerformanceStatsEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "value"

    aput-object v0, v2, v5

    .line 342
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "name=?"

    .line 343
    .local v3, selection:Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    const-string v0, "perfstats.enablePerfStats"

    aput-object v0, v4, v5

    .line 345
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/kpi/perfstats/LogSetting;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 347
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    :try_start_0
    const-string v0, "1"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 355
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v7

    .line 350
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getLogRate()D
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/motorola/kpi/perfstats/LogSetting;->mLogValues:Lcom/motorola/kpi/perfstats/LogSetting$LogValues;

    iget-wide v0, v0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogRate:D

    return-wide v0
.end method

.method public getMaxNumProcess()I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/motorola/kpi/perfstats/LogSetting;->mLogValues:Lcom/motorola/kpi/perfstats/LogSetting$LogValues;

    iget v0, v0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mMaxNumProcess:I

    return v0
.end method

.method public isMetricLogged(Lcom/motorola/kpi/perfstats/LogSetting$Metrics;)Z
    .locals 5
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, enabled:Z
    sget-object v3, Lcom/motorola/kpi/perfstats/LogSetting$1;->$SwitchMap$com$motorola$kpi$perfstats$LogSetting$Metrics:[I

    invoke-virtual {p1}, Lcom/motorola/kpi/perfstats/LogSetting$Metrics;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 394
    const/4 v0, 0x0

    .line 396
    :goto_0
    return v0

    .line 379
    :pswitch_0
    iget-object v3, p0, Lcom/motorola/kpi/perfstats/LogSetting;->mLogValues:Lcom/motorola/kpi/perfstats/LogSetting$LogValues;

    iget v3, v3, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogDeviceCpuMetric:I

    if-ne v1, v3, :cond_0

    move v0, v1

    .line 380
    :goto_1
    goto :goto_0

    :cond_0
    move v0, v2

    .line 379
    goto :goto_1

    .line 382
    :pswitch_1
    iget-object v3, p0, Lcom/motorola/kpi/perfstats/LogSetting;->mLogValues:Lcom/motorola/kpi/perfstats/LogSetting$LogValues;

    iget v3, v3, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogDeviceMemoryMetric:I

    if-ne v1, v3, :cond_1

    move v0, v1

    .line 383
    :goto_2
    goto :goto_0

    :cond_1
    move v0, v2

    .line 382
    goto :goto_2

    .line 385
    :pswitch_2
    iget-object v3, p0, Lcom/motorola/kpi/perfstats/LogSetting;->mLogValues:Lcom/motorola/kpi/perfstats/LogSetting$LogValues;

    iget v3, v3, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogDeviceDiskMetric:I

    if-ne v1, v3, :cond_2

    move v0, v1

    .line 386
    :goto_3
    goto :goto_0

    :cond_2
    move v0, v2

    .line 385
    goto :goto_3

    .line 388
    :pswitch_3
    iget-object v3, p0, Lcom/motorola/kpi/perfstats/LogSetting;->mLogValues:Lcom/motorola/kpi/perfstats/LogSetting$LogValues;

    iget v3, v3, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogDeviceNetworkMetric:I

    if-ne v1, v3, :cond_3

    move v0, v1

    .line 389
    :goto_4
    goto :goto_0

    :cond_3
    move v0, v2

    .line 388
    goto :goto_4

    .line 391
    :pswitch_4
    iget-object v3, p0, Lcom/motorola/kpi/perfstats/LogSetting;->mLogValues:Lcom/motorola/kpi/perfstats/LogSetting$LogValues;

    iget v3, v3, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogProcessCpuMetric:I

    if-ne v1, v3, :cond_4

    move v0, v1

    .line 392
    :goto_5
    goto :goto_0

    :cond_4
    move v0, v2

    .line 391
    goto :goto_5

    .line 377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public logLimitReached()Z
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public updateLogTotal(ILandroid/content/Context;)V
    .locals 1
    .parameter "size"
    .parameter "context"

    .prologue
    .line 419
    iget v0, p0, Lcom/motorola/kpi/perfstats/LogSetting;->mLoggedTotal:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/motorola/kpi/perfstats/LogSetting;->mLoggedTotal:I

    .line 421
    return-void
.end method
