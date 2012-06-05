.class Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;
.super Lcom/android/internal/util/State;
.source "EthernetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ethernet/EthernetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ethernet/EthernetStateMachine;


# direct methods
.method constructor <init>(Landroid/net/ethernet/EthernetStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 948
    iput-object p1, p0, Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 952
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #setter for: Landroid/net/ethernet/EthernetStateMachine;->mReconnectCount:I
    invoke-static {v0, v2}, Landroid/net/ethernet/EthernetStateMachine;->access$902(Landroid/net/ethernet/EthernetStateMachine;I)I

    .line 953
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    const v1, 0x6000e

    #calls: Landroid/net/ethernet/EthernetStateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Landroid/net/ethernet/EthernetStateMachine;->access$1800(Landroid/net/ethernet/EthernetStateMachine;I)V

    .line 954
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->setEthernetHwState(I)V
    invoke-static {v0, v3}, Landroid/net/ethernet/EthernetStateMachine;->access$1000(Landroid/net/ethernet/EthernetStateMachine;I)V

    .line 955
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Landroid/net/ethernet/EthernetStateMachine;->access$1100(Landroid/net/ethernet/EthernetStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 956
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    invoke-virtual {v0, v3}, Landroid/net/ethernet/EthernetStateMachine;->setEthernetEnabled(Z)V

    .line 957
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1011
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    const v1, 0x60017

    #calls: Landroid/net/ethernet/EthernetStateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Landroid/net/ethernet/EthernetStateMachine;->access$2800(Landroid/net/ethernet/EthernetStateMachine;I)V

    .line 1012
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "message"

    .prologue
    const-wide/16 v6, 0x1388

    const v5, 0x60017

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 962
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1005
    :goto_0
    return v0

    .line 964
    :sswitch_0
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mDefaultState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateMachine;->access$1900(Landroid/net/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/ethernet/EthernetStateMachine;->access$2000(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_1
    :sswitch_1
    move v0, v1

    .line 1005
    goto :goto_0

    .line 967
    :sswitch_2
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->enableInterface()V
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateMachine;->access$2100(Landroid/net/ethernet/EthernetStateMachine;)V

    .line 968
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->setEthernetState(I)V
    invoke-static {v2, v1}, Landroid/net/ethernet/EthernetStateMachine;->access$1200(Landroid/net/ethernet/EthernetStateMachine;I)V

    .line 970
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mInterfaceDetectedInList:Z
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateMachine;->access$2200(Landroid/net/ethernet/EthernetStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 971
    const-string v2, "EthernetStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " will check cable status in 5 seconds."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    invoke-virtual {v2, v5, v6, v7}, Landroid/net/ethernet/EthernetStateMachine;->sendMessageDelayed(IJ)V

    .line 973
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #setter for: Landroid/net/ethernet/EthernetStateMachine;->mInterfaceDetectedInList:Z
    invoke-static {v2, v0}, Landroid/net/ethernet/EthernetStateMachine;->access$2202(Landroid/net/ethernet/EthernetStateMachine;Z)Z

    goto :goto_1

    .line 977
    :sswitch_3
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->disableInterface()V
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateMachine;->access$2300(Landroid/net/ethernet/EthernetStateMachine;)V

    .line 978
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->setEthernetState(I)V
    invoke-static {v2, v0}, Landroid/net/ethernet/EthernetStateMachine;->access$1200(Landroid/net/ethernet/EthernetStateMachine;I)V

    goto :goto_1

    .line 981
    :sswitch_4
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mEthernetState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Landroid/net/ethernet/EthernetStateMachine;->access$2400(Landroid/net/ethernet/EthernetStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 982
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    invoke-virtual {v0, v5, v6, v7}, Landroid/net/ethernet/EthernetStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_1

    .line 985
    :cond_1
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/ethernet/EthernetStateMachine;->access$2500(Landroid/net/ethernet/EthernetStateMachine;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/ethernet/EthernetConfigStore;->checkCableState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->notifyCableState(Z)V
    invoke-static {v0, v1}, Landroid/net/ethernet/EthernetStateMachine;->access$200(Landroid/net/ethernet/EthernetStateMachine;Z)V

    goto :goto_1

    .line 990
    :sswitch_5
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateMachine$AdapterConnectedState;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mCableConnectedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateMachine;->access$2600(Landroid/net/ethernet/EthernetStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/ethernet/EthernetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/ethernet/EthernetStateMachine;->access$2700(Landroid/net/ethernet/EthernetStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 962
    :sswitch_data_0
    .sparse-switch
        0x60001 -> :sswitch_2
        0x60002 -> :sswitch_3
        0x6000b -> :sswitch_1
        0x60015 -> :sswitch_1
        0x60016 -> :sswitch_0
        0x60017 -> :sswitch_4
        0x6001f -> :sswitch_5
        0x60020 -> :sswitch_1
        0x60029 -> :sswitch_1
        0x6002a -> :sswitch_1
        0x60033 -> :sswitch_1
        0x60034 -> :sswitch_1
    .end sparse-switch
.end method
