.class final Lcom/motorola/Camera/Camera$JpegPictureCallback;
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
    name = "JpegPictureCallback"
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
    .line 5554
    iput-object p1, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5555
    iput-object p2, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 5556
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 10
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    const/16 v5, 0x85

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5561
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoCameraKPI"

    const-string v4, "JpegPicture enter"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5562
    :cond_0
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_1

    const-string v3, "MotoCamera"

    const-string v4, "JpegPictureCallback:  onPictureTaken() - Enter"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5565
    :cond_1
    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-boolean v3, v3, Lcom/motorola/Camera/Camera;->mPausing:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v3}, Lcom/motorola/Camera/Camera;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5567
    :cond_2
    const-string v3, "MotoCamera"

    const-string v4, "JpegPictureCallback:  onPictureTaken, paused, so return"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5569
    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterToneOn()Z

    move-result v3

    if-nez v3, :cond_4

    .line 5571
    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$1100(Lcom/motorola/Camera/Camera;)Landroid/media/AudioManager;

    move-result-object v3

    if-nez v3, :cond_3

    .line 5572
    iget-object v4, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    const-string v5, "audio"

    invoke-virtual {v3, v5}, Lcom/motorola/Camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    #setter for: Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v4, v3}, Lcom/motorola/Camera/Camera;->access$1102(Lcom/motorola/Camera/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 5574
    :cond_3
    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$1100(Lcom/motorola/Camera/Camera;)Landroid/media/AudioManager;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v8}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 5658
    :cond_4
    :goto_0
    return-void

    .line 5579
    :cond_5
    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "mode"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5580
    .local v2, zsl:Ljava/lang/String;
    if-eqz v2, :cond_6

    const-string v3, "high-quality-zsl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5581
    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "rotation"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 5585
    :cond_6
    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 5588
    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v4, 0x3

    #setter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v3, v4}, Lcom/motorola/Camera/Camera;->access$1402(Lcom/motorola/Camera/Camera;I)I

    .line 5591
    if-eqz p1, :cond_10

    .line 5593
    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v3

    if-nez v3, :cond_f

    .line 5595
    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbThread:Ljava/lang/Thread;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$3000(Lcom/motorola/Camera/Camera;)Ljava/lang/Thread;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 5596
    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x4a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5615
    :cond_7
    :goto_1
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_8

    const-string v3, "MotoCamera"

    const-string v4, "JpegPictureCallback:  onPictureTaken() - spawning thread to save image"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5616
    :cond_8
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/motorola/Camera/Camera$storeImageRunnable;

    iget-object v4, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v5, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    invoke-direct {v3, v4, p1, p2, v5}, Lcom/motorola/Camera/Camera$storeImageRunnable;-><init>(Lcom/motorola/Camera/Camera;[BLandroid/hardware/Camera;Landroid/location/Location;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5617
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5620
    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPostView:Z
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$10300(Lcom/motorola/Camera/Camera;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbnailDecoded:Z
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$3400(Lcom/motorola/Camera/Camera;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 5621
    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbThread:Ljava/lang/Thread;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$3000(Lcom/motorola/Camera/Camera;)Ljava/lang/Thread;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbThread:Ljava/lang/Thread;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$3000(Lcom/motorola/Camera/Camera;)Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 5623
    :try_start_0
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_9

    .line 5624
    const-string v3, "MotoCamera"

    const-string v4, "JPEG callback - Joining the update thumb thread.."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5625
    :cond_9
    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbThread:Ljava/lang/Thread;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$3000(Lcom/motorola/Camera/Camera;)Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5631
    :cond_a
    :goto_2
    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbnailDecoded:Z
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$3400(Lcom/motorola/Camera/Camera;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 5632
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_b

    .line 5633
    const-string v3, "MotoCamera"

    const-string v4, "JPEG callback - no thumb bringing the update thumb thread"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5635
    :cond_b
    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v3}, Lcom/motorola/Camera/Camera;->interruptThumbnailThread()V

    .line 5636
    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    new-instance v4, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    iget-object v5, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct {v4, v5, p1}, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;-><init>(Lcom/motorola/Camera/Camera;[B)V

    #setter for: Lcom/motorola/Camera/Camera;->updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;
    invoke-static {v3, v4}, Lcom/motorola/Camera/Camera;->access$11102(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;)Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    .line 5637
    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$11100(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->start()V

    .line 5646
    .end local v0           #t:Ljava/lang/Thread;
    :cond_c
    :goto_3
    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$3500(Lcom/motorola/Camera/Camera;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$3500(Lcom/motorola/Camera/Camera;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_d

    .line 5647
    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$3500(Lcom/motorola/Camera/Camera;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5650
    :cond_d
    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v3, v3, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->animateThumbnail()V

    .line 5651
    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$4100(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/Camera/FocusManager;->onShutter()V

    .line 5652
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mKpiS2STimer:J
    invoke-static {v5}, Lcom/motorola/Camera/Camera;->access$12300(Lcom/motorola/Camera/Camera;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 5653
    .local v1, time:Ljava/lang/String;
    const-string v3, "CAM"

    const-string v4, "S2S"

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/motorola/kpi/KpiExtraLogs;

    new-instance v6, Lcom/motorola/kpi/KpiExtraLogs;

    const-string v7, "dur"

    invoke-direct {v6, v7, v1}, Lcom/motorola/kpi/KpiExtraLogs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v8

    new-instance v6, Lcom/motorola/kpi/KpiExtraLogs;

    const-string v7, "res"

    iget-object v8, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mImageResolution:Ljava/lang/String;
    invoke-static {v8}, Lcom/motorola/Camera/Camera;->access$12400(Lcom/motorola/Camera/Camera;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/motorola/kpi/KpiExtraLogs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v9

    invoke-static {v9, v3, v4, v5}, Lcom/motorola/kpi/KpiLogger;->Prod(ILjava/lang/String;Ljava/lang/String;[Lcom/motorola/kpi/KpiExtraLogs;)V

    .line 5657
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_4

    const-string v3, "MotoCameraKPI"

    const-string v4, "JpegPicture exit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5598
    .end local v1           #time:Ljava/lang/String;
    :cond_e
    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 5601
    :cond_f
    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPostView:Z
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$10300(Lcom/motorola/Camera/Camera;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 5603
    new-instance v0, Lcom/motorola/Camera/Camera$JpegPictureCallback$1;

    invoke-direct {v0, p0, p1}, Lcom/motorola/Camera/Camera$JpegPictureCallback$1;-><init>(Lcom/motorola/Camera/Camera$JpegPictureCallback;[B)V

    .line 5610
    .restart local v0       #t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 5642
    .end local v0           #t:Ljava/lang/Thread;
    :cond_10
    const-string v3, "MotoCamera"

    const-string v4, "onPictureTaken() - JPEG data is NULL!  Restarting viewfinder to recover"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5643
    iget-object v3, p0, Lcom/motorola/Camera/Camera$JpegPictureCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 5627
    .restart local v0       #t:Ljava/lang/Thread;
    :catch_0
    move-exception v3

    goto/16 :goto_2
.end method
