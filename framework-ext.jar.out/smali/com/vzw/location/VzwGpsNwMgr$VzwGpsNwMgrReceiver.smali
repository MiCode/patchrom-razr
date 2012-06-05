.class public Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VzwGpsNwMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsNwMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VzwGpsNwMgrReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/VzwGpsNwMgr;


# direct methods
.method public constructor <init>(Lcom/vzw/location/VzwGpsNwMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 172
    iget-object v4, p0, Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    monitor-enter v4

    .line 173
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v2

    .line 184
    .local v2, serviceState:Landroid/telephony/ServiceState;
    iget-object v3, p0, Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    #getter for: Lcom/vzw/location/VzwGpsNwMgr;->agpsProviderEnabled:Z
    invoke-static {v3}, Lcom/vzw/location/VzwGpsNwMgr;->access$000(Lcom/vzw/location/VzwGpsNwMgr;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/vzw/location/VzwGpsNwMgr;->access$400()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_0

    .line 188
    iget-object v3, p0, Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    const/4 v5, 0x1

    #calls: Lcom/vzw/location/VzwGpsNwMgr;->startUsingPdpLocked(Z)V
    invoke-static {v3, v5}, Lcom/vzw/location/VzwGpsNwMgr;->access$600(Lcom/vzw/location/VzwGpsNwMgr;Z)V

    .line 212
    .end local v2           #serviceState:Landroid/telephony/ServiceState;
    :cond_0
    :goto_0
    monitor-exit v4

    .line 213
    return-void

    .line 190
    :cond_1
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 197
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_0

    .line 198
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 200
    iget-object v3, p0, Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    #calls: Lcom/vzw/location/VzwGpsNwMgr;->onPdpConnectLocked()V
    invoke-static {v3}, Lcom/vzw/location/VzwGpsNwMgr;->access$300(Lcom/vzw/location/VzwGpsNwMgr;)V

    goto :goto_0

    .line 212
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #info:Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 204
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v3}, Lcom/vzw/location/VzwGpsNwMgr;->access$402(Z)Z

    .line 205
    iget-object v3, p0, Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    #getter for: Lcom/vzw/location/VzwGpsNwMgr;->mMode:I
    invoke-static {v3}, Lcom/vzw/location/VzwGpsNwMgr;->access$700(Lcom/vzw/location/VzwGpsNwMgr;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    iget-object v3, p0, Lcom/vzw/location/VzwGpsNwMgr$VzwGpsNwMgrReceiver;->this$0:Lcom/vzw/location/VzwGpsNwMgr;

    const/4 v5, 0x0

    #calls: Lcom/vzw/location/VzwGpsNwMgr;->startUsingPdpLocked(Z)V
    invoke-static {v3, v5}, Lcom/vzw/location/VzwGpsNwMgr;->access$600(Lcom/vzw/location/VzwGpsNwMgr;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
