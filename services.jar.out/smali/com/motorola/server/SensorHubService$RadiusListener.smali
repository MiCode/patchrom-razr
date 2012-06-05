.class final Lcom/motorola/server/SensorHubService$RadiusListener;
.super Ljava/lang/Object;
.source "SensorHubService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/SensorHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RadiusListener"
.end annotation


# instance fields
.field final mBinder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/motorola/server/SensorHubService;


# direct methods
.method constructor <init>(Lcom/motorola/server/SensorHubService;Landroid/os/IBinder;)V
    .locals 0
    .parameter
    .parameter "binder"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/motorola/server/SensorHubService$RadiusListener;->this$0:Lcom/motorola/server/SensorHubService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p2, p0, Lcom/motorola/server/SensorHubService$RadiusListener;->mBinder:Landroid/os/IBinder;

    .line 299
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/motorola/server/SensorHubService$RadiusListener;->this$0:Lcom/motorola/server/SensorHubService;

    #getter for: Lcom/motorola/server/SensorHubService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/motorola/server/SensorHubService;->access$000(Lcom/motorola/server/SensorHubService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/motorola/server/SensorHubService$RadiusListener;->this$0:Lcom/motorola/server/SensorHubService;

    iget-object v2, p0, Lcom/motorola/server/SensorHubService$RadiusListener;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Lcom/motorola/server/SensorHubService;->disableRadiusInternalLocked(Landroid/os/IBinder;)V

    .line 304
    monitor-exit v1

    .line 305
    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onExitRadius(FF)V
    .locals 2
    .parameter "distanceNorth"
    .parameter "distanceEast"

    .prologue
    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/motorola/server/SensorHubService$RadiusListener;->mBinder:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/motorola/sensorhub/ISensorHubRadiusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/sensorhub/ISensorHubRadiusListener;

    move-result-object v0

    .line 311
    .local v0, asInterface:Lcom/motorola/sensorhub/ISensorHubRadiusListener;
    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v0, p1, p2}, Lcom/motorola/sensorhub/ISensorHubRadiusListener;->onExitRadius(FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v0           #asInterface:Lcom/motorola/sensorhub/ISensorHubRadiusListener;
    :cond_0
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v1

    goto :goto_0
.end method
