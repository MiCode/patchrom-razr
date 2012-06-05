.class Lcom/vzw/location/VzwGpsReqMgr;
.super Ljava/lang/Object;
.source "VzwGpsReqMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/VzwGpsReqMgr$1;,
        Lcom/vzw/location/VzwGpsReqMgr$DataConnListener;
    }
.end annotation


# static fields
.field private static final APP_ID_ROVER_1:I = 0x1bdcb

.field private static final APP_ID_ROVER_3_CA:I = 0x2000000c

.field private static final APP_ID_ROVER_3_TA:I = 0x50000000

.field private static final APP_ID_ROVER_3_TB:I = 0x50000008

.field private static final DEBUG:Z = false

.field private static final GPS_EVENT_AGPS_AUTH_BYPASS:I = 0x50

.field private static final GPS_EVENT_AGPS_AUTH_SKIP:I = 0x51

.field private static final TAG:Ljava/lang/String; = "VzwGpsReqMgr"


# instance fields
.field private activeConfig:Lcom/vzw/location/VzwCriteria;

.field private appSessionQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/vzw/location/VzwGpsAppSession;",
            ">;"
        }
    .end annotation
.end field

.field private dataAvl:Z

.field private locListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/vzw/location/VzwGpsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthMgr:Lcom/vzw/location/VzwGpsAuthMgr;

.field private mContext:Landroid/content/Context;

.field private mNwMgr:Lcom/vzw/location/VzwGpsNwMgr;

.field private mPendingBroadcasts:I

.field private mProvider:Lcom/vzw/location/VzwLocationProviderProxy;

.field private mStandAloneOnly:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final nLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vzw/location/VzwLocationProviderProxy;Landroid/os/PowerManager$WakeLock;Lcom/vzw/location/VzwGpsNwMgr;)V
    .locals 3
    .parameter "context"
    .parameter "proxy"
    .parameter "wakeLock"
    .parameter "nwMgr"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->nLock:Ljava/lang/Object;

    .line 59
    iput-object p1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/vzw/location/VzwGpsReqMgr;->mProvider:Lcom/vzw/location/VzwLocationProviderProxy;

    .line 61
    iput-object p4, p0, Lcom/vzw/location/VzwGpsReqMgr;->mNwMgr:Lcom/vzw/location/VzwGpsNwMgr;

    .line 62
    iput-object v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->mAuthMgr:Lcom/vzw/location/VzwGpsAuthMgr;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->dataAvl:Z

    .line 64
    iput-boolean v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mStandAloneOnly:Z

    .line 65
    iput v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mPendingBroadcasts:I

    .line 66
    iput-object p3, p0, Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 67
    iput-object v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->activeConfig:Lcom/vzw/location/VzwCriteria;

    .line 68
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    .line 71
    iget-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 73
    iget-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/vzw/location/VzwGpsReqMgr$DataConnListener;

    invoke-direct {v1, p0, v2}, Lcom/vzw/location/VzwGpsReqMgr$DataConnListener;-><init>(Lcom/vzw/location/VzwGpsReqMgr;Lcom/vzw/location/VzwGpsReqMgr$1;)V

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 75
    return-void
.end method

.method static synthetic access$100(Lcom/vzw/location/VzwGpsReqMgr;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->mStandAloneOnly:Z

    return v0
.end method

.method static synthetic access$102(Lcom/vzw/location/VzwGpsReqMgr;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mStandAloneOnly:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vzw/location/VzwGpsReqMgr;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vzw/location/VzwGpsReqMgr;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vzw/location/VzwGpsReqMgr;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwGpsReqMgr;->updateProviderConfigLocked(Z)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    .line 711
    iget v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mPendingBroadcasts:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->mPendingBroadcasts:I

    if-nez v1, :cond_0

    .line 713
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "VzwGpsReqMgr"

    const-string v2, "exception in acquireWakeLock(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private clearSessionLocked(Lcom/vzw/location/VzwGpsAppSession;)V
    .locals 5
    .parameter "session"

    .prologue
    const/4 v4, 0x0

    .line 495
    if-nez p1, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAppSession;->getUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAppSession;->getPid()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/vzw/location/VzwGpsReqMgr;->sessionExistsLocked(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    iget-object v3, p0, Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v3

    .line 506
    :try_start_0
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAppSession;->getPendingBroadcasts()I

    move-result v2

    if-lez v2, :cond_2

    .line 507
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/vzw/location/VzwGpsAppSession;->setPendingBroadcasts(I)V

    .line 508
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->releaseWakeLock()V

    .line 510
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAppSession;->getAuthRequest()Lcom/vzw/location/VzwGpsAuthRequest;

    move-result-object v0

    .line 515
    .local v0, authReq:Lcom/vzw/location/VzwGpsAuthRequest;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsAuthRequest;->getState()I

    move-result v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_3

    .line 517
    iget-object v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->mAuthMgr:Lcom/vzw/location/VzwGpsAuthMgr;

    invoke-virtual {v2, v0}, Lcom/vzw/location/VzwGpsAuthMgr;->removeRequest(Lcom/vzw/location/VzwGpsAuthRequest;)V

    .line 520
    :cond_3
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAppSession;->getGpsRequest()Lcom/vzw/location/VzwGpsRequest;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/vzw/location/VzwGpsReqMgr;->removeRequestLocked(Lcom/vzw/location/VzwGpsRequest;Z)V

    .line 522
    iget-object v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 524
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAppSession;->getStatusListener()Lcom/vzw/location/IVzwGpsStatusListener;

    move-result-object v1

    .line 525
    .local v1, listener:Lcom/vzw/location/IVzwGpsStatusListener;
    if-eqz v1, :cond_0

    .line 526
    invoke-direct {p0, v1, p1}, Lcom/vzw/location/VzwGpsReqMgr;->removeStatusListenerLocked(Lcom/vzw/location/IVzwGpsStatusListener;Lcom/vzw/location/VzwGpsAppSession;)V

    goto :goto_0

    .line 510
    .end local v0           #authReq:Lcom/vzw/location/VzwGpsAuthRequest;
    .end local v1           #listener:Lcom/vzw/location/IVzwGpsStatusListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static gcd(JJ)J
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 743
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    .line 745
    move-wide v0, p2

    .line 746
    .local v0, temp:J
    rem-long p2, p0, p2

    .line 747
    move-wide p0, v0

    goto :goto_0

    .line 750
    .end local v0           #temp:J
    :cond_0
    return-wide p0
.end method

.method private getOrCreateSessionLocked()Lcom/vzw/location/VzwGpsAppSession;
    .locals 4

    .prologue
    .line 449
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 450
    .local v2, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 454
    .local v0, pid:I
    invoke-direct {p0, v2, v0}, Lcom/vzw/location/VzwGpsReqMgr;->getSessionLocked(II)Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v1

    .line 455
    .local v1, session:Lcom/vzw/location/VzwGpsAppSession;
    if-nez v1, :cond_0

    .line 456
    new-instance v1, Lcom/vzw/location/VzwGpsAppSession;

    .end local v1           #session:Lcom/vzw/location/VzwGpsAppSession;
    invoke-direct {v1, v2, v0}, Lcom/vzw/location/VzwGpsAppSession;-><init>(II)V

    .line 457
    .restart local v1       #session:Lcom/vzw/location/VzwGpsAppSession;
    iget-object v3, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 460
    :cond_0
    return-object v1
.end method

.method private getRequestLocked()Lcom/vzw/location/VzwGpsRequest;
    .locals 3

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->getSessionLocked()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v0

    .line 228
    .local v0, session:Lcom/vzw/location/VzwGpsAppSession;
    if-nez v0, :cond_0

    .line 229
    const-string v1, "VzwGpsReqMgr"

    const-string v2, "getRequest(): session==null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v1, 0x0

    .line 233
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsAppSession;->getGpsRequest()Lcom/vzw/location/VzwGpsRequest;

    move-result-object v1

    goto :goto_0
.end method

.method private getSessionLocked()Lcom/vzw/location/VzwGpsAppSession;
    .locals 2

    .prologue
    .line 464
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/vzw/location/VzwGpsReqMgr;->getSessionLocked(II)Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v0

    return-object v0
.end method

.method private getSessionLocked(II)Lcom/vzw/location/VzwGpsAppSession;
    .locals 4
    .parameter "uid"
    .parameter "pid"

    .prologue
    const/4 v2, 0x0

    .line 470
    iget-object v3, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 485
    :goto_0
    return-object v1

    .line 476
    :cond_0
    iget-object v3, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 477
    .local v0, it:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 478
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwGpsAppSession;

    .line 479
    .local v1, session:Lcom/vzw/location/VzwGpsAppSession;
    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsAppSession;->getUid()I

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsAppSession;->getPid()I

    move-result v3

    if-ne v3, p2, :cond_1

    goto :goto_0

    .end local v1           #session:Lcom/vzw/location/VzwGpsAppSession;
    :cond_2
    move-object v1, v2

    .line 485
    goto :goto_0
.end method

.method public static isRoverApp(I)Z
    .locals 1
    .parameter "appId"

    .prologue
    .line 163
    const v0, 0x1bdcb

    if-eq p0, v0, :cond_0

    const v0, 0x2000000c

    if-eq p0, v0, :cond_0

    const/high16 v0, 0x5000

    if-eq p0, v0, :cond_0

    const v0, 0x50000008

    if-ne p0, v0, :cond_1

    .line 167
    :cond_0
    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 3

    .prologue
    .line 723
    :try_start_0
    iget v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mPendingBroadcasts:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mPendingBroadcasts:I

    if-nez v1, :cond_0

    .line 725
    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 732
    :catch_0
    move-exception v0

    .line 735
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "VzwGpsReqMgr"

    const-string v2, "exception in releaseWakeLock(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private removeRequestLocked(Lcom/vzw/location/VzwGpsRequest;Z)V
    .locals 1
    .parameter "gpsReq"
    .parameter "updateConfig"

    .prologue
    .line 213
    if-eqz p1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 216
    if-eqz p2, :cond_0

    .line 217
    iget-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/vzw/location/VzwGpsReqMgr;->updateProviderConfigLocked(Z)V

    .line 220
    :cond_0
    return-void

    .line 217
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeStatusListenerLocked(Lcom/vzw/location/IVzwGpsStatusListener;Lcom/vzw/location/VzwGpsAppSession;)V
    .locals 1
    .parameter "listener"
    .parameter "session"

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/vzw/location/VzwGpsAppSession;->setStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V

    .line 122
    return-void
.end method

.method private reportAuthStatusLocked(Lcom/vzw/location/VzwGpsAuthRequest;I)Z
    .locals 5
    .parameter "authReq"
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 533
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAuthRequest;->getAppSession()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vzw/location/VzwGpsAppSession;->getStatusListener()Lcom/vzw/location/IVzwGpsStatusListener;

    move-result-object v1

    .line 534
    .local v1, statusListener:Lcom/vzw/location/IVzwGpsStatusListener;
    if-nez v1, :cond_0

    .line 547
    :goto_0
    return v2

    .line 540
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v3, p2}, Lcom/vzw/location/IVzwGpsStatusListener;->onAuthStatusChanged(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    const/4 v2, 0x1

    goto :goto_0

    .line 543
    :catch_0
    move-exception v0

    .line 545
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAuthRequest;->getAppSession()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/vzw/location/VzwGpsReqMgr;->clearSessionLocked(Lcom/vzw/location/VzwGpsAppSession;)V

    .line 546
    const-string v3, "VzwGpsReqMgr"

    const-string v4, "report auth status exception: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sessionExistsLocked(II)Z
    .locals 1
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 489
    invoke-direct {p0, p1, p2}, Lcom/vzw/location/VzwGpsReqMgr;->getSessionLocked(II)Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMpcHostLocked(Lcom/vzw/location/VzwCriteria;)Z
    .locals 7
    .parameter "config"

    .prologue
    .line 411
    iget-object v5, p0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 412
    .local v3, it:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 413
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vzw/location/VzwGpsRequest;

    .line 415
    .local v2, gpsReq:Lcom/vzw/location/VzwGpsRequest;
    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsRequest;->getAppSession()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v4

    .line 416
    .local v4, session:Lcom/vzw/location/VzwGpsAppSession;
    if-nez v4, :cond_1

    .line 417
    const-string v5, "VzwGpsReqMgr"

    const-string v6, "setMpcHostLocked(): session==null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 421
    :cond_1
    invoke-virtual {v4}, Lcom/vzw/location/VzwGpsAppSession;->getAuthRequest()Lcom/vzw/location/VzwGpsAuthRequest;

    move-result-object v0

    .line 422
    .local v0, authReq:Lcom/vzw/location/VzwGpsAuthRequest;
    if-nez v0, :cond_2

    .line 423
    const-string v5, "VzwGpsReqMgr"

    const-string v6, "setMpcHostLocked(): authReq==null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 427
    :cond_2
    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsAuthRequest;->getCfgInit()Lcom/vzw/location/VzwGpsConfigInit;

    move-result-object v1

    .line 431
    .local v1, ci:Lcom/vzw/location/VzwGpsConfigInit;
    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsAuthRequest;->getResult()I

    move-result v5

    const/16 v6, 0x51

    if-eq v5, v6, :cond_0

    .line 435
    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 436
    const-string v5, "VzwGpsReqMgr"

    const-string v6, "setMpcHostLocked(): mpcHost==null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 440
    :cond_3
    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcPort()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lcom/vzw/location/VzwCriteria;->setAssistanceHost(Ljava/lang/String;I)V

    .line 441
    const/4 v5, 0x1

    .line 445
    .end local v0           #authReq:Lcom/vzw/location/VzwGpsAuthRequest;
    .end local v1           #ci:Lcom/vzw/location/VzwGpsConfigInit;
    .end local v2           #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    .end local v4           #session:Lcom/vzw/location/VzwGpsAppSession;
    :goto_1
    return v5

    .line 444
    :cond_4
    const-string v5, "VzwGpsReqMgr"

    const-string v6, "setMpcHostLocked(): valid mpcHost not found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private updateProviderConfigLocked(Z)V
    .locals 26
    .parameter "silent"

    .prologue
    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->size()I

    move-result v22

    if-nez v22, :cond_1

    .line 312
    new-instance v22, Ljava/util/LinkedList;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    .line 313
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vzw/location/VzwGpsReqMgr;->activeConfig:Lcom/vzw/location/VzwCriteria;

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->mProvider:Lcom/vzw/location/VzwLocationProviderProxy;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocationProviderProxy;->stop(Z)Z

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    new-instance v12, Lcom/vzw/location/VzwCriteria;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/vzw/location/VzwGpsRequest;

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Lcom/vzw/location/VzwCriteria;-><init>(Lcom/vzw/location/VzwCriteria;)V

    .line 320
    .local v12, newConfig:Lcom/vzw/location/VzwCriteria;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 321
    .local v10, it:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 322
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vzw/location/VzwGpsRequest;

    .line 323
    .local v13, nxtReq:Lcom/vzw/location/VzwGpsRequest;
    invoke-virtual {v13}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v15

    .line 324
    .local v15, perf:Lcom/vzw/location/VzwGpsPerformance;
    invoke-virtual {v13}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v7

    .line 325
    .local v7, fixRate:Lcom/vzw/location/VzwGpsFixRate;
    invoke-virtual {v13}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwCriteria;->getPriority()I

    move-result v6

    .line 326
    .local v6, fixPriority:I
    invoke-virtual {v13}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v5

    .line 327
    .local v5, fixMode:I
    invoke-virtual {v15}, Lcom/vzw/location/VzwGpsPerformance;->getPreferredResponseTime()J

    move-result-wide v16

    .line 328
    .local v16, prefRespTime:J
    invoke-virtual {v15}, Lcom/vzw/location/VzwGpsPerformance;->getHorizontalAccuracy()J

    move-result-wide v8

    .line 329
    .local v8, horAccuracy:J
    invoke-virtual {v15}, Lcom/vzw/location/VzwGpsPerformance;->getVerticalAccuracy()J

    move-result-wide v20

    .line 332
    .local v20, vertAccuracy:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->mStandAloneOnly:Z

    move/from16 v22, v0

    if-nez v22, :cond_2

    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getPriority()I

    move-result v22

    move/from16 v0, v22

    if-le v6, v0, :cond_2

    .line 333
    invoke-virtual {v12, v5}, Lcom/vzw/location/VzwCriteria;->setFixMode(I)V

    .line 336
    :cond_2
    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwGpsPerformance;->getVerticalAccuracy()J

    move-result-wide v22

    cmp-long v22, v20, v22

    if-lez v22, :cond_3

    .line 337
    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/VzwGpsPerformance;->setVerticalAccuracy(J)V

    .line 340
    :cond_3
    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwGpsPerformance;->getHorizontalAccuracy()J

    move-result-wide v22

    cmp-long v22, v8, v22

    if-lez v22, :cond_4

    .line 341
    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Lcom/vzw/location/VzwGpsPerformance;->setHorizontalAccuracy(J)V

    .line 344
    :cond_4
    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwGpsPerformance;->getPreferredResponseTime()J

    move-result-wide v22

    cmp-long v22, v16, v22

    if-gez v22, :cond_5

    .line 345
    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/VzwGpsPerformance;->setPreferredResponseTime(J)V

    .line 348
    :cond_5
    invoke-virtual {v7}, Lcom/vzw/location/VzwGpsFixRate;->getTimeBetweenFixes()J

    move-result-wide v22

    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/vzw/location/VzwGpsFixRate;->getTimeBetweenFixes()J

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Lcom/vzw/location/VzwGpsReqMgr;->gcd(JJ)J

    move-result-wide v18

    .line 349
    .local v18, tbf:J
    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/VzwGpsFixRate;->setTimeBetweenFixes(J)V

    goto/16 :goto_1

    .line 352
    .end local v5           #fixMode:I
    .end local v6           #fixPriority:I
    .end local v7           #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    .end local v8           #horAccuracy:J
    .end local v13           #nxtReq:Lcom/vzw/location/VzwGpsRequest;
    .end local v15           #perf:Lcom/vzw/location/VzwGpsPerformance;
    .end local v16           #prefRespTime:J
    .end local v18           #tbf:J
    .end local v20           #vertAccuracy:J
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->mStandAloneOnly:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 354
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/vzw/location/VzwCriteria;->setFixMode(I)V

    .line 359
    :cond_7
    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v22

    const-wide/16 v23, -0x1

    invoke-virtual/range {v22 .. v24}, Lcom/vzw/location/VzwGpsFixRate;->setNumFixes(J)V

    .line 361
    const/4 v14, 0x0

    .line 362
    .local v14, oneSec:Z
    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwGpsFixRate;->getTimeBetweenFixes()J

    move-result-wide v22

    const-wide/16 v24, 0x1

    cmp-long v22, v22, v24

    if-nez v22, :cond_8

    .line 363
    const/4 v14, 0x1

    .line 366
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 367
    .local v11, it2:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 368
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vzw/location/VzwGpsRequest;

    .line 369
    .restart local v13       #nxtReq:Lcom/vzw/location/VzwGpsRequest;
    invoke-virtual {v13}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v7

    .line 370
    .restart local v7       #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    if-eqz v14, :cond_9

    .line 371
    const-wide/16 v22, 0x1f4

    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Lcom/vzw/location/VzwGpsFixRate;->setUpdateMargin(J)V

    goto :goto_2

    .line 373
    :cond_9
    invoke-virtual {v7}, Lcom/vzw/location/VzwGpsFixRate;->setUpdateMargin()V

    goto :goto_2

    .line 377
    .end local v7           #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    .end local v13           #nxtReq:Lcom/vzw/location/VzwGpsRequest;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->activeConfig:Lcom/vzw/location/VzwCriteria;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/vzw/location/VzwCriteria;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->mProvider:Lcom/vzw/location/VzwLocationProviderProxy;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocationProviderProxy;->stop(Z)Z

    .line 382
    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_c

    .line 383
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/vzw/location/VzwGpsReqMgr;->setMpcHostLocked(Lcom/vzw/location/VzwCriteria;)Z

    move-result v22

    if-nez v22, :cond_b

    .line 384
    const-string v22, "VzwGpsReqMgr"

    const-string v23, "updateProviderConfigLocked(): failed to set mpcHost"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_b
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->mProvider:Lcom/vzw/location/VzwLocationProviderProxy;

    move-object/from16 v22, v0

    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getAssistanceHost()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v12}, Lcom/vzw/location/VzwCriteria;->getAssistancePort()I

    move-result v24

    invoke-static/range {v23 .. v24}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/vzw/location/VzwLocationProviderProxy;->setPdeAddress(Ljava/net/InetSocketAddress;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 398
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->mProvider:Lcom/vzw/location/VzwLocationProviderProxy;

    move-object/from16 v22, v0

    new-instance v23, Lcom/vzw/location/gpsprovider/VzwHalCriteria;

    move-object/from16 v0, v23

    invoke-direct {v0, v12}, Lcom/vzw/location/gpsprovider/VzwHalCriteria;-><init>(Lcom/vzw/location/VzwCriteria;)V

    const/16 v24, -0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/vzw/location/VzwLocationProviderProxy;->start(Lcom/vzw/location/gpsprovider/VzwHalCriteria;IZ)Z

    .line 401
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vzw/location/VzwGpsReqMgr;->activeConfig:Lcom/vzw/location/VzwCriteria;

    goto/16 :goto_0

    .line 390
    :catch_0
    move-exception v4

    .line 391
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const-string v22, "VzwGpsReqMgr"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "updateProviderConfigLocked(): setPdeAddress(): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 392
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v4

    .line 393
    .local v4, e:Ljava/lang/SecurityException;
    const-string v22, "VzwGpsReqMgr"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "updateProviderConfigLocked(): setPdeAddress(): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized addRequest(Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)Z
    .locals 7
    .parameter "criteria"
    .parameter "locListener"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 178
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->getOrCreateSessionLocked()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v2

    .line 181
    .local v2, session:Lcom/vzw/location/VzwGpsAppSession;
    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsAppSession;->getAuthRequest()Lcom/vzw/location/VzwGpsAuthRequest;

    move-result-object v0

    .line 182
    .local v0, authReq:Lcom/vzw/location/VzwGpsAuthRequest;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsAuthRequest;->getState()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 184
    :cond_0
    const-string v3, "VzwGpsReqMgr"

    const-string v5, "addRequest(): no prior GPS_EVENT_INIT_PASS"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v4

    .line 205
    :goto_0
    monitor-exit p0

    return v3

    .line 189
    :cond_1
    :try_start_1
    iget-boolean v5, p0, Lcom/vzw/location/VzwGpsReqMgr;->mStandAloneOnly:Z

    if-eqz v5, :cond_2

    .line 191
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lcom/vzw/location/VzwCriteria;->setFixMode(I)V

    .line 195
    :cond_2
    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsAppSession;->getGpsRequest()Lcom/vzw/location/VzwGpsRequest;

    move-result-object v1

    .line 196
    .local v1, gpsReq:Lcom/vzw/location/VzwGpsRequest;
    if-eqz v1, :cond_3

    .line 197
    const/4 v5, 0x0

    invoke-direct {p0, v1, v5}, Lcom/vzw/location/VzwGpsReqMgr;->removeRequestLocked(Lcom/vzw/location/VzwGpsRequest;Z)V

    .line 200
    :cond_3
    new-instance v1, Lcom/vzw/location/VzwGpsRequest;

    .end local v1           #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    invoke-direct {v1, v2, p1, p2}, Lcom/vzw/location/VzwGpsRequest;-><init>(Lcom/vzw/location/VzwGpsAppSession;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V

    .line 202
    .restart local v1       #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    invoke-virtual {v2, v1}, Lcom/vzw/location/VzwGpsAppSession;->setGpsRequest(Lcom/vzw/location/VzwGpsRequest;)V

    .line 203
    iget-object v5, p0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 204
    iget-object v5, p0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-le v5, v3, :cond_4

    move v4, v3

    :cond_4
    invoke-direct {p0, v4}, Lcom/vzw/location/VzwGpsReqMgr;->updateProviderConfigLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 178
    .end local v0           #authReq:Lcom/vzw/location/VzwGpsAuthRequest;
    .end local v1           #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    .end local v2           #session:Lcom/vzw/location/VzwGpsAppSession;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized addStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->getOrCreateSessionLocked()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v0

    .line 104
    .local v0, session:Lcom/vzw/location/VzwGpsAppSession;
    invoke-virtual {v0, p1}, Lcom/vzw/location/VzwGpsAppSession;->setStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 103
    .end local v0           #session:Lcom/vzw/location/VzwGpsAppSession;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getNumRequests()I
    .locals 1

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequest()Lcom/vzw/location/VzwGpsRequest;
    .locals 1

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->getRequestLocked()Lcom/vzw/location/VzwGpsRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized locationCallbackFinished()V
    .locals 5

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->getSessionLocked()Lcom/vzw/location/VzwGpsAppSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 242
    .local v2, session:Lcom/vzw/location/VzwGpsAppSession;
    if-nez v2, :cond_0

    .line 264
    :goto_0
    monitor-exit p0

    return-void

    .line 249
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 250
    :try_start_2
    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsAppSession;->getPendingBroadcasts()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/vzw/location/VzwGpsAppSession;->setPendingBroadcasts(I)V

    .line 255
    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsAppSession;->getPendingBroadcasts()I

    move-result v3

    if-nez v3, :cond_1

    .line 257
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 258
    .local v0, identity:J
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->releaseWakeLock()V

    .line 259
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    .end local v0           #identity:J
    :cond_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 241
    .end local v2           #session:Lcom/vzw/location/VzwGpsAppSession;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized removeRequest(Z)V
    .locals 1
    .parameter "updateConfig"

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->getRequestLocked()Lcom/vzw/location/VzwGpsRequest;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/vzw/location/VzwGpsReqMgr;->removeRequestLocked(Lcom/vzw/location/VzwGpsRequest;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->getSessionLocked()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v0

    .line 109
    .local v0, session:Lcom/vzw/location/VzwGpsAppSession;
    if-nez v0, :cond_0

    .line 110
    const-string v1, "VzwGpsReqMgr"

    const-string v2, "removeStatusListener(): session==null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :goto_0
    monitor-exit p0

    return-void

    .line 114
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/vzw/location/VzwGpsReqMgr;->removeStatusListenerLocked(Lcom/vzw/location/IVzwGpsStatusListener;Lcom/vzw/location/VzwGpsAppSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    .end local v0           #session:Lcom/vzw/location/VzwGpsAppSession;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized startAuthentication(Lcom/vzw/location/VzwGpsConfigInit;)V
    .locals 5
    .parameter "ci"

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->getOrCreateSessionLocked()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v1

    .line 128
    .local v1, session:Lcom/vzw/location/VzwGpsAppSession;
    new-instance v0, Lcom/vzw/location/VzwGpsAuthRequest;

    invoke-direct {v0, v1, p1}, Lcom/vzw/location/VzwGpsAuthRequest;-><init>(Lcom/vzw/location/VzwGpsAppSession;Lcom/vzw/location/VzwGpsConfigInit;)V

    .line 131
    .local v0, authReq:Lcom/vzw/location/VzwGpsAuthRequest;
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsConfigInit;->getApplicationId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Lcom/vzw/location/VzwGpsReqMgr;->isRoverApp(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/vzw/location/VzwGpsAuthRequest;->setState(I)V

    .line 134
    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwGpsReqMgr;->trigger_AuthDoneLocked(Lcom/vzw/location/VzwGpsAuthRequest;)V

    .line 137
    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Lcom/vzw/location/VzwGpsAuthRequest;->setResult(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :goto_0
    monitor-exit p0

    return-void

    .line 142
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->mStandAloneOnly:Z

    if-eqz v2, :cond_1

    .line 144
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/vzw/location/VzwGpsAuthRequest;->setState(I)V

    .line 145
    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwGpsReqMgr;->trigger_AuthDoneLocked(Lcom/vzw/location/VzwGpsAuthRequest;)V

    .line 148
    const/16 v2, 0x51

    invoke-virtual {v0, v2}, Lcom/vzw/location/VzwGpsAuthRequest;->setResult(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    .end local v0           #authReq:Lcom/vzw/location/VzwGpsAuthRequest;
    .end local v1           #session:Lcom/vzw/location/VzwGpsAppSession;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 152
    .restart local v0       #authReq:Lcom/vzw/location/VzwGpsAuthRequest;
    .restart local v1       #session:Lcom/vzw/location/VzwGpsAppSession;
    :cond_1
    const/16 v2, 0x65

    :try_start_2
    invoke-virtual {v0, v2}, Lcom/vzw/location/VzwGpsAuthRequest;->setState(I)V

    .line 153
    const/16 v2, 0x65

    invoke-direct {p0, v0, v2}, Lcom/vzw/location/VzwGpsReqMgr;->reportAuthStatusLocked(Lcom/vzw/location/VzwGpsAuthRequest;I)Z

    .line 155
    iget-object v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->mAuthMgr:Lcom/vzw/location/VzwGpsAuthMgr;

    if-nez v2, :cond_2

    .line 156
    new-instance v2, Lcom/vzw/location/VzwGpsAuthMgr;

    iget-object v3, p0, Lcom/vzw/location/VzwGpsReqMgr;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/vzw/location/VzwGpsReqMgr;->mNwMgr:Lcom/vzw/location/VzwGpsNwMgr;

    invoke-direct {v2, v3, p0, v4}, Lcom/vzw/location/VzwGpsAuthMgr;-><init>(Landroid/content/Context;Lcom/vzw/location/VzwGpsReqMgr;Lcom/vzw/location/VzwGpsNwMgr;)V

    iput-object v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->mAuthMgr:Lcom/vzw/location/VzwGpsAuthMgr;

    .line 159
    :cond_2
    iget-object v2, p0, Lcom/vzw/location/VzwGpsReqMgr;->mAuthMgr:Lcom/vzw/location/VzwGpsAuthMgr;

    invoke-virtual {v2, v0}, Lcom/vzw/location/VzwGpsAuthMgr;->addRequest(Lcom/vzw/location/VzwGpsAuthRequest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized trigger_AuthDone(Lcom/vzw/location/VzwGpsAuthRequest;)V
    .locals 1
    .parameter "authReq"

    .prologue
    .line 553
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsReqMgr;->trigger_AuthDoneLocked(Lcom/vzw/location/VzwGpsAuthRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    monitor-exit p0

    return-void

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public trigger_AuthDoneLocked(Lcom/vzw/location/VzwGpsAuthRequest;)V
    .locals 4
    .parameter "authReq"

    .prologue
    const/16 v3, 0x8

    .line 559
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAuthRequest;->getAppSession()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v1

    .line 560
    .local v1, session:Lcom/vzw/location/VzwGpsAppSession;
    if-nez v1, :cond_0

    .line 561
    const-string v2, "VzwGpsReqMgr"

    const-string v3, "trigger_AuthDone(): session==null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :goto_0
    return-void

    .line 565
    :cond_0
    invoke-virtual {v1, p1}, Lcom/vzw/location/VzwGpsAppSession;->setAuthRequest(Lcom/vzw/location/VzwGpsAuthRequest;)V

    .line 568
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAuthRequest;->getResult()I

    move-result v0

    .line 569
    .local v0, result:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 570
    invoke-direct {p0, p1, v0}, Lcom/vzw/location/VzwGpsReqMgr;->reportAuthStatusLocked(Lcom/vzw/location/VzwGpsAuthRequest;I)Z

    .line 574
    :cond_1
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsAuthRequest;->getState()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 575
    invoke-direct {p0, p1, v3}, Lcom/vzw/location/VzwGpsReqMgr;->reportAuthStatusLocked(Lcom/vzw/location/VzwGpsAuthRequest;I)Z

    goto :goto_0

    .line 577
    :cond_2
    const/4 v2, 0x7

    invoke-direct {p0, p1, v2}, Lcom/vzw/location/VzwGpsReqMgr;->reportAuthStatusLocked(Lcom/vzw/location/VzwGpsAuthRequest;I)Z

    goto :goto_0
.end method

.method public declared-synchronized trigger_LocationChanged(Lcom/vzw/location/VzwLocation;)V
    .locals 21
    .parameter "location"

    .prologue
    .line 589
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v17

    if-nez v17, :cond_1

    .line 678
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 597
    :cond_1
    const/4 v5, 0x0

    .line 598
    .local v5, deadListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    const/4 v14, 0x0

    .line 599
    .local v14, rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 600
    .local v3, currentTime:J
    const/4 v2, 0x0

    .line 602
    .local v2, client:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, it:Ljava/util/Iterator;
    move-object v15, v14

    .line 603
    .end local v14           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .local v15, rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 604
    add-int/lit8 v2, v2, 0x1

    .line 605
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vzw/location/VzwGpsRequest;

    .line 606
    .local v8, gpsReq:Lcom/vzw/location/VzwGpsRequest;
    invoke-virtual {v8}, Lcom/vzw/location/VzwGpsRequest;->getAppSession()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v13

    .line 607
    .local v13, nxtSession:Lcom/vzw/location/VzwGpsAppSession;
    invoke-virtual {v8}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v7

    .line 609
    .local v7, fixRate:Lcom/vzw/location/VzwGpsFixRate;
    invoke-virtual {v8}, Lcom/vzw/location/VzwGpsRequest;->getLocListener()Lcom/vzw/location/IVzwLocationListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v12

    .line 610
    .local v12, nxtLocLsnr:Lcom/vzw/location/IVzwLocationListener;
    if-eqz v12, :cond_b

    .line 612
    :try_start_2
    invoke-virtual {v8}, Lcom/vzw/location/VzwGpsRequest;->getlastUpdated()J

    move-result-wide v17

    sub-long v17, v3, v17

    invoke-virtual {v7}, Lcom/vzw/location/VzwGpsFixRate;->getUpdateMargin()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-ltz v17, :cond_b

    .line 616
    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Lcom/vzw/location/IVzwLocationListener;->onLocationChanged(Lcom/vzw/location/VzwLocation;)V

    .line 617
    invoke-virtual {v8, v3, v4}, Lcom/vzw/location/VzwGpsRequest;->setlastUpdated(J)V

    .line 618
    invoke-virtual {v8}, Lcom/vzw/location/VzwGpsRequest;->incrementFixesReported()V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 621
    :try_start_3
    invoke-virtual {v13}, Lcom/vzw/location/VzwGpsAppSession;->getPendingBroadcasts()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/vzw/location/VzwGpsAppSession;->setPendingBroadcasts(I)V

    .line 625
    invoke-virtual {v13}, Lcom/vzw/location/VzwGpsAppSession;->getPendingBroadcasts()I

    move-result v17

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 626
    invoke-direct/range {p0 .. p0}, Lcom/vzw/location/VzwGpsReqMgr;->acquireWakeLock()V

    .line 628
    :cond_2
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 633
    :try_start_4
    invoke-virtual {v7}, Lcom/vzw/location/VzwGpsFixRate;->getNumFixes()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-lez v17, :cond_b

    invoke-virtual {v8}, Lcom/vzw/location/VzwGpsRequest;->getFixesReported()J

    move-result-wide v17

    invoke-virtual {v7}, Lcom/vzw/location/VzwGpsFixRate;->getNumFixes()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-ltz v17, :cond_b

    .line 636
    if-nez v15, :cond_a

    .line 637
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 639
    .end local v15           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .restart local v14       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :goto_2
    :try_start_5
    invoke-virtual {v14, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    move-object v15, v14

    .line 650
    .end local v14           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .restart local v15       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    goto :goto_1

    .line 628
    :catchall_0
    move-exception v17

    :try_start_6
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 642
    :catch_0
    move-exception v6

    move-object v14, v15

    .line 643
    .end local v15           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .local v6, e:Landroid/os/RemoteException;
    .restart local v14       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :goto_4
    if-nez v5, :cond_3

    .line 644
    :try_start_8
    new-instance v5, Ljava/util/LinkedList;

    .end local v5           #deadListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 647
    .restart local v5       #deadListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :cond_3
    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 589
    .end local v2           #client:I
    .end local v3           #currentTime:J
    .end local v5           #deadListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .end local v6           #e:Landroid/os/RemoteException;
    .end local v7           #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    .end local v8           #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    .end local v9           #it:Ljava/util/Iterator;
    .end local v12           #nxtLocLsnr:Lcom/vzw/location/IVzwLocationListener;
    .end local v13           #nxtSession:Lcom/vzw/location/VzwGpsAppSession;
    .end local v14           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :catchall_1
    move-exception v17

    monitor-exit p0

    throw v17

    .line 652
    .restart local v2       #client:I
    .restart local v3       #currentTime:J
    .restart local v5       #deadListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .restart local v9       #it:Ljava/util/Iterator;
    .restart local v15       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :cond_4
    const/16 v16, 0x0

    .line 653
    .local v16, updateConfig:Z
    if-eqz v15, :cond_7

    .line 654
    const/16 v16, 0x1

    .line 655
    :try_start_9
    invoke-virtual {v15}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 656
    .local v10, it2:Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 657
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vzw/location/VzwGpsRequest;

    .line 658
    .restart local v8       #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    if-eqz v5, :cond_6

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 659
    :cond_6
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lcom/vzw/location/VzwGpsReqMgr;->removeRequestLocked(Lcom/vzw/location/VzwGpsRequest;Z)V

    goto :goto_5

    .line 664
    .end local v8           #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    .end local v10           #it2:Ljava/util/Iterator;
    :cond_7
    if-eqz v5, :cond_8

    .line 665
    const/16 v16, 0x1

    .line 666
    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 667
    .local v11, it3:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 668
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vzw/location/VzwGpsRequest;

    .line 669
    .restart local v8       #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    invoke-virtual {v8}, Lcom/vzw/location/VzwGpsRequest;->getAppSession()Lcom/vzw/location/VzwGpsAppSession;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/vzw/location/VzwGpsReqMgr;->clearSessionLocked(Lcom/vzw/location/VzwGpsAppSession;)V

    goto :goto_6

    .line 673
    .end local v8           #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    .end local v11           #it3:Ljava/util/Iterator;
    :cond_8
    if-eqz v16, :cond_0

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v17

    if-lez v17, :cond_9

    const/16 v17, 0x1

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/vzw/location/VzwGpsReqMgr;->updateProviderConfigLocked(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    :cond_9
    const/16 v17, 0x0

    goto :goto_7

    .line 642
    .end local v15           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .end local v16           #updateConfig:Z
    .restart local v7       #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    .restart local v8       #gpsReq:Lcom/vzw/location/VzwGpsRequest;
    .restart local v12       #nxtLocLsnr:Lcom/vzw/location/IVzwLocationListener;
    .restart local v13       #nxtSession:Lcom/vzw/location/VzwGpsAppSession;
    .restart local v14       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :catch_1
    move-exception v6

    goto :goto_4

    .end local v14           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .restart local v15       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :cond_a
    move-object v14, v15

    .end local v15           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .restart local v14       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    goto :goto_2

    .end local v14           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .restart local v15       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    :cond_b
    move-object v14, v15

    .end local v15           #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    .restart local v14       #rmListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsRequest;>;"
    goto :goto_3
.end method

.method public declared-synchronized trigger_NetworkStateUpdate(Z)V
    .locals 1
    .parameter "dataConn"

    .prologue
    .line 583
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/vzw/location/VzwGpsReqMgr;->dataAvl:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    monitor-exit p0

    return-void

    .line 583
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trigger_UidRemoved(I)V
    .locals 5
    .parameter "uid"

    .prologue
    .line 681
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 708
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 686
    :cond_1
    const/4 v2, 0x0

    .line 687
    .local v2, rmSessions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsAppSession;>;"
    :try_start_1
    iget-object v4, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 688
    .local v0, it:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 689
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vzw/location/VzwGpsAppSession;

    .line 690
    .local v3, session:Lcom/vzw/location/VzwGpsAppSession;
    invoke-virtual {v3}, Lcom/vzw/location/VzwGpsAppSession;->getUid()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 691
    if-nez v2, :cond_3

    .line 692
    new-instance v2, Ljava/util/LinkedList;

    .end local v2           #rmSessions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsAppSession;>;"
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 695
    .restart local v2       #rmSessions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsAppSession;>;"
    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 681
    .end local v0           #it:Ljava/util/Iterator;
    .end local v2           #rmSessions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsAppSession;>;"
    .end local v3           #session:Lcom/vzw/location/VzwGpsAppSession;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 699
    .restart local v0       #it:Ljava/util/Iterator;
    .restart local v2       #rmSessions:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/vzw/location/VzwGpsAppSession;>;"
    :cond_4
    if-eqz v2, :cond_0

    .line 700
    :try_start_2
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 701
    .local v1, it2:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 702
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vzw/location/VzwGpsAppSession;

    .line 703
    .restart local v3       #session:Lcom/vzw/location/VzwGpsAppSession;
    invoke-direct {p0, v3}, Lcom/vzw/location/VzwGpsReqMgr;->clearSessionLocked(Lcom/vzw/location/VzwGpsAppSession;)V

    goto :goto_2

    .line 706
    .end local v3           #session:Lcom/vzw/location/VzwGpsAppSession;
    :cond_5
    iget-object v4, p0, Lcom/vzw/location/VzwGpsReqMgr;->locListeners:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_6

    const/4 v4, 0x1

    :goto_3
    invoke-direct {p0, v4}, Lcom/vzw/location/VzwGpsReqMgr;->updateProviderConfigLocked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public declared-synchronized updateProviderListenersLocked(Ljava/lang/String;Z)V
    .locals 8
    .parameter "provider"
    .parameter "enabled"

    .prologue
    const/4 v7, 0x1

    .line 271
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 272
    iget-object v5, p0, Lcom/vzw/location/VzwGpsReqMgr;->appSessionQ:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 273
    .local v1, it:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 274
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vzw/location/VzwGpsAppSession;

    .line 275
    .local v4, nxtSession:Lcom/vzw/location/VzwGpsAppSession;
    invoke-virtual {v4}, Lcom/vzw/location/VzwGpsAppSession;->getGpsRequest()Lcom/vzw/location/VzwGpsRequest;

    move-result-object v3

    .line 276
    .local v3, nxtReq:Lcom/vzw/location/VzwGpsRequest;
    if-eqz v3, :cond_0

    .line 277
    invoke-virtual {v3}, Lcom/vzw/location/VzwGpsRequest;->getLocListener()Lcom/vzw/location/IVzwLocationListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 279
    .local v2, nxtLocLsnr:Lcom/vzw/location/IVzwLocationListener;
    if-eqz v2, :cond_0

    .line 281
    if-ne p2, v7, :cond_2

    .line 282
    :try_start_1
    invoke-interface {v2, p1}, Lcom/vzw/location/IVzwLocationListener;->onProviderEnabled(Ljava/lang/String;)V

    .line 287
    :goto_1
    iget-object v6, p0, Lcom/vzw/location/VzwGpsReqMgr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 288
    :try_start_2
    invoke-virtual {v4}, Lcom/vzw/location/VzwGpsAppSession;->getPendingBroadcasts()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lcom/vzw/location/VzwGpsAppSession;->setPendingBroadcasts(I)V

    .line 292
    invoke-virtual {v4}, Lcom/vzw/location/VzwGpsAppSession;->getPendingBroadcasts()I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 293
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsReqMgr;->acquireWakeLock()V

    .line 295
    :cond_1
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "VzwGpsReqMgr"

    const-string v6, "updateProviderListenersLocked(): RemoteException: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 271
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #it:Ljava/util/Iterator;
    .end local v2           #nxtLocLsnr:Lcom/vzw/location/IVzwLocationListener;
    .end local v3           #nxtReq:Lcom/vzw/location/VzwGpsRequest;
    .end local v4           #nxtSession:Lcom/vzw/location/VzwGpsAppSession;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .line 284
    .restart local v1       #it:Ljava/util/Iterator;
    .restart local v2       #nxtLocLsnr:Lcom/vzw/location/IVzwLocationListener;
    .restart local v3       #nxtReq:Lcom/vzw/location/VzwGpsRequest;
    .restart local v4       #nxtSession:Lcom/vzw/location/VzwGpsAppSession;
    :cond_2
    :try_start_5
    invoke-interface {v2, p1}, Lcom/vzw/location/IVzwLocationListener;->onProviderDisabled(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 305
    .end local v1           #it:Ljava/util/Iterator;
    .end local v2           #nxtLocLsnr:Lcom/vzw/location/IVzwLocationListener;
    .end local v3           #nxtReq:Lcom/vzw/location/VzwGpsRequest;
    .end local v4           #nxtSession:Lcom/vzw/location/VzwGpsAppSession;
    :cond_3
    monitor-exit p0

    return-void
.end method
