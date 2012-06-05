.class Landroid/net/ethernet/EthernetStateMachine$CableConnectedState;
.super Lcom/android/internal/util/State;
.source "EthernetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ethernet/EthernetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CableConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ethernet/EthernetStateMachine;


# direct methods
.method constructor <init>(Landroid/net/ethernet/EthernetStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1015
    iput-object p1, p0, Landroid/net/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1019
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    const v1, 0x60017

    #calls: Landroid/net/ethernet/EthernetStateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Landroid/net/ethernet/EthernetStateMachine;->access$2900(Landroid/net/ethernet/EthernetStateMachine;I)V

    .line 1020
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    const/4 v1, 0x2

    #calls: Landroid/net/ethernet/EthernetStateMachine;->setEthernetHwState(I)V
    invoke-static {v0, v1}, Landroid/net/ethernet/EthernetStateMachine;->access$1000(Landroid/net/ethernet/EthernetStateMachine;I)V

    .line 1021
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Landroid/net/ethernet/EthernetStateMachine;->access$1100(Landroid/net/ethernet/EthernetStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1022
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    invoke-virtual {v0}, Landroid/net/ethernet/EthernetStateMachine;->syncGetEthernetState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1023
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    const v1, 0x60029

    invoke-virtual {v0, v1}, Landroid/net/ethernet/EthernetStateMachine;->sendMessage(I)V

    .line 1025
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 1067
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1030
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1061
    :goto_0
    return v0

    .line 1032
    :sswitch_0
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mDefaultState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateMachine;->access$1900(Landroid/net/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/ethernet/EthernetStateMachine;->access$3000(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    :goto_1
    :sswitch_1
    move v0, v1

    .line 1061
    goto :goto_0

    .line 1035
    :sswitch_2
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mAdapterConnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateMachine;->access$1300(Landroid/net/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/ethernet/EthernetStateMachine;->access$3100(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1038
    :sswitch_3
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->enableInterface()V
    invoke-static {v0}, Landroid/net/ethernet/EthernetStateMachine;->access$2100(Landroid/net/ethernet/EthernetStateMachine;)V

    .line 1039
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->setEthernetState(I)V
    invoke-static {v0, v1}, Landroid/net/ethernet/EthernetStateMachine;->access$1200(Landroid/net/ethernet/EthernetStateMachine;I)V

    .line 1040
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    const v2, 0x60029

    invoke-virtual {v0, v2}, Landroid/net/ethernet/EthernetStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 1043
    :sswitch_4
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->disableInterface()V
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateMachine;->access$2300(Landroid/net/ethernet/EthernetStateMachine;)V

    .line 1044
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->setEthernetState(I)V
    invoke-static {v2, v0}, Landroid/net/ethernet/EthernetStateMachine;->access$1200(Landroid/net/ethernet/EthernetStateMachine;I)V

    goto :goto_1

    .line 1047
    :sswitch_5
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$CableConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mGettingIpState:Landroid/net/ethernet/EthernetStateMachine$GettingIpState;
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateMachine;->access$3200(Landroid/net/ethernet/EthernetStateMachine;)Landroid/net/ethernet/EthernetStateMachine$GettingIpState;

    move-result-object v2

    #calls: Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/ethernet/EthernetStateMachine;->access$3300(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1030
    nop

    :sswitch_data_0
    .sparse-switch
        0x60001 -> :sswitch_3
        0x60002 -> :sswitch_4
        0x6000b -> :sswitch_1
        0x60015 -> :sswitch_1
        0x60016 -> :sswitch_0
        0x6001f -> :sswitch_1
        0x60020 -> :sswitch_2
        0x60029 -> :sswitch_5
        0x6002a -> :sswitch_1
        0x60033 -> :sswitch_1
        0x60034 -> :sswitch_1
    .end sparse-switch
.end method
