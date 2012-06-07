.class final Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;
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
    name = "BurstJpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/motorola/Camera/Camera;


# direct methods
.method public constructor <init>(Lcom/motorola/Camera/Camera;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 5324
    iput-object p1, p0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5325
    iput-object p2, p0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 5326
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 18
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 5331
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 5333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-wide v4, v4, Lcom/motorola/Camera/Camera;->mCaptureStartTime:J

    sub-long v16, v2, v4

    .line 5334
    .local v16, callbacktime:J
    const-string v2, "MotoCameraKPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KPI: BurstJpegPictureCallback: onPictureTaken() # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mMultishotCurrentCount:I
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$3900(Lcom/motorola/Camera/Camera;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " time from onSnap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5337
    const-string v2, "MotoCameraKPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BurstJpegPictureCallback - Delay on #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mMultishotCurrentCount:I
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$3900(Lcom/motorola/Camera/Camera;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-wide v6, v6, Lcom/motorola/Camera/Camera;->mCallbacktime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/motorola/Camera/Camera;->mCallbacktime:J

    .line 5341
    .end local v16           #callbacktime:J
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$3500(Lcom/motorola/Camera/Camera;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$3500(Lcom/motorola/Camera/Camera;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 5342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$3500(Lcom/motorola/Camera/Camera;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$3500(Lcom/motorola/Camera/Camera;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 5346
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->clearFocus()V
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$11400(Lcom/motorola/Camera/Camera;)V

    .line 5348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-boolean v2, v2, Lcom/motorola/Camera/Camera;->mPausing:Z

    if-eqz v2, :cond_3

    .line 5349
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_2

    const-string v2, "MotoCamera"

    const-string v3, "BurstJpegPictureCallback: onPictureTaken() mPausing is true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5396
    :cond_2
    :goto_0
    return-void

    .line 5358
    :cond_3
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_4

    .line 5359
    const-string v2, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPictureTaken: - orientation CCW= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mMultiShotOrientationCCW:I
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$9200(Lcom/motorola/Camera/Camera;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5362
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraClass:Lcom/motorola/Camera/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$11500(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera;

    move-result-object v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraClass:Lcom/motorola/Camera/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$11500(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/motorola/Camera/CameraApp;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/motorola/Camera/CameraApp;->getStoreImageUtility(Landroid/content/Context;Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/StoreImageUtility;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 5365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraClass:Lcom/motorola/Camera/Camera;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$11500(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/motorola/Camera/CameraApp;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/motorola/Camera/CameraApp;->getStoreImageUtility(Landroid/content/Context;Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/StoreImageUtility;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mMultishotCurrentCount:I
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$3900(Lcom/motorola/Camera/Camera;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mMultishotGroupId:Ljava/lang/String;
    invoke-static {v5}, Lcom/motorola/Camera/Camera;->access$8900(Lcom/motorola/Camera/Camera;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mMultiShotOrientationCCW:I
    invoke-static {v6}, Lcom/motorola/Camera/Camera;->access$9200(Lcom/motorola/Camera/Camera;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-boolean v9, v6, Lcom/motorola/Camera/Camera;->mIsRotatorClosed:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v6}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mIsStoreXmpMetaData:Z
    invoke-static {v6}, Lcom/motorola/Camera/Camera;->access$11600(Lcom/motorola/Camera/Camera;)Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v12

    invoke-static {}, Lcom/motorola/Camera/Camera;->access$10000()I

    move-result v13

    invoke-static {}, Lcom/motorola/Camera/Camera;->access$10000()I

    move-result v15

    move-object/from16 v6, p1

    move-object/from16 v14, p2

    invoke-virtual/range {v2 .. v15}, Lcom/motorola/Camera/StoreImageUtility;->load(IILjava/lang/String;[BLandroid/location/Location;IZLjava/lang/String;ZLandroid/os/Handler;ILandroid/hardware/Camera;I)V

    .line 5386
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$3904(Lcom/motorola/Camera/Camera;)I

    move-result v2

    invoke-static {}, Lcom/motorola/Camera/Camera;->access$10000()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 5387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterToneOn()Z

    move-result v2

    if-nez v2, :cond_7

    .line 5388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$1100(Lcom/motorola/Camera/Camera;)Landroid/media/AudioManager;

    move-result-object v2

    if-nez v2, :cond_6

    .line 5389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Lcom/motorola/Camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    #setter for: Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v3, v2}, Lcom/motorola/Camera/Camera;->access$1102(Lcom/motorola/Camera/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 5392
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$1100(Lcom/motorola/Camera/Camera;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 5394
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v3, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mMultishotCurrentCount:I
    invoke-static {v2, v3}, Lcom/motorola/Camera/Camera;->access$3902(Lcom/motorola/Camera/Camera;I)I

    goto/16 :goto_0

    .line 5374
    :cond_8
    const-string v2, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mStoreImageUtility is null.Cannot save the pictures #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mMultishotCurrentCount:I
    invoke-static {v4}, Lcom/motorola/Camera/Camera;->access$3900(Lcom/motorola/Camera/Camera;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5376
    const/16 p1, 0x0

    .line 5377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$3904(Lcom/motorola/Camera/Camera;)I

    move-result v2

    invoke-static {}, Lcom/motorola/Camera/Camera;->access$10000()I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 5379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1
.end method
