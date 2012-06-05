.class Landroid/net/ethernet/EthernetStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "EthernetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ethernet/EthernetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ethernet/EthernetStateMachine;


# direct methods
.method constructor <init>(Landroid/net/ethernet/EthernetStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 892
    iput-object p1, p0, Landroid/net/ethernet/EthernetStateMachine$DefaultState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 896
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$DefaultState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #setter for: Landroid/net/ethernet/EthernetStateMachine;->mReconnectCount:I
    invoke-static {v0, v1}, Landroid/net/ethernet/EthernetStateMachine;->access$902(Landroid/net/ethernet/EthernetStateMachine;I)I

    .line 897
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$DefaultState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->setEthernetHwState(I)V
    invoke-static {v0, v1}, Landroid/net/ethernet/EthernetStateMachine;->access$1000(Landroid/net/ethernet/EthernetStateMachine;I)V

    .line 898
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$DefaultState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Landroid/net/ethernet/EthernetStateMachine;->access$1100(Landroid/net/ethernet/EthernetStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 899
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$DefaultState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    invoke-virtual {v0, v1}, Landroid/net/ethernet/EthernetStateMachine;->setEthernetEnabled(Z)V

    .line 900
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 944
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$DefaultState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    const v1, 0x6000e

    #calls: Landroid/net/ethernet/EthernetStateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Landroid/net/ethernet/EthernetStateMachine;->access$1700(Landroid/net/ethernet/EthernetStateMachine;I)V

    .line 945
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 905
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 938
    :goto_0
    return v0

    .line 907
    :sswitch_0
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$DefaultState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->setEthernetState(I)V
    invoke-static {v2, v0}, Landroid/net/ethernet/EthernetStateMachine;->access$1200(Landroid/net/ethernet/EthernetStateMachine;I)V

    :cond_0
    :goto_1
    :sswitch_1
    move v0, v1

    .line 938
    goto :goto_0

    .line 910
    :sswitch_2
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$DefaultState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$DefaultState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mAdapterConnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateMachine;->access$1300(Landroid/net/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/ethernet/EthernetStateMachine;->access$1400(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 913
    :sswitch_3
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$DefaultState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->checkAdapterState()Z
    invoke-static {v0}, Landroid/net/ethernet/EthernetStateMachine;->access$1500(Landroid/net/ethernet/EthernetStateMachine;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 914
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$DefaultState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    invoke-static {v0, v1}, Landroid/net/ethernet/EthernetStateMachine;->access$1612(Landroid/net/ethernet/EthernetStateMachine;I)I

    .line 915
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$DefaultState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mCheckAdapterCount:I
    invoke-static {v0}, Landroid/net/ethernet/EthernetStateMachine;->access$1600(Landroid/net/ethernet/EthernetStateMachine;)I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_0

    .line 916
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$DefaultState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    const v2, 0x6000e

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateMachine$DefaultState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mCheckAdapterCount:I
    invoke-static {v3}, Landroid/net/ethernet/EthernetStateMachine;->access$1600(Landroid/net/ethernet/EthernetStateMachine;)I

    move-result v3

    mul-int/lit16 v3, v3, 0xbb8

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/ethernet/EthernetStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_1

    .line 905
    nop

    :sswitch_data_0
    .sparse-switch
        0x30004 -> :sswitch_1
        0x30005 -> :sswitch_1
        0x60001 -> :sswitch_1
        0x60002 -> :sswitch_0
        0x6000b -> :sswitch_1
        0x6000e -> :sswitch_3
        0x60015 -> :sswitch_2
        0x60016 -> :sswitch_1
        0x6001f -> :sswitch_1
        0x60020 -> :sswitch_1
        0x60029 -> :sswitch_1
        0x6002a -> :sswitch_1
        0x60033 -> :sswitch_1
        0x60034 -> :sswitch_1
    .end sparse-switch
.end method
