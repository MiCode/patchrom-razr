.class Lcom/vzw/location/VzwGpsNwMgr$3;
.super Ljava/lang/Object;
.source "VzwGpsNwMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsNwMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/VzwGpsNwMgr;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwGpsNwMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/vzw/location/VzwGpsNwMgr$3;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 231
    iget-object v1, p0, Lcom/vzw/location/VzwGpsNwMgr$3;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr$3;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    #getter for: Lcom/vzw/location/VzwGpsNwMgr;->mKeepAliveCount:I
    invoke-static {v0}, Lcom/vzw/location/VzwGpsNwMgr;->access$800(Lcom/vzw/location/VzwGpsNwMgr;)I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 233
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr$3;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    #getter for: Lcom/vzw/location/VzwGpsNwMgr;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/vzw/location/VzwGpsNwMgr;->access$200(Lcom/vzw/location/VzwGpsNwMgr;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "enableHIPRI"

    invoke-virtual {v0, v2, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr$3;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    invoke-static {v0}, Lcom/vzw/location/VzwGpsNwMgr;->access$808(Lcom/vzw/location/VzwGpsNwMgr;)I

    .line 236
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr$3;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    #getter for: Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vzw/location/VzwGpsNwMgr;->access$500(Lcom/vzw/location/VzwGpsNwMgr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 237
    iget-object v0, p0, Lcom/vzw/location/VzwGpsNwMgr$3;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    #getter for: Lcom/vzw/location/VzwGpsNwMgr;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vzw/location/VzwGpsNwMgr;->access$500(Lcom/vzw/location/VzwGpsNwMgr;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 239
    :cond_0
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
