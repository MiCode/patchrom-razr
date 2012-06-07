.class public abstract Lcom/motorola/Camera/CamSetting/CamSetting;
.super Ljava/lang/Object;
.source "CamSetting.java"

# interfaces
.implements Lcom/motorola/Camera/CamSetting/ICamSetting;


# static fields
.field public static final EXTERNAL_MMC:I = 0x1

.field public static final INTERNAL_MMC:I = 0x0

.field protected static final KEYWORD_PREFIX_C:Ljava/lang/String; = "camera "

.field protected static final KEYWORD_PREFIX_V:Ljava/lang/String; = "video "

.field protected static final KEY_EXPOSURE_VALUE:Ljava/lang/String; = "Exposure"

.field protected static final KEY_ISO_VALUE:Ljava/lang/String; = "ISO equivalent senstivity"

.field protected static final KEY_VIDEO_STABILIZATION:Ljava/lang/String; = "Video-Stabilization"

.field protected static final KEY_VIDEO_STABILIZATION_SUPPORT:Ljava/lang/String; = "Video Stabilization Support"

.field protected static final MODE_ERROR:I = -0x1

.field public static final SDCARD_EXT:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MotoCamSetting"

.field protected static mContext:Landroid/content/Context;

.field protected static mIsBackCamera:Z


# instance fields
.field protected currentAppMode:I

.field protected currentCameraMode:I

.field protected mDefaultPreviewFPSMax:I

.field protected mDefaultPreviewFPSMin:I

.field protected mImageStabilizationEnable:Z

.field protected mIsServiceMode:Z

.field protected mPreferences:Landroid/content/SharedPreferences;

.field protected mProfileFileName:Ljava/lang/String;

.field protected mVideoStabilization:Z

.field protected mVideoStabilizationDemoSupported:Z

.field protected mVideoStabilizationSupported:Z

.field protected mWDREnable:Z

.field protected mWdrForVideo:Z

.field public serviceModeResolution:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/motorola/Camera/CamSetting/CamSetting;->getExternalAltStorageDirectory()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/Camera/CamSetting/CamSetting;->SDCARD_EXT:Ljava/lang/String;

    .line 73
    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/Camera/CamSetting/CamSetting;->mIsBackCamera:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "tx"

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilizationSupported:Z

    .line 64
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilizationDemoSupported:Z

    .line 67
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilization:Z

    .line 76
    const-string v0, "OneMP"

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->serviceModeResolution:Ljava/lang/String;

    .line 80
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mWDREnable:Z

    .line 82
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mWdrForVideo:Z

    .line 90
    if-eqz p1, :cond_0

    .line 92
    sput-object p1, Lcom/motorola/Camera/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    .line 95
    :cond_0
    return-void
.end method

.method public static getExternalAltStorageDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, altStorageDir:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/android/storage/MotoEnvironment;->getExternalAltStorageDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    invoke-static {}, Lcom/motorola/android/storage/MotoEnvironment;->getExternalAltStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract enableAutoFocus()V
.end method

.method public abstract enableDynamicFocus()V
.end method

.method public abstract getAllowedExpValues()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllowedISOValues()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAudioBitrate()I
.end method

.method public abstract getCurrentEffect()I
.end method

.method public abstract getCurrentExpValue()Ljava/lang/String;
.end method

.method public abstract getCurrentFlash()I
.end method

.method public abstract getCurrentIsoValue()Ljava/lang/String;
.end method

.method public abstract getCurrentPanResDimension()Ljava/lang/String;
.end method

.method public abstract getCurrentScene()I
.end method

.method public abstract getCurrentSingleShotRes()Ljava/lang/String;
.end method

.method public abstract getCurrentVideoResDimensions()Ljava/lang/String;
.end method

.method getDefaultMinFPS()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMin:I

    return v0
.end method

.method public abstract getFlashModes()Ljava/lang/String;
.end method

.method public abstract getFocusModes()Ljava/lang/String;
.end method

.method public abstract getFocusOption()Ljava/lang/String;
.end method

.method public abstract getFocusViewHeight()F
.end method

.method public abstract getFocusViewWidth()F
.end method

.method public abstract getImagerOrientation()I
.end method

.method public abstract getIsoValues()Ljava/lang/String;
.end method

.method public abstract getMaxPanResDimension()Ljava/lang/String;
.end method

.method public abstract getMaxPicResolution()Ljava/lang/String;
.end method

.method public abstract getModeCount()I
.end method

.method public abstract getModeCountCamcorder()I
.end method

.method public abstract getNormalModePicResolution()Ljava/lang/String;
.end method

.method public abstract getPicResolution()Ljava/lang/String;
.end method

.method public getReviewTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string v0, "0"

    return-object v0
.end method

.method public abstract getSceneCountCamcorder()I
.end method

.method public abstract getSceneCountCamera()I
.end method

.method public abstract getSensorVidResList()Ljava/lang/String;
.end method

.method public abstract getStitchMode()Ljava/lang/String;
.end method

.method public abstract getSupportEffectsTitle()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportEffectsValues()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedEffects()Ljava/lang/String;
.end method

.method public abstract getSupportedEffectsImg()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedScenes()Ljava/lang/String;
.end method

.method public abstract getVideoBitrate()I
.end method

.method public abstract getVideoResolution()Ljava/lang/String;
.end method

.method public abstract getVideoResolutionEntries()[Ljava/lang/CharSequence;
.end method

.method public abstract getVideoResolutionSummaries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoResolutionTextIcons()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoResolutionValues()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getVideoStabilization()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilization:Z

    return v0
.end method

.method public getVideoStabilizationDemoSupported()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilizationDemoSupported:Z

    return v0
.end method

.method public getVideoStabilizationSupported()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilizationSupported:Z

    return v0
.end method

.method public abstract getWSPicResolution()Ljava/lang/String;
.end method

.method public abstract getZoomNum()I
.end method

.method public abstract getcurrentExposure()Ljava/lang/String;
.end method

.method public abstract getcurrentISO()Ljava/lang/String;
.end method

.method public abstract isAudioZoomOn()Z
.end method

.method public abstract isAutoFocusSupported()Z
.end method

.method public abstract isContinuousFocusEnabled()Z
.end method

.method public abstract isDynamicFocusSupported()Z
.end method

.method public abstract isFaceDetectionEnable()Z
.end method

.method public abstract isFaceTrackingOn()Z
.end method

.method public abstract isHDRSupported()Z
.end method

.method public isImageStabilizationEnabled()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mImageStabilizationEnable:Z

    return v0
.end method

.method public abstract isInScroll()Z
.end method

.method public abstract isInfiniteFocus()Z
.end method

.method public abstract isMultishotEnable()Z
.end method

.method public abstract isPanoramaFeatureEnable()Z
.end method

.method public abstract isSDEncryptionEnabled()Z
.end method

.method public abstract isTorchSupported()Z
.end method

.method public isWDREnabled()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mWDREnable:Z

    return v0
.end method

.method public isWdrForVideo()Z
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mWdrForVideo:Z

    return v0
.end method

.method public abstract isWideScreenDisplay()Z
.end method

.method public abstract isZoomSupported()Z
.end method

.method public abstract loadAutoDetectValues()V
.end method

.method public abstract loadSettingInit()V
.end method

.method public resetContext(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 121
    sget-object v0, Lcom/motorola/Camera/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    if-ne v0, p1, :cond_0

    .line 122
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/Camera/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    .line 124
    :cond_0
    return-void
.end method

.method public abstract save()V
.end method

.method public abstract setAESSensorVidResList(Ljava/lang/String;)V
.end method

.method public abstract setAudioBitrate(I)V
.end method

.method public abstract setAudioZoom(Z)V
.end method

.method public abstract setCamcorderAESProps(Z)V
.end method

.method public setCurrentAppMode(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 134
    sget-object v0, Lcom/motorola/Camera/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    .line 135
    sput-object p1, Lcom/motorola/Camera/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    .line 136
    sget-object v0, Lcom/motorola/Camera/CamSetting/CamSetting;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mProfileFileName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mPreferences:Landroid/content/SharedPreferences;

    .line 140
    :cond_0
    iput p2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    .line 141
    return-void
.end method

.method public abstract setCurrentBurstModeRes(Ljava/lang/String;)V
.end method

.method public abstract setCurrentEffect(I)V
.end method

.method public abstract setCurrentExpValue(Ljava/lang/String;)V
.end method

.method public abstract setCurrentFlash(I)V
.end method

.method public abstract setCurrentFocusOption(Ljava/lang/String;)V
.end method

.method public abstract setCurrentIsoValue(Ljava/lang/String;)V
.end method

.method public setCurrentMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 316
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentCameraMode:I

    .line 317
    return-void
.end method

.method public abstract setCurrentPanResDimension(Ljava/lang/String;)V
.end method

.method public abstract setCurrentResolution(Z)V
.end method

.method public abstract setCurrentScene(I)V
.end method

.method public abstract setCurrentSingleShotRes(Ljava/lang/String;)V
.end method

.method public abstract setCurrentStitchMode(Ljava/lang/String;)V
.end method

.method public abstract setCurrentVideoRes(Ljava/lang/String;)V
.end method

.method public abstract setDefaultAESVideoResolution()V
.end method

.method setDefaultFPSRange(II)V
    .locals 0
    .parameter "fpsRangeMin"
    .parameter "fpsRangeMax"

    .prologue
    .line 388
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMin:I

    .line 389
    iput p2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMax:I

    .line 390
    return-void
.end method

.method public abstract setDefaultVideoResolution()V
.end method

.method public abstract setDefaultZoomValue()V
.end method

.method public abstract setFaceDetectionEnable(Z)V
.end method

.method public abstract setFaceTracking(Z)V
.end method

.method public abstract setFlashModes(Ljava/lang/String;)V
.end method

.method public abstract setFocusModes(Ljava/lang/String;)V
.end method

.method public abstract setFocusViewHeight(F)V
.end method

.method public abstract setFocusViewWidth(F)V
.end method

.method public abstract setHDRSupport(Z)V
.end method

.method public setImageStabilization(Z)V
    .locals 0
    .parameter "imageStabilizationEnable"

    .prologue
    .line 364
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mImageStabilizationEnable:Z

    .line 365
    return-void
.end method

.method public abstract setImagerOrientation(I)V
.end method

.method public abstract setInScroll(Z)V
.end method

.method public abstract setIsoValues(Ljava/lang/String;)V
.end method

.method public abstract setMaxPanResDimension(Ljava/lang/String;)V
.end method

.method public abstract setMaxPicResolution(Ljava/lang/String;)V
.end method

.method public abstract setMaxWSPicResolution(Ljava/lang/String;)V
.end method

.method public abstract setMultishotEnable(Z)V
.end method

.method public abstract setPanoramaFeatureEnable()V
.end method

.method public abstract setSensorVidResList(Ljava/lang/String;)V
.end method

.method public setServiceMode(Z)V
    .locals 0
    .parameter "setting"

    .prologue
    .line 312
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mIsServiceMode:Z

    .line 313
    return-void
.end method

.method public setServiceModeResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->serviceModeResolution:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public abstract setSupportedEffects(Ljava/lang/String;)V
.end method

.method public abstract setSupportedScenes(Ljava/lang/String;)V
.end method

.method public abstract setTorchSupported(Z)V
.end method

.method public abstract setVideoBitrate(I)V
.end method

.method public abstract setVideoResolutionService(Ljava/lang/String;)V
.end method

.method public abstract setVideoStabilization(Z)V
.end method

.method public setVideoStabilizationDemoSupported(Z)V
    .locals 0
    .parameter "support"

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilizationDemoSupported:Z

    .line 349
    return-void
.end method

.method public abstract setVideoStabilizationSupported(Z)V
.end method

.method public setWDREnable(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mWDREnable:Z

    .line 373
    return-void
.end method

.method public setWdrForVideo(Z)V
    .locals 0
    .parameter "wdrForVideo"

    .prologue
    .line 384
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mWdrForVideo:Z

    .line 385
    return-void
.end method

.method public abstract setWideScreenDisplay(Z)V
.end method

.method public abstract setZoomNum(I)V
.end method

.method public abstract setZoomSupport(Z)V
.end method
