.class public Lcom/android/server/EthernetService;
.super Landroid/net/ethernet/IEthernetManager$Stub;
.source "EthernetService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<syncronized:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/net/ethernet/IEthernetManager$Stub;"
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "EthernetService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mEthernetStateMachine:Landroid/net/ethernet/EthernetStateMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 33
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    invoke-direct {p0}, Landroid/net/ethernet/IEthernetManager$Stub;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    .line 35
    new-instance v0, Landroid/net/ethernet/EthernetStateMachine;

    iget-object v1, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/ethernet/EthernetStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/EthernetService;->mEthernetStateMachine:Landroid/net/ethernet/EthernetStateMachine;

    .line 36
    return-void
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 152
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    iget-object v0, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "EthernetService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 157
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    iget-object v0, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "EthernetService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method


# virtual methods
.method public getConfiguration()Landroid/net/ethernet/EthernetConfiguration;
    .locals 1

    .prologue
    .line 83
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    invoke-direct {p0}, Lcom/android/server/EthernetService;->enforceAccessPermission()V

    .line 84
    iget-object v0, p0, Lcom/android/server/EthernetService;->mEthernetStateMachine:Landroid/net/ethernet/EthernetStateMachine;

    invoke-virtual {v0}, Landroid/net/ethernet/EthernetStateMachine;->syncGetEthernetConfiguration()Landroid/net/ethernet/EthernetConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getEthernetHwState()I
    .locals 1

    .prologue
    .line 74
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/EthernetService;->enforceAccessPermission()V

    .line 75
    iget-object v0, p0, Lcom/android/server/EthernetService;->mEthernetStateMachine:Landroid/net/ethernet/EthernetStateMachine;

    invoke-virtual {v0}, Landroid/net/ethernet/EthernetStateMachine;->syncGetEthernetHwState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEthernetState()I
    .locals 1

    .prologue
    .line 61
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    invoke-direct {p0}, Lcom/android/server/EthernetService;->enforceAccessPermission()V

    .line 62
    iget-object v0, p0, Lcom/android/server/EthernetService;->mEthernetStateMachine:Landroid/net/ethernet/EthernetStateMachine;

    invoke-virtual {v0}, Landroid/net/ethernet/EthernetStateMachine;->syncGetEthernetState()I

    move-result v0

    return v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 4

    .prologue
    .line 115
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    const/4 v1, 0x0

    .line 116
    .local v1, lp:Landroid/net/LinkProperties;
    iget-object v2, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 118
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 119
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 121
    :cond_0
    return-object v1
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 4

    .prologue
    .line 102
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    const/4 v1, 0x0

    .line 103
    .local v1, ni:Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 105
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 106
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 108
    :cond_0
    return-object v1
.end method

.method public saveConfiguration(Landroid/net/ethernet/EthernetConfiguration;)Z
    .locals 1
    .parameter "config"

    .prologue
    .line 94
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    invoke-direct {p0}, Lcom/android/server/EthernetService;->enforceChangePermission()V

    .line 95
    iget-object v0, p0, Lcom/android/server/EthernetService;->mEthernetStateMachine:Landroid/net/ethernet/EthernetStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/ethernet/EthernetStateMachine;->saveEthernetConfiguration(Landroid/net/ethernet/EthernetConfiguration;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setEthernetEnabled(Z)Z
    .locals 2
    .parameter "enable"

    .prologue
    .line 45
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/EthernetService;->enforceChangePermission()V

    .line 48
    const-string v0, "EthernetService"

    const-string v1, "Invoking mEthernetStateMachine.setEthernetEnabled\n"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/android/server/EthernetService;->mEthernetStateMachine:Landroid/net/ethernet/EthernetStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/ethernet/EthernetStateMachine;->setEthernetEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startEthernet()V
    .locals 1

    .prologue
    .line 129
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    invoke-direct {p0}, Lcom/android/server/EthernetService;->enforceChangePermission()V

    .line 130
    iget-object v0, p0, Lcom/android/server/EthernetService;->mEthernetStateMachine:Landroid/net/ethernet/EthernetStateMachine;

    invoke-virtual {v0}, Landroid/net/ethernet/EthernetStateMachine;->startEthernet()V

    .line 131
    return-void
.end method

.method public startService()V
    .locals 1

    .prologue
    .line 147
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    invoke-direct {p0}, Lcom/android/server/EthernetService;->enforceChangePermission()V

    .line 148
    iget-object v0, p0, Lcom/android/server/EthernetService;->mEthernetStateMachine:Landroid/net/ethernet/EthernetStateMachine;

    invoke-virtual {v0}, Landroid/net/ethernet/EthernetStateMachine;->startService()V

    .line 149
    return-void
.end method

.method public stopEthernet()V
    .locals 1

    .prologue
    .line 138
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    invoke-direct {p0}, Lcom/android/server/EthernetService;->enforceChangePermission()V

    .line 139
    iget-object v0, p0, Lcom/android/server/EthernetService;->mEthernetStateMachine:Landroid/net/ethernet/EthernetStateMachine;

    invoke-virtual {v0}, Landroid/net/ethernet/EthernetStateMachine;->stopEthernet()V

    .line 140
    return-void
.end method
