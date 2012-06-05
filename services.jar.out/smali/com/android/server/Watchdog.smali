.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;,
        Lcom/android/server/Watchdog$RebootReceiver;,
        Lcom/android/server/Watchdog$HeartbeatHandler;
    }
.end annotation


# static fields
.field static final DB:Z = false

.field static final KERNEL_COMMAND:[Ljava/lang/String; = null

.field static final KERNEL_LOG:Ljava/lang/String; = "Kernel log - dmesg \n"

.field static final MEMCHECK_DEFAULT_MIN_ALARM:I = 0xb4

.field static final MEMCHECK_DEFAULT_MIN_SCREEN_OFF:I = 0x12c

.field static final MEMCHECK_DEFAULT_RECHECK_INTERVAL:I = 0x12c

.field static final MONITOR:I = 0xa9e

.field static final REBOOT_ACTION:Ljava/lang/String; = "com.android.service.Watchdog.REBOOT"

.field static final REBOOT_DEFAULT_INTERVAL:I = 0x0

.field static final REBOOT_DEFAULT_START_TIME:I = 0x2a30

.field static final REBOOT_DEFAULT_WINDOW:I = 0xe10

.field static final RECORD_KERNEL_THREADS:Z = true

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field static final TIME_TO_RESTART:I = 0xea60

.field static final TIME_TO_WAIT:I = 0x7530

.field static final localLOGV:Z

.field static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAlarm:Lcom/android/server/AlarmManagerService;

.field mBattery:Lcom/android/server/BatteryService;

.field mBootTime:J

.field final mCalendar:Ljava/util/Calendar;

.field mCheckupIntent:Landroid/app/PendingIntent;

.field mCompleted:Z

.field mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

.field mForceKillSystem:Z

.field final mHandler:Landroid/os/Handler;

.field mMinAlarm:I

.field mMinScreenOff:I

.field final mMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$Monitor;",
            ">;"
        }
    .end annotation
.end field

.field mNeedScheduledCheck:Z

.field mPhonePid:I

.field mPower:Lcom/android/server/PowerManagerService;

.field mRebootIntent:Landroid/app/PendingIntent;

.field mRebootInterval:I

.field mReqMinNextAlarm:I

.field mReqMinScreenOff:I

.field mReqRebootInterval:I

.field mReqRebootNoWait:Z

.field mReqRebootStartTime:I

.field mReqRebootWindow:I

.field mReqRecheckInterval:I

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/bin/sh"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "dmesg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/Watchdog;->KERNEL_COMMAND:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 201
    const-string v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitors:Ljava/util/ArrayList;

    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    .line 110
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/server/Watchdog;->mMinScreenOff:I

    .line 111
    const/16 v0, 0xb4

    iput v0, p0, Lcom/android/server/Watchdog;->mMinAlarm:I

    .line 120
    iput v1, p0, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    .line 121
    iput v1, p0, Lcom/android/server/Watchdog;->mReqRebootStartTime:I

    .line 122
    iput v1, p0, Lcom/android/server/Watchdog;->mReqRebootWindow:I

    .line 123
    iput v1, p0, Lcom/android/server/Watchdog;->mReqMinScreenOff:I

    .line 124
    iput v1, p0, Lcom/android/server/Watchdog;->mReqMinNextAlarm:I

    .line 125
    iput v1, p0, Lcom/android/server/Watchdog;->mReqRecheckInterval:I

    .line 202
    new-instance v0, Lcom/android/server/Watchdog$HeartbeatHandler;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$HeartbeatHandler;-><init>(Lcom/android/server/Watchdog;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandler:Landroid/os/Handler;

    .line 203
    return-void
.end method

.method static computeCalendarTime(Ljava/util/Calendar;JJ)J
    .locals 6
    .parameter "c"
    .parameter "curTime"
    .parameter "secondsSinceMidnight"

    .prologue
    .line 384
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 386
    long-to-int v3, p3

    div-int/lit16 v2, v3, 0xe10

    .line 387
    .local v2, val:I
    const/16 v3, 0xb

    invoke-virtual {p0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 388
    mul-int/lit16 v3, v2, 0xe10

    int-to-long v3, v3

    sub-long/2addr p3, v3

    .line 389
    long-to-int v3, p3

    div-int/lit8 v2, v3, 0x3c

    .line 390
    const/16 v3, 0xc

    invoke-virtual {p0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 391
    const/16 v3, 0xd

    long-to-int v4, p3

    mul-int/lit8 v5, v2, 0x3c

    sub-int/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 392
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 394
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 395
    .local v0, newTime:J
    cmp-long v3, v0, p1

    if-gez v3, :cond_0

    .line 398
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 399
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 402
    :cond_0
    return-wide v0
.end method

.method private createTombstone(Ljava/lang/String;)V
    .locals 18
    .parameter "procList"

    .prologue
    .line 451
    const-string v1, "ps"

    .line 452
    .local v1, cmd:Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v10, procList4Tombstones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 456
    .local v12, sb:Ljava/lang/StringBuffer;
    const-string v15, ","

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    const-string v15, ","

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 462
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 463
    .local v7, p:Ljava/lang/Process;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 465
    .local v4, input:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, line:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 466
    const-string v15, "\\s+"

    invoke-virtual {v6, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 467
    .local v14, tokens:[Ljava/lang/String;
    array-length v15, v14

    const/16 v16, 0x9

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 468
    const-string v2, "/"

    .line 469
    .local v2, delimiter1:Ljava/lang/String;
    const/16 v15, 0x8

    aget-object v15, v14, v15

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 470
    .local v11, procname:[Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 471
    .local v13, sb1:Ljava/lang/StringBuffer;
    const-string v15, ","

    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 472
    array-length v15, v11

    add-int/lit8 v15, v15, -0x1

    aget-object v15, v11, v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 473
    const-string v15, ","

    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 474
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 475
    .local v9, pn:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_0

    .line 476
    const/4 v15, 0x1

    aget-object v15, v14, v15

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    array-length v15, v11

    add-int/lit8 v15, v15, -0x1

    aget-object v15, v11, v15

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 483
    .end local v2           #delimiter1:Ljava/lang/String;
    .end local v4           #input:Ljava/io/BufferedReader;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #p:Ljava/lang/Process;
    .end local v9           #pn:Ljava/lang/String;
    .end local v11           #procname:[Ljava/lang/String;
    .end local v13           #sb1:Ljava/lang/StringBuffer;
    .end local v14           #tokens:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 484
    .local v3, ex:Ljava/lang/Exception;
    const-string v15, "Watchdog"

    invoke-static {v15, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 487
    .end local v3           #ex:Ljava/lang/Exception;
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 488
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 494
    const-string v15, "Watchdog"

    const-string v16, "Waiting for the debuggerd process..."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :goto_3
    const-string v15, "debuggerd"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/Watchdog;->isProcessAlive(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 496
    const-wide/16 v15, 0x1f4

    invoke-static/range {v15 .. v16}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_3

    .line 481
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4       #input:Ljava/io/BufferedReader;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v7       #p:Ljava/lang/Process;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 498
    .end local v4           #input:Ljava/io/BufferedReader;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #p:Ljava/lang/Process;
    .restart local v5       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 499
    .local v8, pid:Ljava/lang/String;
    const-string v16, "Watchdog"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Creating tombstone file for process["

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "]"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-wide/16 v15, 0x3e8

    invoke-static/range {v15 .. v16}, Landroid/os/SystemClock;->sleep(J)V

    .line 501
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x6

    invoke-static/range {v15 .. v16}, Landroid/os/Process;->sendSignal(II)V

    .line 502
    const-wide/16 v15, 0x3e8

    invoke-static/range {v15 .. v16}, Landroid/os/SystemClock;->sleep(J)V

    .line 503
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x6

    invoke-static/range {v15 .. v16}, Landroid/os/Process;->sendSignal(II)V

    .line 504
    const-wide/16 v15, 0x7d0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    .line 506
    .end local v8           #pid:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private dumpKernelLogs()Ljava/io/File;
    .locals 15

    .prologue
    const/4 v9, 0x0

    const/4 v14, -0x1

    .line 660
    const-string v10, "dalvik.vm.stack-trace-file"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 661
    .local v8, tracesPath:Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    :cond_0
    move-object v7, v9

    .line 697
    :cond_1
    :goto_0
    return-object v7

    .line 663
    :cond_2
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 665
    .local v7, tracesFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 666
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x1b6

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-static {v10, v11, v12, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 672
    const/4 v2, 0x0

    .line 673
    .local v2, input:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 674
    .local v6, process:Ljava/lang/Process;
    const/4 v4, 0x0

    .line 677
    .local v4, outFile:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v9, Ljava/lang/ProcessBuilder;

    sget-object v10, Lcom/android/server/Watchdog;->KERNEL_COMMAND:[Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v6

    .line 679
    if-eqz v6, :cond_6

    .line 680
    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 681
    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 682
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 685
    const/16 v9, 0x2000

    new-array v0, v9, [B

    .line 686
    .local v0, data:[B
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v9, 0x1

    invoke-direct {v5, v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 687
    .end local v4           #outFile:Ljava/io/FileOutputStream;
    .local v5, outFile:Ljava/io/FileOutputStream;
    :try_start_2
    const-string v9, "Kernel log - dmesg \n"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 688
    :goto_1
    const/4 v9, 0x0

    array-length v10, v0

    invoke-virtual {v2, v0, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .local v3, num:I
    if-eq v3, v14, :cond_5

    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 690
    .end local v3           #num:I
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 691
    .end local v0           #data:[B
    .end local v5           #outFile:Ljava/io/FileOutputStream;
    .local v1, e:Ljava/io/IOException;
    .restart local v4       #outFile:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_3
    const-string v9, "Watchdog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error running "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/server/Watchdog;->KERNEL_COMMAND:[Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 693
    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 694
    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 695
    :cond_4
    :goto_4
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_0

    .line 667
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #input:Ljava/io/InputStream;
    .end local v4           #outFile:Ljava/io/FileOutputStream;
    .end local v6           #process:Ljava/lang/Process;
    :catch_1
    move-exception v1

    .line 668
    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "Watchdog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to prepare traces file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v9

    .line 669
    goto/16 :goto_0

    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #data:[B
    .restart local v2       #input:Ljava/io/InputStream;
    .restart local v3       #num:I
    .restart local v5       #outFile:Ljava/io/FileOutputStream;
    .restart local v6       #process:Ljava/lang/Process;
    :cond_5
    move-object v4, v5

    .line 693
    .end local v0           #data:[B
    .end local v3           #num:I
    .end local v5           #outFile:Ljava/io/FileOutputStream;
    .restart local v4       #outFile:Ljava/io/FileOutputStream;
    :cond_6
    if-eqz v4, :cond_7

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 694
    :cond_7
    :goto_5
    if-eqz v2, :cond_8

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 695
    :cond_8
    :goto_6
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_0

    .line 693
    :catchall_0
    move-exception v9

    :goto_7
    if-eqz v4, :cond_9

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 694
    :cond_9
    :goto_8
    if-eqz v2, :cond_a

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 695
    :cond_a
    :goto_9
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    :cond_b
    throw v9

    .line 693
    :catch_2
    move-exception v9

    goto :goto_5

    .line 694
    :catch_3
    move-exception v9

    goto :goto_6

    .line 693
    .restart local v1       #e:Ljava/io/IOException;
    :catch_4
    move-exception v9

    goto :goto_3

    .line 694
    :catch_5
    move-exception v9

    goto :goto_4

    .line 693
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v10

    goto :goto_8

    .line 694
    :catch_7
    move-exception v10

    goto :goto_9

    .line 693
    .end local v4           #outFile:Ljava/io/FileOutputStream;
    .restart local v0       #data:[B
    .restart local v5       #outFile:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5           #outFile:Ljava/io/FileOutputStream;
    .restart local v4       #outFile:Ljava/io/FileOutputStream;
    goto :goto_7

    .line 690
    .end local v0           #data:[B
    :catch_8
    move-exception v1

    goto :goto_2
.end method

.method private dumpKernelStackTraces()Ljava/io/File;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 647
    const-string v2, "dalvik.vm.stack-trace-file"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, tracesPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 653
    :cond_0
    :goto_0
    return-object v1

    .line 652
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->native_dumpKernelStacks(Ljava/lang/String;)V

    .line 653
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 197
    :cond_0
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private isProcessAlive(Ljava/lang/String;)Z
    .locals 9
    .parameter "name"

    .prologue
    .line 417
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 418
    .local v5, sb:Ljava/lang/StringBuffer;
    const-string v7, "ps "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, cmd:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 424
    .local v4, p:Ljava/lang/Process;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 426
    .local v2, input:Ljava/io/BufferedReader;
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 427
    const-string v7, "\\s+"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 428
    .local v6, tokens:[Ljava/lang/String;
    const/4 v7, 0x7

    aget-object v7, v6, v7

    const-string v8, "S"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 429
    const/16 v7, 0x8

    aget-object v7, v6, v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_0

    .line 430
    const-string v7, "Watchdog"

    invoke-static {v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v7, 0x1

    .line 441
    .end local v2           #input:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #p:Ljava/lang/Process;
    .end local v6           #tokens:[Ljava/lang/String;
    :goto_0
    return v7

    .line 435
    .restart local v2       #input:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #p:Ljava/lang/Process;
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .end local v2           #input:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #p:Ljava/lang/Process;
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 437
    :catch_0
    move-exception v1

    .line 438
    .local v1, ex:Ljava/lang/Exception;
    const-string v7, "Watchdog"

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private native native_dumpKernelStacks(Ljava/lang/String;)V
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .locals 2
    .parameter "monitor"

    .prologue
    .line 235
    monitor-enter p0

    .line 236
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Monitors can\'t be added while the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 239
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    return-void
.end method

.method checkReboot(Z)V
    .locals 21
    .parameter "fromAlarm"

    .prologue
    .line 244
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    move/from16 v17, v0

    if-ltz v17, :cond_0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    .line 248
    .local v8, rebootInterval:I
    :goto_0
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/Watchdog;->mRebootInterval:I

    .line 249
    if-gtz v8, :cond_1

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mRebootIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 326
    :goto_1
    return-void

    .line 244
    .end local v8           #rebootInterval:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    const-string v18, "reboot_interval"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    goto :goto_0

    .line 256
    .restart local v8       #rebootInterval:I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootStartTime:I

    move/from16 v17, v0

    if-ltz v17, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootStartTime:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v11, v0

    .line 260
    .local v11, rebootStartTime:J
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootWindow:I

    move/from16 v17, v0

    if-ltz v17, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootWindow:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    :goto_3
    const-wide/16 v19, 0x3e8

    mul-long v13, v17, v19

    .line 264
    .local v13, rebootWindowMillis:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRecheckInterval:I

    move/from16 v17, v0

    if-ltz v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRecheckInterval:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    :goto_4
    const-wide/16 v19, 0x3e8

    mul-long v15, v17, v19

    .line 269
    .local v15, recheckInterval:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/Watchdog;->retrieveBrutalityAmount()V

    .line 274
    monitor-enter p0

    .line 275
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 276
    .local v4, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v5, v11, v12}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v6

    .line 279
    .local v6, realStartTime:J
    mul-int/lit8 v17, v8, 0x18

    mul-int/lit8 v17, v17, 0x3c

    mul-int/lit8 v17, v17, 0x3c

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v9, v0

    .line 280
    .local v9, rebootIntervalMillis:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/Watchdog;->mReqRebootNoWait:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/Watchdog;->mBootTime:J

    move-wide/from16 v17, v0

    sub-long v17, v4, v17

    sub-long v19, v9, v13

    cmp-long v17, v17, v19

    if-ltz v17, :cond_7

    .line 282
    :cond_2
    if-eqz p1, :cond_6

    const-wide/16 v17, 0x0

    cmp-long v17, v13, v17

    if-gtz v17, :cond_6

    .line 284
    const/16 v17, 0xaf8

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    long-to-int v0, v9

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    long-to-int v0, v11

    move/from16 v20, v0

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    long-to-int v0, v13

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    const-string v20, ""

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 287
    const-string v17, "Checkin scheduled forced"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->rebootSystem(Ljava/lang/String;)V

    .line 288
    monitor-exit p0

    goto/16 :goto_1

    .line 320
    .end local v4           #now:J
    .end local v6           #realStartTime:J
    .end local v9           #rebootIntervalMillis:J
    :catchall_0
    move-exception v17

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 256
    .end local v11           #rebootStartTime:J
    .end local v13           #rebootWindowMillis:J
    .end local v15           #recheckInterval:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    const-string v18, "reboot_start_time"

    const-wide/16 v19, 0x2a30

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v11

    goto/16 :goto_2

    .line 260
    .restart local v11       #rebootStartTime:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    const-string v18, "reboot_window"

    const-wide/16 v19, 0xe10

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v17

    goto/16 :goto_3

    .line 264
    .restart local v13       #rebootWindowMillis:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    const-string v18, "memcheck_recheck_interval"

    const-wide/16 v19, 0x12c

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v17

    goto/16 :goto_4

    .line 292
    .restart local v4       #now:J
    .restart local v6       #realStartTime:J
    .restart local v9       #rebootIntervalMillis:J
    .restart local v15       #recheckInterval:J
    :cond_6
    cmp-long v17, v4, v6

    if-gez v17, :cond_8

    .line 294
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v5, v11, v12}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v6

    .line 320
    :cond_7
    :goto_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mRebootIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mRebootIntent:Landroid/app/PendingIntent;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v6, v7, v2}, Lcom/android/server/AlarmManagerService;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 296
    :cond_8
    add-long v17, v6, v13

    cmp-long v17, v4, v17

    if-gez v17, :cond_c

    .line 297
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/Watchdog;->shouldWeBeBrutalLocked(J)Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, doit:Ljava/lang/String;
    const/16 v18, 0xaf8

    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v17, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v19, v17

    const/16 v17, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v19, v17

    const/16 v17, 0x2

    long-to-int v0, v11

    move/from16 v20, v0

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v19, v17

    const/16 v17, 0x3

    long-to-int v0, v13

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v19, v17

    const/16 v20, 0x4

    if-eqz v3, :cond_9

    move-object/from16 v17, v3

    :goto_6
    aput-object v17, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 301
    if-nez v3, :cond_a

    .line 302
    const-string v17, "Checked scheduled range"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->rebootSystem(Ljava/lang/String;)V

    .line 303
    monitor-exit p0

    goto/16 :goto_1

    .line 298
    :cond_9
    const-string v17, ""

    goto :goto_6

    .line 308
    :cond_a
    add-long v17, v4, v15

    add-long v19, v6, v13

    cmp-long v17, v17, v19

    if-ltz v17, :cond_b

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v17, v0

    add-long v18, v4, v9

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v11, v12}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v6

    goto/16 :goto_5

    .line 312
    :cond_b
    add-long v6, v4, v15

    goto/16 :goto_5

    .line 316
    .end local v3           #doit:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v17, v0

    add-long v18, v4, v9

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v11, v12}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v6

    goto/16 :goto_5
.end method

.method public init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .parameter "context"
    .parameter "battery"
    .parameter "power"
    .parameter "alarm"
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    .line 209
    iput-object p2, p0, Lcom/android/server/Watchdog;->mBattery:Lcom/android/server/BatteryService;

    .line 210
    iput-object p3, p0, Lcom/android/server/Watchdog;->mPower:Lcom/android/server/PowerManagerService;

    .line 211
    iput-object p4, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    .line 212
    iput-object p5, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 214
    new-instance v0, Lcom/android/server/Watchdog$RebootReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.service.Watchdog.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.service.Watchdog.REBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mRebootIntent:Landroid/app/PendingIntent;

    .line 219
    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/Watchdog;->mBootTime:J

    .line 224
    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "pid"

    .prologue
    .line 227
    monitor-enter p0

    .line 228
    :try_start_0
    const-string v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iput p2, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    .line 231
    :cond_0
    monitor-exit p0

    .line 232
    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .locals 4
    .parameter "reason"

    .prologue
    .line 332
    const-string v1, "Watchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rebooting system because: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/PowerManagerService;

    .line 334
    .local v0, pms:Lcom/android/server/PowerManagerService;
    invoke-virtual {v0, p1}, Lcom/android/server/PowerManagerService;->reboot(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method retrieveBrutalityAmount()V
    .locals 3

    .prologue
    .line 343
    iget v0, p0, Lcom/android/server/Watchdog;->mReqMinScreenOff:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/Watchdog;->mReqMinScreenOff:I

    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/Watchdog;->mMinScreenOff:I

    .line 347
    iget v0, p0, Lcom/android/server/Watchdog;->mReqMinNextAlarm:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/server/Watchdog;->mReqMinNextAlarm:I

    :goto_1
    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/Watchdog;->mMinAlarm:I

    .line 351
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "memcheck_min_screen_off"

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "memcheck_min_alarm"

    const/16 v2, 0xb4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_1
.end method

.method public run()V
    .locals 17

    .prologue
    .line 511
    const/4 v12, 0x0

    .line 513
    .local v12, waitedHalf:Z
    :goto_0
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/Watchdog;->mCompleted:Z

    .line 514
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/Watchdog;->mHandler:Landroid/os/Handler;

    const/16 v14, 0xa9e

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 516
    monitor-enter p0

    .line 517
    const-wide/16 v10, 0x7530

    .line 523
    .local v10, timeout:J
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 524
    .local v8, start:J
    :goto_1
    const-wide/16 v13, 0x0

    cmp-long v13, v10, v13

    if-lez v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/Watchdog;->mForceKillSystem:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v13, :cond_0

    .line 526
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 530
    :goto_2
    const-wide/16 v13, 0x7530

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v8

    sub-long v10, v13, v15

    goto :goto_1

    .line 527
    :catch_0
    move-exception v2

    .line 528
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v13, "Watchdog"

    invoke-static {v13, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 548
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v8           #start:J
    :catchall_0
    move-exception v13

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13

    .line 533
    .restart local v8       #start:J
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/Watchdog;->mCompleted:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/Watchdog;->mForceKillSystem:Z

    if-nez v13, :cond_1

    .line 535
    const/4 v12, 0x0

    .line 536
    monitor-exit p0

    goto :goto_0

    .line 539
    :cond_1
    if-nez v12, :cond_2

    .line 542
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .local v5, pids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v5, v14, v15}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessStats;Landroid/util/SparseArray;)Ljava/io/File;

    .line 545
    const/4 v12, 0x1

    .line 546
    monitor-exit p0

    goto :goto_0

    .line 548
    .end local v5           #pids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 554
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 556
    .local v3, name:Ljava/lang/String;
    :goto_3
    const/16 v13, 0xaf2

    invoke-static {v13, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 558
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .restart local v5       #pids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    if-lez v13, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_3
    if-nez v12, :cond_6

    const/4 v13, 0x1

    :goto_4
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v13, v5, v14, v15}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessStats;Landroid/util/SparseArray;)Ljava/io/File;

    move-result-object v7

    .line 568
    .local v7, stack:Ljava/io/File;
    const-wide/16 v13, 0x7d0

    invoke-static {v13, v14}, Landroid/os/SystemClock;->sleep(J)V

    .line 573
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->dumpKernelLogs()Ljava/io/File;

    .line 579
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->dumpKernelStackTraces()Ljava/io/File;

    .line 585
    new-instance v1, Lcom/android/server/Watchdog$1;

    const-string v13, "watchdogWriteToDropbox"

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v13, v3, v7}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 592
    .local v1, dropboxThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 594
    const-wide/16 v13, 0x7d0

    :try_start_4
    invoke-virtual {v1, v13, v14}, Ljava/lang/Thread;->join(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 598
    :goto_5
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v13

    if-nez v13, :cond_9

    .line 600
    const-string v13, "sys.watchdog.disabled"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_8

    .line 602
    const-string v13, "sys.watchdog.systemserverpid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    const/4 v14, 0x6

    invoke-static {v13, v14}, Landroid/os/Process;->sendSignal(II)V

    .line 605
    const-wide/16 v13, 0x7d0

    invoke-static {v13, v14}, Landroid/os/SystemClock;->sleep(J)V

    .line 606
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    const/4 v14, 0x6

    invoke-static {v13, v14}, Landroid/os/Process;->sendSignal(II)V

    .line 607
    const-wide/16 v13, 0x7d0

    invoke-static {v13, v14}, Landroid/os/SystemClock;->sleep(J)V

    .line 609
    const-string v13, "sys.watchdog.extraprocnames"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 610
    .local v6, procs:Ljava/lang/String;
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_7

    .line 612
    const-string v13, "Watchdog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Processes to create tombstones: ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/Watchdog;->createTombstone(Ljava/lang/String;)V

    .line 620
    :goto_6
    const-string v13, "Watchdog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const-string v13, "sys.watchdog.surfaceflingerpid"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 623
    .local v4, pid:I
    if-lez v4, :cond_4

    .line 624
    const-string v13, "Watchdog"

    const-string v14, "*** WATCHDOG KILLING SURFACEFLINGER"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 628
    :cond_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    invoke-static {v13}, Landroid/os/Process;->killProcess(I)V

    .line 629
    const/16 v13, 0xa

    invoke-static {v13}, Ljava/lang/System;->exit(I)V

    .line 642
    .end local v4           #pid:I
    .end local v6           #procs:Ljava/lang/String;
    :goto_7
    const/4 v12, 0x0

    .line 643
    goto/16 :goto_0

    .line 554
    .end local v1           #dropboxThread:Ljava/lang/Thread;
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #pids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7           #stack:Ljava/io/File;
    :cond_5
    const-string v3, "null"

    goto/16 :goto_3

    .line 563
    .restart local v3       #name:Ljava/lang/String;
    .restart local v5       #pids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 617
    .restart local v1       #dropboxThread:Ljava/lang/Thread;
    .restart local v6       #procs:Ljava/lang/String;
    .restart local v7       #stack:Ljava/io/File;
    :cond_7
    const-string v13, "Watchdog"

    const-string v14, "No process is given for creating tombstones on framework reboot."

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 632
    .end local v6           #procs:Ljava/lang/String;
    :cond_8
    const-string v13, "Watchdog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "*** WATCHDOG NOT KILLING SYSTEM PROCESS: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    const/16 v14, 0x13

    invoke-static {v13, v14}, Landroid/os/Process;->sendSignal(II)V

    .line 644
    return-void

    .line 639
    :cond_9
    const-string v13, "Watchdog"

    const-string v14, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 595
    :catch_1
    move-exception v13

    goto/16 :goto_5
.end method

.method shouldWeBeBrutalLocked(J)Ljava/lang/String;
    .locals 4
    .parameter "curTime"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/server/Watchdog;->mBattery:Lcom/android/server/BatteryService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/Watchdog;->mBattery:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->isPowered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    :cond_0
    const-string v0, "battery"

    .line 377
    :goto_0
    return-object v0

    .line 367
    :cond_1
    iget v0, p0, Lcom/android/server/Watchdog;->mMinScreenOff:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/Watchdog;->mPower:Lcom/android/server/PowerManagerService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/Watchdog;->mPower:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->timeSinceScreenOn()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/Watchdog;->mMinScreenOff:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 369
    :cond_2
    const-string v0, "screen"

    goto :goto_0

    .line 372
    :cond_3
    iget v0, p0, Lcom/android/server/Watchdog;->mMinAlarm:I

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->timeToNextAlarm()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/Watchdog;->mMinAlarm:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 374
    :cond_4
    const-string v0, "alarm"

    goto :goto_0

    .line 377
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
