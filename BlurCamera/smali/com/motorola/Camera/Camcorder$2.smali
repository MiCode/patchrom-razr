.class Lcom/motorola/Camera/Camcorder$2;
.super Landroid/content/BroadcastReceiver;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 1428
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder$2;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x4

    .line 1431
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1433
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1434
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder$2;->this$0:Lcom/motorola/Camera/Camcorder;

    const-string v3, "level"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/motorola/Camera/Camcorder;->batteryLevel:I
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$5302(Lcom/motorola/Camera/Camcorder;I)I

    .line 1436
    const-string v2, "level"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1437
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder$2;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->batteryLevel:I
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$5300(Lcom/motorola/Camera/Camcorder;)I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 1438
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamcorder"

    const-string v3, "Camcorder: battery remained under 5 percentage"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    :cond_0
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder$2;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1300(Lcom/motorola/Camera/Camcorder;)I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 1441
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCamcorder"

    const-string v3, "Camcorder:Low Battery, Will stop recording"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder$2;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder$2;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0b0145

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1200(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    .line 1443
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder$2;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->stopVideoRecordingAndDisplayDialog()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3100(Lcom/motorola/Camera/Camcorder;)V

    .line 1448
    :cond_2
    const-string v2, "health"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1449
    const-string v2, "health"

    const/4 v3, 0x2

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1450
    .local v1, battHealth:I
    packed-switch v1, :pswitch_data_0

    .line 1469
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_3

    const-string v2, "MotoCamcorder"

    const-string v3, "Camcorder:Default Case"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    .end local v1           #battHealth:I
    :cond_3
    :goto_0
    return-void

    .line 1452
    .restart local v1       #battHealth:I
    :pswitch_0
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_3

    const-string v2, "MotoCamcorder"

    const-string v3, "Camcorder:BATTERY_HEALTH_OVER_VOLTAGE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1456
    :pswitch_1
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_3

    const-string v2, "MotoCamcorder"

    const-string v3, "Camcorder:BatteryManager.BATTERY_HEALTH_DEAD"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1460
    :pswitch_2
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_4

    const-string v2, "MotoCamcorder"

    const-string v3, "Camcorder:BATTERY_HEALTH_OVERHEAT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    :cond_4
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder$2;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1300(Lcom/motorola/Camera/Camcorder;)I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 1463
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder$2;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder$2;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0b0144

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camcorder;->access$1200(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V

    .line 1464
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder$2;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->stopVideoRecordingAndDisplayDialog()V
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3100(Lcom/motorola/Camera/Camcorder;)V

    goto :goto_0

    .line 1450
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
