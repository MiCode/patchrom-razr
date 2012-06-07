.class public Lcom/motorola/Camera/CamSetting/CommonCamSetting;
.super Ljava/lang/Object;
.source "CommonCamSetting.java"

# interfaces
.implements Lcom/motorola/Camera/CamSetting/ICamSetting;


# static fields
.field public static final BACK_CAM:I = 0x1

.field public static final EXTERNAL_MMC:I = 0x1

.field public static final FRONT_CAM:I = 0x2

.field public static final INTERNAL_MMC:I = 0x0

.field protected static final KEY_FACE_TRACKING:Ljava/lang/String; = "Face Detection"

.field protected static final KEY_IMAGE_STABILIZATION:Ljava/lang/String; = "Image Stabilization"

.field protected static final KEY_MUTE_AUDIO:Ljava/lang/String; = "Mute Audio"

.field protected static final KEY_REVIEW_TIME:Ljava/lang/String; = "Review Time"

.field protected static final KEY_SHUTTER_ANIMATION:Ljava/lang/String; = "Shutter Animation"

.field protected static final KEY_SHUTTER_TONE_SWITCH:Ljava/lang/String; = "Shutter Tone"

.field protected static final KEY_STORAGE_LOCATION:Ljava/lang/String; = "Storage Location"

.field protected static final KEY_VOLUME_KEY_SETTING:Ljava/lang/String; = "Volume Key Setting"

.field public static final NONE_CAM:I = 0x0

.field public static final SDCARD_EXT:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "CommonCamSetting"

.field protected static internalCameraSupported:Z

.field public static mFeatureDualVol:Z

.field private static mIsAudioScenesSupported:Z

.field private static sCommonCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;


# instance fields
.field private audioScenesValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected cameraLaunchedFromCamcorder:Z

.field protected currentAddress:Ljava/lang/String;

.field protected currentAppMode:I

.field protected currentAutoTimer:I

.field protected currentMode:I

.field protected currentModeV:I

.field protected isEulaShown:Z

.field protected isLocationOn:Z

.field protected isProviderEnabled:Z

.field protected isSearchingLoc:I

.field protected lastCamcorderMode:I

.field protected lastCameraMode:I

.field protected mAttrsChanged:Z

.field private mAudioScenesValues:Ljava/lang/String;

.field private mAutoTimerCaptureSupported:Z

.field private mAutoTimerImgResources:[I

.field private mAutoTimerValue:[I

.field private mBackCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

.field protected mCamcorderZoomSupported:Z

.field protected mContext:Landroid/content/Context;

.field private mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

.field protected mCurrentTimeLapse:I

.field private mEffectsGridDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectsImgResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFastModeSupported:Z

.field private mFlashGridDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation
.end field

.field private mFlashImgResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

.field protected mHasSDPluged:Z

.field protected mIsInSecurelyLockedMode:Z

.field protected mIsServiceMode:Z

.field private mLightGridDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation
.end field

.field private mLightImgResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private mPictureModesGridDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation
.end field

.field private mPictureModesImgResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPictureModesValue:[I

.field protected mPreferences:Landroid/content/SharedPreferences;

.field protected mReturnFromTag:Z

.field private mScenesGridDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation
.end field

.field private mScenesImgResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSlowModeSupported:Z

.field private mTimelapseEntries:[I

.field private mTimelapseImgResources:[I

.field private mToolbarOpenStatus:Z

.field private mVScenesGridDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation
.end field

.field private mVScenesImgResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoModesGridDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoModesImgResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoModesValue:[I

.field protected mVolumeKeySetting:I

.field protected tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-static {}, Lcom/motorola/Camera/EnvironmentUtil/EnvironmentUtil;->getExternalAltStorageDirectory()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->SDCARD_EXT:Ljava/lang/String;

    .line 68
    sput-boolean v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->internalCameraSupported:Z

    .line 69
    sput-boolean v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    .line 146
    sput-boolean v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mIsAudioScenesSupported:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 176
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAttrsChanged:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->tags:Ljava/util/List;

    .line 54
    iput-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn:Z

    .line 55
    iput-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isEulaShown:Z

    .line 56
    iput-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mHasSDPluged:Z

    .line 57
    iput-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCamcorderZoomSupported:Z

    .line 60
    iput v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVolumeKeySetting:I

    .line 62
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mSlowModeSupported:Z

    .line 63
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFastModeSupported:Z

    .line 65
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAutoTimerCaptureSupported:Z

    .line 66
    iput-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mToolbarOpenStatus:Z

    .line 74
    iput-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->cameraLaunchedFromCamcorder:Z

    .line 75
    iput v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->lastCameraMode:I

    .line 76
    const/16 v0, 0x8

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->lastCamcorderMode:I

    .line 78
    iput-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mReturnFromTag:Z

    .line 79
    iput-object v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAddress:Ljava/lang/String;

    .line 89
    iput v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrentTimeLapse:I

    .line 152
    iput-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isProviderEnabled:Z

    .line 154
    iput-object v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mMainHandler:Landroid/os/Handler;

    .line 177
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    .line 178
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    const-string v1, "com.motorola.Camera_preferences"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    .line 183
    :cond_0
    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSetInternalStorageFeatureAvailable()V

    .line 184
    invoke-direct {p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->loadCommonPreferences()V

    .line 185
    invoke-direct {p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->loadFlexValue()I

    .line 186
    invoke-static {p1}, Lcom/motorola/Camera/CamSetting/CamSettingBack;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CamSettingBack;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mBackCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    .line 187
    invoke-static {p1}, Lcom/motorola/Camera/CamSetting/CamSettingFront;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CamSettingFront;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    .line 188
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->loadCommonRunTimeProperties()V

    .line 189
    return-void
.end method

.method public static droidDisableFunctions()V
    .locals 2

    .prologue
    .line 1107
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->SHOW_AUDIO_ZOOM_SETTING:Z

    .line 1108
    const-string v0, "CommonCamSetting"

    const-string v1, "Droid2 disabel the Droid2 720p"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    .locals 2

    .prologue
    .line 166
    const-class v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->sCommonCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    .locals 2
    .parameter "context"

    .prologue
    .line 157
    const-class v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->sCommonCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->sCommonCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 160
    :cond_0
    sget-object v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->sCommonCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSetInternalStorageFeatureAvailable()V
    .locals 3

    .prologue
    .line 1047
    invoke-static {}, Lcom/motorola/Camera/EnvironmentUtil/EnvironmentUtil;->getExternalAltStorageDirectory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/mnt/usbdisk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1048
    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    .line 1050
    :cond_0
    const-string v0, "CommonCamSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dual Volume Available? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    return-void
.end method

.method public static isDriod2()Z
    .locals 5

    .prologue
    .line 1096
    const/4 v1, 0x0

    .line 1097
    .local v1, misDroid2:Z
    const-string v2, "ro.media.capture.maxres"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1098
    .local v0, highCamRes:Ljava/lang/String;
    const-string v2, "8m"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1099
    const/4 v1, 0x0

    .line 1102
    :goto_0
    const-string v2, "CommonCamSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Droid2 isDroid2 in setting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const-string v2, "CommonCamSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Droid2 isDroid2 in setting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    return v1

    .line 1101
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadCommonPreferences()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 199
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    .line 200
    const-string v3, "CommonCamSetting"

    const-string v4, "loadCommonPreferences() - Enter"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    iget-object v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tagsNum"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 204
    .local v2, tagsNum:I
    const/4 v0, 0x0

    .line 205
    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->tags:Ljava/util/List;

    iget-object v4, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v0, v0, 0x1

    .line 210
    goto :goto_0

    .line 213
    .end local v1           #key:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "isLocationOn"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn:Z

    .line 216
    iget-object v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "isEulaShown"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isEulaShown:Z

    .line 218
    iget-object v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "internalCameraSupported"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->internalCameraSupported:Z

    .line 220
    iget-object v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "mHasSDPluged"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mHasSDPluged:Z

    .line 222
    iget-object v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "mCamcorderZoom"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCamcorderZoomSupported:Z

    .line 223
    iget-object v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "mToolbarOpenStatus"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mToolbarOpenStatus:Z

    .line 225
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_2

    .line 226
    const-string v3, "CommonCamSetting"

    const-string v4, "loadCommonPreferences() - Exit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_2
    return-void
.end method

.method private loadFlexValue()I
    .locals 14

    .prologue
    .line 237
    sget-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v12, :cond_0

    .line 238
    const-string v12, "CommonCamSetting"

    const-string v13, "loadFlexValue() - Enter"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v2, entriesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v10, valuesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v12, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 246
    .local v9, resources:Landroid/content/res/Resources;
    const v12, 0x7f080004

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->IMAGE_STABILIZATION:Z

    .line 247
    const v12, 0x7f080005

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->PANORAMA:Z

    .line 248
    const/high16 v12, 0x7f09

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sput-object v12, Lcom/motorola/Camera/CameraGlobalType;->SCREEN_DELAY:Ljava/lang/Integer;

    .line 250
    const v12, 0x7f090001

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    sput v12, Lcom/motorola/Camera/CameraGlobalType;->INACTIVITY_TIMEOUT_THRESHOLD:I

    .line 252
    const v12, 0x7f080006

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->MMS_SUPPORT_FLEX:Z

    .line 254
    const v12, 0x7f090002

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sput-object v12, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_CAPTURE_RESOLUTION_WIDTH:Ljava/lang/Integer;

    .line 255
    const v12, 0x7f090003

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sput-object v12, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_CAPTURE_RESOLUTION_HEIGHT:Ljava/lang/Integer;

    .line 256
    const v12, 0x7f090004

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sput-object v12, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_CAPTURE_DURATION:Ljava/lang/Integer;

    .line 257
    const v12, 0x7f080007

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_PAUSE_RESUME:Z

    .line 258
    const v12, 0x7f080009

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->SHOW_AUDIO_ZOOM_SETTING:Z

    .line 259
    const v12, 0x7f08000b

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->REMAINING_REC_TIME:Z

    .line 261
    const v12, 0x7f08000c

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->FLASH:Z

    .line 262
    sget-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->FLASH:Z

    if-nez v12, :cond_1

    const/4 v12, 0x1

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->LED:Z

    .line 264
    :cond_1
    const v12, 0x7f08000f

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->MULTISHOT:Z

    .line 266
    const v12, 0x7f080010

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->FASTMOTION_REC:Z

    .line 267
    const v12, 0x7f080011

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->SLOWMOTION_REC:Z

    .line 269
    const v12, 0x7f080012

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->VIDEO_CAM_DELTA:Z

    .line 271
    const v12, 0x7f080013

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->ZOOMKEY_ONSCREEN:Z

    .line 272
    const v12, 0x7f080014

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->CAPTUREKEY_ONSCREEN:Z

    .line 274
    const v12, 0x7f08000d

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->SHOW_FACE_TRACK_SETTING:Z

    .line 276
    const v12, 0x7f080015

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->SHOW_ISO_SETTING:Z

    .line 279
    const v12, 0x7f080018

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->PANORAMA_TYPE_SWEEP:Z

    .line 280
    const-string v12, "ro.camcorder.mute"

    const/4 v13, 0x1

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->CAMCORDER_MUTE:Z

    .line 282
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 283
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 286
    const/4 v6, 0x0

    .line 287
    .local v6, index:I
    const v12, 0x7f070021

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v3, v0, v5

    .line 288
    .local v3, flexentry:Ljava/lang/String;
    const-string v12, "bool"

    const-string v13, "com.motorola.Camera"

    invoke-virtual {v9, v3, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 289
    const v12, 0x7f07001f

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v6

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    const v12, 0x7f070020

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v6

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 287
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 294
    .end local v3           #flexentry:Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/CharSequence;

    sput-object v12, Lcom/motorola/Camera/CameraGlobalType;->reviewTimeEntries:[Ljava/lang/CharSequence;

    .line 296
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/CharSequence;

    sput-object v12, Lcom/motorola/Camera/CameraGlobalType;->reviewTimeValues:[Ljava/lang/CharSequence;

    .line 298
    sget-object v12, Lcom/motorola/Camera/CameraGlobalType;->reviewTimeEntries:[Ljava/lang/CharSequence;

    invoke-interface {v2, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 299
    sget-object v12, Lcom/motorola/Camera/CameraGlobalType;->reviewTimeValues:[Ljava/lang/CharSequence;

    invoke-interface {v10, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 332
    iget-object v12, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    const-string v13, "window"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 333
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v12

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v13

    if-le v12, v13, :cond_8

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v11

    .line 334
    .local v11, width:I
    :goto_1
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v12

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v13

    if-le v12, v13, :cond_9

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 336
    .local v4, height:I
    :goto_2
    const/4 v8, 0x0

    .line 337
    .local v8, premium:Z
    const/16 v12, 0x1e0

    if-lt v11, v12, :cond_a

    const/16 v12, 0x140

    if-lt v4, v12, :cond_a

    .line 338
    const/4 v8, 0x1

    .line 339
    sget-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v12, :cond_4

    .line 340
    const-string v12, "CommonCamSetting"

    const-string v13, "loadFlexValue() - Based on display size, selecting PREMIUM camera mode"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_4
    :goto_3
    if-nez v8, :cond_5

    .line 350
    const/4 v12, 0x0

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->camPremium:Z

    .line 351
    const/4 v12, 0x0

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->camHardKeyPresent:Z

    .line 352
    const/4 v12, 0x0

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->correctVolumeKeyPlacement:Z

    .line 357
    :cond_5
    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isDriod2()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->droidDisableFunctions()V

    .line 359
    :cond_6
    sget-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v12, :cond_7

    .line 360
    const-string v12, "CommonCamSetting"

    const-string v13, "loadFlexValue() - Exit"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_7
    const/4 v12, 0x1

    return v12

    .line 333
    .end local v4           #height:I
    .end local v8           #premium:Z
    .end local v11           #width:I
    :cond_8
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v11

    goto :goto_1

    .line 334
    .restart local v11       #width:I
    :cond_9
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    goto :goto_2

    .line 343
    .restart local v4       #height:I
    .restart local v8       #premium:Z
    :cond_a
    sget-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v12, :cond_4

    .line 344
    const-string v12, "CommonCamSetting"

    const-string v13, "loadFlexValue() - Based on display size, selecting BASIC camera mode"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public enableAutoFocus()V
    .locals 1

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->enableAutoFocus()V

    .line 1637
    return-void
.end method

.method public enableDynamicFocus()V
    .locals 1

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->enableDynamicFocus()V

    .line 1646
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
    .line 1631
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getAllowedExpValues()Ljava/util/List;

    move-result-object v0

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
    .line 1626
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getAllowedISOValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAudioBitrate()I
    .locals 1

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getAudioBitrate()I

    move-result v0

    return v0
.end method

.method public getAudioScenesValues()Ljava/util/List;
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
    .line 1177
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->audioScenesValues:Ljava/util/List;

    return-object v0
.end method

.method public getAutoTimerImgEntries()[I
    .locals 1

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAutoTimerImgResources:[I

    return-object v0
.end method

.method public getAutoTimerValueEntries()[I
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAutoTimerValue:[I

    return-object v0
.end method

.method public getCurrentAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAddress:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getCurrentAppMode()I
    .locals 1

    .prologue
    .line 729
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAppMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentAutoTimer()I
    .locals 1

    .prologue
    .line 664
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAutoTimer:I

    return v0
.end method

.method public getCurrentCameraMode()I
    .locals 2

    .prologue
    .line 653
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 654
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentMode:I

    .line 658
    :goto_0
    return v0

    .line 655
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 656
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentModeV:I

    goto :goto_0

    .line 658
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentEffect()I
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getCurrentEffect()I

    move-result v0

    return v0
.end method

.method public getCurrentExpValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getCurrentExpValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFlash()I
    .locals 1

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getCurrentFlash()I

    move-result v0

    return v0
.end method

.method public getCurrentIsoValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getCurrentIsoValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPanResDimension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getCurrentPanResDimension()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScene()I
    .locals 1

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getCurrentScene()I

    move-result v0

    return v0
.end method

.method public getCurrentSingleShotRes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getCurrentSingleShotRes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentStorageDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1076
    sget-boolean v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    if-nez v0, :cond_0

    .line 1078
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1087
    :goto_0
    return-object v0

    .line 1082
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentStorageLocation()I

    move-result v0

    if-nez v0, :cond_1

    .line 1083
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1087
    :cond_1
    invoke-static {}, Lcom/motorola/Camera/EnvironmentUtil/EnvironmentUtil;->getExternalAltStorageDirectory()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentStorageLocation()I
    .locals 4

    .prologue
    .line 1063
    const/4 v0, 0x0

    .line 1066
    .local v0, result:I
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "Storage Location"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1070
    :goto_0
    return v0

    .line 1067
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getCurrentTimeLapse()I
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrentTimeLapse:I

    return v0
.end method

.method public getCurrentVideoResDimensions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getCurrentVideoResDimensions()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinFPS()I
    .locals 1

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getDefaultMinFPS()I

    move-result v0

    return v0
.end method

.method public getEffectsDataEntries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mEffectsGridDataArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExpCompensationStep()F
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getExpCompensationStep()F

    move-result v0

    return v0
.end method

.method public getFlashDataEntries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1114
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFlashGridDataArray:Ljava/util/ArrayList;

    .line 1117
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mLightGridDataArray:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getFlashModes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusModes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getFocusModes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusOption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getFocusOption()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusViewHeight()F
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getFocusViewHeight()F

    move-result v0

    return v0
.end method

.method public getFocusViewWidth()F
    .locals 1

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getFocusViewWidth()F

    move-result v0

    return v0
.end method

.method public getImagerOrientation()I
    .locals 1

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getImagerOrientation()I

    move-result v0

    return v0
.end method

.method public getIsoValues()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getIsoValues()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastCamcorderMode()I
    .locals 1

    .prologue
    .line 966
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->lastCamcorderMode:I

    return v0
.end method

.method public getLastCameraMode()I
    .locals 1

    .prologue
    .line 956
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->lastCameraMode:I

    return v0
.end method

.method public getLocStatus()I
    .locals 1

    .prologue
    .line 853
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isSearchingLoc:I

    return v0
.end method

.method public getMaxExpCompensationIndex()I
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getMaxExpCompensationIndex()I

    move-result v0

    return v0
.end method

.method public getMaxPanResDimension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getMaxPanResDimension()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxPicResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getMaxPicResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinExpCompensationIndex()I
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getMinExpCompensationIndex()I

    move-result v0

    return v0
.end method

.method public getModeCount()I
    .locals 1

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getModeCount()I

    move-result v0

    return v0
.end method

.method public getModeCountCamcorder()I
    .locals 1

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getModeCountCamcorder()I

    move-result v0

    return v0
.end method

.method public getModesDataEntries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1149
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPictureModesGridDataArray:Ljava/util/ArrayList;

    .line 1152
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesGridDataArray:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getModesValueEntries()[I
    .locals 1

    .prologue
    .line 1122
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPictureModesValue:[I

    .line 1125
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesValue:[I

    goto :goto_0
.end method

.method public getNormalModePicResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getNormalModePicResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPicResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getPicResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositionFromAutoTimer(I)I
    .locals 4
    .parameter "timer"

    .prologue
    .line 694
    const/4 v1, -0x1

    .line 695
    .local v1, position:I
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getAutoTimerValueEntries()[I

    move-result-object v2

    .line 697
    .local v2, timers:[I
    if-eqz p1, :cond_0

    .line 698
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 699
    aget v3, v2, v0

    if-ne p1, v3, :cond_1

    .line 700
    move v1, v0

    .line 706
    .end local v0           #index:I
    :cond_0
    return v1

    .line 698
    .restart local v0       #index:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPositionFromMode(I)I
    .locals 4
    .parameter "mode"

    .prologue
    .line 677
    const/4 v2, -0x1

    .line 678
    .local v2, position:I
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getModesValueEntries()[I

    move-result-object v1

    .line 680
    .local v1, modes:[I
    if-eqz v1, :cond_0

    .line 681
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 682
    aget v3, v1, v0

    if-ne p1, v3, :cond_1

    .line 683
    move v2, v0

    .line 689
    .end local v0           #index:I
    :cond_0
    return v2

    .line 681
    .restart local v0       #index:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPositionFromTimeLapse(I)I
    .locals 4
    .parameter "timelapseValue"

    .prologue
    .line 710
    const/4 v1, -0x1

    .line 711
    .local v1, position:I
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getTimeLapseValueEntries()[I

    move-result-object v2

    .line 713
    .local v2, values:[I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 714
    aget v3, v2, v0

    if-ne p1, v3, :cond_1

    .line 715
    move v1, v0

    .line 720
    :cond_0
    return v1

    .line 713
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getReviewTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 644
    const-string v0, "0"

    return-object v0
.end method

.method public getSDPlug()Z
    .locals 1

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mHasSDPluged:Z

    return v0
.end method

.method public getSceneCountCamcorder()I
    .locals 1

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSceneCountCamcorder()I

    move-result v0

    return v0
.end method

.method public getSceneCountCamera()I
    .locals 1

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSceneCountCamera()I

    move-result v0

    return v0
.end method

.method public getScenesDataEntries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1162
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mScenesGridDataArray:Ljava/util/ArrayList;

    .line 1165
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVScenesGridDataArray:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getSensorVidResList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSensorVidResList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShutterAnimation()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 992
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_ANIM_MENU_ENABLED:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "Shutter Animation"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getShutterToneOn()Z
    .locals 3

    .prologue
    .line 985
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Shutter Tone"

    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_TONE_ENABLED:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSpecificCamSetting(I)Lcom/motorola/Camera/CamSetting/CamSetting;
    .locals 1
    .parameter "which"

    .prologue
    .line 1790
    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1791
    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mBackCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1792
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1790
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStitchMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getStitchMode()Ljava/lang/String;

    move-result-object v0

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
    .line 1533
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportEffectsValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedEffects()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportedEffects()Ljava/lang/String;

    move-result-object v0

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
    .line 1537
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportedEffectsImg()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedScenes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeLapseValueEntries()[I
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mTimelapseEntries:[I

    return-object v0
.end method

.method public getTimelapseImgEntries()[I
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mTimelapseImgResources:[I

    return-object v0
.end method

.method public getToolbarOpenStatus()Z
    .locals 1

    .prologue
    .line 1815
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mToolbarOpenStatus:Z

    return v0
.end method

.method public getVideoBitrate()I
    .locals 1

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getVideoBitrate()I

    move-result v0

    return v0
.end method

.method public getVideoResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoResolutionEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getVideoResolutionEntries()[Ljava/lang/CharSequence;

    move-result-object v0

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
    .line 1621
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getVideoResolutionSummaries()Ljava/util/List;

    move-result-object v0

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
    .line 1611
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getVideoResolutionTextIcons()Ljava/util/List;

    move-result-object v0

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
    .line 1606
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getVideoResolutionValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVideoStabilization()Z
    .locals 1

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getVideoStabilization()Z

    move-result v0

    return v0
.end method

.method public getVolumeKeySetting()I
    .locals 3

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Volume Key Setting"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWSPicResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getWSPicResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZoomNum()I
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getZoomNum()I

    move-result v0

    return v0
.end method

.method public getcurrentExposure()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getcurrentExposure()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getcurrentISO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getcurrentISO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAudioMuted()Z
    .locals 3

    .prologue
    .line 971
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->SHOW_MUTE_AUDIO_SETTING:Z

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Mute Audio"

    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->MUTE_AUDIO:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 974
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAudioScenesSupported()Z
    .locals 1

    .prologue
    .line 1185
    sget-boolean v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mIsAudioScenesSupported:Z

    return v0
.end method

.method public isAudioZoomOn()Z
    .locals 1

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isAudioZoomOn()Z

    move-result v0

    return v0
.end method

.method public isAutoFocusSupported()Z
    .locals 1

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isAutoFocusSupported()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isBackCamera()Z
    .locals 2

    .prologue
    .line 1796
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mBackCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCamcorderZoomSupported()Z
    .locals 1

    .prologue
    .line 809
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCamcorderZoomSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCameraLaunchedFromCamcorder()Z
    .locals 1

    .prologue
    .line 865
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->cameraLaunchedFromCamcorder:Z

    return v0
.end method

.method public isContinuousFocusEnabled()Z
    .locals 1

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isContinuousFocusEnabled()Z

    move-result v0

    return v0
.end method

.method public isContinuousFocusSupported()Z
    .locals 1

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isContinuousFocusSupported()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isCurrCamInit()Z
    .locals 1

    .prologue
    .line 1800
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDualCameraSupported()Z
    .locals 1

    .prologue
    .line 1012
    sget-boolean v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->internalCameraSupported:Z

    return v0
.end method

.method public isDynamicFocusSupported()Z
    .locals 1

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isDynamicFocusSupported()Z

    move-result v0

    return v0
.end method

.method public isEulaShown()Z
    .locals 1

    .prologue
    .line 899
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isEulaShown:Z

    return v0
.end method

.method public isFaceDetectionEnable()Z
    .locals 1

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isFaceDetectionEnable()Z

    move-result v0

    return v0
.end method

.method public isFaceTrackingOn()Z
    .locals 3

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Face Detection"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHDRSupported()Z
    .locals 1

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isHDRSupported()Z

    move-result v0

    return v0
.end method

.method public isImageStabilizationEnabled()Z
    .locals 1

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isImageStabilizationEnabled()Z

    move-result v0

    return v0
.end method

.method public isInScroll()Z
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isInScroll()Z

    move-result v0

    return v0
.end method

.method public isInSecurelyLockedMode()Z
    .locals 1

    .prologue
    .line 931
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mIsInSecurelyLockedMode:Z

    return v0
.end method

.method public isInServiceMode()Z
    .locals 1

    .prologue
    .line 911
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mIsServiceMode:Z

    return v0
.end method

.method public isInfiniteFocus()Z
    .locals 1

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isInfiniteFocus()Z

    move-result v0

    return v0
.end method

.method public isLocationOn()Z
    .locals 1

    .prologue
    .line 888
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn:Z

    return v0
.end method

.method public isMultishotEnable()Z
    .locals 1

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isMultishotEnable()Z

    move-result v0

    return v0
.end method

.method public isPanoramaFeatureEnable()Z
    .locals 1

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isPanoramaFeatureEnable()Z

    move-result v0

    return v0
.end method

.method public isProviderEnabled()Z
    .locals 1

    .prologue
    .line 1883
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isProviderEnabled:Z

    return v0
.end method

.method public isReturnFromTag()Z
    .locals 1

    .prologue
    .line 940
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mReturnFromTag:Z

    return v0
.end method

.method public isSDEncryptionEnabled()Z
    .locals 1

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isSDEncryptionEnabled()Z

    move-result v0

    return v0
.end method

.method public isTorchSupported()Z
    .locals 1

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isTorchSupported()Z

    move-result v0

    return v0
.end method

.method public isVideoModesSupported()Z
    .locals 1

    .prologue
    .line 821
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mSlowModeSupported:Z

    return v0
.end method

.method public isVideoStabilizationDemoSupported()Z
    .locals 1

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getVideoStabilizationDemoSupported()Z

    move-result v0

    return v0
.end method

.method public isVideoStabilizationSupported()Z
    .locals 1

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getVideoStabilizationSupported()Z

    move-result v0

    return v0
.end method

.method public isWDREnabled()Z
    .locals 1

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isWDREnabled()Z

    move-result v0

    return v0
.end method

.method public isWdrForVideo()Z
    .locals 1

    .prologue
    .line 1890
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isWdrForVideo()Z

    move-result v0

    return v0
.end method

.method public isWideScreenDisplay()Z
    .locals 1

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isWideScreenDisplay()Z

    move-result v0

    return v0
.end method

.method public isZoomSupported()Z
    .locals 1

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isZoomSupported()Z

    move-result v0

    return v0
.end method

.method public loadAutoDetectValues()V
    .locals 1

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->loadAutoDetectValues()V

    .line 1392
    return-void
.end method

.method public loadCommonRunTimeProperties()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 593
    const-string v2, "ro.media.capture.shuttertone"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, shutterToneUI:Ljava/lang/String;
    const-string v2, "ro.camera.sound.forced"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, ForceShutterTone:Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 598
    sput-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_TONE_MENU_ENABLED:Z

    .line 601
    :cond_0
    const-string v2, "ro.camcorder.zoom"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 602
    const-string v2, "CommonCamSetting"

    const-string v3, "Camcorder zoom supported"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual {p0, v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCamcorderZoomSupported(Z)V

    .line 606
    :cond_1
    const-string v2, "ro.video.slow"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSlowModeSupported(Z)V

    .line 607
    const-string v2, "ro.video.fast"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setFastModeSupported(Z)V

    .line 609
    const-string v2, "ro.camera.shutteranimation"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_ANIM_MENU_ENABLED:Z

    .line 612
    return-void
.end method

.method public loadSliderData()V
    .locals 26

    .prologue
    .line 373
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mLightImgResources:Ljava/util/List;

    .line 374
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mLightGridDataArray:Ljava/util/ArrayList;

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070044

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 377
    .local v19, titleStringData:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070045

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 378
    .local v11, imgData:[Ljava/lang/String;
    sget-boolean v21, Lcom/motorola/Camera/CameraGlobalType;->FLASH:Z

    if-eqz v21, :cond_0

    .line 379
    const/4 v9, 0x2

    .line 383
    .local v9, gridSize:I
    :goto_0
    const/4 v13, 0x0

    .local v13, ind:I
    :goto_1
    if-ge v13, v9, :cond_1

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mLightImgResources:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    aget-object v23, v11, v13

    const-string v24, "drawable"

    const-string v25, "com.motorola.Camera"

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mLightGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Lcom/motorola/Camera/DialogGridData;

    aget-object v24, v19, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mLightImgResources:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/motorola/Camera/DialogGridData;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 383
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 381
    .end local v9           #gridSize:I
    .end local v13           #ind:I
    :cond_0
    move-object/from16 v0, v19

    array-length v9, v0

    .restart local v9       #gridSize:I
    goto :goto_0

    .line 390
    .restart local v13       #ind:I
    :cond_1
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFlashImgResources:Ljava/util/List;

    .line 391
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFlashGridDataArray:Ljava/util/ArrayList;

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070042

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070043

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 395
    move-object/from16 v0, v19

    array-length v9, v0

    .line 396
    const-string v21, "CommonCamSetting"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "gridSize"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v21, "CommonCamSetting"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "titleStringData"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v9, :cond_2

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFlashImgResources:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    aget-object v23, v11, v13

    const-string v24, "drawable"

    const-string v25, "com.motorola.Camera"

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFlashGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Lcom/motorola/Camera/DialogGridData;

    aget-object v24, v19, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFlashImgResources:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/motorola/Camera/DialogGridData;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 399
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 408
    :cond_2
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPictureModesImgResources:Ljava/util/List;

    .line 409
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPictureModesGridDataArray:Ljava/util/ArrayList;

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f07002f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070030

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f07002e

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v15

    .line 413
    .local v15, pictureModesValue:[I
    array-length v0, v15

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPictureModesValue:[I

    .line 415
    move-object/from16 v0, v19

    array-length v9, v0

    .line 417
    const/4 v5, 0x0

    .line 419
    .local v5, arrayIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070032

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 420
    .local v12, imgDataAutoTimer:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAutoTimerImgResources:[I

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070031

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAutoTimerValue:[I

    .line 423
    const/4 v13, 0x0

    :goto_3
    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_3

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAutoTimerImgResources:[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    aget-object v23, v12, v13

    const-string v24, "drawable"

    const-string v25, "com.motorola.Camera"

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    aput v22, v21, v13

    .line 423
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 427
    :cond_3
    const/4 v13, 0x0

    :goto_4
    if-ge v13, v9, :cond_e

    .line 429
    aget v21, v15, v13

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/Camera/CamSetting/CamSetting;->isMultishotEnable()Z

    move-result v21

    if-eqz v21, :cond_9

    :cond_4
    aget v21, v15, v13

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/Camera/CamSetting/CamSetting;->isPanoramaFeatureEnable()Z

    move-result v21

    if-eqz v21, :cond_9

    :cond_5
    aget v21, v15, v13

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/Camera/CamSetting/CamSetting;->isFaceDetectionEnable()Z

    move-result v21

    if-eqz v21, :cond_9

    :cond_6
    aget v21, v15, v13

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/Camera/CamSetting/CamSetting;->isHDRSupported()Z

    move-result v21

    if-eqz v21, :cond_9

    :cond_7
    aget v21, v15, v13

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAutoTimerCaptureSupported:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    :cond_8
    aget v21, v15, v13

    const/16 v22, 0x6

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/Camera/CamSetting/CamSetting;->isWDREnabled()Z

    move-result v21

    if-nez v21, :cond_a

    .line 427
    :cond_9
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 436
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPictureModesValue:[I

    move-object/from16 v21, v0

    aget v22, v15, v13

    aput v22, v21, v5

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPictureModesImgResources:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    aget-object v23, v11, v13

    const-string v24, "drawable"

    const-string v25, "com.motorola.Camera"

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    aget v21, v15, v13

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v21

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    .line 440
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPictureModesGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Lcom/motorola/Camera/DialogGridData;

    aget-object v24, v19, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPictureModesImgResources:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/motorola/Camera/DialogGridData;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 449
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 442
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAutoTimer:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPositionFromAutoTimer(I)I

    move-result v14

    .line 443
    .local v14, index:I
    if-ltz v14, :cond_d

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPictureModesGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    new-instance v22, Lcom/motorola/Camera/DialogGridData;

    aget-object v23, v19, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAutoTimerImgResources:[I

    move-object/from16 v24, v0

    aget v24, v24, v14

    invoke-direct/range {v22 .. v24}, Lcom/motorola/Camera/DialogGridData;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_6

    .line 446
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPictureModesGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Lcom/motorola/Camera/DialogGridData;

    aget-object v24, v19, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPictureModesImgResources:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/motorola/Camera/DialogGridData;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_6

    .line 454
    .end local v14           #index:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070036

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 455
    .local v4, array:Landroid/content/res/TypedArray;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mTimelapseImgResources:[I

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070038

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mTimelapseEntries:[I

    .line 457
    const/4 v10, 0x0

    .local v10, i:I
    :goto_7
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_f

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mTimelapseImgResources:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    aput v22, v21, v10

    .line 457
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 461
    :cond_f
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 466
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesImgResources:Ljava/util/List;

    .line 467
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesGridDataArray:Ljava/util/ArrayList;

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070035

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070039

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070034

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v20

    .line 472
    .local v20, videoModesValue:[I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesValue:[I

    .line 473
    move-object/from16 v0, v19

    array-length v9, v0

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0b001b

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 475
    .local v17, slowMotion:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0b001a

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 477
    .local v8, fastMotion:Ljava/lang/String;
    const/4 v5, 0x0

    .line 478
    const/4 v13, 0x0

    :goto_8
    if-ge v13, v9, :cond_16

    .line 480
    const-string v21, "CommonCamSetting"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MODE : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-object v23, v19, v13

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-object v23, v11, v13

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mSlowModeSupported:Z

    move/from16 v21, v0

    if-nez v21, :cond_10

    aget-object v21, v19, v13

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_12

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isWdrForVideo()Z

    move-result v21

    if-nez v21, :cond_11

    aget v21, v20, v13

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFastModeSupported:Z

    move/from16 v21, v0

    if-nez v21, :cond_13

    aget-object v21, v19, v13

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 478
    :cond_12
    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 487
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesValue:[I

    move-object/from16 v21, v0

    aget v22, v20, v13

    aput v22, v21, v5

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesImgResources:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    aget-object v23, v11, v13

    const-string v24, "drawable"

    const-string v25, "com.motorola.Camera"

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    const-string v21, "CommonCamSetting"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MODE : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesImgResources:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    aget v21, v20, v13

    const/16 v22, 0xd

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_14

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Lcom/motorola/Camera/DialogGridData;

    aget-object v24, v19, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesImgResources:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesImgResources:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/motorola/Camera/DialogGridData;-><init>(Ljava/lang/String;I)V

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    .line 495
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrentTimeLapse:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPositionFromTimeLapse(I)I

    move-result v16

    .line 496
    .local v16, pos:I
    if-ltz v16, :cond_15

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    new-instance v22, Lcom/motorola/Camera/DialogGridData;

    aget-object v23, v19, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mTimelapseImgResources:[I

    move-object/from16 v24, v0

    aget v24, v24, v16

    invoke-direct/range {v22 .. v24}, Lcom/motorola/Camera/DialogGridData;-><init>(Ljava/lang/String;I)V

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 499
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    new-instance v22, Lcom/motorola/Camera/DialogGridData;

    aget-object v23, v19, v13

    const v24, 0x7f0200c5

    invoke-direct/range {v22 .. v24}, Lcom/motorola/Camera/DialogGridData;-><init>(Ljava/lang/String;I)V

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 505
    .end local v16           #pos:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportedEffects()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportedEffects()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_17

    .line 509
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mEffectsGridDataArray:Ljava/util/ArrayList;

    .line 510
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mEffectsImgResources:Ljava/util/ArrayList;

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportEffectsValues()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v9

    .line 513
    const/4 v13, 0x0

    :goto_b
    if-ge v13, v9, :cond_17

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mEffectsImgResources:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportedEffectsImg()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const-string v24, "drawable"

    const-string v25, "com.motorola.Camera"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mEffectsGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    new-instance v24, Lcom/motorola/Camera/DialogGridData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportEffectsTitle()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mEffectsImgResources:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/motorola/Camera/DialogGridData;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 513
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 521
    :cond_17
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mScenesGridDataArray:Ljava/util/ArrayList;

    .line 522
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mScenesImgResources:Ljava/util/ArrayList;

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070023

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070024

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 526
    move-object/from16 v0, v19

    array-length v9, v0

    .line 528
    const/4 v13, 0x0

    :goto_c
    if-ge v13, v9, :cond_19

    .line 530
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isImageStabilizationEnabled()Z

    move-result v21

    if-nez v21, :cond_18

    aget-object v21, v19, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0b0106

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 528
    :goto_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 534
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mScenesImgResources:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    aget-object v23, v11, v13

    const-string v24, "drawable"

    const-string v25, "com.motorola.Camera"

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mScenesGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Lcom/motorola/Camera/DialogGridData;

    aget-object v24, v19, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mScenesImgResources:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/motorola/Camera/DialogGridData;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_d

    .line 542
    :cond_19
    sget-boolean v21, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mIsAudioScenesSupported:Z

    if-eqz v21, :cond_1c

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAudioScenesValues:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 547
    .local v18, tempscenes:[Ljava/lang/String;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVScenesGridDataArray:Ljava/util/ArrayList;

    .line 548
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVScenesImgResources:Ljava/util/ArrayList;

    .line 549
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->audioScenesValues:Ljava/util/List;

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070029

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f07002a

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070028

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 555
    .local v6, audioScenesArray:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v9, v0

    .line 556
    const/4 v7, 0x0

    .line 558
    .local v7, audioarrayIndex:I
    const/4 v10, 0x0

    :goto_e
    if-ge v10, v9, :cond_1d

    .line 560
    const/4 v13, 0x0

    :goto_f
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_1b

    .line 562
    aget-object v21, v6, v10

    aget-object v22, v18, v13

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1a

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->audioScenesValues:Ljava/util/List;

    move-object/from16 v21, v0

    aget-object v22, v18, v13

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVScenesImgResources:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    aget-object v23, v11, v10

    const-string v24, "drawable"

    const-string v25, "com.motorola.Camera"

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVScenesGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Lcom/motorola/Camera/DialogGridData;

    aget-object v24, v19, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVScenesImgResources:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/motorola/Camera/DialogGridData;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 567
    add-int/lit8 v7, v7, 0x1

    .line 560
    :cond_1a
    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    .line 558
    :cond_1b
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 575
    .end local v6           #audioScenesArray:[Ljava/lang/String;
    .end local v7           #audioarrayIndex:I
    .end local v18           #tempscenes:[Ljava/lang/String;
    :cond_1c
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVScenesGridDataArray:Ljava/util/ArrayList;

    .line 576
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVScenesImgResources:Ljava/util/ArrayList;

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070026

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070027

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 580
    move-object/from16 v0, v19

    array-length v9, v0

    .line 582
    const/4 v13, 0x0

    :goto_10
    if-ge v13, v9, :cond_1d

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVScenesImgResources:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    aget-object v23, v11, v13

    const-string v24, "drawable"

    const-string v25, "com.motorola.Camera"

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVScenesGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Lcom/motorola/Camera/DialogGridData;

    aget-object v24, v19, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVScenesImgResources:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/motorola/Camera/DialogGridData;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 582
    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    .line 589
    :cond_1d
    return-void
.end method

.method public declared-synchronized resetContext(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1710
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mBackCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->resetContext(Landroid/content/Context;)V

    .line 1713
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    if-eqz v0, :cond_0

    .line 1714
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->resetContext(Landroid/content/Context;)V

    .line 1716
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    if-ne v0, p1, :cond_1

    .line 1717
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1719
    :cond_1
    monitor-exit p0

    return-void

    .line 1710
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized save()V
    .locals 3

    .prologue
    .line 1741
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAttrsChanged:Z

    .line 1742
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 1743
    const-string v1, "CommonCamSetting"

    const-string v2, "save() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1747
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "isLocationOn"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1748
    const-string v1, "isEulaShown"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isEulaShown:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1750
    const-string v1, "mHasSDPluged"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mHasSDPluged:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1751
    const-string v1, "internalCameraSupported"

    sget-boolean v2, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->internalCameraSupported:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1752
    const-string v1, "mCamcorderZoom"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCamcorderZoomSupported:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1753
    const-string v1, "mToolbarOpenStatus"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mToolbarOpenStatus:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1756
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1758
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mBackCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CamSetting;->save()V

    .line 1759
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    if-eqz v1, :cond_1

    .line 1760
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CamSetting;->save()V

    .line 1762
    :cond_1
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 1763
    const-string v1, "CommonCamSetting"

    const-string v2, "save() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1765
    :cond_2
    monitor-exit p0

    return-void

    .line 1741
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setAESSensorVidResList(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setAESSensorVidResList(Ljava/lang/String;)V

    .line 1688
    return-void
.end method

.method public setAudioBitrate(I)V
    .locals 1
    .parameter "bitrate"

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setAudioBitrate(I)V

    .line 1507
    return-void
.end method

.method public setAudioScenesSupported(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1181
    sput-boolean p1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mIsAudioScenesSupported:Z

    .line 1182
    return-void
.end method

.method public setAudioZoom(Z)V
    .locals 1
    .parameter "toggle"

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setAudioZoom(Z)V

    .line 1402
    return-void
.end method

.method public setCamcorderAESProps(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCamcorderAESProps(Z)V

    .line 1684
    return-void
.end method

.method public declared-synchronized setCamcorderZoomSupported(Z)V
    .locals 1
    .parameter "camcorderZoomSupported"

    .prologue
    .line 817
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCamcorderZoomSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    monitor-exit p0

    return-void

    .line 817
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCameraLaunchFromCamcorderFlag(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 877
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->cameraLaunchedFromCamcorder:Z

    .line 878
    return-void
.end method

.method public setCurrentAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "ad"

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAddress:Ljava/lang/String;

    .line 1006
    return-void
.end method

.method public declared-synchronized setCurrentAppMode(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 1724
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    .line 1725
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    .line 1726
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    const-string v1, "com.motorola.Camera_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    .line 1729
    :cond_0
    iput p2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAppMode:I

    .line 1732
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mBackCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentAppMode(Landroid/content/Context;I)V

    .line 1733
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    if-eqz v0, :cond_1

    .line 1734
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentAppMode(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1736
    :cond_1
    monitor-exit p0

    return-void

    .line 1724
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCurrentAutoTimer(I)V
    .locals 0
    .parameter "timer"

    .prologue
    .line 733
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAutoTimer:I

    .line 734
    return-void
.end method

.method public setCurrentBurstModeRes(Ljava/lang/String;)V
    .locals 1
    .parameter "newRes"

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentBurstModeRes(Ljava/lang/String;)V

    .line 1215
    return-void
.end method

.method public setCurrentEffect(I)V
    .locals 1
    .parameter "effect"

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentEffect(I)V

    .line 1477
    return-void
.end method

.method public setCurrentExpValue(Ljava/lang/String;)V
    .locals 1
    .parameter "newExp"

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentExpValue(Ljava/lang/String;)V

    .line 1234
    return-void
.end method

.method public setCurrentFlash(I)V
    .locals 1
    .parameter "flash"

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentFlash(I)V

    .line 1267
    return-void
.end method

.method public setCurrentFocusOption(Ljava/lang/String;)V
    .locals 1
    .parameter "focus"

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentFocusOption(Ljava/lang/String;)V

    .line 1655
    return-void
.end method

.method public setCurrentIsoValue(Ljava/lang/String;)V
    .locals 1
    .parameter "newIso"

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentIsoValue(Ljava/lang/String;)V

    .line 1224
    return-void
.end method

.method public setCurrentMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 749
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAppMode:I

    if-nez v0, :cond_4

    .line 752
    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-ne p1, v0, :cond_3

    .line 756
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 757
    const-string v0, "CommonCamSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentModeV:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_1
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentModeV:I

    .line 782
    :goto_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mBackCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentMode(I)V

    .line 783
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    if-eqz v0, :cond_2

    .line 784
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentMode(I)V

    .line 785
    :cond_2
    return-void

    .line 763
    :cond_3
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentMode:I

    goto :goto_0

    .line 767
    :cond_4
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 769
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_5

    .line 770
    const-string v0, "CommonCamSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentModeV:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_5
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentModeV:I

    goto :goto_0

    .line 777
    :cond_6
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_7

    .line 778
    const-string v0, "CommonCamSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentModeV:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_7
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentModeV:I

    goto :goto_0
.end method

.method public setCurrentPanResDimension(Ljava/lang/String;)V
    .locals 1
    .parameter "currPanResDim"

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentPanResDimension(Ljava/lang/String;)V

    .line 1588
    return-void
.end method

.method public setCurrentResolution(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentResolution(Z)V

    .line 1826
    return-void
.end method

.method public setCurrentScene(I)V
    .locals 1
    .parameter "scene"

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentScene(I)V

    .line 1472
    return-void
.end method

.method public setCurrentSingleShotRes(Ljava/lang/String;)V
    .locals 1
    .parameter "newRes"

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentSingleShotRes(Ljava/lang/String;)V

    .line 1211
    return-void
.end method

.method public setCurrentStitchMode(Ljava/lang/String;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentStitchMode(Ljava/lang/String;)V

    .line 1262
    return-void
.end method

.method public setCurrentStorageLocation(I)V
    .locals 3
    .parameter "location"

    .prologue
    .line 1055
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1056
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "Storage Location"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1057
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1059
    return-void
.end method

.method public setCurrentTimeLapse(I)V
    .locals 0
    .parameter "timelapse"

    .prologue
    .line 737
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrentTimeLapse:I

    .line 738
    return-void
.end method

.method public setCurrentVideoRes(Ljava/lang/String;)V
    .locals 1
    .parameter "newRes"

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 1199
    return-void
.end method

.method public setDefaultAESVideoResolution()V
    .locals 1

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->setDefaultAESVideoResolution()V

    .line 1692
    return-void
.end method

.method public setDefaultFPSRange(II)V
    .locals 1
    .parameter "fpsRangeMin"
    .parameter "fpsRangeMax"

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/Camera/CamSetting/CamSetting;->setDefaultFPSRange(II)V

    .line 1899
    return-void
.end method

.method public setDefaultVideoResolution()V
    .locals 1

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->setDefaultVideoResolution()V

    .line 1696
    return-void
.end method

.method public setDefaultZoomValue()V
    .locals 1

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->setDefaultZoomValue()V

    .line 1467
    return-void
.end method

.method public setDualCameraSuport(Z)V
    .locals 0
    .parameter "support"

    .prologue
    .line 1018
    sput-boolean p1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->internalCameraSupported:Z

    .line 1019
    return-void
.end method

.method public setEulaShown(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "shown"

    .prologue
    .line 799
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAttrsChanged:Z

    .line 800
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isEulaShown:Z

    .line 801
    return-void
.end method

.method public setExpCompensationStep(F)V
    .locals 1
    .parameter "expComp"

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setExpCompensationStep(F)V

    .line 1250
    return-void
.end method

.method public setFaceDetectionEnable(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setFaceDetectionEnable(Z)V

    .line 1444
    return-void
.end method

.method public setFaceTracking(Z)V
    .locals 1
    .parameter "toggle"

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setFaceTracking(Z)V

    .line 1412
    return-void
.end method

.method public setFastModeSupported(Z)V
    .locals 0
    .parameter "videoModeSupported"

    .prologue
    .line 829
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFastModeSupported:Z

    .line 830
    return-void
.end method

.method public setFlashModes(Ljava/lang/String;)V
    .locals 1
    .parameter "modes"

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setFlashModes(Ljava/lang/String;)V

    .line 1372
    return-void
.end method

.method public setFocusModes(Ljava/lang/String;)V
    .locals 1
    .parameter "modes"

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setFocusModes(Ljava/lang/String;)V

    .line 1362
    return-void
.end method

.method public setFocusViewHeight(F)V
    .locals 1
    .parameter "val"

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setFocusViewHeight(F)V

    .line 1297
    return-void
.end method

.method public setFocusViewWidth(F)V
    .locals 1
    .parameter "val"

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setFocusViewWidth(F)V

    .line 1292
    return-void
.end method

.method public setHDRSupport(Z)V
    .locals 1
    .parameter "supported"

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setHDRSupport(Z)V

    .line 1671
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hdl"

    .prologue
    .line 1805
    if-eqz p1, :cond_0

    .line 1806
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mMainHandler:Landroid/os/Handler;

    .line 1807
    :cond_0
    return-void
.end method

.method public setImageStabilization(Z)V
    .locals 1
    .parameter "imageStabilizationEnable"

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setImageStabilization(Z)V

    .line 1869
    return-void
.end method

.method public setImagerOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setImagerOrientation(I)V

    .line 1700
    return-void
.end method

.method public setInScroll(Z)V
    .locals 1
    .parameter "setting"

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setInScroll(Z)V

    .line 1277
    return-void
.end method

.method public setIsoValues(Ljava/lang/String;)V
    .locals 1
    .parameter "isoV"

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setIsoValues(Ljava/lang/String;)V

    .line 1382
    return-void
.end method

.method public setLastCamcorderMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 961
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->lastCamcorderMode:I

    .line 962
    return-void
.end method

.method public setLastCameraMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 951
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->lastCameraMode:I

    .line 952
    return-void
.end method

.method public setLocationOn(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "on"

    .prologue
    .line 790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAttrsChanged:Z

    .line 791
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn:Z

    .line 792
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 793
    :cond_0
    return-void
.end method

.method public setMaxExpCompensationIndex(I)V
    .locals 1
    .parameter "maxEI"

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setMaxExpCompensationIndex(I)V

    .line 1258
    return-void
.end method

.method public setMaxPanResDimension(Ljava/lang/String;)V
    .locals 1
    .parameter "maxPanResDim"

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setMaxPanResDimension(Ljava/lang/String;)V

    .line 1596
    return-void
.end method

.method public setMaxPicResolution(Ljava/lang/String;)V
    .locals 1
    .parameter "max"

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setMaxPicResolution(Ljava/lang/String;)V

    .line 1337
    return-void
.end method

.method public setMaxWSPicResolution(Ljava/lang/String;)V
    .locals 1
    .parameter "wsSize"

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setMaxWSPicResolution(Ljava/lang/String;)V

    .line 1821
    return-void
.end method

.method public setMinExpCompensationIndex(I)V
    .locals 1
    .parameter "minEI"

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setMinExpCompensationIndex(I)V

    .line 1242
    return-void
.end method

.method public setMultishotEnable(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setMultishotEnable(Z)V

    .line 1439
    return-void
.end method

.method public setPanoramaFeatureEnable()V
    .locals 1

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->setPanoramaFeatureEnable()V

    .line 1543
    return-void
.end method

.method public setProviderEnabled(Z)V
    .locals 0
    .parameter "isProviderEnabled"

    .prologue
    .line 1887
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isProviderEnabled:Z

    .line 1888
    return-void
.end method

.method public setReturnFromTag(Z)V
    .locals 0
    .parameter "setting"

    .prologue
    .line 946
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mReturnFromTag:Z

    .line 947
    return-void
.end method

.method public setSDPlug(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 625
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAttrsChanged:Z

    .line 626
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mHasSDPluged:Z

    .line 627
    return-void
.end method

.method public setSearchingLoc(I)V
    .locals 1
    .parameter "search"

    .prologue
    .line 841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAttrsChanged:Z

    .line 842
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isSearchingLoc:I

    .line 843
    return-void
.end method

.method public setSecurelyLockedMode(Z)V
    .locals 0
    .parameter "isSecurelyLocked"

    .prologue
    .line 935
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mIsInSecurelyLockedMode:Z

    .line 936
    return-void
.end method

.method public setSensorVidResList(Ljava/lang/String;)V
    .locals 1
    .parameter "vidRes"

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setSensorVidResList(Ljava/lang/String;)V

    .line 1352
    return-void
.end method

.method public setServiceMode(Z)V
    .locals 1
    .parameter "setting"

    .prologue
    .line 922
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mIsServiceMode:Z

    .line 923
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mBackCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setServiceMode(Z)V

    .line 924
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setServiceMode(Z)V

    .line 927
    :cond_0
    return-void
.end method

.method public setServiceModeResolution(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setServiceModeResolution(Ljava/lang/String;)V

    .line 1195
    return-void
.end method

.method public setSlowModeSupported(Z)V
    .locals 0
    .parameter "videoModesSupported"

    .prologue
    .line 825
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mSlowModeSupported:Z

    .line 826
    return-void
.end method

.method public declared-synchronized setSpecificCamSetting(I)Z
    .locals 2
    .parameter "which"

    .prologue
    const/4 v0, 0x1

    .line 1780
    monitor-enter p0

    if-ne p1, v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mBackCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    :goto_0
    iput-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    .line 1782
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1783
    const/4 v0, 0x0

    .line 1785
    :cond_0
    monitor-exit p0

    return v0

    .line 1780
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSupportedAudioScenes(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAudioScenesValues:Ljava/lang/String;

    .line 1173
    return-void
.end method

.method public setSupportedEffects(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setSupportedEffects(Ljava/lang/String;)V

    .line 1526
    return-void
.end method

.method public setSupportedScenes(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setSupportedScenes(Ljava/lang/String;)V

    .line 1517
    return-void
.end method

.method public setToolbarOpenStatus(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1811
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mToolbarOpenStatus:Z

    .line 1812
    return-void
.end method

.method public setTorchSupported(Z)V
    .locals 1
    .parameter "support"

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setTorchSupported(Z)V

    .line 1558
    return-void
.end method

.method public setVideoBitrate(I)V
    .locals 1
    .parameter "bitrate"

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setVideoBitrate(I)V

    .line 1497
    return-void
.end method

.method public setVideoResolutionService(Ljava/lang/String;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setVideoResolutionService(Ljava/lang/String;)V

    .line 1417
    return-void
.end method

.method public setVideoStabilization(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setVideoStabilization(Z)V

    .line 1864
    return-void
.end method

.method public setVideoStabilizationDemoSupported(Z)V
    .locals 1
    .parameter "support"

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setVideoStabilizationDemoSupported(Z)V

    .line 1856
    return-void
.end method

.method public setVideoStabilizationSupported(Z)V
    .locals 1
    .parameter "support"

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setVideoStabilizationSupported(Z)V

    .line 1848
    return-void
.end method

.method public setVolumeKeySetting(I)V
    .locals 3
    .parameter "selection"

    .prologue
    .line 1420
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVolumeKeySetting:I

    .line 1421
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1422
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "Volume Key Setting"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVolumeKeySetting:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1423
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1424
    return-void
.end method

.method public setWDREnable(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setWDREnable(Z)V

    .line 1876
    return-void
.end method

.method public setWdrForVideo(Z)V
    .locals 1
    .parameter "wdrForVideo"

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setWdrForVideo(Z)V

    .line 1895
    return-void
.end method

.method public setWideScreenDisplay(Z)V
    .locals 1
    .parameter "wideScreenEnable"

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setWideScreenDisplay(Z)V

    .line 1840
    return-void
.end method

.method public setZoomNum(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setZoomNum(I)V

    .line 1462
    :cond_0
    return-void
.end method

.method public setZoomSupport(Z)V
    .locals 1
    .parameter "support"

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setZoomSupport(Z)V

    .line 1302
    return-void
.end method

.method public declared-synchronized toggleCamSetting()Z
    .locals 2

    .prologue
    .line 1771
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mBackCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    :goto_0
    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    .line 1773
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1774
    const/4 v0, 0x0

    .line 1776
    :goto_1
    monitor-exit p0

    return v0

    .line 1771
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1776
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 1771
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
