.class Landroid/net/ethernet/EthernetStateMachine$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 214
    iput-object p1, p0, Landroid/net/ethernet/EthernetStateMachine$2;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x4

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 217
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, action:Ljava/lang/String;
    const-string v7, "com.motorola.android.net.ethernet.ETH_CONFIG_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 219
    const-string v7, "ethConfigChangedFlags"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 220
    .local v1, flags:I
    const-string v6, "EthernetStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received intent from UI :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", flags: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    if-eqz v1, :cond_0

    .line 222
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine$2;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->notifyConfigChanged(I)V
    invoke-static {v6, v1}, Landroid/net/ethernet/EthernetStateMachine;->access$300(Landroid/net/ethernet/EthernetStateMachine;I)V

    .line 251
    .end local v1           #flags:I
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 225
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 227
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 228
    .local v2, isConnected:Z
    :goto_1
    if-eqz v2, :cond_0

    .line 229
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine$2;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mEthernetHwState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v6}, Landroid/net/ethernet/EthernetStateMachine;->access$400(Landroid/net/ethernet/EthernetStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-ne v8, v6, :cond_0

    .line 230
    const-string v6, "EthernetStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received intent from WifiManager:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine$2;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->notifyWifiConnected()V
    invoke-static {v6}, Landroid/net/ethernet/EthernetStateMachine;->access$500(Landroid/net/ethernet/EthernetStateMachine;)V

    goto :goto_0

    .end local v2           #isConnected:Z
    :cond_2
    move v2, v6

    .line 227
    goto :goto_1

    .line 234
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    :cond_3
    const-string v6, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 235
    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 236
    .local v4, state:Lcom/android/internal/telephony/Phone$DataState;
    const-string/jumbo v6, "state"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, str:Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 238
    const-class v6, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v6, v5}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    .end local v4           #state:Lcom/android/internal/telephony/Phone$DataState;
    check-cast v4, Lcom/android/internal/telephony/Phone$DataState;

    .line 240
    .restart local v4       #state:Lcom/android/internal/telephony/Phone$DataState;
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v6, v4, :cond_0

    .line 241
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine$2;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #getter for: Landroid/net/ethernet/EthernetStateMachine;->mEthernetHwState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v6}, Landroid/net/ethernet/EthernetStateMachine;->access$400(Landroid/net/ethernet/EthernetStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-ne v8, v6, :cond_0

    .line 242
    const-string v6, "EthernetStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received intent from Telephony:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine$2;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->notifyMobileDataConnected()V
    invoke-static {v6}, Landroid/net/ethernet/EthernetStateMachine;->access$600(Landroid/net/ethernet/EthernetStateMachine;)V

    goto/16 :goto_0

    .line 246
    .end local v4           #state:Lcom/android/internal/telephony/Phone$DataState;
    .end local v5           #str:Ljava/lang/String;
    :cond_5
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 247
    const-string v6, "EthernetStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received intent from phone:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine$2;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #setter for: Landroid/net/ethernet/EthernetStateMachine;->mShowNotification:Z
    invoke-static {v6, v2}, Landroid/net/ethernet/EthernetStateMachine;->access$702(Landroid/net/ethernet/EthernetStateMachine;Z)Z

    .line 249
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateMachine$2;->this$0:Landroid/net/ethernet/EthernetStateMachine;

    #calls: Landroid/net/ethernet/EthernetStateMachine;->updateNotification()V
    invoke-static {v6}, Landroid/net/ethernet/EthernetStateMachine;->access$800(Landroid/net/ethernet/EthernetStateMachine;)V

    goto/16 :goto_0
.end method
