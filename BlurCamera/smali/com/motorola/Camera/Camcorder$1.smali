.class Lcom/motorola/Camera/Camcorder$1;
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
    .line 1393
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder$1;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v7, 0x3f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1396
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1398
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder$1;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v2

    .line 1399
    .local v2, mCurrentScenes:I
    if-eq v2, v6, :cond_1

    .line 1424
    :cond_0
    :goto_0
    return-void

    .line 1403
    :cond_1
    invoke-static {}, Lcom/motorola/Camera/Camcorder;->access$5200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1404
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_2

    const-string v3, "MotoCamcorder"

    const-string v4, "Wind noise intent received"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    :cond_2
    const-string v3, "value"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->windDetected:Z

    .line 1407
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->windDetected:Z

    if-eqz v3, :cond_5

    .line 1408
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_3

    const-string v3, "MotoCamcorder"

    const-string v4, "Wind noise received TRUE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :cond_3
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder$1;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$1300(Lcom/motorola/Camera/Camcorder;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 1412
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder$1;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1413
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder$1;->this$0:Lcom/motorola/Camera/Camcorder;

    const v4, 0x7f0d00a0

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1414
    .local v1, i:Landroid/widget/ImageView;
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1415
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder$1;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1420
    .end local v1           #i:Landroid/widget/ImageView;
    :cond_4
    :goto_1
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->camPremium:Z

    if-ne v3, v6, :cond_0

    .line 1421
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder$1;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateStatusIcons()V

    goto :goto_0

    .line 1418
    :cond_5
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_4

    const-string v3, "MotoCamcorder"

    const-string v4, "Wind noise received FALSE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
