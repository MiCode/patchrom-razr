.class public Lcom/vzw/location/VzwLocationManagerService;
.super Lcom/vzw/location/IVzwLocationManager$Stub;
.source "VzwLocationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;,
        Lcom/vzw/location/VzwLocationManagerService$Listener;,
        Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;,
        Lcom/vzw/location/VzwLocationManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACCESS_GPS_PERMISSION:Ljava/lang/String; = "com.vzw.location.ACCESS_GPS_PERMISSION"

.field private static final ACCESS_LOCATION_EXTRA_COMMANDS:Ljava/lang/String; = "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

.field private static final CERTIFICATE_VALIDITY:I = 0xa

.field private static final DEBUG:Z = true

.field private static final KEYSTORE_PASSWD:Ljava/lang/String; = "location"

.field private static final KEYSTORE_PATH:Ljava/lang/String; = "/system/etc/security/vzwlbsappcerts.bks"

.field private static final MESSAGE_LOCATION_CHANGED:I = 0x1

.field private static final MILLISECS_PER_DAY:I = 0x5265c00

.field private static final TAG:Ljava/lang/String; = "VzwLocationMgrService"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "VzwLocationMgrService"

.field private static sProvidersLoaded:Z


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mGpsStatusProvider:Lcom/vzw/location/IVzwGpsStatusProvider;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vzw/location/VzwLocationManagerService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationHandler:Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

.field private mLocationManagerCallbacks:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;

.field private final mLock:Ljava/lang/Object;

.field private mNetworkManager:Lcom/vzw/location/VzwGpsNwMgr;

.field private mNetworkState:I

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vzw/location/VzwLocationProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvidersByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vzw/location/VzwLocationProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mPublicKeys:[Ljava/security/PublicKey;

.field private mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

.field private mSettings:Landroid/content/ContentQueryMap;

.field private mVerifiedUids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vzw/location/VzwLocationManagerService;->sProvidersLoaded:Z

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-direct {p0}, Lcom/vzw/location/IVzwLocationManager$Stub;-><init>()V

    .line 122
    iput-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mPublicKeys:[Ljava/security/PublicKey;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mVerifiedUids:Ljava/util/HashMap;

    .line 131
    iput-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mNetworkManager:Lcom/vzw/location/VzwGpsNwMgr;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;

    .line 139
    iput-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    .line 164
    const/4 v0, 0x1

    iput v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mNetworkState:I

    .line 875
    new-instance v0, Lcom/vzw/location/VzwLocationManagerService$1;

    invoke-direct {v0, p0}, Lcom/vzw/location/VzwLocationManagerService$1;-><init>(Lcom/vzw/location/VzwLocationManagerService;)V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mGpsStatusProvider:Lcom/vzw/location/IVzwGpsStatusProvider;

    .line 965
    new-instance v0, Lcom/vzw/location/VzwLocationManagerService$2;

    invoke-direct {v0, p0}, Lcom/vzw/location/VzwLocationManagerService$2;-><init>(Lcom/vzw/location/VzwLocationManagerService;)V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    .line 175
    const-string v0, "VzwLocationMgrService"

    const-string v1, "Constructed VzwLocationManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method private _getProviderInfoLocked(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "provider"

    .prologue
    .line 706
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwLocationProviderProxy;

    .line 707
    .local v1, p:Lcom/vzw/location/VzwLocationProviderProxy;
    if-nez v1, :cond_0

    .line 708
    const/4 v0, 0x0

    .line 723
    :goto_0
    return-object v0

    .line 711
    :cond_0
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->checkPermissionsSafe(Ljava/lang/String;)V

    .line 713
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 714
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "network"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->requiresNetwork()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 715
    const-string v2, "satellite"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->requiresSatellite()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 716
    const-string v2, "cell"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->requiresCell()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 717
    const-string v2, "cost"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->hasMonetaryCost()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 718
    const-string v2, "altitude"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->supportsAltitude()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 719
    const-string v2, "speed"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->supportsSpeed()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 720
    const-string v2, "bearing"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->supportsBearing()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 721
    const-string v2, "power"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->getPowerRequirement()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 722
    const-string v2, "accuracy"

    invoke-virtual {v1}, Lcom/vzw/location/VzwLocationProviderProxy;->getAccuracy()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private _getProvidersLocked(Z)Ljava/util/List;
    .locals 6
    .parameter "enabledOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    const-string v4, "VzwLocationMgrService"

    const-string v5, "getProviders()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 546
    .local v2, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 547
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vzw/location/VzwLocationProviderProxy;

    .line 548
    .local v3, p:Lcom/vzw/location/VzwLocationProviderProxy;
    invoke-virtual {v3}, Lcom/vzw/location/VzwLocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, name:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/vzw/location/VzwLocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 550
    if-eqz p1, :cond_1

    invoke-direct {p0, v1}, Lcom/vzw/location/VzwLocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 546
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 554
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 558
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #p:Lcom/vzw/location/VzwLocationProviderProxy;
    :cond_2
    return-object v2
.end method

.method private _isProviderEnabledLocked(Ljava/lang/String;)Z
    .locals 4
    .parameter "provider"

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->checkPermissionsSafe(Ljava/lang/String;)V

    .line 742
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/VzwLocationProviderProxy;

    .line 743
    .local v0, p:Lcom/vzw/location/VzwLocationProviderProxy;
    if-nez v0, :cond_0

    .line 744
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "p==null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 747
    :cond_0
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private _requestLocationUpdates(Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V
    .locals 2
    .parameter "criteria"
    .parameter "listener"

    .prologue
    .line 632
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v0, p1, p2}, Lcom/vzw/location/VzwGpsReqMgr;->addRequest(Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "requestLocationUpdates(): no prior GPS_EVENT_INIT_PASS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/vzw/location/VzwLocationManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mNetworkState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/vzw/location/VzwLocationManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Lcom/vzw/location/VzwLocationManagerService;->mNetworkState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vzw/location/VzwLocationManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vzw/location/VzwLocationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService;->updateProvidersLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/vzw/location/VzwLocationManagerService;)Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vzw/location/VzwLocationManagerService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/vzw/location/VzwLocationManagerService;)Lcom/vzw/location/VzwGpsReqMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mVerifiedUids:Ljava/util/HashMap;

    return-object v0
.end method

.method private addProvider(Lcom/vzw/location/VzwLocationProviderProxy;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/vzw/location/VzwLocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    return-void
.end method

.method private checkPermissionsSafe(Ljava/lang/String;)V
    .locals 5
    .parameter "provider"

    .prologue
    .line 493
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 494
    .local v1, callingUID:I
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 495
    const-string v2, "VzwLocationMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": permission denied!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": permission denied!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 500
    :cond_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mVerifiedUids:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 501
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mPublicKeys:[Ljava/security/PublicKey;

    if-nez v2, :cond_1

    .line 502
    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService;->loadPublicKeys()V

    .line 505
    :cond_1
    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService;->getApplicationInfo()[Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 506
    .local v0, appInfo:[Landroid/content/pm/ApplicationInfo;
    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocationManagerService;->verifyPackageCert([Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 507
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mVerifiedUids:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const-string v2, "VzwLocationMgrService"

    const-string v3, "Error validating certificate"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Error validating certificate"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 511
    .end local v0           #appInfo:[Landroid/content/pm/ApplicationInfo;
    :cond_2
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mVerifiedUids:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 512
    const-string v2, "VzwLocationMgrService"

    const-string v3, "Error validating certificate"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Error validating certificate"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 516
    :cond_3
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mVerifiedUids:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v2, "VzwLocationMgrService"

    const-string v3, "Application signature verified"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-void
.end method

.method private getApplicationInfo()[Landroid/content/pm/ApplicationInfo;
    .locals 9

    .prologue
    .line 320
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 321
    .local v1, callingUid:I
    iget-object v6, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 322
    .local v4, mPackageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, packname:[Ljava/lang/String;
    array-length v6, v5

    new-array v0, v6, [Landroid/content/pm/ApplicationInfo;

    .line 325
    .local v0, appInfo:[Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v5

    if-ge v3, v6, :cond_0

    .line 327
    :try_start_0
    const-string v6, "VzwLocationMgrService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    aget-object v6, v5, v3

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    aput-object v6, v0, v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 329
    :catch_0
    move-exception v2

    .line 330
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "VzwLocationMgrService"

    const-string v7, "PackageName not found! Exception"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 333
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return-object v0
.end method

.method private hasMatchingCert([Ljava/security/cert/Certificate;)Z
    .locals 6
    .parameter "certs"

    .prologue
    const/4 v3, 0x0

    .line 398
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService;->mPublicKeys:[Ljava/security/PublicKey;

    if-nez v4, :cond_1

    .line 420
    :cond_0
    :goto_0
    return v3

    .line 405
    :cond_1
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 406
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService;->mPublicKeys:[Ljava/security/PublicKey;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 410
    :try_start_0
    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService;->mPublicKeys:[Ljava/security/PublicKey;

    aget-object v4, v4, v1

    if-eqz v4, :cond_2

    .line 411
    aget-object v4, p1, v2

    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService;->mPublicKeys:[Ljava/security/PublicKey;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    const/4 v3, 0x1

    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 406
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 405
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private hasValidDevCert([Ljava/security/cert/Certificate;)Z
    .locals 11
    .parameter "certs"

    .prologue
    const/4 v6, 0x0

    .line 424
    if-nez p1, :cond_1

    .line 445
    :cond_0
    :goto_0
    return v6

    .line 429
    :cond_1
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_0

    .line 430
    aget-object v7, p1, v2

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "X.509"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 431
    aget-object v5, p1, v2

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 432
    .local v5, x509Cert:Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v5}, Lcom/vzw/location/VzwLocationManagerService;->isValidCert(Ljava/security/cert/X509Certificate;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 429
    .end local v5           #x509Cert:Ljava/security/cert/X509Certificate;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 436
    .restart local v5       #x509Cert:Ljava/security/cert/X509Certificate;
    :cond_3
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    .line 437
    .local v0, afterDate:Ljava/util/Date;
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v1

    .line 438
    .local v1, beforeDate:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/32 v9, 0x5265c00

    div-long v3, v7, v9

    .line 439
    .local v3, validity:J
    const-wide/16 v7, 0xa

    cmp-long v7, v3, v7

    if-gtz v7, :cond_2

    .line 440
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private initialize()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x1

    .line 185
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 186
    .local v8, powerManager:Landroid/os/PowerManager;
    const-string v1, "VzwLocationMgrService"

    invoke-virtual {v8, v12, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 187
    new-instance v1, Lcom/vzw/location/VzwGpsNwMgr;

    iget-object v3, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/vzw/location/VzwGpsNwMgr;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mNetworkManager:Lcom/vzw/location/VzwGpsNwMgr;

    .line 190
    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService;->loadProviders()V

    .line 194
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    const-string v3, "vzw_lbs"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vzw/location/VzwLocationProviderProxy;

    .line 195
    .local v7, p:Lcom/vzw/location/VzwLocationProviderProxy;
    new-instance v1, Lcom/vzw/location/VzwGpsReqMgr;

    iget-object v3, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService;->mNetworkManager:Lcom/vzw/location/VzwGpsNwMgr;

    invoke-direct {v1, v3, v7, v4, v5}, Lcom/vzw/location/VzwGpsReqMgr;-><init>(Landroid/content/Context;Lcom/vzw/location/VzwLocationProviderProxy;Landroid/os/PowerManager$WakeLock;Lcom/vzw/location/VzwGpsNwMgr;)V

    iput-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    .line 198
    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService;->updateProviders()V

    .line 201
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 202
    .local v6, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/vzw/location/VzwLocationManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 207
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 208
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v12, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "location_providers_allowed"

    aput-object v11, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 213
    .local v9, settingsCursor:Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 214
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "settingsCursor==null in initialize()"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_0
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/vzw/location/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

    invoke-direct {v1, v9, v3, v12, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mSettings:Landroid/content/ContentQueryMap;

    .line 218
    new-instance v10, Lcom/vzw/location/VzwLocationManagerService$SettingsObserver;

    invoke-direct {v10, p0, v2}, Lcom/vzw/location/VzwLocationManagerService$SettingsObserver;-><init>(Lcom/vzw/location/VzwLocationManagerService;Lcom/vzw/location/VzwLocationManagerService$1;)V

    .line 219
    .local v10, settingsObserver:Lcom/vzw/location/VzwLocationManagerService$SettingsObserver;
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v10}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 220
    return-void
.end method

.method private isAllowedBySettingsLocked(Ljava/lang/String;)Z
    .locals 2
    .parameter "provider"

    .prologue
    .line 315
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 316
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isAllowedProviderSafe(Ljava/lang/String;)Z
    .locals 2
    .parameter "provider"

    .prologue
    .line 521
    const-string v0, "vzw_lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.vzw.location.ACCESS_GPS_PERMISSION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    const/4 v0, 0x0

    .line 526
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isValidCert(Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .parameter "cert"

    .prologue
    .line 450
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    const/4 v1, 0x1

    .line 453
    :goto_0
    return v1

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, e:Ljava/security/cert/CertificateException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadProviders()V
    .locals 2

    .prologue
    .line 249
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_0
    sget-boolean v0, Lcom/vzw/location/VzwLocationManagerService;->sProvidersLoaded:Z

    if-eqz v0, :cond_0

    .line 251
    monitor-exit v1

    .line 257
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService;->loadProvidersLocked()V

    .line 255
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vzw/location/VzwLocationManagerService;->sProvidersLoaded:Z

    .line 256
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadProvidersLocked()V
    .locals 5

    .prologue
    .line 261
    :try_start_0
    invoke-static {}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    new-instance v3, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;-><init>(Lcom/vzw/location/VzwLocationManagerService;Lcom/vzw/location/VzwLocationManagerService$1;)V

    iput-object v3, p0, Lcom/vzw/location/VzwLocationManagerService;->mLocationManagerCallbacks:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;

    .line 263
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/vzw/location/gpsprovider/VzwHalGpsLocationProvider;->getInstance(Landroid/content/Context;)Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;

    move-result-object v2

    .line 265
    .local v2, provider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;
    new-instance v1, Lcom/vzw/location/VzwLocationProviderProxy;

    const-string v3, "vzw_lbs"

    invoke-direct {v1, v3, v2}, Lcom/vzw/location/VzwLocationProviderProxy;-><init>(Ljava/lang/String;Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;)V

    .line 268
    .local v1, p:Lcom/vzw/location/VzwLocationProviderProxy;
    invoke-direct {p0, v1}, Lcom/vzw/location/VzwLocationManagerService;->addProvider(Lcom/vzw/location/VzwLocationProviderProxy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v1           #p:Lcom/vzw/location/VzwLocationProviderProxy;
    .end local v2           #provider:Lcom/vzw/location/gpsprovider/IVzwHalGpsLocationProvider;
    :cond_0
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "VzwLocationMgrService"

    const-string v4, "exception loading providers:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadPublicKeys()V
    .locals 10

    .prologue
    .line 458
    const/4 v4, 0x0

    .line 461
    .local v4, input:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    const-string v7, "/system/etc/security/vzwlbsappcerts.bks"

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_8

    .line 462
    .end local v4           #input:Ljava/io/FileInputStream;
    .local v5, input:Ljava/io/FileInputStream;
    :try_start_1
    const-string v7, "BKS"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 463
    .local v6, keyStore:Ljava/security/KeyStore;
    const-string v7, "location"

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 464
    invoke-virtual {v6}, Ljava/security/KeyStore;->size()I

    move-result v7

    new-array v7, v7, [Ljava/security/PublicKey;

    iput-object v7, p0, Lcom/vzw/location/VzwLocationManagerService;->mPublicKeys:[Ljava/security/PublicKey;

    .line 466
    const/4 v2, 0x0

    .line 467
    .local v2, i:I
    invoke-virtual {v6}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, e:Ljava/util/Enumeration;
    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 468
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 469
    .local v0, cert:Ljava/security/cert/Certificate;
    iget-object v7, p0, Lcom/vzw/location/VzwLocationManagerService;->mPublicKeys:[Ljava/security/PublicKey;

    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    aput-object v8, v7, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_c

    move v3, v2

    .line 470
    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 483
    .end local v0           #cert:Ljava/security/cert/Certificate;
    :cond_0
    if-eqz v5, :cond_1

    .line 484
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    .end local v1           #e:Ljava/util/Enumeration;
    :cond_1
    :goto_1
    move-object v4, v5

    .line 490
    .end local v3           #i:I
    .end local v5           #input:Ljava/io/FileInputStream;
    .end local v6           #keyStore:Ljava/security/KeyStore;
    .restart local v4       #input:Ljava/io/FileInputStream;
    :cond_2
    :goto_2
    return-void

    .line 471
    :catch_0
    move-exception v1

    .line 472
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    const-string v7, "VzwLocationMgrService"

    const-string v8, "loadPublicKeys(): FileNotFoundException: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 483
    if-eqz v4, :cond_2

    .line 484
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 486
    :catch_1
    move-exception v1

    .line 487
    .local v1, e:Ljava/io/IOException;
    const-string v7, "VzwLocationMgrService"

    const-string v8, "IOException, closing files "

    :goto_4
    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 473
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 474
    .restart local v1       #e:Ljava/io/IOException;
    :goto_5
    :try_start_5
    const-string v7, "VzwLocationMgrService"

    const-string v8, "loadPublicKeys(): IOException: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 483
    if-eqz v4, :cond_2

    .line 484
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 486
    :catch_3
    move-exception v1

    .line 487
    const-string v7, "VzwLocationMgrService"

    const-string v8, "IOException, closing files "

    goto :goto_4

    .line 475
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 476
    .local v1, e:Ljava/security/KeyStoreException;
    :goto_6
    :try_start_7
    const-string v7, "VzwLocationMgrService"

    const-string v8, "loadPublicKeys(): KeyStoreException: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 483
    if-eqz v4, :cond_2

    .line 484
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_2

    .line 486
    :catch_5
    move-exception v1

    .line 487
    .local v1, e:Ljava/io/IOException;
    const-string v7, "VzwLocationMgrService"

    const-string v8, "IOException, closing files "

    goto :goto_4

    .line 477
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 478
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    :goto_7
    :try_start_9
    const-string v7, "VzwLocationMgrService"

    const-string v8, "loadPublicKeys(): NoSuchAlgorithmException: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 483
    if-eqz v4, :cond_2

    .line 484
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_2

    .line 486
    :catch_7
    move-exception v1

    .line 487
    .local v1, e:Ljava/io/IOException;
    const-string v7, "VzwLocationMgrService"

    const-string v8, "IOException, closing files "

    goto :goto_4

    .line 479
    .end local v1           #e:Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 480
    .local v1, e:Ljava/security/cert/CertificateException;
    :goto_8
    :try_start_b
    const-string v7, "VzwLocationMgrService"

    const-string v8, "loadPublicKeys(): CertificateException: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 483
    if-eqz v4, :cond_2

    .line 484
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_2

    .line 486
    :catch_9
    move-exception v1

    .line 487
    .local v1, e:Ljava/io/IOException;
    const-string v7, "VzwLocationMgrService"

    const-string v8, "IOException, closing files "

    goto :goto_4

    .line 482
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 483
    :goto_9
    if-eqz v4, :cond_3

    .line 484
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 482
    :cond_3
    :goto_a
    throw v7

    .line 486
    :catch_a
    move-exception v1

    .line 487
    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "VzwLocationMgrService"

    const-string v9, "IOException, closing files "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 486
    .end local v4           #input:Ljava/io/FileInputStream;
    .local v1, e:Ljava/util/Enumeration;
    .restart local v3       #i:I
    .restart local v5       #input:Ljava/io/FileInputStream;
    .restart local v6       #keyStore:Ljava/security/KeyStore;
    :catch_b
    move-exception v1

    .line 487
    .local v1, e:Ljava/io/IOException;
    const-string v7, "VzwLocationMgrService"

    const-string v8, "IOException, closing files "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 482
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #i:I
    .end local v6           #keyStore:Ljava/security/KeyStore;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    goto :goto_9

    .line 479
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catch_c
    move-exception v1

    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    goto :goto_8

    .line 477
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catch_d
    move-exception v1

    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    goto :goto_7

    .line 475
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catch_e
    move-exception v1

    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    goto :goto_6

    .line 473
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catch_f
    move-exception v1

    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    goto :goto_5

    .line 471
    .end local v4           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    :catch_10
    move-exception v1

    move-object v4, v5

    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v4       #input:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method private updateProviderListenersLocked(Lcom/vzw/location/VzwLocationProviderProxy;Z)V
    .locals 2
    .parameter "p"
    .parameter "enabled"

    .prologue
    .line 303
    if-eqz p2, :cond_0

    .line 304
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mLocationManagerCallbacks:Lcom/vzw/location/VzwLocationManagerService$LocationManagerCallbacks;

    invoke-virtual {p1, v0}, Lcom/vzw/location/VzwLocationProviderProxy;->init(Lcom/vzw/location/gpsprovider/IVzwHalGpsCallback;)V

    .line 310
    :goto_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {p1}, Lcom/vzw/location/VzwLocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/vzw/location/VzwGpsReqMgr;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    .line 311
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mNetworkManager:Lcom/vzw/location/VzwGpsNwMgr;

    invoke-virtual {v0, p2}, Lcom/vzw/location/VzwGpsNwMgr;->onProviderUpdate(Z)V

    .line 312
    return-void

    .line 306
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/vzw/location/VzwLocationProviderProxy;->stop(Z)Z

    .line 307
    invoke-virtual {p1}, Lcom/vzw/location/VzwLocationProviderProxy;->shutdown()V

    goto :goto_0
.end method

.method private updateProviders()V
    .locals 2

    .prologue
    .line 276
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_0
    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService;->updateProvidersLocked()V

    .line 278
    monitor-exit v1

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateProvidersLocked()V
    .locals 9

    .prologue
    .line 283
    :try_start_0
    iget-object v6, p0, Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 284
    iget-object v6, p0, Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vzw/location/VzwLocationProviderProxy;

    .line 285
    .local v4, p:Lcom/vzw/location/VzwLocationProviderProxy;
    invoke-virtual {v4}, Lcom/vzw/location/VzwLocationProviderProxy;->isEnabled()Z

    move-result v2

    .line 286
    .local v2, isEnabled:Z
    invoke-virtual {v4}, Lcom/vzw/location/VzwLocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, name:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/vzw/location/VzwLocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v5

    .line 289
    .local v5, shouldBeEnabled:Z
    if-eqz v2, :cond_1

    if-nez v5, :cond_1

    .line 290
    const-string v6, "VzwLocationMgrService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateProvidersLocked() disable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v6, 0x0

    invoke-direct {p0, v4, v6}, Lcom/vzw/location/VzwLocationManagerService;->updateProviderListenersLocked(Lcom/vzw/location/VzwLocationProviderProxy;Z)V

    .line 283
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 292
    :cond_1
    if-nez v2, :cond_0

    if-eqz v5, :cond_0

    .line 293
    const-string v6, "VzwLocationMgrService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateProvidersLocked() enable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Lcom/vzw/location/VzwLocationManagerService;->updateProviderListenersLocked(Lcom/vzw/location/VzwLocationProviderProxy;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 297
    .end local v1           #i:I
    .end local v2           #isEnabled:Z
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #p:Lcom/vzw/location/VzwLocationProviderProxy;
    .end local v5           #shouldBeEnabled:Z
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "VzwLocationMgrService"

    const-string v7, "exception updating providers:"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method private verifyPackageCert([Landroid/content/pm/ApplicationInfo;)Z
    .locals 14
    .parameter "appInfo"

    .prologue
    .line 338
    const/4 v9, 0x0

    .line 339
    .local v9, packageVerified:Z
    if-eqz p1, :cond_5

    iget-object v11, p0, Lcom/vzw/location/VzwLocationManagerService;->mPublicKeys:[Ljava/security/PublicKey;

    if-eqz v11, :cond_5

    .line 340
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v11, p1

    if-ge v4, v11, :cond_5

    .line 341
    const/4 v6, 0x0

    .line 343
    .local v6, jarFile:Ljava/util/jar/JarFile;
    const/4 v1, 0x0

    .line 344
    .local v1, certs:[Ljava/security/cert/Certificate;
    const/16 v11, 0x2000

    :try_start_0
    new-array v10, v11, [B

    .line 345
    .local v10, readBuffer:[B
    aget-object v11, p1, v4

    iget-object v3, v11, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 347
    .local v3, fName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, ApkName:Ljava/io/File;
    new-instance v7, Ljava/util/jar/JarFile;

    const/4 v11, 0x1

    invoke-direct {v7, v0, v11}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 349
    .end local v6           #jarFile:Ljava/util/jar/JarFile;
    .local v7, jarFile:Ljava/util/jar/JarFile;
    :try_start_1
    const-string v11, "AndroidManifest.xml"

    invoke-virtual {v7, v11}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v8

    .line 352
    .local v8, je:Ljava/util/jar/JarEntry;
    if-eqz v8, :cond_7

    .line 354
    invoke-virtual {v7, v8}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 355
    .local v5, is:Ljava/io/InputStream;
    if-eqz v5, :cond_1

    .line 357
    :cond_0
    const/4 v11, 0x0

    :try_start_2
    array-length v12, v10

    invoke-virtual {v5, v10, v11, v12}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    .line 359
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 364
    :cond_1
    invoke-virtual {v8}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    .line 365
    if-nez v1, :cond_4

    .line 384
    if-eqz v7, :cond_2

    .line 386
    :try_start_4
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_1
    move-object v6, v7

    .line 340
    .end local v0           #ApkName:Ljava/io/File;
    .end local v3           #fName:Ljava/lang/String;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v7           #jarFile:Ljava/util/jar/JarFile;
    .end local v8           #je:Ljava/util/jar/JarEntry;
    .end local v10           #readBuffer:[B
    .restart local v6       #jarFile:Ljava/util/jar/JarFile;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 359
    .end local v6           #jarFile:Ljava/util/jar/JarFile;
    .restart local v0       #ApkName:Ljava/io/File;
    .restart local v3       #fName:Ljava/lang/String;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v7       #jarFile:Ljava/util/jar/JarFile;
    .restart local v8       #je:Ljava/util/jar/JarEntry;
    .restart local v10       #readBuffer:[B
    :catchall_0
    move-exception v11

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 381
    .end local v5           #is:Ljava/io/InputStream;
    .end local v8           #je:Ljava/util/jar/JarEntry;
    :catch_0
    move-exception v2

    move-object v6, v7

    .line 382
    .end local v0           #ApkName:Ljava/io/File;
    .end local v3           #fName:Ljava/lang/String;
    .end local v7           #jarFile:Ljava/util/jar/JarFile;
    .end local v10           #readBuffer:[B
    .local v2, e:Ljava/io/IOException;
    .restart local v6       #jarFile:Ljava/util/jar/JarFile;
    :goto_3
    :try_start_6
    const-string v11, "VzwLocationMgrService"

    const-string v12, "IOException, reading files "

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 384
    if-eqz v6, :cond_3

    .line 386
    :try_start_7
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 387
    :catch_1
    move-exception v2

    .line 388
    const-string v11, "VzwLocationMgrService"

    const-string v12, "IOException, closing files "

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 370
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #jarFile:Ljava/util/jar/JarFile;
    .restart local v0       #ApkName:Ljava/io/File;
    .restart local v3       #fName:Ljava/lang/String;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v7       #jarFile:Ljava/util/jar/JarFile;
    .restart local v8       #je:Ljava/util/jar/JarEntry;
    .restart local v10       #readBuffer:[B
    :cond_4
    :try_start_8
    invoke-direct {p0, v1}, Lcom/vzw/location/VzwLocationManagerService;->hasMatchingCert([Ljava/security/cert/Certificate;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-result v11

    if-eqz v11, :cond_6

    .line 371
    const/4 v9, 0x1

    .line 384
    if-eqz v7, :cond_5

    .line 386
    :try_start_9
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 394
    .end local v0           #ApkName:Ljava/io/File;
    .end local v1           #certs:[Ljava/security/cert/Certificate;
    .end local v3           #fName:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #is:Ljava/io/InputStream;
    .end local v7           #jarFile:Ljava/util/jar/JarFile;
    .end local v8           #je:Ljava/util/jar/JarEntry;
    .end local v10           #readBuffer:[B
    :cond_5
    :goto_4
    return v9

    .line 376
    .restart local v0       #ApkName:Ljava/io/File;
    .restart local v1       #certs:[Ljava/security/cert/Certificate;
    .restart local v3       #fName:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v7       #jarFile:Ljava/util/jar/JarFile;
    .restart local v8       #je:Ljava/util/jar/JarEntry;
    .restart local v10       #readBuffer:[B
    :cond_6
    :try_start_a
    invoke-direct {p0, v1}, Lcom/vzw/location/VzwLocationManagerService;->hasValidDevCert([Ljava/security/cert/Certificate;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    move-result v11

    if-eqz v11, :cond_7

    .line 377
    const/4 v9, 0x1

    .line 384
    if-eqz v7, :cond_5

    .line 386
    :try_start_b
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_4

    .line 387
    :catch_2
    move-exception v2

    .line 388
    .restart local v2       #e:Ljava/io/IOException;
    const-string v11, "VzwLocationMgrService"

    const-string v12, "IOException, closing files "

    :goto_5
    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 384
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #is:Ljava/io/InputStream;
    :cond_7
    if-eqz v7, :cond_8

    .line 386
    :try_start_c
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    :cond_8
    :goto_6
    move-object v6, v7

    .line 391
    .end local v7           #jarFile:Ljava/util/jar/JarFile;
    .restart local v6       #jarFile:Ljava/util/jar/JarFile;
    goto :goto_2

    .line 384
    .end local v0           #ApkName:Ljava/io/File;
    .end local v3           #fName:Ljava/lang/String;
    .end local v8           #je:Ljava/util/jar/JarEntry;
    .end local v10           #readBuffer:[B
    :catchall_1
    move-exception v11

    :goto_7
    if-eqz v6, :cond_9

    .line 386
    :try_start_d
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 384
    :cond_9
    :goto_8
    throw v11

    .line 387
    :catch_3
    move-exception v2

    .line 388
    .restart local v2       #e:Ljava/io/IOException;
    const-string v12, "VzwLocationMgrService"

    const-string v13, "IOException, closing files "

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 387
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #jarFile:Ljava/util/jar/JarFile;
    .restart local v0       #ApkName:Ljava/io/File;
    .restart local v3       #fName:Ljava/lang/String;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v7       #jarFile:Ljava/util/jar/JarFile;
    .restart local v8       #je:Ljava/util/jar/JarEntry;
    .restart local v10       #readBuffer:[B
    :catch_4
    move-exception v2

    .line 388
    .restart local v2       #e:Ljava/io/IOException;
    const-string v11, "VzwLocationMgrService"

    const-string v12, "IOException, closing files "

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 387
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 388
    .restart local v2       #e:Ljava/io/IOException;
    const-string v11, "VzwLocationMgrService"

    const-string v12, "IOException, closing files "

    goto :goto_5

    .line 387
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #is:Ljava/io/InputStream;
    :catch_6
    move-exception v2

    .line 388
    .restart local v2       #e:Ljava/io/IOException;
    const-string v11, "VzwLocationMgrService"

    const-string v12, "IOException, closing files "

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 384
    .end local v2           #e:Ljava/io/IOException;
    .end local v8           #je:Ljava/util/jar/JarEntry;
    :catchall_2
    move-exception v11

    move-object v6, v7

    .end local v7           #jarFile:Ljava/util/jar/JarFile;
    .restart local v6       #jarFile:Ljava/util/jar/JarFile;
    goto :goto_7

    .line 381
    .end local v0           #ApkName:Ljava/io/File;
    .end local v3           #fName:Ljava/lang/String;
    .end local v10           #readBuffer:[B
    :catch_7
    move-exception v2

    goto :goto_3
.end method


# virtual methods
.method public addVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)Z
    .locals 4
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 652
    const-string v2, "VzwLocationMgrService"

    const-string v3, "addVzwGpsStatusListener()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mGpsStatusProvider:Lcom/vzw/location/IVzwGpsStatusProvider;

    if-nez v2, :cond_0

    .line 655
    const-string v2, "VzwLocationMgrService"

    const-string v3, "addVzwGpsStatusListener(): mGpsStatusProvider==null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :goto_0
    return v1

    .line 659
    :cond_0
    if-nez p1, :cond_1

    .line 660
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "addVzwGpsStatusListener(): listener==null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 664
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mGpsStatusProvider:Lcom/vzw/location/IVzwGpsStatusProvider;

    invoke-interface {v2, p1}, Lcom/vzw/location/IVzwGpsStatusProvider;->addGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v1, p1}, Lcom/vzw/location/VzwGpsReqMgr;->addStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V

    .line 672
    const/4 v1, 0x1

    goto :goto_0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "VzwLocationMgrService"

    const-string v3, "mGpsStatusProvider.addGpsStatusListener() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getNumListeners()I
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsReqMgr;->getNumRequests()I

    move-result v0

    return v0
.end method

.method public getProviderInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "provider"

    .prologue
    .line 694
    :try_start_0
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 695
    :try_start_1
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->_getProviderInfoLocked(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    monitor-exit v3

    .line 701
    :goto_0
    return-object v2

    .line 696
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 697
    :catch_0
    move-exception v1

    .line 698
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 699
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 700
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VzwLocationMgrService"

    const-string v3, "getProviderInfo() exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 701
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getProviders(Z)Ljava/util/List;
    .locals 4
    .parameter "enabledOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 531
    :try_start_0
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 532
    :try_start_1
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->_getProvidersLocked(Z)Ljava/util/List;

    move-result-object v2

    monitor-exit v3

    .line 538
    :goto_0
    return-object v2

    .line 533
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 534
    :catch_0
    move-exception v1

    .line 535
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 536
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 537
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VzwLocationMgrService"

    const-string v3, "getProviders() exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 538
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "provider"

    .prologue
    .line 728
    :try_start_0
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 729
    :try_start_1
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->_isProviderEnabledLocked(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v3

    .line 735
    :goto_0
    return v2

    .line 730
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 731
    :catch_0
    move-exception v1

    .line 732
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 733
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 734
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VzwLocationMgrService"

    const-string v3, "isProviderEnabled() exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 735
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public locationCallbackFinished(Lcom/vzw/location/IVzwLocationListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 231
    const-string v0, "VzwLocationMgrService"

    const-string v1, "locationCallbackFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsReqMgr;->locationCallbackFinished()V

    .line 233
    return-void
.end method

.method public removeUpdates(Lcom/vzw/location/IVzwLocationListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 638
    const-string v2, "VzwLocationMgrService"

    const-string v3, "removeUpdates()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/vzw/location/VzwGpsReqMgr;->removeRequest(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 649
    :goto_0
    return-void

    .line 644
    :catch_0
    move-exception v1

    .line 645
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 646
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 647
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VzwLocationMgrService"

    const-string v3, "removeUpdates() exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 676
    const-string v1, "VzwLocationMgrService"

    const-string v2, "removeVzwGpsStatusListener()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mGpsStatusProvider:Lcom/vzw/location/IVzwGpsStatusProvider;

    invoke-interface {v1, p1}, Lcom/vzw/location/IVzwGpsStatusProvider;->removeGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v1, p1}, Lcom/vzw/location/VzwGpsReqMgr;->removeStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V

    .line 685
    return-void

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "VzwLocationMgrService"

    const-string v2, "mGpsStatusProvider.removeGpsStatusListener() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V
    .locals 6
    .parameter "provider"
    .parameter "criteria"
    .parameter "listener"

    .prologue
    .line 563
    const-string v2, "VzwLocationMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLocationUpdates(): listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-string v3, "VzwLocationMgrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLocationUpdates(): fix mode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->checkPermissionsSafe(Ljava/lang/String;)V

    .line 569
    if-nez p2, :cond_3

    .line 570
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsReqMgr;->getRequest()Lcom/vzw/location/VzwGpsRequest;

    move-result-object v1

    .line 571
    .local v1, oldReq:Lcom/vzw/location/VzwGpsRequest;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v2

    if-nez v2, :cond_2

    .line 572
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "requestLocationUpdates(): no criteria set previously"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 564
    .end local v1           #oldReq:Lcom/vzw/location/VzwGpsRequest;
    :cond_1
    const-string v2, "null"

    goto :goto_0

    .line 575
    .restart local v1       #oldReq:Lcom/vzw/location/VzwGpsRequest;
    :cond_2
    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object p2

    .line 578
    .end local v1           #oldReq:Lcom/vzw/location/VzwGpsRequest;
    :cond_3
    invoke-virtual {p2}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v0

    .line 579
    .local v0, fixRate:Lcom/vzw/location/VzwGpsFixRate;
    if-nez v0, :cond_4

    .line 580
    const-string v2, "VzwLocationMgrService"

    const-string v3, "fixRate==null in requestLocationUpdates()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    new-instance v0, Lcom/vzw/location/VzwGpsFixRate;

    .end local v0           #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    invoke-direct {v0}, Lcom/vzw/location/VzwGpsFixRate;-><init>()V

    .line 582
    .restart local v0       #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/vzw/location/VzwGpsFixRate;->setGpsFixRate(JJ)V

    .line 583
    invoke-virtual {p2, v0}, Lcom/vzw/location/VzwCriteria;->setFixRate(Lcom/vzw/location/VzwGpsFixRate;)V

    .line 586
    :cond_4
    invoke-virtual {p2}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v2

    if-nez v2, :cond_5

    .line 587
    const-string v2, "VzwLocationMgrService"

    const-string v3, "perf==null in requestLocationUpdates()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v2, Lcom/vzw/location/VzwGpsPerformance;

    invoke-direct {v2}, Lcom/vzw/location/VzwGpsPerformance;-><init>()V

    invoke-virtual {p2, v2}, Lcom/vzw/location/VzwCriteria;->setPerformance(Lcom/vzw/location/VzwGpsPerformance;)V

    .line 591
    :cond_5
    invoke-direct {p0, p2, p3}, Lcom/vzw/location/VzwLocationManagerService;->_requestLocationUpdates(Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V

    .line 592
    return-void
.end method

.method public requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V
    .locals 8
    .parameter "provider"
    .parameter "criteria"
    .parameter "listener"

    .prologue
    const-wide/16 v6, 0x1

    .line 596
    const-string v2, "VzwLocationMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSingleLocationUpdate(): listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v3, "VzwLocationMgrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSingleLocationUpdate(): fix mode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->checkPermissionsSafe(Ljava/lang/String;)V

    .line 602
    if-nez p2, :cond_3

    .line 603
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v2}, Lcom/vzw/location/VzwGpsReqMgr;->getRequest()Lcom/vzw/location/VzwGpsRequest;

    move-result-object v1

    .line 604
    .local v1, oldReq:Lcom/vzw/location/VzwGpsRequest;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object v2

    if-nez v2, :cond_2

    .line 605
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "requestSingleLocationUpdate(): no criteria set previously"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 597
    .end local v1           #oldReq:Lcom/vzw/location/VzwGpsRequest;
    :cond_1
    const-string v2, "null"

    goto :goto_0

    .line 608
    .restart local v1       #oldReq:Lcom/vzw/location/VzwGpsRequest;
    :cond_2
    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsRequest;->getGpsConfig()Lcom/vzw/location/VzwCriteria;

    move-result-object p2

    .line 611
    .end local v1           #oldReq:Lcom/vzw/location/VzwGpsRequest;
    :cond_3
    invoke-virtual {p2}, Lcom/vzw/location/VzwCriteria;->getFixRate()Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v0

    .line 612
    .local v0, fixRate:Lcom/vzw/location/VzwGpsFixRate;
    if-nez v0, :cond_4

    .line 613
    new-instance v0, Lcom/vzw/location/VzwGpsFixRate;

    .end local v0           #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    invoke-direct {v0}, Lcom/vzw/location/VzwGpsFixRate;-><init>()V

    .line 614
    .restart local v0       #fixRate:Lcom/vzw/location/VzwGpsFixRate;
    invoke-virtual {p2, v0}, Lcom/vzw/location/VzwCriteria;->setFixRate(Lcom/vzw/location/VzwGpsFixRate;)V

    .line 617
    :cond_4
    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsFixRate;->getNumFixes()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5

    .line 618
    const-string v2, "VzwLocationMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSingleLocationUpdate() with numFixes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/vzw/location/VzwGpsFixRate;->getNumFixes()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v6, v7, v2, v3}, Lcom/vzw/location/VzwGpsFixRate;->setGpsFixRate(JJ)V

    .line 620
    invoke-virtual {p2, v0}, Lcom/vzw/location/VzwCriteria;->setFixRate(Lcom/vzw/location/VzwGpsFixRate;)V

    .line 623
    :cond_5
    invoke-virtual {p2}, Lcom/vzw/location/VzwCriteria;->getPerformance()Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v2

    if-nez v2, :cond_6

    .line 624
    const-string v2, "VzwLocationMgrService"

    const-string v3, "perf==null in requestSingleLocationUpdate()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    new-instance v2, Lcom/vzw/location/VzwGpsPerformance;

    invoke-direct {v2}, Lcom/vzw/location/VzwGpsPerformance;-><init>()V

    invoke-virtual {p2, v2}, Lcom/vzw/location/VzwCriteria;->setPerformance(Lcom/vzw/location/VzwGpsPerformance;)V

    .line 628
    :cond_6
    invoke-direct {p0, p2, p3}, Lcom/vzw/location/VzwLocationManagerService;->_requestLocationUpdates(Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V

    .line 629
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 223
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 224
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 225
    new-instance v0, Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;-><init>(Lcom/vzw/location/VzwLocationManagerService;Lcom/vzw/location/VzwLocationManagerService$1;)V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/VzwLocationManagerService$LocationWorkerHandler;

    .line 226
    invoke-direct {p0}, Lcom/vzw/location/VzwLocationManagerService;->initialize()V

    .line 227
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 228
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5
    .parameter "provider"
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 1019
    if-nez p1, :cond_0

    .line 1020
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "provider == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1024
    :cond_0
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService;->checkPermissionsSafe(Ljava/lang/String;)V

    .line 1026
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1028
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_LOCATION_EXTRA_COMMANDS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1030
    :cond_1
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1031
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/VzwLocationProviderProxy;

    .line 1032
    .local v0, p:Lcom/vzw/location/VzwLocationProviderProxy;
    if-nez v0, :cond_2

    .line 1033
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p==null: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1036
    .end local v0           #p:Lcom/vzw/location/VzwLocationProviderProxy;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1035
    .restart local v0       #p:Lcom/vzw/location/VzwLocationProviderProxy;
    :cond_2
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lcom/vzw/location/VzwLocationProviderProxy;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1
.end method

.method public startAuthentication(Ljava/lang/String;Lcom/vzw/location/VzwGpsConfigInit;)V
    .locals 2
    .parameter "provider"
    .parameter "configInit"

    .prologue
    .line 1009
    const-string v0, "VzwLocationMgrService"

    const-string v1, "startAuthentication()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;

    invoke-virtual {v0, p2}, Lcom/vzw/location/VzwGpsReqMgr;->startAuthentication(Lcom/vzw/location/VzwGpsConfigInit;)V

    .line 1011
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 179
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    const-string v2, "VzwLocationManagerService"

    invoke-direct {v0, v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 180
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 181
    return-void
.end method
