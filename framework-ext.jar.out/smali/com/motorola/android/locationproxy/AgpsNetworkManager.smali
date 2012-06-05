.class public Lcom/motorola/android/locationproxy/AgpsNetworkManager;
.super Ljava/lang/Object;
.source "AgpsNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/locationproxy/AgpsNetworkManager$LookupHostThread;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final GOOGLE_SUPL_SERVER:Ljava/lang/String; = "google.com"

.field private static final MOTO_SUPL_SERVER:Ljava/lang/String; = "motorola.com"

.field private static final TAG:Ljava/lang/String; = "SUPLJ"

.field private static mContext:Landroid/content/Context; = null

.field private static mHandler:Landroid/os/Handler; = null

.field private static mHslpAddress:Ljava/lang/String; = null

.field private static volatile mIsAgpsPdpEnabled:Z = false

.field private static mRetryCount:I = 0x0

.field private static mTimer:Ljava/util/Timer; = null

.field private static final sMaxRetryCount:I = 0x5

.field private static final sStartupDelay:I = 0x2710


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPreviousMobilePDPConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    sput-boolean v1, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mIsAgpsPdpEnabled:Z

    .line 53
    sput-object v2, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mHslpAddress:Ljava/lang/String;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mHandler:Landroid/os/Handler;

    .line 55
    sput-object v2, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mTimer:Ljava/util/Timer;

    .line 56
    sput v1, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mRetryCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mIsPreviousMobilePDPConnected:Z

    .line 72
    invoke-static {p1}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->setContext(Landroid/content/Context;)V

    .line 73
    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->isCarrierSetingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 77
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v1, "action_supl_apn_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v1, "action_hslp_addr_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    new-instance v1, Lcom/motorola/android/locationproxy/AgpsNetworkManager$1;

    invoke-direct {v1, p0}, Lcom/motorola/android/locationproxy/AgpsNetworkManager$1;-><init>(Lcom/motorola/android/locationproxy/AgpsNetworkManager;)V

    iput-object v1, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    sget-object v1, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mIsAgpsPdpEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->lookupHost(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-boolean p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mIsAgpsPdpEnabled:Z

    return p0
.end method

.method static synthetic access$200(Lcom/motorola/android/locationproxy/AgpsNetworkManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->configAgpsApn()V

    return-void
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mRetryCount:I

    return p0
.end method

.method static synthetic access$400(Lcom/motorola/android/locationproxy/AgpsNetworkManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->startUsingAgpsPdp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/motorola/android/locationproxy/AgpsNetworkManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mIsPreviousMobilePDPConnected:Z

    return v0
.end method

.method static synthetic access$502(Lcom/motorola/android/locationproxy/AgpsNetworkManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mIsPreviousMobilePDPConnected:Z

    return p1
.end method

.method static synthetic access$600()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$602(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-object p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mHslpAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-object p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mHslpAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800()Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/android/locationproxy/AgpsNetworkManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->scheduleStart()V

    return-void
.end method

.method private addAgpsApn(Ljava/lang/String;)V
    .locals 7
    .parameter "apn"

    .prologue
    const/4 v6, 0x3

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAgpsApn: apn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    .line 467
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 468
    :cond_0
    const-string v3, "apn should be a non-empty string"

    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    .line 489
    :goto_0
    return-void

    .line 472
    :cond_1
    sget-object v3, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 473
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 475
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "agps-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v3, "apn"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v3, "type"

    const-string v4, "agps"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, numberic:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_2

    .line 481
    const-string v3, "numeric"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v3, "mcc"

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v3, "mnc"

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 485
    :cond_2
    const-string v3, "Unable to get MCC and MNC"

    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private configAgpsApn()V
    .locals 13

    .prologue
    .line 392
    const-string v1, "configAgpsApn: Enter"

    invoke-static {v1}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    .line 394
    sget-object v1, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 395
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "supl_pref_apn"

    invoke-static {v0, v1}, Lcom/motorola/android/locationproxy/settings/Settings$Supl;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 397
    .local v11, prefApn:Ljava/lang/String;
    if-nez v11, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    const-string v1, "supl_alt_apns"

    invoke-static {v0, v1}, Lcom/motorola/android/locationproxy/settings/Settings$Supl;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 402
    .local v7, altApns:[Ljava/lang/String;
    if-eqz v7, :cond_0

    array-length v1, v7

    if-eqz v1, :cond_0

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prefApn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; altApns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    .line 407
    const/4 v12, -0x1

    .line 408
    .local v12, prefApnId:I
    const/4 v6, -0x1

    .line 409
    .local v6, altApnId:I
    const-string v3, "type=\"agps\""

    .line 411
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "apn"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 413
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 417
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 419
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_4

    .line 420
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 421
    .local v10, id:I
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 423
    .local v8, apn:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; apn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 425
    move v12, v10

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prefApnId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    .line 433
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 427
    :cond_2
    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 428
    move v6, v10

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "altApnId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 431
    :cond_3
    invoke-direct {p0, v10}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->deleteAgpsApn(I)V

    goto :goto_2

    .line 436
    .end local v8           #apn:Ljava/lang/String;
    .end local v10           #id:I
    :cond_4
    const/4 v1, -0x1

    if-ne v12, v1, :cond_7

    .line 437
    const/4 v1, -0x1

    if-eq v6, v1, :cond_5

    .line 438
    invoke-direct {p0, v6}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->deleteAgpsApn(I)V

    .line 440
    :cond_5
    invoke-direct {p0, v11}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->addAgpsApn(Ljava/lang/String;)V

    .line 441
    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-direct {p0, v1}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->addAgpsApn(Ljava/lang/String;)V

    .line 452
    :cond_6
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 454
    const-string v1, "configAgpsApn: Exit"

    invoke-static {v1}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 443
    :cond_7
    const/4 v1, -0x1

    if-ne v6, v1, :cond_8

    .line 444
    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-direct {p0, v1}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->addAgpsApn(Ljava/lang/String;)V

    goto :goto_3

    .line 445
    :cond_8
    if-le v12, v6, :cond_6

    .line 446
    invoke-direct {p0, v6}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->deleteAgpsApn(I)V

    .line 447
    invoke-direct {p0, v11}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->addAgpsApn(Ljava/lang/String;)V

    .line 448
    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-direct {p0, v1}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->addAgpsApn(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static declared-synchronized configAgpsNetwork(Ljava/lang/String;)V
    .locals 6
    .parameter "host"

    .prologue
    .line 232
    const-class v4, Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    monitor-enter v4

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configAgpsNetwork: host="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    .line 233
    sget-boolean v3, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mIsAgpsPdpEnabled:Z

    if-nez v3, :cond_0

    .line 234
    const-string v3, "SUPLJ"

    const-string v5, "mIsAgpsPdpEnabled is false, return!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :goto_0
    monitor-exit v4

    return-void

    .line 238
    :cond_0
    if-eqz p0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 239
    sget-object v3, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 242
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 243
    .local v1, info:Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 244
    const-string v3, "SUPLJ"

    const-string v5, "No Active data connection is available!"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v3, ""

    sput-object v3, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mHslpAddress:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 232
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #info:Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 253
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/motorola/android/locationproxy/AgpsNetworkManager$LookupHostThread;

    invoke-direct {v3, p0}, Lcom/motorola/android/locationproxy/AgpsNetworkManager$LookupHostThread;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 254
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 256
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #thread:Ljava/lang/Thread;
    :cond_2
    const-string v3, "SUPLJ"

    const-string v5, "host is Empty"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized configAgpsNetworkSync(Ljava/lang/String;)V
    .locals 6
    .parameter "host"

    .prologue
    .line 292
    const-class v4, Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    monitor-enter v4

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configAgpsNetworkSync: host="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    .line 293
    sget-boolean v3, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mIsAgpsPdpEnabled:Z

    if-nez v3, :cond_0

    .line 294
    const-string v3, "SUPLJ"

    const-string v5, "mIsAgpsPdpEnabled is false, return!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :goto_0
    monitor-exit v4

    return-void

    .line 298
    :cond_0
    if-eqz p0, :cond_3

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 299
    sget-object v3, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 302
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 303
    .local v2, info:Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 304
    const-string v3, "SUPLJ"

    const-string v5, "No Active data connection is available!"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v3, ""

    sput-object v3, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mHslpAddress:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 292
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #info:Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 309
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v2       #info:Landroid/net/NetworkInfo;
    :cond_1
    :try_start_2
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->lookupHost(Ljava/lang/String;)I

    move-result v1

    .line 310
    .local v1, inetAddr:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configAgpsNetwork: Ip address of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    .line 311
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 312
    const/16 v3, 0x1e

    invoke-virtual {v0, v3, v1}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    goto :goto_0

    .line 314
    :cond_2
    const-string v3, ""

    sput-object v3, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mHslpAddress:Ljava/lang/String;

    goto :goto_0

    .line 318
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #inetAddr:I
    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_3
    const-string v3, "SUPLJ"

    const-string v5, "host is Empty"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private deleteAgpsApn(I)V
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAgpsApn: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    .line 459
    sget-object v2, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 460
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 461
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 462
    return-void
.end method

.method private static int2IpString(I)Ljava/lang/String;
    .locals 3
    .parameter "inetAddr"

    .prologue
    .line 217
    and-int/lit16 v1, p0, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, ipString:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "int2IpString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    .line 225
    return-object v0
.end method

.method public static isAgpsPdpEnabled()Z
    .locals 2

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAgpsPdpEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mIsAgpsPdpEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    .line 181
    sget-boolean v0, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mIsAgpsPdpEnabled:Z

    return v0
.end method

.method public static isCarrierSetingEnabled()Z
    .locals 4

    .prologue
    .line 166
    const/4 v1, 0x0

    .line 168
    .local v1, enable:Z
    :try_start_0
    sget-object v2, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "supl_carrier_settings_enabled"

    invoke-static {v2, v3}, Lcom/motorola/android/locationproxy/settings/Settings$Supl;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/motorola/android/locationproxy/settings/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 170
    const/4 v1, 0x1

    .line 175
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCarrierSetingEnabled:enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    .line 176
    return v1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Lcom/motorola/android/locationproxy/settings/Settings$SettingNotFoundException;
    const-string v2, "SUPLJ"

    const-string v3, "Setting not found: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isConfiguredHslp(Ljava/lang/String;)Z
    .locals 1
    .parameter "host"

    .prologue
    .line 190
    sget-object v0, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mHslpAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFallbackSuplHost(Ljava/lang/String;)Z
    .locals 2
    .parameter "host"

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFallbackSuplHost: host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    .line 186
    const-string v0, "google.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "motorola.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 493
    const-string v0, "SUPLJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AgpsNetworkManager->["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    return-void
.end method

.method private static lookupHost(Ljava/lang/String;)I
    .locals 6
    .parameter "hostname"

    .prologue
    .line 508
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 514
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 515
    .local v1, addrBytes:[B
    const/4 v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    .line 519
    .end local v1           #addrBytes:[B
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    :goto_0
    return v0

    .line 509
    :catch_0
    move-exception v2

    .line 510
    .local v2, e:Ljava/net/UnknownHostException;
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private scheduleStart()V
    .locals 4

    .prologue
    .line 198
    sget-boolean v1, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mIsAgpsPdpEnabled:Z

    if-eqz v1, :cond_0

    .line 199
    const-string v1, "SUPLJ"

    const-string v2, "scheduleStart:AGPS pdp has enabled already"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_0
    return-void

    .line 203
    :cond_0
    monitor-enter p0

    .line 204
    :try_start_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mTimer:Ljava/util/Timer;

    .line 206
    new-instance v0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$2;

    invoke-direct {v0, p0}, Lcom/motorola/android/locationproxy/AgpsNetworkManager$2;-><init>(Lcom/motorola/android/locationproxy/AgpsNetworkManager;)V

    .line 212
    .local v0, timerTask:Ljava/util/TimerTask;
    sget-object v1, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 213
    monitor-exit p0

    goto :goto_0

    .end local v0           #timerTask:Ljava/util/TimerTask;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 194
    sput-object p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mContext:Landroid/content/Context;

    .line 195
    return-void
.end method

.method private startUsingAgpsPdp()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startUsingAgpsPdp: retry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " times"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    .line 325
    sget-boolean v3, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mIsAgpsPdpEnabled:Z

    if-eqz v3, :cond_0

    .line 326
    const-string v3, "AGPS PDP already enabled"

    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    .line 361
    :goto_0
    return v2

    .line 330
    :cond_0
    sget v3, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mRetryCount:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 331
    sget-object v3, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 333
    .local v0, cm:Landroid/net/ConnectivityManager;
    const-string v3, "enableAGPS"

    invoke-virtual {v0, v5, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v1

    .line 335
    .local v1, rr:I
    packed-switch v1, :pswitch_data_0

    .line 350
    const-string v2, "SUPLJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to enable agps pdp: errno="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    sput-boolean v5, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mIsAgpsPdpEnabled:Z

    .line 352
    invoke-direct {p0}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->scheduleStart()V

    .line 355
    :goto_1
    sget v2, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mRetryCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mRetryCount:I

    .line 360
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #rr:I
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startUsingAgpsPdp: return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mIsAgpsPdpEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    .line 361
    sget-boolean v2, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mIsAgpsPdpEnabled:Z

    goto :goto_0

    .line 337
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v1       #rr:I
    :pswitch_0
    const-string v3, "Agps pdp already enabled"

    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    .line 338
    sput-boolean v2, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mIsAgpsPdpEnabled:Z

    .line 340
    sget-object v2, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hslp_address"

    invoke-static {v2, v3}, Lcom/motorola/android/locationproxy/settings/Settings$Supl;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mHslpAddress:Ljava/lang/String;

    .line 343
    sget-object v2, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mHslpAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->configAgpsNetwork(Ljava/lang/String;)V

    goto :goto_1

    .line 346
    :pswitch_1
    const-string v2, "Waiting to enable agps pdp"

    invoke-static {v2}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    .line 347
    sput-boolean v5, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mIsAgpsPdpEnabled:Z

    goto :goto_1

    .line 357
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #rr:I
    :cond_1
    const-string v2, "SUPLJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t enable agps pdp after try "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " times"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private stopUsingAgpsPdp()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 365
    const-string v2, "stopUsingAgpsPdp"

    invoke-static {v2}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    .line 367
    sput v5, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mRetryCount:I

    .line 369
    sget-boolean v2, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mIsAgpsPdpEnabled:Z

    if-nez v2, :cond_1

    .line 370
    monitor-enter p0

    .line 371
    :try_start_0
    sget-object v2, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mTimer:Ljava/util/Timer;

    if-eqz v2, :cond_0

    .line 372
    const-string v2, "Cancel the scheduled timer task"

    invoke-static {v2}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    .line 373
    sget-object v2, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 374
    const/4 v2, 0x0

    sput-object v2, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mTimer:Ljava/util/Timer;

    .line 376
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    const-string v2, "AGPS PDP has disabled already"

    invoke-static {v2}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V

    .line 389
    :goto_0
    return-void

    .line 376
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 381
    :cond_1
    sget-object v2, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 383
    .local v0, cm:Landroid/net/ConnectivityManager;
    const-string v2, "enableAGPS"

    invoke-virtual {v0, v5, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v1

    .line 385
    .local v1, rr:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 386
    const-string v2, "SUPLJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopUsingNetworkFeature rr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_2
    sput-boolean v5, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mIsAgpsPdpEnabled:Z

    goto :goto_0
.end method
