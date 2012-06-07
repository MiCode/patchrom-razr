.class final Lcom/motorola/Camera/Camera$PostViewPictureCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PostViewPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/Camera;


# direct methods
.method private constructor <init>(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 5399
    iput-object p1, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5399
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera$PostViewPictureCallback;-><init>(Lcom/motorola/Camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 5
    .parameter "rawData"
    .parameter "camera"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5404
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraKPI"

    const-string v1, "PostView enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5405
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v1, "PostViewPictureCallback - onPictureTaken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5407
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$3500(Lcom/motorola/Camera/Camera;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 5411
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$3500(Lcom/motorola/Camera/Camera;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5412
    iget-object v0, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$3500(Lcom/motorola/Camera/Camera;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 5415
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mAutoTimerCount:I
    invoke-static {v0, v3}, Lcom/motorola/Camera/Camera;->access$7502(Lcom/motorola/Camera/Camera;I)I

    .line 5417
    iget-object v0, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mPostView:Z
    invoke-static {v0, v4}, Lcom/motorola/Camera/Camera;->access$10302(Lcom/motorola/Camera/Camera;Z)Z

    .line 5421
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->OPENGL_ON:Z

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterAnimation()Z

    move-result v0

    if-ne v0, v4, :cond_4

    .line 5422
    iget-object v0, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mRender:Lcom/motorola/Camera/View/CameraShutterRender;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$11700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/CameraShutterRender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/View/CameraShutterRender;->openShutter()V

    .line 5425
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-boolean v0, v0, Lcom/motorola/Camera/Camera;->mPausing:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v0}, Lcom/motorola/Camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5427
    :cond_5
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    const-string v0, "MotoCamera"

    const-string v1, "PostViewPictureCallback() - Exiting because we are pausing or finishing the activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5525
    :cond_6
    :goto_0
    return-void

    .line 5432
    :cond_7
    iget-object v0, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$3100(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 5434
    iget-object v0, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$3100(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 5435
    iget-object v0, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$3100(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 5437
    :cond_8
    iget-object v0, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$3102(Lcom/motorola/Camera/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 5441
    :cond_9
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInSecurelyLockedMode()Z

    move-result v0

    if-nez v0, :cond_a

    .line 5443
    iget-object v0, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;

    invoke-direct {v2, p0, p1}, Lcom/motorola/Camera/Camera$PostViewPictureCallback$1;-><init>(Lcom/motorola/Camera/Camera$PostViewPictureCallback;[B)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #setter for: Lcom/motorola/Camera/Camera;->mThumbThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$3002(Lcom/motorola/Camera/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 5515
    iget-object v0, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$3000(Lcom/motorola/Camera/Camera;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5518
    :cond_a
    iget-object v0, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5520
    iget-object v0, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 5521
    iget-object v0, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v3, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideLocationTags(ZZ)V

    .line 5522
    iget-object v0, p0, Lcom/motorola/Camera/Camera$PostViewPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v3, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideResolutionTextIcon(ZZ)V

    .line 5524
    :cond_b
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    const-string v0, "MotoCameraKPI"

    const-string v1, "PostView exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
