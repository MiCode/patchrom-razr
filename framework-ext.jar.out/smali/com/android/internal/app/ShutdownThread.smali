.class public final Lcom/android/internal/app/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG_KPI:Z = false

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x10

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static mContext:Landroid/content/Context;

.field private static mPowerOffAnimation:Z

.field static mReboot:Z

.field static mRebootReason:Ljava/lang/String;

.field private static mShutdown:Z

.field private static mStartShutdownTime:J

.field private static mWindowManager:Landroid/view/IWindowManager;

.field private static final sInstance:Lcom/android/internal/app/ShutdownThread;

.field static sIsStarted:Z

.field static sIsStartedGuard:Ljava/lang/Object;

.field private static sSystemReady:Z

.field private static final sSystemReadySync:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRadioOffSync:Ljava/lang/Object;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 98
    sput-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 107
    new-instance v0, Lcom/android/internal/app/ShutdownThread;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sSystemReadySync:Ljava/lang/Object;

    .line 113
    sput-boolean v2, Lcom/android/internal/app/ShutdownThread;->sSystemReady:Z

    .line 135
    const-string v0, "debug.kpi"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->DEBUG_KPI:Z

    .line 140
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/app/ShutdownThread;->mStartShutdownTime:J

    .line 149
    sput-boolean v2, Lcom/android/internal/app/ShutdownThread;->mShutdown:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 129
    iput-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 130
    iput-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mRadioOffSync:Ljava/lang/Object;

    .line 154
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/app/ShutdownThread;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mRadioOffSync:Ljava/lang/Object;

    return-object v0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 262
    sget-object v8, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v8

    .line 263
    :try_start_0
    sget-boolean v9, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v9, :cond_0

    .line 264
    const-string v6, "ShutdownThread"

    const-string v7, "Shutdown sequence already running, returning."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    monitor-exit v8

    .line 378
    :goto_0
    return-void

    .line 267
    :cond_0
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 268
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sput-wide v8, Lcom/android/internal/app/ShutdownThread;->mStartShutdownTime:J

    .line 277
    sget-object v8, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-direct {v8, p0}, Lcom/android/internal/app/ShutdownThread;->prepare(Landroid/content/Context;)V

    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110050

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 282
    invoke-static {v7}, Lcom/motorola/poweroff/ConfigInfo;->pwrSnd_setSilentreboot(I)V

    .line 304
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x111005b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_a

    sget-object v8, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v8, :cond_a

    sget-object v8, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const-string v9, "recovery"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 309
    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v8, "/system/media/poweroffanimation.zip"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, AnimationResource:Ljava/io/File;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_8

    move v3, v6

    .line 311
    .local v3, isAvailable:Z
    :goto_2
    sget-boolean v8, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-nez v8, :cond_9

    if-eqz v3, :cond_9

    .line 314
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->setScreenForPowerOffAnimation()V

    .line 316
    sput-boolean v6, Lcom/android/internal/app/ShutdownThread;->mPowerOffAnimation:Z

    .line 319
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "bootanimation -poweroff"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 331
    .end local v0           #AnimationResource:Ljava/io/File;
    .end local v3           #isAvailable:Z
    :goto_3
    sget-boolean v8, Lcom/android/internal/app/ShutdownThread;->mPowerOffAnimation:Z

    if-nez v8, :cond_3

    .line 334
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-direct {v5, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 335
    .local v5, pd:Landroid/app/ProgressDialog;
    const v8, 0x60c0191

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 336
    const v8, 0x60c01aa

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 338
    invoke-virtual {v5, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 339
    invoke-virtual {v5}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 341
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->createShutDownDialog(Landroid/content/Context;)V

    .line 345
    .end local v5           #pd:Landroid/app/ProgressDialog;
    :cond_3
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 346
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const-string v6, "power"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, v7, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 349
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v10, v6, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 351
    :try_start_2
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v7, v7, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v8, 0x1

    const-string v9, "ShutdownThread-cpu"

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 353
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v6, v6, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 354
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v6, v6, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 361
    :goto_4
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v10, v6, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 362
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v6, v6, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 364
    :try_start_3
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v7, v7, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v8, 0x1a

    const-string v9, "ShutdownThread-screen"

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 366
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v6, v6, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 367
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v6, v6, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    .line 375
    :cond_4
    :goto_5
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v7, Lcom/android/internal/app/ShutdownThread$2;

    invoke-direct {v7}, Lcom/android/internal/app/ShutdownThread$2;-><init>()V

    iput-object v7, v6, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 377
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v6}, Lcom/android/internal/app/ShutdownThread;->start()V

    goto/16 :goto_0

    .line 268
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 284
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110051

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110052

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 292
    :cond_6
    const/4 v4, 0x0

    .line 293
    .local v4, nextBootAnimationIsSlilent:I
    const-string v8, "audio"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 295
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_7

    .line 296
    const/4 v4, 0x1

    .line 298
    :cond_7
    invoke-static {v4}, Lcom/motorola/poweroff/ConfigInfo;->pwrSnd_setSilentreboot(I)V

    goto/16 :goto_1

    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v4           #nextBootAnimationIsSlilent:I
    .restart local v0       #AnimationResource:Ljava/io/File;
    :cond_8
    move v3, v7

    .line 310
    goto/16 :goto_2

    .line 320
    .restart local v3       #isAvailable:Z
    :catch_0
    move-exception v2

    .line 321
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "ShutdownThread"

    const-string v9, "exec bootanimation error = "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 324
    .end local v2           #e:Ljava/lang/Exception;
    :cond_9
    sput-boolean v7, Lcom/android/internal/app/ShutdownThread;->mPowerOffAnimation:Z

    goto/16 :goto_3

    .line 327
    .end local v0           #AnimationResource:Ljava/io/File;
    .end local v3           #isAvailable:Z
    :cond_a
    sput-boolean v7, Lcom/android/internal/app/ShutdownThread;->mPowerOffAnimation:Z

    goto/16 :goto_3

    .line 355
    :catch_1
    move-exception v2

    .line 356
    .local v2, e:Ljava/lang/SecurityException;
    const-string v6, "ShutdownThread"

    const-string v7, "No permission to acquire wake lock"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v10, v6, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_4

    .line 368
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v2

    .line 369
    .restart local v2       #e:Ljava/lang/SecurityException;
    const-string v6, "ShutdownThread"

    const-string v7, "No permission to acquire wake lock"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v10, v6, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_5
.end method

.method public static isShutdownForPowerOffAnimation()Z
    .locals 1

    .prologue
    .line 256
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->mShutdown:Z

    return v0
.end method

.method private prepare(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 391
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 392
    new-instance v0, Lcom/android/internal/app/ShutdownThread$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ShutdownThread$3;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 403
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 404
    return-void
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    .line 234
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    .line 235
    sput-object p1, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 236
    invoke-static {p0, p2}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 237
    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 8
    .parameter "reboot"
    .parameter "reason"

    .prologue
    .line 663
    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v4, :cond_0

    .line 664
    const-string v4, "KPI-SHUTDOWN-7"

    const-string v5, "Shutting down vibrator starts"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_0
    if-eqz p0, :cond_2

    .line 669
    const-string v4, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rebooting, reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :try_start_0
    invoke-static {p1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/android/internal/app/ShutdownThread;->mStartShutdownTime:J

    sub-long v1, v4, v6

    .line 696
    .local v1, timeTaken:J
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    .line 697
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "TimeToPowerDown"

    invoke-static {v4, v5, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 703
    :cond_1
    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v4, :cond_3

    .line 704
    const-string v4, "KPI-SHUTDOWN-8"

    const-string v5, "Performing low-level shutdown..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :goto_1
    invoke-static {}, Landroid/os/Power;->shutdown()V

    .line 712
    return-void

    .line 672
    .end local v1           #timeTaken:J
    :catch_0
    move-exception v0

    .line 673
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ShutdownThread"

    const-string v5, "Reboot failed, will attempt shutdown instead"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 677
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    new-instance v3, Landroid/os/Vibrator;

    invoke-direct {v3}, Landroid/os/Vibrator;-><init>()V

    .line 679
    .local v3, vibrator:Landroid/os/Vibrator;
    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 687
    :goto_2
    const-wide/16 v4, 0x1f4

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 688
    :catch_1
    move-exception v4

    goto :goto_0

    .line 680
    :catch_2
    move-exception v0

    .line 682
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "ShutdownThread"

    const-string v5, "Failed to vibrate during shutdown."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 707
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #vibrator:Landroid/os/Vibrator;
    .restart local v1       #timeTaken:J
    :cond_3
    const-string v4, "ShutdownThread"

    const-string v5, "Performing low-level shutdown..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static setScreenForPowerOffAnimation()V
    .locals 2

    .prologue
    .line 242
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mWindowManager:Landroid/view/IWindowManager;

    .line 247
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->mShutdown:Z

    .line 248
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->updateRotation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 7
    .parameter "context"
    .parameter "confirm"

    .prologue
    .line 167
    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v5

    .line 168
    :try_start_0
    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v4, :cond_0

    .line 169
    const-string v4, "ShutdownThread"

    const-string v6, "Request to shutdown already running, returning."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    monitor-exit v5

    .line 201
    :goto_0
    return-void

    .line 172
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 176
    .local v2, longPressBehavior:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    const v3, 0x104013d

    .line 180
    .local v3, resourceId:I

    .local v3, resourceId:I
    :goto_1
    invoke-static {v3}, Lcom/android/internal/app/ShutdownThread;->getResourceId(I)I

    move-result v3
    const-string v4, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-eqz p1, :cond_2

    .line 183
    new-instance v0, Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 184
    .local v0, closer:Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->getTitleResourceId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    new-instance v6, Lcom/android/internal/app/ShutdownThread$1;

    invoke-direct {v6, p0}, Lcom/android/internal/app/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040009

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 194
    .local v1, dialog:Landroid/app/AlertDialog;
    iput-object v1, v0, Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 195
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 196
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 197
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 172
    .end local v0           #closer:Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #longPressBehavior:I
    .end local v3           #resourceId:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 176
    .restart local v2       #longPressBehavior:I
    :cond_1
    const v3, 0x104013c

    goto :goto_1

    .line 199
    .restart local v3       #resourceId:I
    :cond_2
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static systemReady()V
    .locals 2

    .prologue
    .line 721
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->sSystemReadySync:Ljava/lang/Object;

    monitor-enter v1

    .line 722
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->sSystemReady:Z

    .line 723
    monitor-exit v1

    .line 724
    return-void

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 382
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 383
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 384
    monitor-exit v1

    .line 385
    return-void

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 29

    .prologue
    .line 419
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v2, :cond_0

    const-string v2, "KPI-SHUTDOWN-2"

    const-string v3, "ShutdownThread.run start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_0
    sget-object v28, Lcom/android/internal/app/ShutdownThread;->sSystemReadySync:Ljava/lang/Object;

    monitor-enter v28

    .line 425
    :try_start_0
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->sSystemReady:Z

    if-eqz v2, :cond_e

    .line 429
    new-instance v5, Lcom/android/internal/app/ShutdownThread$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/internal/app/ShutdownThread$4;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 438
    .local v5, br:Landroid/content/BroadcastReceiver;
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v2, :cond_10

    .line 439
    const-string v2, "KPI-SHUTDOWN-3"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_11

    const-string v2, "1"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_12

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 453
    .local v26, reason:Ljava/lang/String;
    const-string v2, "sys.shutdown.requested"

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v2, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 460
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 463
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v18, v2, v6

    .line 464
    .local v18, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    .line 466
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v13, v18, v6

    .line 467
    .local v13, delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v13, v6

    if-gtz v2, :cond_13

    .line 468
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown broadcast timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .end local v13           #delay:J
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 478
    :try_start_2
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v2, :cond_14

    .line 484
    const-string v2, "KPI-SHUTDOWN-4"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :goto_4
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 492
    .local v10, am:Landroid/app/IActivityManager;
    if-eqz v10, :cond_2

    .line 494
    const/16 v2, 0x2710

    :try_start_3
    invoke-interface {v10, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_8

    .line 501
    :cond_2
    :goto_5
    :try_start_4
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v2, :cond_3

    .line 502
    const-string v2, "KPI-SHUTDOWN-5"

    const-string v3, "Shutting down BT and Radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_3
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v24

    .line 509
    .local v24, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v11

    .line 513
    .local v11, bluetooth:Landroid/bluetooth/IBluetooth;
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v22

    .line 518
    .local v22, mount:Landroid/os/storage/IMountService;
    if-eqz v11, :cond_4

    :try_start_5
    invoke-interface {v11}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_15

    :cond_4
    const/4 v12, 0x1

    .line 520
    .local v12, bluetoothOff:Z
    :goto_6
    if-nez v12, :cond_5

    .line 521
    const-string v2, "ShutdownThread"

    const-string v3, "Disabling Bluetooth..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 530
    :cond_5
    :goto_7
    if-eqz v24, :cond_6

    :try_start_6
    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v2

    if-nez v2, :cond_16

    :cond_6
    const/16 v25, 0x1

    .line 531
    .local v25, radioOff:Z
    :goto_8
    if-nez v25, :cond_7

    .line 532
    const-string v2, "ShutdownThread"

    const-string v3, "Turning off radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 540
    :cond_7
    :goto_9
    :try_start_7
    const-string v2, "ShutdownThread"

    const-string v3, "Waiting for Bluetooth and Radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 543
    const/16 v21, 0x0

    .local v21, i:I
    :goto_a
    const/16 v2, 0x10

    move/from16 v0, v21

    if-ge v0, v2, :cond_a

    .line 544
    if-nez v12, :cond_8

    .line 546
    :try_start_8
    invoke-interface {v11}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_17

    const/4 v12, 0x1

    .line 553
    :cond_8
    :goto_b
    if-nez v25, :cond_9

    .line 555
    :try_start_9
    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4

    move-result v2

    if-nez v2, :cond_18

    const/16 v25, 0x1

    .line 561
    :cond_9
    :goto_c
    if-eqz v25, :cond_19

    if-eqz v12, :cond_19

    .line 562
    :try_start_a
    const-string v2, "ShutdownThread"

    const-string v3, "Radio and Bluetooth shutdown complete."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_a
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v2, :cond_b

    .line 580
    const-string v2, "KPI-SHUTDOWN-6"

    const-string v3, "Shutting down mount service..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_b
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mPowerOffAnimation:Z

    if-eqz v2, :cond_c

    .line 587
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/app/StatusBarManager;

    .line 589
    .local v27, statusBar:Landroid/app/StatusBarManager;
    const/high16 v2, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 595
    .end local v27           #statusBar:Landroid/app/StatusBarManager;
    :cond_c
    new-instance v23, Lcom/android/internal/app/ShutdownThread$5;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$5;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 602
    .local v23, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down MountService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 605
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x4e20

    add-long v16, v2, v6

    .line 606
    .local v16, endShutTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 608
    if-eqz v22, :cond_1a

    .line 609
    :try_start_b
    invoke-interface/range {v22 .. v23}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 616
    :goto_d
    :try_start_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_d

    .line 617
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v13, v16, v6

    .line 618
    .restart local v13       #delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v13, v6

    if-gtz v2, :cond_1b

    .line 619
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown wait timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    .end local v13           #delay:J
    :cond_d
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 633
    .end local v5           #br:Landroid/content/BroadcastReceiver;
    .end local v10           #am:Landroid/app/IActivityManager;
    .end local v11           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v12           #bluetoothOff:Z
    .end local v16           #endShutTime:J
    .end local v18           #endTime:J
    .end local v21           #i:I
    .end local v22           #mount:Landroid/os/storage/IMountService;
    .end local v23           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v24           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v25           #radioOff:Z
    .end local v26           #reason:Ljava/lang/String;
    :cond_e
    :try_start_d
    monitor-exit v28
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 637
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mPowerOffAnimation:Z

    if-eqz v2, :cond_f

    .line 639
    :try_start_e
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v13, v2

    .line 641
    .restart local v13       #delay:J
    invoke-static {v13, v14}, Lcom/android/internal/app/ShutdownThread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 649
    .end local v13           #delay:J
    :cond_f
    :goto_e
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 650
    return-void

    .line 441
    .restart local v5       #br:Landroid/content/BroadcastReceiver;
    :cond_10
    :try_start_f
    const-string v2, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 633
    .end local v5           #br:Landroid/content/BroadcastReceiver;
    :catchall_0
    move-exception v2

    monitor-exit v28
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    throw v2

    .line 452
    .restart local v5       #br:Landroid/content/BroadcastReceiver;
    :cond_11
    :try_start_10
    const-string v2, "0"

    goto/16 :goto_1

    :cond_12
    const-string v2, ""
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_2

    .line 472
    .restart local v13       #delay:J
    .restart local v18       #endTime:J
    .restart local v26       #reason:Ljava/lang/String;
    :cond_13
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_0

    goto/16 :goto_3

    .line 473
    :catch_0
    move-exception v2

    goto/16 :goto_3

    .line 476
    .end local v13           #delay:J
    :catchall_1
    move-exception v2

    :try_start_12
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :try_start_13
    throw v2

    .line 486
    :cond_14
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 518
    .restart local v10       #am:Landroid/app/IActivityManager;
    .restart local v11       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v22       #mount:Landroid/os/storage/IMountService;
    .restart local v24       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_15
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 524
    :catch_1
    move-exception v20

    .line 525
    .local v20, ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    const/4 v12, 0x1

    .restart local v12       #bluetoothOff:Z
    goto/16 :goto_7

    .line 530
    .end local v20           #ex:Landroid/os/RemoteException;
    :cond_16
    const/16 v25, 0x0

    goto/16 :goto_8

    .line 535
    :catch_2
    move-exception v20

    .line 536
    .restart local v20       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during radio shutdown"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    const/16 v25, 0x1

    .restart local v25       #radioOff:Z
    goto/16 :goto_9

    .line 546
    .end local v20           #ex:Landroid/os/RemoteException;
    .restart local v21       #i:I
    :cond_17
    const/4 v12, 0x0

    goto/16 :goto_b

    .line 548
    :catch_3
    move-exception v20

    .line 549
    .restart local v20       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    const/4 v12, 0x1

    goto/16 :goto_b

    .line 555
    .end local v20           #ex:Landroid/os/RemoteException;
    :cond_18
    const/16 v25, 0x0

    goto/16 :goto_c

    .line 556
    :catch_4
    move-exception v20

    .line 557
    .restart local v20       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during radio shutdown"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    const/16 v25, 0x1

    goto/16 :goto_c

    .line 568
    .end local v20           #ex:Landroid/os/RemoteException;
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mRadioOffSync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 570
    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mRadioOffSync:Ljava/lang/Object;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v2, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_9

    .line 573
    :goto_f
    :try_start_15
    monitor-exit v3

    .line 543
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_a

    .line 573
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :try_start_16
    throw v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 611
    .restart local v16       #endShutTime:J
    .restart local v23       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_1a
    :try_start_17
    const-string v2, "ShutdownThread"

    const-string v4, "MountService unavailable for shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5

    goto/16 :goto_d

    .line 613
    :catch_5
    move-exception v15

    .line 614
    .local v15, e:Ljava/lang/Exception;
    :try_start_18
    const-string v2, "ShutdownThread"

    const-string v4, "Exception during MountService shutdown"

    invoke-static {v2, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 627
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :try_start_19
    throw v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 623
    .restart local v13       #delay:J
    :cond_1b
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1a} :catch_6

    goto/16 :goto_d

    .line 624
    :catch_6
    move-exception v2

    goto/16 :goto_d

    .line 642
    .end local v5           #br:Landroid/content/BroadcastReceiver;
    .end local v10           #am:Landroid/app/IActivityManager;
    .end local v11           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v12           #bluetoothOff:Z
    .end local v13           #delay:J
    .end local v16           #endShutTime:J
    .end local v18           #endTime:J
    .end local v21           #i:I
    .end local v22           #mount:Landroid/os/storage/IMountService;
    .end local v23           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v24           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v25           #radioOff:Z
    .end local v26           #reason:Ljava/lang/String;
    :catch_7
    move-exception v15

    .line 643
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "sleep error = "

    invoke-static {v2, v3, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 495
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v5       #br:Landroid/content/BroadcastReceiver;
    .restart local v10       #am:Landroid/app/IActivityManager;
    .restart local v18       #endTime:J
    .restart local v26       #reason:Ljava/lang/String;
    :catch_8
    move-exception v2

    goto/16 :goto_5

    .line 571
    .restart local v11       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v12       #bluetoothOff:Z
    .restart local v21       #i:I
    .restart local v22       #mount:Landroid/os/storage/IMountService;
    .restart local v24       #phone:Lcom/android/internal/telephony/ITelephony;
    .restart local v25       #radioOff:Z
    :catch_9
    move-exception v2

    goto :goto_f
.end method

.method private static getResourceId(I)I
    .locals 1
    .parameter "id"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v0, :cond_0

    const/high16 p0, 0x60c

    .end local p0
    :cond_0
    return p0
.end method

.method private static getTitleResourceId()I
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v0, :cond_0

    const v0, 0x60c018c

    :goto_0
    return v0

    :cond_0
    const v0, 0x60c0191

    goto :goto_0
.end method

.method private static createShutDownDialog(Landroid/content/Context;)V
    .locals 8
    .parameter "context"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    new-instance v2, Landroid/app/Dialog;

    const v6, 0x10300f1

    invoke-direct {v2, p0, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .local v2, bootMsgDialog:Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .local v3, layoutInflater:Landroid/view/LayoutInflater;
    const v6, 0x603002e

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .local v5, view:Landroid/view/View;
    const v6, 0x60b0021

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .local v4, msgText:Landroid/widget/TextView;
    const v6, 0x60b0022

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .local v1, animationView:Landroid/widget/ImageView;
    sget-boolean v6, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v6, :cond_0

    const v6, 0x60c0001

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7e5

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const v7, 0x6020034

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .local v0, animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void

    .end local v0           #animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    const v6, 0x60c01aa

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method