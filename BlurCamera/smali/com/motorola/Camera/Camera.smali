.class public Lcom/motorola/Camera/Camera;
.super Landroid/app/Activity;
.source "Camera.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/motorola/Camera/FocusManager$FocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/Camera$CameraDialog;,
        Lcom/motorola/Camera/Camera$MotoCameraOnZoomChangeListener;,
        Lcom/motorola/Camera/Camera$MotoCameraErrorCallback;,
        Lcom/motorola/Camera/Camera$MotoEnvCallback;,
        Lcom/motorola/Camera/Camera$MotoCameraAutoFocusCallback;,
        Lcom/motorola/Camera/Camera$JpegPictureCallback;,
        Lcom/motorola/Camera/Camera$PostViewPictureCallback;,
        Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;,
        Lcom/motorola/Camera/Camera$PanoramaPictureCallback;,
        Lcom/motorola/Camera/Camera$PanoramaDirectionInfoCallback;,
        Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;,
        Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;,
        Lcom/motorola/Camera/Camera$PanoramaShutterCallback;,
        Lcom/motorola/Camera/Camera$PanoramaErrorCallback;,
        Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;,
        Lcom/motorola/Camera/Camera$storageRunnable;,
        Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;,
        Lcom/motorola/Camera/Camera$storeImageRunnable;,
        Lcom/motorola/Camera/Camera$ImageCapture;,
        Lcom/motorola/Camera/Camera$MainHandler;,
        Lcom/motorola/Camera/Camera$Capturer;
    }
.end annotation


# static fields
.field private static final ACTION_IMAGE_CAPTURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE"

.field public static final ACTION_QUICK_LAUNCH_APP_FAILED:Ljava/lang/String; = "com.motorola.internal.intent.action.QUICK_LAUNCH_APP_FAILED"

.field private static final AUTOTIMER_RES_BUFFER:I = 0xa

.field private static final AUTO_FOCUS:I = 0x1

.field public static final CAMERA_TASK_FLATTENNAME:Ljava/lang/String; = "com.motorola.Camera"

.field private static final CONTINUOUS_FOCUS:I = 0x0

.field public static final EXTRA_QL_APP_NAME:Ljava/lang/String; = "com.motorola.internal.intent.extra.APP_NAME"

.field public static final EXTRA_QL_REASON:Ljava/lang/String; = "com.motorola.internal.intent.extra.REASON"

.field private static final INFINITE_FOCUS:I = 0x3

.field public static final QUICK_LAUNCH_BROADCAST:Ljava/lang/String; = "com.motorola.internal.intent.action.QUICK_LAUNCH_APP"

.field private static final ROTATOR_ORIENTATION_OFFSET:I = 0x5a

.field public static final TAG:Ljava/lang/String; = "MotoCamera"

.field public static final TAG_KPI:Ljava/lang/String; = "MotoCameraKPI"

#the value of this static final field might be set in the static constructor
.field static final mIsRotator:Z = false

.field private static mMultiShotMaxCount:I = 0x0

.field public static mMultishotUriList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static final qvga_res:Ljava/lang/String; = "320x240"

.field public static final sTempCropFilename:Ljava/lang/String; = "crop-temp"


# instance fields
.field private ResAutoTimerDigitImg:[I

.field private autoTimerSoundId:I

.field private bGLSurfaceViewPlaying:Z

.field public errorCase:I

.field public externalPicturesRemaining:I

.field private focusViewSelected:Z

.field public internalPicturesRemaining:I

.field private mAnimationRunning:Z

.field private mAudioMgr:Landroid/media/AudioManager;

.field private mAutoFocusCallback:Lcom/motorola/Camera/Camera$MotoCameraAutoFocusCallback;

.field private mAutoTimerCount:I

.field private mAutoTimerDialog:Lcom/motorola/Camera/Camera$CameraDialog;

.field private mAutotimerCountImg:Landroid/widget/ImageView;

.field private mBlackout:Landroid/widget/ImageView;

.field private mBlackoutBackground:Landroid/graphics/drawable/Drawable;

.field private mBmpPostView:Landroid/graphics/Bitmap;

.field public mCallbacktime:J

.field private mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

.field private mCamUtil:Lcom/motorola/Camera/CameraUtility;

.field private mCameraActivityContext:Landroid/content/Context;

.field private mCameraClass:Lcom/motorola/Camera/Camera;

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraView:Lcom/motorola/Camera/View/CameraView;

.field private mCaptureMultishotEndTime:J

.field private mCaptureMultishotEndTimewithMetaData:J

.field private mCaptureMultishotTime:J

.field private mCaptureMultishotTimeMetaData:J

.field private mCaptureOnFocus:Z

.field private mCaptureOnShortPress:Z

.field private mCaptureProcessingView:Landroid/view/View;

.field public mCaptureStartTime:J

.field mConfig_PL:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field public mController:Lcom/motorola/Camera/View/Control/OnScreenController;

.field private mCurrentStitchMode:I

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mDeviceDisabled:Z

.field private mDidRegister:Z

.field private mDisplayHeight:I

.field private mDisplayOrientation:I

.field private mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

.field mEulaAgreeListener:Landroid/view/View$OnClickListener;

.field mEulaCancelListener:Landroid/view/View$OnClickListener;

.field private mFirstTimeInitialized:Z

.field private mFocus:Landroid/graphics/drawable/Drawable;

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/motorola/Camera/FocusManager;

.field private mFocusToneGenerator:Landroid/media/ToneGenerator;

.field private mFocusValue:I

.field private mFocusView:Landroid/widget/ImageView;

.field private mFocusd:Landroid/graphics/drawable/Drawable;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mHandler:Landroid/os/Handler;

.field public mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

.field public mImageCount:I

.field private mImageResolution:Ljava/lang/String;

.field private mImageToThumbBitmap:Landroid/graphics/Bitmap;

.field private mIsFocusButtonPressed:Z

.field private mIsFocusFail:Z

.field private mIsFocusLocked:Z

.field private mIsFocused:Z

.field private mIsFocusing:Z

.field private mIsImageCaptureIntent:Z

.field private mIsInternalSD:Z

.field public mIsRotatorClosed:Z

.field private mIsSecurelyLockedModeImageCaptureIntent:Z

.field private mIsSpeakerOn:Z

.field private mIsStitching:Z

.field private mIsStoreXmpMetaData:Z

.field private mKeepAndRestartPreview:Z

.field private mKpiS2STimer:J

.field private mKpiStartTimer:J

.field mLastOrientation:I

.field private mLatchedOrientation:I

.field private mLocUtil:Lcom/motorola/Camera/LocUtility;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLockRightSet:Z

.field private mMain:Lcom/motorola/Camera/View/CameraContentView;

.field private mMenuOpened:Z

.field private mMeteringAreaSupported:Z

.field private mMotoEnvCallback:Lcom/motorola/Camera/Camera$MotoEnvCallback;

.field private mMultiShotOrientation:I

.field private mMultiShotOrientationCCW:I

.field private mMultishotCurrentCount:I

.field private mMultishotGroupId:Ljava/lang/String;

.field private mNeedCheckStorage:Z

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPanBeepAFD:Landroid/content/res/AssetFileDescriptor;

.field private mPanBeepSound:Landroid/media/MediaPlayer;

.field private mPanoramaDirectionInfoCallback:Lcom/motorola/Camera/Camera$PanoramaDirectionInfoCallback;

.field private mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;

.field private mPanoramaMaxShot:I

.field private mPanoramaObj:Lcom/motorola/android/camera/Panorama;

.field private mPanoramaPostView:Landroid/graphics/Bitmap;

.field private mPanoramaPostviewCallback:Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;

.field private mPanoramaShotTaken:I

.field private mPanoramaShutterCallback:Lcom/motorola/Camera/Camera$PanoramaShutterCallback;

.field private mPanoramaViewfinderInfoCallback:Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

.field public mPausing:Z

.field public mPicturesRemaining:I

.field private mPostPicturePanel:Landroid/widget/LinearLayout;

.field private mPostText:Landroid/widget/TextView;

.field private mPostView:Z

.field private mPreviewHeight:F

.field private mPreviewWidth:F

.field public mPreviewing:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRender:Lcom/motorola/Camera/View/CameraShutterRender;

.field private mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

.field private volatile mRotateDialogShowing:Z

.field mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSecondaryDialogWidth:I

.field private mShutterCallback:Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;

.field public mShutterCallbackTime:J

.field public mShutterLag:J

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStartLogger:Z

.field private mStartSensorFront:Z

.field private mStatus:I

.field private mStitchingMsgText:Landroid/widget/TextView;

.field private mStitchingProgress:Landroid/widget/ProgressBar;

.field mStorageLocationAlert:Landroid/app/AlertDialog;

.field private mStoreThread:Ljava/lang/Thread;

.field private mSupportedPictureSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceHeight:F

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:F

.field private mTestNumber:I

.field private mThumbThread:Ljava/lang/Thread;

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mThumbnailDecoded:Z

.field private mThumbnailOrientation:I

.field private mTime2Idle:J

.field private mTimerContainer:Landroid/widget/RelativeLayout;

.field private volatile mTimerContainerShowing:Z

.field mTimerListener:Landroid/view/View$OnClickListener;

.field final mUpdatePicInSvcMode:Ljava/lang/Runnable;

.field private mZoomAdjusting:Z

.field private final mZoomChangeListener:Lcom/motorola/Camera/Camera$MotoCameraOnZoomChangeListener;

.field public onScreenStatus:I

.field private pictureHeight:I

.field private picturePixelFormat:I

.field private pictureWidth:I

.field public prevFlash:I

.field private prevScene:I

.field private updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    const-string v0, "ro.hw.rotator"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/Camera/Camera;->mIsRotator:Z

    .line 181
    sput v1, Lcom/motorola/Camera/Camera;->mMultiShotMaxCount:I

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/Camera/Camera;->mMultishotUriList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 158
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsRotatorClosed:Z

    .line 165
    iput v1, p0, Lcom/motorola/Camera/Camera;->mFocusValue:I

    .line 167
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mStorageLocationAlert:Landroid/app/AlertDialog;

    .line 171
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mFirstTimeInitialized:Z

    .line 173
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mZoomAdjusting:Z

    .line 174
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    .line 176
    iput v1, p0, Lcom/motorola/Camera/Camera;->mImageCount:I

    .line 177
    iput-wide v3, p0, Lcom/motorola/Camera/Camera;->mCaptureStartTime:J

    .line 178
    iput-wide v3, p0, Lcom/motorola/Camera/Camera;->mShutterCallbackTime:J

    .line 179
    iput-wide v3, p0, Lcom/motorola/Camera/Camera;->mShutterLag:J

    .line 184
    iput-wide v3, p0, Lcom/motorola/Camera/Camera;->mCaptureMultishotEndTime:J

    .line 185
    iput-wide v3, p0, Lcom/motorola/Camera/Camera;->mCaptureMultishotTime:J

    .line 186
    iput-wide v3, p0, Lcom/motorola/Camera/Camera;->mCaptureMultishotTimeMetaData:J

    .line 187
    iput-wide v3, p0, Lcom/motorola/Camera/Camera;->mCaptureMultishotEndTimewithMetaData:J

    .line 192
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mMultishotGroupId:Ljava/lang/String;

    .line 193
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraActivityContext:Landroid/content/Context;

    .line 194
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraClass:Lcom/motorola/Camera/Camera;

    .line 197
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/Camera/Camera;->mTestNumber:I

    .line 198
    iput v6, p0, Lcom/motorola/Camera/Camera;->mMultiShotOrientation:I

    .line 199
    iput v1, p0, Lcom/motorola/Camera/Camera;->mMultiShotOrientationCCW:I

    .line 201
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    .line 202
    iput v1, p0, Lcom/motorola/Camera/Camera;->onScreenStatus:I

    .line 206
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 207
    iput v1, p0, Lcom/motorola/Camera/Camera;->prevFlash:I

    .line 208
    iput v5, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    .line 209
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mDidRegister:Z

    .line 210
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsFocusing:Z

    .line 211
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsFocused:Z

    .line 212
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mCaptureOnFocus:Z

    .line 213
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsFocusButtonPressed:Z

    .line 214
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsFocusFail:Z

    .line 215
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsFocusLocked:Z

    .line 216
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mLockRightSet:Z

    .line 217
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mCaptureOnShortPress:Z

    .line 218
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mMenuOpened:Z

    .line 222
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    .line 224
    iput v1, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    .line 226
    iput v1, p0, Lcom/motorola/Camera/Camera;->mDisplayHeight:I

    .line 227
    const/high16 v0, 0x4420

    iput v0, p0, Lcom/motorola/Camera/Camera;->mPreviewWidth:F

    .line 228
    const/high16 v0, 0x43a0

    iput v0, p0, Lcom/motorola/Camera/Camera;->mPreviewHeight:F

    .line 229
    const/high16 v0, 0x4420

    iput v0, p0, Lcom/motorola/Camera/Camera;->mSurfaceWidth:F

    .line 230
    const/high16 v0, 0x43a0

    iput v0, p0, Lcom/motorola/Camera/Camera;->mSurfaceHeight:F

    .line 232
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 233
    iput v6, p0, Lcom/motorola/Camera/Camera;->mLastOrientation:I

    .line 234
    iput v6, p0, Lcom/motorola/Camera/Camera;->mConfig_PL:I

    .line 235
    iput-boolean v5, p0, Lcom/motorola/Camera/Camera;->mKeepAndRestartPreview:Z

    .line 236
    new-instance v0, Lcom/motorola/Camera/Camera$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/motorola/Camera/Camera$MainHandler;-><init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    .line 238
    new-instance v0, Lcom/motorola/Camera/Camera$MotoCameraAutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/motorola/Camera/Camera$MotoCameraAutoFocusCallback;-><init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mAutoFocusCallback:Lcom/motorola/Camera/Camera$MotoCameraAutoFocusCallback;

    .line 240
    new-instance v0, Lcom/motorola/Camera/Camera$MotoCameraOnZoomChangeListener;

    invoke-direct {v0, p0, v2}, Lcom/motorola/Camera/Camera$MotoCameraOnZoomChangeListener;-><init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mZoomChangeListener:Lcom/motorola/Camera/Camera$MotoCameraOnZoomChangeListener;

    .line 243
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 245
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    .line 246
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    .line 249
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsSecurelyLockedModeImageCaptureIntent:Z

    .line 252
    new-instance v0, Lcom/motorola/Camera/Camera$PanoramaShutterCallback;

    invoke-direct {v0, p0, v2}, Lcom/motorola/Camera/Camera$PanoramaShutterCallback;-><init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaShutterCallback:Lcom/motorola/Camera/Camera$PanoramaShutterCallback;

    .line 253
    new-instance v0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;

    invoke-direct {v0, p0, v2}, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;-><init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaPostviewCallback:Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;

    .line 254
    new-instance v0, Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;

    invoke-direct {v0, p0, v2}, Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;-><init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaViewfinderInfoCallback:Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;

    .line 255
    new-instance v0, Lcom/motorola/Camera/Camera$PanoramaDirectionInfoCallback;

    invoke-direct {v0, p0, v2}, Lcom/motorola/Camera/Camera$PanoramaDirectionInfoCallback;-><init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaDirectionInfoCallback:Lcom/motorola/Camera/Camera$PanoramaDirectionInfoCallback;

    .line 257
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsStitching:Z

    .line 262
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;

    .line 267
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    .line 268
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    .line 272
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    .line 276
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->focusViewSelected:Z

    .line 283
    iput v1, p0, Lcom/motorola/Camera/Camera;->mLatchedOrientation:I

    .line 284
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;

    .line 285
    iput v1, p0, Lcom/motorola/Camera/Camera;->mCurrentStitchMode:I

    .line 287
    iput v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I

    .line 288
    iput v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I

    .line 289
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;

    .line 290
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;

    .line 292
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mPanBeepAFD:Landroid/content/res/AssetFileDescriptor;

    .line 297
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->bGLSurfaceViewPlaying:Z

    .line 299
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mStartSensorFront:Z

    .line 301
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    .line 317
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mAnimationRunning:Z

    .line 318
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mThumbnailDecoded:Z

    .line 322
    iput v1, p0, Lcom/motorola/Camera/Camera;->mSecondaryDialogWidth:I

    .line 332
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mPostView:Z

    .line 335
    iput v1, p0, Lcom/motorola/Camera/Camera;->mMultishotCurrentCount:I

    .line 337
    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    .line 338
    iput v1, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    .line 339
    iput v1, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    .line 340
    iput-boolean v5, p0, Lcom/motorola/Camera/Camera;->mIsInternalSD:Z

    .line 341
    iput-boolean v5, p0, Lcom/motorola/Camera/Camera;->mNeedCheckStorage:Z

    .line 342
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mDeviceDisabled:Z

    .line 346
    iput-boolean v5, p0, Lcom/motorola/Camera/Camera;->mStartLogger:Z

    .line 353
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->ResAutoTimerDigitImg:[I

    .line 370
    new-instance v0, Lcom/motorola/Camera/Camera$MotoEnvCallback;

    invoke-direct {v0, p0, v2}, Lcom/motorola/Camera/Camera$MotoEnvCallback;-><init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mMotoEnvCallback:Lcom/motorola/Camera/Camera$MotoEnvCallback;

    .line 5529
    new-instance v0, Lcom/motorola/Camera/Camera$4;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/Camera$4;-><init>(Lcom/motorola/Camera/Camera;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mUpdatePicInSvcMode:Ljava/lang/Runnable;

    .line 5817
    new-instance v0, Lcom/motorola/Camera/Camera$5;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/Camera$5;-><init>(Lcom/motorola/Camera/Camera;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 7139
    new-instance v0, Lcom/motorola/Camera/Camera$6;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/Camera$6;-><init>(Lcom/motorola/Camera/Camera;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mTimerListener:Landroid/view/View$OnClickListener;

    .line 7200
    new-instance v0, Lcom/motorola/Camera/Camera$7;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/Camera$7;-><init>(Lcom/motorola/Camera/Camera;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mEulaAgreeListener:Landroid/view/View$OnClickListener;

    .line 7216
    new-instance v0, Lcom/motorola/Camera/Camera$8;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/Camera$8;-><init>(Lcom/motorola/Camera/Camera;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mEulaCancelListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$10000()I
    .locals 1

    .prologue
    .line 144
    sget v0, Lcom/motorola/Camera/Camera;->mMultiShotMaxCount:I

    return v0
.end method

.method static synthetic access$10200(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mIsFocusLocked:Z

    return v0
.end method

.method static synthetic access$10202(Lcom/motorola/Camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/motorola/Camera/Camera;->mIsFocusLocked:Z

    return p1
.end method

.method static synthetic access$10300(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mPostView:Z

    return v0
.end method

.method static synthetic access$10302(Lcom/motorola/Camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/motorola/Camera/Camera;->mPostView:Z

    return p1
.end method

.method static synthetic access$10400(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->showStorageToast()V

    return-void
.end method

.method static synthetic access$10600(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaPostView:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$10602(Lcom/motorola/Camera/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mPanoramaPostView:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$10700(Lcom/motorola/Camera/Camera;)Lcom/motorola/android/camera/Panorama$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    return-object v0
.end method

.method static synthetic access$10702(Lcom/motorola/Camera/Camera;Lcom/motorola/android/camera/Panorama$Parameters;)Lcom/motorola/android/camera/Panorama$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    return-object p1
.end method

.method static synthetic access$10800(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopPreview()V

    return-void
.end method

.method static synthetic access$10900(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->disableUIAfterStopPreview()V

    return-void
.end method

.method static synthetic access$1100(Lcom/motorola/Camera/Camera;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/motorola/Camera/Camera;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/motorola/Camera/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$11100(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    return-object v0
.end method

.method static synthetic access$11102(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;)Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    return-object p1
.end method

.method static synthetic access$11200(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPostText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11300(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mKeepAndRestartPreview:Z

    return v0
.end method

.method static synthetic access$11400(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->clearFocus()V

    return-void
.end method

.method static synthetic access$11500(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraClass:Lcom/motorola/Camera/Camera;

    return-object v0
.end method

.method static synthetic access$11600(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mIsStoreXmpMetaData:Z

    return v0
.end method

.method static synthetic access$11700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/CameraShutterRender;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mRender:Lcom/motorola/Camera/View/CameraShutterRender;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->pictureWidth:I

    return v0
.end method

.method static synthetic access$11900(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->pictureHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mIsSpeakerOn:Z

    return v0
.end method

.method static synthetic access$12000(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->picturePixelFormat:I

    return v0
.end method

.method static synthetic access$1202(Lcom/motorola/Camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/motorola/Camera/Camera;->mIsSpeakerOn:Z

    return p1
.end method

.method static synthetic access$12100(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updatePicInUi()V

    return-void
.end method

.method static synthetic access$12200(Lcom/motorola/Camera/Camera;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera;->createThumbnailForJpegCallback([B)V

    return-void
.end method

.method static synthetic access$12300(Lcom/motorola/Camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/motorola/Camera/Camera;->mKpiS2STimer:J

    return-wide v0
.end method

.method static synthetic access$12400(Lcom/motorola/Camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mImageResolution:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->setFocusModeParameters()V

    return-void
.end method

.method static synthetic access$12600(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->checkExternalSDCardFirstTime()V

    return-void
.end method

.method static synthetic access$12702(Lcom/motorola/Camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/motorola/Camera/Camera;->mNeedCheckStorage:Z

    return p1
.end method

.method static synthetic access$12800(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->checkStorage()V

    return-void
.end method

.method static synthetic access$12900(Lcom/motorola/Camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera;->enableAutoTimerCapture(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/motorola/Camera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera;->restartPreview(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    return v0
.end method

.method static synthetic access$1402(Lcom/motorola/Camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    return p1
.end method

.method static synthetic access$1500(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mCaptureOnFocus:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->toggleCamera()V

    return-void
.end method

.method static synthetic access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateFocusIndicator()V

    return-void
.end method

.method static synthetic access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/motorola/Camera/Camera;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/motorola/Camera/Camera;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/motorola/Camera/Camera;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mIsStitching:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/motorola/Camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/motorola/Camera/Camera;->mIsStitching:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I

    return v0
.end method

.method static synthetic access$2402(Lcom/motorola/Camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I

    return p1
.end method

.method static synthetic access$2408(Lcom/motorola/Camera/Camera;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I

    return v0
.end method

.method static synthetic access$2500(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->closeCamera()V

    return-void
.end method

.method static synthetic access$2600(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->enableSingleShot()V

    return-void
.end method

.method static synthetic access$2700(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateRemainCount()V

    return-void
.end method

.method static synthetic access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/LocUtility;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/motorola/Camera/Camera;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mThumbThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/motorola/Camera/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mThumbThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/motorola/Camera/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/CameraView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mAnimationRunning:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/motorola/Camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/motorola/Camera/Camera;->mAnimationRunning:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailDecoded:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/motorola/Camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/motorola/Camera/Camera;->mThumbnailDecoded:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/motorola/Camera/Camera;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/PanoramaIndicatorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isMultishotMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mMultishotCurrentCount:I

    return v0
.end method

.method static synthetic access$3902(Lcom/motorola/Camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/motorola/Camera/Camera;->mMultishotCurrentCount:I

    return p1
.end method

.method static synthetic access$3904(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mMultishotCurrentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/Camera/Camera;->mMultishotCurrentCount:I

    return v0
.end method

.method static synthetic access$4000(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopPanoramaCapture()V

    return-void
.end method

.method static synthetic access$4100(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/FocusManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/motorola/Camera/Camera;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I

    return v0
.end method

.method static synthetic access$4302(Lcom/motorola/Camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I

    return p1
.end method

.method static synthetic access$4400(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->startShutterAnim()V

    return-void
.end method

.method static synthetic access$4500(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopShutterAnim()V

    return-void
.end method

.method static synthetic access$4602(Lcom/motorola/Camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/motorola/Camera/Camera;->mZoomAdjusting:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/motorola/Camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera;->zoomTo(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/motorola/Camera/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/motorola/Camera/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$5000(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    return v0
.end method

.method static synthetic access$5002(Lcom/motorola/Camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    return p1
.end method

.method static synthetic access$5100(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->disableMultishot()V

    return-void
.end method

.method static synthetic access$5200(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->launchCamcorder()V

    return-void
.end method

.method static synthetic access$5300(Lcom/motorola/Camera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera;->enablePanorama(Z)V

    return-void
.end method

.method static synthetic access$5400(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mCurrentStitchMode:I

    return v0
.end method

.method static synthetic access$5402(Lcom/motorola/Camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/motorola/Camera/Camera;->mCurrentStitchMode:I

    return p1
.end method

.method static synthetic access$5500(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$5600(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->enableMultiShot()V

    return-void
.end method

.method static synthetic access$5700(Lcom/motorola/Camera/Camera;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/motorola/Camera/Camera;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$5900(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->setCameraParameters()V

    return-void
.end method

.method static synthetic access$6000(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateScenesEffects()V

    return-void
.end method

.method static synthetic access$6100(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->startDevice()V

    return-void
.end method

.method static synthetic access$6200(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CameraUtility;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/motorola/Camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/motorola/Camera/Camera;->mCaptureMultishotEndTime:J

    return-wide v0
.end method

.method static synthetic access$6302(Lcom/motorola/Camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/motorola/Camera/Camera;->mCaptureMultishotEndTime:J

    return-wide p1
.end method

.method static synthetic access$6400(Lcom/motorola/Camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/motorola/Camera/Camera;->mCaptureMultishotTime:J

    return-wide v0
.end method

.method static synthetic access$6402(Lcom/motorola/Camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/motorola/Camera/Camera;->mCaptureMultishotTime:J

    return-wide p1
.end method

.method static synthetic access$6500(Lcom/motorola/Camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/motorola/Camera/Camera;->mCaptureMultishotEndTimewithMetaData:J

    return-wide v0
.end method

.method static synthetic access$6502(Lcom/motorola/Camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/motorola/Camera/Camera;->mCaptureMultishotEndTimewithMetaData:J

    return-wide p1
.end method

.method static synthetic access$6600(Lcom/motorola/Camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/motorola/Camera/Camera;->mCaptureMultishotTimeMetaData:J

    return-wide v0
.end method

.method static synthetic access$6602(Lcom/motorola/Camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/motorola/Camera/Camera;->mCaptureMultishotTimeMetaData:J

    return-wide p1
.end method

.method static synthetic access$6700(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mTestNumber:I

    return v0
.end method

.method static synthetic access$6708(Lcom/motorola/Camera/Camera;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mTestNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/motorola/Camera/Camera;->mTestNumber:I

    return v0
.end method

.method static synthetic access$6800(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->enableHDR()V

    return-void
.end method

.method static synthetic access$6900(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->enableWDR()V

    return-void
.end method

.method static synthetic access$7000(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mTimerContainerShowing:Z

    return v0
.end method

.method static synthetic access$7002(Lcom/motorola/Camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/motorola/Camera/Camera;->mTimerContainerShowing:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->initAutoTimerModeButtons()V

    return-void
.end method

.method static synthetic access$7200(Lcom/motorola/Camera/Camera;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mTimerContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$7400(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mIsInternalSD:Z

    return v0
.end method

.method static synthetic access$7402(Lcom/motorola/Camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/motorola/Camera/Camera;->mIsInternalSD:Z

    return p1
.end method

.method static synthetic access$7500(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mAutoTimerCount:I

    return v0
.end method

.method static synthetic access$7502(Lcom/motorola/Camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/motorola/Camera/Camera;->mAutoTimerCount:I

    return p1
.end method

.method static synthetic access$7508(Lcom/motorola/Camera/Camera;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mAutoTimerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/motorola/Camera/Camera;->mAutoTimerCount:I

    return v0
.end method

.method static synthetic access$7600(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->autoTimerSoundId:I

    return v0
.end method

.method static synthetic access$7700(Lcom/motorola/Camera/Camera;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/motorola/Camera/Camera;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->ResAutoTimerDigitImg:[I

    return-object v0
.end method

.method static synthetic access$7900(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mAutotimerCountImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/motorola/Camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera;->checkAndSnap(I)V

    return-void
.end method

.method static synthetic access$8100(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$8102(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object p1
.end method

.method static synthetic access$8200(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mRotateDialogShowing:Z

    return v0
.end method

.method static synthetic access$8202(Lcom/motorola/Camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/motorola/Camera/Camera;->mRotateDialogShowing:Z

    return p1
.end method

.method static synthetic access$8300(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->dismissToast()V

    return-void
.end method

.method static synthetic access$8400(Lcom/motorola/Camera/Camera;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mBmpPostView:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$8502(Lcom/motorola/Camera/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mBmpPostView:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$8600(Lcom/motorola/Camera/Camera;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mStoreThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$8602(Lcom/motorola/Camera/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mStoreThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$8700(Lcom/motorola/Camera/Camera;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->initPostPanel()V

    return-void
.end method

.method static synthetic access$8900(Lcom/motorola/Camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mMultishotGroupId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8902(Lcom/motorola/Camera/Camera;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mMultishotGroupId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/motorola/Camera/Camera;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/motorola/Camera/Camera;->startDevice(ZZ)V

    return-void
.end method

.method static synthetic access$9000(Lcom/motorola/Camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->setGroupIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9100(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mMultiShotOrientation:I

    return v0
.end method

.method static synthetic access$9102(Lcom/motorola/Camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/motorola/Camera/Camera;->mMultiShotOrientation:I

    return p1
.end method

.method static synthetic access$9200(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mMultiShotOrientationCCW:I

    return v0
.end method

.method static synthetic access$9202(Lcom/motorola/Camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/motorola/Camera/Camera;->mMultiShotOrientationCCW:I

    return p1
.end method

.method static synthetic access$9300(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mShutterCallback:Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;

    return-object v0
.end method

.method static synthetic access$9302(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;)Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mShutterCallback:Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;

    return-object p1
.end method

.method static synthetic access$9500(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera$PanoramaShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaShutterCallback:Lcom/motorola/Camera/Camera$PanoramaShutterCallback;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaPostviewCallback:Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaViewfinderInfoCallback:Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera$PanoramaDirectionInfoCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaDirectionInfoCallback:Lcom/motorola/Camera/Camera$PanoramaDirectionInfoCallback;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/motorola/Camera/Camera;)Lcom/motorola/android/camera/Panorama;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    return-object v0
.end method

.method private cancelPanoramaCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2673
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "cancelPanoramaCapture() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->updatePanoramaCaptureStatus(Z)V

    .line 2676
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    if-eqz v0, :cond_1

    .line 2677
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    invoke-virtual {v0}, Lcom/motorola/android/camera/Panorama;->cancelCapture()V

    .line 2679
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordButton(Z)V

    .line 2680
    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mIsStitching:Z

    .line 2682
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCamera"

    const-string v1, "cancelPanoramaCapture() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    :cond_2
    return-void
.end method

.method private cancelPhoto()Z
    .locals 2

    .prologue
    .line 6206
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6207
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->setResult(I)V

    .line 6209
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->finish()V

    .line 6210
    const/4 v0, 0x1

    return v0
.end method

.method private changeZoom(Ljava/lang/Boolean;)V
    .locals 6
    .parameter "zoom"

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x1

    .line 6985
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsFocusing:Z

    if-eq v5, v1, :cond_0

    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsFocused:Z

    if-eq v5, v1, :cond_0

    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsFocusButtonPressed:Z

    if-ne v5, v1, :cond_1

    .line 6987
    :cond_0
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Focus is in progress, mIsFocusing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/Camera/Camera;->mIsFocusing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mIsFocused = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/Camera/Camera;->mIsFocused:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mIsFocusButtonPressed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/Camera/Camera;->mIsFocusButtonPressed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6990
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->onScreenCaptureUp()V

    .line 6993
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v1

    if-nez v1, :cond_3

    .line 7030
    :cond_2
    :goto_0
    return-void

    .line 6996
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v1, v4}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 6998
    iget v1, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v1, v5, :cond_2

    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mZoomAdjusting:Z

    if-nez v1, :cond_2

    .line 7000
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 7002
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v2

    .line 7003
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getZoomNum()I

    move-result v0

    .line 7004
    .local v0, zoomValue:I
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    .line 7005
    const-string v1, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CURRENT ZOOM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7007
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v5, :cond_7

    .line 7008
    sget v1, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    if-ge v0, v1, :cond_5

    .line 7009
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mZoomAdjusting:Z

    .line 7010
    sget v1, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_STEP:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/motorola/Camera/Camera;->zoomTo(I)V

    .line 7011
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    sget v3, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_STEP:I

    add-int/2addr v3, v0

    sget v4, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setZoomNum(I)V

    .line 7024
    :cond_5
    :goto_1
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->smoothZoomSupported:Z

    if-nez v1, :cond_6

    .line 7025
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mZoomAdjusting:Z

    .line 7027
    :cond_6
    monitor-exit v2

    goto :goto_0

    .end local v0           #zoomValue:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7017
    .restart local v0       #zoomValue:I
    :cond_7
    if-lez v0, :cond_5

    .line 7018
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mZoomAdjusting:Z

    .line 7019
    sget v1, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_STEP:I

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Lcom/motorola/Camera/Camera;->zoomTo(I)V

    .line 7020
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    sget v3, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_STEP:I

    sub-int v3, v0, v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setZoomNum(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private checkAndSnap(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 2907
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "checkAndSnap() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraKPI"

    const-string v1, "checkAndSnap enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2911
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->startAutoTimer()V

    .line 2921
    :cond_2
    :goto_0
    return-void

    .line 2915
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/Camera/Camera;->mKpiS2STimer:J

    .line 2917
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v0}, Lcom/motorola/Camera/FocusManager;->doSnap()V

    .line 2919
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCamera"

    const-string v1, "checkAndSnap() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    :cond_4
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCameraKPI"

    const-string v1, "checkAndSnap exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkExternalSDCardFirstTime()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5895
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsSecurelyLockedModeImageCaptureIntent:Z

    if-eqz v1, :cond_1

    .line 5896
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1, v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSDPlug(Z)V

    .line 5916
    :cond_0
    :goto_0
    return-void

    .line 5900
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentSingleShotRes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/motorola/Camera/CameraGlobalTools;->calculatePicturesRemaining(Ljava/lang/String;Z)I

    move-result v0

    .line 5902
    .local v0, externalPicturesRemaining:I
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkExternalSDCardFirstTime() - externalRem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentSingleShotRes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5904
    :cond_2
    if-ltz v0, :cond_0

    .line 5905
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1, v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSDPlug(Z)V

    .line 5910
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsInternalSD:Z

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 5911
    iput-boolean v5, p0, Lcom/motorola/Camera/Camera;->mNeedCheckStorage:Z

    .line 5912
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1, v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentStorageLocation(I)V

    .line 5913
    iput v0, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    .line 5914
    iput-boolean v4, p0, Lcom/motorola/Camera/Camera;->mIsInternalSD:Z

    goto :goto_0
.end method

.method private checkStorage()V
    .locals 2

    .prologue
    .line 5920
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "checkStorage() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5922
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mNeedCheckStorage:Z

    if-eqz v0, :cond_1

    .line 5923
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateRemainCount()V

    .line 5925
    :cond_1
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCamera"

    const-string v1, "checkStorage() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5926
    :cond_2
    return-void
.end method

.method private clearFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2820
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2821
    const-string v0, "MotoCamera"

    const-string v1, "clearFocus() Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraKPI"

    const-string v1, "clearFocus enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/motorola/Camera/Camera;->mFocusValue:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/motorola/Camera/Camera;->mFocusValue:I

    if-nez v0, :cond_4

    .line 2827
    :cond_2
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCamera"

    const-string v1, "Camera Device clearFocus start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 2829
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCamera"

    const-string v1, "Camera Device clearFocus done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2832
    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mIsFocusing:Z

    .line 2833
    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mCaptureOnFocus:Z

    .line 2834
    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mCaptureOnShortPress:Z

    .line 2835
    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mIsFocused:Z

    .line 2836
    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mIsFocusButtonPressed:Z

    .line 2837
    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mIsFocusFail:Z

    .line 2839
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_5

    const-string v0, "MotoCameraKPI"

    const-string v1, "clearFocus exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    :cond_5
    return-void
.end method

.method private clearMessageQueue()V
    .locals 2

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2036
    return-void
.end method

.method private closeCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2192
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    const-string v2, "closeCamera() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    if-eqz v1, :cond_1

    .line 2197
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    invoke-virtual {v1, v3}, Lcom/motorola/android/camera/Panorama;->setErrorCallback(Lcom/motorola/android/camera/Panorama$ErrorCallback;)V

    .line 2198
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    invoke-virtual {v1}, Lcom/motorola/android/camera/Panorama;->release()V

    .line 2199
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 2201
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2209
    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    .line 2210
    iput-object v3, p0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    .line 2212
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_8

    .line 2215
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 2217
    const-string v1, "MotoCamera"

    const-string v2, "closeCamera - mCameraDevice.stopPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    :cond_2
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-eqz v1, :cond_3

    .line 2220
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 2222
    :cond_3
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    .line 2223
    const-string v1, "MotoCamera"

    const-string v2, "closeCamera - mCameraDevice.stopPreview returned"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    :cond_4
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 2229
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setEnvDetectCallback(Landroid/hardware/Camera$EnvDetectCallback;)V

    .line 2230
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideHandshake(ZZ)V

    .line 2232
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 2234
    :cond_5
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_6

    const-string v1, "MotoCameraKPI"

    const-string v2, "closeCamera before device.release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    :cond_6
    invoke-static {}, Lcom/motorola/Camera/CameraHolder;->instance()Lcom/motorola/Camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CameraHolder;->release()V

    .line 2236
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_7

    const-string v1, "MotoCameraKPI"

    const-string v2, "closeCamera after device.release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    :cond_7
    iput-object v3, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    .line 2240
    iput-boolean v4, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    .line 2241
    iput-boolean v4, p0, Lcom/motorola/Camera/Camera;->mIsFocused:Z

    .line 2242
    iput-boolean v4, p0, Lcom/motorola/Camera/Camera;->mIsFocusing:Z

    .line 2243
    iput-boolean v4, p0, Lcom/motorola/Camera/Camera;->mIsFocusFail:Z

    .line 2244
    iput-boolean v4, p0, Lcom/motorola/Camera/Camera;->mIsFocusButtonPressed:Z

    .line 2248
    :cond_8
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->resetZoom()V

    .line 2250
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_9

    const-string v1, "MotoCamera"

    const-string v2, "closeCamera() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    :cond_9
    return-void

    .line 2203
    :catch_0
    move-exception v0

    .line 2205
    .local v0, e:Ljava/io/IOException;
    const-string v1, "MotoCamera"

    const-string v2, "closeCamera : reconnect failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private createThumbnailForJpegCallback([B)V
    .locals 3
    .parameter "jpegData"

    .prologue
    .line 5545
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 5546
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v1, 0x10

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 5547
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;

    .line 5548
    return-void
.end method

.method private disableCurrentMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 2730
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->resetFilter()V

    .line 2732
    packed-switch p1, :pswitch_data_0

    .line 2753
    :goto_0
    :pswitch_0
    return-void

    .line 2736
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->disableMultishot()V

    goto :goto_0

    .line 2739
    :pswitch_2
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->disablePanorama()V

    goto :goto_0

    .line 2742
    :pswitch_3
    const-string v0, "MotoCamera"

    const-string v1, "Disabling FAST MOTION MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2745
    :pswitch_4
    const-string v0, "MotoCamera"

    const-string v1, "Disabling SLOW MOTION MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2748
    :pswitch_5
    const-string v0, "MotoCamera"

    const-string v1, "Disabling NORMAL VIDEO MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2732
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private disableMultishot()V
    .locals 3

    .prologue
    .line 2756
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 2762
    :goto_0
    return-void

    .line 2760
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraUtility;->setBurstCaptureCount(Landroid/hardware/Camera$Parameters;I)V

    .line 2761
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method private disablePanorama()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2448
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    if-eqz v1, :cond_0

    .line 2450
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    invoke-virtual {v1, v2}, Lcom/motorola/android/camera/Panorama;->setErrorCallback(Lcom/motorola/android/camera/Panorama$ErrorCallback;)V

    .line 2451
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    invoke-virtual {v1}, Lcom/motorola/android/camera/Panorama;->release()V

    .line 2453
    :cond_0
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    .line 2454
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    .line 2455
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamera"

    const-string v2, "disablePanorama() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2460
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2468
    :goto_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCamera"

    const-string v2, "disablePanorama() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    :cond_2
    return-void

    .line 2462
    :catch_0
    move-exception v0

    .line 2464
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MotoCamera"

    const-string v2, "disablePanorama : reconnect failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->closeCamera()V

    goto :goto_0
.end method

.method private disableUIAfterStopPreview()V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->setCaptureResourceClickable(Z)V

    .line 549
    :cond_0
    return-void
.end method

.method private dismissToast()V
    .locals 2

    .prologue
    .line 3645
    const v1, 0x7f0d009d

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3646
    .local v0, v:Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3647
    const v1, 0x7f04000e

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3649
    return-void
.end method

.method private enableAutoTimerCapture(I)V
    .locals 3
    .parameter "timer"

    .prologue
    const/4 v2, 0x5

    .line 2411
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->onAutoTimerItemSelected()V

    .line 2412
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentAutoTimer(I)V

    .line 2414
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2415
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->loadSliderData()V

    .line 2416
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 2443
    :goto_0
    return-void

    .line 2417
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2418
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->disableCurrentMode(I)V

    .line 2420
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2421
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget v1, p0, Lcom/motorola/Camera/Camera;->prevScene:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentScene(I)V

    .line 2423
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2425
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget v1, p0, Lcom/motorola/Camera/Camera;->prevFlash:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentFlash(I)V

    .line 2428
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 2429
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->loadSliderData()V

    .line 2432
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 2435
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->startDevice()V

    .line 2436
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 2437
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateRemainCount()V

    goto :goto_0

    .line 2439
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 2440
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->loadSliderData()V

    .line 2441
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    goto :goto_0
.end method

.method private enableHDR()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 2290
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "enableHDR() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->disableCurrentMode(I)V

    .line 2294
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 2296
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/Camera;->prevScene:I

    .line 2298
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 2300
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/Camera;->prevFlash:I

    .line 2303
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 2305
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2306
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentScene(I)V

    .line 2307
    :cond_5
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2308
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentFlash(I)V

    .line 2310
    :cond_6
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 2313
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->startDevice()V

    .line 2314
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 2315
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showTopStatusSet()V

    .line 2316
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateRemainCount()V

    .line 2317
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_7

    const-string v0, "MotoCamera"

    const-string v1, "enableHDR() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    :cond_7
    return-void
.end method

.method private enableMultiShot()V
    .locals 4

    .prologue
    const/4 v2, 0x5

    .line 2357
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "enableMultiShot() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v1

    .line 2360
    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 2362
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/Camera;->prevScene:I

    .line 2365
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 2367
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/Camera;->prevFlash:I

    .line 2371
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->disableCurrentMode(I)V

    .line 2373
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 2377
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/CameraApp;

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraActivityContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCameraClass:Lcom/motorola/Camera/Camera;

    invoke-virtual {v0, v2, v3}, Lcom/motorola/Camera/CameraApp;->getStoreImageUtility(Landroid/content/Context;Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/StoreImageUtility;

    .line 2380
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2382
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/CameraUtility;->setFlash(Landroid/hardware/Camera$Parameters;)V

    .line 2384
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2386
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 2387
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 2388
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showTopStatusSet()V

    .line 2390
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateRemainCount()V

    .line 2393
    iget v0, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    sget v1, Lcom/motorola/Camera/Camera;->mMultiShotMaxCount:I

    if-ge v0, v1, :cond_6

    .line 2395
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->showStorageToast()V

    .line 2399
    :cond_6
    sget-object v0, Lcom/motorola/Camera/Camera;->mMultishotUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2400
    sget-object v0, Lcom/motorola/Camera/Camera;->mMultishotUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 2404
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->startDevice()V

    .line 2405
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateFocusIndicator()V

    .line 2407
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_7

    const-string v0, "MotoCamera"

    const-string v1, "enableMultiShot() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    :cond_7
    return-void

    .line 2384
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private enablePanorama(Z)V
    .locals 18
    .parameter "restartPreview"

    .prologue
    .line 2474
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->PANORAMA_TYPE_SWEEP:Z

    .line 2475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 2669
    :cond_0
    :goto_0
    return-void

    .line 2478
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 2479
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2480
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCamera"

    const-string v2, "enablePanorama() - Service Mode; Panorama unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    :cond_2
    monitor-exit v17

    goto :goto_0

    .line 2666
    :catchall_0
    move-exception v1

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2484
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    if-nez v1, :cond_4

    .line 2486
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->PANORAMA_TYPE_SWEEP:Z

    if-nez v1, :cond_11

    .line 2487
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-static {v1}, Lcom/motorola/android/camera/Panorama;->init(Landroid/hardware/Camera;)Lcom/motorola/android/camera/Panorama;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    .line 2492
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    invoke-virtual {v1}, Lcom/motorola/android/camera/Panorama;->getParameters()Lcom/motorola/android/camera/Panorama$Parameters;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    .line 2493
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    new-instance v2, Lcom/motorola/Camera/Camera$PanoramaErrorCallback;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/motorola/Camera/Camera$PanoramaErrorCallback;-><init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V

    invoke-virtual {v1, v2}, Lcom/motorola/android/camera/Panorama;->setErrorCallback(Lcom/motorola/android/camera/Panorama$ErrorCallback;)V

    .line 2496
    :cond_4
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_5

    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePanorama() - Enter ; mParameters_pan is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v1

    if-nez v1, :cond_a

    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->camPremium:Z

    if-eqz v1, :cond_a

    .line 2501
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    if-nez v1, :cond_7

    .line 2503
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/motorola/Camera/Camera;->prevScene:I

    .line 2506
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    if-nez v1, :cond_9

    .line 2508
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/motorola/Camera/Camera;->prevFlash:I

    .line 2511
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/motorola/Camera/Camera;->disableCurrentMode(I)V

    .line 2514
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getZoomNum()I

    move-result v1

    if-eqz v1, :cond_c

    .line 2517
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_b

    .line 2518
    const-string v1, "MotoCamera"

    const-string v2, "enablePanorama() - Reset zoom since entering panoramic mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->resetZoom()V

    .line 2521
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_c

    .line 2523
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getZoomNum()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2524
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2530
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 2532
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 2534
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CameraUtility;->setFlash(Landroid/hardware/Camera$Parameters;)V

    .line 2538
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 2541
    const-string v15, "auto-detection"

    .line 2545
    .local v15, stitchMode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentPanResDimension()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/motorola/Camera/CameraGlobalTools;->calculatePicturesRemaining(Ljava/lang/String;Z)I

    move-result v14

    .line 2550
    .local v14, remainCount:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    if-eqz v1, :cond_e

    .line 2551
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    invoke-virtual {v1}, Lcom/motorola/android/camera/Panorama$Parameters;->getMaxShotNumber()I

    move-result v14

    .line 2553
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    invoke-virtual {v1}, Lcom/motorola/android/camera/Panorama$Parameters;->getMaxShotNumber()I

    move-result v1

    if-le v14, v1, :cond_e

    .line 2555
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    invoke-virtual {v1}, Lcom/motorola/android/camera/Panorama$Parameters;->getMaxShotNumber()I

    move-result v14

    .line 2558
    :cond_e
    move-object/from16 v0, p0

    iput v14, v0, Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I

    .line 2559
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2563
    :try_start_2
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/Camera/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;

    .line 2564
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_f

    .line 2566
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/Camera/Camera;->mPanBeepAFD:Landroid/content/res/AssetFileDescriptor;

    .line 2567
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera;->mPanBeepAFD:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera;->mPanBeepAFD:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camera;->mPanBeepAFD:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 2568
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2569
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 2570
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/motorola/Camera/Camera$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/motorola/Camera/Camera$3;-><init>(Lcom/motorola/Camera/Camera;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2586
    :cond_f
    :goto_2
    const/4 v1, 0x1

    if-ge v14, v1, :cond_12

    .line 2587
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->showStorageToast()V

    .line 2588
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->enableSingleShot()V

    .line 2666
    :cond_10
    :goto_3
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2668
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    const-string v2, "enablePanorama() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2490
    .end local v14           #remainCount:I
    .end local v15           #stitchMode:Ljava/lang/String;
    :cond_11
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    const-string v2, "sweep"

    invoke-static {v1, v2}, Lcom/motorola/android/camera/Panorama;->init(Landroid/hardware/Camera;Ljava/lang/String;)Lcom/motorola/android/camera/Panorama;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    goto/16 :goto_1

    .line 2581
    .restart local v14       #remainCount:I
    .restart local v15       #stitchMode:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 2583
    .local v8, ex:Ljava/io/IOException;
    const-string v1, "MotoCamera"

    const-string v2, "enablePanorama() - failed to load audio for pan beep"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2592
    .end local v8           #ex:Ljava/io/IOException;
    :cond_12
    const/4 v11, 0x0

    .line 2593
    .local v11, panRes:Ljava/lang/String;
    const-string v1, "ro.media.panorama.defres"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2594
    const-string v13, "2048x1536"

    .line 2596
    .local v13, pictureSize:Ljava/lang/String;
    if-eqz v11, :cond_14

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14

    const-string v1, "2048x1536"

    invoke-virtual {v11, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_14

    .line 2598
    const-string v1, "x"

    invoke-virtual {v11, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2599
    .local v16, temp:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    .local v9, i:I
    :goto_4
    if-ltz v9, :cond_14

    .line 2601
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    const/4 v2, 0x1

    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_13

    .line 2603
    move-object v13, v11

    .line 2599
    :cond_13
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 2607
    .end local v9           #i:I
    .end local v16           #temp:[Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1, v13}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setMaxPanResDimension(Ljava/lang/String;)V

    .line 2608
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1, v13}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentPanResDimension(Ljava/lang/String;)V

    .line 2610
    const-string v1, "x"

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2612
    .restart local v16       #temp:[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->updateRemainCount()V

    .line 2614
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_15

    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePanorama, stitchMode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", maxShotNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    invoke-virtual {v1, v15}, Lcom/motorola/android/camera/Panorama$Parameters;->setPanoramaMode(Ljava/lang/String;)V

    .line 2618
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I

    invoke-virtual {v1, v2}, Lcom/motorola/android/camera/Panorama$Parameters;->setShotNumber(I)V

    .line 2619
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->PANORAMA_TYPE_SWEEP:Z

    if-nez v1, :cond_16

    .line 2620
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v16, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/motorola/android/camera/Panorama$Parameters;->setPanoramaResolution(II)V

    .line 2638
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v16, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/motorola/android/camera/Panorama$Parameters;->setPanoramaResolution(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2642
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    invoke-virtual {v1, v2}, Lcom/motorola/android/camera/Panorama;->setParameters(Lcom/motorola/android/camera/Panorama$Parameters;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 2653
    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 2654
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->showTopStatusSet()V

    .line 2657
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x24

    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    .line 2658
    .local v10, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2661
    if-eqz p1, :cond_10

    .line 2662
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->startDevice()V

    .line 2663
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->updateFocusIndicator()V

    goto/16 :goto_3

    .line 2623
    .end local v10           #msg:Landroid/os/Message;
    :cond_16
    const/4 v12, 0x0

    .line 2624
    .local v12, panVFRes:Ljava/lang/String;
    const-string v1, "ro.media.panorama.frameres"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2625
    if-eqz v12, :cond_17

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_17

    const-string v1, "640x480"

    invoke-virtual {v12, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_17

    .line 2627
    const-string v1, "x"

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2628
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v16, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/motorola/android/camera/Panorama$Parameters;->setPanoramaResolution(II)V

    goto/16 :goto_5

    .line 2632
    :cond_17
    const-string v12, "640x480"

    .line 2633
    const-string v1, "x"

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2634
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v16, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/motorola/android/camera/Panorama$Parameters;->setPanoramaResolution(II)V

    goto/16 :goto_5

    .line 2644
    .end local v12           #panVFRes:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 2646
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "MotoCamera"

    const-string v2, "enterPanoramaMode() - failed to set panoramic parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    const v1, 0x7f0b006a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V

    .line 2649
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->enableSingleShot()V

    .line 2650
    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method private enableSingleShot()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 2255
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->disableCurrentMode(I)V

    .line 2257
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2260
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget v1, p0, Lcom/motorola/Camera/Camera;->prevScene:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentScene(I)V

    .line 2263
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2268
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget v1, p0, Lcom/motorola/Camera/Camera;->prevFlash:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentFlash(I)V

    .line 2271
    :cond_1
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 2272
    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentFlash Value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 2277
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 2280
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->startDevice()V

    .line 2281
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateFocusIndicator()V

    .line 2282
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 2283
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showTopStatusSet()V

    .line 2284
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateRemainCount()V

    .line 2286
    return-void
.end method

.method private enableWDR()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 2322
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "enableWDR() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->disableCurrentMode(I)V

    .line 2326
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 2328
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/Camera;->prevScene:I

    .line 2330
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 2332
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/Camera;->prevFlash:I

    .line 2336
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 2338
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2339
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentScene(I)V

    .line 2341
    :cond_5
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2342
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentFlash(I)V

    .line 2345
    :cond_6
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 2348
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->startDevice()V

    .line 2349
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 2350
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showTopStatusSet()V

    .line 2351
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateRemainCount()V

    .line 2353
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_7

    const-string v0, "MotoCamera"

    const-string v1, "enableWDR() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    :cond_7
    return-void
.end method

.method private getMinPictureResolution()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x280

    .line 593
    const/4 v3, 0x0

    .line 594
    .local v3, res:Ljava/lang/String;
    iget-object v5, p0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 596
    iget-object v5, p0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 597
    .local v0, firstSize:Landroid/hardware/Camera$Size;
    iget-object v5, p0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    iget-object v6, p0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 598
    .local v2, lastSize:Landroid/hardware/Camera$Size;
    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    if-ge v5, v6, :cond_3

    .line 599
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 600
    iget-object v5, p0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 601
    .local v4, size:Landroid/hardware/Camera$Size;
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    if-lt v5, v7, :cond_2

    .line 602
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 617
    .end local v4           #size:Landroid/hardware/Camera$Size;
    :cond_0
    :goto_1
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_1

    const-string v5, "MotoCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " The min picture resolution that is greater than or equal to VGA : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    .end local v0           #firstSize:Landroid/hardware/Camera$Size;
    .end local v1           #i:I
    .end local v2           #lastSize:Landroid/hardware/Camera$Size;
    :cond_1
    return-object v3

    .line 599
    .restart local v0       #firstSize:Landroid/hardware/Camera$Size;
    .restart local v1       #i:I
    .restart local v2       #lastSize:Landroid/hardware/Camera$Size;
    .restart local v4       #size:Landroid/hardware/Camera$Size;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    .end local v1           #i:I
    .end local v4           #size:Landroid/hardware/Camera$Size;
    :cond_3
    iget-object v5, p0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_0

    .line 609
    iget-object v5, p0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 610
    .restart local v4       #size:Landroid/hardware/Camera$Size;
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    if-lt v5, v7, :cond_4

    .line 611
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 612
    goto :goto_1

    .line 608
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method private getResolutionFromIntent()Ljava/lang/String;
    .locals 5

    .prologue
    .line 6918
    const/4 v1, 0x0

    .line 6920
    .local v1, resolution:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 6921
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v2, "output"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6924
    if-nez v1, :cond_0

    .line 6927
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxPicResolution()Ljava/lang/String;

    move-result-object v1

    .line 6928
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResolutionFromIntent: sent via URI, use max resolution "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6950
    :cond_0
    :goto_0
    return-object v1

    .line 6933
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6937
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->getMinPictureResolution()Ljava/lang/String;

    move-result-object v1

    .line 6947
    :goto_1
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResolutionFromIntent: sent image via intent, use min resolution "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6944
    :cond_2
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxPicResolution()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private initAutoTimerModeButtons()V
    .locals 4

    .prologue
    .line 7184
    const v3, 0x7f0d0005

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 7185
    .local v1, autotimer3sBtn:Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 7186
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mTimerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7189
    :cond_0
    const v3, 0x7f0d0006

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 7190
    .local v2, autotimer5sBtn:Landroid/widget/Button;
    if-eqz v2, :cond_1

    .line 7191
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mTimerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7194
    :cond_1
    const v3, 0x7f0d0007

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 7195
    .local v0, autotimer10sBtn:Landroid/widget/Button;
    if-eqz v0, :cond_2

    .line 7196
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mTimerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7198
    :cond_2
    return-void
.end method

.method private initPostPanel()V
    .locals 4

    .prologue
    .line 2039
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2058
    :goto_0
    return-void

    .line 2042
    :cond_0
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2043
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v2, 0x7f030021

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/Camera/View/CameraContentView;

    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    .line 2046
    const v2, 0x7f0d004a

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    .line 2047
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->bringToFront()V

    .line 2049
    const/4 v1, 0x0

    .line 2050
    .local v1, rl:Landroid/widget/RelativeLayout;
    const v2, 0x7f0d004c

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #rl:Landroid/widget/RelativeLayout;
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 2051
    .restart local v1       #rl:Landroid/widget/RelativeLayout;
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2053
    const v2, 0x7f0d004b

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #rl:Landroid/widget/RelativeLayout;
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 2054
    .restart local v1       #rl:Landroid/widget/RelativeLayout;
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2056
    const v2, 0x7f0d004d

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #rl:Landroid/widget/RelativeLayout;
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 2057
    .restart local v1       #rl:Landroid/widget/RelativeLayout;
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initShutterView()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/16 v1, 0x8

    .line 1505
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 1506
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/16 v5, 0x10

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 1508
    new-instance v0, Lcom/motorola/Camera/View/CameraShutterRender;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/CameraShutterRender;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mRender:Lcom/motorola/Camera/View/CameraShutterRender;

    .line 1509
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mRender:Lcom/motorola/Camera/View/CameraShutterRender;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/CameraShutterRender;->SetCallBackHandle(Landroid/os/Handler;)V

    .line 1510
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mRender:Lcom/motorola/Camera/View/CameraShutterRender;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 1513
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setZOrderOnTop(Z)V

    .line 1514
    const v0, 0x7f0d003f

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CameraContentView;

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    .line 1515
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/CameraContentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1519
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 1520
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 1521
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 1445
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "initViews() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :cond_0
    const v0, 0x7f0d0041

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;

    .line 1451
    const v0, 0x7f0d0045

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    .line 1452
    const v0, 0x7f0d0044

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/FocusView;

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    .line 1455
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->setupFocusViews()V

    .line 1459
    const v0, 0x7f0d0046

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mPostText:Landroid/widget/TextView;

    .line 1460
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPostText:Landroid/widget/TextView;

    const v1, 0x7f0b0046

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1461
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPostText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1462
    const v0, 0x7f0d0043

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    .line 1465
    const v0, 0x7f0d0047

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;

    .line 1466
    const v0, 0x7f0d0048

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;

    .line 1467
    const v0, 0x7f0d0042

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/PanoramaIndicatorView;

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;

    .line 1470
    const v0, 0x7f0d0049

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mAutotimerCountImg:Landroid/widget/ImageView;

    .line 1471
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v1, "initViews() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_1
    return-void
.end method

.method private initializeFirstTime()V
    .locals 2

    .prologue
    .line 1369
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "initializeFirstTime() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_2

    .line 1416
    :cond_1
    :goto_0
    return-void

    .line 1378
    :cond_2
    new-instance v0, Lcom/motorola/Camera/Camera$2;

    invoke-direct {v0, p0, p0}, Lcom/motorola/Camera/Camera$2;-><init>(Lcom/motorola/Camera/Camera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 1389
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 1392
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    .line 1393
    new-instance v0, Lcom/motorola/Camera/LocUtility;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    invoke-direct {v0, p0, v1}, Lcom/motorola/Camera/LocUtility;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    .line 1395
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    .line 1398
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->initViews()V

    .line 1401
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->checkStorage()V

    .line 1404
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->installIntentFilter()V

    .line 1407
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->disableCurrentMode(I)V

    .line 1409
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 1413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/Camera;->mFirstTimeInitialized:Z

    .line 1415
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v1, "initializeFirstTime() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initializeSecondTime()V
    .locals 4

    .prologue
    .line 1558
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    const-string v2, "initializeSecondTime() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    .line 1563
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn()Z

    move-result v0

    .line 1566
    .local v0, locOn:Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    if-eqz v1, :cond_1

    .line 1568
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/LocUtility;->startReceivingLocationUpdates(Landroid/os/Handler;)V

    .line 1571
    :cond_1
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->installIntentFilter()V

    .line 1573
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/FocusManager;->initializeFocusTone(Landroid/content/res/AssetFileDescriptor;)V

    .line 1575
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->checkStorage()V

    .line 1577
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCamera"

    const-string v2, "initializeSecondTime() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    :cond_2
    return-void
.end method

.method private installIntentFilter()V
    .locals 3

    .prologue
    .line 1420
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    const-string v2, "installIntentFilter() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mDidRegister:Z

    if-eqz v1, :cond_2

    .line 1423
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamera"

    const-string v2, "Already registered Filters , so returning..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_1
    :goto_0
    return-void

    .line 1427
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1428
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1429
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1430
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1431
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1432
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1433
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1434
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1435
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/Camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1438
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mDidRegister:Z

    .line 1440
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamera"

    const-string v2, "installIntentFilter() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 1309
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1310
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isMultishotMode()Z
    .locals 2

    .prologue
    .line 2030
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPanoramaMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2026
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPickIntent()Z
    .locals 2

    .prologue
    .line 5801
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5802
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSecurelyLockedModeImageCaptureIntent()Z
    .locals 3

    .prologue
    .line 1314
    const/4 v0, 0x0

    .line 1315
    .local v0, isSecurelyLocked:Z
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 1316
    .local v1, keyguardMgr:Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 1317
    return v0
.end method

.method private isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, supportedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2815
    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isWebtopMode()Z
    .locals 2

    .prologue
    .line 2061
    new-instance v0, Lcom/motorola/webtop/WebtopManager;

    invoke-direct {v0, p0}, Lcom/motorola/webtop/WebtopManager;-><init>(Landroid/content/Context;)V

    .line 2062
    .local v0, wtm:Lcom/motorola/webtop/WebtopManager;
    invoke-virtual {v0}, Lcom/motorola/webtop/WebtopManager;->isWebtopMode()Z

    move-result v1

    return v1
.end method

.method private launchCamcorder()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6710
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/motorola/Camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 6711
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 6713
    const v2, 0x7f0b0005

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V

    .line 6715
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->setCaptureClusterCameraMode(I)V

    .line 6716
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 6718
    const-string v2, "MotoCamera"

    const-string v3, "launchCamcorder() - In call, cancelling launch of Camcorder"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6734
    :cond_0
    :goto_0
    return-void

    .line 6723
    :cond_1
    invoke-static {}, Lcom/motorola/Camera/CameraHolder;->instance()Lcom/motorola/Camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/Camera/CameraHolder;->keep()V

    .line 6724
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/motorola/Camera/Camcorder;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6725
    .local v1, videoCamera:Landroid/content/Intent;
    const/high16 v4, 0x400

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6726
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->camPremium:Z

    if-eqz v4, :cond_2

    const-string v4, "Camtype"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6729
    :goto_1
    const-string v4, "CameraSensor"

    iget-object v5, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v5

    if-nez v5, :cond_3

    :goto_2
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6730
    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 6731
    const/high16 v2, 0x10a

    const v3, 0x10a0001

    invoke-virtual {p0, v2, v3}, Lcom/motorola/Camera/Camera;->overridePendingTransition(II)V

    .line 6733
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->finish()V

    goto :goto_0

    .line 6727
    :cond_2
    const-string v4, "Camtype"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    move v2, v3

    .line 6729
    goto :goto_2
.end method

.method private openCamera()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 424
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCameraKPI"

    const-string v3, "openCamera enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 429
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 430
    iput-boolean v4, p0, Lcom/motorola/Camera/Camera;->mDeviceDisabled:Z

    .line 468
    :cond_1
    :goto_0
    return-void

    .line 434
    :cond_2
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 436
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 440
    :cond_3
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v2, :cond_6

    .line 441
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_4

    .line 442
    const-string v2, "MotoCamera"

    const-string v3, "openCamera() - mCameraDevice = null, opening"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_4
    :try_start_0
    iget-boolean v2, p0, Lcom/motorola/Camera/Camera;->mStartSensorFront:Z

    if-eqz v2, :cond_7

    .line 447
    invoke-static {}, Lcom/motorola/Camera/CameraHolder;->instance()Lcom/motorola/Camera/CameraHolder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CameraHolder;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :goto_1
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_5

    const-string v2, "MotoCameraKPI"

    const-string v3, "openCamera opened"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_5
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_6

    const-string v2, "MotoCamera"

    const-string v3, "openCamera() - mCameraDevice opened"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_6
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    new-instance v3, Lcom/motorola/Camera/Camera$MotoCameraErrorCallback;

    invoke-direct {v3, p0, v5}, Lcom/motorola/Camera/Camera$MotoCameraErrorCallback;-><init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 464
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 465
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mZoomChangeListener:Lcom/motorola/Camera/Camera$MotoCameraOnZoomChangeListener;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto :goto_0

    .line 449
    :cond_7
    :try_start_1
    invoke-static {}, Lcom/motorola/Camera/CameraHolder;->instance()Lcom/motorola/Camera/CameraHolder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CameraHolder;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 451
    :catch_0
    move-exception v1

    .line 452
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v2, "MotoCamera"

    const-string v3, "openCamera() - failed to open camera"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x38

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private postAfterKeep(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 6738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/Camera;->mKeepAndRestartPreview:Z

    .line 6739
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6740
    return-void
.end method

.method private removeShutterView()V
    .locals 2

    .prologue
    .line 1524
    const v0, 0x7f0d003f

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CameraContentView;

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    .line 1525
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 1526
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/CameraContentView;->removeView(Landroid/view/View;)V

    .line 1528
    :cond_0
    return-void
.end method

.method private resetZoom()V
    .locals 2

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    if-eqz v0, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setDefaultZoomValue()V

    .line 1586
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v0, :cond_1

    .line 1587
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateZoom(I)V

    .line 1589
    :cond_1
    return-void
.end method

.method private restartPreview(Z)V
    .locals 5
    .parameter "setParams"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 552
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restartPreview() - openCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPostText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 555
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCaptureCluster()V

    .line 558
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera;->startDevice(Z)V

    .line 559
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v1

    .line 560
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isMultishotMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 561
    sget-object v0, Lcom/motorola/Camera/Camera;->mMultishotUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 562
    sget-object v0, Lcom/motorola/Camera/Camera;->mMultishotUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 567
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mAnimationRunning:Z

    if-nez v0, :cond_3

    .line 574
    iput v3, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    .line 576
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 578
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->enableAllControls(Z)V

    .line 581
    :cond_2
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCamera"

    const-string v1, "KPI capture stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getZoomNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateZoom(I)V

    .line 585
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 586
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showTopStatusSet()V

    .line 587
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateRemainCount()V

    .line 588
    return-void

    .line 563
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->enablePanorama(Z)V

    goto :goto_0

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private selectPhoto()Z
    .locals 27

    .prologue
    .line 5967
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    monitor-enter v4

    .line 5968
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    invoke-virtual {v3}, Lcom/motorola/Camera/Camera$ImageCapture;->getLastCaptureUri()Landroid/net/Uri;

    move-result-object v17

    .line 5969
    .local v17, lastUri:Landroid/net/Uri;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5971
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectPhoto uri is "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5973
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camera$ImageCapture;->setDone(Z)V

    .line 5975
    if-nez v17, :cond_2

    .line 5977
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/Camera;->setResult(I)V

    .line 5978
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->finish()V

    .line 5979
    const/4 v3, 0x1

    .line 6202
    :cond_1
    :goto_0
    return v3

    .line 5969
    .end local v17           #lastUri:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 5982
    .restart local v17       #lastUri:Landroid/net/Uri;
    :cond_2
    const/4 v2, 0x0

    .line 5984
    .local v2, bitmap:Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 5985
    .local v10, cropValue:Ljava/lang/String;
    const/16 v24, 0x0

    .line 5987
    .local v24, saveUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    .line 5988
    .local v18, myExtras:Landroid/os/Bundle;
    if-eqz v18, :cond_3

    .line 5990
    const-string v3, "output"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v24

    .end local v24           #saveUri:Landroid/net/Uri;
    check-cast v24, Landroid/net/Uri;

    .line 5991
    .restart local v24       #saveUri:Landroid/net/Uri;
    const-string v3, "crop"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 5992
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_3

    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectPhoto myExtras :  saveUri "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", cropValue "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5995
    :cond_3
    if-nez v10, :cond_16

    .line 6003
    if-eqz v24, :cond_b

    .line 6006
    const/16 v16, 0x0

    .line 6007
    .local v16, inputStream:Ljava/io/InputStream;
    const/16 v21, 0x0

    .line 6012
    .local v21, outputStream:Ljava/io/OutputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v16

    .line 6013
    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectPhoto - inputStream.available() "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->available()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6014
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v21

    .line 6015
    if-nez v21, :cond_5

    .line 6017
    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectPhoto - save to uri "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6018
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/Camera;->setResult(I)V

    .line 6019
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 6020
    const/4 v3, 0x1

    .line 6035
    if-eqz v16, :cond_4

    .line 6037
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 6042
    :cond_4
    :goto_1
    if-eqz v21, :cond_1

    .line 6044
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 6045
    :catch_0
    move-exception v15

    .line 6046
    .local v15, ex:Ljava/io/IOException;
    const-string v4, "MotoCamera"

    const-string v8, "selectPhoto - IOException Ignore close exception for outputStream"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6038
    .end local v15           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v15

    .line 6039
    .restart local v15       #ex:Ljava/io/IOException;
    const-string v4, "MotoCamera"

    const-string v8, "selectPhoto - IOException Ignore close exception for inputStream"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6022
    .end local v15           #ex:Ljava/io/IOException;
    :cond_5
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v11, v3, [B

    .line 6023
    .local v11, data:[B
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    .line 6024
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write([B)V

    .line 6025
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 6026
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 6035
    if-eqz v16, :cond_6

    .line 6037
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 6042
    :cond_6
    :goto_2
    if-eqz v21, :cond_7

    .line 6044
    :try_start_7
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 6051
    :cond_7
    :goto_3
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/Camera;->setResult(I)V

    .line 6052
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->finish()V

    .line 6202
    .end local v11           #data:[B
    .end local v16           #inputStream:Ljava/io/InputStream;
    .end local v21           #outputStream:Ljava/io/OutputStream;
    :goto_4
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 6038
    .restart local v11       #data:[B
    .restart local v16       #inputStream:Ljava/io/InputStream;
    .restart local v21       #outputStream:Ljava/io/OutputStream;
    :catch_2
    move-exception v15

    .line 6039
    .restart local v15       #ex:Ljava/io/IOException;
    const-string v3, "MotoCamera"

    const-string v4, "selectPhoto - IOException Ignore close exception for inputStream"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 6045
    .end local v15           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v15

    .line 6046
    .restart local v15       #ex:Ljava/io/IOException;
    const-string v3, "MotoCamera"

    const-string v4, "selectPhoto - IOException Ignore close exception for outputStream"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 6028
    .end local v11           #data:[B
    .end local v15           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v15

    .line 6029
    .restart local v15       #ex:Ljava/io/IOException;
    :try_start_8
    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectPhoto - IOException save to uri "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6030
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/Camera;->setResult(I)V

    .line 6031
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->finish()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 6032
    const/4 v3, 0x1

    .line 6035
    if-eqz v16, :cond_8

    .line 6037
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 6042
    :cond_8
    :goto_5
    if-eqz v21, :cond_1

    .line 6044
    :try_start_a
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    .line 6045
    :catch_5
    move-exception v15

    .line 6046
    const-string v4, "MotoCamera"

    const-string v8, "selectPhoto - IOException Ignore close exception for outputStream"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6038
    :catch_6
    move-exception v15

    .line 6039
    const-string v4, "MotoCamera"

    const-string v8, "selectPhoto - IOException Ignore close exception for inputStream"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 6035
    .end local v15           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    if-eqz v16, :cond_9

    .line 6037
    :try_start_b
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 6042
    :cond_9
    :goto_6
    if-eqz v21, :cond_a

    .line 6044
    :try_start_c
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 6047
    :cond_a
    :goto_7
    throw v3

    .line 6038
    :catch_7
    move-exception v15

    .line 6039
    .restart local v15       #ex:Ljava/io/IOException;
    const-string v4, "MotoCamera"

    const-string v8, "selectPhoto - IOException Ignore close exception for inputStream"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 6045
    .end local v15           #ex:Ljava/io/IOException;
    :catch_8
    move-exception v15

    .line 6046
    .restart local v15       #ex:Ljava/io/IOException;
    const-string v4, "MotoCamera"

    const-string v8, "selectPhoto - IOException Ignore close exception for outputStream"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 6058
    .end local v15           #ex:Ljava/io/IOException;
    .end local v16           #inputStream:Ljava/io/InputStream;
    .end local v21           #outputStream:Ljava/io/OutputStream;
    :cond_b
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    move-result-object v2

    .line 6067
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_c

    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectPhoto returning bitmap to app w="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " h="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6070
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/Camera;->mLastOrientation:I

    move/from16 v20, v0

    .line 6072
    .local v20, orientation:I
    invoke-static/range {v20 .. v20}, Lcom/motorola/Camera/ImageManager;->roundOrientation(I)I

    move-result v20

    .line 6074
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_d

    .line 6075
    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ImageCapture:storeImage - orientation is : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6078
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/motorola/Camera/Camera;->mIsRotatorClosed:Z

    if-eqz v3, :cond_e

    .line 6079
    add-int/lit8 v20, v20, 0x5a

    .line 6082
    :cond_e
    const/16 v3, 0x10e

    move/from16 v0, v20

    if-ne v0, v3, :cond_13

    const/16 v20, 0x0

    .line 6085
    :goto_8
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 6086
    .local v7, bmpRotMtx:Landroid/graphics/Matrix;
    move/from16 v0, v20

    int-to-float v3, v0

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 6088
    const/16 v23, 0x0

    .line 6089
    .local v23, retBmp:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_11

    .line 6091
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 6092
    .local v5, width:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 6093
    .local v6, height:I
    mul-int v3, v5, v6

    const v4, 0x12c00

    if-le v3, v4, :cond_14

    .line 6094
    const/16 v13, 0x140

    .line 6095
    .local v13, dstWidth:I
    const/16 v12, 0xf0

    .line 6096
    .local v12, dstHeight:I
    if-ge v5, v6, :cond_f

    .line 6098
    const/16 v13, 0xf0

    .line 6099
    const/16 v12, 0x140

    .line 6101
    :cond_f
    int-to-float v3, v13

    int-to-float v4, v5

    div-float/2addr v3, v4

    int-to-float v4, v12

    int-to-float v8, v6

    div-float/2addr v4, v8

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 6102
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_10

    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectPhoto scaling scalew="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int v8, v13, v5

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " scaleh="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int v8, v12, v6

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6103
    :cond_10
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 6113
    .end local v5           #width:I
    .end local v6           #height:I
    .end local v12           #dstHeight:I
    .end local v13           #dstWidth:I
    :cond_11
    :goto_9
    if-eqz v23, :cond_15

    .line 6114
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_12

    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectPhoto return bitmap: w="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " h="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6115
    :cond_12
    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    const-string v8, "inline-data"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "data"

    move-object/from16 v0, v23

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/motorola/Camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 6121
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->finish()V

    goto/16 :goto_4

    .line 6060
    .end local v7           #bmpRotMtx:Landroid/graphics/Matrix;
    .end local v20           #orientation:I
    .end local v23           #retBmp:Landroid/graphics/Bitmap;
    :catch_9
    move-exception v14

    .line 6061
    .local v14, e:Ljava/io/IOException;
    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectPhoto - IOException read from uri "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6062
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/Camera;->setResult(I)V

    .line 6063
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->finish()V

    .line 6064
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 6083
    .end local v14           #e:Ljava/io/IOException;
    .restart local v20       #orientation:I
    :cond_13
    add-int/lit8 v20, v20, 0x5a

    goto/16 :goto_8

    .line 6107
    .restart local v5       #width:I
    .restart local v6       #height:I
    .restart local v7       #bmpRotMtx:Landroid/graphics/Matrix;
    .restart local v23       #retBmp:Landroid/graphics/Bitmap;
    :cond_14
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v23

    goto :goto_9

    .line 6117
    .end local v5           #width:I
    .end local v6           #height:I
    :cond_15
    const-string v3, "MotoCamera"

    const-string v4, "selectPhoto ERROR: bitmap too big"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6118
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/Camera;->setResult(I)V

    goto :goto_a

    .line 6129
    .end local v7           #bmpRotMtx:Landroid/graphics/Matrix;
    .end local v20           #orientation:I
    .end local v23           #retBmp:Landroid/graphics/Bitmap;
    :cond_16
    const/16 v26, 0x0

    .line 6130
    .local v26, tempUri:Landroid/net/Uri;
    const/16 v25, 0x0

    .line 6131
    .local v25, tempStream:Ljava/io/FileOutputStream;
    const/16 v16, 0x0

    .line 6136
    .restart local v16       #inputStream:Ljava/io/InputStream;
    :try_start_e
    const-string v3, "crop-temp"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f

    move-result-object v22

    .line 6139
    .local v22, path:Ljava/io/File;
    :try_start_f
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f

    .line 6145
    :goto_b
    :try_start_10
    const-string v3, "crop-temp"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/motorola/Camera/Camera;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v25

    .line 6147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v16

    .line 6148
    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectPhoto - inputStream.available() "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->available()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6149
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v11, v3, [B

    .line 6150
    .restart local v11       #data:[B
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    .line 6151
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 6152
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 6154
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V

    .line 6155
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    move-result-object v26

    .line 6165
    if-eqz v16, :cond_17

    .line 6167
    :try_start_11
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    .line 6172
    :cond_17
    :goto_c
    if-eqz v25, :cond_18

    .line 6174
    :try_start_12
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_13

    .line 6181
    :cond_18
    :goto_d
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 6182
    .local v19, newExtras:Landroid/os/Bundle;
    const-string v3, "circle"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 6183
    const-string v3, "circleCrop"

    const-string v4, "true"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6184
    :cond_19
    if-eqz v24, :cond_1e

    .line 6185
    const-string v3, "output"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6189
    :goto_e
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 6195
    .local v9, cropIntent:Landroid/content/Intent;
    const-string v3, "com.android.camera.action.CROP"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6196
    const-string v3, "image/jpeg"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 6197
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 6199
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v3}, Lcom/motorola/Camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_4

    .line 6141
    .end local v9           #cropIntent:Landroid/content/Intent;
    .end local v11           #data:[B
    .end local v19           #newExtras:Landroid/os/Bundle;
    :catch_a
    move-exception v14

    .line 6143
    .local v14, e:Ljava/lang/SecurityException;
    :try_start_13
    const-string v3, "MotoCamera"

    const-string v4, "Security exception deleting file!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f

    goto/16 :goto_b

    .line 6156
    .end local v14           #e:Ljava/lang/SecurityException;
    .end local v22           #path:Ljava/io/File;
    :catch_b
    move-exception v15

    .line 6157
    .local v15, ex:Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    :try_start_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/Camera;->setResult(I)V

    .line 6158
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->finish()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 6159
    const/4 v3, 0x1

    .line 6165
    if-eqz v16, :cond_1a

    .line 6167
    :try_start_15
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e

    .line 6172
    .end local v15           #ex:Ljava/io/FileNotFoundException;
    :cond_1a
    :goto_f
    if-eqz v25, :cond_1

    .line 6174
    :try_start_16
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c

    goto/16 :goto_0

    .line 6175
    :catch_c
    move-exception v4

    goto/16 :goto_0

    .line 6168
    .restart local v11       #data:[B
    .restart local v22       #path:Ljava/io/File;
    :catch_d
    move-exception v15

    .line 6169
    .local v15, ex:Ljava/io/IOException;
    const-string v3, "MotoCamera"

    const-string v4, "selectPhoto - IOException Ignore close exception for inputStream"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 6168
    .end local v11           #data:[B
    .end local v22           #path:Ljava/io/File;
    .local v15, ex:Ljava/io/FileNotFoundException;
    :catch_e
    move-exception v15

    .line 6169
    .local v15, ex:Ljava/io/IOException;
    const-string v4, "MotoCamera"

    const-string v8, "selectPhoto - IOException Ignore close exception for inputStream"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 6160
    .end local v15           #ex:Ljava/io/IOException;
    :catch_f
    move-exception v15

    .line 6161
    .restart local v15       #ex:Ljava/io/IOException;
    const/4 v3, 0x0

    :try_start_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/Camera;->setResult(I)V

    .line 6162
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->finish()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 6163
    const/4 v3, 0x1

    .line 6165
    if-eqz v16, :cond_1b

    .line 6167
    :try_start_18
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_11

    .line 6172
    :cond_1b
    :goto_10
    if-eqz v25, :cond_1

    .line 6174
    :try_start_19
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_10

    goto/16 :goto_0

    .line 6175
    :catch_10
    move-exception v4

    goto/16 :goto_0

    .line 6168
    :catch_11
    move-exception v15

    .line 6169
    const-string v4, "MotoCamera"

    const-string v8, "selectPhoto - IOException Ignore close exception for inputStream"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 6165
    .end local v15           #ex:Ljava/io/IOException;
    :catchall_2
    move-exception v3

    if-eqz v16, :cond_1c

    .line 6167
    :try_start_1a
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_12

    .line 6172
    :cond_1c
    :goto_11
    if-eqz v25, :cond_1d

    .line 6174
    :try_start_1b
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_14

    .line 6177
    :cond_1d
    :goto_12
    throw v3

    .line 6168
    :catch_12
    move-exception v15

    .line 6169
    .restart local v15       #ex:Ljava/io/IOException;
    const-string v4, "MotoCamera"

    const-string v8, "selectPhoto - IOException Ignore close exception for inputStream"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 6187
    .end local v15           #ex:Ljava/io/IOException;
    .restart local v11       #data:[B
    .restart local v19       #newExtras:Landroid/os/Bundle;
    .restart local v22       #path:Ljava/io/File;
    :cond_1e
    const-string v3, "return-data"

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_e

    .line 6175
    .end local v19           #newExtras:Landroid/os/Bundle;
    :catch_13
    move-exception v3

    goto/16 :goto_d

    .end local v11           #data:[B
    .end local v22           #path:Ljava/io/File;
    :catch_14
    move-exception v4

    goto :goto_12
.end method

.method private setCameraParameters()V
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->setCameraParameters(Z)V

    .line 625
    return-void
.end method

.method private setCameraParameters(Z)V
    .locals 39
    .parameter "resetZoom"

    .prologue
    .line 633
    sget-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v33, :cond_0

    const-string v33, "MotoCamera"

    const-string v34, "setCameraParameters() - Enter"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_0
    sget-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v33, :cond_1

    const-string v33, "MotoCameraKPI"

    const-string v34, "setCamParam enter"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v33, v0

    if-nez v33, :cond_3

    .line 636
    sget-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v33, :cond_2

    const-string v33, "MotoCamera"

    const-string v34, "setCameraParameters() - camera device is null"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_2
    :goto_0
    return-void

    .line 641
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 642
    sget-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v33, :cond_4

    const-string v33, "MotoCameraKPI"

    const-string v34, "setCamParam getCustomParam"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_4
    sget-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v33, :cond_5

    const-string v33, "MotoCamera"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Back Camera:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    if-nez v33, :cond_6

    .line 647
    sget-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v33, :cond_2

    .line 648
    const-string v33, "MotoCamera"

    const-string v34, "setCameraParameters() - mParameters is NULL!!!!! Exiting);"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 653
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v34, v0

    monitor-enter v34

    .line 657
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v35, v0

    const-string v33, "persist.sys.mot.encrypt.mmc"

    const/16 v36, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v33

    const/16 v36, 0x1

    move/from16 v0, v33

    move/from16 v1, v36

    if-ne v0, v1, :cond_13

    const/16 v33, 0x1

    :goto_1
    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCamcorderAESProps(Z)V

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v33

    if-eqz v33, :cond_14

    sget-boolean v28, Lcom/motorola/Camera/CameraGlobalType;->mShouldReadBackParams:Z

    .line 661
    .local v28, shouldReadHAL:Z
    :goto_2
    if-nez v28, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxPicResolution()Ljava/lang/String;

    move-result-object v33

    if-nez v33, :cond_a

    .line 663
    :cond_7
    sget-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v33, :cond_8

    const-string v33, "MotoCameraKPI"

    const-string v35, "setCamParam read hal"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v35, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraUtility;->getCameraCapabilities(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 665
    sget-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v33, :cond_9

    const-string v33, "MotoCameraKPI"

    const-string v35, "setCamParam getCameraCapabilities"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v33

    if-eqz v33, :cond_15

    .line 667
    const/16 v33, 0x0

    sput-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->mShouldReadBackParams:Z

    .line 672
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v35, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/FocusManager;->initializeParameters(Landroid/hardware/Camera$Parameters;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->loadAutoDetectValues()V

    .line 674
    sget-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v33, :cond_b

    const-string v33, "MotoCameraKPI"

    const-string v35, "setCamParam loadAutoDetectValues"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v33

    sput v33, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v33

    sput-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->smoothZoomSupported:Z

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v33

    if-eqz v33, :cond_c

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mZoomChangeListener:Lcom/motorola/Camera/Camera$MotoCameraOnZoomChangeListener;

    move-object/from16 v35, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 684
    :cond_c
    sget-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v33, :cond_d

    .line 685
    const-string v33, "MotoCamera"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "setCameraParameters() - max zoom is "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    sget v36, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const-string v33, "MotoCamera"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "setCameraParameters() - SmoothZoomSupported is "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    sget-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->smoothZoomSupported:Z

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_d
    sget-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v33, :cond_e

    const-string v33, "MotoCameraKPI"

    const-string v35, "setCamParam zoom setup"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v17

    .line 693
    .local v17, mode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    .line 695
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/Camera/Camera;->mIsImageCaptureIntent:Z

    move/from16 v33, v0

    if-eqz v33, :cond_f

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->getResolutionFromIntent()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setServiceModeResolution(Ljava/lang/String;)V

    .line 699
    :cond_f
    if-eqz v17, :cond_10

    const/16 v33, 0x5

    move/from16 v0, v17

    move/from16 v1, v33

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v33

    const/16 v35, 0x1

    move/from16 v0, v33

    move/from16 v1, v35

    if-eq v0, v1, :cond_10

    const/16 v33, 0x4

    move/from16 v0, v17

    move/from16 v1, v33

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v33

    if-nez v33, :cond_11

    .line 705
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentSingleShotRes()Ljava/lang/String;

    move-result-object v21

    .line 706
    .local v21, pictureSize:Ljava/lang/String;
    if-nez v21, :cond_16

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v36

    add-int/lit8 v36, v36, -0x1

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v33

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v37

    add-int/lit8 v37, v37, -0x1

    move-object/from16 v0, v33

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v33

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v33, v0

    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 720
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentSingleShotRes()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/Camera;->mImageResolution:Ljava/lang/String;

    .line 722
    .end local v21           #pictureSize:Ljava/lang/String;
    :cond_11
    const/16 v33, 0x1

    move/from16 v0, v17

    move/from16 v1, v33

    if-ne v0, v1, :cond_12

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentPanResDimension()Ljava/lang/String;

    move-result-object v21

    .line 726
    .restart local v21       #pictureSize:Ljava/lang/String;
    const-string v33, "x"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    .line 727
    .local v32, temp:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    const/16 v35, 0x0

    aget-object v35, v32, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    const/16 v36, 0x1

    aget-object v36, v32, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentPanResDimension()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/Camera;->mImageResolution:Ljava/lang/String;

    .line 731
    .end local v21           #pictureSize:Ljava/lang/String;
    .end local v32           #temp:[Ljava/lang/String;
    :cond_12
    const/16 v33, 0x2

    move/from16 v0, v17

    move/from16 v1, v33

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isMultishotEnable()Z

    move-result v33

    if-eqz v33, :cond_1c

    .line 739
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v35, 0x7f090007

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 741
    .local v4, appmaxcount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    const-string v35, "mot-burst-picture-count-values"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 743
    .local v31, supportedmotburstpicturecountlist:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .local v5, asupportedmotburstcounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v30, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v33, 0x2c

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 745
    .local v30, splitter:Landroid/text/TextUtils$StringSplitter;
    invoke-interface/range {v30 .. v31}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 746
    invoke-interface/range {v30 .. v30}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_17

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 747
    .local v26, s:Ljava/lang/String;
    new-instance v33, Ljava/lang/Integer;

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1008
    .end local v4           #appmaxcount:I
    .end local v5           #asupportedmotburstcounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v17           #mode:I
    .end local v26           #s:Ljava/lang/String;
    .end local v28           #shouldReadHAL:Z
    .end local v30           #splitter:Landroid/text/TextUtils$StringSplitter;
    .end local v31           #supportedmotburstpicturecountlist:Ljava/lang/String;
    :catchall_0
    move-exception v33

    monitor-exit v34
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v33

    .line 657
    :cond_13
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 660
    :cond_14
    :try_start_1
    sget-boolean v28, Lcom/motorola/Camera/CameraGlobalType;->mShouldReadFrontParams:Z

    goto/16 :goto_2

    .line 669
    .restart local v28       #shouldReadHAL:Z
    :cond_15
    const/16 v33, 0x0

    sput-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->mShouldReadFrontParams:Z

    goto/16 :goto_3

    .line 716
    .restart local v17       #mode:I
    .restart local v21       #pictureSize:Ljava/lang/String;
    :cond_16
    const-string v33, "x"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    .line 717
    .restart local v32       #temp:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    const/16 v35, 0x0

    aget-object v35, v32, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    const/16 v36, 0x1

    aget-object v36, v32, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto/16 :goto_4

    .line 749
    .end local v21           #pictureSize:Ljava/lang/String;
    .end local v32           #temp:[Ljava/lang/String;
    .restart local v4       #appmaxcount:I
    .restart local v5       #asupportedmotburstcounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v30       #splitter:Landroid/text/TextUtils$StringSplitter;
    .restart local v31       #supportedmotburstpicturecountlist:Ljava/lang/String;
    :cond_17
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_19

    .line 752
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_18
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_1a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 753
    .local v26, s:Ljava/lang/Integer;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v33

    move/from16 v0, v33

    if-gt v0, v4, :cond_18

    .line 754
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v33

    sput v33, Lcom/motorola/Camera/Camera;->mMultiShotMaxCount:I

    goto :goto_6

    .line 758
    .end local v26           #s:Ljava/lang/Integer;
    :cond_19
    const/16 v33, 0x0

    sput v33, Lcom/motorola/Camera/Camera;->mMultiShotMaxCount:I

    .line 761
    :cond_1a
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 762
    const/4 v5, 0x0

    .line 764
    sget-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v33, :cond_1b

    .line 765
    const-string v33, "MotoCamera"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "mMultiShotMaxCount set to = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    sget v36, Lcom/motorola/Camera/Camera;->mMultiShotMaxCount:I

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v35, v0

    sget v36, Lcom/motorola/Camera/Camera;->mMultiShotMaxCount:I

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraUtility;->setBurstCaptureCount(Landroid/hardware/Camera$Parameters;I)V

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v33

    if-eqz v33, :cond_1c

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPicResolution()Ljava/lang/String;

    move-result-object v33

    const-string v35, "x"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 771
    .local v6, burstModeSize:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    const/16 v35, 0x0

    aget-object v35, v6, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    const/16 v36, 0x1

    aget-object v36, v6, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 776
    .end local v4           #appmaxcount:I
    .end local v5           #asupportedmotburstcounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6           #burstModeSize:[Ljava/lang/String;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v30           #splitter:Landroid/text/TextUtils$StringSplitter;
    .end local v31           #supportedmotburstpicturecountlist:Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v29

    .line 777
    .local v29, size:Landroid/hardware/Camera$Size;
    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v33, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/motorola/Camera/Camera;->setJpegThumbnailSize(II)V

    .line 779
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 780
    .local v8, dm:Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 782
    const-string v33, "ro.media.camerapreview.reg"

    invoke-static/range {v33 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 783
    .local v22, pr:Ljava/lang/String;
    const-string v33, "ro.media.camerapreview.wide"

    invoke-static/range {v33 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 785
    .local v24, pw:Ljava/lang/String;
    const/16 v33, 0x1

    move/from16 v0, v17

    move/from16 v1, v33

    if-ne v0, v1, :cond_2f

    .line 787
    const/16 v19, 0x0

    .line 788
    .local v19, panVFRes:Ljava/lang/String;
    const/16 v32, 0x0

    .line 789
    .restart local v32       #temp:[Ljava/lang/String;
    const-string v33, "ro.media.panorama.frameres"

    invoke-static/range {v33 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 790
    if-eqz v19, :cond_2e

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_2e

    const-string v33, "640x480"

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_2e

    .line 792
    const-string v33, "x"

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    const/16 v35, 0x0

    aget-object v35, v32, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    const/16 v36, 0x1

    aget-object v36, v32, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 849
    .end local v19           #panVFRes:Ljava/lang/String;
    .end local v32           #temp:[Ljava/lang/String;
    :cond_1d
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v23

    .line 850
    .local v23, previewSize:Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;

    move-object/from16 v33, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v35, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v36, v0

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/CameraView;->setAspectRatio(II)V

    .line 853
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/Camera/Camera;->mIsImageCaptureIntent:Z

    move/from16 v33, v0

    if-eqz v33, :cond_33

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    sget-object v35, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_CAPTURE_FRAMERATE:Ljava/lang/Integer;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 891
    :cond_1e
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    const/16 v35, 0x5f

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v33

    move-object/from16 v0, v33

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/Camera/Camera;->pictureWidth:I

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v33

    move-object/from16 v0, v33

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/Camera/Camera;->pictureHeight:I

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/Camera/Camera;->picturePixelFormat:I

    .line 899
    if-nez v17, :cond_38

    .line 902
    sget-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v33, :cond_1f

    const-string v33, "MotoCamera"

    const-string v35, "Setting mode to high-quality: zsl"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    const-string v35, "mode"

    const-string v36, "high-quality-zsl"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v33

    const/16 v35, 0x7

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v33

    if-eqz v33, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v33

    const/16 v35, 0x5

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_3a

    .line 915
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    const-string v35, "mot-image-stabilization-mode"

    const-string v36, "on"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    :goto_a
    sget-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->SHOW_ISO_SETTING:Z

    if-eqz v33, :cond_21

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    const-string v35, "mot-picture-iso"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentIsoValue()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v35, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraUtility;->setCameraMode(Landroid/hardware/Camera$Parameters;I)V

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v27

    .line 931
    .local v27, sceneMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_22

    .line 933
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v33

    if-eqz v33, :cond_3b

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v33

    const-string v35, "landscape"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_22

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    const-string v35, "landscape"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 957
    :cond_22
    :goto_b
    const/16 v33, 0x6

    move/from16 v0, v27

    move/from16 v1, v33

    if-eq v0, v1, :cond_23

    const/16 v33, 0x7

    move/from16 v0, v27

    move/from16 v1, v33

    if-ne v0, v1, :cond_40

    .line 959
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v35, v0

    const-string v36, "off"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraUtility;->setFlash(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 967
    :cond_24
    :goto_c
    sget-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v33, :cond_25

    const-string v33, "MotoCameraKPI"

    const-string v35, "setCamParam flast set"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedEffects()Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedEffects()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_26

    .line 972
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->updateEffects()V

    .line 975
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v33

    const-string v35, "auto"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_41

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mMotoEnvCallback:Lcom/motorola/Camera/Camera$MotoEnvCallback;

    move-object/from16 v35, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setEnvDetectCallback(Landroid/hardware/Camera$EnvDetectCallback;)V

    .line 983
    :cond_27
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    const-string v35, "auto"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxExpCompensationIndex()I

    move-result v33

    if-nez v33, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v33

    if-eqz v33, :cond_29

    .line 987
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentExpValue()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 988
    .local v11, expIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 991
    .end local v11           #expIndex:I
    :cond_29
    if-eqz p1, :cond_2a

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 995
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v33

    if-eqz v33, :cond_42

    const-string v10, "on"

    .line 996
    .local v10, env:Ljava/lang/String;
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    const-string v35, "mot-env-event-mode"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v35, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 999
    sget-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v33, :cond_2b

    const-string v33, "MotoCameraKPI"

    const-string v35, "setCamParam setCustomParams"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1004
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->setFocusModeParameters()V

    .line 1005
    sget-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v33, :cond_2c

    const-string v33, "MotoCamera"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "setCameraParameters focus set"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_2c
    sget-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v33, :cond_2d

    const-string v33, "MotoCameraKPI"

    const-string v35, "setCamParam getCustomParams"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :cond_2d
    monitor-exit v34
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1010
    sget-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v33, :cond_2

    const-string v33, "MotoCamera"

    const-string v34, "setCameraParameters() - Exit"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 797
    .end local v10           #env:Ljava/lang/String;
    .end local v23           #previewSize:Landroid/hardware/Camera$Size;
    .end local v27           #sceneMode:I
    .restart local v19       #panVFRes:Ljava/lang/String;
    .restart local v32       #temp:[Ljava/lang/String;
    :cond_2e
    :try_start_2
    const-string v19, "640x480"

    .line 798
    const-string v33, "x"

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    const/16 v35, 0x0

    aget-object v35, v32, v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    const/16 v36, 0x1

    aget-object v36, v32, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    goto/16 :goto_7

    .line 803
    .end local v19           #panVFRes:Ljava/lang/String;
    .end local v32           #temp:[Ljava/lang/String;
    :cond_2f
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    if-eqz v33, :cond_31

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v33

    if-eqz v33, :cond_31

    .line 806
    :try_start_3
    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v33, v33, v35

    const v35, 0x3fab851f

    cmpl-float v33, v33, v35

    if-lez v33, :cond_30

    .line 808
    const-string v33, "x"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    const/16 v35, 0x0

    aget-object v33, v33, v35

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 809
    .local v25, pwidth:I
    const-string v33, "x"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    const/16 v35, 0x1

    aget-object v33, v33, v35

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v20

    .line 823
    .local v20, pheight:I
    :goto_f
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v25

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 824
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/Camera/Camera;->mPreviewWidth:F

    .line 825
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/Camera/Camera;->mPreviewHeight:F

    .line 826
    sget-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v33, :cond_1d

    const-string v33, "MotoCamera"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Preview set from Camera media Profiles pw: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "pr: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_7

    .line 813
    .end local v20           #pheight:I
    .end local v25           #pwidth:I
    :cond_30
    :try_start_5
    const-string v33, "x"

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    const/16 v35, 0x0

    aget-object v33, v33, v35

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 814
    .restart local v25       #pwidth:I
    const-string v33, "x"

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    const/16 v35, 0x1

    aget-object v33, v33, v35

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v20

    .restart local v20       #pheight:I
    goto :goto_f

    .line 818
    .end local v20           #pheight:I
    .end local v25           #pwidth:I
    :catch_0
    move-exception v9

    .line 819
    .local v9, e:Ljava/lang/NumberFormatException;
    const/16 v25, 0x280

    .line 820
    .restart local v25       #pwidth:I
    const/16 v20, 0x1e0

    .restart local v20       #pheight:I
    goto/16 :goto_f

    .line 832
    .end local v9           #e:Ljava/lang/NumberFormatException;
    .end local v20           #pheight:I
    .end local v25           #pwidth:I
    :cond_31
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 833
    .local v7, display:Landroid/view/Display;
    sget-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v33, :cond_32

    const-string v33, "MotoCamera"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "setCameraParameters() - Display size is "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "x"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_32
    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/Camera/Camera;->mDisplayHeight:I

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v35

    const/16 v36, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraUtility;->getSortedList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v15

    .line 840
    .local v15, lv:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v35, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v37, v0

    div-double v35, v35, v37

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v33

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v37

    move-wide/from16 v0, v35

    move/from16 v2, v33

    move/from16 v3, v37

    invoke-static {v15, v0, v1, v2, v3}, Lcom/motorola/Camera/CameraGlobalTools;->getOptimalPreviewSize(Ljava/util/List;DII)Landroid/hardware/Camera$Size;

    move-result-object v18

    .line 841
    .local v18, optimalSize:Landroid/hardware/Camera$Size;
    if-eqz v18, :cond_1d

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v35, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v36, v0

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 844
    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/Camera/Camera;->mPreviewWidth:F

    .line 845
    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/Camera/Camera;->mPreviewHeight:F

    goto/16 :goto_7

    .line 859
    .end local v7           #display:Landroid/view/Display;
    .end local v15           #lv:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v18           #optimalSize:Landroid/hardware/Camera$Size;
    .restart local v23       #previewSize:Landroid/hardware/Camera$Size;
    :cond_33
    const/16 v16, 0x0

    .line 861
    .local v16, maxFrameRate:I
    const-string v33, "ro.media.capture.prevfps"

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 862
    if-eqz v16, :cond_34

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 865
    sget-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v33, :cond_1e

    const-string v33, "MotoCamera"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "setCameraParameters() - from system property maxFrameRate is "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 870
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v13

    .line 872
    .local v13, frameRates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v13, :cond_1e

    .line 874
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_35
    :goto_10
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_36

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Integer;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 876
    .local v12, frameRate:I
    move/from16 v0, v16

    if-le v12, v0, :cond_35

    const/16 v33, 0x1e

    move/from16 v0, v33

    if-gt v12, v0, :cond_35

    .line 878
    move/from16 v16, v12

    goto :goto_10

    .line 882
    .end local v12           #frameRate:I
    :cond_36
    if-eqz v16, :cond_37

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 884
    :cond_37
    sget-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v33, :cond_1e

    const-string v33, "MotoCamera"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "setCameraParameters() - maxFrameRate is "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 907
    .end local v13           #frameRates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #maxFrameRate:I
    :cond_38
    sget-boolean v33, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v33, :cond_39

    const-string v33, "MotoCamera"

    const-string v35, "Setting mode to high-quality: nonzsl"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    const-string v35, "mode"

    const-string v36, "high-quality"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 918
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    const-string v35, "mot-image-stabilization-mode"

    const-string v36, "off"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 937
    .restart local v27       #sceneMode:I
    :cond_3b
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->isMultishotMode()Z

    move-result v33

    if-nez v33, :cond_3c

    const/16 v33, 0x6

    move/from16 v0, v17

    move/from16 v1, v33

    if-eq v0, v1, :cond_3c

    const/16 v33, 0x4

    move/from16 v0, v17

    move/from16 v1, v33

    if-ne v0, v1, :cond_3d

    .line 940
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    const-string v35, "auto"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 942
    :cond_3d
    sget-object v33, Lcom/motorola/Camera/CameraGlobalType;->sceneSetting:[Ljava/lang/String;

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v27

    move/from16 v1, v33

    if-ge v0, v1, :cond_22

    .line 943
    const/16 v33, 0x6

    move/from16 v0, v27

    move/from16 v1, v33

    if-ne v0, v1, :cond_3e

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    const-string v35, "auto"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFocusModes()Ljava/lang/String;

    move-result-object v33

    const-string v35, "macro"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_22

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    const-string v35, "macro"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 948
    :cond_3e
    const/16 v33, 0x7

    move/from16 v0, v27

    move/from16 v1, v33

    if-ne v0, v1, :cond_3f

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    const-string v35, "auto"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 951
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v33, v0

    sget-object v35, Lcom/motorola/Camera/CameraGlobalType;->sceneSetting:[Ljava/lang/String;

    aget-object v35, v35, v27

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 960
    :cond_40
    const/16 v33, 0x3

    move/from16 v0, v27

    move/from16 v1, v33

    if-eq v0, v1, :cond_24

    const/16 v33, 0x2

    move/from16 v0, v27

    move/from16 v1, v33

    if-eq v0, v1, :cond_24

    const/16 v33, 0x5

    move/from16 v0, v27

    move/from16 v1, v33

    if-eq v0, v1, :cond_24

    const/16 v33, 0x4

    move/from16 v0, v27

    move/from16 v1, v33

    if-eq v0, v1, :cond_24

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v35, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CameraUtility;->setFlash(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_c

    .line 978
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v33, v0

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setEnvDetectCallback(Landroid/hardware/Camera$EnvDetectCallback;)V

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    move-object/from16 v33, v0

    if-eqz v33, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    move-object/from16 v33, v0

    const/16 v35, 0x0

    const/16 v36, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideHandshake(ZZ)V

    goto/16 :goto_d

    .line 995
    :cond_42
    const-string v10, "off"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_e
.end method

.method private setFocusModeParameters()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1014
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "auto"

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/motorola/Camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/Camera/Camera;->mFocusAreaSupported:Z

    .line 1015
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_5

    :goto_1
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mMeteringAreaSupported:Z

    .line 1017
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v1}, Lcom/motorola/Camera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1020
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_1

    .line 1022
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v1}, Lcom/motorola/Camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 1025
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mMotoEnvCallback:Lcom/motorola/Camera/Camera$MotoEnvCallback;

    iget-boolean v0, v0, Lcom/motorola/Camera/Camera$MotoEnvCallback;->mLowLight:Z

    if-nez v0, :cond_6

    .line 1028
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 1029
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v1}, Lcom/motorola/Camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1034
    :goto_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v0, :cond_2

    .line 1035
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v0}, Lcom/motorola/Camera/FocusManager;->shouldShowCafStatus()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1036
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCafStatus(Z)V

    .line 1041
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/FocusManager;->setFocusParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1043
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1045
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    .line 1046
    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusModeParameters focus set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 1014
    goto/16 :goto_0

    :cond_5
    move v1, v2

    .line 1015
    goto/16 :goto_1

    .line 1031
    :cond_6
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    goto :goto_2

    .line 1038
    :cond_7
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideCafStatus(Z)V

    goto :goto_3
.end method

.method private setGroupIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7039
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setJpegThumbnailSize(II)V
    .locals 17
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1051
    move/from16 v0, p1

    int-to-double v13, v0

    move/from16 v0, p2

    int-to-double v15, v0

    div-double v2, v13, v15

    .line 1052
    .local v2, currentAspectRatio:D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v12

    .line 1053
    .local v12, supportedThumbnailSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v12, :cond_3

    .line 1054
    const/4 v1, 0x0

    .line 1055
    .local v1, closestSize:Landroid/hardware/Camera$Size;
    const-wide v6, 0x7fefffffffffffffL

    .line 1056
    .local v6, diff:D
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Camera$Size;

    .line 1057
    .local v11, supportedSize:Landroid/hardware/Camera$Size;
    iget v13, v11, Landroid/hardware/Camera$Size;->width:I

    int-to-double v13, v13

    iget v15, v11, Landroid/hardware/Camera$Size;->height:I

    int-to-double v15, v15

    div-double v9, v13, v15

    .line 1058
    .local v9, supportedAspectRatio:D
    sub-double v13, v9, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 1059
    .local v4, currentDiff:D
    cmpg-double v13, v4, v6

    if-gtz v13, :cond_0

    .line 1060
    move-object v1, v11

    .line 1061
    move-wide v6, v4

    goto :goto_0

    .line 1065
    .end local v4           #currentDiff:D
    .end local v9           #supportedAspectRatio:D
    .end local v11           #supportedSize:Landroid/hardware/Camera$Size;
    :cond_1
    if-eqz v1, :cond_3

    .line 1066
    sget-boolean v13, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v13, :cond_2

    const-string v13, "MotoCamera"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Setting the Jpeg Thumbnail size as \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " x "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v14, v1, Landroid/hardware/Camera$Size;->width:I

    iget v15, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v13, v14, v15}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 1070
    .end local v1           #closestSize:Landroid/hardware/Camera$Size;
    .end local v6           #diff:D
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private setOrientationIndicator(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 1321
    const v0, 0x7f0d002d

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/RotateImageView;->setDegree(I)V

    .line 1323
    const v0, 0x7f0d002e

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/RotateImageView;->setDegree(I)V

    .line 1325
    const v0, 0x7f0d002f

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/RotateImageView;->setDegree(I)V

    .line 1327
    const v0, 0x7f0d0030

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/RotateImageView;->setDegree(I)V

    .line 1329
    const v0, 0x7f0d0031

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/RotateImageView;->setDegree(I)V

    .line 1331
    const v0, 0x7f0d0032

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/RotateImageView;->setDegree(I)V

    .line 1333
    return-void
.end method

.method private setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 1074
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    const-string v2, "setPreviewDisplay() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamera"

    const-string v2, "setPreviewDisplay() - calling mCameraDevice.setPreviewDisplay()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    :goto_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCamera"

    const-string v2, "setPreviewDisplay() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_2
    return-void

    .line 1081
    :catch_0
    move-exception v0

    .line 1083
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "MotoCamera"

    const-string v2, "error setting preview display, closing camera"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->closeCamera()V

    .line 1085
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x38

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private setupDevice()V
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->setupDevice(Z)V

    .line 472
    return-void
.end method

.method private setupDevice(Z)V
    .locals 3
    .parameter "resetZoom"

    .prologue
    .line 475
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraKPI"

    const-string v1, "setupDevice enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopPreview()V

    .line 477
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->disableUIAfterStopPreview()V

    .line 478
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraKPI"

    const-string v1, "setupDevice preview stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_1
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera;->setCameraParameters(Z)V

    .line 480
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCameraKPI"

    const-string v1, "setupDevice cam params set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->loadSliderData()V

    .line 482
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCameraKPI"

    const-string v1, "setupDevice slider loaded "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_5

    .line 486
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraUtility;->setCameraDisplayOrientation(ILandroid/hardware/Camera;)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/Camera;->mDisplayOrientation:I

    .line 490
    :goto_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackCamera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 496
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 497
    return-void

    .line 488
    :cond_5
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraUtility;->setCameraDisplayOrientation(ILandroid/hardware/Camera;)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/Camera;->mDisplayOrientation:I

    goto :goto_0
.end method

.method private setupFocusViews()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/16 v1, 0x8

    .line 1476
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isDynamicFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1477
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1478
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/FocusView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/FocusView;->initFocusView()Z

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/FocusView;->resetFocusArea()V

    .line 1483
    iget v0, p0, Lcom/motorola/Camera/Camera;->mFocusValue:I

    if-ne v0, v2, :cond_3

    .line 1484
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 1489
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateFocusIndicator()V

    .line 1500
    :cond_2
    :goto_1
    return-void

    .line 1486
    :cond_3
    iget v0, p0, Lcom/motorola/Camera/Camera;->mFocusValue:I

    if-nez v0, :cond_1

    .line 1487
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    goto :goto_0

    .line 1490
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isAutoFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1491
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 1492
    iget v0, p0, Lcom/motorola/Camera/Camera;->mFocusValue:I

    if-ne v0, v2, :cond_2

    .line 1493
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1496
    :cond_5
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 1497
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private showStorageToast()V
    .locals 3

    .prologue
    .line 4957
    const/4 v0, 0x0

    .line 4959
    .local v0, noStorageText:Ljava/lang/String;
    iget v1, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 4961
    const v1, 0x7f0b0011

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4967
    :goto_0
    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V

    .line 4968
    return-void

    .line 4965
    :cond_0
    const v1, 0x7f0b0012

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 4971
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;I)V

    .line 4972
    return-void
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 6
    .parameter "text"
    .parameter "duration"

    .prologue
    const/16 v5, 0x8a

    .line 4975
    if-nez p1, :cond_0

    .line 4989
    :goto_0
    return-void

    .line 4978
    :cond_0
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 4982
    const v2, 0x7f0d009d

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/Camera/widget/RotateLayout;

    .line 4983
    .local v1, v:Lcom/motorola/Camera/widget/RotateLayout;
    const v2, 0x7f0d009e

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4984
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4985
    const/16 v2, 0x10e

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/RotateLayout;->setOrientation(I)V

    .line 4986
    const v2, 0x7f04000d

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4987
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/RotateLayout;->setVisibility(I)V

    .line 4988
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private showUIAfterPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 530
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->rightSetFadeIn()V

    .line 532
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->setCaptureResourceClickable(Z)V

    .line 533
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    sget v1, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->setZoomBarMax(I)V

    .line 535
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showZoomControlSet()V

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideZoomControlSet(Z)V

    goto :goto_0
.end method

.method private startAutoTimer()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v2, 0x3f80

    const/4 v4, 0x0

    .line 2926
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/motorola/Camera/Camera;->autoTimerSoundId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2927
    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    .line 2928
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060002

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/Camera;->autoTimerSoundId:I

    .line 2930
    :cond_1
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    const/16 v0, 0xa

    if-ge v7, v0, :cond_2

    .line 2931
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->ResAutoTimerDigitImg:[I

    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070033

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    const-string v5, "drawable"

    const-string v6, "com.motorola.Camera"

    invoke-virtual {v1, v3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v7

    .line 2930
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2934
    :cond_2
    const/16 v0, 0x8

    iput v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    .line 2935
    iput v8, p0, Lcom/motorola/Camera/Camera;->mAutoTimerCount:I

    .line 2936
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x50

    const-wide/16 v5, 0x3e8

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2937
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideCaptureCluster()V

    .line 2938
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mAutotimerCountImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->ResAutoTimerDigitImg:[I

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAutoTimer()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2939
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mAutotimerCountImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2941
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterToneOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2942
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/motorola/Camera/Camera;->autoTimerSoundId:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 2944
    :cond_3
    return-void
.end method

.method private startDevice()V
    .locals 2

    .prologue
    .line 401
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/motorola/Camera/Camera;->startDevice(ZZ)V

    .line 402
    return-void
.end method

.method private startDevice(Z)V
    .locals 1
    .parameter "setParams"

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/Camera/Camera;->startDevice(ZZ)V

    .line 406
    return-void
.end method

.method private startDevice(ZZ)V
    .locals 2
    .parameter "setParams"
    .parameter "resetZoom"

    .prologue
    .line 409
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraKPI"

    const-string v1, "startDevice enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    if-eqz p1, :cond_4

    .line 411
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->openCamera()V

    .line 412
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraKPI"

    const-string v1, "startDevice camera opened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_3

    .line 421
    :cond_2
    :goto_0
    return-void

    .line 414
    :cond_3
    invoke-direct {p0, p2}, Lcom/motorola/Camera/Camera;->setupDevice(Z)V

    .line 415
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCameraKPI"

    const-string v1, "startDevice device setup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_4
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->startPreview()V

    .line 418
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_5

    const-string v0, "MotoCameraKPI"

    const-string v1, "startDevice preview started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_5
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->showUIAfterPreview()V

    .line 420
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCameraKPI"

    const-string v1, "startDevice UI shown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startPreview()V
    .locals 3

    .prologue
    .line 500
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    const-string v2, "startPreview() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCameraKPI"

    const-string v2, "startPreview enter "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_6

    .line 506
    :try_start_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 507
    const-string v1, "MotoCamera"

    const-string v2, "startPreview() - calling mCameraDevice.startPreview()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 510
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "MotoCameraKPI"

    const-string v2, "startPreview done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    .line 512
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    const-string v1, "MotoCamera"

    const-string v2, "startPreview() - mCameraDevice start preview done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_4
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v1}, Lcom/motorola/Camera/FocusManager;->onPreviewStarted()V

    .line 515
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v1}, Lcom/motorola/Camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v1}, Lcom/motorola/Camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "continuous-picture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 517
    :cond_5
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->cancelAutoFocus()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    :cond_6
    :goto_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_7

    const-string v1, "MotoCamera"

    const-string v2, "startPreview() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_7
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "MotoCamera"

    const-string v2, "startPreview() - failed to start preview"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    .line 523
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x38

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private startShutterAnim()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1531
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isMultishotMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1542
    :cond_0
    :goto_0
    return-void

    .line 1532
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->bGLSurfaceViewPlaying:Z

    if-nez v0, :cond_0

    .line 1533
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setZOrderOnTop(Z)V

    .line 1534
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 1535
    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->bGLSurfaceViewPlaying:Z

    .line 1536
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mRender:Lcom/motorola/Camera/View/CameraShutterRender;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/CameraShutterRender;->SetRunning(Z)V

    .line 1538
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 1539
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 1540
    const-string v0, "MotoCamera"

    const-string v1, "startShutterAnim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopPanoramaCapture()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2686
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    const-string v2, "stopPanoramaCapture() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1, v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->updatePanoramaCaptureStatus(Z)V

    .line 2689
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopPreview()V

    .line 2690
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->disableUIAfterStopPreview()V

    .line 2692
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mPausing:Z

    if-nez v1, :cond_2

    .line 2694
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamera"

    const-string v2, "start timeout timer for PANORAMA_PICTURE_CALLBACK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2700
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    if-eqz v1, :cond_3

    .line 2701
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    invoke-virtual {v1}, Lcom/motorola/android/camera/Panorama;->stopCapture()V

    .line 2703
    :cond_3
    iget v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I

    iput v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I

    .line 2704
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->reset()V

    .line 2705
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->setVisibility(I)V

    .line 2706
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1, v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideControllerPanel(Z)V

    .line 2707
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1, v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->changeCaptureResource(I)V

    .line 2708
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mPausing:Z

    if-nez v1, :cond_5

    .line 2710
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    .line 2711
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2717
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2718
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2719
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2720
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2723
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsStitching:Z

    .line 2725
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_6

    const-string v1, "MotoCamera"

    const-string v2, "stopPanoramaCapture() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    :cond_6
    return-void

    .line 2712
    :catch_0
    move-exception v0

    .line 2713
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/Camera/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;

    .line 2714
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method private stopPreview()V
    .locals 2

    .prologue
    .line 2177
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "stopPreview() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_2

    .line 2180
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 2181
    const-string v0, "MotoCamera"

    const-string v1, "stopPreview() - we are previewing and need to stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 2186
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    .line 2187
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCamera"

    const-string v1, "stopPreview() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    :cond_3
    return-void
.end method

.method private stopShutterAnim()V
    .locals 2

    .prologue
    .line 1545
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isMultishotMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1553
    :cond_0
    :goto_0
    return-void

    .line 1546
    :cond_1
    const-string v0, "MotoCamera"

    const-string v1, "w20919 stopShutterAnim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 1548
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 1549
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 1550
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/Camera;->bGLSurfaceViewPlaying:Z

    .line 1551
    const-string v0, "MotoCamera"

    const-string v1, "w20919 openGL pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private toggleCamera()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3652
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsFocusing:Z

    .line 3654
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v2

    .line 3655
    const/4 v3, 0x0

    :try_start_0
    iput v3, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    .line 3657
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopPreview()V

    .line 3658
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->disableUIAfterStopPreview()V

    .line 3660
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 3661
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3662
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->cancelPanoramaCapture()V

    .line 3666
    :cond_0
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/motorola/Camera/Camera;->disableCurrentMode(I)V

    .line 3667
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 3669
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideHandshake(ZZ)V

    .line 3670
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->closeCamera()V

    .line 3673
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->toggleCamSetting()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3674
    monitor-exit v2

    .line 3704
    :goto_0
    return-void

    .line 3676
    :cond_1
    iget-boolean v3, p0, Lcom/motorola/Camera/Camera;->mStartSensorFront:Z

    if-nez v3, :cond_4

    :goto_1
    iput-boolean v0, p0, Lcom/motorola/Camera/Camera;->mStartSensorFront:Z

    .line 3677
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCamera"

    const-string v1, "Camera settings toggled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3679
    :cond_2
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->startDevice()V

    .line 3681
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_5

    .line 3682
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCamera"

    const-string v1, "toggleCamera() - startPreview failed, just return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3683
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3684
    monitor-exit v2

    goto :goto_0

    .line 3702
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v0, v1

    .line 3676
    goto :goto_1

    .line 3688
    :cond_5
    :try_start_1
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->setupFocusViews()V

    .line 3690
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mDidRegister:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->installIntentFilter()V

    .line 3692
    :cond_6
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->checkStorage()V

    .line 3693
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    sget v1, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->setZoomBarMax(I)V

    .line 3694
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 3695
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showRightSet()V

    .line 3696
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showTopStatusSet()V

    .line 3697
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 3698
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->setDialogStatus(I)V

    .line 3699
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateSwitchCameraUI(Z)V

    .line 3701
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    .line 3702
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private updateFocusIndicator()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v4, 0x1

    .line 2844
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "updateFocusIndicator() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isDynamicFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2848
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2849
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v1, "updateFocusIndicator() - DYNAMIC_REGION_FOCUS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    if-nez v0, :cond_3

    .line 2851
    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDrawFocusView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    :cond_2
    :goto_0
    return-void

    .line 2854
    :cond_3
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-gt v0, v4, :cond_4

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInfiniteFocus()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    if-ne v0, v4, :cond_6

    .line 2857
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0, v5}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 2903
    :cond_5
    :goto_1
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCamera"

    const-string v1, "updateFocusIndicator() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2859
    :cond_6
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_7

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in updateFocusIndicator, mDrawFocusView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    :cond_7
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_8

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in updateFocusIndicator, mIsFocused = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/Camera;->mIsFocused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " focusViewSelected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/Camera;->focusViewSelected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    :cond_8
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_9

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in updateFocusIndicator, mIsFocusFail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/Camera;->mIsFocusFail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    :cond_9
    iget v0, p0, Lcom/motorola/Camera/Camera;->mFocusValue:I

    if-eq v0, v4, :cond_a

    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mIsFocusButtonPressed:Z

    if-eqz v0, :cond_5

    .line 2864
    :cond_a
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 2865
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsFocused:Z

    iget-boolean v2, p0, Lcom/motorola/Camera/Camera;->focusViewSelected:Z

    iget-boolean v3, p0, Lcom/motorola/Camera/Camera;->mIsFocusFail:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/Camera/View/FocusView;->updateFocusArea(ZZZ)Z

    goto/16 :goto_1

    .line 2869
    :cond_b
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isAutoFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2871
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 2872
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v1

    .line 2873
    :try_start_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_c

    .line 2874
    const-string v0, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFocusIndicator() - AUTOFOCUS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsFocused: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/Camera/Camera;->mIsFocused:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    :cond_c
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    if-nez v0, :cond_d

    .line 2876
    const-string v0, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFocusView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    monitor-exit v1

    goto/16 :goto_0

    .line 2896
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2880
    :cond_d
    :try_start_1
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-gt v0, v4, :cond_e

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInfiniteFocus()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    if-ne v0, v4, :cond_f

    .line 2883
    :cond_e
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2896
    :goto_2
    monitor-exit v1

    goto/16 :goto_1

    .line 2885
    :cond_f
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mIsFocused:Z

    if-eqz v0, :cond_11

    .line 2886
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusd:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_10

    .line 2887
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02004d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusd:Landroid/graphics/drawable/Drawable;

    .line 2888
    :cond_10
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mFocusd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2894
    :goto_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 2890
    :cond_11
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocus:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_12

    .line 2891
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020050

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mFocus:Landroid/graphics/drawable/Drawable;

    .line 2892
    :cond_12
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mFocus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 2899
    :cond_13
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_14

    const-string v0, "MotoCamera"

    const-string v1, "updateFocusIndicator() - FIXED FOCUS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    :cond_14
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2901
    :cond_15
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private updatePicInUi()V
    .locals 5

    .prologue
    .line 5538
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 5539
    const-string v1, "MotoCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPicsStill - thumb is null - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5540
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;

    invoke-virtual {v2}, Lcom/motorola/Camera/View/CameraView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/CameraView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/CameraView;->getLeft()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->showPicsStill(Landroid/graphics/Bitmap;III)V

    .line 5542
    return-void

    .line 5539
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateRemainCount()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 6744
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamera"

    const-string v3, "updateRemainCount() - Enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6745
    :cond_0
    iput-boolean v4, p0, Lcom/motorola/Camera/Camera;->mNeedCheckStorage:Z

    .line 6746
    const/4 v0, 0x0

    .line 6747
    .local v0, errorMessage:Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v3

    .line 6750
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 6751
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentPanResDimension()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/motorola/Camera/CameraGlobalTools;->calculatePicturesRemaining(Ljava/lang/String;Z)I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    .line 6755
    :goto_0
    sget-boolean v2, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    if-eqz v2, :cond_1d

    .line 6757
    const/4 v2, 0x4

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    .line 6759
    iget-boolean v2, p0, Lcom/motorola/Camera/Camera;->mIsInternalSD:Z

    if-eqz v2, :cond_11

    .line 6760
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentSingleShotRes()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/motorola/Camera/CameraGlobalTools;->calculatePicturesRemaining(Ljava/lang/String;Z)I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    .line 6761
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRemainCount internalPicturesRemaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6762
    :cond_1
    iget v2, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    iput v2, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    .line 6763
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentSingleShotRes()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/motorola/Camera/CameraGlobalTools;->calculatePicturesRemaining(Ljava/lang/String;Z)I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    .line 6764
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_2

    const-string v2, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRemainCount externalPicturesRemaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6766
    :cond_2
    iget v2, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    if-eq v2, v7, :cond_3

    iget v2, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    if-ge v2, v6, :cond_a

    .line 6767
    :cond_3
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->setStorageState(I)V

    .line 6771
    :goto_1
    iget v2, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    if-ne v2, v7, :cond_d

    .line 6773
    iget v2, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    if-ne v2, v7, :cond_b

    .line 6774
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0126

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6775
    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    .line 6776
    const/4 v2, -0x1

    iput v2, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    .line 6804
    :cond_4
    :goto_2
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_5

    const-string v2, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRemainCount() errorCase ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6858
    :cond_5
    :goto_3
    iget v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    packed-switch v2, :pswitch_data_0

    .line 6871
    :goto_4
    if-eqz v0, :cond_6

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V

    .line 6872
    :cond_6
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mNeedCheckStorage:Z

    .line 6884
    :cond_7
    :goto_5
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6886
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_8

    const-string v2, "MotoCamera"

    const-string v3, "updateRemainCount() - Exit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6887
    :cond_8
    return-void

    .line 6753
    :cond_9
    :try_start_1
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentSingleShotRes()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/motorola/Camera/CameraGlobalTools;->calculatePicturesRemaining(Ljava/lang/String;Z)I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    goto/16 :goto_0

    .line 6884
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 6769
    :cond_a
    const/4 v2, 0x4

    :try_start_2
    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->setStorageState(I)V

    goto :goto_1

    .line 6777
    :cond_b
    iget v2, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    if-ge v2, v6, :cond_c

    .line 6779
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0125

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6780
    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    goto :goto_2

    .line 6783
    :cond_c
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0124

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6784
    const/4 v2, 0x2

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    goto :goto_2

    .line 6787
    :cond_d
    iget v2, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    if-ge v2, v6, :cond_4

    .line 6789
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_e

    const-string v2, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRemainCount externalPicturesRemaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6791
    :cond_e
    iget v2, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    if-ne v2, v7, :cond_f

    .line 6792
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0128

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6793
    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    goto/16 :goto_2

    .line 6794
    :cond_f
    iget v2, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    if-ge v2, v6, :cond_10

    .line 6796
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0125

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6797
    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    goto/16 :goto_2

    .line 6800
    :cond_10
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0124

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6801
    const/4 v2, 0x2

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    goto/16 :goto_2

    .line 6807
    :cond_11
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentSingleShotRes()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/motorola/Camera/CameraGlobalTools;->calculatePicturesRemaining(Ljava/lang/String;Z)I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    .line 6808
    iget v2, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    iput v2, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    .line 6809
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentSingleShotRes()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/motorola/Camera/CameraGlobalTools;->calculatePicturesRemaining(Ljava/lang/String;Z)I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    .line 6810
    iget v2, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    if-eq v2, v7, :cond_12

    iget v2, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    if-ge v2, v6, :cond_16

    .line 6812
    :cond_12
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->setStorageState(I)V

    .line 6819
    :goto_6
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_13

    const-string v2, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "external externalPicturesRemaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6820
    :cond_13
    iget v2, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    if-ne v2, v7, :cond_19

    .line 6822
    iget v2, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    if-ne v2, v7, :cond_17

    .line 6823
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0126

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6824
    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    .line 6825
    const/4 v2, -0x1

    iput v2, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    .line 6854
    :cond_14
    :goto_7
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_15

    const-string v2, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRemainCount() internalPicturesRemaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6855
    :cond_15
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_5

    const-string v2, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRemainCount() errorCase ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 6816
    :cond_16
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->setStorageState(I)V

    goto :goto_6

    .line 6826
    :cond_17
    iget v2, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    if-ge v2, v6, :cond_18

    .line 6828
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0128

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6829
    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    goto :goto_7

    .line 6832
    :cond_18
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0127

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6833
    const/4 v2, 0x1

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    goto :goto_7

    .line 6836
    :cond_19
    iget v2, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    if-ge v2, v6, :cond_14

    .line 6838
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1a

    const-string v2, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRemainCount() internalPicturesRemaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6840
    :cond_1a
    iget v2, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    if-ne v2, v7, :cond_1b

    .line 6841
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0125

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6842
    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    goto/16 :goto_7

    .line 6843
    :cond_1b
    iget v2, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    if-ge v2, v6, :cond_1c

    .line 6845
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0125

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6846
    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    goto/16 :goto_7

    .line 6849
    :cond_1c
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0123

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6850
    const/4 v2, 0x1

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    goto/16 :goto_7

    .line 6860
    :pswitch_0
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentStorageLocation(I)V

    .line 6861
    iget v2, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    iput v2, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    .line 6862
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mIsInternalSD:Z

    goto/16 :goto_4

    .line 6865
    :pswitch_1
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentStorageLocation(I)V

    .line 6866
    iget v2, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    iput v2, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    .line 6867
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mIsInternalSD:Z

    goto/16 :goto_4

    .line 6876
    :cond_1d
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 6877
    .local v1, state:Ljava/lang/String;
    iget v2, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    if-ne v2, v7, :cond_1e

    const-string v2, "bad_removal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1e
    iget v2, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    if-ge v2, v6, :cond_7

    .line 6880
    :cond_1f
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->showStorageToast()V

    .line 6881
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mNeedCheckStorage:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .line 6858
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateScenesEffects()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x7

    .line 3728
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 3729
    const-string v1, "MotoCamera"

    const-string v2, "updateScenesEffects() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    :cond_0
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v2

    .line 3734
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 3735
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "mot-image-stabilization-mode"

    const-string v4, "on"

    invoke-virtual {v1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3740
    :goto_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3743
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3746
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v0

    .line 3747
    .local v0, sceneMode:I
    sget-object v1, Lcom/motorola/Camera/CameraGlobalType;->sceneSetting:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3748
    if-ne v0, v6, :cond_6

    .line 3749
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "auto"

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 3750
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "macro"

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 3758
    :cond_1
    :goto_1
    const-string v1, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScenesEffects focusmode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3759
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3761
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3763
    const-string v1, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScenesEffects focusmode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3765
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->setFocusModeParameters()V

    .line 3767
    const-string v1, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScenesEffects focusmode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3768
    const-string v1, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScenesEffects flashmode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3770
    if-eq v0, v6, :cond_2

    if-ne v0, v5, :cond_8

    .line 3772
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "off"

    invoke-virtual {v1, v3, v4}, Lcom/motorola/Camera/CameraUtility;->setFlash(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 3780
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->updateEffects()V

    .line 3782
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3785
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3787
    const-string v1, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScenesEffects flashmode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3789
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "auto"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3790
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mMotoEnvCallback:Lcom/motorola/Camera/Camera$MotoEnvCallback;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setEnvDetectCallback(Landroid/hardware/Camera$EnvDetectCallback;)V

    .line 3797
    :goto_3
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v3}, Lcom/motorola/Camera/FocusManager;->setFocusParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3799
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3800
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    const-string v1, "MotoCamera"

    const-string v2, "updateScenesEffects() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3801
    :cond_4
    return-void

    .line 3737
    .end local v0           #sceneMode:I
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "mot-image-stabilization-mode"

    const-string v4, "off"

    invoke-virtual {v1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3799
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3751
    .restart local v0       #sceneMode:I
    :cond_6
    if-ne v0, v5, :cond_7

    .line 3752
    :try_start_2
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "auto"

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3754
    :cond_7
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v3, Lcom/motorola/Camera/CameraGlobalType;->sceneSetting:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3773
    :cond_8
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 3777
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v3}, Lcom/motorola/Camera/CameraUtility;->setFlash(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_2

    .line 3792
    :cond_9
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setEnvDetectCallback(Landroid/hardware/Camera$EnvDetectCallback;)V

    .line 3793
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideHandshake(ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private zoomTo(I)V
    .locals 2
    .parameter "zoom"

    .prologue
    .line 6891
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6893
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->smoothZoomSupported:Z

    if-eqz v0, :cond_2

    .line 6895
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 6914
    :cond_0
    :goto_0
    return-void

    .line 6900
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 6901
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    goto :goto_0

    .line 6905
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6910
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 6911
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method


# virtual methods
.method public autoFocus()Z
    .locals 4

    .prologue
    .line 2766
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoFocus() - Enter  mIsFocusing is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/Camera;->mIsFocusing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraKPI"

    const-string v1, "autoFocus enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_4

    .line 2770
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mAutoFocusCallback:Lcom/motorola/Camera/Camera$MotoCameraAutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 2772
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2782
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCamera"

    const-string v1, "autoFocus() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    :cond_2
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCameraKPI"

    const-string v1, "autoFocus exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 2778
    :cond_4
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_5

    const-string v0, "MotoCamera"

    const-string v1, "autoFocus() - Invalid camera!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelAutoFocus()Z
    .locals 2

    .prologue
    .line 2794
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2795
    const-string v0, "MotoCamera"

    const-string v1, "cancelAutoFocus() Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraKPI"

    const-string v1, "cancelAutoFocus enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_3

    .line 2799
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCamera"

    const-string v1, "Camera Device clearFocus start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 2801
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCamera"

    const-string v1, "Camera Device clearFocus done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2805
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCameraKPI"

    const-string v1, "clearFocus exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public capture()Z
    .locals 1

    .prologue
    .line 2789
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    invoke-virtual {v0}, Lcom/motorola/Camera/Camera$ImageCapture;->onSnap()V

    .line 2790
    const/4 v0, 0x1

    return v0
.end method

.method public interruptThumbnailThread()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6957
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    if-eqz v0, :cond_3

    .line 6959
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    monitor-enter v1

    .line 6960
    :try_start_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 6961
    const-string v0, "MotoCamera"

    const-string v2, "interruptThumbnailThread"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6963
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x48

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6964
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6965
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6966
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6971
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    invoke-virtual {v0}, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6972
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    invoke-virtual {v0}, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6977
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6978
    iput-object v3, p0, Lcom/motorola/Camera/Camera;->updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    .line 6980
    :cond_3
    return-void

    .line 6977
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 6974
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isPostCaptureAnimationEnabled()Z
    .locals 5

    .prologue
    .line 5807
    const/4 v1, 0x1

    .line 5809
    .local v1, enabled:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5814
    :goto_0
    return v1

    .line 5810
    :catch_0
    move-exception v0

    .line 5811
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPotCaptureAnimationEnabled() - resource not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5812
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 5931
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentAppMode(Landroid/content/Context;I)V

    .line 5933
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    .line 5934
    const-string v4, "MotoCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActivityResult() - Enter.  requestCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : resultCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5937
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 5962
    :goto_0
    return-void

    .line 5939
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 5940
    .local v2, intent:Landroid/content/Intent;
    if-eqz p3, :cond_1

    .line 5941
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 5942
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 5943
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5946
    .end local v1           #extras:Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p0, p2, v2}, Lcom/motorola/Camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 5948
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->finish()V

    .line 5950
    const-string v4, "crop-temp"

    invoke-virtual {p0, v4}, Lcom/motorola/Camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 5953
    .local v3, path:Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5955
    :catch_0
    move-exception v0

    .line 5957
    .local v0, e:Ljava/lang/SecurityException;
    const-string v4, "MotoCamera"

    const-string v5, "Security exception deleting file!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5937
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/16 v2, 0x8

    .line 6681
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mStoreThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mStoreThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6683
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mStoreThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6687
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 6705
    :goto_1
    return-void

    .line 6684
    :catch_0
    move-exception v0

    .line 6685
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 6689
    .end local v0           #e:Ljava/lang/InterruptedException;
    :pswitch_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->selectPhoto()Z

    goto :goto_1

    .line 6693
    :pswitch_1
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6694
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->removePicsStill()V

    .line 6695
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/CameraView;->setVisibility(I)V

    .line 6696
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 6700
    :pswitch_2
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6701
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->cancelPhoto()Z

    .line 6702
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->removePicsStill()V

    goto :goto_1

    .line 6687
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d004b
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/16 v5, 0x2c

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 2069
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0, p0, v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentAppMode(Landroid/content/Context;I)V

    .line 2071
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() - hardKeyboardHidden is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() - Keyboard is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    :cond_1
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() - orientation is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v0, :cond_6

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v3, :cond_6

    sget-boolean v0, Lcom/motorola/Camera/Camera;->mIsRotator:Z

    if-eqz v0, :cond_6

    .line 2078
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2079
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I

    iget v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I

    if-ge v0, v1, :cond_3

    .line 2085
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2087
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopPanoramaCapture()V

    .line 2105
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->setOrientation(I)V

    .line 2106
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2108
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isWebtopMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2109
    const v0, 0x7f0b0151

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2110
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->finish()V

    .line 2112
    :cond_5
    return-void

    .line 2091
    :cond_6
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2092
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I

    iget v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I

    if-ge v0, v1, :cond_3

    .line 2098
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2100
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopPanoramaCapture()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 1094
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1096
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_0

    const-string v11, "MotoCamera"

    const-string v12, "onCreate() - Enter"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_0
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_1

    const-string v11, "MotoCameraKPI"

    const-string v12, "onCreate enter"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_1
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isWebtopMode()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1100
    const v11, 0x7f0b0151

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 1101
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->finish()V

    .line 1304
    :cond_2
    :goto_0
    return-void

    .line 1105
    :cond_3
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camera;->setRequestedOrientation(I)V

    .line 1108
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lcom/motorola/Camera/Camera$1;

    invoke-direct {v11, p0}, Lcom/motorola/Camera/Camera$1;-><init>(Lcom/motorola/Camera/Camera;)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1115
    .local v10, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 1117
    .local v6, intent:Landroid/content/Intent;
    if-eqz v6, :cond_4

    .line 1118
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1119
    .local v0, data:Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 1120
    const-string v11, "CameraSensor"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1122
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/motorola/Camera/Camera;->mStartSensorFront:Z

    .line 1127
    .end local v0           #data:Landroid/os/Bundle;
    :cond_4
    const-string v11, "keyguard"

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/KeyguardManager;

    .line 1128
    .local v7, mKeyGuard:Landroid/app/KeyguardManager;
    invoke-virtual {v7}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1130
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_5

    .line 1131
    const-string v11, "MotoCamera"

    const-string v12, "Device is locked"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_5
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/motorola/Camera/Camera;->mIsSecurelyLockedModeImageCaptureIntent:Z

    .line 1136
    :cond_6
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_7

    const-string v11, "MotoCameraKPI"

    const-string v12, "onCreate keyguard setup"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_7
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camera;->requestWindowFeature(I)Z

    .line 1138
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x400

    invoke-virtual {v11, v12}, Landroid/view/Window;->addFlags(I)V

    .line 1140
    new-instance v11, Lcom/motorola/Camera/FocusManager;

    invoke-direct {v11}, Lcom/motorola/Camera/FocusManager;-><init>()V

    iput-object v11, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    .line 1142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/motorola/Camera/Camera;->mKpiStartTimer:J

    .line 1145
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    check-cast v11, Lcom/motorola/Camera/Camera$MainHandler;

    invoke-virtual {v11, p0}, Lcom/motorola/Camera/Camera$MainHandler;->setActivityReference(Landroid/app/Activity;)V

    .line 1149
    invoke-static {p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v11

    iput-object v11, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 1154
    iput-object p0, p0, Lcom/motorola/Camera/Camera;->mCameraActivityContext:Landroid/content/Context;

    .line 1155
    iput-object p0, p0, Lcom/motorola/Camera/Camera;->mCameraClass:Lcom/motorola/Camera/Camera;

    .line 1156
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f08001c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/motorola/Camera/Camera;->mIsStoreXmpMetaData:Z

    .line 1159
    iget-object v12, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v12

    .line 1162
    :try_start_0
    iget-boolean v11, p0, Lcom/motorola/Camera/Camera;->mStartSensorFront:Z

    if-eqz v11, :cond_14

    .line 1163
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSpecificCamSetting(I)Z

    .line 1168
    :goto_1
    const v11, 0x7f030020

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camera;->setContentView(I)V

    .line 1169
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_8

    const-string v11, "MotoCameraKPI"

    const-string v13, "onCreate content view set"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    :cond_8
    const v11, 0x7f0d0040

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/motorola/Camera/View/CameraView;

    iput-object v11, p0, Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;

    .line 1175
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;

    invoke-virtual {v11}, Lcom/motorola/Camera/View/CameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    .line 1176
    .local v4, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v4, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1178
    invoke-static {p0}, Lcom/motorola/Camera/CameraUtility;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CameraUtility;

    move-result-object v11

    iput-object v11, p0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    .line 1179
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_9

    const-string v11, "MotoCameraKPI"

    const-string v13, "onCreate cam utility created"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_9
    const-string v11, "audio"

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioManager;

    iput-object v11, p0, Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;

    .line 1184
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isImageCaptureIntent()Z

    move-result v11

    iput-boolean v11, p0, Lcom/motorola/Camera/Camera;->mIsImageCaptureIntent:Z

    .line 1185
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_a

    const-string v11, "MotoCameraKPI"

    const-string v13, "onCreate checked capture intent"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_a
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-boolean v13, p0, Lcom/motorola/Camera/Camera;->mIsSecurelyLockedModeImageCaptureIntent:Z

    invoke-virtual {v11, v13}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSecurelyLockedMode(Z)V

    .line 1189
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-object v13, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v13}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setHandler(Landroid/os/Handler;)V

    .line 1192
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v13, 0x0

    invoke-virtual {v11, p0, v13}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentAppMode(Landroid/content/Context;I)V

    .line 1194
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-boolean v13, p0, Lcom/motorola/Camera/Camera;->mIsImageCaptureIntent:Z

    invoke-virtual {v11, v13}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setServiceMode(Z)V

    .line 1196
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_b

    const-string v11, "MotoCameraKPI"

    const-string v13, "onCreate registered receivers"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_b
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1201
    .local v3, extras:Landroid/os/Bundle;
    if-eqz v3, :cond_15

    .line 1202
    const-string v11, "Mode"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1203
    .local v9, mode:I
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v11, v9}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 1207
    .end local v9           #mode:I
    :goto_2
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_c

    const-string v11, "MotoCameraKPI"

    const-string v13, "onCreate aquired extras"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_c
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1212
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_d

    const-string v11, "MotoCameraKPI"

    const-string v12, "onCreate start preview thread"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :cond_d
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 1216
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 1219
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v11, 0x7f0d003f

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/motorola/Camera/View/CameraContentView;

    iput-object v11, p0, Lcom/motorola/Camera/Camera;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    .line 1220
    iget-object v8, p0, Lcom/motorola/Camera/Camera;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    .line 1222
    .local v8, main:Lcom/motorola/Camera/View/CameraContentView;
    const v11, 0x7f03001f

    invoke-virtual {v5, v11, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .end local v8           #main:Lcom/motorola/Camera/View/CameraContentView;
    check-cast v8, Lcom/motorola/Camera/View/CameraContentView;

    .line 1223
    .restart local v8       #main:Lcom/motorola/Camera/View/CameraContentView;
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_e

    const-string v11, "MotoCameraKPI"

    const-string v12, "onCreate main view inflated"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_e
    const v11, 0x7f03000f

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    iput-object v11, p0, Lcom/motorola/Camera/Camera;->mTimerContainer:Landroid/widget/RelativeLayout;

    .line 1227
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    iget-object v12, p0, Lcom/motorola/Camera/Camera;->mTimerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v11, v12}, Lcom/motorola/Camera/View/CameraContentView;->addView(Landroid/view/View;)V

    .line 1228
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mTimerContainer:Landroid/widget/RelativeLayout;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1231
    const v11, 0x7f0d0026

    invoke-virtual {v8, v11}, Lcom/motorola/Camera/View/CameraContentView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    iput-object v11, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    .line 1232
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v11, p0}, Lcom/motorola/Camera/View/Control/OnScreenController;->setActivity(Landroid/app/Activity;)V

    .line 1237
    :try_start_1
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget-object v12, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    iget-object v13, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v11, v12, v13}, Lcom/motorola/Camera/View/Control/OnScreenController;->setParams(Landroid/os/Handler;Lcom/motorola/Camera/FocusManager;)V

    .line 1238
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 1239
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    sget v12, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-virtual {v11, v12}, Lcom/motorola/Camera/View/Control/OnScreenController;->setZoomBarMax(I)V

    .line 1241
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v11

    if-nez v11, :cond_16

    .line 1242
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v11}, Lcom/motorola/Camera/View/Control/OnScreenController;->showZoomControlSet()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1261
    :goto_3
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_f

    const-string v11, "MotoCameraKPI"

    const-string v12, "onCreate setup for autotimer"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_f
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_10

    const-string v11, "MotoCameraKPI"

    const-string v12, "onCreate waiting for startPreview thread"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_10
    :try_start_2
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_11

    const-string v11, "MotoCamera"

    const-string v12, "onCreate() - joining startPreviewThread"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :cond_11
    invoke-virtual {v10}, Ljava/lang/Thread;->join()V

    .line 1269
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_12

    const-string v11, "MotoCameraKPI"

    const-string v12, "onCreate startpreview thread returned"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1276
    :cond_12
    :goto_4
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v11, :cond_18

    .line 1278
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_13

    const-string v11, "MotoCamera"

    const-string v12, "onCreate() - startPreview failed, just return"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_13
    iget-boolean v11, p0, Lcom/motorola/Camera/Camera;->mDeviceDisabled:Z

    if-eqz v11, :cond_17

    .line 1280
    const v11, 0x7f0b0099

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;I)V

    .line 1285
    :goto_5
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->finish()V

    goto/16 :goto_0

    .line 1165
    .end local v3           #extras:Landroid/os/Bundle;
    .end local v4           #holder:Landroid/view/SurfaceHolder;
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .end local v8           #main:Lcom/motorola/Camera/View/CameraContentView;
    :cond_14
    :try_start_3
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSpecificCamSetting(I)Z

    goto/16 :goto_1

    .line 1208
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v11

    .line 1205
    .restart local v3       #extras:Landroid/os/Bundle;
    .restart local v4       #holder:Landroid/view/SurfaceHolder;
    :cond_15
    :try_start_4
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 1245
    .restart local v5       #inflater:Landroid/view/LayoutInflater;
    .restart local v8       #main:Lcom/motorola/Camera/View/CameraContentView;
    :cond_16
    :try_start_5
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideZoomControlSet(Z)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 1247
    :catch_0
    move-exception v1

    .line 1248
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v11, "MotoCamera"

    const-string v12, "onCreate() - InflateException!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1250
    const v11, 0x7f0b0094

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V

    .line 1252
    :try_start_6
    invoke-virtual {v10}, Ljava/lang/Thread;->join()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1256
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->finish()V

    goto/16 :goto_0

    .line 1254
    :catch_1
    move-exception v11

    .line 1256
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->finish()V

    goto/16 :goto_0

    :catchall_1
    move-exception v11

    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->finish()V

    goto/16 :goto_0

    .line 1271
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 1273
    .local v2, exception:Ljava/lang/InterruptedException;
    const-string v11, "MotoCamera"

    const-string v12, "onCreate() - failed to join startPreviewThread"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1282
    .end local v2           #exception:Ljava/lang/InterruptedException;
    :cond_17
    const v11, 0x7f0b0095

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V

    goto :goto_5

    .line 1290
    :cond_18
    const/4 v11, 0x1

    iput v11, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    .line 1291
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_19

    const-string v11, "MotoCameraKPI"

    const-string v12, "onCreate going idle"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :cond_19
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v11}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 1296
    const/4 v11, -0x1

    iput v11, p0, Lcom/motorola/Camera/Camera;->autoTimerSoundId:I

    .line 1297
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_1a

    const-string v11, "MotoCameraKPI"

    const-string v12, "onCreate updateController finished"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :cond_1a
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_1b

    const-string v11, "MotoCameraKPI"

    const-string v12, "onCreate for reset zoom default"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_1b
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_1c

    const-string v11, "MotoCamera"

    const-string v12, "onCreate() - Exit"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    :cond_1c
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_2

    const-string v11, "MotoCameraKPI"

    const-string v12, "onCreate exit"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 7043
    if-nez p1, :cond_0

    .line 7044
    new-instance v0, Lcom/motorola/Camera/Camera$CameraDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/motorola/Camera/Camera$CameraDialog;-><init>(Lcom/motorola/Camera/Camera;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mAutoTimerDialog:Lcom/motorola/Camera/Camera$CameraDialog;

    .line 7045
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mAutoTimerDialog:Lcom/motorola/Camera/Camera$CameraDialog;

    .line 7048
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 388
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1952
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "onDestroy() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraKPI"

    const-string v1, "onDestroy enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    if-eqz v0, :cond_2

    .line 1957
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    invoke-virtual {v0}, Lcom/motorola/Camera/LocUtility;->stopReceivingLocationUpdates()V

    .line 1958
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    invoke-virtual {v0}, Lcom/motorola/Camera/LocUtility;->destroy()V

    .line 1959
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    .line 1962
    :cond_2
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;

    .line 1964
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_3

    .line 1965
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1966
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 1969
    :cond_3
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mIsStitching:Z

    if-eqz v0, :cond_5

    .line 1970
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCamera"

    const-string v1, "onStop() - Panorama Still stitching; Cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1972
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->cancelPanoramaCapture()V

    .line 1975
    :cond_5
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_6

    .line 1976
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/motorola/Camera/Camera;->autoTimerSoundId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 1977
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1978
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    .line 1981
    :cond_6
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mStorageLocationAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 1982
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mStorageLocationAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1983
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mStorageLocationAlert:Landroid/app/AlertDialog;

    .line 1986
    :cond_7
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_8

    const-string v0, "MotoCameraKPI"

    const-string v1, "onDestroy before close camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    :cond_8
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->closeCamera()V

    .line 1988
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_9

    const-string v0, "MotoCameraKPI"

    const-string v1, "onDestroy after close camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    :cond_9
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0, p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->resetContext(Landroid/content/Context;)V

    .line 1992
    :cond_a
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 1994
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    if-eqz v0, :cond_b

    .line 1995
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    invoke-virtual {v0}, Lcom/motorola/Camera/CameraUtility;->destroy()V

    .line 1996
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    .line 1999
    :cond_b
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    .line 2000
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    .line 2002
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_c

    const-string v0, "MotoCamera"

    const-string v1, "onDestroy() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2004
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_d

    const-string v0, "MotoCameraKPI"

    const-string v1, "onDestroy exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    :cond_d
    return-void
.end method

.method public onDialogCreate()V
    .locals 2

    .prologue
    .line 2017
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2018
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2019
    const-string v0, "MotoCamera"

    const-string v1, "onDialogCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/Camera;->mMenuOpened:Z

    .line 2023
    return-void
.end method

.method public onDialogDismiss()V
    .locals 2

    .prologue
    .line 2008
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2009
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2010
    const-string v0, "MotoCamera"

    const-string v1, "onDialogDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/Camera;->mMenuOpened:Z

    .line 2014
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/16 v5, 0x8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6279
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown() - Enter keyCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isFinshing(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->isFinishing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mstatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6281
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6500
    :goto_0
    return v0

    .line 6284
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 6285
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 6288
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 6291
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v2, :cond_2

    .line 6292
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 6295
    :cond_2
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mStoreThread:Ljava/lang/Thread;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mStoreThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6297
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V

    move v0, v1

    .line 6298
    goto :goto_0

    .line 6301
    :cond_3
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 6500
    goto :goto_0

    .line 6304
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-lez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 6307
    :cond_4
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->OPENGL_ON:Z

    if-ne v2, v1, :cond_5

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterAnimation()Z

    move-result v2

    if-ne v2, v1, :cond_5

    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopShutterAnim()V

    .line 6309
    :cond_5
    iget v2, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v2, v6, :cond_6

    move v0, v1

    .line 6310
    goto :goto_0

    .line 6313
    :cond_6
    iget-boolean v2, p0, Lcom/motorola/Camera/Camera;->mRotateDialogShowing:Z

    if-eqz v2, :cond_7

    .line 6315
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v2, :cond_7

    .line 6317
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v2}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 6318
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 6319
    iput-boolean v0, p0, Lcom/motorola/Camera/Camera;->mRotateDialogShowing:Z

    move v0, v1

    .line 6320
    goto :goto_0

    .line 6324
    :cond_7
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->getSettingSecondaryDialog()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 6326
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->closeSettingSecondaryDialog()V

    move v0, v1

    .line 6327
    goto :goto_0

    .line 6331
    :cond_8
    iget v2, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v2, v5, :cond_a

    .line 6332
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 6333
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mAutotimerCountImg:Landroid/widget/ImageView;

    if-eqz v2, :cond_9

    .line 6334
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mAutotimerCountImg:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6336
    :cond_9
    iput v0, p0, Lcom/motorola/Camera/Camera;->mAutoTimerCount:I

    .line 6337
    iput v1, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    .line 6338
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->toggleMediaControlsVisibility()V

    move v0, v1

    .line 6339
    goto/16 :goto_0

    .line 6342
    :cond_a
    iget-boolean v2, p0, Lcom/motorola/Camera/Camera;->mTimerContainerShowing:Z

    if-eqz v2, :cond_b

    .line 6344
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mTimerContainer:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6345
    iput-boolean v0, p0, Lcom/motorola/Camera/Camera;->mTimerContainerShowing:Z

    .line 6346
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    move v0, v1

    .line 6347
    goto/16 :goto_0

    .line 6350
    :cond_b
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->isPopupDialogOpen()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 6352
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2, v1, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->closePopupDialog(ZZ)V

    .line 6353
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2, v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->setDialogStatus(I)V

    move v0, v1

    .line 6354
    goto/16 :goto_0

    .line 6357
    :cond_c
    iget v2, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_e

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getReviewTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 6361
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_d

    .line 6363
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6366
    :cond_d
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 6367
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v1

    .line 6368
    goto/16 :goto_0

    .line 6369
    :cond_e
    iget v2, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v2, v1, :cond_f

    .line 6370
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->clearFocus()V

    .line 6371
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_f

    .line 6373
    :try_start_0
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6378
    :goto_1
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopPreview()V

    .line 6379
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->disableUIAfterStopPreview()V

    .line 6381
    iput-boolean v0, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    .line 6383
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentExpValue(Ljava/lang/String;)V

    .line 6384
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->finish()V

    move v0, v1

    .line 6385
    goto/16 :goto_0

    .line 6388
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 6390
    :sswitch_1
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_10

    const-string v0, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown() - keycode_focus event.getRepeatCount() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6392
    :cond_10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_11

    move v0, v1

    goto/16 :goto_0

    .line 6393
    :cond_11
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_12

    const-string v0, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown() - keycode_focus mstatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6396
    :cond_12
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-eq v0, v6, :cond_13

    .line 6398
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideControllerPanel(Z)V

    .line 6400
    :cond_13
    iget v0, p0, Lcom/motorola/Camera/Camera;->mFocusValue:I

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mIsFocused:Z

    if-eqz v0, :cond_14

    .line 6401
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->onScreenCaptureDown()V

    :goto_2
    move v0, v1

    .line 6407
    goto/16 :goto_0

    .line 6404
    :cond_14
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->onScreenCaptureFocus()V

    goto :goto_2

    .line 6410
    :sswitch_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-ne v0, v7, :cond_15

    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v0, v5, :cond_15

    move v0, v1

    .line 6412
    goto/16 :goto_0

    .line 6415
    :cond_15
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v0, v1, :cond_16

    .line 6417
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->setMenuPress()V

    .line 6419
    :cond_16
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    .line 6420
    goto/16 :goto_0

    .line 6422
    :cond_17
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 6425
    :sswitch_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-ne v0, v7, :cond_18

    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v0, v5, :cond_18

    move v0, v1

    .line 6427
    goto/16 :goto_0

    .line 6429
    :cond_18
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_19

    move v0, v1

    goto/16 :goto_0

    .line 6430
    :cond_19
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->onScreenCaptureDown()V

    move v0, v1

    .line 6432
    goto/16 :goto_0

    .line 6434
    :sswitch_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1d

    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v0, v1, :cond_1d

    .line 6436
    iget v0, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    if-ge v0, v1, :cond_1a

    .line 6437
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->showStorageToast()V

    move v0, v1

    .line 6438
    goto/16 :goto_0

    .line 6440
    :cond_1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/motorola/Camera/Camera;->mTime2Idle:J

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_1b

    move v0, v1

    .line 6441
    goto/16 :goto_0

    .line 6443
    :cond_1b
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideControllerPanel(Z)V

    .line 6444
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera;->checkAndSnap(I)V

    :cond_1c
    :goto_3
    move v0, v1

    .line 6454
    goto/16 :goto_0

    .line 6448
    :cond_1d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1c

    .line 6450
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V

    goto :goto_3

    .line 6456
    :sswitch_5
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVolumeKeySetting()I

    move-result v2

    if-ne v2, v1, :cond_1e

    move v0, v1

    .line 6457
    goto/16 :goto_0

    .line 6460
    :cond_1e
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v2

    if-ne v2, v7, :cond_1f

    iget v2, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v2, v5, :cond_1f

    move v0, v1

    .line 6462
    goto/16 :goto_0

    .line 6463
    :cond_1f
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v2

    if-nez v2, :cond_20

    .line 6464
    sget-boolean v2, Lcom/motorola/Camera/Camera;->mIsRotator:Z

    if-eqz v2, :cond_21

    .line 6465
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->changeZoom(Ljava/lang/Boolean;)V

    .line 6466
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateZoom(I)V

    :cond_20
    :goto_4
    move v0, v1

    .line 6474
    goto/16 :goto_0

    .line 6469
    :cond_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/Camera/Camera;->changeZoom(Ljava/lang/Boolean;)V

    .line 6470
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2, v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateZoom(I)V

    goto :goto_4

    .line 6476
    :sswitch_6
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVolumeKeySetting()I

    move-result v2

    if-ne v2, v1, :cond_22

    move v0, v1

    .line 6477
    goto/16 :goto_0

    .line 6480
    :cond_22
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v2

    if-ne v2, v7, :cond_23

    iget v2, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v2, v5, :cond_23

    move v0, v1

    .line 6482
    goto/16 :goto_0

    .line 6483
    :cond_23
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v2

    if-nez v2, :cond_24

    .line 6484
    sget-boolean v2, Lcom/motorola/Camera/Camera;->mIsRotator:Z

    if-eqz v2, :cond_25

    .line 6485
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/Camera/Camera;->changeZoom(Ljava/lang/Boolean;)V

    .line 6486
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2, v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateZoom(I)V

    :cond_24
    :goto_5
    move v0, v1

    .line 6495
    goto/16 :goto_0

    .line 6489
    :cond_25
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->changeZoom(Ljava/lang/Boolean;)V

    .line 6490
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateZoom(I)V

    goto :goto_5

    .line 6498
    :sswitch_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 6375
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 6301
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x15 -> :sswitch_7
        0x16 -> :sswitch_7
        0x17 -> :sswitch_4
        0x18 -> :sswitch_6
        0x19 -> :sswitch_5
        0x1b -> :sswitch_3
        0x50 -> :sswitch_1
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 6215
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVolumeKeySetting()I

    move-result v1

    if-ne v1, v0, :cond_1

    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    .line 6216
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->onScreenCaptureFocus()V

    .line 6219
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6225
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6273
    :goto_0
    return v0

    .line 6228
    :cond_0
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 6229
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 6231
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 6233
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera:onKeyUp: + keyCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6235
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_2

    .line 6236
    sparse-switch p1, :sswitch_data_0

    .line 6273
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 6240
    :sswitch_0
    iget v0, p0, Lcom/motorola/Camera/Camera;->mFocusValue:I

    if-eqz v0, :cond_2

    .line 6241
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->onScreenCaptureUp()V

    goto :goto_1

    .line 6247
    :sswitch_1
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVolumeKeySetting()I

    move-result v2

    if-nez v2, :cond_3

    .line 6249
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->smoothZoomSupported:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_2

    .line 6252
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopSmoothZoom()V

    goto :goto_1

    .line 6256
    :cond_3
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v2

    if-ne v2, v1, :cond_4

    iget v2, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v2, v1, :cond_4

    .line 6257
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->setCaptureClusterCameraMode(I)V

    .line 6262
    :goto_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mStoreThread:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mStoreThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 6263
    goto :goto_0

    .line 6259
    :cond_4
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2, v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->setCaptureClusterCameraMode(I)V

    goto :goto_2

    .line 6265
    :cond_5
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->onScreenCaptureDown()V

    goto :goto_1

    .line 6236
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 2949
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 2951
    const-string v0, "MotoCamera"

    const-string v1, "onLowMemory() Called!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    return-void
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1783
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "onPause() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraKPI"

    const-string v1, "onPause enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 1789
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->OPENGL_ON:Z

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterAnimation()Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1790
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->removeShutterView()V

    .line 1794
    :cond_2
    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mPausing:Z

    .line 1796
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v0}, Lcom/motorola/Camera/FocusManager;->removeMessages()V

    .line 1797
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->clearFocus()V

    .line 1798
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCameraKPI"

    const-string v1, "onPause focus cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mAutoTimerDialog:Lcom/motorola/Camera/Camera$CameraDialog;

    if-eqz v0, :cond_4

    .line 1801
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mAutoTimerDialog:Lcom/motorola/Camera/Camera$CameraDialog;

    invoke-virtual {v0}, Lcom/motorola/Camera/Camera$CameraDialog;->dismiss()V

    .line 1804
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mTimerContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    .line 1806
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mTimerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1807
    iput-boolean v3, p0, Lcom/motorola/Camera/Camera;->mTimerContainerShowing:Z

    .line 1808
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 1811
    :cond_5
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mRotateDialogShowing:Z

    if-eqz v0, :cond_6

    .line 1813
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v0, :cond_6

    .line 1815
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 1816
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 1817
    iput-boolean v3, p0, Lcom/motorola/Camera/Camera;->mRotateDialogShowing:Z

    .line 1821
    :cond_6
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->isPopupDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1822
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v3, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->closePopupDialog(ZZ)V

    .line 1826
    :cond_7
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    if-eqz v0, :cond_8

    .line 1827
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    invoke-virtual {v0}, Lcom/motorola/Camera/LocUtility;->stopReceivingLocationUpdates()V

    .line 1830
    :cond_8
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I

    if-nez v0, :cond_a

    .line 1834
    :cond_9
    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1841
    :cond_a
    :goto_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopPreview()V

    .line 1842
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->disableUIAfterStopPreview()V

    .line 1843
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_b

    const-string v0, "MotoCameraKPI"

    const-string v1, "onPause preview stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    :cond_b
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1848
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1849
    iput-object v5, p0, Lcom/motorola/Camera/Camera;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 1853
    :cond_c
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideSceneDialog()V

    .line 1854
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->resetFilter()V

    .line 1856
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_d

    .line 1857
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1860
    :cond_d
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v0}, Lcom/motorola/Camera/FocusManager;->cleanup()V

    .line 1861
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 1864
    iget v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I

    iget v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I

    if-ge v0, v1, :cond_f

    .line 1866
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_e

    const-string v0, "MotoCamera"

    const-string v1, "Camera:onPause:PanoramaMode calling stopPanoramaCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    :cond_e
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopPanoramaCapture()V

    .line 1868
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->setCaptureClusterCameraMode(I)V

    .line 1876
    :cond_f
    :goto_1
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mDidRegister:Z

    if-eqz v0, :cond_10

    .line 1878
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1879
    iput-boolean v3, p0, Lcom/motorola/Camera/Camera;->mDidRegister:Z

    .line 1882
    :cond_10
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v0, :cond_11

    .line 1883
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->getToolbarOpenState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setToolbarOpenStatus(Z)V

    .line 1887
    :cond_11
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1888
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->dismissToast()V

    .line 1889
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v1

    .line 1890
    :try_start_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1891
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->save()V

    .line 1892
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_12

    const-string v0, "MotoCameraKPI"

    const-string v2, "onPause save settings"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    :cond_12
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1895
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->interruptThumbnailThread()V

    .line 1897
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_13

    .line 1898
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1899
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mAutotimerCountImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    .line 1900
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mAutotimerCountImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1903
    :cond_13
    iput v3, p0, Lcom/motorola/Camera/Camera;->mAutoTimerCount:I

    .line 1907
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->clearMessageQueue()V

    .line 1909
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1911
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_14

    const-string v0, "MotoCamera"

    const-string v1, "onPause() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    :cond_14
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_15

    const-string v0, "MotoCameraKPI"

    const-string v1, "onPause exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    :cond_15
    return-void

    .line 1872
    :cond_16
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->closeCamera()V

    goto :goto_1

    .line 1894
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1836
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 395
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1593
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraKPI"

    const-string v4, "onResume enter"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1595
    iput-boolean v3, p0, Lcom/motorola/Camera/Camera;->mIsFocusing:Z

    .line 1596
    iput-boolean v3, p0, Lcom/motorola/Camera/Camera;->mIsFocusLocked:Z

    .line 1597
    iput-boolean v3, p0, Lcom/motorola/Camera/Camera;->mAnimationRunning:Z

    .line 1598
    iput-boolean v3, p0, Lcom/motorola/Camera/Camera;->mThumbnailDecoded:Z

    .line 1599
    iput-boolean v3, p0, Lcom/motorola/Camera/Camera;->mDeviceDisabled:Z

    .line 1600
    iput v3, p0, Lcom/motorola/Camera/Camera;->mAutoTimerCount:I

    .line 1602
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamera"

    const-string v4, "onResume() - Enter"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    :cond_1
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->mShouldReadFrontParams:Z

    .line 1606
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 1608
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1609
    .local v0, currentConfig:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/motorola/Camera/Camera;->mConfig_PL:I

    .line 1610
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget v4, p0, Lcom/motorola/Camera/Camera;->mConfig_PL:I

    invoke-virtual {v1, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->setOrientation(I)V

    .line 1612
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->enableAllControls(Z)V

    .line 1614
    :cond_2
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v4

    .line 1616
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v5, 0x0

    invoke-virtual {v1, p0, v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentAppMode(Landroid/content/Context;I)V

    .line 1617
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setDefaultZoomValue()V

    .line 1618
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "MotoCameraKPI"

    const-string v5, "onResume default zoom set"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    :cond_3
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isImageCaptureIntent()Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsImageCaptureIntent:Z

    .line 1622
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-boolean v5, p0, Lcom/motorola/Camera/Camera;->mIsImageCaptureIntent:Z

    invoke-virtual {v1, v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setServiceMode(Z)V

    .line 1624
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isSecurelyLockedModeImageCaptureIntent()Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsSecurelyLockedModeImageCaptureIntent:Z

    .line 1625
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-boolean v5, p0, Lcom/motorola/Camera/Camera;->mIsSecurelyLockedModeImageCaptureIntent:Z

    invoke-virtual {v1, v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSecurelyLockedMode(Z)V

    .line 1627
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    if-nez v1, :cond_4

    .line 1628
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/motorola/Camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    .line 1629
    new-instance v1, Lcom/motorola/Camera/LocUtility;

    iget-object v5, p0, Lcom/motorola/Camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    invoke-direct {v1, p0, v5}, Lcom/motorola/Camera/LocUtility;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    iput-object v1, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    .line 1631
    :cond_4
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-object v5, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    invoke-virtual {v5}, Lcom/motorola/Camera/LocUtility;->isLocationProviderEnabled()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setProviderEnabled(Z)V

    .line 1632
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1634
    iput-boolean v3, p0, Lcom/motorola/Camera/Camera;->mPausing:Z

    .line 1635
    iput-boolean v3, p0, Lcom/motorola/Camera/Camera;->mZoomAdjusting:Z

    .line 1636
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x80

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1638
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsStitching:Z

    if-eqz v1, :cond_9

    .line 1642
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_5

    const-string v1, "MotoCamera"

    const-string v2, "----OnResume, still stitching panorama-----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :cond_5
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1644
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1645
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1646
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1766
    :goto_0
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v2

    .line 1767
    :try_start_1
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPickIntent()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setServiceMode(Z)V

    .line 1768
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1771
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->interruptThumbnailThread()V

    .line 1772
    new-instance v1, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    invoke-direct {v1, p0, v7}, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;-><init>(Lcom/motorola/Camera/Camera;[B)V

    iput-object v1, p0, Lcom/motorola/Camera/Camera;->updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    .line 1773
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_6

    const-string v1, "MotoCameraKPI"

    const-string v2, "onResume starting updateThumbnail thread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    :cond_6
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->start()V

    .line 1776
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_7

    const-string v1, "MotoCamera"

    const-string v2, "onResume() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :cond_7
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_8

    const-string v1, "MotoCameraKPI"

    const-string v2, "onResume exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :cond_8
    :goto_1
    return-void

    .line 1632
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1651
    :cond_9
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPostText:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPostText:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1653
    :cond_a
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    if-eqz v1, :cond_b

    .line 1654
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1655
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1657
    :cond_b
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1659
    :cond_c
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1661
    :cond_d
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1662
    :cond_e
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_f

    const-string v1, "MotoCameraKPI"

    const-string v4, "onResume unused views hidden"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :cond_f
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    if-eqz v1, :cond_10

    .line 1667
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camera$ImageCapture;->clearLastData()V

    .line 1668
    iput-object v7, p0, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    .line 1672
    :cond_10
    new-instance v1, Lcom/motorola/Camera/Camera$ImageCapture;

    invoke-direct {v1, p0}, Lcom/motorola/Camera/Camera$ImageCapture;-><init>(Lcom/motorola/Camera/Camera;)V

    iput-object v1, p0, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    .line 1673
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_11

    const-string v1, "MotoCameraKPI"

    const-string v4, "onResume imageCapture created"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :cond_11
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-nez v1, :cond_14

    .line 1678
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_12

    const-string v1, "MotoCamera"

    const-string v4, "onResume() - preview not running, call startPreview()"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    :cond_12
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_13

    const-string v1, "MotoCameraKPI"

    const-string v4, "onResume need to start device"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    :cond_13
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->startDevice()V

    .line 1681
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_14

    const-string v1, "MotoCameraKPI"

    const-string v4, "onResume device started"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_14
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_17

    .line 1685
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_15

    const-string v1, "MotoCamera"

    const-string v4, "onResume() - startPreview failed, just return"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    :cond_15
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mDeviceDisabled:Z

    if-eqz v1, :cond_16

    .line 1687
    const v1, 0x7f0b0099

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-virtual {p0, v1, v4}, Lcom/motorola/Camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V

    .line 1692
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->finish()V

    goto/16 :goto_1

    .line 1689
    :cond_16
    const v1, 0x7f0b0095

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 1696
    :cond_17
    sget-boolean v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    if-eqz v1, :cond_18

    .line 1698
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentStorageLocation()I

    move-result v1

    if-eq v1, v2, :cond_27

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsInternalSD:Z

    .line 1699
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSDPlug()Z

    move-result v1

    if-nez v1, :cond_18

    .line 1700
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->checkExternalSDCardFirstTime()V

    .line 1701
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_18

    const-string v1, "MotoCameraKPI"

    const-string v4, "onResume sdcard-ext checked"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    :cond_18
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_19

    const-string v1, "MotoCamera"

    const-string v4, "onResume() - valid surfaceholder"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    :cond_19
    iput v2, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    .line 1710
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1a

    const-string v1, "MotoCameraKPI"

    const-string v4, "onResume cam set to idle"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    :cond_1a
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1b

    const-string v1, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "w20919 onResume() - Enter 111"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    :cond_1b
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->OPENGL_ON:Z

    if-ne v1, v2, :cond_1c

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterAnimation()Z

    move-result v1

    if-ne v2, v1, :cond_1c

    .line 1716
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-eqz v1, :cond_28

    .line 1718
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->initShutterView()V

    .line 1726
    :cond_1c
    :goto_4
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mFirstTimeInitialized:Z

    if-nez v1, :cond_29

    .line 1728
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1d

    const-string v1, "MotoCamera"

    const-string v3, "onResume() - we haven\'t initialized before, call firstTimeInit()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    :cond_1d
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1e

    const-string v1, "MotoCameraKPI"

    const-string v3, "onResume before first init"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    :cond_1e
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->initializeFirstTime()V

    .line 1731
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1f

    const-string v1, "MotoCameraKPI"

    const-string v3, "onResume after first init"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    :cond_1f
    :goto_5
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->enableAllControls(Z)V

    .line 1750
    :cond_20
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_21

    const-string v1, "MotoCameraKPI"

    const-string v3, "onResume beginning to show ui"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    :cond_21
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 1752
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_22

    const-string v1, "MotoCameraKPI"

    const-string v3, "onResume controller updated"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    :cond_22
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->showRightSet()V

    .line 1754
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_23

    const-string v1, "MotoCameraKPI"

    const-string v3, "onResume right set shown"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    :cond_23
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->showTopStatusSet()V

    .line 1756
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_24

    const-string v1, "MotoCameraKPI"

    const-string v3, "onResume top set shown"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :cond_24
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 1758
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_25

    const-string v1, "MotoCameraKPI"

    const-string v3, "onResume capture control shown"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    :cond_25
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCaptureCluster()V

    .line 1760
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_26

    const-string v1, "MotoCameraKPI"

    const-string v3, "onResume capture cluster shown"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    :cond_26
    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mNeedCheckStorage:Z

    goto/16 :goto_0

    :cond_27
    move v1, v3

    .line 1698
    goto/16 :goto_3

    .line 1722
    :cond_28
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopShutterAnim()V

    goto/16 :goto_4

    .line 1735
    :cond_29
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2a

    const-string v1, "MotoCamera"

    const-string v4, "onResume() - we have already init\'ed, call secondTimeInit()"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    :cond_2a
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2b

    const-string v1, "MotoCameraKPI"

    const-string v4, "onResume before second init"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    :cond_2b
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->initializeSecondTime()V

    .line 1738
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2c

    const-string v1, "MotoCameraKPI"

    const-string v4, "onResume after second init"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    :cond_2c
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1741
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2d

    const-string v1, "MotoCamera"

    const-string v4, "On Resume(); Enable Panorama"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    :cond_2d
    invoke-direct {p0, v3}, Lcom/motorola/Camera/Camera;->enablePanorama(Z)V

    .line 1743
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1f

    const-string v1, "MotoCameraKPI"

    const-string v3, "onResume after panorama enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1768
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public onScreenCaptureDown()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6512
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v0, v2, :cond_e

    .line 6514
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraKPI"

    const-string v1, "onScreenCaptureDown capture start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6516
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v0, v5, :cond_2

    .line 6578
    :cond_1
    :goto_0
    return-void

    .line 6520
    :cond_2
    iget v0, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    if-lt v0, v2, :cond_3

    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isMultishotMode()Z

    move-result v0

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    sget v1, Lcom/motorola/Camera/Camera;->mMultiShotMaxCount:I

    if-ge v0, v1, :cond_5

    .line 6522
    :cond_3
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCamera"

    const-string v1, "onSnap() - SD Card Full"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6523
    :cond_4
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->showStorageToast()V

    .line 6524
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6525
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->setCaptureClusterCameraMode(I)V

    goto :goto_0

    .line 6529
    :cond_5
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mIsFocusButtonPressed:Z

    if-eqz v0, :cond_6

    .line 6530
    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mCaptureOnShortPress:Z

    .line 6532
    :cond_6
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_1

    .line 6533
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_7

    const-string v0, "MotoCameraKPI"

    const-string v1, "onScreenCaptureDown before zoom"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6535
    :cond_7
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mZoomAdjusting:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_8

    .line 6536
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopSmoothZoom()V

    .line 6537
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateZoom(I)V

    .line 6540
    :cond_8
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_9

    const-string v0, "MotoCameraKPI"

    const-string v1, "onScreenCaptureDown stop and update zoom"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6543
    :cond_9
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6544
    :cond_a
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->rightSetFadeOut()V

    .line 6548
    :goto_1
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_b

    const-string v0, "MotoCameraKPI"

    const-string v1, "onScreenCaptureDown rightSetFadeOut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6550
    :cond_b
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_c

    const-string v0, "MotoCamera"

    const-string v1, "onKeyDown() - calling checkAndSnap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6551
    :cond_c
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->checkAndSnap(I)V

    goto/16 :goto_0

    .line 6546
    :cond_d
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->enableAllControls(Z)V

    goto :goto_1

    .line 6554
    :cond_e
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getReviewTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 6557
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_f

    .line 6558
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6560
    :cond_f
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 6561
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 6563
    :cond_10
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v0, v4, :cond_11

    iget v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I

    iget v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I

    if-ge v0, v1, :cond_11

    .line 6569
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6571
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopPanoramaCapture()V

    goto/16 :goto_0

    .line 6573
    :cond_11
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 6575
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onScreenCaptureFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 6582
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v0, v1, :cond_3

    .line 6583
    iget v0, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    if-ge v0, v1, :cond_1

    .line 6584
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->showStorageToast()V

    .line 6601
    :cond_0
    :goto_0
    return-void

    .line 6588
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 6589
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 6590
    const-string v0, "MotoCamera"

    const-string v1, "onScreenCaptureFocus() - start autoFocus()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6591
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v0}, Lcom/motorola/Camera/FocusManager;->onShutterDown()V

    goto :goto_0

    .line 6593
    :cond_3
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getReviewTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 6595
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 6596
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6598
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6599
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onScreenCaptureUp()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6504
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v0, v2, :cond_1

    .line 6505
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "onScreenCaptureUp() : Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6506
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v0}, Lcom/motorola/Camera/FocusManager;->onShutterUp()V

    .line 6507
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mCaptureOnFocus:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 6509
    :cond_1
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1338
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1340
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "onStart() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :cond_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isMultishotMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1360
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/CameraApp;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraActivityContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraClass:Lcom/motorola/Camera/Camera;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraApp;->getStoreImageUtility(Landroid/content/Context;Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/StoreImageUtility;

    .line 1364
    :cond_1
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCamera"

    const-string v1, "onStart() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1918
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    const-string v2, "onStop() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    :cond_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCameraKPI"

    const-string v2, "onStop enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/motorola/Camera/CameraApp;

    invoke-virtual {v1, v3, v3}, Lcom/motorola/Camera/CameraApp;->getStoreImageUtility(Landroid/content/Context;Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/StoreImageUtility;

    move-result-object v0

    .line 1933
    .local v0, storeimageuitility:Lcom/motorola/Camera/StoreImageUtility;
    if-eqz v0, :cond_2

    .line 1935
    invoke-virtual {v0}, Lcom/motorola/Camera/StoreImageUtility;->clearReferences()V

    .line 1938
    :cond_2
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    .line 1939
    const-string v1, "MotoCamera"

    const-string v2, "onStop() - Clearing Multishot reference to this activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    :cond_3
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    const-string v1, "MotoCamera"

    const-string v2, "onStop() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1946
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 6606
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    .line 6607
    const-string v3, "MotoCamera"

    const-string v4, "Camera:onTouchEvent:touch event"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6609
    :cond_0
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v3}, Lcom/motorola/Camera/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 6610
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v3}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 6611
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 6613
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 6615
    .local v0, action:I
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 6676
    :cond_1
    :goto_0
    return v1

    .line 6620
    :cond_2
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_3

    .line 6621
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 6623
    :cond_3
    if-nez v0, :cond_6

    .line 6625
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mPostText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v3

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-nez v3, :cond_5

    .line 6627
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 6628
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    if-nez v3, :cond_4

    .line 6629
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->initPostPanel()V

    .line 6632
    :cond_4
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 6633
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6634
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mPostText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 6638
    :cond_5
    iget v3, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-eq v3, v1, :cond_1

    .line 6643
    :cond_6
    if-ne v0, v1, :cond_7

    iget-boolean v3, p0, Lcom/motorola/Camera/Camera;->mTimerContainerShowing:Z

    if-eqz v3, :cond_7

    .line 6645
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mTimerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6646
    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mTimerContainerShowing:Z

    .line 6647
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    goto :goto_0

    .line 6651
    :cond_7
    if-ne v0, v1, :cond_8

    iget-boolean v3, p0, Lcom/motorola/Camera/Camera;->mRotateDialogShowing:Z

    if-eqz v3, :cond_8

    .line 6653
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v3, :cond_8

    .line 6655
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v3}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 6656
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 6657
    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mRotateDialogShowing:Z

    goto :goto_0

    .line 6662
    :cond_8
    if-ne v0, v1, :cond_9

    iget v3, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v3, v1, :cond_9

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->isPopupDialogOpen()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 6664
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3, v1, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->closePopupDialog(ZZ)V

    .line 6665
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->setDialogStatus(I)V

    goto/16 :goto_0

    .line 6670
    :cond_9
    iget-boolean v3, p0, Lcom/motorola/Camera/Camera;->mFocusAreaSupported:Z

    if-nez v3, :cond_a

    iget-boolean v3, p0, Lcom/motorola/Camera/Camera;->mMeteringAreaSupported:Z

    if-nez v3, :cond_a

    move v1, v2

    goto/16 :goto_0

    .line 6672
    :cond_a
    iget-boolean v2, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-eqz v2, :cond_b

    iget v2, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v2, v1, :cond_b

    .line 6673
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v1, p1}, Lcom/motorola/Camera/FocusManager;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 6676
    :cond_b
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public rotateCurrentThumbnail()V
    .locals 4

    .prologue
    .line 4908
    iget v0, p0, Lcom/motorola/Camera/Camera;->mLastOrientation:I

    iput v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    .line 4913
    iget v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    invoke-static {v0}, Lcom/motorola/Camera/ImageManager;->roundOrientation(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    .line 4914
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 4915
    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateThumbnailThread - orientation is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4918
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mIsRotatorClosed:Z

    if-eqz v0, :cond_1

    .line 4919
    iget v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    add-int/lit8 v0, v0, 0x5a

    iput v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    .line 4921
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v1

    .line 4923
    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4924
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getImagerOrientation()I

    move-result v0

    iget v2, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    add-int/2addr v0, v2

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    .line 4929
    :goto_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 4930
    const-string v0, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateThumbnailThread - mLastOrientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/Camera;->mLastOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mThumbnailOrientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mCamSetting.getImagerOrientation() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getImagerOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4933
    :cond_2
    monitor-exit v1

    .line 4934
    return-void

    .line 4926
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getImagerOrientation()I

    move-result v0

    iget v2, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    sub-int/2addr v0, v2

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    goto :goto_0

    .line 4933
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFocusParameters()V
    .locals 0

    .prologue
    .line 2811
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->setFocusModeParameters()V

    .line 2812
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 9
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2116
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged() - Enter - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2153
    :cond_1
    :goto_0
    return-void

    .line 2121
    :cond_2
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2122
    int-to-float v0, p3

    iput v0, p0, Lcom/motorola/Camera/Camera;->mSurfaceWidth:F

    .line 2123
    int-to-float v0, p4

    iput v0, p0, Lcom/motorola/Camera/Camera;->mSurfaceHeight:F

    .line 2125
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 2128
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2130
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 2132
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 2135
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_5

    move v4, v7

    .line 2136
    .local v4, mirror:Z
    :goto_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;

    iget v5, p0, Lcom/motorola/Camera/Camera;->mDisplayOrientation:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/Camera/FocusManager;->initialize(Lcom/motorola/Camera/FocusManager$FocusListener;Lcom/motorola/Camera/View/FocusView;Landroid/view/View;ZI)V

    .line 2138
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mFirstTimeInitialized:Z

    if-nez v0, :cond_6

    .line 2139
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->initializeFirstTime()V

    .line 2144
    :goto_2
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mStartLogger:Z

    if-eqz v0, :cond_4

    .line 2146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/motorola/Camera/Camera;->mKpiStartTimer:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 2147
    .local v6, time:Ljava/lang/String;
    const-string v0, "CAM"

    const-string v1, "STP"

    new-array v2, v7, [Lcom/motorola/kpi/KpiExtraLogs;

    new-instance v3, Lcom/motorola/kpi/KpiExtraLogs;

    const-string v5, "dur"

    invoke-direct {v3, v5, v6}, Lcom/motorola/kpi/KpiExtraLogs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v8

    invoke-static {v7, v0, v1, v2}, Lcom/motorola/kpi/KpiLogger;->Prod(ILjava/lang/String;Ljava/lang/String;[Lcom/motorola/kpi/KpiExtraLogs;)V

    .line 2149
    iput-boolean v8, p0, Lcom/motorola/Camera/Camera;->mStartLogger:Z

    .line 2152
    .end local v6           #time:Ljava/lang/String;
    :cond_4
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v1, "surfaceChanged() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v4           #mirror:Z
    :cond_5
    move v4, v8

    .line 2135
    goto :goto_1

    .line 2141
    .restart local v4       #mirror:Z
    :cond_6
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->initializeSecondTime()V

    goto :goto_2
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 2157
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "surfaceCreated() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v1, "surfaceCreated() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 2166
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "surfaceDestroyed() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    :cond_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopPreview()V

    .line 2170
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->disableUIAfterStopPreview()V

    .line 2171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2173
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v1, "surfaceDestroyed() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    :cond_1
    return-void
.end method

.method public updateEffects()V
    .locals 4

    .prologue
    .line 3711
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentEffect()I

    move-result v0

    .line 3712
    .local v0, colorEffect:I
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEffects() - ColorEffect is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3713
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportEffectsValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3715
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportEffectsValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3717
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamera"

    const-string v2, "updateEffects() - ColorEffect is sent to engine"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3718
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportEffectsValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 3721
    :cond_2
    return-void
.end method
