.class public Lcom/vzw/location/VzwGpsNwMgr;
.super Ljava/lang/Object;
.source "VzwGpsNwMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DELAY:J = 0x2710L

.field private static final KEEP_ALIVE_INTERVAL:J = 0x7530L

.field private static final MAX_KEEP_ALIVE:I = 0x8

.field private static final MAX_RETRY:I = 0x5

.field private static final NO_RESET_RETRY:Z = false

.field private static final ON_DEMAND_MODE:I = 0x0

.field private static final ON_SETTING_MODE:I = 0x1

.field private static final PDP_TIMEOUT:J = 0x7530L

.field private static final RESET_RETRY:Z = true

.field private static final TAG:Ljava/lang/String; = "VzwGpsNwMgr"

.field private static mIsPdpEnabled:Z


# instance fields
.field private agpsProviderEnabled:Z

.field private mBroadcastReceiver:Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIpAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeepAliveCount:I

.field private mMode:I

.field private mPdpConnected:Landroid/os/ConditionVariable;

.field private mRetryCount:I

.field private mRunDisablePdp:Ljava/lang/Runnable;

.field private mRunEnablePdp:Ljava/lang/Runnable;

.field private mRunPdpKeepAlive:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vzw/location/VzwGpsNwMgr;->mIsPdpEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v1, Lcom/vzw/location/VzwGpsNwMgr$1;

    invoke-direct {v1, p0}, Lcom/vzw/location/VzwGpsNwMgr$1;-><init>(Lcom/vzw/location/VzwGpsNwMgr;)V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRunEnablePdp:Ljava/lang/Runnable;

    .line 146
    new-instance v1, Lcom/vzw/location/VzwGpsNwMgr$2;

    invoke-direct {v1, p0}, Lcom/vzw/location/VzwGpsNwMgr$2;-><init>(Lcom/vzw/location/VzwGpsNwMgr;)V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRunDisablePdp:Ljava/lang/Runnable;

    .line 229
    new-instance v1, Lcom/vzw/location/VzwGpsNwMgr$3;

    invoke-direct {v1, p0}, Lcom/vzw/location/VzwGpsNwMgr$3;-><init>(Lcom/vzw/location/VzwGpsNwMgr;)V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRunPdpKeepAlive:Ljava/lang/Runnable;

    .line 83
    iput-object p1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mContext:Landroid/content/Context;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mIpAddresses:Ljava/util/List;

    .line 85
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;

    .line 86
    iput v2, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRetryCount:I

    .line 87
    iput v2, p0, Lcom/vzw/location/VzwGpsNwMgr;->mMode:I

    .line 88
    iput-boolean v2, p0, Lcom/vzw/location/VzwGpsNwMgr;->agpsProviderEnabled:Z

    .line 89
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mPdpConnected:Landroid/os/ConditionVariable;

    .line 90
    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mMode:I

    if-eqz v1, :cond_0

    .line 96
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    :cond_0
    new-instance v1, Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;

    invoke-direct {v1, p0}, Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;-><init>(Lcom/vzw/location/VzwGpsNwMgr;)V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mBroadcastReceiver:Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;

    .line 100
    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vzw/location/VzwGpsNwMgr;->mBroadcastReceiver:Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/vzw/location/VzwGpsNwMgr;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->agpsProviderEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/vzw/location/VzwGpsNwMgr;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRetryCount:I

    return v0
.end method

.method static synthetic access$108(Lcom/vzw/location/VzwGpsNwMgr;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRetryCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/vzw/location/VzwGpsNwMgr;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vzw/location/VzwGpsNwMgr;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsNwMgr;->onPdpConnectLocked()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/vzw/location/VzwGpsNwMgr;->mIsPdpEnabled:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    sput-boolean p0, Lcom/vzw/location/VzwGpsNwMgr;->mIsPdpEnabled:Z

    return p0
.end method

.method static synthetic access$500(Lcom/vzw/location/VzwGpsNwMgr;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vzw/location/VzwGpsNwMgr;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwGpsNwMgr;->startUsingPdpLocked(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/vzw/location/VzwGpsNwMgr;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mMode:I

    return v0
.end method

.method static synthetic access$800(Lcom/vzw/location/VzwGpsNwMgr;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mKeepAliveCount:I

    return v0
.end method

.method static synthetic access$808(Lcom/vzw/location/VzwGpsNwMgr;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mKeepAliveCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mKeepAliveCount:I

    return v0
.end method

.method private addAllRoutesLocked()V
    .locals 2

    .prologue
    .line 327
    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mIpAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 328
    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/vzw/location/VzwGpsNwMgr;->addRouteLocked(Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_0
    return-void
.end method

.method private addRouteLocked(Ljava/lang/String;)V
    .locals 3
    .parameter "host"

    .prologue
    const/4 v2, 0x0

    .line 335
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sget-boolean v1, Lcom/vzw/location/VzwGpsNwMgr;->mIsPdpEnabled:Z

    if-eqz v1, :cond_0

    .line 336
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/vzw/location/VzwGpsNwMgr;->lookupHost(Ljava/lang/String;)I

    move-result v0

    .line 337
    .local v0, inetAddr:I
    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    .line 342
    .end local v0           #inetAddr:I
    :goto_0
    return-void

    .line 340
    :cond_0
    const-string v1, "VzwGpsNwMgr"

    const-string v2, "Error in addRoute"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static lookupHost(Ljava/lang/String;)I
    .locals 6
    .parameter "hostname"

    .prologue
    .line 355
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 361
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 362
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

    .line 366
    .end local v1           #addrBytes:[B
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    :goto_0
    return v0

    .line 356
    :catch_0
    move-exception v2

    .line 357
    .local v2, e:Ljava/net/UnknownHostException;
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private onPdpConnectLocked()V
    .locals 2

    .prologue
    .line 220
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vzw/location/VzwGpsNwMgr;->mIsPdpEnabled:Z

    .line 221
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRunEnablePdp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRetryCount:I

    .line 223
    iget v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mMode:I

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mPdpConnected:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsNwMgr;->addAllRoutesLocked()V

    .line 227
    return-void
.end method

.method private startKeepAliveTimer()V
    .locals 4

    .prologue
    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mKeepAliveCount:I

    .line 245
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRunPdpKeepAlive:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRunPdpKeepAlive:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 247
    return-void
.end method

.method private startUsingPdpBlocking()V
    .locals 3

    .prologue
    .line 250
    monitor-enter p0

    .line 251
    :try_start_0
    sget-boolean v0, Lcom/vzw/location/VzwGpsNwMgr;->mIsPdpEnabled:Z

    if-eqz v0, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsNwMgr;->startKeepAliveTimer()V

    .line 253
    monitor-exit p0

    .line 263
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mPdpConnected:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 256
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwGpsNwMgr;->startUsingPdpLocked(Z)V

    .line 257
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mPdpConnected:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    .line 262
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsNwMgr;->startKeepAliveTimer()V

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private startUsingPdpLocked(Z)V
    .locals 4
    .parameter "reset"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRunEnablePdp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 267
    if-eqz p1, :cond_0

    .line 268
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRetryCount:I

    .line 269
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRunEnablePdp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRunEnablePdp:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private stopUsingPdpLocked()V
    .locals 2

    .prologue
    .line 276
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRetryCount:I

    .line 277
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRunDisablePdp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr;->mRunDisablePdp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    return-void
.end method


# virtual methods
.method public declared-synchronized onProviderUpdate(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->agpsProviderEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_1

    .line 297
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 287
    :cond_1
    :try_start_1
    iput-boolean p1, p0, Lcom/vzw/location/VzwGpsNwMgr;->agpsProviderEnabled:Z

    .line 288
    iget v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->mMode:I

    if-eqz v0, :cond_0

    .line 289
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsNwMgr;->agpsProviderEnabled:Z

    if-eqz v0, :cond_2

    .line 291
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwGpsNwMgr;->startUsingPdpLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 294
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsNwMgr;->stopUsingPdpLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public resolveHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 300
    if-nez p1, :cond_0

    .line 301
    new-instance v2, Ljava/net/UnknownHostException;

    const-string v3, "resolveHost(): host==null"

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 304
    :cond_0
    iget v2, p0, Lcom/vzw/location/VzwGpsNwMgr;->mMode:I

    if-nez v2, :cond_1

    .line 305
    invoke-direct {p0}, Lcom/vzw/location/VzwGpsNwMgr;->startUsingPdpBlocking()V

    .line 308
    :cond_1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 309
    .local v0, inetAddress:Ljava/net/InetAddress;
    if-eqz v0, :cond_4

    .line 310
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, ip:Ljava/lang/String;
    monitor-enter p0

    .line 312
    if-eqz v1, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwGpsNwMgr;->mIpAddresses:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 313
    iget-object v2, p0, Lcom/vzw/location/VzwGpsNwMgr;->mIpAddresses:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_2
    sget-boolean v2, Lcom/vzw/location/VzwGpsNwMgr;->mIsPdpEnabled:Z

    if-eqz v2, :cond_3

    .line 317
    invoke-direct {p0, v1}, Lcom/vzw/location/VzwGpsNwMgr;->addRouteLocked(Ljava/lang/String;)V

    .line 320
    :cond_3
    monitor-exit p0

    .line 322
    .end local v1           #ip:Ljava/lang/String;
    :cond_4
    return-object v0

    .line 320
    .restart local v1       #ip:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
