.class Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;
.super Landroid/os/Handler;
.source "MotWifiScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/MotWifiScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotWifiScanHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/MotWifiScan;


# direct methods
.method public constructor <init>(Landroid/net/wifi/MotWifiScan;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 356
    iput-object p1, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->this$0:Landroid/net/wifi/MotWifiScan;

    .line 357
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 358
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 364
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 389
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 374
    :pswitch_1
    invoke-static {}, Landroid/net/wifi/MotWifiScan;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mWifiEnabled:Z
    invoke-static {v1}, Landroid/net/wifi/MotWifiScan;->access$200(Landroid/net/wifi/MotWifiScan;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 377
    iget-object v1, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanHandler;->this$0:Landroid/net/wifi/MotWifiScan;

    #calls: Landroid/net/wifi/MotWifiScan;->registerSensorHubMovement()V
    invoke-static {v1}, Landroid/net/wifi/MotWifiScan;->access$600(Landroid/net/wifi/MotWifiScan;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "MotWifiScan"

    const-string v2, "FATAL error in MotWifiScanHandler.handleMessage(), MUST catch:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 364
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
