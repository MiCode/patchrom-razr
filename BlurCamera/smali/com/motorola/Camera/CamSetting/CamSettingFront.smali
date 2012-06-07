.class public Lcom/motorola/Camera/CamSetting/CamSettingFront;
.super Lcom/motorola/Camera/CamSetting/CamSetting;
.source "CamSettingFront.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MotoCamSettingFront"

.field protected static sSelf:Lcom/motorola/Camera/CamSetting/CamSettingFront;


# instance fields
.field private AESSensorVidResolutions:Ljava/lang/String;

.field private currentAESResolution:Ljava/lang/String;

.field private currentBurstModeResolution:Ljava/lang/String;

.field private currentEffect:I

.field private currentEffectV:I

.field private currentExpValue:Ljava/lang/String;

.field private currentFocusValue:Ljava/lang/String;

.field private currentIsoValue:Ljava/lang/String;

.field private currentReslVService:Ljava/lang/String;

.field private currentSingleShotResolution:Ljava/lang/String;

.field private currentVideoResolution:Ljava/lang/String;

.field private currentZoom:I

.field private currentZoomV:I

.field private effectsImg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private effectsTitle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private effectsValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private expValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private featureFaceDetectionEnabled:Z

.field private featureMultishotEnabled:Z

.field private focusViewHeight:F

.field private focusViewWidth:F

.field private isHDRCapable:Z

.field private isInfiniteFocus:Z

.field private isoValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioBitrate:I

.field public mAutoFocusAvailable:Z

.field private mDynamicFocusAvailable:Z

.field private mExpCompensationStep:F

.field private mImagerOrientation:I

.field private mInScroll:Z

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mSDEncryptionEnabled:Z

.field private mSupportedEffects:Ljava/lang/String;

.field private mVideoBitrate:I

.field private mWSResolution:Ljava/lang/String;

.field private mWideScreenDisplay:Z

.field private maxExpCompensationIndex:I

.field private maxPicResolution:Ljava/lang/String;

.field private minExpCompensationIndex:I

.field private minPicResolution:Ljava/lang/String;

.field private misTrackingFace:Z

.field private mode_num:I

.field private sensorFlashModes:Ljava/lang/String;

.field private sensorFocusModes:Ljava/lang/String;

.field private sensorIsoValues:Ljava/lang/String;

.field private sensorSupportedVidResList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sensorVidResolutions:Ljava/lang/String;

.field private videoResolutionEntries:[Ljava/lang/CharSequence;

.field private videoResolutionSummaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private videoResolutionTextIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videoResolutionValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zoomSupported:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "tx"

    .prologue
    const/high16 v0, 0x42c8

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;-><init>(Landroid/content/Context;)V

    .line 47
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mInScroll:Z

    .line 50
    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->focusViewWidth:F

    .line 51
    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->focusViewHeight:F

    .line 53
    iput v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mode_num:I

    .line 67
    iput v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentZoom:I

    .line 74
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->isInfiniteFocus:Z

    .line 75
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->misTrackingFace:Z

    .line 77
    iput v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentZoomV:I

    .line 87
    const-string v0, "QVGA"

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentReslVService:Ljava/lang/String;

    .line 97
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mAutoFocusAvailable:Z

    .line 98
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mDynamicFocusAvailable:Z

    .line 109
    const v0, 0x3d0900

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mVideoBitrate:I

    .line 110
    const v0, 0x17700

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mAudioBitrate:I

    .line 126
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->isHDRCapable:Z

    .line 131
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSDEncryptionEnabled:Z

    .line 153
    if-eqz p1, :cond_0

    .line 155
    const-string v0, "com.motorola.Camera_preferences_front"

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mProfileFileName:Ljava/lang/String;

    .line 158
    const-string v0, "com.motorola.Camera_preferences_front"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    .line 162
    invoke-direct {p0}, Lcom/motorola/Camera/CamSetting/CamSettingFront;->load()V

    .line 163
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CamSettingFront;->loadSettingInit()V

    .line 164
    invoke-direct {p0}, Lcom/motorola/Camera/CamSetting/CamSettingFront;->loadRunTimeProperties()V

    .line 169
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CamSettingFront;
    .locals 2
    .parameter "context"

    .prologue
    .line 172
    const-class v1, Lcom/motorola/Camera/CamSetting/CamSettingFront;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sput-object p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    .line 173
    :cond_0
    sget-object v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sSelf:Lcom/motorola/Camera/CamSetting/CamSettingFront;

    if-nez v0, :cond_1

    .line 174
    new-instance v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/CamSetting/CamSettingFront;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sSelf:Lcom/motorola/Camera/CamSetting/CamSettingFront;

    .line 176
    :cond_1
    sget-object v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sSelf:Lcom/motorola/Camera/CamSetting/CamSettingFront;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private load()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 339
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 340
    const-string v0, "MotoCamSettingFront"

    const-string v1, "load() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "maxPicResolution"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->maxPicResolution:Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mWSResolution"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mWSResolution:Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sensorVidResolutions"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorVidResolutions:Ljava/lang/String;

    .line 350
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AESSensorVidResolutions"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->AESSensorVidResolutions:Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentSingleShotResolution"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentSingleShotResolution:Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentBurstModeResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentSingleShotResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentBurstModeResolution:Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentVideoResolution"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentVideoResolution:Ljava/lang/String;

    .line 362
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentAESResolution"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentAESResolution:Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentFaceTracking"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->misTrackingFace:Z

    .line 368
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentEffect"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentEffect:I

    .line 371
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sensorFlashModes"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorFlashModes:Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sensorFocusModes"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorFocusModes:Ljava/lang/String;

    .line 373
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mImagerOrientation"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mImagerOrientation:I

    .line 376
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentEffectVideo"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentEffectV:I

    .line 378
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->SHOW_ISO_SETTING:Z

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sensorIsoValues"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorIsoValues:Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentIsoValue"

    const-string v2, "auto"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentIsoValue:Ljava/lang/String;

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentExpValue"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentExpValue:Ljava/lang/String;

    .line 387
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MinExpIndex"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->minExpCompensationIndex:I

    .line 388
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MaxExpIndex"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->maxExpCompensationIndex:I

    .line 390
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mAutoFocusAvailable"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mAutoFocusAvailable:Z

    .line 391
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mSupportedEffects"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSupportedEffects:Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "zoomSupported"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->zoomSupported:Z

    .line 396
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Video Stabilization Support"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilizationSupported:Z

    .line 398
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Video-Stabilization"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilization:Z

    .line 401
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mWideScreenDisplay"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mWideScreenDisplay:Z

    .line 405
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mImageStabilizationEnable"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mImageStabilizationEnable:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mImageStabilizationEnable:Z

    .line 407
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mWDREnable"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mWDREnable:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mWDREnable:Z

    .line 409
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentFocusValue"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentFocusValue:Ljava/lang/String;

    .line 411
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mDefaultPreviewFPSMin"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMin:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMin:I

    .line 412
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mDefaultPreviewFPSMax"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMax:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMax:I

    .line 414
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 415
    const-string v0, "MotoCamSettingFront"

    const-string v1, "load() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_2
    return-void
.end method

.method private loadRunTimeProperties()V
    .locals 0

    .prologue
    .line 420
    return-void
.end method


# virtual methods
.method public enableAutoFocus()V
    .locals 1

    .prologue
    .line 1004
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mAutoFocusAvailable:Z

    .line 1006
    return-void
.end method

.method public enableDynamicFocus()V
    .locals 1

    .prologue
    .line 1016
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mDynamicFocusAvailable:Z

    .line 1017
    return-void
.end method

.method public getAllowedExpValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->expValues:Ljava/util/List;

    return-object v0
.end method

.method public getAllowedISOValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 998
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->isoValues:Ljava/util/List;

    return-object v0
.end method

.method public getAudioBitrate()I
    .locals 1

    .prologue
    .line 922
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mAudioBitrate:I

    return v0
.end method

.method public getCurrentEffect()I
    .locals 2

    .prologue
    .line 650
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 652
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentEffect:I

    .line 660
    :goto_0
    return v0

    .line 654
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 656
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentEffectV:I

    goto :goto_0

    .line 660
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentExpValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentExpValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentFlash()I
    .locals 1

    .prologue
    .line 667
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentIsoValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentIsoValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPanResDimension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 771
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentScene()I
    .locals 1

    .prologue
    .line 644
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentSingleShotRes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CamSettingFront;->getPicResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentVideoResDimensions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSDEncryptionEnabled:Z

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentAESResolution:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 481
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentVideoResolution:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExpCompensationStep()F
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mExpCompensationStep:F

    return v0
.end method

.method public getFlashModes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorFlashModes:Ljava/lang/String;

    return-object v0
.end method

.method public getFocusModes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorFocusModes:Ljava/lang/String;

    return-object v0
.end method

.method public getFocusOption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentFocusValue:Ljava/lang/String;

    return-object v0
.end method

.method public getFocusViewHeight()F
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->focusViewHeight:F

    return v0
.end method

.method public getFocusViewWidth()F
    .locals 1

    .prologue
    .line 613
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->focusViewWidth:F

    return v0
.end method

.method public getImagerOrientation()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mImagerOrientation:I

    return v0
.end method

.method public getIsoValues()Ljava/lang/String;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorIsoValues:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxExpCompensationIndex()I
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->maxExpCompensationIndex:I

    return v0
.end method

.method public getMaxPanResDimension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 779
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxPicResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->maxPicResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getMinExpCompensationIndex()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->minExpCompensationIndex:I

    return v0
.end method

.method public getMinPicResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->minPicResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getModeCount()I
    .locals 1

    .prologue
    .line 976
    const/4 v0, 0x1

    return v0
.end method

.method public getModeCountCamcorder()I
    .locals 1

    .prologue
    .line 979
    const/4 v0, 0x0

    return v0
.end method

.method public getNormalModePicResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentSingleShotResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getPicResolution()Ljava/lang/String;
    .locals 2

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mIsServiceMode:Z

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->serviceModeResolution:Ljava/lang/String;

    .line 685
    :goto_0
    return-object v0

    .line 679
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentCameraMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 681
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentBurstModeResolution:Ljava/lang/String;

    goto :goto_0

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentSingleShotResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSceneCountCamcorder()I
    .locals 1

    .prologue
    .line 972
    const/4 v0, 0x1

    return v0
.end method

.method public getSceneCountCamera()I
    .locals 1

    .prologue
    .line 969
    const/4 v0, 0x1

    return v0
.end method

.method public getSensorVidResList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 715
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSDEncryptionEnabled:Z

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->AESSensorVidResolutions:Ljava/lang/String;

    .line 718
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorVidResolutions:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStitchMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 788
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportEffectsTitle()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->effectsTitle:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSupportEffectsValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->effectsValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSupportedEffects()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSupportedEffects:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedEffectsImg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->effectsImg:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSupportedScenes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 940
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoBitrate()I
    .locals 1

    .prologue
    .line 914
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mVideoBitrate:I

    return v0
.end method

.method public getVideoResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 825
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mIsServiceMode:Z

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentReslVService:Ljava/lang/String;

    .line 830
    :goto_0
    return-object v0

    .line 827
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSDEncryptionEnabled:Z

    if-eqz v0, :cond_1

    .line 828
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentAESResolution:Ljava/lang/String;

    goto :goto_0

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentVideoResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVideoResolutionEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->videoResolutionEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getVideoResolutionSummaries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 994
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->videoResolutionSummaries:Ljava/util/List;

    return-object v0
.end method

.method public getVideoResolutionTextIcons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 987
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->videoResolutionTextIcons:Ljava/util/List;

    return-object v0
.end method

.method public getVideoResolutionValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 984
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->videoResolutionValues:Ljava/util/List;

    return-object v0
.end method

.method public getWSPicResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mWSResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getZoomNum()I
    .locals 2

    .prologue
    .line 632
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 633
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentZoom:I

    .line 637
    :goto_0
    return v0

    .line 634
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 635
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentZoomV:I

    goto :goto_0

    .line 637
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getcurrentExposure()Ljava/lang/String;
    .locals 3

    .prologue
    .line 902
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Exposure"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getcurrentISO()Ljava/lang/String;
    .locals 3

    .prologue
    .line 897
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ISO equivalent senstivity"

    const-string v2, "auto"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAudioZoomOn()Z
    .locals 1

    .prologue
    .line 795
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoFocusSupported()Z
    .locals 1

    .prologue
    .line 1008
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mAutoFocusAvailable:Z

    return v0
.end method

.method public isContinuousFocusEnabled()Z
    .locals 1

    .prologue
    .line 1036
    const/4 v0, 0x0

    return v0
.end method

.method public isContinuousFocusSupported()Z
    .locals 1

    .prologue
    .line 1040
    const/4 v0, 0x0

    return v0
.end method

.method public isDynamicFocusSupported()Z
    .locals 1

    .prologue
    .line 1012
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mDynamicFocusAvailable:Z

    return v0
.end method

.method public isFaceDetectionEnable()Z
    .locals 1

    .prologue
    .line 952
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->featureFaceDetectionEnabled:Z

    return v0
.end method

.method public isFaceTrackingOn()Z
    .locals 3

    .prologue
    .line 807
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Face Detection"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHDRSupported()Z
    .locals 1

    .prologue
    .line 1115
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->isHDRCapable:Z

    return v0
.end method

.method public isInScroll()Z
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mInScroll:Z

    return v0
.end method

.method public isInfiniteFocus()Z
    .locals 1

    .prologue
    .line 906
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->isInfiniteFocus:Z

    return v0
.end method

.method public isMultishotEnable()Z
    .locals 1

    .prologue
    .line 946
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->featureMultishotEnabled:Z

    return v0
.end method

.method public isPanoramaFeatureEnable()Z
    .locals 1

    .prologue
    .line 958
    const/4 v0, 0x0

    return v0
.end method

.method public isSDEncryptionEnabled()Z
    .locals 1

    .prologue
    .line 1105
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSDEncryptionEnabled:Z

    return v0
.end method

.method public isTorchSupported()Z
    .locals 1

    .prologue
    .line 962
    const/4 v0, 0x0

    return v0
.end method

.method public isWideScreenDisplay()Z
    .locals 1

    .prologue
    .line 1137
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mWideScreenDisplay:Z

    return v0
.end method

.method public isZoomSupported()Z
    .locals 1

    .prologue
    .line 1025
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->zoomSupported:Z

    return v0
.end method

.method public loadAutoDetectValues()V
    .locals 18

    .prologue
    .line 200
    sget-boolean v15, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v15, :cond_0

    .line 202
    const-string v15, "MotoCamSettingFront"

    const-string v16, "loadAutoDetectValues() - Enter"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v2, entriesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    monitor-enter p0

    .line 211
    :try_start_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->videoResolutionValues:Ljava/util/List;

    .line 212
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->videoResolutionSummaries:Ljava/util/List;

    .line 213
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->videoResolutionTextIcons:Ljava/util/List;

    .line 220
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 222
    sget-object v15, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070018

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 223
    .local v6, resArr:[Ljava/lang/String;
    sget-object v15, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070019

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 224
    .local v7, resName:[Ljava/lang/String;
    sget-object v15, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f07001b

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 225
    .local v10, resValue:[Ljava/lang/String;
    sget-object v15, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f07001a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 226
    .local v8, resSummary:[Ljava/lang/String;
    sget-object v15, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f07001e

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 227
    .local v9, resTextIcons:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/CamSetting/CamSettingFront;->getSensorVidResList()Ljava/lang/String;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 228
    .local v11, temp:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v15, v11

    if-ge v3, v15, :cond_3

    .line 230
    const/4 v4, 0x0

    .local v4, ind:I
    :goto_1
    array-length v15, v6

    if-ge v4, v15, :cond_1

    .line 232
    aget-object v15, v11, v3

    aget-object v16, v6, v4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 234
    aget-object v15, v7, v4

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->videoResolutionValues:Ljava/util/List;

    aget-object v16, v10, v4

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->videoResolutionSummaries:Ljava/util/List;

    aget-object v16, v8, v4

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->videoResolutionTextIcons:Ljava/util/List;

    aget-object v16, v9, v4

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 230
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 244
    .end local v4           #ind:I
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->videoResolutionEntries:[Ljava/lang/CharSequence;

    .line 245
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->videoResolutionEntries:[Ljava/lang/CharSequence;

    invoke-interface {v2, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 248
    sget-boolean v15, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v15, :cond_4

    .line 249
    const-string v15, "MotoCamSettingFront"

    const-string v16, "Notify resolution setup completed vidResolutionImgs"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 253
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    sget-boolean v15, Lcom/motorola/Camera/CameraGlobalType;->SHOW_ISO_SETTING:Z

    if-eqz v15, :cond_8

    .line 258
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->isoValues:Ljava/util/List;

    .line 259
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorIsoValues:Ljava/lang/String;

    if-eqz v15, :cond_7

    .line 260
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorIsoValues:Ljava/lang/String;

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 261
    .local v14, tempIso:[Ljava/lang/String;
    const/4 v3, 0x0

    :goto_2
    array-length v15, v14

    if-ge v3, v15, :cond_8

    .line 263
    const/4 v5, 0x0

    .local v5, indIso:I
    :goto_3
    sget-object v15, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f07003a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    array-length v15, v15

    if-ge v5, v15, :cond_5

    .line 265
    aget-object v15, v14, v3

    sget-object v16, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f07003a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    aget-object v16, v16, v5

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 267
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->isoValues:Ljava/util/List;

    sget-object v16, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f07003a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    aget-object v16, v16, v5

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 253
    .end local v3           #i:I
    .end local v5           #indIso:I
    .end local v6           #resArr:[Ljava/lang/String;
    .end local v7           #resName:[Ljava/lang/String;
    .end local v8           #resSummary:[Ljava/lang/String;
    .end local v9           #resTextIcons:[Ljava/lang/String;
    .end local v10           #resValue:[Ljava/lang/String;
    .end local v11           #temp:[Ljava/lang/String;
    .end local v14           #tempIso:[Ljava/lang/String;
    :catchall_0
    move-exception v15

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    .line 263
    .restart local v3       #i:I
    .restart local v5       #indIso:I
    .restart local v6       #resArr:[Ljava/lang/String;
    .restart local v7       #resName:[Ljava/lang/String;
    .restart local v8       #resSummary:[Ljava/lang/String;
    .restart local v9       #resTextIcons:[Ljava/lang/String;
    .restart local v10       #resValue:[Ljava/lang/String;
    .restart local v11       #temp:[Ljava/lang/String;
    .restart local v14       #tempIso:[Ljava/lang/String;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 274
    .end local v5           #indIso:I
    .end local v14           #tempIso:[Ljava/lang/String;
    :cond_7
    const-string v15, "MotoCamSettingFront"

    const-string v16, "CamSetting: In loadAutoDetectValues -  Sensor returned null, loading the default iso values"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v5, 0x0

    .restart local v5       #indIso:I
    :goto_4
    sget-object v15, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f07003a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    array-length v15, v15

    if-ge v5, v15, :cond_8

    .line 277
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->isoValues:Ljava/util/List;

    sget-object v16, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f07003a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    aget-object v16, v16, v5

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 283
    .end local v5           #indIso:I
    :cond_8
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->expValues:Ljava/util/List;

    .line 284
    move-object/from16 v0, p0

    iget v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->minExpCompensationIndex:I

    if-nez v15, :cond_9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->maxExpCompensationIndex:I

    if-eqz v15, :cond_b

    .line 302
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSupportedEffects:Ljava/lang/String;

    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSupportedEffects:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_e

    .line 304
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->effectsValues:Ljava/util/ArrayList;

    .line 305
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->effectsTitle:Ljava/util/ArrayList;

    .line 306
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->effectsImg:Ljava/util/ArrayList;

    .line 307
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSupportedEffects:Ljava/lang/String;

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 308
    .local v12, tempEffects:[Ljava/lang/String;
    sget-object v15, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f07002b

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, effectsArray:[Ljava/lang/String;
    sget-object v15, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f07002d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 310
    .local v13, tempEffectsImg:[Ljava/lang/String;
    const/4 v3, 0x0

    :goto_6
    array-length v15, v1

    if-ge v3, v15, :cond_d

    .line 313
    const/4 v4, 0x0

    .restart local v4       #ind:I
    :goto_7
    array-length v15, v12

    if-ge v4, v15, :cond_a

    .line 315
    aget-object v15, v1, v3

    aget-object v16, v12, v4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 317
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->effectsValues:Ljava/util/ArrayList;

    aget-object v16, v1, v3

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->effectsImg:Ljava/util/ArrayList;

    aget-object v16, v13, v3

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->effectsTitle:Ljava/util/ArrayList;

    sget-object v16, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f07002c

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    aget-object v16, v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 296
    .end local v1           #effectsArray:[Ljava/lang/String;
    .end local v4           #ind:I
    .end local v12           #tempEffects:[Ljava/lang/String;
    .end local v13           #tempEffectsImg:[Ljava/lang/String;
    :cond_b
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->expValues:Ljava/util/List;

    goto/16 :goto_5

    .line 313
    .restart local v1       #effectsArray:[Ljava/lang/String;
    .restart local v4       #ind:I
    .restart local v12       #tempEffects:[Ljava/lang/String;
    .restart local v13       #tempEffectsImg:[Ljava/lang/String;
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 325
    .end local v4           #ind:I
    :cond_d
    const-string v15, "MotoCamSettingFront"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "effectsValues"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->effectsValues:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v15, "MotoCamSettingFront"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "effectsTitle"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->effectsTitle:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .end local v1           #effectsArray:[Ljava/lang/String;
    .end local v12           #tempEffects:[Ljava/lang/String;
    .end local v13           #tempEffectsImg:[Ljava/lang/String;
    :cond_e
    sget-boolean v15, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v15, :cond_f

    .line 332
    const-string v15, "MotoCamSettingFront"

    const-string v16, "loadAutoDetectValues() - Exit"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_f
    return-void
.end method

.method public loadSettingInit()V
    .locals 3

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 185
    .local v0, i:I
    sget-object v1, Lcom/motorola/Camera/CameraGlobalType;->modeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 187
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 188
    sget-object v1, Lcom/motorola/Camera/CameraGlobalType;->modeList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_0
    sget-object v1, Lcom/motorola/Camera/CameraGlobalType;->modeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mode_num:I

    .line 192
    return-void
.end method

.method public save()V
    .locals 3

    .prologue
    .line 425
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 426
    const-string v1, "MotoCamSettingFront"

    const-string v2, "save() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 432
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "currentEffect"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentEffect:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 434
    const-string v1, "maxPicResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->maxPicResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 435
    const-string v1, "minPicResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->minPicResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 436
    const-string v1, "mWSResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mWSResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 437
    const-string v1, "sensorVidResolutions"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorVidResolutions:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 438
    const-string v1, "AESSensorVidResolutions"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->AESSensorVidResolutions:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 439
    const-string v1, "currentSingleShotResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentSingleShotResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 440
    const-string v1, "currentBurstModeResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentBurstModeResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 441
    const-string v1, "currentVideoResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentVideoResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 442
    const-string v1, "currentAESResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentAESResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 445
    const-string v1, "currentEffectVideo"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentEffectV:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 448
    const-string v1, "currentFaceTracking"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->misTrackingFace:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 449
    const-string v1, "sensorFlashModes"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorFlashModes:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 450
    const-string v1, "sensorFocusModes"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorFocusModes:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 451
    const-string v1, "mImagerOrientation"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mImagerOrientation:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 453
    const-string v1, "currentExpValue"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentExpValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 455
    const-string v1, "mAutoFocusAvailable"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mAutoFocusAvailable:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 456
    const-string v1, "mSupportedEffects"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSupportedEffects:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 458
    const-string v1, "zoomSupported"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->zoomSupported:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 460
    const-string v1, "mWideScreenDisplay"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mWideScreenDisplay:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 461
    const-string v1, "mImageStabilizationEnable"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mImageStabilizationEnable:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 462
    const-string v1, "mWDREnable"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mWDREnable:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 463
    const-string v1, "currentFocusValue"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentFocusValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 465
    const-string v1, "mDefaultPreviewFPSMax"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMax:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 466
    const-string v1, "mDefaultPreviewFPSMin"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMin:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 469
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 471
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    .line 472
    const-string v1, "MotoCamSettingFront"

    const-string v2, "save() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_1
    return-void
.end method

.method public setAESSensorVidResList(Ljava/lang/String;)V
    .locals 0
    .parameter "newres"

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->AESSensorVidResolutions:Ljava/lang/String;

    .line 1066
    return-void
.end method

.method public setAudioBitrate(I)V
    .locals 0
    .parameter "bitrate"

    .prologue
    .line 918
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mAudioBitrate:I

    .line 919
    return-void
.end method

.method public setAudioZoom(Z)V
    .locals 0
    .parameter "toggle"

    .prologue
    .line 802
    return-void
.end method

.method public setCamcorderAESProps(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1069
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSDEncryptionEnabled:Z

    .line 1071
    return-void
.end method

.method public declared-synchronized setCurrentAppMode(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 760
    monitor-enter p0

    :try_start_0
    const-string v0, "MotoCamSettingFront"

    const-string v1, "setCurrentAppMode CamSettingFront"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-super {p0, p1, p2}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentAppMode(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    monitor-exit p0

    return-void

    .line 760
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCurrentBurstModeRes(Ljava/lang/String;)V
    .locals 0
    .parameter "newRes"

    .prologue
    .line 510
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentBurstModeResolution:Ljava/lang/String;

    .line 511
    return-void
.end method

.method public setCurrentEffect(I)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 875
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_1

    .line 877
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentEffect:I

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 881
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentEffectV:I

    goto :goto_0
.end method

.method public setCurrentExpValue(Ljava/lang/String;)V
    .locals 0
    .parameter "newExp"

    .prologue
    .line 530
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentExpValue:Ljava/lang/String;

    .line 531
    return-void
.end method

.method public setCurrentFlash(I)V
    .locals 0
    .parameter "flash"

    .prologue
    .line 893
    return-void
.end method

.method public setCurrentFocusOption(Ljava/lang/String;)V
    .locals 0
    .parameter "focus"

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentFocusValue:Ljava/lang/String;

    .line 1030
    return-void
.end method

.method public setCurrentIsoValue(Ljava/lang/String;)V
    .locals 0
    .parameter "newIso"

    .prologue
    .line 520
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentIsoValue:Ljava/lang/String;

    .line 521
    return-void
.end method

.method public setCurrentPanResDimension(Ljava/lang/String;)V
    .locals 0
    .parameter "currPanResDim"

    .prologue
    .line 776
    return-void
.end method

.method public setCurrentResolution(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1129
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mWSResolution:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/Camera/CamSetting/CamSettingFront;->setCurrentSingleShotRes(Ljava/lang/String;)V

    .line 1130
    return-void

    .line 1129
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->maxPicResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCurrentScene(I)V
    .locals 0
    .parameter "scene"

    .prologue
    .line 871
    return-void
.end method

.method public setCurrentSingleShotRes(Ljava/lang/String;)V
    .locals 0
    .parameter "newRes"

    .prologue
    .line 505
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentSingleShotResolution:Ljava/lang/String;

    .line 506
    return-void
.end method

.method public setCurrentStitchMode(Ljava/lang/String;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 888
    return-void
.end method

.method public setCurrentVideoRes(Ljava/lang/String;)V
    .locals 1
    .parameter "newRes"

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSDEncryptionEnabled:Z

    if-eqz v0, :cond_0

    .line 488
    invoke-static {p1}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentAESResolution:Ljava/lang/String;

    .line 491
    :goto_0
    return-void

    .line 490
    :cond_0
    invoke-static {p1}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentVideoResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDefaultAESVideoResolution()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1074
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentAESResolution:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1075
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->AESSensorVidResolutions:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1076
    .local v1, temp:[Ljava/lang/String;
    aget-object v2, v1, v4

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentAESResolution:Ljava/lang/String;

    .line 1085
    .end local v1           #temp:[Ljava/lang/String;
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCamSettingFront"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultVideoResolution() - currentAESResolution "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentAESResolution:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_1
    return-void

    .line 1080
    :cond_2
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentAESResolution:Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1081
    .local v0, currAESResDimension:Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->AESSensorVidResolutions:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1082
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->AESSensorVidResolutions:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentAESResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDefaultVideoResolution()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1089
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentVideoResolution:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1090
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorVidResolutions:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1091
    .local v1, temp:[Ljava/lang/String;
    aget-object v2, v1, v4

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentVideoResolution:Ljava/lang/String;

    .line 1101
    .end local v1           #temp:[Ljava/lang/String;
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCamSettingFront"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultVideoResolution() - setCurrentVideoRes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentVideoResolution:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_1
    return-void

    .line 1095
    :cond_2
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentVideoResolution:Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1096
    .local v0, currVidResDimension:Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorVidResolutions:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1097
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorVidResolutions:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentVideoResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDefaultZoomValue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 859
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_1

    .line 861
    iput v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentZoom:I

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 865
    iput v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentZoomV:I

    goto :goto_0
.end method

.method public setExpCompensationStep(F)V
    .locals 0
    .parameter "expCompensationStep"

    .prologue
    .line 558
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mExpCompensationStep:F

    .line 559
    return-void
.end method

.method public setFaceDetectionEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 842
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->featureFaceDetectionEnabled:Z

    .line 843
    return-void
.end method

.method public setFaceTracking(Z)V
    .locals 3
    .parameter "toggle"

    .prologue
    .line 814
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->misTrackingFace:Z

    .line 815
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamSettingFront"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set misFaceTracking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_0
    return-void
.end method

.method public setFlashModes(Ljava/lang/String;)V
    .locals 0
    .parameter "modes"

    .prologue
    .line 744
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorFlashModes:Ljava/lang/String;

    .line 745
    return-void
.end method

.method public setFocusModes(Ljava/lang/String;)V
    .locals 0
    .parameter "modes"

    .prologue
    .line 734
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorFocusModes:Ljava/lang/String;

    .line 735
    return-void
.end method

.method public setFocusViewHeight(F)V
    .locals 0
    .parameter "val"

    .prologue
    .line 628
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->focusViewHeight:F

    .line 629
    return-void
.end method

.method public setFocusViewWidth(F)V
    .locals 0
    .parameter "val"

    .prologue
    .line 623
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->focusViewWidth:F

    .line 624
    return-void
.end method

.method public setHDRSupport(Z)V
    .locals 0
    .parameter "supported"

    .prologue
    .line 1110
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->isHDRCapable:Z

    .line 1111
    return-void
.end method

.method public setImagerOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 534
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mImagerOrientation:I

    .line 535
    return-void
.end method

.method public setInScroll(Z)V
    .locals 0
    .parameter "setting"

    .prologue
    .line 608
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mInScroll:Z

    .line 609
    return-void
.end method

.method public setIsoValues(Ljava/lang/String;)V
    .locals 0
    .parameter "isoV"

    .prologue
    .line 754
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorIsoValues:Ljava/lang/String;

    .line 755
    return-void
.end method

.method public setMaxExpCompensationIndex(I)V
    .locals 0
    .parameter "maxEI"

    .prologue
    .line 554
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->maxExpCompensationIndex:I

    .line 555
    return-void
.end method

.method public setMaxPanResDimension(Ljava/lang/String;)V
    .locals 0
    .parameter "maxPanResDim"

    .prologue
    .line 784
    return-void
.end method

.method public setMaxPicResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "max"

    .prologue
    .line 692
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->maxPicResolution:Ljava/lang/String;

    .line 693
    return-void
.end method

.method public setMaxWSPicResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "wsSize"

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mWSResolution:Ljava/lang/String;

    .line 1121
    return-void
.end method

.method public setMinExpCompensationIndex(I)V
    .locals 0
    .parameter "minEI"

    .prologue
    .line 546
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->minExpCompensationIndex:I

    .line 547
    return-void
.end method

.method public setMinPicResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "max"

    .prologue
    .line 704
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->minPicResolution:Ljava/lang/String;

    .line 705
    return-void
.end method

.method public setMultishotEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 836
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->featureMultishotEnabled:Z

    .line 838
    return-void
.end method

.method public setPanoramaFeatureEnable()V
    .locals 0

    .prologue
    .line 931
    return-void
.end method

.method public setSensorVidResList(Ljava/lang/String;)V
    .locals 0
    .parameter "vidRes"

    .prologue
    .line 724
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorVidResolutions:Ljava/lang/String;

    .line 725
    return-void
.end method

.method public setSupportedEffects(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSupportedEffects:Ljava/lang/String;

    .line 1053
    return-void
.end method

.method public setSupportedScenes(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 936
    return-void
.end method

.method public setTorchSupported(Z)V
    .locals 0
    .parameter "support"

    .prologue
    .line 966
    return-void
.end method

.method public setVideoBitrate(I)V
    .locals 0
    .parameter "bitrate"

    .prologue
    .line 910
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mVideoBitrate:I

    .line 911
    return-void
.end method

.method public setVideoResolutionService(Ljava/lang/String;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 820
    invoke-static {p1}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentReslVService:Ljava/lang/String;

    .line 821
    return-void
.end method

.method public setVideoStabilization(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1149
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilization:Z

    .line 1150
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1151
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "Video-Stabilization"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilization:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1152
    return-void
.end method

.method public setVideoStabilizationSupported(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1142
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilizationSupported:Z

    .line 1143
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1144
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "Video Stabilization Support"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilizationSupported:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1145
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1146
    return-void
.end method

.method public setWideScreenDisplay(Z)V
    .locals 0
    .parameter "wideScreenEnable"

    .prologue
    .line 1134
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mWideScreenDisplay:Z

    .line 1135
    return-void
.end method

.method public setZoomNum(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 847
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_1

    .line 849
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentZoom:I

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 853
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentZoomV:I

    goto :goto_0
.end method

.method public setZoomSupport(Z)V
    .locals 0
    .parameter "support"

    .prologue
    .line 1021
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->zoomSupported:Z

    .line 1022
    return-void
.end method
