.class Landroid/net/ethernet/EthernetStateMachine$GettingIpState;
.super Lcom/android/internal/util/State;
.source "EthernetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ethernet/EthernetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GettingIpState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ethernet/EthernetStateMachine;


# direct methods
.method constructor <init>(Landroid/net/ethernet/EthernetStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1070
    iput-object p1, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 10

    .prologue
    const v9, 0x60034

    .line 1074
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    const/4 v7, 0x3

    #calls: Landroid/net/ethernet/EthernetStateMachine;->setEthernetHwState(I)V
    invoke-static {v6, v7}, Landroid/net/ethernet/EthernetStateMachine;->access$1000(Landroid/net/ethernet/EthernetStateMachine;I)V

    .line 1075
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Landroid/net/ethernet/EthernetStateMachine;->access$1100(Landroid/net/ethernet/EthernetStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1082
    invoke-static {}, Landroid/net/ethernet/EthernetConfigStore;->isUsingStaticIp()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1083
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6}, Landroid/net/ethernet/EthernetStateMachine;->access$3400(Landroid/net/ethernet/EthernetStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1084
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6}, Landroid/net/ethernet/EthernetStateMachine;->access$3400(Landroid/net/ethernet/EthernetStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v6

    const v7, 0x30002

    invoke-virtual {v6, v7}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 1085
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6}, Landroid/net/ethernet/EthernetStateMachine;->access$3400(Landroid/net/ethernet/EthernetStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/DhcpStateMachine;->quit()V

    .line 1086
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    const/4 v7, 0x0

    #setter for: Landroid/net/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6, v7}, Landroid/net/ethernet/EthernetStateMachine;->access$3402(Landroid/net/ethernet/EthernetStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    .line 1089
    :cond_0
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    iget-object v7, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/net/ethernet/EthernetStateMachine;->access$3500(Landroid/net/ethernet/EthernetStateMachine;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    iget-object v9, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/ethernet/EthernetStateMachine;->access$2500(Landroid/net/ethernet/EthernetStateMachine;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/net/DhcpStateMachine;->makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;

    move-result-object v7

    #setter for: Landroid/net/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6, v7}, Landroid/net/ethernet/EthernetStateMachine;->access$3402(Landroid/net/ethernet/EthernetStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    .line 1091
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6}, Landroid/net/ethernet/EthernetStateMachine;->access$3400(Landroid/net/ethernet/EthernetStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1092
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6}, Landroid/net/ethernet/EthernetStateMachine;->access$3400(Landroid/net/ethernet/EthernetStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/DhcpStateMachine;->registerForPreDhcpNotification()V

    .line 1093
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v6}, Landroid/net/ethernet/EthernetStateMachine;->access$3400(Landroid/net/ethernet/EthernetStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v6

    const v7, 0x30001

    invoke-virtual {v6, v7}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 1114
    :cond_1
    :goto_0
    return-void

    .line 1096
    :cond_2
    invoke-static {}, Landroid/net/ethernet/EthernetConfigStore;->getIpConfiguration()Landroid/net/DhcpInfoInternal;

    move-result-object v1

    .line 1097
    .local v1, dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    const-string v6, "network_management"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1098
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 1099
    .local v4, netd:Landroid/os/INetworkManagementService;
    new-instance v3, Landroid/net/InterfaceConfiguration;

    invoke-direct {v3}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 1100
    .local v3, ifcg:Landroid/net/InterfaceConfiguration;
    invoke-virtual {v1}, Landroid/net/DhcpInfoInternal;->makeLinkAddress()Landroid/net/LinkAddress;

    move-result-object v6

    iput-object v6, v3, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    .line 1101
    const-string v6, "[up]"

    iput-object v6, v3, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 1103
    :try_start_0
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/ethernet/EthernetStateMachine;->access$2500(Landroid/net/ethernet/EthernetStateMachine;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v3}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 1105
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    const v7, 0x60033

    invoke-virtual {v6, v7, v1}, Landroid/net/ethernet/EthernetStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1106
    :catch_0
    move-exception v5

    .line 1107
    .local v5, re:Landroid/os/RemoteException;
    const-string v6, "EthernetStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Static IP configuration failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    invoke-virtual {v6, v9}, Landroid/net/ethernet/EthernetStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1109
    .end local v5           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 1110
    .local v2, e:Ljava/lang/IllegalStateException;
    const-string v6, "EthernetStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Static IP configuration failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    invoke-virtual {v6, v9}, Landroid/net/ethernet/EthernetStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 1184
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1119
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1178
    :goto_0
    return v0

    .line 1121
    :sswitch_0
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    invoke-virtual {v0}, Landroid/net/ethernet/EthernetStateMachine;->handlePreDhcpSetup()V

    :cond_0
    :goto_1
    :sswitch_1
    move v0, v1

    .line 1178
    goto :goto_0

    .line 1124
    :sswitch_2
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    invoke-virtual {v0}, Landroid/net/ethernet/EthernetStateMachine;->handlePostDhcpSetup()V

    .line 1125
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_1

    .line 1126
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/DhcpInfoInternal;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V
    invoke-static {v2, v0}, Landroid/net/ethernet/EthernetStateMachine;->access$3600(Landroid/net/ethernet/EthernetStateMachine;Landroid/net/DhcpInfoInternal;)V

    .line 1127
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mIpConnectedState:Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateMachine;->access$3700(Landroid/net/ethernet/EthernetStateMachine;)Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;

    move-result-object v2

    #calls: Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/ethernet/EthernetStateMachine;->access$3800(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1128
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1129
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->handleFailedIpConfiguration()V
    invoke-static {v0}, Landroid/net/ethernet/EthernetStateMachine;->access$3900(Landroid/net/ethernet/EthernetStateMachine;)V

    .line 1134
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mCableConnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateMachine;->access$2600(Landroid/net/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/ethernet/EthernetStateMachine;->access$4000(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1138
    :sswitch_3
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/DhcpInfoInternal;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V
    invoke-static {v2, v0}, Landroid/net/ethernet/EthernetStateMachine;->access$3600(Landroid/net/ethernet/EthernetStateMachine;Landroid/net/DhcpInfoInternal;)V

    .line 1139
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mIpConnectedState:Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateMachine;->access$3700(Landroid/net/ethernet/EthernetStateMachine;)Landroid/net/ethernet/EthernetStateMachine$IpConnectedState;

    move-result-object v2

    #calls: Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/ethernet/EthernetStateMachine;->access$4100(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1142
    :sswitch_4
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->handleFailedIpConfiguration()V
    invoke-static {v0}, Landroid/net/ethernet/EthernetStateMachine;->access$3900(Landroid/net/ethernet/EthernetStateMachine;)V

    .line 1147
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mCableConnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateMachine;->access$2600(Landroid/net/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/ethernet/EthernetStateMachine;->access$4200(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1150
    :sswitch_5
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->handleNetworkDisconnect()V
    invoke-static {v0}, Landroid/net/ethernet/EthernetStateMachine;->access$4300(Landroid/net/ethernet/EthernetStateMachine;)V

    .line 1151
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mDefaultState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateMachine;->access$1900(Landroid/net/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/ethernet/EthernetStateMachine;->access$4400(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1154
    :sswitch_6
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->handleNetworkDisconnect()V
    invoke-static {v0}, Landroid/net/ethernet/EthernetStateMachine;->access$4300(Landroid/net/ethernet/EthernetStateMachine;)V

    .line 1155
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mAdapterConnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateMachine;->access$1300(Landroid/net/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/ethernet/EthernetStateMachine;->access$4500(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1158
    :sswitch_7
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->disableInterface()V
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateMachine;->access$2300(Landroid/net/ethernet/EthernetStateMachine;)V

    .line 1159
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->setEthernetState(I)V
    invoke-static {v2, v0}, Landroid/net/ethernet/EthernetStateMachine;->access$1200(Landroid/net/ethernet/EthernetStateMachine;I)V

    .line 1160
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mCableConnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateMachine;->access$2600(Landroid/net/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/ethernet/EthernetStateMachine;->access$4600(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1169
    :sswitch_8
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$GettingIpState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/net/ethernet/EthernetStateMachine;->access$4700(Landroid/net/ethernet/EthernetStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1119
    nop

    :sswitch_data_0
    .sparse-switch
        0x30004 -> :sswitch_0
        0x30005 -> :sswitch_2
        0x60001 -> :sswitch_8
        0x60002 -> :sswitch_7
        0x6000b -> :sswitch_8
        0x60015 -> :sswitch_8
        0x60016 -> :sswitch_5
        0x6001f -> :sswitch_8
        0x60020 -> :sswitch_6
        0x60029 -> :sswitch_1
        0x6002a -> :sswitch_8
        0x60033 -> :sswitch_3
        0x60034 -> :sswitch_4
    .end sparse-switch
.end method
