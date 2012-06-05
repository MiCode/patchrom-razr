.class final Lcom/vzw/location/VzwLocationManagerService$Listener;
.super Ljava/lang/Object;
.source "VzwLocationManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Listener"
.end annotation


# instance fields
.field final mListener:Lcom/vzw/location/IVzwGpsStatusListener;

.field final synthetic this$0:Lcom/vzw/location/VzwLocationManagerService;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwLocationManagerService;Lcom/vzw/location/IVzwGpsStatusListener;)V
    .locals 0
    .parameter
    .parameter "listener"

    .prologue
    .line 926
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManagerService$Listener;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 927
    iput-object p2, p0, Lcom/vzw/location/VzwLocationManagerService$Listener;->mListener:Lcom/vzw/location/IVzwGpsStatusListener;

    .line 928
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 931
    const-string v0, "VzwLocationMgrService"

    const-string v1, "GPS status listener died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$Listener;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$600(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 934
    :try_start_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManagerService$Listener;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/vzw/location/VzwLocationManagerService;->access$600(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 935
    monitor-exit v1

    .line 936
    return-void

    .line 935
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
