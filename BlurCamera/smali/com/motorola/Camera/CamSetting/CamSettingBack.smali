.class public Lcom/motorola/Camera/CamSetting/CamSettingBack;
.super Lcom/motorola/Camera/CamSetting/CamSetting;
.source "CamSettingBack.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MotoCamSettingBack"

.field private static currentAudioZoom:Z

.field protected static sSelf:Lcom/motorola/Camera/CamSetting/CamSettingBack;


# instance fields
.field private AESSensorVidResolutions:Ljava/lang/String;

.field private currentAESResolution:Ljava/lang/String;

.field private currentBurstModeResolution:Ljava/lang/String;

.field private currentEffect:I

.field private currentEffectV:I

.field private currentExpValue:Ljava/lang/String;

.field private currentFlash:I

.field private currentFlashV:I

.field private currentFocusValue:Ljava/lang/String;

.field private currentIsoValue:Ljava/lang/String;

.field private currentPanShotResolution:Ljava/lang/String;

.field private currentReslVService:Ljava/lang/String;

.field private currentScene:I

.field private currentSceneV:I

.field private currentSingleShotResolution:Ljava/lang/String;

.field private currentStitchMode:Ljava/lang/String;

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

.field public effectsTitle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private effectsValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
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

.field private featurePanoramaEnabled:Z

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

.field public mSDEncryptionEnabled:Z

.field private mSupportedEffects:Ljava/lang/String;

.field private mSupportedScenesList:Ljava/lang/String;

.field private mVideoBitrate:I

.field private mWSResolution:Ljava/lang/String;

.field private mWideScreenDisplay:Z

.field private maxExpCompensationIndex:I

.field private maxPanResolution:Ljava/lang/String;

.field private maxPicResolution:Ljava/lang/String;

.field private minExpCompensationIndex:I

.field private misTrackingFace:Z

.field private mode_num:I

.field private scene_num_c:I

.field private scene_num_v:I

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

.field private torchSupported:Z

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAudioZoom:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "tx"

    .prologue
    const/high16 v0, 0x42c8

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;-><init>(Landroid/content/Context;)V

    .line 52
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mInScroll:Z

    .line 55
    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->focusViewWidth:F

    .line 56
    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->focusViewHeight:F

    .line 61
    iput v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->scene_num_c:I

    .line 62
    iput v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->scene_num_v:I

    .line 64
    iput v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mode_num:I

    .line 78
    iput v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentZoom:I

    .line 85
    const-string v0, "left-right"

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentStitchMode:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isInfiniteFocus:Z

    .line 87
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->misTrackingFace:Z

    .line 89
    iput v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentZoomV:I

    .line 99
    const-string v0, "QVGA"

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentReslVService:Ljava/lang/String;

    .line 111
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->torchSupported:Z

    .line 112
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mAutoFocusAvailable:Z

    .line 113
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mDynamicFocusAvailable:Z

    .line 123
    const v0, 0x7a1200

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mVideoBitrate:I

    .line 124
    const v0, 0x17700

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mAudioBitrate:I

    .line 135
    const-string v0, "2048x1536"

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentBurstModeResolution:Ljava/lang/String;

    .line 137
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isHDRCapable:Z

    .line 140
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSDEncryptionEnabled:Z

    .line 154
    if-eqz p1, :cond_0

    .line 156
    const-string v0, "com.motorola.Camera_preferences_back"

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mProfileFileName:Ljava/lang/String;

    .line 159
    const-string v0, "com.motorola.Camera_preferences_back"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    .line 163
    invoke-direct {p0}, Lcom/motorola/Camera/CamSetting/CamSettingBack;->load()V

    .line 164
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CamSettingBack;->loadSettingInit()V

    .line 165
    invoke-direct {p0}, Lcom/motorola/Camera/CamSetting/CamSettingBack;->loadRunTimeProperties()V

    .line 167
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CamSettingBack;
    .locals 2
    .parameter "context"

    .prologue
    .line 170
    const-class v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sput-object p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    .line 171
    :cond_0
    sget-object v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sSelf:Lcom/motorola/Camera/CamSetting/CamSettingBack;

    if-nez v0, :cond_1

    .line 172
    new-instance v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/CamSetting/CamSettingBack;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sSelf:Lcom/motorola/Camera/CamSetting/CamSettingBack;

    .line 174
    :cond_1
    sget-object v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sSelf:Lcom/motorola/Camera/CamSetting/CamSettingBack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 170
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

    .line 359
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 360
    const-string v0, "MotoCamSettingBack"

    const-string v1, "load() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "maxPicResolution"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxPicResolution:Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mWSResolution"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mWSResolution:Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "maxPanResolution"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxPanResolution:Ljava/lang/String;

    .line 373
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sensorVidResolutions"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorVidResolutions:Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AESSensorVidResolutions"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->AESSensorVidResolutions:Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentSingleShotResolution"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentSingleShotResolution:Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentBurstModeResolution"

    const-string v2, "2048x1536"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentBurstModeResolution:Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentVideoResolution"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentVideoResolution:Ljava/lang/String;

    .line 387
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentAESResolution"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAESResolution:Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentPanShotResolution"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentPanShotResolution:Ljava/lang/String;

    .line 394
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentFaceTracking"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->misTrackingFace:Z

    .line 397
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentEffect"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentEffect:I

    .line 400
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentScene"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentScene:I

    .line 402
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "isInfiniteFocus"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isInfiniteFocus:Z

    .line 405
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentAudioZoom"

    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->AUDIO_ZOOM:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAudioZoom:Z

    .line 418
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sensorFlashModes"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorFlashModes:Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sensorFocusModes"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorFocusModes:Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mImagerOrientation"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mImagerOrientation:I

    .line 423
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentFlash"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFlash:I

    .line 426
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentEffectVideo"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentEffectV:I

    .line 439
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentFlashVideo"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFlashV:I

    .line 441
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->SHOW_ISO_SETTING:Z

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sensorIsoValues"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorIsoValues:Ljava/lang/String;

    .line 445
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentIsoValue"

    const-string v2, "auto"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentIsoValue:Ljava/lang/String;

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentFocusValue"

    const-string v2, "continuous"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFocusValue:Ljava/lang/String;

    .line 452
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentExpValue"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentExpValue:Ljava/lang/String;

    .line 454
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MinExpIndex"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->minExpCompensationIndex:I

    .line 456
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MaxExpIndex"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxExpCompensationIndex:I

    .line 461
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "featureMultishotEnabled"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->featureMultishotEnabled:Z

    .line 462
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "featureFaceDetectionEnabled"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->featureFaceDetectionEnabled:Z

    .line 463
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "featurePanoramaEnabled"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->featurePanoramaEnabled:Z

    .line 466
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "torchSupported"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->torchSupported:Z

    .line 467
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mSupportedScenesList"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedScenesList:Ljava/lang/String;

    .line 469
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mAutoFocusAvailable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mAutoFocusAvailable:Z

    .line 470
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mSupportedEffects"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedEffects:Ljava/lang/String;

    .line 472
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "zoomSupported"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->zoomSupported:Z

    .line 475
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Video Stabilization Support"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilizationSupported:Z

    .line 477
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Video-Stabilization"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilization:Z

    .line 480
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mWideScreenDisplay"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mWideScreenDisplay:Z

    .line 482
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mImageStabilizationEnable"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mImageStabilizationEnable:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mImageStabilizationEnable:Z

    .line 484
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mWDREnable"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mWDREnable:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mWDREnable:Z

    .line 486
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mDefaultPreviewFPSMin"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMin:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMin:I

    .line 487
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mDefaultPreviewFPSMax"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMax:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMax:I

    .line 489
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 490
    const-string v0, "MotoCamSettingBack"

    const-string v1, "load() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_2
    return-void
.end method

.method private loadRunTimeProperties()V
    .locals 2

    .prologue
    .line 494
    const-string v0, "ro.media.capture.panorama"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    const-string v0, "MotoCamSettingBack"

    const-string v1, "Enable Panorama"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CamSettingBack;->setPanoramaFeatureEnable()V

    .line 501
    :cond_0
    const-string v0, "ro.camera.dynamicFocus"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CamSettingBack;->enableDynamicFocus()V

    .line 504
    :cond_1
    return-void
.end method


# virtual methods
.method public enableAutoFocus()V
    .locals 1

    .prologue
    .line 1162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mAutoFocusAvailable:Z

    .line 1163
    return-void
.end method

.method public enableDynamicFocus()V
    .locals 1

    .prologue
    .line 1169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mDynamicFocusAvailable:Z

    .line 1170
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
    .line 1158
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->expValues:Ljava/util/List;

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
    .line 1155
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isoValues:Ljava/util/List;

    return-object v0
.end method

.method public getAudioBitrate()I
    .locals 1

    .prologue
    .line 1094
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mAudioBitrate:I

    return v0
.end method

.method public getCurrentEffect()I
    .locals 2

    .prologue
    .line 772
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 774
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentEffect:I

    .line 782
    :goto_0
    return v0

    .line 776
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 778
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentEffectV:I

    goto :goto_0

    .line 782
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentExpValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentExpValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentFlash()I
    .locals 2

    .prologue
    .line 788
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 790
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFlash:I

    .line 796
    :goto_0
    return v0

    .line 792
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 794
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFlashV:I

    goto :goto_0

    .line 796
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentIsoValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentIsoValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPanResDimension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 570
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mIsServiceMode:Z

    if-eqz v0, :cond_0

    .line 571
    const-string v0, "1280x960"

    .line 573
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentPanShotResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCurrentScene()I
    .locals 3

    .prologue
    .line 755
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 757
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentScene:I

    .line 766
    :goto_0
    return v0

    .line 759
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 762
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentSceneVideo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 766
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentSingleShotRes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CamSettingBack;->getPicResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentVideoResDimensions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 591
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSDEncryptionEnabled:Z

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAESResolution:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 594
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentVideoResolution:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExpCompensationStep()F
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mExpCompensationStep:F

    return v0
.end method

.method public getFlashModes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorFlashModes:Ljava/lang/String;

    return-object v0
.end method

.method public getFocusModes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorFocusModes:Ljava/lang/String;

    return-object v0
.end method

.method public getFocusOption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFocusValue:Ljava/lang/String;

    return-object v0
.end method

.method public getFocusViewHeight()F
    .locals 1

    .prologue
    .line 730
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->focusViewHeight:F

    return v0
.end method

.method public getFocusViewWidth()F
    .locals 1

    .prologue
    .line 725
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->focusViewWidth:F

    return v0
.end method

.method public getImagerOrientation()I
    .locals 1

    .prologue
    .line 651
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mImagerOrientation:I

    return v0
.end method

.method public getIsoValues()Ljava/lang/String;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorIsoValues:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxExpCompensationIndex()I
    .locals 1

    .prologue
    .line 671
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxExpCompensationIndex:I

    return v0
.end method

.method public getMaxPanResDimension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxPanResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxPanResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxPanResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxPicResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxPicResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getMinExpCompensationIndex()I
    .locals 1

    .prologue
    .line 655
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->minExpCompensationIndex:I

    return v0
.end method

.method public getModeCount()I
    .locals 1

    .prologue
    .line 1135
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mode_num:I

    return v0
.end method

.method public getModeCountCamcorder()I
    .locals 1

    .prologue
    .line 1138
    const/4 v0, 0x0

    return v0
.end method

.method public getNormalModePicResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentSingleShotResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getPicResolution()Ljava/lang/String;
    .locals 2

    .prologue
    .line 804
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mIsServiceMode:Z

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->serviceModeResolution:Ljava/lang/String;

    .line 818
    :goto_0
    return-object v0

    .line 808
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentCameraMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 811
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentBurstModeResolution:Ljava/lang/String;

    goto :goto_0

    .line 814
    :cond_1
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentCameraMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 815
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentPanShotResolution:Ljava/lang/String;

    goto :goto_0

    .line 818
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentSingleShotResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSceneCountCamcorder()I
    .locals 1

    .prologue
    .line 1131
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->scene_num_v:I

    return v0
.end method

.method public getSceneCountCamera()I
    .locals 1

    .prologue
    .line 1128
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->scene_num_c:I

    return v0
.end method

.method public getSensorVidResList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 837
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSDEncryptionEnabled:Z

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->AESSensorVidResolutions:Ljava/lang/String;

    .line 840
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorVidResolutions:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStitchMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentStitchMode:Ljava/lang/String;

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
    .line 1197
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->effectsTitle:Ljava/util/List;

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
    .line 1193
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->effectsValues:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedEffects()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedEffects:Ljava/lang/String;

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
    .line 1200
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->effectsImg:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSupportedScenes()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1115
    const-string v0, "MotoCamSettingBack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSupportedScenesList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedScenesList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedScenesList:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoBitrate()I
    .locals 1

    .prologue
    .line 1086
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mVideoBitrate:I

    return v0
.end method

.method public getVideoResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 941
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mIsServiceMode:Z

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentReslVService:Ljava/lang/String;

    .line 949
    :goto_0
    return-object v0

    .line 945
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSDEncryptionEnabled:Z

    if-eqz v0, :cond_1

    .line 946
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAESResolution:Ljava/lang/String;

    goto :goto_0

    .line 949
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentVideoResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVideoResolutionEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->videoResolutionEntries:[Ljava/lang/CharSequence;

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
    .line 1151
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->videoResolutionSummaries:Ljava/util/List;

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
    .line 1145
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->videoResolutionTextIcons:Ljava/util/List;

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
    .line 1142
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->videoResolutionValues:Ljava/util/List;

    return-object v0
.end method

.method public getWSPicResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mWSResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getZoomNum()I
    .locals 2

    .prologue
    .line 744
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 745
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentZoom:I

    .line 749
    :goto_0
    return v0

    .line 746
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 747
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentZoomV:I

    goto :goto_0

    .line 749
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getcurrentExposure()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Exposure"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getcurrentISO()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ISO equivalent senstivity"

    const-string v2, "auto"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAudioZoomOn()Z
    .locals 3

    .prologue
    .line 909
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->SHOW_AUDIO_ZOOM_SETTING:Z

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentAudioZoom"

    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->AUDIO_ZOOM:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 912
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoFocusSupported()Z
    .locals 1

    .prologue
    .line 1165
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mAutoFocusAvailable:Z

    return v0
.end method

.method public isContinuousFocusEnabled()Z
    .locals 2

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFocusValue:Ljava/lang/String;

    const-string v1, "motocaf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isContinuousFocusSupported()Z
    .locals 2

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorFocusModes:Ljava/lang/String;

    const-string v1, "motocaf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isDynamicFocusSupported()Z
    .locals 1

    .prologue
    .line 1173
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mDynamicFocusAvailable:Z

    return v0
.end method

.method public isFaceDetectionEnable()Z
    .locals 1

    .prologue
    .line 970
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->featureFaceDetectionEnabled:Z

    return v0
.end method

.method public isFaceTrackingOn()Z
    .locals 3

    .prologue
    .line 925
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Face Detection"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHDRSupported()Z
    .locals 1

    .prologue
    .line 1217
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isHDRCapable:Z

    return v0
.end method

.method public isInScroll()Z
    .locals 1

    .prologue
    .line 715
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mInScroll:Z

    return v0
.end method

.method public isInfiniteFocus()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1069
    iget v1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentCameraMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentCameraMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1071
    :cond_0
    const/4 v0, 0x0

    .line 1077
    :cond_1
    :goto_0
    return v0

    .line 1073
    :cond_2
    iget v1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentCameraMode:I

    if-eq v1, v0, :cond_1

    .line 1077
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isInfiniteFocus:Z

    goto :goto_0
.end method

.method public isMultishotEnable()Z
    .locals 1

    .prologue
    .line 965
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->featureMultishotEnabled:Z

    return v0
.end method

.method public isPanoramaFeatureEnable()Z
    .locals 1

    .prologue
    .line 1105
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->featurePanoramaEnabled:Z

    return v0
.end method

.method public isSDEncryptionEnabled()Z
    .locals 1

    .prologue
    .line 1225
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSDEncryptionEnabled:Z

    return v0
.end method

.method public isTorchSupported()Z
    .locals 1

    .prologue
    .line 1121
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->torchSupported:Z

    return v0
.end method

.method public isWideScreenDisplay()Z
    .locals 1

    .prologue
    .line 1285
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mWideScreenDisplay:Z

    return v0
.end method

.method public isZoomSupported()Z
    .locals 1

    .prologue
    .line 1222
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->zoomSupported:Z

    return v0
.end method

.method public loadAutoDetectValues()V
    .locals 20

    .prologue
    .line 218
    sget-boolean v17, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v17, :cond_0

    .line 220
    const-string v17, "MotoCamSettingBack"

    const-string v18, "loadAutoDetectValues() - Enter"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v3, entriesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v16, valuesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    monitor-enter p0

    .line 230
    :try_start_0
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->videoResolutionValues:Ljava/util/List;

    .line 231
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->videoResolutionSummaries:Ljava/util/List;

    .line 232
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->videoResolutionTextIcons:Ljava/util/List;

    .line 239
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 240
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 242
    sget-object v17, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f070018

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 243
    .local v7, resArr:[Ljava/lang/String;
    sget-object v17, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f070019

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 244
    .local v8, resName:[Ljava/lang/String;
    sget-object v17, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f07001b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 245
    .local v11, resValue:[Ljava/lang/String;
    sget-object v17, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f07001a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 246
    .local v9, resSummary:[Ljava/lang/String;
    sget-object v17, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f07001e

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 247
    .local v10, resTextIcons:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/CamSetting/CamSettingBack;->getSensorVidResList()Ljava/lang/String;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 249
    .local v12, temp:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v4, v0, :cond_3

    .line 251
    const/4 v5, 0x0

    .local v5, ind:I
    :goto_1
    array-length v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_1

    .line 253
    aget-object v17, v12, v4

    aget-object v18, v7, v5

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 255
    aget-object v17, v8, v5

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->videoResolutionValues:Ljava/util/List;

    move-object/from16 v17, v0

    aget-object v18, v11, v5

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->videoResolutionSummaries:Ljava/util/List;

    move-object/from16 v17, v0

    aget-object v18, v9, v5

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->videoResolutionTextIcons:Ljava/util/List;

    move-object/from16 v17, v0

    aget-object v18, v10, v5

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 251
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 265
    .end local v5           #ind:I
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->videoResolutionEntries:[Ljava/lang/CharSequence;

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->videoResolutionEntries:[Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 268
    sget-boolean v17, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v17, :cond_4

    .line 269
    const-string v17, "MotoCamSettingBack"

    const-string v18, "Notify resolution setup completed vidResolutionImgs"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 273
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    sget-boolean v17, Lcom/motorola/Camera/CameraGlobalType;->SHOW_ISO_SETTING:Z

    if-eqz v17, :cond_8

    .line 278
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isoValues:Ljava/util/List;

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorIsoValues:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorIsoValues:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 281
    .local v15, tempIso:[Ljava/lang/String;
    const/4 v4, 0x0

    :goto_2
    array-length v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v4, v0, :cond_8

    .line 283
    const/4 v6, 0x0

    .local v6, indIso:I
    :goto_3
    sget-object v17, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f07003a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_5

    .line 285
    aget-object v17, v15, v4

    sget-object v18, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f07003a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    aget-object v18, v18, v6

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isoValues:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f07003a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    aget-object v18, v18, v6

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 273
    .end local v4           #i:I
    .end local v6           #indIso:I
    .end local v7           #resArr:[Ljava/lang/String;
    .end local v8           #resName:[Ljava/lang/String;
    .end local v9           #resSummary:[Ljava/lang/String;
    .end local v10           #resTextIcons:[Ljava/lang/String;
    .end local v11           #resValue:[Ljava/lang/String;
    .end local v12           #temp:[Ljava/lang/String;
    .end local v15           #tempIso:[Ljava/lang/String;
    :catchall_0
    move-exception v17

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    .line 283
    .restart local v4       #i:I
    .restart local v6       #indIso:I
    .restart local v7       #resArr:[Ljava/lang/String;
    .restart local v8       #resName:[Ljava/lang/String;
    .restart local v9       #resSummary:[Ljava/lang/String;
    .restart local v10       #resTextIcons:[Ljava/lang/String;
    .restart local v11       #resValue:[Ljava/lang/String;
    .restart local v12       #temp:[Ljava/lang/String;
    .restart local v15       #tempIso:[Ljava/lang/String;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 294
    .end local v6           #indIso:I
    .end local v15           #tempIso:[Ljava/lang/String;
    :cond_7
    const-string v17, "MotoCamSettingBack"

    const-string v18, "CamSetting: In loadAutoDetectValues -  Sensor returned null, loading the default iso values"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v6, 0x0

    .restart local v6       #indIso:I
    :goto_4
    sget-object v17, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f07003a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_8

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isoValues:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f07003a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    aget-object v18, v18, v6

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 302
    .end local v6           #indIso:I
    :cond_8
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->expValues:Ljava/util/List;

    .line 303
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->minExpCompensationIndex:I

    move/from16 v17, v0

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxExpCompensationIndex:I

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 320
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedEffects:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedEffects:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_e

    .line 322
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->effectsValues:Ljava/util/List;

    .line 323
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->effectsTitle:Ljava/util/List;

    .line 324
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->effectsImg:Ljava/util/ArrayList;

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedEffects:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 327
    .local v13, tempEffects:[Ljava/lang/String;
    sget-object v17, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f07002b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, effectsArray:[Ljava/lang/String;
    sget-object v17, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f07002d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 330
    .local v14, tempEffectsImg:[Ljava/lang/String;
    const/4 v4, 0x0

    :goto_6
    array-length v0, v2

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v4, v0, :cond_d

    .line 333
    const/4 v5, 0x0

    .restart local v5       #ind:I
    :goto_7
    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_a

    .line 335
    aget-object v17, v2, v4

    aget-object v18, v13, v5

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->effectsValues:Ljava/util/List;

    move-object/from16 v17, v0

    aget-object v18, v2, v4

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->effectsImg:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    aget-object v18, v14, v4

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->effectsTitle:Ljava/util/List;

    move-object/from16 v17, v0

    sget-object v18, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f07002c

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    aget-object v18, v18, v4

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 315
    .end local v2           #effectsArray:[Ljava/lang/String;
    .end local v5           #ind:I
    .end local v13           #tempEffects:[Ljava/lang/String;
    .end local v14           #tempEffectsImg:[Ljava/lang/String;
    :cond_b
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->expValues:Ljava/util/List;

    goto/16 :goto_5

    .line 333
    .restart local v2       #effectsArray:[Ljava/lang/String;
    .restart local v5       #ind:I
    .restart local v13       #tempEffects:[Ljava/lang/String;
    .restart local v14       #tempEffectsImg:[Ljava/lang/String;
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 345
    .end local v5           #ind:I
    :cond_d
    const-string v17, "MotoCamSettingBack"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "effectsValues"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->effectsValues:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v17, "MotoCamSettingBack"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "effectsTitle"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->effectsTitle:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .end local v2           #effectsArray:[Ljava/lang/String;
    .end local v13           #tempEffects:[Ljava/lang/String;
    .end local v14           #tempEffectsImg:[Ljava/lang/String;
    :cond_e
    sget-boolean v17, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v17, :cond_f

    .line 352
    const-string v17, "MotoCamSettingBack"

    const-string v18, "loadAutoDetectValues() - Exit"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_f
    return-void
.end method

.method public loadSettingInit()V
    .locals 5

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 184
    .local v0, i:I
    sget-object v2, Lcom/motorola/Camera/CameraGlobalType;->sceneListC:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 185
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 187
    sget-object v2, Lcom/motorola/Camera/CameraGlobalType;->sceneListC:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    sget-object v2, Lcom/motorola/Camera/CameraGlobalType;->sceneListC:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->scene_num_c:I

    .line 191
    const/4 v1, 0x0

    .line 193
    .local v1, nb_scenes:I
    const/4 v1, 0x2

    .line 194
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    .line 195
    const-string v2, "MotoCamSettingBack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Droid2 video scene number"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_1
    sget-object v2, Lcom/motorola/Camera/CameraGlobalType;->sceneListV:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 198
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 199
    sget-object v2, Lcom/motorola/Camera/CameraGlobalType;->sceneListV:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    :cond_2
    sget-object v2, Lcom/motorola/Camera/CameraGlobalType;->sceneListV:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->scene_num_v:I

    .line 204
    sget-object v2, Lcom/motorola/Camera/CameraGlobalType;->modeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 206
    const/4 v0, 0x0

    :goto_2
    const/4 v2, 0x7

    if-ge v0, v2, :cond_3

    .line 207
    sget-object v2, Lcom/motorola/Camera/CameraGlobalType;->modeList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 209
    :cond_3
    sget-object v2, Lcom/motorola/Camera/CameraGlobalType;->modeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mode_num:I

    .line 210
    return-void
.end method

.method public save()V
    .locals 3

    .prologue
    .line 509
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 510
    const-string v1, "MotoCamSettingBack"

    const-string v2, "save() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 515
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "currentEffect"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentEffect:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 516
    const-string v1, "currentScene"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentScene:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 517
    const-string v1, "isInfiniteFocus"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isInfiniteFocus:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 518
    const-string v1, "maxPicResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxPicResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 519
    const-string v1, "mWSResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mWSResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 520
    const-string v1, "maxPanResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxPanResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 521
    const-string v1, "sensorVidResolutions"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorVidResolutions:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 522
    const-string v1, "AESSensorVidResolutions"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->AESSensorVidResolutions:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 523
    const-string v1, "currentSingleShotResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentSingleShotResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 524
    const-string v1, "currentBurstModeResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentBurstModeResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 525
    const-string v1, "currentVideoResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentVideoResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 526
    const-string v1, "currentAESResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAESResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 527
    const-string v1, "currentPanShotResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentPanShotResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 528
    const-string v1, "currentFlash"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFlash:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 529
    const-string v1, "currentEffectVideo"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentEffectV:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 530
    const-string v1, "currentSceneVideo"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentSceneV:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 531
    const-string v1, "currentFocusValue"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFocusValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 532
    const-string v1, "mImagerOrientation"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mImagerOrientation:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 535
    const-string v1, "currentAudioZoom"

    sget-boolean v2, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAudioZoom:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 536
    const-string v1, "currentFlashVideo"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFlashV:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 537
    const-string v1, "currentFaceTracking"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->misTrackingFace:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 538
    const-string v1, "sensorFlashModes"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorFlashModes:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 539
    const-string v1, "sensorFocusModes"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorFocusModes:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 542
    const-string v1, "MinExpIndex"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->minExpCompensationIndex:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 543
    const-string v1, "MaxExpIndex"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxExpCompensationIndex:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 544
    const-string v1, "featureMultishotEnabled"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->featureMultishotEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 545
    const-string v1, "featureFaceDetectionEnabled"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->featureFaceDetectionEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 546
    const-string v1, "featurePanoramaEnabled"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->featurePanoramaEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 548
    const-string v1, "torchSupported"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->torchSupported:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 549
    const-string v1, "mSupportedScenesList"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedScenesList:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 550
    const-string v1, "mAutoFocusAvailable"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mAutoFocusAvailable:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 551
    const-string v1, "mSupportedEffects"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedEffects:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 552
    const-string v1, "zoomSupported"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->zoomSupported:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 553
    const-string v1, "mWideScreenDisplay"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mWideScreenDisplay:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 554
    const-string v1, "mImageStabilizationEnable"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mImageStabilizationEnable:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 555
    const-string v1, "mWDREnable"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mWDREnable:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 557
    const-string v1, "mDefaultPreviewFPSMax"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMax:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 558
    const-string v1, "mDefaultPreviewFPSMin"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMin:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 561
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 563
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    .line 564
    const-string v1, "MotoCamSettingBack"

    const-string v2, "save() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_1
    return-void
.end method

.method public setAESSensorVidResList(Ljava/lang/String;)V
    .locals 0
    .parameter "newres"

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->AESSensorVidResolutions:Ljava/lang/String;

    .line 1230
    return-void
.end method

.method public setAudioBitrate(I)V
    .locals 0
    .parameter "bitrate"

    .prologue
    .line 1090
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mAudioBitrate:I

    .line 1091
    return-void
.end method

.method public setAudioZoom(Z)V
    .locals 0
    .parameter "toggle"

    .prologue
    .line 919
    sput-boolean p1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAudioZoom:Z

    .line 920
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CamSettingBack;->save()V

    .line 921
    return-void
.end method

.method public setCamcorderAESProps(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1233
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSDEncryptionEnabled:Z

    .line 1234
    return-void
.end method

.method public declared-synchronized setCurrentAppMode(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 881
    monitor-enter p0

    :try_start_0
    const-string v0, "MotoCamSettingBack"

    const-string v1, "setCurrentAppMode CamSettingBack"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-super {p0, p1, p2}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentAppMode(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    monitor-exit p0

    return-void

    .line 881
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCurrentBurstModeRes(Ljava/lang/String;)V
    .locals 0
    .parameter "newRes"

    .prologue
    .line 623
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentBurstModeResolution:Ljava/lang/String;

    .line 624
    return-void
.end method

.method public setCurrentEffect(I)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 1021
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_1

    .line 1023
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentEffect:I

    .line 1029
    :cond_0
    :goto_0
    return-void

    .line 1025
    :cond_1
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1027
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentEffectV:I

    goto :goto_0
.end method

.method public setCurrentExpValue(Ljava/lang/String;)V
    .locals 0
    .parameter "newExp"

    .prologue
    .line 643
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentExpValue:Ljava/lang/String;

    .line 644
    return-void
.end method

.method public setCurrentFlash(I)V
    .locals 2
    .parameter "flash"

    .prologue
    .line 1041
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_1

    .line 1043
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFlash:I

    .line 1049
    :cond_0
    :goto_0
    return-void

    .line 1045
    :cond_1
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1047
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFlashV:I

    goto :goto_0
.end method

.method public setCurrentFocusOption(Ljava/lang/String;)V
    .locals 0
    .parameter "focus"

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFocusValue:Ljava/lang/String;

    .line 1178
    return-void
.end method

.method public setCurrentIsoValue(Ljava/lang/String;)V
    .locals 0
    .parameter "newIso"

    .prologue
    .line 633
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentIsoValue:Ljava/lang/String;

    .line 634
    return-void
.end method

.method public setCurrentPanResDimension(Ljava/lang/String;)V
    .locals 0
    .parameter "currPanResDim"

    .prologue
    .line 577
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentPanShotResolution:Ljava/lang/String;

    .line 578
    return-void
.end method

.method public setCurrentResolution(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1277
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mWSResolution:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/Camera/CamSetting/CamSettingBack;->setCurrentSingleShotRes(Ljava/lang/String;)V

    .line 1278
    return-void

    .line 1277
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxPicResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCurrentScene(I)V
    .locals 3
    .parameter "scene"

    .prologue
    const/4 v2, 0x1

    .line 999
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_3

    .line 1001
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentScene:I

    .line 1002
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentScene:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentScene:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1005
    :cond_0
    iput-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isInfiniteFocus:Z

    .line 1017
    :cond_1
    :goto_0
    return-void

    .line 1009
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isInfiniteFocus:Z

    goto :goto_0

    .line 1012
    :cond_3
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-ne v0, v2, :cond_1

    .line 1014
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentSceneV:I

    .line 1015
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CamSettingBack;->save()V

    goto :goto_0
.end method

.method public setCurrentSingleShotRes(Ljava/lang/String;)V
    .locals 0
    .parameter "newRes"

    .prologue
    .line 618
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentSingleShotResolution:Ljava/lang/String;

    .line 619
    return-void
.end method

.method public setCurrentStitchMode(Ljava/lang/String;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1033
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 1035
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentStitchMode:Ljava/lang/String;

    .line 1037
    :cond_0
    return-void
.end method

.method public setCurrentVideoRes(Ljava/lang/String;)V
    .locals 1
    .parameter "newRes"

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSDEncryptionEnabled:Z

    if-eqz v0, :cond_0

    .line 601
    invoke-static {p1}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAESResolution:Ljava/lang/String;

    .line 604
    :goto_0
    return-void

    .line 603
    :cond_0
    invoke-static {p1}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentVideoResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDefaultAESVideoResolution()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1237
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAESResolution:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1238
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->AESSensorVidResolutions:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1239
    .local v1, temp:[Ljava/lang/String;
    aget-object v2, v1, v4

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAESResolution:Ljava/lang/String;

    .line 1240
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamSettingBack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultVideoResolution() - currentAESResolution "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAESResolution:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    .end local v1           #temp:[Ljava/lang/String;
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCamSettingBack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The default AES video resolution set is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAESResolution:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :cond_1
    return-void

    .line 1243
    :cond_2
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAESResolution:Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1244
    .local v0, currAESResDimension:Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->AESSensorVidResolutions:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1245
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->AESSensorVidResolutions:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAESResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDefaultVideoResolution()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1252
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentVideoResolution:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1253
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorVidResolutions:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1255
    .local v1, temp:[Ljava/lang/String;
    aget-object v2, v1, v4

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentVideoResolution:Ljava/lang/String;

    .line 1256
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamSettingBack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultVideoResolution() - setCurrentVideoRes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentVideoResolution:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    .end local v1           #temp:[Ljava/lang/String;
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCamSettingBack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The default Video resolution set is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentVideoResolution:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_1
    return-void

    .line 1259
    :cond_2
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentVideoResolution:Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1260
    .local v0, currVidResDimension:Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorVidResolutions:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1261
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorVidResolutions:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentVideoResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDefaultZoomValue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 987
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_1

    .line 989
    iput v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentZoom:I

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 993
    iput v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentZoomV:I

    goto :goto_0
.end method

.method public setExpCompensationStep(F)V
    .locals 0
    .parameter "expCompensationStep"

    .prologue
    .line 667
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mExpCompensationStep:F

    .line 668
    return-void
.end method

.method public setFaceDetectionEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 960
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->featureFaceDetectionEnabled:Z

    .line 961
    return-void
.end method

.method public setFaceTracking(Z)V
    .locals 3
    .parameter "toggle"

    .prologue
    .line 930
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->misTrackingFace:Z

    .line 931
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamSettingBack"

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

    .line 932
    :cond_0
    return-void
.end method

.method public setFlashModes(Ljava/lang/String;)V
    .locals 0
    .parameter "modes"

    .prologue
    .line 865
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorFlashModes:Ljava/lang/String;

    .line 866
    return-void
.end method

.method public setFocusModes(Ljava/lang/String;)V
    .locals 0
    .parameter "modes"

    .prologue
    .line 855
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorFocusModes:Ljava/lang/String;

    .line 856
    return-void
.end method

.method public setFocusViewHeight(F)V
    .locals 0
    .parameter "val"

    .prologue
    .line 740
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->focusViewHeight:F

    .line 741
    return-void
.end method

.method public setFocusViewWidth(F)V
    .locals 0
    .parameter "val"

    .prologue
    .line 735
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->focusViewWidth:F

    .line 736
    return-void
.end method

.method public setHDRSupport(Z)V
    .locals 0
    .parameter "supported"

    .prologue
    .line 1212
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isHDRCapable:Z

    .line 1213
    return-void
.end method

.method public setImagerOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 647
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mImagerOrientation:I

    .line 648
    return-void
.end method

.method public setInScroll(Z)V
    .locals 0
    .parameter "setting"

    .prologue
    .line 720
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mInScroll:Z

    .line 721
    return-void
.end method

.method public setIsoValues(Ljava/lang/String;)V
    .locals 0
    .parameter "isoV"

    .prologue
    .line 875
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorIsoValues:Ljava/lang/String;

    .line 876
    return-void
.end method

.method public setMaxExpCompensationIndex(I)V
    .locals 0
    .parameter "maxEI"

    .prologue
    .line 675
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxExpCompensationIndex:I

    .line 676
    return-void
.end method

.method public setMaxPanResDimension(Ljava/lang/String;)V
    .locals 0
    .parameter "maxPanResDim"

    .prologue
    .line 585
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxPanResolution:Ljava/lang/String;

    .line 586
    return-void
.end method

.method public setMaxPanResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "max"

    .prologue
    .line 893
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxPanResolution:Ljava/lang/String;

    .line 894
    return-void
.end method

.method public setMaxPicResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "max"

    .prologue
    .line 825
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxPicResolution:Ljava/lang/String;

    .line 826
    return-void
.end method

.method public setMaxWSPicResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "wsSize"

    .prologue
    .line 1269
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mWSResolution:Ljava/lang/String;

    .line 1270
    return-void
.end method

.method public setMinExpCompensationIndex(I)V
    .locals 0
    .parameter "minEI"

    .prologue
    .line 659
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->minExpCompensationIndex:I

    .line 660
    return-void
.end method

.method public setMultishotEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 955
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->featureMultishotEnabled:Z

    .line 956
    return-void
.end method

.method public setPanoramaFeatureEnable()V
    .locals 1

    .prologue
    .line 1101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->featurePanoramaEnabled:Z

    .line 1102
    return-void
.end method

.method public setSensorVidResList(Ljava/lang/String;)V
    .locals 0
    .parameter "vidRes"

    .prologue
    .line 845
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorVidResolutions:Ljava/lang/String;

    .line 846
    return-void
.end method

.method public setSupportedEffects(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 1207
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedEffects:Ljava/lang/String;

    .line 1209
    return-void
.end method

.method public setSupportedScenes(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedScenesList:Ljava/lang/String;

    .line 1111
    return-void
.end method

.method public setTorchSupported(Z)V
    .locals 0
    .parameter "support"

    .prologue
    .line 1124
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->torchSupported:Z

    .line 1125
    return-void
.end method

.method public setVideoBitrate(I)V
    .locals 0
    .parameter "bitrate"

    .prologue
    .line 1082
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mVideoBitrate:I

    .line 1083
    return-void
.end method

.method public setVideoResolutionService(Ljava/lang/String;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 936
    invoke-static {p1}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentReslVService:Ljava/lang/String;

    .line 937
    return-void
.end method

.method public setVideoStabilization(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1297
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilization:Z

    .line 1298
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1299
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "Video-Stabilization"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilization:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1300
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1301
    return-void
.end method

.method public setVideoStabilizationSupported(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1290
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilizationSupported:Z

    .line 1291
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1292
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "Video Stabilization Support"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilizationSupported:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1293
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1294
    return-void
.end method

.method public setWideScreenDisplay(Z)V
    .locals 0
    .parameter "wideScreenEnable"

    .prologue
    .line 1282
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mWideScreenDisplay:Z

    .line 1283
    return-void
.end method

.method public setZoomNum(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 975
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_1

    .line 977
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentZoom:I

    .line 983
    :cond_0
    :goto_0
    return-void

    .line 979
    :cond_1
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 981
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentZoomV:I

    goto :goto_0
.end method

.method public setZoomSupport(Z)V
    .locals 0
    .parameter "support"

    .prologue
    .line 1054
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->zoomSupported:Z

    .line 1055
    return-void
.end method
