.class Lcom/motorola/android/locationproxy/AgpsNetworkManager$1;
.super Landroid/content/BroadcastReceiver;
.source "AgpsNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/locationproxy/AgpsNetworkManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;


# direct methods
.method constructor <init>(Lcom/motorola/android/locationproxy/AgpsNetworkManager;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$1;->this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, action:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$000(Ljava/lang/String;)V

    .line 89
    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v2

    .line 91
    .local v2, serviceState:Landroid/telephony/ServiceState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; mIsAgpsPdpEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$100()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$000(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$100()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_0

    .line 96
    iget-object v3, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$1;->this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->configAgpsApn()V
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$200(Lcom/motorola/android/locationproxy/AgpsNetworkManager;)V

    .line 97
    invoke-static {v5}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$302(I)I

    .line 98
    iget-object v3, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$1;->this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->startUsingAgpsPdp()Z
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$400(Lcom/motorola/android/locationproxy/AgpsNetworkManager;)Z

    .line 160
    .end local v2           #serviceState:Landroid/telephony/ServiceState;
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 101
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 103
    .local v1, info:Landroid/net/NetworkInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceived: info=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$000(Ljava/lang/String;)V

    .line 104
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_3

    .line 112
    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$100()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$1;->this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    #getter for: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mIsPreviousMobilePDPConnected:Z
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$500(Lcom/motorola/android/locationproxy/AgpsNetworkManager;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    const-string v3, "ConnectivityManager.TYPE_MOBILE received and previoius state is not connected, try setting up agps pdp"

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$000(Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$1;->this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->configAgpsApn()V
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$200(Lcom/motorola/android/locationproxy/AgpsNetworkManager;)V

    .line 115
    invoke-static {v5}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$302(I)I

    .line 116
    iget-object v3, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$1;->this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->startUsingAgpsPdp()Z
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$400(Lcom/motorola/android/locationproxy/AgpsNetworkManager;)Z

    .line 120
    :cond_2
    iget-object v3, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$1;->this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    #setter for: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->mIsPreviousMobilePDPConnected:Z
    invoke-static {v3, v4}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$502(Lcom/motorola/android/locationproxy/AgpsNetworkManager;Z)Z

    goto :goto_0

    .line 121
    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_0

    .line 122
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 123
    const-string v3, "onReceive: Agps PDP enable successfully"

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$000(Ljava/lang/String;)V

    .line 124
    invoke-static {v6}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$102(Z)Z

    .line 129
    iget-object v4, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$1;->this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    monitor-enter v4

    .line 130
    :try_start_0
    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$600()Ljava/util/Timer;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 131
    const-string v3, "Cancel the scheduled timer task"

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$000(Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$600()Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 133
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$602(Ljava/util/Timer;)Ljava/util/Timer;

    .line 135
    :cond_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-static {v5}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$302(I)I

    .line 138
    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$800()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hslp_address"

    invoke-static {v3, v4}, Lcom/motorola/android/locationproxy/settings/Settings$Supl;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$700()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->configAgpsNetwork(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 142
    :cond_5
    const-string v3, "onReceived: Agps PDP disconnected"

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$000(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$100()Z

    move-result v3

    if-ne v3, v6, :cond_6

    .line 144
    const-string v3, "onReceived: Trying to restart Agps PDP"

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$000(Ljava/lang/String;)V

    .line 145
    invoke-static {v5}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$102(Z)Z

    .line 147
    :cond_6
    iget-object v3, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$1;->this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->scheduleStart()V
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$900(Lcom/motorola/android/locationproxy/AgpsNetworkManager;)V

    goto/16 :goto_0

    .line 150
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_7
    const-string v3, "action_supl_apn_changed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 151
    iget-object v3, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$1;->this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->configAgpsApn()V
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$200(Lcom/motorola/android/locationproxy/AgpsNetworkManager;)V

    goto/16 :goto_0

    .line 152
    :cond_8
    const-string v3, "action_hslp_addr_changed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    const-string v3, "onReceive: Hslp Address changed"

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->logd(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$000(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$800()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hslp_address"

    invoke-static {v3, v4}, Lcom/motorola/android/locationproxy/settings/Settings$Supl;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    invoke-static {}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$700()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->configAgpsNetwork(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
