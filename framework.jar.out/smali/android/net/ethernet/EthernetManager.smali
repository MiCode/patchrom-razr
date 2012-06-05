.class public Landroid/net/ethernet/EthernetManager;
.super Ljava/lang/Object;
.source "EthernetManager.java"


# static fields
.field public static final ETHERNET_IP_ASSIGNMENT:I = 0x1

.field public static final ETHERNET_PROXY_SETTINGS:I = 0x3

.field public static final ETHERNET_STATE_DISABLED:I = 0x0

.field public static final ETHERNET_STATE_ENABLED:I = 0x1

.field public static final ETHERNET_STATICIP_SETTINGS:I = 0x2

.field public static final ETH_CONFIG_CHANGED_ACTION:Ljava/lang/String; = "com.motorola.android.net.ethernet.ETH_CONFIG_CHANGED"

.field public static final ETH_HW_ADAPTERCONNECTED:I = 0x1

.field public static final ETH_HW_ADAPTERDISCONNECTED:I = 0x0

.field public static final ETH_HW_CABLECONNECTED:I = 0x2

.field public static final ETH_HW_GETTING_IP:I = 0x3

.field public static final ETH_HW_IPCONNECTED:I = 0x4

.field public static final ETH_HW_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.motorola.android.net.ethernet.ETH_HW_STATE_CHANGED"

.field public static final ETH_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.motorola.android.net.ethernet.ENABLE_STATE_CHANGED"

.field public static final EXTRA_CHANGED_FLAGS:Ljava/lang/String; = "ethConfigChangedFlags"

.field public static final EXTRA_ENABLED:Ljava/lang/String; = "ethernet_enabled"

.field public static final EXTRA_HW_STATE:Ljava/lang/String; = "eth_HW_state"

.field public static final EXTRA_LINK_CAPABILITIES:Ljava/lang/String; = "linkCapabilities"

.field public static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final LINK_CONFIGURATION_CHANGED_ACTION:Ljava/lang/String; = "android.net.ethernet.LINK_CONFIGURATION_CHANGED"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.ethernet.NETWORK_STATE_CHANGE"

.field public static final TAG:Ljava/lang/String; = "EthernetManager"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Landroid/net/ethernet/IEthernetManager;


# direct methods
.method public constructor <init>(Landroid/net/ethernet/IEthernetManager;Landroid/os/Handler;)V
    .locals 2
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 168
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const-string v0, "EthernetManager"

    const-string v1, "Init Ethernet Manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iput-object p1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    .line 171
    iput-object p2, p0, Landroid/net/ethernet/EthernetManager;->mHandler:Landroid/os/Handler;

    .line 172
    return-void
.end method

.method public static isEthernetSupported(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, bSupported:Z
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 188
    .local v1, cm:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 189
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 190
    .local v2, ni:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 191
    const/4 v0, 0x1

    .line 194
    .end local v2           #ni:Landroid/net/NetworkInfo;
    :cond_0
    return v0
.end method


# virtual methods
.method public getConfiguration()Landroid/net/ethernet/EthernetConfiguration;
    .locals 2

    .prologue
    .line 266
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->getConfiguration()Landroid/net/ethernet/EthernetConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 268
    :goto_0
    return-object v1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEthernetHwState()I
    .locals 2

    .prologue
    .line 252
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->getEthernetHwState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 254
    :goto_0
    return v1

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEthernetState()I
    .locals 2

    .prologue
    .line 223
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->getEthernetState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 225
    :goto_0
    return v1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 310
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->getLinkProperties()Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 312
    :goto_0
    return-object v1

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 296
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->getNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 298
    :goto_0
    return-object v1

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEthernetEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 237
    invoke-virtual {p0}, Landroid/net/ethernet/EthernetManager;->getEthernetState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveConfiguration(Landroid/net/ethernet/EthernetConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 282
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1, p1}, Landroid/net/ethernet/IEthernetManager;->saveConfiguration(Landroid/net/ethernet/EthernetConfiguration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 284
    :goto_0
    return v1

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEthernetEnabled(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    .line 207
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1, p1}, Landroid/net/ethernet/IEthernetManager;->setEthernetEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 209
    :goto_0
    return v1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method startEthernet()Z
    .locals 2

    .prologue
    .line 326
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->startEthernet()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    const/4 v1, 0x1

    .line 329
    :goto_0
    return v1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method startService()Z
    .locals 2

    .prologue
    .line 360
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->startService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    const/4 v1, 0x1

    .line 363
    :goto_0
    return v1

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method stopEthernet()Z
    .locals 2

    .prologue
    .line 343
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->stopEthernet()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    const/4 v1, 0x1

    .line 346
    :goto_0
    return v1

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method
