.class public Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;
.super Ljava/lang/Object;
.source "SafenetVpnProvisionManager.java"


# static fields
.field private static final ACTION_START_SAFENET_VPN_PROVISION_SERVICE:Ljava/lang/String; = "com.motorola.safenetvpn.StartSafenetVPNProvisionService"

.field private static final DBG:Z = true

.field private static final MAX_TIMES:I = 0x96

.field private static final TAG:Ljava/lang/String; = null

.field private static final THREAD_SLEEP_TIME:I = 0xc8


# instance fields
.field private isBinded:Z

.field private mCon:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mSafenetVPNProvisionServiceBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->isBinded:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->mSafenetVPNProvisionServiceBinder:Landroid/os/IBinder;

    .line 38
    new-instance v0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager$1;

    invoke-direct {v0, p0}, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager$1;-><init>(Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;)V

    iput-object v0, p0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->mCon:Landroid/content/ServiceConnection;

    .line 68
    iput-object p1, p0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->mContext:Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->isBeingBinded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->isBinded:Z

    .line 72
    return-void
.end method

.method static synthetic access$002(Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->mSafenetVPNProvisionServiceBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private bindSafenetVPNProvisionService(Landroid/content/ServiceConnection;)Z
    .locals 4
    .parameter "c"

    .prologue
    const/4 v0, 0x1

    .line 83
    sget-object v1, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->TAG:Ljava/lang/String;

    const-string v2, "bind safenetVPNProvisionService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.safenetvpn.StartSafenetVPNProvisionService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    sget-object v0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->TAG:Ljava/lang/String;

    const-string v1, "Bind safenetVPNProvisionService fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    .line 90
    :cond_0
    sget-object v1, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->TAG:Ljava/lang/String;

    const-string v2, "Bind safenetVPNProvisionService success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteAuthentecVPNConfig(Landroid/os/IBinder;)V
    .locals 4
    .parameter "service"

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 128
    :try_start_0
    invoke-static {p1}, Lcom/motorola/safenetvpn/ISafenetVpnProvisionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/safenetvpn/ISafenetVpnProvisionService;

    move-result-object v1

    .line 130
    .local v1, vpnService:Lcom/motorola/safenetvpn/ISafenetVpnProvisionService;
    invoke-interface {v1}, Lcom/motorola/safenetvpn/ISafenetVpnProvisionService;->deleteAuthentecVPNConfig()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v1           #vpnService:Lcom/motorola/safenetvpn/ISafenetVpnProvisionService;
    :cond_0
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Ljava/lang/Throwable;
    sget-object v2, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception here"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized isBeingBinded()Z
    .locals 1

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->isBinded:Z

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->mCon:Landroid/content/ServiceConnection;

    invoke-direct {p0, v0}, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->bindSafenetVPNProvisionService(Landroid/content/ServiceConnection;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->isBinded:Z

    .line 183
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->isBinded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isServiceReady()Z
    .locals 5

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 189
    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->mSafenetVPNProvisionServiceBinder:Landroid/os/IBinder;

    if-nez v3, :cond_1

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    const/16 v3, 0x96

    if-ge v1, v3, :cond_0

    .line 191
    const-wide/16 v3, 0xc8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 194
    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 192
    .end local v1           #i:I
    .restart local v2       #i:I
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v1, v2

    .line 194
    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_0
    move v1, v2

    .line 196
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_1
    iget-object v3, p0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->mSafenetVPNProvisionServiceBinder:Landroid/os/IBinder;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private provisionAuthentecVPNConfig(Landroid/os/IBinder;[BI)V
    .locals 4
    .parameter "service"
    .parameter "fileContent"
    .parameter "fileSize"

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 115
    :try_start_0
    invoke-static {p1}, Lcom/motorola/safenetvpn/ISafenetVpnProvisionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/safenetvpn/ISafenetVpnProvisionService;

    move-result-object v1

    .line 117
    .local v1, vpnService:Lcom/motorola/safenetvpn/ISafenetVpnProvisionService;
    invoke-interface {v1, p2, p3}, Lcom/motorola/safenetvpn/ISafenetVpnProvisionService;->provisionAuthentecVPNConfig([BI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1           #vpnService:Lcom/motorola/safenetvpn/ISafenetVpnProvisionService;
    :cond_0
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/Throwable;
    sget-object v2, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception here"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unbindSafenetVPNProvisionService(Landroid/content/ServiceConnection;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 103
    sget-object v1, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->TAG:Ljava/lang/String;

    const-string v2, "unbind safenetVPNProvisionService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Throwable;
    sget-object v1, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->TAG:Ljava/lang/String;

    const-string v2, "unbind safenetVPNProvisionService exception."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public deleteVPNConfig()V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->isBeingBinded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-direct {p0}, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->isServiceReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->mSafenetVPNProvisionServiceBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->deleteAuthentecVPNConfig(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public destroySelf()V
    .locals 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->isBinded:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->mCon:Landroid/content/ServiceConnection;

    invoke-direct {p0, v0}, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->unbindSafenetVPNProvisionService(Landroid/content/ServiceConnection;)V

    .line 170
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->isBinded:Z

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->mSafenetVPNProvisionServiceBinder:Landroid/os/IBinder;

    .line 174
    sget-object v0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->TAG:Ljava/lang/String;

    const-string v1, "Safenet VPN provision service manager is destroied by itself"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public provisionVPNConfig([BI)V
    .locals 2
    .parameter "fileContent"
    .parameter "fileSize"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->isBeingBinded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    sget-object v0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->TAG:Ljava/lang/String;

    const-string v1, "bind service failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->isServiceReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->mSafenetVPNProvisionServiceBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0, p1, p2}, Lcom/motorola/safenetvpn/SafenetVpnProvisionManager;->provisionAuthentecVPNConfig(Landroid/os/IBinder;[BI)V

    goto :goto_0
.end method
