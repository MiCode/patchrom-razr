.class public Lcom/motorola/Camera/DemoActivity;
.super Landroid/app/Activity;
.source "DemoActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/DemoActivity$MotoCameraErrorCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MotoCameraDemo"


# instance fields
.field private mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mFeature:Ljava/lang/String;

.field private mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/motorola/Camera/DemoActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 26
    iput-object v0, p0, Lcom/motorola/Camera/DemoActivity;->mFeature:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/motorola/Camera/MotoCamcorderProfile;

    invoke-direct {v0}, Lcom/motorola/Camera/MotoCamcorderProfile;-><init>()V

    iput-object v0, p0, Lcom/motorola/Camera/DemoActivity;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    .line 298
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/Camera/DemoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/motorola/Camera/DemoActivity;->startPreview()V

    return-void
.end method

.method private closeCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 276
    iget-object v0, p0, Lcom/motorola/Camera/DemoActivity;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/DemoActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 281
    iget-object v0, p0, Lcom/motorola/Camera/DemoActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 282
    iget-object v0, p0, Lcom/motorola/Camera/DemoActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 283
    iput-object v1, p0, Lcom/motorola/Camera/DemoActivity;->mCameraDevice:Landroid/hardware/Camera;

    goto :goto_0
.end method

.method private setCameraParameters()V
    .locals 14

    .prologue
    .line 182
    iget-object v9, p0, Lcom/motorola/Camera/DemoActivity;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v9}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    .line 184
    .local v0, currentVideoMode:I
    iget-object v9, p0, Lcom/motorola/Camera/DemoActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v9}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    iput-object v9, p0, Lcom/motorola/Camera/DemoActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 186
    iget-object v10, p0, Lcom/motorola/Camera/DemoActivity;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v10

    .line 189
    :try_start_0
    iget-object v9, p0, Lcom/motorola/Camera/DemoActivity;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v9}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v9

    if-eqz v9, :cond_7

    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->mShouldReadBackParams:Z

    .line 190
    .local v3, shouldReadHAL:Z
    :goto_0
    if-nez v3, :cond_0

    iget-object v9, p0, Lcom/motorola/Camera/DemoActivity;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v9}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxPicResolution()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    .line 191
    :cond_0
    invoke-static {p0}, Lcom/motorola/Camera/CameraUtility;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CameraUtility;

    move-result-object v9

    iget-object v11, p0, Lcom/motorola/Camera/DemoActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9, p0, v11}, Lcom/motorola/Camera/CameraUtility;->getCameraCapabilities(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 195
    :cond_1
    iget-object v9, p0, Lcom/motorola/Camera/DemoActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v11, "mode"

    const-string v12, "video-mode"

    invoke-virtual {v9, v11, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    sget-object v9, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_CAPTURE_BITRATE:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 200
    .local v7, videoBitrate:I
    :try_start_1
    iget-object v9, p0, Lcom/motorola/Camera/DemoActivity;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    const-string v11, "default"

    invoke-virtual {v9, v11}, Lcom/motorola/Camera/MotoCamcorderProfile;->getVideoBitrate(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    .line 210
    :cond_2
    :goto_1
    :try_start_2
    iget-object v9, p0, Lcom/motorola/Camera/DemoActivity;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v9}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->loadAutoDetectValues()V

    .line 212
    iget-object v9, p0, Lcom/motorola/Camera/DemoActivity;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v9}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v8

    .line 215
    .local v8, videoResolution:Ljava/lang/String;
    if-nez v8, :cond_9

    .line 217
    iget-object v9, p0, Lcom/motorola/Camera/DemoActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 220
    .local v2, lv:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    sget-boolean v9, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_3

    const-string v9, "MotoCameraDemo"

    const-string v11, "setCameraParameters() - setting our resolution to max"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_3
    iget-object v11, p0, Lcom/motorola/Camera/DemoActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    iget v12, v9, Landroid/hardware/Camera$Size;->width:I

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    iget v9, v9, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v11, v12, v9}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 222
    iget-object v11, p0, Lcom/motorola/Camera/DemoActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v12, "video-size"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    iget v9, v9, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, "x"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    iget v9, v9, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v12, v9}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    .end local v2           #lv:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :goto_2
    :try_start_3
    const-string v6, ""

    .line 235
    .local v6, vidResforProfile:Ljava/lang/String;
    if-nez v8, :cond_b

    .line 236
    const-string v6, "default"

    .line 240
    :goto_3
    iget-object v9, p0, Lcom/motorola/Camera/DemoActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v11, p0, Lcom/motorola/Camera/DemoActivity;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    invoke-virtual {v11, v6}, Lcom/motorola/Camera/MotoCamcorderProfile;->getVideoFps(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 247
    .end local v6           #vidResforProfile:Ljava/lang/String;
    :goto_4
    :try_start_4
    iget-object v9, p0, Lcom/motorola/Camera/DemoActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v11, "auto"

    invoke-virtual {v9, v11}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 249
    sget-boolean v9, Lcom/motorola/Camera/CameraGlobalType;->SHOW_ISO_SETTING:Z

    if-eqz v9, :cond_4

    .line 251
    iget-object v9, p0, Lcom/motorola/Camera/DemoActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v11, "mot-picture-iso"

    iget-object v12, p0, Lcom/motorola/Camera/DemoActivity;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v12}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentIsoValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_4
    iget-object v9, p0, Lcom/motorola/Camera/DemoActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 257
    iget-object v9, p0, Lcom/motorola/Camera/DemoActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v11, "flash-mode"

    const-string v12, "off"

    invoke-virtual {v9, v11, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v9, p0, Lcom/motorola/Camera/DemoActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v11, "auto"

    invoke-virtual {v9, v11}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 263
    iget-object v9, p0, Lcom/motorola/Camera/DemoActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v11, "none"

    invoke-virtual {v9, v11}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 264
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 266
    iget-object v9, p0, Lcom/motorola/Camera/DemoActivity;->mFeature:Ljava/lang/String;

    const-string v10, "vstab"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 267
    invoke-direct {p0}, Lcom/motorola/Camera/DemoActivity;->setVideoStabilization()V

    .line 270
    :cond_5
    iget-object v9, p0, Lcom/motorola/Camera/DemoActivity;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v10, p0, Lcom/motorola/Camera/DemoActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9, v10}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 272
    sget-boolean v9, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_6

    const-string v9, "MotoCameraDemo"

    const-string v10, "setCameraParameters() - Exit"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_6
    return-void

    .line 189
    .end local v3           #shouldReadHAL:Z
    .end local v7           #videoBitrate:I
    .end local v8           #videoResolution:Ljava/lang/String;
    :cond_7
    :try_start_5
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->mShouldReadFrontParams:Z

    goto/16 :goto_0

    .line 201
    .restart local v3       #shouldReadHAL:Z
    .restart local v7       #videoBitrate:I
    :catch_0
    move-exception v1

    .line 202
    .local v1, e:Ljava/lang/NullPointerException;
    sget-boolean v9, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_8

    const-string v9, "MotoCameraDemo"

    const-string v11, "Camacorder setup data missing. Defaulting to MMS video mode. BIG PROBLEM!!!"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_8
    iget-object v9, p0, Lcom/motorola/Camera/DemoActivity;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const-string v11, "320x240"

    invoke-virtual {v9, v11}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSensorVidResList(Ljava/lang/String;)V

    .line 204
    iget-object v9, p0, Lcom/motorola/Camera/DemoActivity;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const-string v11, "320x240"

    invoke-virtual {v9, v11}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setAESSensorVidResList(Ljava/lang/String;)V

    .line 205
    iget-object v9, p0, Lcom/motorola/Camera/DemoActivity;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const-string v11, "320x240"

    invoke-virtual {v9, v11}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 207
    sget-boolean v9, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_2

    const-string v9, "MotoCameraDemo"

    const-string v11, "setCurrentVideoRes = 320x240"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 264
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v3           #shouldReadHAL:Z
    .end local v7           #videoBitrate:I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v9

    .line 225
    .restart local v3       #shouldReadHAL:Z
    .restart local v7       #videoBitrate:I
    .restart local v8       #videoResolution:Ljava/lang/String;
    :cond_9
    :try_start_6
    sget-boolean v9, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_a

    const-string v9, "MotoCameraDemo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setCameraParameters() - setting our resolution to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_a
    invoke-static {v8}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, temp:Ljava/lang/String;
    const-string v9, "x"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, t:[Ljava/lang/String;
    iget-object v9, p0, Lcom/motorola/Camera/DemoActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v11, 0x0

    aget-object v11, v4, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x1

    aget-object v12, v4, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v11, v12}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 229
    iget-object v9, p0, Lcom/motorola/Camera/DemoActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v11, "video-size"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    aget-object v13, v4, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v4, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 238
    .end local v4           #t:[Ljava/lang/String;
    .end local v5           #temp:Ljava/lang/String;
    .restart local v6       #vidResforProfile:Ljava/lang/String;
    :cond_b
    move-object v6, v8

    goto/16 :goto_3

    .line 241
    .end local v6           #vidResforProfile:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 242
    .restart local v1       #e:Ljava/lang/NullPointerException;
    sget-boolean v9, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_c

    const-string v9, "MotoCameraDemo"

    const-string v11, "error"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_c
    iget-object v9, p0, Lcom/motorola/Camera/DemoActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v11, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_CAPTURE_FRAMERATE:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4
.end method

.method private setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/DemoActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "MotoCameraDemo"

    const-string v2, "setPreviewDisplay() -Failed to set Preview Display; Closing Camera"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0}, Lcom/motorola/Camera/DemoActivity;->closeCamera()V

    goto :goto_0
.end method

.method private setVideoStabilization()V
    .locals 3

    .prologue
    .line 287
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraDemo"

    const-string v1, "setting vstab"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/DemoActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "vstab"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/motorola/Camera/DemoActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "vstab-demo"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method private startPreview()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 132
    iget-object v3, p0, Lcom/motorola/Camera/DemoActivity;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_0

    .line 135
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/Camera/DemoActivity;->mCameraDevice:Landroid/hardware/Camera;

    .line 136
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoCameraDemo"

    const-string v4, "camera opened"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    iget-object v3, p0, Lcom/motorola/Camera/DemoActivity;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v3, :cond_1

    .line 144
    iget-object v3, p0, Lcom/motorola/Camera/DemoActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->lock()V

    .line 146
    iget-object v3, p0, Lcom/motorola/Camera/DemoActivity;->mCameraDevice:Landroid/hardware/Camera;

    new-instance v4, Lcom/motorola/Camera/DemoActivity$MotoCameraErrorCallback;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/motorola/Camera/DemoActivity$MotoCameraErrorCallback;-><init>(Lcom/motorola/Camera/DemoActivity;Lcom/motorola/Camera/DemoActivity$1;)V

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 148
    iget-object v3, p0, Lcom/motorola/Camera/DemoActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v3}, Lcom/motorola/Camera/DemoActivity;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 150
    invoke-static {p0}, Lcom/motorola/Camera/CameraUtility;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CameraUtility;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/DemoActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3, v6, v4}, Lcom/motorola/Camera/CameraUtility;->setCameraDisplayOrientation(ILandroid/hardware/Camera;)I

    .line 152
    invoke-direct {p0}, Lcom/motorola/Camera/DemoActivity;->setCameraParameters()V

    .line 153
    iget-object v3, p0, Lcom/motorola/Camera/DemoActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 154
    .local v2, params:Landroid/hardware/Camera$Parameters;
    const-string v3, "video-mode"

    sget-object v4, Lcom/motorola/Camera/CameraGlobalType;->videoModeSetting:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v3, p0, Lcom/motorola/Camera/DemoActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 158
    :try_start_1
    iget-object v3, p0, Lcom/motorola/Camera/DemoActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V

    .line 159
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_1

    const-string v3, "MotoCameraDemo"

    const-string v4, "Preview started"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    .end local v2           #params:Landroid/hardware/Camera$Parameters;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/motorola/Camera/DemoActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v3, :cond_2

    .line 167
    iget-object v3, p0, Lcom/motorola/Camera/DemoActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->unlock()V

    .line 169
    :cond_2
    :goto_1
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "MotoCameraDemo"

    const-string v4, "startPreview() - failed to open camera"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 160
    .end local v0           #e:Ljava/lang/RuntimeException;
    .restart local v2       #params:Landroid/hardware/Camera$Parameters;
    :catch_1
    move-exception v1

    .line 161
    .local v1, ex:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/motorola/Camera/DemoActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/Camera/DemoActivity;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 162
    invoke-direct {p0}, Lcom/motorola/Camera/DemoActivity;->closeCamera()V

    goto :goto_0
.end method


# virtual methods
.method public backButton(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 293
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraDemo"

    const-string v1, "button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/Camera/DemoActivity;->finish()V

    .line 295
    invoke-virtual {p0, v2, v2}, Lcom/motorola/Camera/DemoActivity;->overridePendingTransition(II)V

    .line 296
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 34
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_0

    const-string v5, "MotoCameraDemo"

    const-string v6, "demo onCreate enter"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/motorola/Camera/DemoActivity;->requestWindowFeature(I)Z

    .line 38
    invoke-virtual {p0}, Lcom/motorola/Camera/DemoActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x480

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 41
    const v5, 0x7f030018

    invoke-virtual {p0, v5}, Lcom/motorola/Camera/DemoActivity;->setContentView(I)V

    .line 43
    const v5, 0x7f0d0014

    invoke-virtual {p0, v5}, Lcom/motorola/Camera/DemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 44
    .local v3, demoTitle:Landroid/widget/TextView;
    const v5, 0x7f0d0015

    invoke-virtual {p0, v5}, Lcom/motorola/Camera/DemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 45
    .local v1, demoLeftScreen:Landroid/widget/TextView;
    const v5, 0x7f0d0016

    invoke-virtual {p0, v5}, Lcom/motorola/Camera/DemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 47
    .local v2, demoRightScreen:Landroid/widget/TextView;
    const v5, 0x7f0b013c

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 48
    const v5, 0x7f0b013d

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 50
    invoke-virtual {p0}, Lcom/motorola/Camera/DemoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 51
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_1

    .line 52
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 53
    .local v0, data:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "feature"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 54
    const-string v5, "feature"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/Camera/DemoActivity;->mFeature:Ljava/lang/String;

    .line 58
    .end local v0           #data:Landroid/os/Bundle;
    :cond_1
    iget-object v5, p0, Lcom/motorola/Camera/DemoActivity;->mFeature:Ljava/lang/String;

    const-string v6, "vstab"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 59
    const v5, 0x7f0b0136

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 64
    :goto_0
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_2

    const-string v5, "MotoCameraDemo"

    const-string v6, "demo onCreate exit"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_2
    return-void

    .line 61
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/Camera/DemoActivity;->finish()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 92
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraDemo"

    const-string v1, "demo onPause exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 94
    invoke-direct {p0}, Lcom/motorola/Camera/DemoActivity;->closeCamera()V

    .line 95
    invoke-virtual {p0}, Lcom/motorola/Camera/DemoActivity;->finish()V

    .line 96
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraDemo"

    const-string v1, "demo onPause exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 69
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCameraDemo"

    const-string v3, "demo onResume enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 72
    invoke-static {p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/DemoActivity;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 73
    iget-object v2, p0, Lcom/motorola/Camera/DemoActivity;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2, v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSpecificCamSetting(I)Z

    .line 74
    iget-object v2, p0, Lcom/motorola/Camera/DemoActivity;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2, p0, v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentAppMode(Landroid/content/Context;I)V

    .line 75
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/motorola/Camera/DemoActivity$1;

    invoke-direct {v2, p0}, Lcom/motorola/Camera/DemoActivity$1;-><init>(Lcom/motorola/Camera/DemoActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 80
    .local v1, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 82
    const v2, 0x7f0d0013

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/DemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 83
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 85
    iget-object v2, p0, Lcom/motorola/Camera/DemoActivity;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 87
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCameraDemo"

    const-string v3, "demo onResume exit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 101
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 102
    const-string v0, "MotoCameraDemo"

    const-string v1, "surfaceChanged() - getSurface() returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/DemoActivity;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 107
    const-string v0, "MotoCameraDemo"

    const-string v1, "surfaceChanged() - mCameraDevice == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_2
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0, p1}, Lcom/motorola/Camera/DemoActivity;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 115
    iget-object v0, p0, Lcom/motorola/Camera/DemoActivity;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/motorola/Camera/DemoActivity;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/motorola/Camera/DemoActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 124
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/DemoActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 129
    return-void
.end method
