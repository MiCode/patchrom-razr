.class Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;
.super Lcom/android/internal/util/State;
.source "EthernetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ethernet/EthernetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IpConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ethernet/EthernetStateMachine;


# direct methods
.method constructor <init>(Landroid/net/ethernet/EthernetStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1187
    iput-object p1, p0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1191
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    const/4 v1, 0x0

    #setter for: Landroid/net/ethernet/EthernetStateMachine;->mReconnectCount:I
    invoke-static {v0, v1}, Landroid/net/ethernet/EthernetStateMachine;->access$902(Landroid/net/ethernet/EthernetStateMachine;I)I

    .line 1192
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    const/4 v1, 0x4

    #calls: Landroid/net/ethernet/EthernetStateMachine;->setEthernetHwState(I)V
    invoke-static {v0, v1}, Landroid/net/ethernet/EthernetStateMachine;->access$1000(Landroid/net/ethernet/EthernetStateMachine;I)V

    .line 1193
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Landroid/net/ethernet/EthernetStateMachine;->access$1100(Landroid/net/ethernet/EthernetStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1194
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 1254
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1199
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1248
    :goto_0
    return v0

    .line 1201
    :sswitch_0
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    invoke-virtual {v0}, Landroid/net/ethernet/EthernetStateMachine;->handlePreDhcpSetup()V

    :cond_0
    :goto_1
    :sswitch_1
    move v0, v1

    .line 1248
    goto :goto_0

    .line 1204
    :sswitch_2
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    invoke-virtual {v0}, Landroid/net/ethernet/EthernetStateMachine;->handlePostDhcpSetup()V

    .line 1205
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_1

    .line 1206
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/DhcpInfoInternal;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V
    invoke-static {v2, v0}, Landroid/net/ethernet/EthernetStateMachine;->access$3600(Landroid/net/ethernet/EthernetStateMachine;Landroid/net/DhcpInfoInternal;)V

    goto :goto_1

    .line 1207
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1208
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->handleFailedIpConfiguration()V
    invoke-static {v0}, Landroid/net/ethernet/EthernetStateMachine;->access$3900(Landroid/net/ethernet/EthernetStateMachine;)V

    .line 1209
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mCableConnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateMachine;->access$2600(Landroid/net/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/ethernet/EthernetStateMachine;->access$4800(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1213
    :sswitch_3
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->handleNetworkDisconnect()V
    invoke-static {v0}, Landroid/net/ethernet/EthernetStateMachine;->access$4300(Landroid/net/ethernet/EthernetStateMachine;)V

    .line 1214
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mDefaultState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateMachine;->access$1900(Landroid/net/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/ethernet/EthernetStateMachine;->access$4900(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1217
    :sswitch_4
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->handleNetworkDisconnect()V
    invoke-static {v0}, Landroid/net/ethernet/EthernetStateMachine;->access$4300(Landroid/net/ethernet/EthernetStateMachine;)V

    .line 1218
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mAdapterConnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateMachine;->access$1300(Landroid/net/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/ethernet/EthernetStateMachine;->access$5000(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1221
    :sswitch_5
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->handleNetworkDisconnect()V
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateMachine;->access$4300(Landroid/net/ethernet/EthernetStateMachine;)V

    .line 1222
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->setEthernetState(I)V
    invoke-static {v2, v0}, Landroid/net/ethernet/EthernetStateMachine;->access$1200(Landroid/net/ethernet/EthernetStateMachine;I)V

    .line 1223
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mCableConnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateMachine;->access$2600(Landroid/net/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/ethernet/EthernetStateMachine;->access$5100(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1226
    :sswitch_6
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->handleNetworkDisconnect()V
    invoke-static {v0}, Landroid/net/ethernet/EthernetStateMachine;->access$4300(Landroid/net/ethernet/EthernetStateMachine;)V

    .line 1227
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mCableConnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateMachine;->access$2600(Landroid/net/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/ethernet/EthernetStateMachine;->access$5200(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1230
    :sswitch_7
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Landroid/net/ethernet/EthernetStateMachine;->handleConfigChanged(I)V
    invoke-static {v0, v2}, Landroid/net/ethernet/EthernetStateMachine;->access$5300(Landroid/net/ethernet/EthernetStateMachine;I)V

    goto :goto_1

    .line 1234
    :sswitch_8
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->reconfigure()V
    invoke-static {v0}, Landroid/net/ethernet/EthernetStateMachine;->access$5400(Landroid/net/ethernet/EthernetStateMachine;)V

    goto/16 :goto_1

    .line 1199
    :sswitch_data_0
    .sparse-switch
        0x30004 -> :sswitch_0
        0x30005 -> :sswitch_2
        0x60001 -> :sswitch_1
        0x60002 -> :sswitch_5
        0x6000b -> :sswitch_7
        0x6000c -> :sswitch_8
        0x6000d -> :sswitch_8
        0x60015 -> :sswitch_1
        0x60016 -> :sswitch_3
        0x6001f -> :sswitch_1
        0x60020 -> :sswitch_4
        0x60029 -> :sswitch_1
        0x6002a -> :sswitch_6
        0x60033 -> :sswitch_1
        0x60034 -> :sswitch_1
    .end sparse-switch
.end method
