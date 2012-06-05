.class public Lcom/vzw/location/VzwLocationManager;
.super Ljava/lang/Object;
.source "VzwLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;,
        Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;,
        Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final GPS_RESET_ALL:I = 0x0

.field public static final GPS_RESET_ALMANAC:I = 0x4

.field public static final GPS_RESET_EPHEMERIS:I = 0x1

.field public static final GPS_RESET_LOCATION:I = 0x2

.field public static final GPS_RESET_NONE:I = -0x1

.field public static final GPS_RESET_TIME:I = 0x8

.field private static final TAG:Ljava/lang/String; = "VzwLocationManager"

.field public static final VZW_LBS_PROVIDER:Ljava/lang/String; = "vzw_lbs"


# instance fields
.field private final mGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;

.field private final mGpsStatus:Lcom/vzw/location/VzwGpsStatus;

.field private final mGpsStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/vzw/location/VzwGpsStatus$Listener;",
            "Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/LocationListener;",
            "Lcom/vzw/location/VzwLocationManager$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/vzw/location/IVzwLocationManager;


# direct methods
.method public constructor <init>(Lcom/vzw/location/IVzwLocationManager;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 275
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    .line 52
    new-instance v0, Lcom/vzw/location/VzwGpsStatus;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsStatus;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatus:Lcom/vzw/location/VzwGpsStatus;

    .line 53
    new-instance v0, Lcom/vzw/location/VzwGpsDeviceStatus;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsDeviceStatus;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    .line 276
    const-string v0, "VzwLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    .line 278
    return-void
.end method

.method private _requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 6
    .parameter "provider"
    .parameter "vzwCriteria"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 529
    if-nez p4, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_0

    .line 530
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "calling thread has no looper for requestLocationUpdates()"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 534
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :try_start_1
    const-string v2, "VzwLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_requestLocationUpdates: listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string v2, "VzwLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_requestLocationUpdates: looper = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwLocationManager$ListenerTransport;

    .line 538
    .local v1, transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    if-nez v1, :cond_1

    .line 539
    const-string v2, "VzwLocationManager"

    const-string v4, "_requestLocationUpdates: transport null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    new-instance v1, Lcom/vzw/location/VzwLocationManager$ListenerTransport;

    .end local v1           #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    invoke-direct {v1, p0, p3, p4}, Lcom/vzw/location/VzwLocationManager$ListenerTransport;-><init>(Lcom/vzw/location/VzwLocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 545
    .restart local v1       #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    :goto_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v2, p1, p2, v1}, Lcom/vzw/location/IVzwLocationManager;->requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V

    .line 547
    monitor-exit v3

    .line 551
    .end local v1           #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    :goto_1
    return-void

    .line 542
    .restart local v1       #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    :cond_1
    const-string v2, "VzwLocationManager"

    const-string v4, "_requestLocationUpdates: transport not null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 547
    .end local v1           #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "VzwLocationManager"

    const-string v3, "requestLocationUpdates: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private _requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 6
    .parameter "provider"
    .parameter "vzwCriteria"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 615
    if-nez p4, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_0

    .line 616
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "calling thread has no looper for requestSingleLocationUpdate()"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 620
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :try_start_1
    const-string v2, "VzwLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_requestSingleLocationUpdate: listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const-string v2, "VzwLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_requestSingleLocationUpdate: looper = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwLocationManager$ListenerTransport;

    .line 624
    .local v1, transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    if-nez v1, :cond_1

    .line 625
    const-string v2, "VzwLocationManager"

    const-string v4, "_requestSingleLocationUpdate: transport null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    new-instance v1, Lcom/vzw/location/VzwLocationManager$ListenerTransport;

    .end local v1           #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    invoke-direct {v1, p0, p3, p4}, Lcom/vzw/location/VzwLocationManager$ListenerTransport;-><init>(Lcom/vzw/location/VzwLocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 631
    .restart local v1       #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    :goto_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v2, p1, p2, v1}, Lcom/vzw/location/IVzwLocationManager;->requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/IVzwLocationListener;)V

    .line 633
    monitor-exit v3

    .line 637
    .end local v1           #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    :goto_1
    return-void

    .line 628
    .restart local v1       #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    :cond_1
    const-string v2, "VzwLocationManager"

    const-string v4, "_requestSingleLocationUpdate: transport not null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 633
    .end local v1           #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "VzwLocationManager"

    const-string v3, "requestSingleLocationUpdate: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/IVzwLocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatus:Lcom/vzw/location/VzwGpsStatus;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsDeviceStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;

    return-object v0
.end method

.method private createProvider(Ljava/lang/String;Landroid/os/Bundle;)Landroid/location/LocationProvider;
    .locals 2
    .parameter "name"
    .parameter "info"

    .prologue
    .line 306
    new-instance v0, Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;

    invoke-direct {v0, p0, p1}, Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;-><init>(Lcom/vzw/location/VzwLocationManager;Ljava/lang/String;)V

    .line 308
    .local v0, provider:Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;
    const-string v1, "network"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;->setRequiresNetwork(Z)V

    .line 309
    const-string v1, "satellite"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;->setRequiresSatellite(Z)V

    .line 310
    const-string v1, "cell"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;->setRequiresCell(Z)V

    .line 311
    const-string v1, "cost"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;->setHasMonetaryCost(Z)V

    .line 312
    const-string v1, "altitude"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;->setSupportsAltitude(Z)V

    .line 313
    const-string v1, "speed"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;->setSupportsSpeed(Z)V

    .line 314
    const-string v1, "bearing"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;->setSupportsBearing(Z)V

    .line 315
    const-string v1, "power"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;->setPowerRequirement(I)V

    .line 316
    const-string v1, "accuracy"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocationManager$VzwDummyLocationProvider;->setAccuracy(I)V

    .line 317
    return-object v0
.end method


# virtual methods
.method public ResetGps(I)Z
    .locals 4
    .parameter "resetType"

    .prologue
    const/4 v1, 0x1

    .line 779
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 798
    :goto_0
    return v1

    .line 782
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 783
    .local v0, extras:Landroid/os/Bundle;
    and-int/lit8 v2, p1, 0x1

    if-ne v2, v1, :cond_1

    .line 784
    const-string v2, "ephemeris"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 786
    :cond_1
    and-int/lit8 v2, p1, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 787
    const-string v2, "almanac"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 789
    :cond_2
    and-int/lit8 v2, p1, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 790
    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 792
    :cond_3
    and-int/lit8 v2, p1, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 793
    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 795
    :cond_4
    if-nez p1, :cond_5

    .line 796
    const-string v2, "all"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 798
    :cond_5
    const-string v1, "vzw_lbs"

    const-string v2, "delete_aiding_data"

    invoke-virtual {p0, v1, v2, v0}, Lcom/vzw/location/VzwLocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    goto :goto_0
.end method

.method public addVzwGpsStatusListener(Lcom/vzw/location/VzwGpsStatus$Listener;)Z
    .locals 5
    .parameter "listener"

    .prologue
    .line 675
    if-nez p1, :cond_0

    .line 676
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "listener==null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 679
    :cond_0
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 681
    const/4 v1, 0x1

    .line 695
    :cond_1
    :goto_0
    return v1

    .line 685
    :cond_2
    :try_start_0
    new-instance v2, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;

    invoke-direct {v2, p0, p1}, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;-><init>(Lcom/vzw/location/VzwLocationManager;Lcom/vzw/location/VzwGpsStatus$Listener;)V

    .line 686
    .local v2, transport:Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v3, v2}, Lcom/vzw/location/IVzwLocationManager;->addVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)Z

    move-result v1

    .line 687
    .local v1, result:Z
    if-eqz v1, :cond_1

    .line 688
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 690
    .end local v1           #result:Z
    .end local v2           #transport:Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;
    :catch_0
    move-exception v0

    .line 691
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "VzwLocationManager"

    const-string v4, "RemoteException in addVzwGpsStatusListener: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    const/4 v1, 0x0

    .restart local v1       #result:Z
    goto :goto_0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 288
    .local v0, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "vzw_lbs"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    return-object v0
.end method

.method public getBestProvider(Z)Ljava/lang/String;
    .locals 2
    .parameter "enabledOnly"

    .prologue
    .line 371
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwLocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    .line 372
    .local v0, goodProviders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    :cond_0
    const/4 v1, 0x0

    .line 376
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "vzw_lbs"

    goto :goto_0
.end method

.method public getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;
    .locals 5
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 332
    if-nez p1, :cond_0

    .line 333
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 337
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v3, p1}, Lcom/vzw/location/IVzwLocationManager;->getProviderInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 338
    .local v1, info:Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 346
    .end local v1           #info:Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 341
    .restart local v1       #info:Landroid/os/Bundle;
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/vzw/location/VzwLocationManager;->createProvider(Ljava/lang/String;Landroid/os/Bundle;)Landroid/location/LocationProvider;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 342
    .end local v1           #info:Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "VzwLocationManager"

    const-string v4, "getProvider: RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProviders(Z)Ljava/util/List;
    .locals 3
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
    .line 351
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v1, p1}, Lcom/vzw/location/IVzwLocationManager;->getProviders(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 356
    :goto_0
    return-object v1

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationManager"

    const-string v2, "getProviders: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVzwGpsDeviceStatus(Lcom/vzw/location/VzwGpsDeviceStatus;)Lcom/vzw/location/VzwGpsDeviceStatus;
    .locals 1
    .parameter "status"

    .prologue
    .line 737
    if-nez p1, :cond_0

    .line 738
    new-instance p1, Lcom/vzw/location/VzwGpsDeviceStatus;

    .end local p1
    invoke-direct {p1}, Lcom/vzw/location/VzwGpsDeviceStatus;-><init>()V

    .line 741
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsDeviceStatus:Lcom/vzw/location/VzwGpsDeviceStatus;

    invoke-virtual {p1, v0}, Lcom/vzw/location/VzwGpsDeviceStatus;->setStatus(Lcom/vzw/location/VzwGpsDeviceStatus;)V

    .line 742
    return-object p1
.end method

.method public getVzwGpsStatus(Lcom/vzw/location/VzwGpsStatus;)Lcom/vzw/location/VzwGpsStatus;
    .locals 1
    .parameter "status"

    .prologue
    .line 727
    if-nez p1, :cond_0

    .line 728
    new-instance p1, Lcom/vzw/location/VzwGpsStatus;

    .end local p1
    invoke-direct {p1}, Lcom/vzw/location/VzwGpsStatus;-><init>()V

    .line 731
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatus:Lcom/vzw/location/VzwGpsStatus;

    invoke-virtual {p1, v0}, Lcom/vzw/location/VzwGpsStatus;->setStatus(Lcom/vzw/location/VzwGpsStatus;)V

    .line 732
    return-object p1
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "provider"

    .prologue
    .line 392
    if-nez p1, :cond_0

    .line 393
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "provider==null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 397
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v1, p1}, Lcom/vzw/location/IVzwLocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 400
    :goto_0
    return v1

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationManager"

    const-string v2, "isProviderEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeUpdates(Landroid/location/LocationListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 648
    if-nez p1, :cond_0

    .line 649
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 652
    :cond_0
    const-string v2, "VzwLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeUpdates(): listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwLocationManager$ListenerTransport;

    .line 656
    .local v1, transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    if-eqz v1, :cond_1

    .line 657
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v2, v1}, Lcom/vzw/location/IVzwLocationManager;->removeUpdates(Lcom/vzw/location/IVzwLocationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    .end local v1           #transport:Lcom/vzw/location/VzwLocationManager$ListenerTransport;
    :cond_1
    :goto_0
    return-void

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "VzwLocationManager"

    const-string v3, "removeUpdates(): DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeVzwGpsStatusListener(Lcom/vzw/location/VzwGpsStatus$Listener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 705
    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;

    .line 706
    .local v1, transport:Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;
    if-eqz v1, :cond_0

    .line 707
    iget-object v2, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v2, v1}, Lcom/vzw/location/IVzwLocationManager;->removeVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    .end local v1           #transport:Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "VzwLocationManager"

    const-string v3, "RemoteException in removeVzwGpsStatusListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationListener;)V
    .locals 2
    .parameter "provider"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 468
    if-nez p1, :cond_0

    .line 469
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_0
    if-nez p2, :cond_1

    .line 472
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_1
    invoke-direct {p0, p1, v0, p2, v0}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 476
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 2
    .parameter "provider"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 495
    if-nez p1, :cond_0

    .line 496
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_0
    if-nez p2, :cond_1

    .line 499
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_1
    if-nez p3, :cond_2

    .line 502
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "looper==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 506
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;)V
    .locals 2
    .parameter "provider"
    .parameter "vzwCriteria"
    .parameter "listener"

    .prologue
    .line 480
    if-nez p1, :cond_0

    .line 481
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :cond_0
    if-nez p2, :cond_1

    .line 484
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "vzwCriteria==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_1
    if-nez p3, :cond_2

    .line 487
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 491
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 2
    .parameter "provider"
    .parameter "vzwCriteria"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 510
    if-nez p1, :cond_0

    .line 511
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_0
    if-nez p2, :cond_1

    .line 514
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "vzwCriteria==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_1
    if-nez p3, :cond_2

    .line 517
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_2
    if-nez p4, :cond_3

    .line 520
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "looper==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vzw/location/VzwLocationManager;->_requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 524
    return-void
.end method

.method public requestSingleLocationUpdate(Ljava/lang/String;Landroid/location/LocationListener;)V
    .locals 2
    .parameter "provider"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 554
    if-nez p1, :cond_0

    .line 555
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_0
    if-nez p2, :cond_1

    .line 558
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_1
    invoke-direct {p0, p1, v0, p2, v0}, Lcom/vzw/location/VzwLocationManager;->_requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 562
    return-void
.end method

.method public requestSingleLocationUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 2
    .parameter "provider"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 581
    if-nez p1, :cond_0

    .line 582
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_0
    if-nez p2, :cond_1

    .line 585
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_1
    if-nez p3, :cond_2

    .line 588
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "looper==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/vzw/location/VzwLocationManager;->_requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 592
    return-void
.end method

.method public requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;)V
    .locals 2
    .parameter "provider"
    .parameter "vzwCriteria"
    .parameter "listener"

    .prologue
    .line 566
    if-nez p1, :cond_0

    .line 567
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_0
    if-nez p2, :cond_1

    .line 570
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "vzwCriteria==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_1
    if-nez p3, :cond_2

    .line 573
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vzw/location/VzwLocationManager;->_requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 577
    return-void
.end method

.method public requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 2
    .parameter "provider"
    .parameter "vzwCriteria"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 596
    if-nez p1, :cond_0

    .line 597
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_0
    if-nez p2, :cond_1

    .line 600
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "vzwCriteria==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_1
    if-nez p3, :cond_2

    .line 603
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_2
    if-nez p4, :cond_3

    .line 606
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "looper==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vzw/location/VzwLocationManager;->_requestSingleLocationUpdate(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 610
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3
    .parameter "provider"
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 759
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/vzw/location/IVzwLocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 762
    :goto_0
    return v1

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationManager"

    const-string v2, "RemoteException in sendExtraCommand: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 762
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVzwGpsConfigInit(Ljava/lang/String;Lcom/vzw/location/VzwGpsConfigInit;)Z
    .locals 3
    .parameter "provider"
    .parameter "configInit"

    .prologue
    .line 405
    if-nez p1, :cond_0

    .line 406
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "provider==null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 408
    :cond_0
    if-nez p2, :cond_1

    .line 409
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "configInit==null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 413
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager;->mService:Lcom/vzw/location/IVzwLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/vzw/location/IVzwLocationManager;->startAuthentication(Ljava/lang/String;Lcom/vzw/location/VzwGpsConfigInit;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VzwLocationManager"

    const-string v2, "RemoteException in setVzwConfigInit: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    const/4 v1, 0x0

    goto :goto_0
.end method
