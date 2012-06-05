.class public Lcom/motorola/android/systemui/statusbar/VzwEri;
.super Ljava/lang/Object;
.source "VzwEri.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOSSOFSERVICE_ALERT:Ljava/lang/String; = "/system/media/audio/eri/LossofService.wav"

.field private static final TAG:Ljava/lang/String; = "VzwEri"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastRoamIndChangeTime:J

.field private final mLock:Ljava/lang/Object;

.field private mLossOfServiceDelayTask:Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlayEriAlertAfterBoot:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;

    invoke-direct {v0, p0, v1}, Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;-><init>(Lcom/motorola/android/systemui/statusbar/VzwEri;Lcom/motorola/android/systemui/statusbar/VzwEri$1;)V

    iput-object v0, p0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mLossOfServiceDelayTask:Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mPlayEriAlertAfterBoot:Z

    .line 67
    iput-object v1, p0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 70
    iput-object p1, p0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/android/systemui/statusbar/VzwEri;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/motorola/android/systemui/statusbar/VzwEri;->stopMediaPlayer()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/android/systemui/statusbar/VzwEri;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/systemui/statusbar/VzwEri;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/motorola/android/systemui/statusbar/VzwEri;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/motorola/android/systemui/statusbar/VzwEri;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private final needPlayEriAlert(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;Landroid/telephony/TelephonyManager;Landroid/os/Handler;)Z
    .locals 19
    .parameter "newServiceState"
    .parameter "preServiceState"
    .parameter "phone"
    .parameter "handler"

    .prologue
    .line 166
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "eri_alert_sounds"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-nez v15, :cond_0

    .line 169
    const-string v15, "VzwEri"

    const-string v16, "ERI alert sound is disabled."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v15, 0x0

    .line 298
    :goto_0
    return v15

    .line 175
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v15

    if-eqz v15, :cond_1

    .line 177
    const-string v15, "VzwEri"

    const-string v16, "In call state, not to play ERI alert sound."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v15, 0x0

    goto :goto_0

    .line 185
    :cond_1
    if-eqz p2, :cond_2

    if-nez p1, :cond_3

    .line 186
    :cond_2
    const/4 v15, 0x1

    goto :goto_0

    .line 188
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    .line 189
    .local v11, preState:I
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    .line 193
    .local v10, newState:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mLossOfServiceDelayTask:Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;

    iget-boolean v15, v15, Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;->started:Z

    if-eqz v15, :cond_4

    const/4 v15, 0x1

    if-ne v11, v15, :cond_4

    if-nez v10, :cond_4

    .line 196
    const-string v15, "VzwEri"

    const-string v16, "In Service again, NOT play Loss Of Service alert"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mLossOfServiceDelayTask:Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;->started:Z

    .line 198
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mLossOfServiceDelayTask:Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 202
    :cond_4
    const/4 v15, 0x3

    if-ne v11, v15, :cond_5

    const/4 v15, 0x1

    if-eq v10, v15, :cond_6

    :cond_5
    const/4 v15, 0x1

    if-ne v11, v15, :cond_7

    const/4 v15, 0x3

    if-ne v10, v15, :cond_7

    .line 207
    :cond_6
    const-string v15, "VzwEri"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Service State changed: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ==> "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v15, 0x0

    goto :goto_0

    .line 215
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mContext:Landroid/content/Context;

    const-string v16, "activity"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 216
    .local v2, am:Landroid/app/ActivityManager;
    const/4 v4, 0x0

    .line 218
    .local v4, i:I
    const-string v15, "VzwEri"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "===== preState: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "   newState: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v15, 0x2

    :try_start_0
    invoke-virtual {v2, v15}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 222
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v5, :cond_b

    .line 223
    const/4 v4, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    if-ge v4, v15, :cond_b

    .line 225
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 227
    .local v12, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    const-string v15, "VzwEri"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "== baseActivity: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v12, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v15, 0x3

    if-eq v11, v15, :cond_8

    const/4 v15, 0x1

    if-ne v11, v15, :cond_a

    :cond_8
    iget-object v15, v12, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "AirplaneModeHandler"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9

    iget-object v15, v12, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "EmergencyCallHandler"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 238
    :cond_9
    const-string v15, "VzwEri"

    const-string v16, "Calling App will make a call, do not play ERI alert."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 223
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 243
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v12           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :catch_0
    move-exception v3

    .line 245
    .local v3, e:Ljava/lang/Exception;
    const-string v15, "VzwEri"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "catch exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v3           #e:Ljava/lang/Exception;
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getCdmaDefaultRoamingIndicator()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getCdmaDefaultRoamingIndicator()I

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_e

    .line 257
    :cond_c
    if-nez v11, :cond_d

    const/4 v15, 0x1

    if-ne v10, v15, :cond_d

    .line 259
    const-string v15, "ro.mot.eri.losalert.delay"

    const-string v16, "2000"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    int-to-long v6, v15

    .line 261
    .local v6, lossOfServiceDelay:J
    const-string v15, "VzwEri"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Loss Of Service alert delayed:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mLossOfServiceDelayTask:Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;->started:Z

    .line 263
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mLossOfServiceDelayTask:Lcom/motorola/android/systemui/statusbar/VzwEri$LossOfServiceDelayTask;

    move-object/from16 v0, p4

    invoke-virtual {v0, v15, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 266
    .end local v6           #lossOfServiceDelay:J
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mLastRoamIndChangeTime:J

    .line 269
    const-string v15, "VzwEri"

    const-string v16, "Roaming indicator changed, play ERI alert sound."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 275
    :cond_e
    if-nez v11, :cond_10

    if-nez v10, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v15

    if-eqz v15, :cond_10

    .line 279
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mLastRoamIndChangeTime:J

    move-wide/from16 v17, v0

    sub-long v13, v15, v17

    .line 280
    .local v13, sidDelay:J
    const-string v15, "ro.mot.eri.sidalert.delay"

    const-string v16, "1000"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    int-to-long v8, v15

    .line 282
    .local v8, minSidDelay:J
    cmp-long v15, v13, v8

    if-gez v15, :cond_f

    .line 283
    const-string v15, "VzwEri"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SystemId:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "->"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Delay:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "<"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", NOT play ERI alert sound."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 288
    :cond_f
    const-string v15, "VzwEri"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SystemId:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "->"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Delay:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", play ERI alert sound."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 296
    .end local v8           #minSidDelay:J
    .end local v13           #sidDelay:J
    :cond_10
    const-string v15, "VzwEri"

    const-string v16, "Roaming indicator does not change, not to play ERI alert sound."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method private final playEriAlert()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, alertUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 133
    .local v2, iPhone:Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 135
    if-eqz v2, :cond_0

    .line 136
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriAlertUri()Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 142
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 143
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 145
    iget-object v3, p0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lcom/motorola/android/systemui/statusbar/VzwEri$1;

    invoke-direct {v4, p0}, Lcom/motorola/android/systemui/statusbar/VzwEri$1;-><init>(Lcom/motorola/android/systemui/statusbar/VzwEri;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 153
    iget-object v3, p0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 154
    iget-object v3, p0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 155
    iget-object v3, p0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 157
    const-string v3, "VzwEri"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call mediaPlayer.start(), Uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v3, p0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 161
    :cond_1
    return-void

    .line 138
    :catch_0
    move-exception v1

    .line 140
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "VzwEri"

    const-string v4, "playEriAlert() caught RemoteException:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private stopMediaPlayer()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 123
    iget-object v0, p0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 126
    :cond_0
    return-void
.end method


# virtual methods
.method public isVzwEriOn()Z
    .locals 3

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, vzwEriOn:Z
    const-string v2, "ro.mot.eri"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, featureOn:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    const/4 v1, 0x1

    .line 79
    :cond_0
    return v1
.end method

.method public playEriAlertAfterBoot()V
    .locals 4

    .prologue
    .line 109
    const-string v1, "VzwEri"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need play ERI alert after boot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mPlayEriAlertAfterBoot:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-boolean v1, p0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mPlayEriAlertAfterBoot:Z

    if-eqz v1, :cond_0

    .line 111
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mPlayEriAlertAfterBoot:Z

    .line 113
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/android/systemui/statusbar/VzwEri;->playEriAlert()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "VzwEri"

    const-string v2, "playEriAlert() caught "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateEri(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;Landroid/telephony/TelephonyManager;Landroid/os/Handler;)V
    .locals 3
    .parameter "newServiceState"
    .parameter "preServiceState"
    .parameter "phone"
    .parameter "handler"

    .prologue
    .line 84
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mPlayEriAlertAfterBoot:Z

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/android/systemui/statusbar/VzwEri;->needPlayEriAlert(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;Landroid/telephony/TelephonyManager;Landroid/os/Handler;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "sys.boot_completed"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    const-string v1, "VzwEri"

    const-string v2, "boot not completed, do not play ERI alert sound."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/android/systemui/statusbar/VzwEri;->mPlayEriAlertAfterBoot:Z

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v1, "VzwEri"

    const-string v2, "onServiceStateChanged: play ERI alert sound."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/android/systemui/statusbar/VzwEri;->playEriAlert()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "VzwEri"

    const-string v2, "playEriAlert() caught "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
