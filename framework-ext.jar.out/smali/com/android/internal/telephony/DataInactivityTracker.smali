.class public Lcom/android/internal/telephony/DataInactivityTracker;
.super Ljava/lang/Object;
.source "DataInactivityTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mAlarmIntent:Landroid/app/PendingIntent;

.field private mContext:Landroid/content/Context;

.field private mDc:Lcom/android/internal/telephony/DataConnectionTracker;

.field private mNextExpiry:J

.field private mTimeoutMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;Landroid/content/Context;)V
    .locals 3
    .parameter "dct"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v2, p0, Lcom/android/internal/telephony/DataInactivityTracker;->mAlarmIntent:Landroid/app/PendingIntent;

    .line 46
    iput-object v2, p0, Lcom/android/internal/telephony/DataInactivityTracker;->mContext:Landroid/content/Context;

    .line 47
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/telephony/DataInactivityTracker;->mNextExpiry:J

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataInactivityTracker;->mTimeoutMap:Ljava/util/HashMap;

    .line 49
    iput-object v2, p0, Lcom/android/internal/telephony/DataInactivityTracker;->mDc:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 52
    iput-object p1, p0, Lcom/android/internal/telephony/DataInactivityTracker;->mDc:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 53
    iput-object p2, p0, Lcom/android/internal/telephony/DataInactivityTracker;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private getInactivityTime(Ljava/lang/String;)J
    .locals 4
    .parameter "iface"

    .prologue
    .line 178
    const-wide/16 v0, 0x0

    .line 180
    .local v0, inactiveTime:J
    if-nez p1, :cond_0

    move-wide v2, v0

    .line 186
    :goto_0
    return-wide v2

    .line 184
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-wide/16 v0, 0x0

    :cond_1
    move-wide v2, v0

    .line 186
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 190
    const-string v0, "GSM"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 194
    const-string v0, "GSM"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method private updateAlarm(J)V
    .locals 10
    .parameter "nextExpiryTime"

    .prologue
    const/4 v9, 0x0

    .line 144
    iget-wide v6, p0, Lcom/android/internal/telephony/DataInactivityTracker;->mNextExpiry:J

    cmp-long v6, p1, v6

    if-nez v6, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/DataInactivityTracker;->mContext:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 150
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v6, p0, Lcom/android/internal/telephony/DataInactivityTracker;->mAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_2

    .line 151
    iget-object v6, p0, Lcom/android/internal/telephony/DataInactivityTracker;->mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 152
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/DataInactivityTracker;->mAlarmIntent:Landroid/app/PendingIntent;

    .line 153
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/internal/telephony/DataInactivityTracker;->mNextExpiry:J

    .line 156
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-ltz v6, :cond_0

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 163
    .local v1, current:J
    cmp-long v6, p1, v1

    if-lez v6, :cond_0

    .line 164
    iput-wide p1, p0, Lcom/android/internal/telephony/DataInactivityTracker;->mNextExpiry:J

    .line 165
    sub-long v3, p1, v1

    .line 167
    .local v3, expiry:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting Inactivity Timer: Expiring in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    div-long v7, v3, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sec"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/DataInactivityTracker;->log(Ljava/lang/String;)V

    .line 169
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.internal.telephony.data-inactivity"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v5, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/DataInactivityTracker;->mContext:Landroid/content/Context;

    invoke-static {v6, v9, v5, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/DataInactivityTracker;->mAlarmIntent:Landroid/app/PendingIntent;

    .line 171
    const/4 v6, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    add-long/2addr v7, v3

    iget-object v9, p0, Lcom/android/internal/telephony/DataInactivityTracker;->mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public handleAlarm(Ljava/util/Collection;)V
    .locals 26
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/DataConnectionAc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, dcacs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/DataConnectionAc;>;"
    const-string v22, "Inactiviy check alarm had expired"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataInactivityTracker;->log(Ljava/lang/String;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataInactivityTracker;->mAlarmIntent:Landroid/app/PendingIntent;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 98
    const-wide/16 v20, -0x1

    .line 99
    .local v20, nextValue:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 100
    .local v7, current:J
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/DataConnectionAc;

    .line 101
    .local v9, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v9}, Lcom/android/internal/telephony/DataConnectionAc;->isInactiveSync()Z

    move-result v22

    if-nez v22, :cond_0

    .line 102
    invoke-virtual {v9}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v19

    .line 103
    .local v19, link:Landroid/net/LinkProperties;
    if-eqz v19, :cond_0

    .line 105
    const-wide/16 v4, 0x0

    .line 106
    .local v4, apnValue:J
    invoke-virtual {v9}, Lcom/android/internal/telephony/DataConnectionAc;->getApnSettingSync()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v3

    .line 107
    .local v3, apnInUse:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v3, :cond_1

    .line 108
    iget v0, v3, Lcom/android/internal/telephony/ApnSetting;->timer:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v4, v0

    .line 111
    :cond_1
    const-wide/16 v22, 0x0

    cmp-long v22, v4, v22

    if-ltz v22, :cond_0

    .line 113
    const-wide/16 v22, 0x3c

    mul-long v22, v22, v4

    const-wide/16 v24, 0x3e8

    mul-long v4, v22, v24

    .line 114
    iget-object v0, v9, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/DataConnection;->getNextInactivityExpiry()J

    move-result-wide v10

    .line 115
    .local v10, exiryTime:J
    invoke-virtual/range {v19 .. v19}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataInactivityTracker;->getInactivityTime(Ljava/lang/String;)J

    move-result-wide v17

    .line 117
    .local v17, inactive:J
    cmp-long v22, v7, v10

    if-ltz v22, :cond_2

    cmp-long v22, v17, v4

    if-ltz v22, :cond_2

    .line 121
    iget-object v0, v9, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v6

    .line 122
    .local v6, connectionId:I
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Found inactive connection="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " interface="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataInactivityTracker;->log(Ljava/lang/String;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataInactivityTracker;->mDc:Lcom/android/internal/telephony/DataConnectionTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->handleDataInactivity(I)V

    goto/16 :goto_0

    .line 126
    .end local v6           #connectionId:I
    :cond_2
    sub-long v14, v4, v17

    .line 127
    .local v14, gap:J
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Time to Expire "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataInactivityTracker;->log(Ljava/lang/String;)V

    .line 128
    add-long v12, v7, v14

    .line 129
    .local v12, expiry:J
    iget-object v0, v9, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/DataConnection;->setNextInactivityExpiry(J)V

    .line 130
    const-wide/16 v22, -0x1

    cmp-long v22, v20, v22

    if-eqz v22, :cond_3

    cmp-long v22, v12, v20

    if-gez v22, :cond_0

    .line 132
    :cond_3
    move-wide/from16 v20, v12

    goto/16 :goto_0

    .line 137
    .end local v3           #apnInUse:Lcom/android/internal/telephony/ApnSetting;
    .end local v4           #apnValue:J
    .end local v9           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v10           #exiryTime:J
    .end local v12           #expiry:J
    .end local v14           #gap:J
    .end local v17           #inactive:J
    .end local v19           #link:Landroid/net/LinkProperties;
    :cond_4
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataInactivityTracker;->updateAlarm(J)V

    .line 139
    .end local v7           #current:J
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v20           #nextValue:J
    :cond_5
    return-void
.end method

.method public updateInactivityTracking(Ljava/util/Collection;)V
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/DataConnectionAc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, dcacs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/DataConnectionAc;>;"
    if-nez p1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 62
    :cond_0
    const-wide/16 v8, -0x1

    .line 63
    .local v8, nextExpiry:J
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/DataConnectionAc;

    .line 64
    .local v4, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnectionAc;->isInactiveSync()Z

    move-result v10

    if-nez v10, :cond_1

    .line 65
    const-wide/16 v2, 0x0

    .line 66
    .local v2, apnValue:J
    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnectionAc;->getApnSettingSync()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v1

    .line 67
    .local v1, apnInUse:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v1, :cond_2

    .line 68
    iget v10, v1, Lcom/android/internal/telephony/ApnSetting;->timer:I

    int-to-long v2, v10

    .line 72
    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_1

    .line 76
    iget-object v10, v4, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v10}, Lcom/android/internal/telephony/DataConnection;->getNextInactivityExpiry()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    .line 77
    iget-object v10, v4, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v2

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    add-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/DataConnection;->setNextInactivityExpiry(J)V

    .line 80
    :cond_3
    iget-object v10, v4, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v10}, Lcom/android/internal/telephony/DataConnection;->getNextInactivityExpiry()J

    move-result-wide v5

    .line 83
    .local v5, expiry:J
    const-wide/16 v10, -0x1

    cmp-long v10, v8, v10

    if-eqz v10, :cond_4

    cmp-long v10, v5, v8

    if-gez v10, :cond_1

    .line 85
    :cond_4
    move-wide v8, v5

    goto :goto_1

    .line 89
    .end local v1           #apnInUse:Lcom/android/internal/telephony/ApnSetting;
    .end local v2           #apnValue:J
    .end local v4           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v5           #expiry:J
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/internal/telephony/DataInactivityTracker;->updateAlarm(J)V

    goto :goto_0
.end method
