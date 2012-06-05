.class Landroid/net/ethernet/EthernetStateMachine$1;
.super Landroid/os/UEventObserver;
.source "EthernetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ethernet/EthernetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ethernet/EthernetStateMachine;


# direct methods
.method constructor <init>(Landroid/net/ethernet/EthernetStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Landroid/net/ethernet/EthernetStateMachine$1;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 209
    const-string v1, "EthernetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LAN_CABLE_CONNECT Uevent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateMachine$1;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    const-string v2, "LAN_CABLE_CONNECT"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    #calls: Landroid/net/ethernet/EthernetStateMachine;->notifyCableState(Z)V
    invoke-static {v1, v0}, Landroid/net/ethernet/EthernetStateMachine;->access$200(Landroid/net/ethernet/EthernetStateMachine;Z)V

    .line 211
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
