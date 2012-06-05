.class Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;
.super Ljava/lang/Object;
.source "MotWifiScan.java"

# interfaces
.implements Lcom/motorola/sensorhub/SensorHub$MovementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;


# direct methods
.method constructor <init>(Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1292
    iput-object p1, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;->this$1:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndMovement()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1310
    const-string v3, "MotWifiScanMovementListener"

    const-string v4, "MovementListener onEndMovement"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    iget-object v3, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;->this$1:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    iget-object v3, v3, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mWifiEnabled:Z
    invoke-static {v3}, Landroid/net/wifi/MotWifiScan;->access$200(Landroid/net/wifi/MotWifiScan;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1313
    const-string v3, "MotWifiScanMovementListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mWifiEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;->this$1:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    iget-object v5, v5, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mWifiEnabled:Z
    invoke-static {v5}, Landroid/net/wifi/MotWifiScan;->access$200(Landroid/net/wifi/MotWifiScan;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :cond_0
    :goto_0
    return-void

    .line 1317
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;->this$1:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    #getter for: Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->access$1300(Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1318
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 1319
    .local v2, taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_2

    .line 1320
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1321
    .local v1, currActivityClassName:Ljava/lang/String;
    const-string v3, "com.android.settings.wifi.WifiSettings"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1326
    .end local v1           #currActivityClassName:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;->this$1:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    iget-object v3, v3, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->this$0:Landroid/net/wifi/MotWifiScan;

    iget-object v3, v3, Landroid/net/wifi/MotWifiScan;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiStateMachine;->wifiScanSetDeviceStationary(Z)V

    .line 1340
    iget-object v3, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;->this$1:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    #setter for: Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->mScanIntervalSet:Z
    invoke-static {v3, v5}, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->access$1202(Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;Z)Z

    goto :goto_0
.end method

.method public onStartMovement()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1295
    const-string v0, "MotWifiScanMovementListener"

    const-string v1, "MovementListener onStartMovement"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;->this$1:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    iget-object v0, v0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mWifiEnabled:Z
    invoke-static {v0}, Landroid/net/wifi/MotWifiScan;->access$200(Landroid/net/wifi/MotWifiScan;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1298
    const-string v0, "MotWifiScanMovementListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWifiEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;->this$1:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    iget-object v2, v2, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->this$0:Landroid/net/wifi/MotWifiScan;

    #getter for: Landroid/net/wifi/MotWifiScan;->mWifiEnabled:Z
    invoke-static {v2}, Landroid/net/wifi/MotWifiScan;->access$200(Landroid/net/wifi/MotWifiScan;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_0
    :goto_0
    return-void

    .line 1301
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;->this$1:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    #getter for: Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->mScanIntervalSet:Z
    invoke-static {v0}, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->access$1200(Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;->this$1:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    iget-object v0, v0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->this$0:Landroid/net/wifi/MotWifiScan;

    iget-object v0, v0, Landroid/net/wifi/MotWifiScan;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiStateMachine;->wifiScanSetDeviceStationary(Z)V

    .line 1306
    iget-object v0, p0, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener$1;->this$1:Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;

    #setter for: Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->mScanIntervalSet:Z
    invoke-static {v0, v2}, Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;->access$1202(Landroid/net/wifi/MotWifiScan$MotWifiScanMovementListener;Z)Z

    goto :goto_0
.end method
