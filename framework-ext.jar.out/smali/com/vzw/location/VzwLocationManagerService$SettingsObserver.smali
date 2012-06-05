.class final Lcom/vzw/location/VzwLocationManagerService$SettingsObserver;
.super Ljava/lang/Object;
.source "VzwLocationManagerService.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/VzwLocationManagerService;


# direct methods
.method private constructor <init>(Lcom/vzw/location/VzwLocationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManagerService$SettingsObserver;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vzw/location/VzwLocationManagerService;Lcom/vzw/location/VzwLocationManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManagerService$SettingsObserver;-><init>(Lcom/vzw/location/VzwLocationManagerService;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$SettingsObserver;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$200(Lcom/vzw/location/VzwLocationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$SettingsObserver;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #calls: Lcom/vzw/location/VzwLocationManagerService;->updateProvidersLocked()V
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$300(Lcom/vzw/location/VzwLocationManagerService;)V

    .line 239
    monitor-exit v1

    .line 240
    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
