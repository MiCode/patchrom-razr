.class final Lcom/motorola/server/location/MotGpsLocationProvider$Listener;
.super Ljava/lang/Object;
.source "MotGpsLocationProvider.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/location/MotGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Listener"
.end annotation


# instance fields
.field final mListener:Landroid/location/IGpsStatusListener;

.field final synthetic this$0:Lcom/motorola/server/location/MotGpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/motorola/server/location/MotGpsLocationProvider;Landroid/location/IGpsStatusListener;)V
    .locals 0
    .parameter
    .parameter "listener"

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$Listener;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1142
    iput-object p2, p0, Lcom/motorola/server/location/MotGpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    .line 1143
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 1146
    const-string v0, "MotGpsLocationProvider"

    const-string v1, "GPS status listener died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$Listener;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$300(Lcom/motorola/server/location/MotGpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1149
    :try_start_0
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$Listener;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$300(Lcom/motorola/server/location/MotGpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1150
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1151
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/motorola/server/location/MotGpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v0}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1154
    :cond_0
    return-void

    .line 1150
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
