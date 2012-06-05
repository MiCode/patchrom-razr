.class Lcom/vzw/location/VzwLocationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "VzwLocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/VzwLocationManagerService;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwLocationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 965
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManagerService$2;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 968
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 969
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 970
    const-string v5, "VzwLocationMgrService"

    const-string v6, "action==null in BroadcastReceiver.onReceive()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    const-string v7, "android.intent.action.UID_REMOVED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 975
    const-string v5, "android.intent.extra.UID"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 976
    .local v4, uid:I
    if-ltz v4, :cond_0

    .line 977
    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService$2;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mVerifiedUids:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/vzw/location/VzwLocationManagerService;->access$900(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 978
    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService$2;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mVerifiedUids:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/vzw/location/VzwLocationManagerService;->access$900(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    :cond_2
    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService$2;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;
    invoke-static {v5}, Lcom/vzw/location/VzwLocationManagerService;->access$800(Lcom/vzw/location/VzwLocationManagerService;)Lcom/vzw/location/VzwGpsReqMgr;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/vzw/location/VzwGpsReqMgr;->trigger_UidRemoved(I)V

    goto :goto_0

    .line 983
    .end local v4           #uid:I
    :cond_3
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 984
    const-string v7, "noConnectivity"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 986
    .local v2, noConnectivity:Z
    if-eqz v2, :cond_5

    .line 987
    iget-object v7, p0, Lcom/vzw/location/VzwLocationManagerService$2;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #setter for: Lcom/vzw/location/VzwLocationManagerService;->mNetworkState:I
    invoke-static {v7, v5}, Lcom/vzw/location/VzwLocationManagerService;->access$1002(Lcom/vzw/location/VzwLocationManagerService;I)I

    .line 993
    :goto_1
    iget-object v7, p0, Lcom/vzw/location/VzwLocationManagerService$2;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/vzw/location/VzwLocationManagerService;->access$200(Lcom/vzw/location/VzwLocationManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 994
    :try_start_0
    iget-object v8, p0, Lcom/vzw/location/VzwLocationManagerService$2;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_6

    .line 995
    iget-object v8, p0, Lcom/vzw/location/VzwLocationManagerService$2;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/vzw/location/VzwLocationManagerService;->access$1100(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vzw/location/VzwLocationProviderProxy;

    .line 996
    .local v3, p:Lcom/vzw/location/VzwLocationProviderProxy;
    invoke-virtual {v3}, Lcom/vzw/location/VzwLocationProviderProxy;->requiresNetwork()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 997
    iget-object v8, p0, Lcom/vzw/location/VzwLocationManagerService$2;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mNetworkState:I
    invoke-static {v8}, Lcom/vzw/location/VzwLocationManagerService;->access$1000(Lcom/vzw/location/VzwLocationManagerService;)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/vzw/location/VzwLocationProviderProxy;->updateNetworkState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 989
    .end local v1           #i:I
    .end local v3           #p:Lcom/vzw/location/VzwLocationProviderProxy;
    :cond_5
    iget-object v7, p0, Lcom/vzw/location/VzwLocationManagerService$2;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #setter for: Lcom/vzw/location/VzwLocationManagerService;->mNetworkState:I
    invoke-static {v7, v9}, Lcom/vzw/location/VzwLocationManagerService;->access$1002(Lcom/vzw/location/VzwLocationManagerService;I)I

    goto :goto_1

    .line 1000
    .restart local v1       #i:I
    :cond_6
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1002
    iget-object v7, p0, Lcom/vzw/location/VzwLocationManagerService$2;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;
    invoke-static {v7}, Lcom/vzw/location/VzwLocationManagerService;->access$800(Lcom/vzw/location/VzwLocationManagerService;)Lcom/vzw/location/VzwGpsReqMgr;

    move-result-object v7

    iget-object v8, p0, Lcom/vzw/location/VzwLocationManagerService$2;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mNetworkState:I
    invoke-static {v8}, Lcom/vzw/location/VzwLocationManagerService;->access$1000(Lcom/vzw/location/VzwLocationManagerService;)I

    move-result v8

    if-ne v8, v9, :cond_7

    :goto_3
    invoke-virtual {v7, v5}, Lcom/vzw/location/VzwGpsReqMgr;->trigger_NetworkStateUpdate(Z)V

    goto/16 :goto_0

    .line 1000
    .end local v1           #i:I
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v1       #i:I
    :cond_7
    move v5, v6

    .line 1002
    goto :goto_3
.end method
