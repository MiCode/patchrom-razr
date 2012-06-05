.class Landroid/net/wifi/MotWifiScan$1;
.super Landroid/content/BroadcastReceiver;
.source "MotWifiScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/MotWifiScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/MotWifiScan;


# direct methods
.method constructor <init>(Landroid/net/wifi/MotWifiScan;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 282
    const-string/jumbo v3, "wifi_state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 283
    .local v2, wifiState:I
    const-string v3, "previous_wifi_state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 288
    .local v1, previousWifiState:I
    iget-object v3, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #setter for: Landroid/net/wifi/MotWifiScan;->mWifiState:I
    invoke-static {v3, v2}, Landroid/net/wifi/MotWifiScan;->access$002(Landroid/net/wifi/MotWifiScan;I)I

    .line 292
    iget-object v3, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mWifiState:I
    invoke-static {v3}, Landroid/net/wifi/MotWifiScan;->access$000(Landroid/net/wifi/MotWifiScan;)I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 299
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mWifiState:I
    invoke-static {v3}, Landroid/net/wifi/MotWifiScan;->access$000(Landroid/net/wifi/MotWifiScan;)I

    move-result v3

    if-nez v3, :cond_2

    .line 301
    invoke-static {}, Landroid/net/wifi/MotWifiScan;->access$300()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 302
    iget-object v3, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #setter for: Landroid/net/wifi/MotWifiScan;->mWifiEnabled:Z
    invoke-static {v3, v5}, Landroid/net/wifi/MotWifiScan;->access$202(Landroid/net/wifi/MotWifiScan;Z)Z

    .line 304
    iget-object v3, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #calls: Landroid/net/wifi/MotWifiScan;->unregisterSensorHubMovement()V
    invoke-static {v3}, Landroid/net/wifi/MotWifiScan;->access$400(Landroid/net/wifi/MotWifiScan;)V

    .line 343
    .end local v1           #previousWifiState:I
    .end local v2           #wifiState:I
    :cond_1
    :goto_0
    return-void

    .line 308
    .restart local v1       #previousWifiState:I
    .restart local v2       #wifiState:I
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mWifiState:I
    invoke-static {v3}, Landroid/net/wifi/MotWifiScan;->access$000(Landroid/net/wifi/MotWifiScan;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 316
    invoke-static {}, Landroid/net/wifi/MotWifiScan;->access$300()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    iget-object v3, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #setter for: Landroid/net/wifi/MotWifiScan;->mWifiEnabled:Z
    invoke-static {v3, v7}, Landroid/net/wifi/MotWifiScan;->access$202(Landroid/net/wifi/MotWifiScan;Z)Z

    .line 319
    iget-object v3, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mIsBootCompleted:Z
    invoke-static {v3}, Landroid/net/wifi/MotWifiScan;->access$500(Landroid/net/wifi/MotWifiScan;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 321
    iget-object v3, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #calls: Landroid/net/wifi/MotWifiScan;->registerSensorHubMovement()V
    invoke-static {v3}, Landroid/net/wifi/MotWifiScan;->access$600(Landroid/net/wifi/MotWifiScan;)V

    goto :goto_0

    .line 331
    .end local v1           #previousWifiState:I
    .end local v2           #wifiState:I
    :cond_3
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 332
    invoke-static {}, Landroid/net/wifi/MotWifiScan;->access$300()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 334
    iget-object v3, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v3}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mMotWifiScanHandler:Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
    invoke-static {v4}, Landroid/net/wifi/MotWifiScan;->access$100(Landroid/net/wifi/MotWifiScan;)Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;

    move-result-object v4

    invoke-virtual {v4, v7, v7, v5}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v5, 0x1d4c0

    invoke-virtual {v3, v4, v5, v6}, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 338
    iget-object v3, p0, Landroid/net/wifi/MotWifiScan$1;->this$0:Landroid/net/wifi/MotWifiScan;

    #setter for: Landroid/net/wifi/MotWifiScan;->mIsBootCompleted:Z
    invoke-static {v3, v7}, Landroid/net/wifi/MotWifiScan;->access$502(Landroid/net/wifi/MotWifiScan;Z)Z

    goto :goto_0
.end method
