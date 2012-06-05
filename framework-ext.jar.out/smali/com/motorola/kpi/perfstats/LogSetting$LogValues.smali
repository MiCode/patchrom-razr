.class public Lcom/motorola/kpi/perfstats/LogSetting$LogValues;
.super Ljava/lang/Object;
.source "LogSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/kpi/perfstats/LogSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogValues"
.end annotation


# static fields
.field public static final DISABLED:I = -0x1

.field public static final ENABLED:I = 0x1

.field public static final UNSET:I


# instance fields
.field private final mActionKey:Ljava/lang/String;

.field private final mComponentKey:Ljava/lang/String;

.field public mLogDeviceCpuMetric:I

.field public mLogDeviceDiskMetric:I

.field public mLogDeviceMemoryMetric:I

.field public mLogDeviceNetworkMetric:I

.field public mLogLimit:I

.field public mLogProcessCpuMetric:I

.field public mLogRate:D

.field public mMaxNumProcess:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "component"
    .parameter "action"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v0, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogDeviceCpuMetric:I

    .line 85
    iput v0, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogDeviceMemoryMetric:I

    .line 86
    iput v0, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogDeviceNetworkMetric:I

    .line 87
    iput v0, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogDeviceDiskMetric:I

    .line 88
    iput v0, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogProcessCpuMetric:I

    .line 102
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perfstats."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mComponentKey:Ljava/lang/String;

    .line 104
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mComponentKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mActionKey:Ljava/lang/String;

    .line 113
    :goto_0
    return-void

    .line 107
    :cond_0
    iput-object v2, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mActionKey:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_1
    iput-object v2, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mComponentKey:Ljava/lang/String;

    .line 111
    iput-object v2, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mActionKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .parameter "component"
    .parameter "action"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 123
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v0, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogDeviceCpuMetric:I

    .line 85
    iput v0, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogDeviceMemoryMetric:I

    .line 86
    iput v0, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogDeviceNetworkMetric:I

    .line 87
    iput v0, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogDeviceDiskMetric:I

    .line 88
    iput v0, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogProcessCpuMetric:I

    .line 124
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perfstats."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mComponentKey:Ljava/lang/String;

    .line 126
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mComponentKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mActionKey:Ljava/lang/String;

    .line 131
    :goto_0
    invoke-direct {p0, p3}, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->readValues(Landroid/content/Context;)V

    .line 136
    :goto_1
    return-void

    .line 129
    :cond_0
    iput-object v2, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mActionKey:Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_1
    iput-object v2, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mComponentKey:Ljava/lang/String;

    .line 134
    iput-object v2, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mActionKey:Ljava/lang/String;

    goto :goto_1
.end method

.method private parseJson(Ljava/lang/String;)V
    .locals 8
    .parameter "jsonString"

    .prologue
    .line 243
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 244
    const/4 v5, 0x0

    .line 246
    .local v5, object:Lorg/json/JSONObject;
    :try_start_0
    new-instance v6, Lorg/json/JSONTokener;

    invoke-direct {v6, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_8

    .line 250
    :goto_0
    if-eqz v5, :cond_3

    .line 252
    :try_start_1
    const-string v6, "enableCpuMetric"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogDeviceCpuMetric:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7

    .line 257
    :goto_1
    :try_start_2
    const-string v6, "enableMemoryMetric"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogDeviceMemoryMetric:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_6

    .line 262
    :goto_2
    :try_start_3
    const-string v6, "enableNetworkMetric"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogDeviceNetworkMetric:I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5

    .line 267
    :goto_3
    :try_start_4
    const-string v6, "enableDiskMetric"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogDeviceDiskMetric:I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 272
    :goto_4
    :try_start_5
    const-string v6, "enableProcessCpuMetric"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogProcessCpuMetric:I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    .line 277
    :goto_5
    :try_start_6
    const-string v6, "maxNumProcess"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 278
    .local v4, maxNumProcesses:I
    if-lez v4, :cond_0

    .line 279
    iput v4, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mMaxNumProcess:I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    .line 285
    .end local v4           #maxNumProcesses:I
    :cond_0
    :goto_6
    :try_start_7
    const-string v6, "logLimit"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 288
    .local v1, logLimit:I
    iget v6, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogLimit:I

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogLimit:I

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogLimit:I

    if-ge v1, v6, :cond_2

    if-eqz v1, :cond_2

    .line 290
    :cond_1
    iput v1, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogLimit:I
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    .line 296
    .end local v1           #logLimit:I
    :cond_2
    :goto_7
    :try_start_8
    const-string v6, "logRate"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 297
    .local v2, logRate:D
    const-wide/16 v6, 0x0

    cmpl-double v6, v2, v6

    if-lez v6, :cond_3

    .line 298
    iput-wide v2, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogRate:D
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 305
    .end local v2           #logRate:D
    .end local v5           #object:Lorg/json/JSONObject;
    :cond_3
    :goto_8
    return-void

    .line 300
    .restart local v5       #object:Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    goto :goto_8

    .line 292
    :catch_1
    move-exception v6

    goto :goto_7

    .line 281
    :catch_2
    move-exception v6

    goto :goto_6

    .line 273
    :catch_3
    move-exception v6

    goto :goto_5

    .line 268
    :catch_4
    move-exception v6

    goto :goto_4

    .line 263
    :catch_5
    move-exception v6

    goto :goto_3

    .line 258
    :catch_6
    move-exception v6

    goto :goto_2

    .line 253
    :catch_7
    move-exception v6

    goto :goto_1

    .line 247
    :catch_8
    move-exception v6

    goto :goto_0
.end method

.method private readValues(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 146
    iget-object v0, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mComponentKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 148
    new-array v4, v1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mComponentKey:Ljava/lang/String;

    aput-object v0, v4, v9

    .line 149
    .local v4, keys:[Ljava/lang/String;
    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "value"

    aput-object v0, v2, v9

    .line 150
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "name=?"

    .line 151
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/motorola/kpi/perfstats/LogSetting;->access$000()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 154
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, value:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->parseJson(Ljava/lang/String;)V

    .line 158
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v8           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mActionKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mActionKey:Ljava/lang/String;

    aput-object v0, v4, v9

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/motorola/kpi/perfstats/LogSetting;->access$000()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 170
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 173
    .restart local v8       #value:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->parseJson(Ljava/lang/String;)V

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #keys:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #value:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 159
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v4       #keys:[Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 160
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "LogSetting"

    const-string v1, "Unable to read component settings value."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    .end local v7           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 176
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v0, "LogSetting"

    const-string v1, "Unable to read action settings value."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public writeValues(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 191
    if-eqz p1, :cond_5

    .line 192
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 194
    .local v2, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    iget v3, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogDeviceCpuMetric:I

    if-eqz v3, :cond_0

    .line 195
    const-string v3, "enableCpuMetric"

    iget v4, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogDeviceCpuMetric:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 198
    :cond_0
    iget v3, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogDeviceMemoryMetric:I

    if-eqz v3, :cond_1

    .line 199
    const-string v3, "enableMemoryMetric"

    iget v4, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogDeviceMemoryMetric:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 202
    :cond_1
    iget v3, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogDeviceDiskMetric:I

    if-eqz v3, :cond_2

    .line 203
    const-string v3, "enableDiskMetric"

    iget v4, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogDeviceDiskMetric:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 206
    :cond_2
    iget v3, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogDeviceNetworkMetric:I

    if-eqz v3, :cond_3

    .line 207
    const-string v3, "enableNetworkMetric"

    iget v4, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogDeviceNetworkMetric:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 210
    :cond_3
    iget v3, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogProcessCpuMetric:I

    if-eqz v3, :cond_4

    .line 211
    const-string v3, "enableProcessCpuMetric"

    iget v4, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogProcessCpuMetric:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 213
    :cond_4
    const-string v3, "maxNumProcess"

    iget v4, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mMaxNumProcess:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 214
    const-string v3, "logLimit"

    iget v4, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogLimit:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 215
    const-string v3, "logRate"

    iget-wide v4, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mLogRate:D

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 217
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 218
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 220
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mActionKey:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 221
    const-string v3, "name"

    iget-object v4, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mActionKey:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_0
    const-string v3, "value"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/motorola/kpi/perfstats/LogSetting;->access$000()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 234
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :cond_5
    :goto_1
    return-void

    .line 223
    .restart local v0       #cv:Landroid/content/ContentValues;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :cond_6
    const-string v3, "name"

    iget-object v4, p0, Lcom/motorola/kpi/perfstats/LogSetting$LogValues;->mComponentKey:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    .end local v0           #cv:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 231
    .local v1, e:Lorg/json/JSONException;
    const-string v3, "LogSetting"

    const-string v4, "Unable to set settings data due to JSONException."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
