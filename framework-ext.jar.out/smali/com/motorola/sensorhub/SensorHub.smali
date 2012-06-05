.class public Lcom/motorola/sensorhub/SensorHub;
.super Ljava/lang/Object;
.source "SensorHub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;,
        Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;,
        Lcom/motorola/sensorhub/SensorHub$RadiusListener;,
        Lcom/motorola/sensorhub/SensorHub$MovementListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SensorHub"


# instance fields
.field private mMainLooper:Landroid/os/Looper;

.field private mMovementDelegateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/motorola/sensorhub/SensorHub$MovementListener;",
            "Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mRadiusDelegateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/motorola/sensorhub/SensorHub$RadiusListener;",
            "Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/motorola/sensorhub/ISensorHub;


# direct methods
.method public constructor <init>(Lcom/motorola/sensorhub/ISensorHub;Landroid/os/Looper;)V
    .locals 1
    .parameter "service"
    .parameter "mainLooper"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/sensorhub/SensorHub;->mMovementDelegateMap:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/sensorhub/SensorHub;->mRadiusDelegateMap:Ljava/util/HashMap;

    .line 39
    iput-object p1, p0, Lcom/motorola/sensorhub/SensorHub;->mService:Lcom/motorola/sensorhub/ISensorHub;

    .line 40
    iput-object p2, p0, Lcom/motorola/sensorhub/SensorHub;->mMainLooper:Landroid/os/Looper;

    .line 41
    return-void
.end method


# virtual methods
.method public registerMovementListener(Lcom/motorola/sensorhub/SensorHub$MovementListener;II)Z
    .locals 1
    .parameter "listener"
    .parameter "startDuration"
    .parameter "endDuration"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/motorola/sensorhub/SensorHub;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/motorola/sensorhub/SensorHub;->registerMovementListener(Lcom/motorola/sensorhub/SensorHub$MovementListener;IILandroid/os/Looper;)Z

    move-result v0

    return v0
.end method

.method public registerMovementListener(Lcom/motorola/sensorhub/SensorHub$MovementListener;IILandroid/os/Looper;)Z
    .locals 5
    .parameter "listener"
    .parameter "startDuration"
    .parameter "endDuration"
    .parameter "looper"

    .prologue
    .line 66
    const/4 v2, 0x0

    .line 68
    .local v2, result:Z
    :try_start_0
    new-instance v0, Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;

    invoke-direct {v0, p0, p1, p4}, Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;-><init>(Lcom/motorola/sensorhub/SensorHub;Lcom/motorola/sensorhub/SensorHub$MovementListener;Landroid/os/Looper;)V

    .line 69
    .local v0, delegate:Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;
    iget-object v3, p0, Lcom/motorola/sensorhub/SensorHub;->mService:Lcom/motorola/sensorhub/ISensorHub;

    invoke-interface {v3, v0, p2, p3}, Lcom/motorola/sensorhub/ISensorHub;->enableMovement(Lcom/motorola/sensorhub/ISensorHubMovementListener;II)Z

    move-result v2

    .line 70
    if-eqz v2, :cond_0

    .line 71
    iget-object v3, p0, Lcom/motorola/sensorhub/SensorHub;->mMovementDelegateMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v0           #delegate:Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;
    :cond_0
    :goto_0
    return v2

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "SensorHub"

    const-string v4, "RemoteException in registerMovementListener: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerRadiusListener(Lcom/motorola/sensorhub/SensorHub$RadiusListener;F)Z
    .locals 1
    .parameter "listener"
    .parameter "radius"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/motorola/sensorhub/SensorHub;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/sensorhub/SensorHub;->registerRadiusListener(Lcom/motorola/sensorhub/SensorHub$RadiusListener;FLandroid/os/Looper;)Z

    move-result v0

    return v0
.end method

.method public registerRadiusListener(Lcom/motorola/sensorhub/SensorHub$RadiusListener;FLandroid/os/Looper;)Z
    .locals 5
    .parameter "listener"
    .parameter "radius"
    .parameter "looper"

    .prologue
    .line 122
    const/4 v2, 0x0

    .line 124
    .local v2, result:Z
    :try_start_0
    new-instance v0, Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;

    invoke-direct {v0, p0, p1, p3}, Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;-><init>(Lcom/motorola/sensorhub/SensorHub;Lcom/motorola/sensorhub/SensorHub$RadiusListener;Landroid/os/Looper;)V

    .line 125
    .local v0, delegate:Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;
    iget-object v3, p0, Lcom/motorola/sensorhub/SensorHub;->mService:Lcom/motorola/sensorhub/ISensorHub;

    invoke-interface {v3, v0, p2}, Lcom/motorola/sensorhub/ISensorHub;->enableRadius(Lcom/motorola/sensorhub/ISensorHubRadiusListener;F)Z

    move-result v2

    .line 126
    if-eqz v2, :cond_0

    .line 127
    iget-object v3, p0, Lcom/motorola/sensorhub/SensorHub;->mRadiusDelegateMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0           #delegate:Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;
    :cond_0
    :goto_0
    return v2

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "SensorHub"

    const-string v4, "RemoteException in registerRadiusListener: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterMovementListener(Lcom/motorola/sensorhub/SensorHub$MovementListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/motorola/sensorhub/SensorHub;->mMovementDelegateMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;

    .line 92
    .local v0, delegate:Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;
    if-nez v0, :cond_0

    .line 100
    .end local v0           #delegate:Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;
    :goto_0
    return-void

    .line 95
    .restart local v0       #delegate:Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;
    :cond_0
    iget-object v2, p0, Lcom/motorola/sensorhub/SensorHub;->mMovementDelegateMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v2, p0, Lcom/motorola/sensorhub/SensorHub;->mService:Lcom/motorola/sensorhub/ISensorHub;

    invoke-interface {v2, v0}, Lcom/motorola/sensorhub/ISensorHub;->disableMovement(Lcom/motorola/sensorhub/ISensorHubMovementListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    .end local v0           #delegate:Lcom/motorola/sensorhub/SensorHub$MovementListenerDelegate;
    :catch_0
    move-exception v1

    .line 98
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "SensorHub"

    const-string v3, "RemoteException in unregisterMovementListener: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterRadiusListener(Lcom/motorola/sensorhub/SensorHub$RadiusListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 146
    :try_start_0
    iget-object v2, p0, Lcom/motorola/sensorhub/SensorHub;->mRadiusDelegateMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;

    .line 147
    .local v0, delegate:Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;
    if-nez v0, :cond_0

    .line 155
    .end local v0           #delegate:Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;
    :goto_0
    return-void

    .line 150
    .restart local v0       #delegate:Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;
    :cond_0
    iget-object v2, p0, Lcom/motorola/sensorhub/SensorHub;->mRadiusDelegateMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v2, p0, Lcom/motorola/sensorhub/SensorHub;->mService:Lcom/motorola/sensorhub/ISensorHub;

    invoke-interface {v2, v0}, Lcom/motorola/sensorhub/ISensorHub;->disableRadius(Lcom/motorola/sensorhub/ISensorHubRadiusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    .end local v0           #delegate:Lcom/motorola/sensorhub/SensorHub$RadiusListenerDelegate;
    :catch_0
    move-exception v1

    .line 153
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "SensorHub"

    const-string v3, "RemoteException in unregisterRadiusListener: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
