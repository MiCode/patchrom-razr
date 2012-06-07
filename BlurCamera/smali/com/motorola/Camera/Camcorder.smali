.class public Lcom/motorola/Camera/Camcorder;
.super Landroid/app/Activity;
.source "Camcorder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;,
        Lcom/motorola/Camera/Camcorder$CamcorderDialog;,
        Lcom/motorola/Camera/Camcorder$MotoCameraErrorCallback;,
        Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;,
        Lcom/motorola/Camera/Camcorder$MotoCameraOnZoomChangeListener;,
        Lcom/motorola/Camera/Camcorder$JpegPictureCallback;,
        Lcom/motorola/Camera/Camcorder$MainHandler;
    }
.end annotation


# static fields
.field public static final QUICK_LAUNCH_BROADCAST:Ljava/lang/String; = "com.motorola.internal.intent.action.QUICK_LAUNCH_APP"

.field private static final TAG:Ljava/lang/String; = "MotoCamcorder"

.field private static final WIND_NOISE:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field static final mIsRotator:Z = false

.field private static final sCamcorderDefaultProfile:Ljava/lang/String; = "3gp,h264,15,128000,amrnb,12200,8000,1"


# instance fields
.field private batteryLevel:I

.field private final batteryReceiver:Landroid/content/BroadcastReceiver;

.field callStateListener:Landroid/telephony/PhoneStateListener;

.field private deleteDialog:Landroid/app/AlertDialog;

.field private errorCase:I

.field private externalVideolengthRemaining:I

.field private internalVideolengthRemaining:I

.field private mAudioMgr:Landroid/media/AudioManager;

.field mBlackout:Landroid/widget/ImageView;

.field private mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

.field private mCamSettingsChanging:Z

.field private mCamcorderProfile:Landroid/media/CamcorderProfile;

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCaptureTimeLapse:Z

.field private mCodec:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mController:Lcom/motorola/Camera/View/Control/OnScreenController;

.field private mCurrentOrientation:I

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field mDidRegister:Z

.field private mElapsedTimerContainer:Landroid/widget/RelativeLayout;

.field private volatile mElapsedTimerContainerShowing:Z

.field mEulaAgreeListener:Landroid/view/View$OnClickListener;

.field mEulaCancelListener:Landroid/view/View$OnClickListener;

.field public mFailSafe:Z

.field private mFileFormat:Ljava/lang/String;

.field private mFilesize:J

.field mGalleryItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsInternalSD:Z

.field private mIsSecurelyLockedModeVideoCaptureIntent:Z

.field private mIsVideoCaptureIntent:Z

.field private mLastValidFileName:Ljava/lang/String;

.field private mLastValidMediaId:J

.field private mLastValidUri:Landroid/net/Uri;

.field private mLocUtil:Lcom/motorola/Camera/LocUtility;

.field mLocationManager:Landroid/location/LocationManager;

.field private mMain:Lcom/motorola/Camera/View/CameraContentView;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderStopped:Z

.field private mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

.field private mNeedCheckStorage:Z

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field mPausing:Z

.field mPostPanel:Landroid/widget/LinearLayout;

.field private mPostText:Landroid/widget/TextView;

.field private mPreviewing:Z

.field public mRecInitThread:Ljava/lang/Thread;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordingStartTime:J

.field mResolution:Lcom/motorola/Camera/CameraGlobalType$CamSize;

.field private mResolutionInService:Lcom/motorola/Camera/CameraGlobalType$CamSize;

.field private mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

.field private volatile mRotateDialogShowing:Z

.field private mSavingProgress:Landroid/widget/ProgressBar;

.field private mSavingVideo:Landroid/view/View;

.field private mSavingVideoText:Landroid/widget/TextView;

.field mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSecondaryDialogWidth:I

.field private mStatus:I

.field public mStopRecordingThread:Ljava/lang/Thread;

.field private mStorageLocationAlert:Landroid/app/AlertDialog;

.field mSurfaceHolder:Landroid/view/SurfaceHolder;

.field mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mThumbnailOrientation:I

.field private mTime2Idle:J

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mTimeLimitMs:I

.field mVideoFrameBitmap:Landroid/graphics/Bitmap;

.field mVideoPreview:Lcom/motorola/Camera/View/CameraView;

.field private mVideoRemainingSecond:J

.field private mZoomAdjusting:Z

.field private final mZoomChangeListener:Lcom/motorola/Camera/Camcorder$MotoCameraOnZoomChangeListener;

.field private maxMMSSize:I

.field private mrecordingElapsedTimeSeconds:J

.field private updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

.field private final windReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/String;

    const-string v1, "com.motorola.Camera.Camcorder.WIND_NOISE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/Camera/Camcorder;->WIND_NOISE:Ljava/lang/String;

    .line 142
    const-string v0, "ro.hw.rotator"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/Camera/Camcorder;->mIsRotator:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 131
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 146
    iput-object v3, p0, Lcom/motorola/Camera/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 147
    iput-object v3, p0, Lcom/motorola/Camera/Camcorder;->mBlackout:Landroid/widget/ImageView;

    .line 150
    iput v2, p0, Lcom/motorola/Camera/Camcorder;->mThumbnailOrientation:I

    .line 155
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/motorola/Camera/Camcorder;->mLastValidMediaId:J

    .line 159
    iput v2, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    .line 160
    iput-object v3, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    .line 164
    iput-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mPausing:Z

    .line 165
    iput-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z

    .line 166
    iput-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mCamSettingsChanging:Z

    .line 168
    new-instance v0, Lcom/motorola/Camera/Camcorder$MotoCameraOnZoomChangeListener;

    invoke-direct {v0, p0, v3}, Lcom/motorola/Camera/Camcorder$MotoCameraOnZoomChangeListener;-><init>(Lcom/motorola/Camera/Camcorder;Lcom/motorola/Camera/Camcorder$1;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mZoomChangeListener:Lcom/motorola/Camera/Camcorder$MotoCameraOnZoomChangeListener;

    .line 169
    new-instance v0, Lcom/motorola/Camera/MotoCamcorderProfile;

    invoke-direct {v0}, Lcom/motorola/Camera/MotoCamcorderProfile;-><init>()V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    .line 173
    iput-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mDidRegister:Z

    .line 179
    iput-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mCaptureTimeLapse:Z

    .line 181
    iput v2, p0, Lcom/motorola/Camera/Camcorder;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 183
    iput-object v3, p0, Lcom/motorola/Camera/Camcorder;->mResolutionInService:Lcom/motorola/Camera/CameraGlobalType$CamSize;

    .line 185
    iput-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mIsSecurelyLockedModeVideoCaptureIntent:Z

    .line 189
    iput v2, p0, Lcom/motorola/Camera/Camcorder;->mTimeLimitMs:I

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mGalleryItems:Ljava/util/ArrayList;

    .line 195
    iput-object v3, p0, Lcom/motorola/Camera/Camcorder;->mLocationManager:Landroid/location/LocationManager;

    .line 197
    new-instance v0, Lcom/motorola/Camera/Camcorder$MainHandler;

    invoke-direct {v0, p0, v3}, Lcom/motorola/Camera/Camcorder$MainHandler;-><init>(Lcom/motorola/Camera/Camcorder;Lcom/motorola/Camera/Camcorder$1;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    .line 199
    iput-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z

    .line 206
    iput-object v3, p0, Lcom/motorola/Camera/Camcorder;->deleteDialog:Landroid/app/AlertDialog;

    .line 216
    iput-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mFailSafe:Z

    .line 221
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 223
    iput-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mIsInternalSD:Z

    .line 224
    iput-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mNeedCheckStorage:Z

    .line 227
    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    .line 228
    iput v2, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    .line 229
    iput v2, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    .line 232
    iput-object v3, p0, Lcom/motorola/Camera/Camcorder;->mSavingVideo:Landroid/view/View;

    .line 233
    iput-object v3, p0, Lcom/motorola/Camera/Camcorder;->mSavingVideoText:Landroid/widget/TextView;

    .line 239
    iput v2, p0, Lcom/motorola/Camera/Camcorder;->batteryLevel:I

    .line 241
    iput v2, p0, Lcom/motorola/Camera/Camcorder;->mCurrentOrientation:I

    .line 245
    iput v2, p0, Lcom/motorola/Camera/Camcorder;->mSecondaryDialogWidth:I

    .line 1393
    new-instance v0, Lcom/motorola/Camera/Camcorder$1;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/Camcorder$1;-><init>(Lcom/motorola/Camera/Camcorder;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->windReceiver:Landroid/content/BroadcastReceiver;

    .line 1428
    new-instance v0, Lcom/motorola/Camera/Camcorder$2;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/Camcorder$2;-><init>(Lcom/motorola/Camera/Camcorder;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->batteryReceiver:Landroid/content/BroadcastReceiver;

    .line 1478
    new-instance v0, Lcom/motorola/Camera/Camcorder$3;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/Camcorder$3;-><init>(Lcom/motorola/Camera/Camcorder;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2565
    new-instance v0, Lcom/motorola/Camera/Camcorder$5;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/Camcorder$5;-><init>(Lcom/motorola/Camera/Camcorder;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->callStateListener:Landroid/telephony/PhoneStateListener;

    .line 4916
    new-instance v0, Lcom/motorola/Camera/Camcorder$11;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/Camcorder$11;-><init>(Lcom/motorola/Camera/Camcorder;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mEulaAgreeListener:Landroid/view/View$OnClickListener;

    .line 4932
    new-instance v0, Lcom/motorola/Camera/Camcorder$12;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/Camcorder$12;-><init>(Lcom/motorola/Camera/Camcorder;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mEulaCancelListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->updateRemainCount()V

    return-void
.end method

.method static synthetic access$1100(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/motorola/Camera/Camcorder;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/motorola/Camera/Camcorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    return v0
.end method

.method static synthetic access$1302(Lcom/motorola/Camera/Camcorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput p1, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    return p1
.end method

.method static synthetic access$1400(Lcom/motorola/Camera/Camcorder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/motorola/Camera/Camcorder;->mRecordingStartTime:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->updateRecordTime()V

    return-void
.end method

.method static synthetic access$1700(Lcom/motorola/Camera/Camcorder;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camcorder;->hideVideoFrameAndStartPreview(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->toggleCamera()V

    return-void
.end method

.method static synthetic access$1900(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->videoSnapshot()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/Camera/Camcorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mThumbnailOrientation:I

    return v0
.end method

.method static synthetic access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/motorola/Camera/Camcorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput p1, p0, Lcom/motorola/Camera/Camcorder;->mThumbnailOrientation:I

    return p1
.end method

.method static synthetic access$2100(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->dismissToast()V

    return-void
.end method

.method static synthetic access$2200(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->acquireAndShowVideoFrame()V

    return-void
.end method

.method static synthetic access$2300(Lcom/motorola/Camera/Camcorder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/motorola/Camera/Camcorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->showPostRecordingAlert()V

    return-void
.end method

.method static synthetic access$2600(Lcom/motorola/Camera/Camcorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/motorola/Camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/motorola/Camera/Camcorder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camcorder;->zoomTo(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->stopSmoothZoom()V

    return-void
.end method

.method static synthetic access$2900(Lcom/motorola/Camera/Camcorder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    return-wide v0
.end method

.method static synthetic access$2902(Lcom/motorola/Camera/Camcorder;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-wide p1, p0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->startVideoRecording()V

    return-void
.end method

.method static synthetic access$3100(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->stopVideoRecordingAndDisplayDialog()V

    return-void
.end method

.method static synthetic access$3200(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->enableSlowMotion()V

    return-void
.end method

.method static synthetic access$3300(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->enableFastMotion()V

    return-void
.end method

.method static synthetic access$3400(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->enableMMSMode()V

    return-void
.end method

.method static synthetic access$3500(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->enableNormalVideoMode()V

    return-void
.end method

.method static synthetic access$3600(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->setCameraParameters()V

    return-void
.end method

.method static synthetic access$3702(Lcom/motorola/Camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/motorola/Camera/Camcorder;->mCaptureTimeLapse:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/motorola/Camera/Camcorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mTimeBetweenTimeLapseFrameCaptureMs:I

    return v0
.end method

.method static synthetic access$3802(Lcom/motorola/Camera/Camcorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput p1, p0, Lcom/motorola/Camera/Camcorder;->mTimeBetweenTimeLapseFrameCaptureMs:I

    return p1
.end method

.method static synthetic access$3900(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->enableWdr()V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->closeCamera()V

    return-void
.end method

.method static synthetic access$4002(Lcom/motorola/Camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainerShowing:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/motorola/Camera/Camcorder;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->updateTorch()V

    return-void
.end method

.method static synthetic access$4300(Lcom/motorola/Camera/Camcorder;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mSavingProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/motorola/Camera/Camcorder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mSavingVideoText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/motorola/Camera/Camcorder;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mSavingVideo:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/motorola/Camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/motorola/Camera/Camcorder;->mIsInternalSD:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/motorola/Camera/Camcorder;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/LocUtility;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/motorola/Camera/Camcorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$500(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/motorola/Camera/Camcorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/motorola/Camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z

    return p1
.end method

.method static synthetic access$5102(Lcom/motorola/Camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z

    return p1
.end method

.method static synthetic access$5200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/motorola/Camera/Camcorder;->WIND_NOISE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/motorola/Camera/Camcorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->batteryLevel:I

    return v0
.end method

.method static synthetic access$5302(Lcom/motorola/Camera/Camcorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput p1, p0, Lcom/motorola/Camera/Camcorder;->batteryLevel:I

    return p1
.end method

.method static synthetic access$5400(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->interruptThumbnailThread()V

    return-void
.end method

.method static synthetic access$5500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/motorola/Camera/Camcorder;Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;)Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->stopVideoRecording()V

    return-void
.end method

.method static synthetic access$5700(Lcom/motorola/Camera/Camcorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    return v0
.end method

.method static synthetic access$5702(Lcom/motorola/Camera/Camcorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput p1, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    return p1
.end method

.method static synthetic access$5800(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->checkExternalSDCardFirstTime()V

    return-void
.end method

.method static synthetic access$5900(Lcom/motorola/Camera/Camcorder;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V

    return-void
.end method

.method static synthetic access$6000(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->recycleVideoFrameBitmap()V

    return-void
.end method

.method static synthetic access$6100(Lcom/motorola/Camera/Camcorder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/motorola/Camera/Camcorder;->mLastValidMediaId:J

    return-wide v0
.end method

.method static synthetic access$6300(Lcom/motorola/Camera/Camcorder;)Landroid/media/MediaRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$6402(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder;->mLastValidFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6500(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->registerVideo()V

    return-void
.end method

.method static synthetic access$6600(Lcom/motorola/Camera/Camcorder;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/motorola/Camera/Camcorder;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$6702(Lcom/motorola/Camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/motorola/Camera/Camcorder;->mNeedCheckStorage:Z

    return p1
.end method

.method static synthetic access$700(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->updateScenesEffects()V

    return-void
.end method

.method static synthetic access$800(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->initializeRecorder()V

    return-void
.end method

.method static synthetic access$900(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->startPreview()V

    return-void
.end method

.method private acquireAndShowVideoFrame()V
    .locals 7

    .prologue
    const v6, 0x7f0d00a5

    const/16 v3, 0x81

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 4144
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    const-string v1, "acquireAndShowVideoFrame : Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4145
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4147
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamcorder"

    const-string v1, "acquireAndShowVideoFrame() - Removing show progress message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4148
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4151
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mSavingVideo:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mSavingVideo:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 4153
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mSavingVideo:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4157
    :cond_3
    iget-boolean v0, p0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_5

    .line 4159
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCamcorder"

    const-string v1, "acquireAndShowVideoFrame : ReviewTime is Zero"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4163
    :cond_4
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->interruptThumbnailThread()V

    .line 4164
    new-instance v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, p0, v1, v2}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;-><init>(Lcom/motorola/Camera/Camcorder;Landroid/graphics/Bitmap;Z)V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    .line 4165
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    invoke-virtual {v0}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->start()V

    .line 4192
    :goto_0
    return-void

    .line 4170
    :cond_5
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->recycleVideoFrameBitmap()V

    .line 4172
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    const-string v0, "MotoCamcorder"

    const-string v1, "acquireAndShowVideoFrame : calling createVideoThumbnail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4174
    :cond_6
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mLastValidFileName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    .line 4178
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->interruptThumbnailThread()V

    .line 4179
    new-instance v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, p0, v1, v5}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;-><init>(Lcom/motorola/Camera/Camcorder;Landroid/graphics/Bitmap;Z)V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    .line 4180
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    invoke-virtual {v0}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->start()V

    .line 4182
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_7

    const-string v0, "MotoCamcorder"

    const-string v1, "acquireAndShowVideoFrame : createVideoThumbnail returned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4184
    :cond_7
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    .line 4186
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    invoke-virtual {v2}, Lcom/motorola/Camera/View/CameraContentView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/CameraContentView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/CameraContentView;->getLeft()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->showPicsStill(Landroid/graphics/Bitmap;III)V

    .line 4187
    invoke-virtual {p0, v6}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4188
    invoke-virtual {p0, v6}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 4191
    :cond_8
    const-string v0, "MotoCamcorder"

    const-string v1, "acquireAndShowVideoFrame : Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private calculateServiceModeTimeandSize(II)V
    .locals 8
    .parameter "audioBitrate"
    .parameter "videoBitrate"

    .prologue
    const v6, 0x4b000

    .line 3525
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    const-string v4, "MotoCamcorder"

    const-string v5, "calculateServiceModeTime() Enter"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3527
    :cond_0
    const/4 v3, 0x0

    .line 3529
    .local v3, seconds:I
    const-string v4, "mms_maximum_message_size"

    invoke-static {v4, p0}, Lcom/motorola/contracts/messaging/Provider;->getSettingValue(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 3530
    .local v2, maxMMSSizeStrValue:Ljava/lang/String;
    if-nez v2, :cond_6

    .line 3531
    iput v6, p0, Lcom/motorola/Camera/Camcorder;->maxMMSSize:I

    .line 3542
    :goto_0
    add-int v4, p2, p1

    shr-int/lit8 v0, v4, 0x3

    .line 3544
    .local v0, bitrate:I
    iget-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v4, :cond_1

    .line 3546
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->getFileSizeFromIntent()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/motorola/Camera/Camcorder;->mFilesize:J

    .line 3549
    :cond_1
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    .line 3551
    iget v4, p0, Lcom/motorola/Camera/Camcorder;->maxMMSSize:I

    add-int/lit16 v4, v4, -0x3138

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/motorola/Camera/Camcorder;->mFilesize:J

    .line 3555
    :cond_2
    iget-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v4, :cond_3

    .line 3557
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->getDurationFromIntent()I

    move-result v3

    .line 3560
    :cond_3
    if-lez v3, :cond_7

    .line 3562
    mul-int/lit16 v4, v3, 0x3e8

    iput v4, p0, Lcom/motorola/Camera/Camcorder;->mTimeLimitMs:I

    .line 3570
    :cond_4
    :goto_1
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_5

    const-string v4, "MotoCamcorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateServiceModeTime() MMS Time limit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/Camera/Camcorder;->mTimeLimitMs:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " & file size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/motorola/Camera/Camcorder;->mFilesize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3571
    :cond_5
    return-void

    .line 3535
    .end local v0           #bitrate:I
    :cond_6
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/motorola/Camera/Camcorder;->maxMMSSize:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3537
    :catch_0
    move-exception v1

    .line 3538
    .local v1, e:Ljava/lang/NumberFormatException;
    iput v6, p0, Lcom/motorola/Camera/Camcorder;->maxMMSSize:I

    goto :goto_0

    .line 3564
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #bitrate:I
    :cond_7
    iget-wide v4, p0, Lcom/motorola/Camera/Camcorder;->mFilesize:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 3566
    iget-wide v4, p0, Lcom/motorola/Camera/Camcorder;->mFilesize:J

    int-to-long v6, v0

    div-long/2addr v4, v6

    long-to-int v4, v4

    mul-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lcom/motorola/Camera/Camcorder;->mTimeLimitMs:I

    goto :goto_1
.end method

.method private cancelRestartPreviewTimeout()V
    .locals 2

    .prologue
    .line 3965
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3966
    return-void
.end method

.method private cancelToast()V
    .locals 2

    .prologue
    .line 2621
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2622
    return-void
.end method

.method private checkExternalSDCardFirstTime()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 4700
    iget-boolean v5, p0, Lcom/motorola/Camera/Camcorder;->mIsSecurelyLockedModeVideoCaptureIntent:Z

    if-eqz v5, :cond_1

    .line 4701
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5, v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSDPlug(Z)V

    .line 4754
    :cond_0
    :goto_0
    return-void

    .line 4705
    :cond_1
    invoke-static {v7}, Lcom/motorola/Camera/CameraGlobalTools;->calcVideoTimeRemaining(Z)I

    move-result v3

    .line 4706
    .local v3, externalVideoRemainTime:I
    if-ltz v3, :cond_0

    .line 4707
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSDPlug(Z)V

    .line 4711
    iget-boolean v5, p0, Lcom/motorola/Camera/Camcorder;->mIsInternalSD:Z

    if-eqz v5, :cond_0

    if-lez v3, :cond_0

    .line 4713
    iput-boolean v7, p0, Lcom/motorola/Camera/Camcorder;->mNeedCheckStorage:Z

    .line 4714
    new-instance v4, Lcom/motorola/Camera/Camcorder$8;

    invoke-direct {v4, p0, v3}, Lcom/motorola/Camera/Camcorder$8;-><init>(Lcom/motorola/Camera/Camcorder;I)V

    .line 4726
    .local v4, okButtonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/motorola/Camera/Camcorder$9;

    invoke-direct {v1, p0}, Lcom/motorola/Camera/Camcorder$9;-><init>(Lcom/motorola/Camera/Camcorder;)V

    .line 4733
    .local v1, cancelButtonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/motorola/Camera/Camcorder$10;

    invoke-direct {v2, p0}, Lcom/motorola/Camera/Camcorder$10;-><init>(Lcom/motorola/Camera/Camcorder;)V

    .line 4740
    .local v2, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mStorageLocationAlert:Landroid/app/AlertDialog;

    if-eqz v5, :cond_2

    .line 4741
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mStorageLocationAlert:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 4744
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4745
    .local v0, alertBuilder:Landroid/app/AlertDialog$Builder;
    const v5, 0x1080027

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 4746
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b011e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4747
    const v5, 0x7f0b011f

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4748
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0121

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4749
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0120

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4750
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 4751
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/Camera/Camcorder;->mStorageLocationAlert:Landroid/app/AlertDialog;

    .line 4752
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mStorageLocationAlert:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 1251
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamcorder"

    const-string v2, "cleanupEmptyFile() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1254
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1255
    .local v0, f:Ljava/io/File;
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanupEmptyFile() file length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1259
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanupEmptyFile() - Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1263
    .end local v0           #f:Ljava/io/File;
    :cond_3
    return-void
.end method

.method private clearMessageQueue()V
    .locals 2

    .prologue
    .line 3070
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3071
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3576
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    const-string v1, "closeCamera() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3578
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 3600
    :cond_1
    :goto_0
    return-void

    .line 3583
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 3584
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 3585
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 3586
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isTorchSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 3588
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "flash"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3589
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3592
    :cond_3
    invoke-static {}, Lcom/motorola/Camera/CameraHolder;->instance()Lcom/motorola/Camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CameraHolder;->release()V

    .line 3594
    iput-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    .line 3595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z

    .line 3597
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->resetZoom()V

    .line 3599
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamcorder"

    const-string v1, "closeCamera() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createVideoPath()V
    .locals 18

    .prologue
    .line 3693
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 3695
    .local v5, dateTaken:J
    invoke-static {v5, v6}, Lcom/motorola/Camera/CameraGlobalTools;->createName(J)Ljava/lang/String;

    move-result-object v12

    .line 3696
    .local v12, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v15}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v4

    .line 3698
    .local v4, currentVideoMode:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v15}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v14

    .line 3699
    .local v14, vidResForProfile:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v15, :cond_0

    const-string v15, "QVGA"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    :cond_0
    const/16 v15, 0x9

    if-ne v4, v15, :cond_2

    .line 3701
    :cond_1
    const-string v14, "MMS"

    .line 3705
    :cond_2
    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/motorola/Camera/MotoCamcorderProfile;->getOutputFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3713
    .local v1, FileName:Ljava/lang/String;
    :goto_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3715
    .local v7, displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v15}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v11

    .line 3717
    .local v11, storageDirectory:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/dcim/Camera"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3718
    .local v3, cameraDirPath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3722
    .local v2, cameraDir:Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3729
    :cond_3
    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/dcim/Camera"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3731
    .local v9, filename:Ljava/lang/String;
    new-instance v13, Landroid/content/ContentValues;

    const/16 v15, 0x8

    invoke-direct {v13, v15}, Landroid/content/ContentValues;-><init>(I)V

    .line 3732
    .local v13, values:Landroid/content/ContentValues;
    const-string v15, "title"

    invoke-virtual {v13, v15, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3733
    const-string v15, "_display_name"

    invoke-virtual {v13, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3734
    const-string v15, "datetaken"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3735
    const-string v15, "mime_type"

    const-string v16, "video/3gpp"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3736
    const-string v15, "_data"

    invoke-virtual {v13, v15, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3737
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/motorola/Camera/MotoCamcorderProfile;->getFrameWidth(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/motorola/Camera/MotoCamcorderProfile;->getFrameHeight(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3738
    .local v10, resDimension:Ljava/lang/String;
    const-string v15, "MotoCamcorder"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "resDimension"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3739
    const-string v15, "resolution"

    invoke-virtual {v13, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3741
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    .line 3742
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 3743
    sget-boolean v15, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v15, :cond_4

    const-string v15, "MotoCamcorder"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "createVideoPath() - mCurrentVideoFilename : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3744
    :cond_4
    return-void

    .line 3707
    .end local v1           #FileName:Ljava/lang/String;
    .end local v2           #cameraDir:Ljava/io/File;
    .end local v3           #cameraDirPath:Ljava/lang/String;
    .end local v7           #displayName:Ljava/lang/String;
    .end local v9           #filename:Ljava/lang/String;
    .end local v10           #resDimension:Ljava/lang/String;
    .end local v11           #storageDirectory:Ljava/lang/String;
    .end local v13           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 3708
    .local v8, e:Ljava/lang/NullPointerException;
    const-string v1, ".3gp"

    .restart local v1       #FileName:Ljava/lang/String;
    goto/16 :goto_0

    .line 3724
    .end local v8           #e:Ljava/lang/NullPointerException;
    .restart local v2       #cameraDir:Ljava/io/File;
    .restart local v3       #cameraDirPath:Ljava/lang/String;
    .restart local v7       #displayName:Ljava/lang/String;
    .restart local v11       #storageDirectory:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 3726
    .local v8, e:Ljava/lang/SecurityException;
    sget-boolean v15, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v15, :cond_3

    const-string v15, "MotoCamcorder"

    const-string v16, "createVideoPath() - Failed to create camera directory"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private disableCallStateListener()V
    .locals 3

    .prologue
    .line 2598
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2599
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->callStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2600
    return-void
.end method

.method private dismissToast()V
    .locals 2

    .prologue
    .line 749
    const v1, 0x7f0d009d

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 750
    .local v0, v:Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 751
    const v1, 0x7f04000e

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 753
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 10
    .parameter "success"

    .prologue
    .line 4377
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 4379
    .local v5, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_c

    .line 4380
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_0

    const-string v7, "MotoCamcorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Camcorder:doReturnToCaller: success uri ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/Camera/Camcorder;->mLastValidUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4382
    :cond_0
    const/4 v4, -0x1

    .line 4384
    .local v4, resultCode:I
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mLastValidUri:Landroid/net/Uri;

    if-nez v7, :cond_2

    .line 4385
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_1

    const-string v7, "MotoCamcorder"

    const-string v8, "doReturnToCaller - mLastValidUri is null."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4386
    :cond_1
    const/4 v4, 0x0

    .line 4387
    invoke-virtual {p0, v4, v5}, Lcom/motorola/Camera/Camcorder;->setResult(ILandroid/content/Intent;)V

    .line 4389
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 4390
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    .line 4393
    :cond_2
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->getCaptureVideoUriFromIntent()Landroid/net/Uri;

    move-result-object v6

    .line 4395
    .local v6, videoUriFromIntent:Landroid/net/Uri;
    if-nez v6, :cond_4

    .line 4396
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mLastValidUri:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4444
    .end local v6           #videoUriFromIntent:Landroid/net/Uri;
    :cond_3
    :goto_0
    invoke-virtual {p0, v4, v5}, Lcom/motorola/Camera/Camcorder;->setResult(ILandroid/content/Intent;)V

    .line 4446
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 4447
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    .line 4448
    return-void

    .line 4398
    .restart local v6       #videoUriFromIntent:Landroid/net/Uri;
    :cond_4
    const/4 v2, 0x0

    .line 4399
    .local v2, inputStream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 4401
    .local v3, outputStream:Ljava/io/OutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v8, p0, Lcom/motorola/Camera/Camcorder;->mLastValidUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 4402
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_5

    const-string v7, "MotoCamcorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doReturnToCaller - inputStream.available() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4403
    :cond_5
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 4404
    if-nez v3, :cond_7

    .line 4405
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_6

    const-string v7, "MotoCamcorder"

    const-string v8, "doReturnToCaller - outputStream is null."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4406
    :cond_6
    const/4 v4, 0x0

    .line 4407
    invoke-virtual {p0, v4, v5}, Lcom/motorola/Camera/Camcorder;->setResult(ILandroid/content/Intent;)V

    .line 4409
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 4410
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    .line 4412
    :cond_7
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v7

    new-array v0, v7, [B

    .line 4413
    .local v0, data:[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 4414
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 4415
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 4416
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 4417
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4424
    if-eqz v2, :cond_8

    .line 4426
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4431
    :cond_8
    :goto_1
    if-eqz v3, :cond_3

    .line 4433
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 4434
    :catch_0
    move-exception v1

    .line 4435
    .local v1, ex:Ljava/io/IOException;
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_3

    const-string v7, "MotoCamcorder"

    const-string v8, "doReturnToCaller - Exception Ignore close exception for outputStream"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4427
    .end local v1           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 4428
    .restart local v1       #ex:Ljava/io/IOException;
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_8

    const-string v7, "MotoCamcorder"

    const-string v8, "doReturnToCaller - Exception Ignore close exception for inputStream"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4419
    .end local v0           #data:[B
    .end local v1           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 4420
    .restart local v1       #ex:Ljava/io/IOException;
    :try_start_3
    const-string v7, "MotoCamcorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doReturnToCaller - IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " when saving to uri="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4421
    const/4 v4, 0x0

    .line 4424
    if-eqz v2, :cond_9

    .line 4426
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 4431
    :cond_9
    :goto_2
    if-eqz v3, :cond_3

    .line 4433
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 4434
    :catch_3
    move-exception v1

    .line 4435
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_3

    const-string v7, "MotoCamcorder"

    const-string v8, "doReturnToCaller - Exception Ignore close exception for outputStream"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4427
    :catch_4
    move-exception v1

    .line 4428
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_9

    const-string v7, "MotoCamcorder"

    const-string v8, "doReturnToCaller - Exception Ignore close exception for inputStream"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4424
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v2, :cond_a

    .line 4426
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 4431
    :cond_a
    :goto_3
    if-eqz v3, :cond_b

    .line 4433
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 4436
    :cond_b
    :goto_4
    throw v7

    .line 4427
    :catch_5
    move-exception v1

    .line 4428
    .restart local v1       #ex:Ljava/io/IOException;
    sget-boolean v8, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v8, :cond_a

    const-string v8, "MotoCamcorder"

    const-string v9, "doReturnToCaller - Exception Ignore close exception for inputStream"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4434
    .end local v1           #ex:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 4435
    .restart local v1       #ex:Ljava/io/IOException;
    sget-boolean v8, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v8, :cond_b

    const-string v8, "MotoCamcorder"

    const-string v9, "doReturnToCaller - Exception Ignore close exception for outputStream"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4441
    .end local v1           #ex:Ljava/io/IOException;
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v3           #outputStream:Ljava/io/OutputStream;
    .end local v4           #resultCode:I
    .end local v6           #videoUriFromIntent:Landroid/net/Uri;
    :cond_c
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_d

    const-string v7, "MotoCamcorder"

    const-string v8, "Camcorder:doReturnToCaller: cancel"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4442
    :cond_d
    const/4 v4, 0x0

    .restart local v4       #resultCode:I
    goto/16 :goto_0
.end method

.method private enableCallStateListener()V
    .locals 3

    .prologue
    .line 2591
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamcorder"

    const-string v2, "enableCallStateListener()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    :cond_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2594
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->callStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2595
    return-void
.end method

.method private enableFastMotion()V
    .locals 6

    .prologue
    .line 977
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V

    .line 978
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v4

    .line 979
    :try_start_0
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/16 v5, 0xb

    invoke-virtual {v3, v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 980
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSensorVidResList()Ljava/lang/String;

    move-result-object v2

    .line 981
    .local v2, temp:Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 982
    .local v1, t:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v0, v1, v3

    .line 984
    .local v0, newVidResolution:Ljava/lang/String;
    const-string v3, "1280x720"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 985
    const-string v0, "1280x720"

    .line 987
    :cond_0
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3, v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 988
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 990
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->closeCamera()V

    .line 991
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/motorola/Camera/Camcorder;->hideVideoFrameAndStartPreview(Z)V

    .line 992
    return-void

    .line 988
    .end local v0           #newVidResolution:Ljava/lang/String;
    .end local v1           #t:[Ljava/lang/String;
    .end local v2           #temp:Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private enableMMSMode()V
    .locals 2

    .prologue
    .line 1007
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V

    .line 1008
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 1009
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const-string v1, "320x240"

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 1012
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->closeCamera()V

    .line 1014
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camcorder;->hideVideoFrameAndStartPreview(Z)V

    .line 1015
    return-void
.end method

.method private enableNormalVideoMode()V
    .locals 6

    .prologue
    .line 1019
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V

    .line 1020
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v4

    .line 1021
    :try_start_0
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 1022
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSensorVidResList()Ljava/lang/String;

    move-result-object v2

    .line 1023
    .local v2, temp:Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1024
    .local v1, t:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v0, v1, v3

    .line 1025
    .local v0, newVidResolution:Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3, v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 1026
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->closeCamera()V

    .line 1031
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/motorola/Camera/Camcorder;->hideVideoFrameAndStartPreview(Z)V

    .line 1032
    return-void

    .line 1026
    .end local v0           #newVidResolution:Ljava/lang/String;
    .end local v1           #t:[Ljava/lang/String;
    .end local v2           #temp:Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private enableSlowMotion()V
    .locals 2

    .prologue
    .line 996
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V

    .line 997
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 998
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const-string v1, "320x240"

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 1000
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->closeCamera()V

    .line 1002
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camcorder;->hideVideoFrameAndStartPreview(Z)V

    .line 1003
    return-void
.end method

.method private enableWdr()V
    .locals 7

    .prologue
    .line 1035
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V

    .line 1036
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v5

    .line 1037
    :try_start_0
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 1039
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSensorVidResList()Ljava/lang/String;

    move-result-object v2

    .line 1040
    .local v2, res:Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1041
    .local v3, t:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v0, v3, v4

    .line 1042
    .local v0, newVidResolution:Ljava/lang/String;
    const-string v4, "720p"

    invoke-static {v4}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1044
    .local v1, r720p:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1045
    move-object v0, v1

    .line 1047
    :cond_0
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4, v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 1048
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->closeCamera()V

    .line 1052
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/motorola/Camera/Camcorder;->hideVideoFrameAndStartPreview(Z)V

    .line 1053
    return-void

    .line 1048
    .end local v0           #newVidResolution:Ljava/lang/String;
    .end local v1           #r720p:Ljava/lang/String;
    .end local v2           #res:Ljava/lang/String;
    .end local v3           #t:[Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private getCaptureVideoUriFromIntent()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 4520
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4521
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 4523
    .local v1, myExtras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 4524
    const-string v2, "output"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 4526
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getDurationFromIntent()I
    .locals 4

    .prologue
    .line 4483
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4484
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 4486
    .local v1, seconds:I
    const-string v2, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4487
    const-string v2, "android.intent.extra.durationLimit"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4489
    :cond_0
    return v1
.end method

.method private getFileSizeFromIntent()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 4457
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 4458
    .local v2, intent:Landroid/content/Intent;
    const-wide/16 v0, 0x0

    .line 4461
    .local v0, filesize:J
    const-string v3, "max_recording_size"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4462
    const-string v3, "max_recording_size"

    invoke-virtual {v2, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 4464
    :cond_0
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_1

    .line 4465
    const-string v3, "MotoCamcorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camcorder:getFileSizeFromIntent:client set file size to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4467
    :cond_1
    const-string v3, "android.intent.extra.sizeLimit"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4468
    const-string v3, "android.intent.extra.sizeLimit"

    invoke-virtual {v2, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 4470
    :cond_2
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_3

    .line 4471
    const-string v3, "MotoCamcorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camcorder:getFileSizeFromIntent:client set file size to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4473
    :cond_3
    return-wide v0
.end method

.method private getResolutionFromIntent()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4499
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4500
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "320x240"

    .line 4502
    .local v1, resolution:Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSensorVidResList()Ljava/lang/String;

    move-result-object v3

    .line 4503
    .local v3, temp:Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4505
    .local v2, t:[Ljava/lang/String;
    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4507
    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 4509
    aget-object v1, v2, v6

    .line 4515
    :cond_0
    :goto_0
    return-object v1

    .line 4512
    :cond_1
    const-string v1, "320x240"

    goto :goto_0
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 6
    .parameter "deltaMs"

    .prologue
    .line 3687
    long-to-double v2, p1

    iget v4, p0, Lcom/motorola/Camera/Camcorder;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 3688
    .local v0, numberOfFrames:D
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/MotoCamcorderProfile;->getVideoFps(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private hidePostPanel()V
    .locals 2

    .prologue
    .line 3954
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 3955
    const-string v0, "MotoCamcorder"

    const-string v1, "Camcorder:hidePostPanel:hidePostPanel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3957
    :cond_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->cancelRestartPreviewTimeout()V

    .line 3959
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mPostPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 3960
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mPostPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3961
    :cond_1
    return-void
.end method

.method private hideVideoFrame()V
    .locals 2

    .prologue
    .line 4195
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->recycleVideoFrameBitmap()V

    .line 4196
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->removePicsStill()V

    .line 4197
    const v0, 0x7f0d00a5

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4198
    return-void
.end method

.method private hideVideoFrameAndStartPreview(Z)V
    .locals 3
    .parameter "startVF"

    .prologue
    const/4 v2, 0x1

    .line 4104
    iput v2, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    .line 4105
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mPostText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4107
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->hidePostPanel()V

    .line 4108
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->hideVideoFrame()V

    .line 4110
    if-eqz p1, :cond_0

    .line 4112
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->startPreview()V

    .line 4115
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->initializeRecorder()V

    .line 4119
    :cond_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->updateRemainCount()V

    .line 4123
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 4125
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->setVisibility(I)V

    .line 4126
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showTopStatusSet()V

    .line 4127
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->toggleMediaControlsVisibility()V

    .line 4128
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 4129
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCaptureCluster()V

    .line 4131
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v0, :cond_1

    .line 4132
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isCamcorderZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4133
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showZoomControlSet()V

    .line 4140
    :cond_1
    :goto_0
    return-void

    .line 4136
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideZoomControlSet(Z)V

    goto :goto_0
.end method

.method private declared-synchronized initializeRecorder()V
    .locals 20

    .prologue
    .line 1057
    monitor-enter p0

    :try_start_0
    sget-boolean v14, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v14, :cond_0

    const-string v14, "MotoCamcorder"

    const-string v15, "initializeRecorder() - Enter"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    .line 1061
    .local v12, state:Ljava/lang/String;
    const-string v14, "bad_removal"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1063
    const-string v14, "MotoCamcorder"

    const-string v15, "initializeRecorder() - bad removal of SD card, skip setting up recorder"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1222
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1068
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/motorola/Camera/Camcorder;->mPausing:Z

    if-nez v14, :cond_1

    .line 1072
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/motorola/Camera/Camcorder;->mIsInternalSD:Z

    invoke-static {v14}, Lcom/motorola/Camera/CameraGlobalTools;->hasStorage(Z)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1077
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->createVideoPath()V

    .line 1079
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    if-nez v14, :cond_4

    .line 1080
    sget-boolean v14, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v14, :cond_3

    const-string v14, "MotoCamcorder"

    const-string v15, "initializeRecorder() - Could not create videofile"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x38

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1057
    .end local v12           #state:Ljava/lang/String;
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 1085
    .restart local v12       #state:Ljava/lang/String;
    :cond_4
    const/4 v14, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorderStopped:Z

    .line 1087
    sget-boolean v14, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v14, :cond_5

    const-string v14, "MotoCamcorder"

    const-string v15, "initializeRecorder() - Creating new MediaRecorder"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_5
    new-instance v14, Landroid/media/MediaRecorder;

    invoke-direct {v14}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1090
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v14}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v4

    .line 1091
    .local v4, currentVideoMode:I
    const/16 v14, 0xb

    if-ne v4, v14, :cond_11

    .line 1093
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14}, Landroid/hardware/Camera;->lock()V

    .line 1094
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    .line 1095
    .local v10, params:Landroid/hardware/Camera$Parameters;
    const-string v14, "video-mode"

    sget-object v15, Lcom/motorola/Camera/CameraGlobalType;->videoModeSetting:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-virtual {v10, v14, v15}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14, v10}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14}, Landroid/hardware/Camera;->unlock()V

    .line 1116
    .end local v10           #params:Landroid/hardware/Camera$Parameters;
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1119
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v14}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isAudioMuted()Z

    move-result v6

    .line 1122
    .local v6, isMuteAudioOn:Z
    if-nez v6, :cond_7

    const/16 v14, 0xc

    if-eq v4, v14, :cond_7

    const/16 v14, 0xb

    if-eq v4, v14, :cond_7

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/motorola/Camera/Camcorder;->mCaptureTimeLapse:Z

    if-nez v14, :cond_7

    .line 1124
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1126
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1128
    const/4 v13, 0x0

    .line 1129
    .local v13, videoResforProfile:Ljava/lang/String;
    const/16 v14, 0x9

    if-eq v4, v14, :cond_8

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v14, :cond_14

    .line 1130
    :cond_8
    const-string v13, "MMS"

    .line 1136
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/motorola/Camera/MotoCamcorderProfile;->getProfile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1138
    sget-boolean v14, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v14, :cond_9

    .line 1139
    const-string v14, "MotoCamcorder"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "videoResforProfile:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v14, :cond_a

    const-string v14, "QVGA"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    :cond_a
    const/16 v14, 0x9

    if-ne v4, v14, :cond_c

    .line 1143
    :cond_b
    const-string v13, "MMS"

    .line 1148
    :cond_c
    if-nez v6, :cond_d

    const/16 v14, 0xc

    if-eq v4, v14, :cond_d

    const/16 v14, 0xb

    if-eq v4, v14, :cond_d

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/motorola/Camera/Camcorder;->mCaptureTimeLapse:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v14, :cond_d

    .line 1157
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    invoke-virtual {v14, v13}, Lcom/motorola/Camera/MotoCamcorderProfile;->getAudioSamplingRate(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v11

    .line 1165
    .local v11, samplingRate:I
    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v14}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isAudioScenesSupported()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->readChannelsforAudioScenes()I

    move-result v8

    .line 1166
    .local v8, numChannelsforAudioScenes:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    invoke-virtual {v14, v13}, Lcom/motorola/Camera/MotoCamcorderProfile;->getAudioChannels(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1167
    .local v9, numChannelsfromProfile:I
    if-lt v9, v8, :cond_17

    move v7, v8

    .line 1169
    .local v7, numChannels:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/motorola/Camera/MotoCamcorderProfile;->getAudioBitrate(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 1170
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v14, v7}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v14, v11}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 1175
    .end local v7           #numChannels:I
    .end local v8           #numChannelsforAudioScenes:I
    .end local v9           #numChannelsfromProfile:I
    .end local v11           #samplingRate:I
    :cond_d
    const-string v14, "MotoCamcorder"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "initializeRecorder() - set output file = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 1179
    const-wide/32 v2, 0x79999999

    .line 1181
    .local v2, MAX_ENCODED_FILE_SIZE:J
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-nez v14, :cond_e

    const/16 v14, 0x9

    if-ne v4, v14, :cond_19

    .line 1183
    :cond_e
    const-string v14, "MotoCamcorder"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "InitializeRecorder mTimeLimitMs"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/Camcorder;->mTimeLimitMs:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    move-object/from16 v0, p0

    iget v14, v0, Lcom/motorola/Camera/Camcorder;->mTimeLimitMs:I

    if-lez v14, :cond_f

    .line 1186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/Camcorder;->mTimeLimitMs:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1188
    :cond_f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mFilesize:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v14, v16, v18

    if-lez v14, :cond_18

    .line 1189
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mFilesize:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 1197
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/motorola/Camera/Camcorder;->mCaptureTimeLapse:Z

    if-eqz v14, :cond_10

    .line 1198
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide v16, 0x408f400000000000L

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/Camcorder;->mTimeBetweenTimeLapseFrameCaptureMs:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1199
    :cond_10
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1200
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v15}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 1201
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1205
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v14}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1213
    :goto_7
    :try_start_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v14}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v14

    if-eqz v14, :cond_1a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v15, 0x6

    if-ne v14, v15, :cond_1a

    .line 1220
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/motorola/Camera/View/Control/OnScreenController;->setCaptureResourceClickable(Z)V

    .line 1221
    sget-boolean v14, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v14, :cond_1

    const-string v14, "MotoCamcorder"

    const-string v15, "initializeRecorder() - Exit"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1099
    .end local v2           #MAX_ENCODED_FILE_SIZE:J
    .end local v6           #isMuteAudioOn:Z
    .end local v13           #videoResforProfile:Ljava/lang/String;
    :cond_11
    const/16 v14, 0xc

    if-ne v4, v14, :cond_12

    .line 1101
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14}, Landroid/hardware/Camera;->lock()V

    .line 1102
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    .line 1103
    .restart local v10       #params:Landroid/hardware/Camera$Parameters;
    const-string v14, "video-mode"

    sget-object v15, Lcom/motorola/Camera/CameraGlobalType;->videoModeSetting:[Ljava/lang/String;

    const/16 v16, 0x2

    aget-object v15, v15, v16

    invoke-virtual {v10, v14, v15}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14, v10}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14}, Landroid/hardware/Camera;->unlock()V

    goto/16 :goto_1

    .line 1107
    .end local v10           #params:Landroid/hardware/Camera$Parameters;
    :cond_12
    const/16 v14, 0x8

    if-eq v4, v14, :cond_13

    const/16 v14, 0x9

    if-eq v4, v14, :cond_13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/motorola/Camera/Camcorder;->mCaptureTimeLapse:Z

    if-eqz v14, :cond_6

    .line 1109
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14}, Landroid/hardware/Camera;->lock()V

    .line 1110
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    .line 1111
    .restart local v10       #params:Landroid/hardware/Camera$Parameters;
    const-string v14, "video-mode"

    sget-object v15, Lcom/motorola/Camera/CameraGlobalType;->videoModeSetting:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v10, v14, v15}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14, v10}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14}, Landroid/hardware/Camera;->unlock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 1132
    .end local v10           #params:Landroid/hardware/Camera$Parameters;
    .restart local v6       #isMuteAudioOn:Z
    .restart local v13       #videoResforProfile:Ljava/lang/String;
    :cond_14
    :try_start_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v14}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 1159
    :catch_0
    move-exception v5

    .line 1160
    .local v5, e:Ljava/lang/NullPointerException;
    sget-boolean v14, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v14, :cond_15

    const-string v14, "MotoCamcorder"

    const-string v16, "initializeRecorder() - Camcorder Profile not set. Defaulting sampling rate"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_15
    sget-object v14, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_CAPTURE_AUDIO_SAMPLINGRATE:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .restart local v11       #samplingRate:I
    goto/16 :goto_3

    .line 1165
    .end local v5           #e:Ljava/lang/NullPointerException;
    :cond_16
    const/4 v8, 0x2

    goto/16 :goto_4

    .restart local v8       #numChannelsforAudioScenes:I
    .restart local v9       #numChannelsfromProfile:I
    :cond_17
    move v7, v9

    .line 1167
    goto/16 :goto_5

    .line 1191
    .end local v8           #numChannelsforAudioScenes:I
    .end local v9           #numChannelsfromProfile:I
    .end local v11           #samplingRate:I
    .restart local v2       #MAX_ENCODED_FILE_SIZE:J
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide/32 v16, 0x79999999

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    goto/16 :goto_6

    .line 1199
    .end local v2           #MAX_ENCODED_FILE_SIZE:J
    .end local v6           #isMuteAudioOn:Z
    .end local v13           #videoResforProfile:Ljava/lang/String;
    :catchall_1
    move-exception v14

    monitor-exit v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1195
    .restart local v2       #MAX_ENCODED_FILE_SIZE:J
    .restart local v6       #isMuteAudioOn:Z
    .restart local v13       #videoResforProfile:Ljava/lang/String;
    :cond_19
    :try_start_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide/32 v16, 0x79999999

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_6

    .line 1207
    :catch_1
    move-exception v5

    .line 1209
    .local v5, e:Ljava/io/IOException;
    :try_start_c
    const-string v14, "MotoCamcorder"

    const-string v15, "initializeRecorder() - prepare failed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x39

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 1218
    .end local v5           #e:Ljava/io/IOException;
    :cond_1a
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/motorola/Camera/Camcorder;->mStatus:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_8
.end method

.method private interruptThumbnailThread()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4337
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    if-eqz v0, :cond_3

    .line 4339
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    monitor-enter v1

    .line 4340
    :try_start_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 4341
    const-string v0, "MotoCamcorder"

    const-string v2, "interruptThumbnailThread"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4343
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x48

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4344
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4345
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4351
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    invoke-virtual {v0}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4352
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    invoke-virtual {v0}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4357
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4358
    iput-object v3, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    .line 4360
    :cond_3
    return-void

    .line 4357
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 4354
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isPostPanelVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3969
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 3970
    const-string v1, "MotoCamcorder"

    const-string v2, "Camcorder:isPostPanelVisible:isPostPanelVisible"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3972
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mPostPanel:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    .line 3975
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mPostPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSecurelyLockedModeVideoCaptureIntent()Z
    .locals 3

    .prologue
    .line 4370
    const/4 v0, 0x0

    .line 4371
    .local v0, isSecurelyLocked:Z
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 4372
    .local v1, keyguardMgr:Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 4373
    return v0
.end method

.method private isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 4365
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4366
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isWebtopMode()Z
    .locals 2

    .prologue
    .line 3074
    new-instance v0, Lcom/motorola/webtop/WebtopManager;

    invoke-direct {v0, p0}, Lcom/motorola/webtop/WebtopManager;-><init>(Landroid/content/Context;)V

    .line 3075
    .local v0, wtm:Lcom/motorola/webtop/WebtopManager;
    invoke-virtual {v0}, Lcom/motorola/webtop/WebtopManager;->isWebtopMode()Z

    move-result v1

    return v1
.end method

.method private readChannelsforAudioScenes()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1226
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v5, :cond_0

    .line 1227
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/motorola/Camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    .line 1230
    :cond_0
    const/4 v2, 0x2

    .line 1231
    .local v2, numChannels:I
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v1

    .line 1233
    .local v1, currenscene:I
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getAudioScenesValues()Ljava/util/List;

    move-result-object v0

    .line 1235
    .local v0, AudioScenesValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_1

    const-string v5, "MotoCamcorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AudioSceneValues"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :cond_1
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "Channels"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1239
    .local v3, param:Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 1241
    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1242
    .local v4, temp:[Ljava/lang/String;
    if-eqz v4, :cond_2

    array-length v5, v4

    if-le v5, v8, :cond_2

    aget-object v5, v4, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1245
    .end local v4           #temp:[Ljava/lang/String;
    :cond_2
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_3

    const-string v5, "MotoCamcorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Num of Channels from AudioScene"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :cond_3
    return v2
.end method

.method private recycleVideoFrameBitmap()V
    .locals 2

    .prologue
    .line 4201
    const-string v0, "MotoCamcorder"

    const-string v1, "recycleVideoFrameBitmap : Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4202
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 4203
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    monitor-enter v1

    .line 4204
    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4205
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    .line 4209
    :cond_1
    const-string v0, "MotoCamcorder"

    const-string v1, "recycleVideoFrameBitmap : Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4210
    return-void

    .line 4205
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private registerVideo()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 3604
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_0

    const-string v7, "MotoCamcorder"

    const-string v8, "registerVideo() - Enter"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3606
    :cond_0
    const-string v7, "content://media/external/video/media"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 3608
    .local v5, videoTable:Landroid/net/Uri;
    if-nez v5, :cond_2

    .line 3609
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_1

    const-string v6, "MotoCamcorder"

    const-string v7, "registerVideo() - videoTable == null!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    :cond_1
    :goto_0
    return-void

    .line 3613
    :cond_2
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    if-eqz v7, :cond_c

    .line 3619
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mLastValidFileName:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3620
    .local v3, f:Ljava/io/File;
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "_size"

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3628
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/motorola/Camera/Camcorder;->mRecordingStartTime:J

    sub-long v0, v7, v9

    .line 3629
    .local v0, duration:J
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-lez v7, :cond_a

    .line 3630
    iget-boolean v7, p0, Lcom/motorola/Camera/Camcorder;->mCaptureTimeLapse:Z

    if-eqz v7, :cond_3

    .line 3631
    invoke-direct {p0, v0, v1}, Lcom/motorola/Camera/Camcorder;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    .line 3633
    :cond_3
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3639
    :goto_1
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    invoke-virtual {v7}, Lcom/motorola/Camera/LocUtility;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 3640
    .local v4, loc:Landroid/location/Location;
    :goto_2
    if-eqz v4, :cond_5

    .line 3642
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_4

    const-string v7, "MotoCamcorder"

    const-string v8, "registerVideo() - adding resolution, duration, lat, long"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3644
    :cond_4
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "latitude"

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3645
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "longitude"

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3656
    :cond_5
    :try_start_1
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_6

    const-string v7, "MotoCamcorder"

    const-string v8, "registerVideo() - Trying to insert..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    :cond_6
    if-eqz v5, :cond_7

    .line 3662
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "no_thumb"

    const-string v9, "true"

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 3665
    :cond_7
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v8, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/Camera/Camcorder;->mLastValidUri:Landroid/net/Uri;

    .line 3668
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mLastValidUri:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/motorola/Camera/Camcorder;->mLastValidMediaId:J

    .line 3669
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_8

    const-string v7, "MotoCamcorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " last media id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/motorola/Camera/Camcorder;->mLastValidMediaId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3677
    :cond_8
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_9

    const-string v7, "MotoCamcorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current video URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/Camera/Camcorder;->mLastValidUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3679
    :cond_9
    iput-object v6, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 3681
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_1

    const-string v6, "MotoCamcorder"

    const-string v7, "registerVideo() - Exit"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3622
    .end local v0           #duration:J
    .end local v3           #f:Ljava/io/File;
    .end local v4           #loc:Landroid/location/Location;
    :catch_0
    move-exception v2

    .line 3624
    .local v2, e:Ljava/lang/Exception;
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_1

    const-string v6, "MotoCamcorder"

    const-string v7, "registerVideo() - Failed to create mLastValidFileName"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3635
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #duration:J
    .restart local v3       #f:Ljava/io/File;
    :cond_a
    const-string v7, "MotoCamcorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Video duration <= 0 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    move-object v4, v6

    .line 3639
    goto/16 :goto_2

    .line 3650
    .end local v0           #duration:J
    .end local v3           #f:Ljava/io/File;
    :cond_c
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_1

    const-string v6, "MotoCamcorder"

    const-string v7, "mCurrentVideoValues == null!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3671
    .restart local v0       #duration:J
    .restart local v3       #f:Ljava/io/File;
    .restart local v4       #loc:Landroid/location/Location;
    :catch_1
    move-exception v2

    .line 3673
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v6, "MotoCamcorder"

    const-string v7, "registerVideo() - mContentResolver.insert failed, returning from function"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private releaseMediaRecorder()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1267
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamcorder"

    const-string v3, "releaseMediaRecorder() - Enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :cond_0
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1273
    :try_start_0
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCamcorder"

    const-string v3, "releaseMediaRecorder() - Waiting for MediaRecorder to init"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1279
    iput-object v4, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    .line 1283
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1285
    :try_start_1
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_3

    const-string v2, "MotoCamcorder"

    const-string v3, "releaseMediaRecorder() - Waiting for MediaRecorder to stop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :cond_3
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1294
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1296
    :try_start_2
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_5

    const-string v2, "MotoCamcorder"

    const-string v3, "releaseMediaRecorder() - Waiting for MediaRecorder to stop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :cond_5
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1305
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_9

    .line 1307
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_7

    .line 1308
    const-string v2, "MotoCamcorder"

    const-string v3, "Media recorder is not null!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    :cond_7
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 1312
    .local v1, state:Ljava/lang/String;
    const-string v2, "bad_removal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1314
    const-string v2, "MotoCamcorder"

    const-string v3, "releaseMediaRecorder() - Not called in bad removal state of media, ok to call empty file cleanup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->cleanupEmptyFile()V

    .line 1322
    :goto_3
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorderStopped:Z

    .line 1323
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->setCaptureResourceClickable(Z)V

    .line 1324
    :cond_8
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V

    .line 1325
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 1326
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1327
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1333
    .end local v1           #state:Ljava/lang/String;
    :cond_9
    :goto_4
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_a

    const-string v2, "MotoCamcorder"

    const-string v3, "releaseMediaRecorder() - Exit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_a
    return-void

    .line 1275
    :catch_0
    move-exception v0

    .line 1276
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_b

    const-string v2, "MotoCamcorder"

    const-string v3, "thread join interrupted for mRecInitThread thread"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :cond_b
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1279
    iput-object v4, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iput-object v4, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    throw v2

    .line 1288
    :catch_1
    move-exception v0

    .line 1289
    .restart local v0       #e:Ljava/lang/InterruptedException;
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_c

    const-string v2, "MotoCamcorder"

    const-string v3, "thread join interrupted for mStopRecording thread"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    :cond_c
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 1299
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 1300
    .restart local v0       #e:Ljava/lang/InterruptedException;
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_d

    const-string v2, "MotoCamcorder"

    const-string v3, "thread join interrupted for mStopRecording thread"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    :cond_d
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 1319
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #state:Ljava/lang/String;
    :cond_e
    const-string v2, "MotoCamcorder"

    const-string v3, "releaseMediaRecorder() - Bad removal of media, skipping file cleanup"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1328
    :catch_3
    move-exception v0

    .line 1329
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "MotoCamcorder"

    const-string v3, "releaseMediaRecorder() - reset failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private resetZoom()V
    .locals 2

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    if-eqz v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setDefaultZoomValue()V

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v0, :cond_1

    .line 1387
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateZoom(I)V

    .line 1389
    :cond_1
    return-void
.end method

.method private resetZoomDefault()V
    .locals 2

    .prologue
    .line 2275
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2276
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2277
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2280
    :cond_0
    return-void
.end method

.method private setCameraParameters()V
    .locals 29

    .prologue
    .line 3272
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_0

    const-string v24, "MotoCamcorder"

    const-string v25, "setCameraParameters() - Enter"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3274
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v4

    .line 3276
    .local v4, currentVideoMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 3279
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v26, v0

    const-string v24, "persist.sys.mot.encrypt.mmc"

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v24

    const/16 v27, 0x1

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_1b

    const/16 v24, 0x1

    :goto_0
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCamcorderAESProps(Z)V

    .line 3282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v24

    if-eqz v24, :cond_1c

    sget-boolean v16, Lcom/motorola/Camera/CameraGlobalType;->mShouldReadBackParams:Z

    .line 3283
    .local v16, shouldReadHAL:Z
    :goto_1
    if-nez v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxPicResolution()Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_2

    .line 3285
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/motorola/Camera/CameraUtility;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CameraUtility;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraUtility;->getCameraCapabilities(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 3287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v24

    if-eqz v24, :cond_1d

    .line 3288
    const/16 v24, 0x0

    sput-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->mShouldReadBackParams:Z

    .line 3294
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v24

    sput v24, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    .line 3295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v24

    sput-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->smoothZoomSupported:Z

    .line 3297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFocusModes()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_3

    .line 3298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFocusModes()Ljava/lang/String;

    move-result-object v24

    const-string v26, "continuous-video"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 3299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v26, "continuous-video"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 3304
    :cond_3
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_4

    .line 3305
    const-string v24, "MotoCamcorder"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "setCameraParameters() - max zoom is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget v27, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3306
    const-string v24, "MotoCamcorder"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "setCameraParameters() - SmoothZoomSupported is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-boolean v27, Lcom/motorola/Camera/CameraGlobalType;->smoothZoomSupported:Z

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3310
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v26, "mode"

    const-string v27, "video-mode"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3313
    sget-object v24, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_CAPTURE_AUDIO_BITRATE:Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3314
    .local v3, audioBitrate:I
    sget-object v24, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_CAPTURE_BITRATE:Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v21

    .line 3316
    .local v21, videoBitrate:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    move-object/from16 v24, v0

    const-string v26, "default"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getAudioBitrate(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    move-object/from16 v24, v0

    const-string v26, "default"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getVideoBitrate(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 3318
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/Camera/Camcorder;->mFailSafe:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3330
    :cond_5
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->loadAutoDetectValues()V

    .line 3332
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 3334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->getResolutionFromIntent()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setVideoResolutionService(Ljava/lang/String;)V

    .line 3337
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v23

    .line 3340
    .local v23, videoResolution:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v24

    const/16 v26, 0xc

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_20

    .line 3342
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_7

    const-string v24, "MotoCamcorder"

    const-string v26, "setCameraParameters() - setting our resolution to 320x240"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mVideoPreview:Lcom/motorola/Camera/View/CameraView;

    move-object/from16 v24, v0

    const/16 v26, 0x140

    const/16 v27, 0xf0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/CameraView;->setAspectRatio(II)V

    .line 3344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const/16 v26, 0x140

    const/16 v27, 0xf0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 3345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v26, "video-size"

    const-string v27, "320x240"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    const-string v26, "320x240"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 3381
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v24

    const/16 v26, 0xa

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isWdrForVideo()Z

    move-result v24

    if-eqz v24, :cond_26

    .line 3382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v26, "mot-wdr-video-mode"

    const-string v27, "on"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3395
    :goto_5
    :try_start_3
    const-string v20, ""

    .line 3396
    .local v20, vidResforProfile:Ljava/lang/String;
    if-nez v23, :cond_27

    .line 3397
    const-string v20, "default"

    .line 3402
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    const-string v24, "QVGA"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_9

    :cond_8
    const/16 v24, 0x9

    move/from16 v0, v24

    if-ne v4, v0, :cond_a

    .line 3404
    :cond_9
    const-string v20, "MMS"

    .line 3407
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isAudioMuted()Z

    move-result v24

    if-nez v24, :cond_b

    const/16 v24, 0xc

    move/from16 v0, v24

    if-eq v4, v0, :cond_b

    const/16 v24, 0xb

    move/from16 v0, v24

    if-ne v4, v0, :cond_28

    :cond_b
    const/4 v3, 0x0

    .line 3412
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getVideoBitrate(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 3414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v12

    .line 3415
    .local v12, range:Ljava/util/List;,"Ljava/util/List<[I>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getVideoFps(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 3416
    .local v22, videoFPS:Ljava/lang/Integer;
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 3417
    .local v8, it:Ljava/util/Iterator;,"Ljava/util/Iterator<[I>;"
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 3419
    .local v19, tempRange:[I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getDefaultMinFPS()I

    move-result v26

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_29

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 3420
    .local v11, minFPS:I
    :goto_8
    const/4 v10, 0x0

    .line 3422
    .local v10, maxFPS:I
    :cond_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_d

    .line 3424
    const-string v24, "MotoCamcorder"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Preview FPS rangeinloop"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x0

    aget v27, v19, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "-"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x1

    aget v27, v19, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3425
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .end local v19           #tempRange:[I
    check-cast v19, [I

    .line 3427
    .restart local v19       #tempRange:[I
    const/16 v24, 0x0

    aget v24, v19, v24

    move/from16 v0, v24

    if-ne v11, v0, :cond_c

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v26, 0x1

    aget v26, v19, v26

    move/from16 v0, v24

    move/from16 v1, v26

    if-gt v0, v1, :cond_c

    .line 3428
    const/16 v24, 0x1

    aget v10, v19, v24

    .line 3433
    :cond_d
    const-string v24, "MotoCamcorder"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Preview FPS range"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "-"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11, v10}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 3436
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_e

    .line 3437
    const-string v24, "MotoCamcorder"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " video resolution: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " video bitrate: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " audio nitrate: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " video fps: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getVideoFps(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3445
    .end local v8           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<[I>;"
    .end local v10           #maxFPS:I
    .end local v11           #minFPS:I
    .end local v12           #range:Ljava/util/List;,"Ljava/util/List<[I>;"
    .end local v19           #tempRange:[I
    .end local v20           #vidResforProfile:Ljava/lang/String;
    .end local v22           #videoFPS:Ljava/lang/Integer;
    :cond_e
    :goto_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setAudioBitrate(I)V

    .line 3446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setVideoBitrate(I)V

    .line 3447
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    move/from16 v24, v0

    if-nez v24, :cond_f

    const/16 v24, 0x9

    move/from16 v0, v24

    if-ne v4, v0, :cond_10

    .line 3449
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v3, v1}, Lcom/motorola/Camera/Camcorder;->calculateServiceModeTimeandSize(II)V

    .line 3453
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v26, "auto"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 3455
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->SHOW_ISO_SETTING:Z

    if-eqz v24, :cond_11

    .line 3457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v26, "mot-picture-iso"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentIsoValue()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3461
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxExpCompensationIndex()I

    move-result v24

    if-nez v24, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v24

    if-eqz v24, :cond_13

    .line 3462
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentExpValue()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3463
    .local v7, expIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 3466
    .end local v7           #expIndex:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isTorchSupported()Z

    move-result v24

    if-eqz v24, :cond_14

    .line 3468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v24

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_2a

    .line 3469
    const-string v24, "MotoCamcorder"

    const-string v26, "turning torch On"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v26, "flash-mode"

    const-string v27, "torch"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3479
    :cond_14
    :goto_a
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->camPremium:Z

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_17

    .line 3481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v15

    .line 3482
    .local v15, sceneMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isAudioScenesSupported()Z

    move-result v24

    if-nez v24, :cond_15

    .line 3483
    sget-object v24, Lcom/motorola/Camera/CameraGlobalType;->sceneSettingV:[Ljava/lang/String;

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v15, v0, :cond_15

    .line 3484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v24

    sget-object v26, Lcom/motorola/Camera/CameraGlobalType;->sceneSettingV:[Ljava/lang/String;

    aget-object v26, v26, v15

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_15

    .line 3485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    sget-object v26, Lcom/motorola/Camera/CameraGlobalType;->sceneSettingV:[Ljava/lang/String;

    aget-object v26, v26, v15

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 3487
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v13

    .line 3490
    .local v13, s4:Landroid/hardware/Camera$Size;
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_16

    const-string v24, "MotoCamcorder"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "4 - initializeRecorder() - Setting Video Size to {"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget v0, v13, Landroid/hardware/Camera$Size;->width:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget v0, v13, Landroid/hardware/Camera$Size;->height:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "}"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3495
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v14

    .line 3498
    .local v14, s5:Landroid/hardware/Camera$Size;
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_17

    const-string v24, "MotoCamcorder"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "5 - initializeRecorder() - Setting Video Size to {"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget v0, v14, Landroid/hardware/Camera$Size;->width:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget v0, v14, Landroid/hardware/Camera$Size;->height:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "}"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3504
    .end local v13           #s4:Landroid/hardware/Camera$Size;
    .end local v14           #s5:Landroid/hardware/Camera$Size;
    .end local v15           #sceneMode:I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedEffects()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedEffects()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_18

    .line 3506
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->updateEffects()V

    .line 3508
    :cond_18
    monitor-exit v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v24

    if-nez v24, :cond_19

    .line 3511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v25, "mot-video-scaling-readout"

    const-string v26, "off"

    invoke-virtual/range {v24 .. v26}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3515
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->setVideoStabilization()V

    .line 3517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    const/16 v25, 0x5a

    invoke-virtual/range {v24 .. v25}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 3519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3521
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_1a

    const-string v24, "MotoCamcorder"

    const-string v25, "setCameraParameters() - Exit"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    :cond_1a
    return-void

    .line 3279
    .end local v3           #audioBitrate:I
    .end local v16           #shouldReadHAL:Z
    .end local v21           #videoBitrate:I
    .end local v23           #videoResolution:Ljava/lang/String;
    :cond_1b
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 3282
    :cond_1c
    :try_start_5
    sget-boolean v16, Lcom/motorola/Camera/CameraGlobalType;->mShouldReadFrontParams:Z

    goto/16 :goto_1

    .line 3290
    .restart local v16       #shouldReadHAL:Z
    :cond_1d
    const/16 v24, 0x0

    sput-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->mShouldReadFrontParams:Z

    goto/16 :goto_2

    .line 3508
    .end local v16           #shouldReadHAL:Z
    :catchall_0
    move-exception v24

    monitor-exit v25
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v24

    .line 3320
    .restart local v3       #audioBitrate:I
    .restart local v16       #shouldReadHAL:Z
    .restart local v21       #videoBitrate:I
    :catch_0
    move-exception v6

    .line 3322
    .local v6, e:Ljava/lang/NullPointerException;
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/Camera/Camcorder;->mFailSafe:Z

    move/from16 v24, v0

    if-nez v24, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v26, 0x70

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3323
    :cond_1e
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/Camera/Camcorder;->mFailSafe:Z

    .line 3324
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_1f

    const-string v24, "MotoCamcorder"

    const-string v26, "Camacorder setup data missing. Defaulting to MMS video mode. BIG PROBLEM!!!"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3325
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    const-string v26, "320x240"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSensorVidResList(Ljava/lang/String;)V

    .line 3326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    const-string v26, "320x240"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setAESSensorVidResList(Ljava/lang/String;)V

    .line 3327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    const-string v26, "320x240"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 3328
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_5

    const-string v24, "MotoCamcorder"

    const-string v26, "setCurrentVideoRes = 320x240"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3348
    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v23       #videoResolution:Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v24

    const/16 v26, 0x9

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_22

    .line 3350
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_21

    const-string v24, "MotoCamcorder"

    const-string v26, "setCameraParameters() - setting our resolution to 320x240"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mVideoPreview:Lcom/motorola/Camera/View/CameraView;

    move-object/from16 v24, v0

    const/16 v26, 0x140

    const/16 v27, 0xf0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/CameraView;->setAspectRatio(II)V

    .line 3352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const/16 v26, 0x140

    const/16 v27, 0xf0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 3353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v26, "video-size"

    const-string v27, "320x240"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    const-string v26, "320x240"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3357
    :cond_22
    if-nez v23, :cond_24

    .line 3360
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 3361
    .local v5, display:Landroid/view/Display;
    invoke-static/range {p0 .. p0}, Lcom/motorola/Camera/CameraUtility;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CameraUtility;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraUtility;->getSortedListBasedOnLandscapeOrientation(Ljava/util/List;I)Ljava/util/List;

    move-result-object v9

    .line 3364
    .local v9, lv:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_23

    const-string v24, "MotoCamcorder"

    const-string v26, "setCameraParameters() - setting our resolution to max"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3365
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mVideoPreview:Lcom/motorola/Camera/View/CameraView;

    move-object/from16 v26, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v27, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v24, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/CameraView;->setAspectRatio(II)V

    .line 3366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v27, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v24, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 3367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    const-string v27, "video-size"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v28, "x"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3373
    .end local v5           #display:Landroid/view/Display;
    .end local v9           #lv:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_24
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_25

    const-string v24, "MotoCamcorder"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "setCameraParameters() - setting our resolution to "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    :cond_25
    invoke-static/range {v23 .. v23}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3375
    .local v18, temp:Ljava/lang/String;
    const-string v24, "x"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 3376
    .local v17, t:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mVideoPreview:Lcom/motorola/Camera/View/CameraView;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    aget-object v26, v17, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    const/16 v27, 0x1

    aget-object v27, v17, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/CameraView;->setAspectRatio(II)V

    .line 3377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    aget-object v26, v17, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    const/16 v27, 0x1

    aget-object v27, v17, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 3378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v26, "video-size"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v28, 0x0

    aget-object v28, v17, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "x"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x1

    aget-object v28, v17, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3385
    .end local v17           #t:[Ljava/lang/String;
    .end local v18           #temp:Ljava/lang/String;
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v26, "mot-wdr-video-mode"

    const-string v27, "off"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5

    .line 3399
    .restart local v20       #vidResforProfile:Ljava/lang/String;
    :cond_27
    move-object/from16 v20, v23

    goto/16 :goto_6

    .line 3407
    :cond_28
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getAudioBitrate(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto/16 :goto_7

    .line 3419
    .restart local v8       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<[I>;"
    .restart local v12       #range:Ljava/util/List;,"Ljava/util/List<[I>;"
    .restart local v19       #tempRange:[I
    .restart local v22       #videoFPS:Ljava/lang/Integer;
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getDefaultMinFPS()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1

    move-result v11

    goto/16 :goto_8

    .line 3440
    .end local v8           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<[I>;"
    .end local v12           #range:Ljava/util/List;,"Ljava/util/List<[I>;"
    .end local v19           #tempRange:[I
    .end local v20           #vidResforProfile:Ljava/lang/String;
    .end local v22           #videoFPS:Ljava/lang/Integer;
    :catch_1
    move-exception v6

    .line 3441
    .restart local v6       #e:Ljava/lang/NullPointerException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    sget-object v26, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_CAPTURE_FRAMERATE:Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto/16 :goto_9

    .line 3472
    .end local v6           #e:Ljava/lang/NullPointerException;
    :cond_2a
    const-string v24, "MotoCamcorder"

    const-string v26, " turning torch Off"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v26, "flash-mode"

    const-string v27, "off"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_a
.end method

.method private setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 3252
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamcorder"

    const-string v2, "setPreviewDisplay() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3266
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamcorder"

    const-string v2, "setPreviewDisplay() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    :cond_1
    :goto_0
    return-void

    .line 3258
    :catch_0
    move-exception v0

    .line 3260
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "MotoCamcorder"

    const-string v2, "setPreviewDisplay() -Failed to set Preview Display; Closing Camera"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->closeCamera()V

    .line 3262
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x38

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private setVideoStabilization()V
    .locals 2

    .prologue
    .line 4757
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4758
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoStabilization()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 4760
    :cond_0
    return-void
.end method

.method private showPostRecordingAlert()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 3935
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 3936
    const-string v2, "MotoCamcorder"

    const-string v3, "Camcorder:showPostRecordingAlert:showPostRecordingAlert"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3938
    :cond_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->cancelRestartPreviewTimeout()V

    .line 3941
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getReviewTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    .line 3942
    .local v0, reviewTime:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 3944
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mPostText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3945
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 3949
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getReviewTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3950
    return-void
.end method

.method private showStorageToast()V
    .locals 4

    .prologue
    .line 2553
    const/4 v0, 0x0

    .line 2554
    .local v0, noStorageText:Ljava/lang/String;
    iget-wide v2, p0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    long-to-int v1, v2

    .line 2555
    .local v1, remaining:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 2556
    const v2, 0x7f0b0011

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2562
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V

    .line 2563
    return-void

    .line 2557
    :cond_1
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 2558
    const v2, 0x7f0b0012

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 6
    .parameter "text"

    .prologue
    const/16 v5, 0x8a

    .line 2604
    if-nez p1, :cond_0

    .line 2618
    :goto_0
    return-void

    .line 2607
    :cond_0
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2611
    const v2, 0x7f0d009d

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/Camera/widget/RotateLayout;

    .line 2612
    .local v1, v:Lcom/motorola/Camera/widget/RotateLayout;
    const v2, 0x7f0d009e

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2613
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2614
    const/16 v2, 0x10e

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/RotateLayout;->setOrientation(I)V

    .line 2615
    const v2, 0x7f04000d

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2616
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/RotateLayout;->setVisibility(I)V

    .line 2617
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private startPreview()V
    .locals 10

    .prologue
    const/16 v9, 0x38

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3162
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    const-string v4, "MotoCamcorder"

    const-string v5, "startPreview() - Enter"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    :cond_0
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v4, :cond_2

    .line 3166
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_1

    const-string v4, "MotoCamcorder"

    const-string v5, "startPreview() - mCameraDevice = null, opening"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3172
    invoke-static {}, Lcom/motorola/Camera/CameraHolder;->instance()Lcom/motorola/Camera/CameraHolder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/motorola/Camera/CameraHolder;->open(I)Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3186
    :cond_2
    :goto_0
    iget-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z

    if-eqz v4, :cond_5

    .line 3248
    :cond_3
    :goto_1
    return-void

    .line 3174
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/motorola/Camera/CameraHolder;->instance()Lcom/motorola/Camera/CameraHolder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/motorola/Camera/CameraHolder;->open(I)Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3177
    :catch_0
    move-exception v0

    .line 3179
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "MotoCamcorder"

    const-string v5, "startPreview() - failed to open camera"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 3189
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_5
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v4, :cond_7

    .line 3190
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->lock()V

    .line 3192
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    new-instance v5, Lcom/motorola/Camera/Camcorder$MotoCameraErrorCallback;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/motorola/Camera/Camcorder$MotoCameraErrorCallback;-><init>(Lcom/motorola/Camera/Camcorder;Lcom/motorola/Camera/Camcorder$1;)V

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 3195
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v5, 0x5a

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 3197
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3199
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mZoomChangeListener:Lcom/motorola/Camera/Camcorder$MotoCameraOnZoomChangeListener;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 3202
    :cond_6
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v4}, Lcom/motorola/Camera/Camcorder;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 3204
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v4

    if-nez v4, :cond_9

    .line 3205
    invoke-static {p0}, Lcom/motorola/Camera/CameraUtility;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CameraUtility;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4, v8, v5}, Lcom/motorola/Camera/CameraUtility;->setCameraDisplayOrientation(ILandroid/hardware/Camera;)I

    .line 3209
    :goto_2
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->setCameraParameters()V

    .line 3210
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->loadSliderData()V

    .line 3213
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 3214
    .local v2, params:Landroid/hardware/Camera$Parameters;
    const-string v4, "video-mode"

    sget-object v5, Lcom/motorola/Camera/CameraGlobalType;->videoModeSetting:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3215
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3219
    :try_start_2
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V

    .line 3220
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 3244
    .end local v2           #params:Landroid/hardware/Camera$Parameters;
    :cond_7
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v4, :cond_8

    .line 3245
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->unlock()V

    .line 3247
    :cond_8
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_3

    const-string v4, "MotoCamcorder"

    const-string v5, "startPreview() - Exit"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3207
    :cond_9
    invoke-static {p0}, Lcom/motorola/Camera/CameraUtility;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CameraUtility;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4, v7, v5}, Lcom/motorola/Camera/CameraUtility;->setCameraDisplayOrientation(ILandroid/hardware/Camera;)I

    goto :goto_2

    .line 3222
    .restart local v2       #params:Landroid/hardware/Camera$Parameters;
    :catch_1
    move-exception v1

    .line 3224
    .local v1, ex:Ljava/lang/Throwable;
    const-string v4, "MotoCamcorder"

    const-string v5, "startPreview() - failed to start preview"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3229
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "mot-camera-sdm-disabled"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3231
    .local v3, sdmStatus:Ljava/lang/String;
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->closeCamera()V

    .line 3232
    if-eqz v3, :cond_a

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3233
    const-string v4, "MotoCamcorder"

    const-string v5, "startPreview() - sdm enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3235
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 3238
    :cond_a
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1
.end method

.method private startStopRecording()V
    .locals 4

    .prologue
    .line 2805
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2807
    iget-wide v0, p0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 2809
    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V

    .line 2825
    :cond_0
    :goto_0
    return-void

    .line 2813
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->rightSetFadeOut()V

    .line 2814
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->startVideoRecording()V

    goto :goto_0

    .line 2817
    :cond_2
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 2819
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->stopVideoRecordingAndDisplayDialog()V

    goto :goto_0

    .line 2821
    :cond_3
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2823
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private startVideoRecording()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3770
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    const-string v4, "MotoCamcorder"

    const-string v5, "startVideoRecording() - Enter"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3772
    :cond_0
    iget-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z

    if-eqz v4, :cond_1

    .line 3774
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v4, :cond_1

    .line 3776
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v4}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 3777
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 3778
    iput-boolean v7, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z

    .line 3782
    :cond_1
    iget-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainerShowing:Z

    if-eqz v4, :cond_2

    .line 3784
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3785
    iput-boolean v7, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainerShowing:Z

    .line 3786
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 3789
    :cond_2
    iget v4, p0, Lcom/motorola/Camera/Camcorder;->batteryLevel:I

    const/4 v5, 0x5

    if-gt v4, v5, :cond_5

    .line 3791
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_3

    const-string v4, "MotoCamcorder"

    const-string v5, "CAN NOT start recording due to Low Battery!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3792
    :cond_3
    const v4, 0x7f0b0146

    invoke-virtual {p0, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V

    .line 3793
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4, v7}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordButton(Z)V

    .line 3913
    :cond_4
    :goto_0
    return-void

    .line 3797
    :cond_5
    iget v4, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    if-ne v4, v8, :cond_d

    .line 3800
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideSceneDialog()V

    .line 3802
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isCamcorderZoomSupported()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3804
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->showZoomControlSet()V

    .line 3807
    :cond_6
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideRightSet()V

    .line 3813
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isAudioScenesSupported()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3814
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->setAudioSceneParameter()V

    .line 3817
    :cond_7
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->updateCodecAndFileFormatFromIntent()V

    .line 3819
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v4, :cond_8

    .line 3821
    const-string v4, "MotoCamcorder"

    const-string v5, "startVideoRecording() - Media recorder was never initialized... Trying to init now"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3823
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V

    .line 3826
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->initializeRecorder()V

    .line 3831
    :cond_8
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3834
    :try_start_0
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_9

    const-string v4, "MotoCamcorder"

    const-string v5, "startVideoRecording() - Waiting for recorder to initialize"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3835
    :cond_9
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3843
    :cond_a
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 3844
    .local v2, mContext:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.music.musicservicecommand"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3845
    .local v1, i:Landroid/content/Intent;
    const-string v4, "command"

    const-string v5, "pause"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3846
    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3851
    :try_start_1
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterToneOn()Z

    move-result v4

    if-nez v4, :cond_c

    .line 3853
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v4, :cond_b

    .line 3854
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/motorola/Camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    .line 3856
    :cond_b
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    const/4 v5, 0x7

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 3859
    :cond_c
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 3860
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 3861
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->start()V

    .line 3866
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorderStopped:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3883
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isAudioZoomOn()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 3884
    const-string v4, "MicZoomON"

    invoke-virtual {p0, v4}, Lcom/motorola/Camera/Camcorder;->setAudioZoomParameter(Ljava/lang/String;)V

    .line 3890
    :goto_2
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v3

    .line 3897
    .local v3, mCurrentScenes:I
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4, v8}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordButton(Z)V

    .line 3898
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/motorola/Camera/Camcorder;->mRecordingStartTime:J

    .line 3900
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4, v7, v8}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideResolutionTextIcon(ZZ)V

    .line 3901
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->showVStabImage()V

    .line 3902
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 3903
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget-wide v5, p0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordingTime(JI)V

    .line 3904
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4, v8}, Lcom/motorola/Camera/View/Control/OnScreenController;->showRecordingTime(Z)V

    .line 3907
    iput v9, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    .line 3908
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 3909
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x29

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3912
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #mContext:Landroid/content/Context;
    .end local v3           #mCurrentScenes:I
    :cond_d
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_4

    const-string v4, "MotoCamcorder"

    const-string v5, "startVideoRecording() - Exit"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3836
    :catch_0
    move-exception v0

    .line 3837
    .local v0, e:Ljava/lang/InterruptedException;
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_e

    const-string v4, "MotoCamcorder"

    const-string v5, "thread join interrupted for mRecInitThread thread"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3838
    :cond_e
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 3869
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #i:Landroid/content/Intent;
    .restart local v2       #mContext:Landroid/content/Context;
    :catch_1
    move-exception v0

    .line 3871
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "MotoCamcorder"

    const-string v5, "startVideoRecording() - Could not start media recorder. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3872
    iput v7, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    .line 3874
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 3875
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    goto/16 :goto_0

    .line 3887
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_f
    const-string v4, "MicZoomOFF"

    invoke-virtual {p0, v4}, Lcom/motorola/Camera/Camcorder;->setAudioZoomParameter(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private stopSmoothZoom()V
    .locals 4

    .prologue
    .line 756
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Zoom adjusting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_0
    iget v1, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    :cond_1
    iget-boolean v1, p0, Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z

    if-eqz v1, :cond_6

    .line 759
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 761
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->lock()V

    .line 768
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Previewing: + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_3
    iget-boolean v1, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z

    if-eqz v1, :cond_4

    .line 771
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopSmoothZoom()V

    .line 773
    :cond_4
    iget-boolean v1, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorderStopped:Z

    if-eqz v1, :cond_5

    .line 774
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->unlock()V

    .line 776
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z

    .line 778
    :cond_6
    return-void

    .line 762
    :catch_0
    move-exception v0

    .line 763
    .local v0, ex:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private stopVideoRecording()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3980
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 3981
    const-string v0, "MotoCamcorder"

    const-string v1, "stopVideoRecording() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3983
    const-string v0, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopVideoRecording() - mMediaRecorder :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3984
    const-string v0, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopVideoRecording() - mStatus :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3990
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorderStopped:Z

    .line 3992
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_4

    .line 3994
    :cond_1
    invoke-virtual {p0, v3}, Lcom/motorola/Camera/Camcorder;->camcordermuteonoff(Z)V

    .line 3996
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCamcorder"

    const-string v1, "stopVideoRecording() - starting mStopRecordingThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3998
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/motorola/Camera/Camcorder$6;

    invoke-direct {v1, p0}, Lcom/motorola/Camera/Camcorder$6;-><init>(Lcom/motorola/Camera/Camcorder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    .line 4033
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4034
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4035
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordButton(Z)V

    .line 4036
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideCaptureCluster()V

    .line 4038
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isSDEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4040
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/motorola/Camera/Camcorder$7;

    invoke-direct {v1, p0}, Lcom/motorola/Camera/Camcorder$7;-><init>(Lcom/motorola/Camera/Camcorder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4096
    :cond_3
    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    .line 4099
    :cond_4
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_5

    const-string v0, "MotoCamcorder"

    const-string v1, "stopVideoRecording() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4100
    :cond_5
    return-void
.end method

.method private stopVideoRecordingAndDisplayDialog()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 3917
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    const-string v1, "Camcorder:stopVideoRecordingAndDisplayDialog:stopVideoRecordingAndDisplayDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3918
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 3921
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v4, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideLocationTags(ZZ)V

    .line 3922
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v4, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideResolutionTextIcon(ZZ)V

    .line 3924
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideVStabImage()V

    .line 3925
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->setShowRemainTime(Z)V

    .line 3926
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget-wide v1, p0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordingTime(JI)V

    .line 3927
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 3928
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideZoomControlSet(Z)V

    .line 3929
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->stopVideoRecording()V

    .line 3931
    :cond_1
    return-void
.end method

.method private toggleCamera()V
    .locals 9

    .prologue
    const/16 v8, 0x34

    const/4 v7, 0x0

    .line 903
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 907
    :try_start_0
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    const-string v4, "MotoCamcorder"

    const-string v5, "toggleCamera() - Waiting for recording to stop"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_0
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4, v7}, Lcom/motorola/Camera/View/Control/OnScreenController;->setCaptureResourceClickable(Z)V

    .line 916
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V

    .line 917
    iput v7, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    .line 919
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->closeCamera()V

    .line 922
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->toggleCamSetting()Z

    move-result v4

    if-nez v4, :cond_3

    .line 973
    :goto_1
    return-void

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, e:Ljava/lang/InterruptedException;
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_2

    const-string v4, "MotoCamcorder"

    const-string v5, "thread join interrupted for mStopRecording thread"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 925
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_4

    const-string v4, "MotoCamcorder"

    const-string v5, "Came settings toggled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_4
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v5

    .line 930
    :try_start_1
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 931
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mCaptureTimeLapse:Z

    .line 932
    const/4 v4, 0x0

    iput v4, p0, Lcom/motorola/Camera/Camcorder;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 933
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentTimeLapse(I)V

    .line 934
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 935
    iput-boolean v7, p0, Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z

    .line 938
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mVideoPreview:Lcom/motorola/Camera/View/CameraView;

    invoke-virtual {v4, v7}, Lcom/motorola/Camera/View/CameraView;->setVisibility(I)V

    .line 940
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->startPreview()V

    .line 941
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v4, :cond_6

    .line 942
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_5

    const-string v4, "MotoCamcorder"

    const-string v5, "toggleCamera() - startPreview failed, just return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_5
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x38

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 934
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 949
    :cond_6
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v5

    .line 952
    :try_start_3
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v4

    if-nez v4, :cond_7

    .line 954
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSensorVidResList()Ljava/lang/String;

    move-result-object v3

    .line 955
    .local v3, temp:Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 956
    .local v2, t:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v1, v2, v4

    .line 957
    .local v1, newVidResolution:Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 959
    .end local v1           #newVidResolution:Ljava/lang/String;
    .end local v2           #t:[Ljava/lang/String;
    .end local v3           #temp:Ljava/lang/String;
    :cond_7
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 960
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v4, :cond_8

    .line 961
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 962
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 964
    :cond_8
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    sget v5, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-virtual {v4, v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->setZoomBarMax(I)V

    .line 966
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 967
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 968
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->showZoomControlSet()V

    .line 969
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4, v7}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordButton(Z)V

    .line 970
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4, v7}, Lcom/motorola/Camera/View/Control/OnScreenController;->setDialogStatus(I)V

    .line 971
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->updateRemainCount()V

    .line 972
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateSwitchCameraUI(Z)V

    goto/16 :goto_1

    .line 959
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4
.end method

.method private updateCodecAndFileFormatFromIntent()V
    .locals 4

    .prologue
    .line 4531
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4532
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Codec"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4534
    const-string v1, "Codec"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCodec:Ljava/lang/String;

    .line 4535
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 4536
    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camcorder:updateCodecAndFileFormatFromIntent:client set codec, codec = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCodec:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4537
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCodec:Ljava/lang/String;

    const-string v2, "AMR/MPEG4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCodec:Ljava/lang/String;

    const-string v2, "AAC/MPEG4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCodec:Ljava/lang/String;

    const-string v2, "QCELP/MPEG4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4551
    :cond_1
    :goto_0
    const-string v1, "File.Format"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4552
    const-string v1, "File.Format"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/Camcorder;->mFileFormat:Ljava/lang/String;

    .line 4553
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 4554
    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camcorder:updateCodecAndFileFormatFromIntent:client set file format, file format ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mFileFormat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4557
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCodec:Ljava/lang/String;

    const-string v2, "3gp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCodec:Ljava/lang/String;

    const-string v2, "mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCodec:Ljava/lang/String;

    const-string v2, "3g2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4574
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCodec:Ljava/lang/String;

    const-string v2, "QCELP/MPEG4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4575
    const-string v1, "3g2"

    iput-object v1, p0, Lcom/motorola/Camera/Camcorder;->mFileFormat:Ljava/lang/String;

    .line 4578
    :cond_4
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_5

    .line 4579
    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camcorder:updateCodecAndFileFormatFromIntent:final:codec ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCodec:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " file format ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mFileFormat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4580
    :cond_5
    return-void

    .line 4541
    :cond_6
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_7

    .line 4542
    const-string v1, "MotoCamcorder"

    const-string v2, "Camcorder:updateCodecAndFileFormatFromIntent:client not set a valid codec, use default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4543
    :cond_7
    const-string v1, "AMR/MPEG4"

    iput-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCodec:Ljava/lang/String;

    goto/16 :goto_0

    .line 4546
    :cond_8
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_9

    .line 4547
    const-string v1, "MotoCamcorder"

    const-string v2, "Camcorder:updateCodecAndFileFormatFromIntent:client not set codec, use default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4548
    :cond_9
    const-string v1, "AMR/MPEG4"

    iput-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCodec:Ljava/lang/String;

    goto/16 :goto_0

    .line 4561
    :cond_a
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_b

    .line 4562
    const-string v1, "MotoCamcorder"

    const-string v2, "Camcorder:updateCodecAndFileFormatFromIntent:client not set a valid codec, use default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4564
    :cond_b
    const-string v1, "3gp"

    iput-object v1, p0, Lcom/motorola/Camera/Camcorder;->mFileFormat:Ljava/lang/String;

    goto :goto_1

    .line 4567
    :cond_c
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_d

    .line 4568
    const-string v1, "MotoCamcorder"

    const-string v2, "Camcorder:updateCodecAndFileFormatFromIntent:client not set file format, use default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4570
    :cond_d
    const-string v1, "3gp"

    iput-object v1, p0, Lcom/motorola/Camera/Camcorder;->mFileFormat:Ljava/lang/String;

    goto :goto_1
.end method

.method private updateRecordTime()V
    .locals 22

    .prologue
    .line 4586
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 4587
    .local v11, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mRecordingStartTime:J

    move-wide/from16 v18, v0

    sub-long v9, v11, v18

    .line 4588
    .local v9, delta:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v8

    .line 4589
    .local v8, currentVideoMode:I
    const-wide/16 v13, 0x0

    .line 4591
    .local v13, remainseconds:J
    const-string v17, ""

    .line 4593
    .local v17, text:Ljava/lang/String;
    const-wide/16 v3, 0x258

    .line 4594
    .local v3, EncryptionEnabledTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v3

    if-lez v18, :cond_0

    move-wide v5, v3

    .line 4596
    .local v5, Encryptionmodemax:J
    :goto_0
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    .line 4598
    .local v15, serviceModeMaxSeconds:J
    const/16 v18, 0xc

    move/from16 v0, v18

    if-ne v8, v0, :cond_3

    .line 4600
    sget-object v18, Lcom/motorola/Camera/CameraGlobalType;->VIDEO_CAPTURE_SLOW_MOTION_FRAMERATE:Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sget-object v19, Lcom/motorola/Camera/CameraGlobalType;->VIDEO_CAPTURE_FRAMERATE:Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    div-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v18, v18, v9

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 4601
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 4602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isSDEncryptionEnabled()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 4603
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v18, v0

    sub-long v13, v5, v18

    .line 4606
    :goto_1
    const-wide/16 v18, 0x1e

    cmp-long v18, v13, v18

    if-gtz v18, :cond_2

    const/high16 v7, -0x1

    .line 4655
    .local v7, color:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/motorola/Camera/View/Control/OnScreenController;->showRemainTime()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 4656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14, v7}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordingTime(JI)V

    .line 4666
    :goto_3
    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-gtz v18, :cond_13

    .line 4668
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->stopVideoRecordingAndDisplayDialog()V

    .line 4678
    :goto_4
    return-void

    .line 4594
    .end local v5           #Encryptionmodemax:J
    .end local v7           #color:I
    .end local v15           #serviceModeMaxSeconds:J
    :cond_0
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    goto :goto_0

    .line 4605
    .restart local v5       #Encryptionmodemax:J
    .restart local v15       #serviceModeMaxSeconds:J
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v20, v0

    sub-long v13, v18, v20

    goto :goto_1

    .line 4606
    :cond_2
    const/4 v7, -0x1

    goto :goto_2

    .line 4608
    :cond_3
    const/16 v18, 0xb

    move/from16 v0, v18

    if-ne v8, v0, :cond_6

    .line 4611
    const-wide/16 v18, 0x4

    div-long v18, v9, v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 4612
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 4613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isSDEncryptionEnabled()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 4614
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v18, v0

    sub-long v13, v5, v18

    .line 4617
    :goto_5
    const-wide/16 v18, 0x3

    cmp-long v18, v13, v18

    if-gtz v18, :cond_5

    const/high16 v7, -0x1

    .restart local v7       #color:I
    :goto_6
    goto :goto_2

    .line 4616
    .end local v7           #color:I
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v20, v0

    sub-long v13, v18, v20

    goto :goto_5

    .line 4617
    :cond_5
    const/4 v7, -0x1

    goto :goto_6

    .line 4619
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    move/from16 v18, v0

    if-nez v18, :cond_7

    const/16 v18, 0x9

    move/from16 v0, v18

    if-ne v8, v0, :cond_b

    .line 4621
    :cond_7
    const-wide/16 v18, 0x3e8

    div-long v18, v9, v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 4622
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/Camcorder;->mTimeLimitMs:I

    move/from16 v18, v0

    if-lez v18, :cond_8

    .line 4623
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/Camcorder;->mTimeLimitMs:I

    move/from16 v20, v0

    move/from16 v0, v20

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-lez v18, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/Camcorder;->mTimeLimitMs:I

    move/from16 v18, v0

    move/from16 v0, v18

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v15, v0

    .line 4625
    :cond_8
    :goto_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v18, v0

    sub-long v13, v15, v18

    .line 4626
    const-wide/16 v18, 0xa

    cmp-long v18, v13, v18

    if-gtz v18, :cond_a

    const/high16 v7, -0x1

    .restart local v7       #color:I
    :goto_8
    goto/16 :goto_2

    .line 4623
    .end local v7           #color:I
    :cond_9
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    goto :goto_7

    .line 4626
    :cond_a
    const/4 v7, -0x1

    goto :goto_8

    .line 4629
    :cond_b
    const/16 v18, 0xd

    move/from16 v0, v18

    if-ne v8, v0, :cond_e

    .line 4631
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/motorola/Camera/Camcorder;->getTimeLapseVideoLength(J)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 4632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isSDEncryptionEnabled()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 4633
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v18, v0

    sub-long v13, v5, v18

    .line 4640
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/motorola/Camera/Camcorder;->getTimeLapseVideoLength(J)J

    move-result-wide v18

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/motorola/Camera/CameraGlobalTools;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v17

    .line 4642
    const-wide/16 v18, 0xa

    cmp-long v18, v13, v18

    if-gtz v18, :cond_d

    const/high16 v7, -0x1

    .restart local v7       #color:I
    :goto_a
    goto/16 :goto_2

    .line 4635
    .end local v7           #color:I
    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v20, v0

    sub-long v13, v18, v20

    goto :goto_9

    .line 4642
    :cond_d
    const/4 v7, -0x1

    goto :goto_a

    .line 4646
    :cond_e
    const-wide/16 v18, 0x3e8

    div-long v18, v9, v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 4647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isSDEncryptionEnabled()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 4648
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v18, v0

    sub-long v13, v5, v18

    .line 4651
    :goto_b
    const-wide/16 v18, 0xa

    cmp-long v18, v13, v18

    if-gtz v18, :cond_10

    const/high16 v7, -0x1

    .restart local v7       #color:I
    :goto_c
    goto/16 :goto_2

    .line 4650
    .end local v7           #color:I
    :cond_f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v20, v0

    sub-long v13, v18, v20

    goto :goto_b

    .line 4651
    :cond_10
    const/4 v7, -0x1

    goto :goto_c

    .line 4658
    .restart local v7       #color:I
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/Camera/Camcorder;->mCaptureTimeLapse:Z

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 4659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordingTime(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 4661
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2, v7}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordingTime(JI)V

    goto/16 :goto_3

    .line 4672
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/Camera/Camcorder;->mCaptureTimeLapse:Z

    move/from16 v18, v0

    if-nez v18, :cond_14

    .line 4673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x29

    const-wide/16 v20, 0x3e8

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4675
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/Camcorder;->mTimeBetweenTimeLapseFrameCaptureMs:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4
.end method

.method private updateRemainCount()V
    .locals 9

    .prologue
    const v8, 0x7f0b012b

    const/4 v4, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4215
    const/4 v1, 0x0

    .line 4216
    .local v1, errorMessage:Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2, v6}, Lcom/motorola/Camera/View/Control/OnScreenController;->showRecordingTime(Z)V

    .line 4218
    sget-boolean v2, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    if-eqz v2, :cond_14

    .line 4220
    invoke-static {v5}, Lcom/motorola/Camera/CameraGlobalTools;->calcVideoTimeRemaining(Z)I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    .line 4221
    invoke-static {v6}, Lcom/motorola/Camera/CameraGlobalTools;->calcVideoTimeRemaining(Z)I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    .line 4223
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    if-eq v2, v7, :cond_0

    iget v2, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    if-ge v2, v5, :cond_3

    .line 4225
    :cond_0
    invoke-static {v5}, Lcom/motorola/Camera/CameraGlobalTools;->setStorageState(I)V

    .line 4236
    :goto_0
    const/4 v2, 0x4

    iput v2, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    .line 4238
    iget-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mIsInternalSD:Z

    if-eqz v2, :cond_b

    .line 4239
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    .line 4240
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    if-ne v2, v7, :cond_8

    .line 4242
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    if-ne v2, v7, :cond_6

    .line 4243
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b012c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4244
    iput v6, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    .line 4245
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    .line 4312
    :cond_1
    :goto_1
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    packed-switch v2, :pswitch_data_0

    .line 4325
    :goto_2
    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V

    .line 4331
    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    .line 4332
    .local v0, currentVideoMode:I
    return-void

    .line 4227
    .end local v0           #currentVideoMode:I
    :cond_3
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    if-eq v2, v7, :cond_4

    iget v2, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    if-ge v2, v5, :cond_5

    .line 4229
    :cond_4
    invoke-static {v4}, Lcom/motorola/Camera/CameraGlobalTools;->setStorageState(I)V

    goto :goto_0

    .line 4233
    :cond_5
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->setStorageState(I)V

    goto :goto_0

    .line 4246
    :cond_6
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    if-ge v2, v5, :cond_7

    .line 4248
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4249
    iput v6, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    goto :goto_1

    .line 4252
    :cond_7
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b012a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4253
    iput v4, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    goto :goto_1

    .line 4256
    :cond_8
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    if-ge v2, v5, :cond_1

    .line 4258
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    if-ne v2, v7, :cond_9

    .line 4259
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b012e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4260
    iput v6, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    goto :goto_1

    .line 4261
    :cond_9
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    if-ge v2, v5, :cond_a

    .line 4263
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4264
    iput v6, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    goto :goto_1

    .line 4267
    :cond_a
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b012a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4268
    iput v4, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    goto :goto_1

    .line 4272
    :cond_b
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    .line 4273
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_c

    const-string v2, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "external externalVideolengthRemaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4274
    :cond_c
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    if-ne v2, v7, :cond_11

    .line 4277
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    if-ne v2, v7, :cond_f

    .line 4278
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b012c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4279
    iput v6, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    .line 4280
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    .line 4307
    :cond_d
    :goto_4
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_e

    const-string v2, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "internalVideolengthRemaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4308
    :cond_e
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "errorCase ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4281
    :cond_f
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    if-ge v2, v5, :cond_10

    .line 4283
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b012e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4284
    iput v6, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    goto :goto_4

    .line 4287
    :cond_10
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b012d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4288
    iput v5, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    goto :goto_4

    .line 4291
    :cond_11
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    if-ge v2, v5, :cond_d

    .line 4293
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_12

    const-string v2, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "external internalPicturesRemaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4295
    :cond_12
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    if-eq v2, v7, :cond_d

    .line 4297
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    if-ge v2, v5, :cond_13

    .line 4299
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4300
    iput v6, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    goto/16 :goto_4

    .line 4303
    :cond_13
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0129

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4304
    iput v5, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    goto/16 :goto_4

    .line 4314
    :pswitch_0
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2, v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentStorageLocation(I)V

    .line 4315
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    .line 4316
    iput-boolean v5, p0, Lcom/motorola/Camera/Camcorder;->mIsInternalSD:Z

    goto/16 :goto_2

    .line 4319
    :pswitch_1
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2, v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentStorageLocation(I)V

    .line 4320
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    .line 4321
    iput-boolean v6, p0, Lcom/motorola/Camera/Camcorder;->mIsInternalSD:Z

    goto/16 :goto_2

    .line 4329
    :cond_14
    invoke-static {v5}, Lcom/motorola/Camera/CameraGlobalTools;->calcVideoTimeRemaining(Z)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    goto/16 :goto_3

    .line 4312
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateScenesEffects()V
    .locals 3

    .prologue
    .line 1342
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamcorder"

    const-string v2, "updateScenesEffects() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v0

    .line 1346
    .local v0, sceneMode:I
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isAudioScenesSupported()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1347
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/motorola/Camera/CameraGlobalType;->sceneSettingV:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1349
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v2, Lcom/motorola/Camera/CameraGlobalType;->sceneSettingV:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 1351
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1354
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1357
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->updateEffects()V

    .line 1358
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1360
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "MotoCamcorder"

    const-string v2, "updateScenesEffects() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :cond_3
    return-void
.end method

.method private updateTorch()V
    .locals 3

    .prologue
    .line 881
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isTorchSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 883
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 884
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 885
    const-string v0, "MotoCamcorder"

    const-string v1, "updateTorch() turning torch On"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "flash-mode"

    const-string v2, "torch"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :goto_0
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 892
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 893
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 898
    :goto_1
    return-void

    .line 888
    :cond_0
    const-string v0, "MotoCamcorder"

    const-string v1, "updateTorch() turning torch Off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "flash-mode"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 895
    :cond_1
    const-string v0, "MotoCamcorder"

    const-string v1, "Torch not enabled, cannot change value!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private videoSnapshot()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 784
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v6, :cond_1

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    iget-boolean v6, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorderStopped:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/motorola/Camera/Camcorder;->mPausing:Z

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 795
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 796
    .local v3, recordLocation:Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    invoke-virtual {v6}, Lcom/motorola/Camera/LocUtility;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    .line 800
    .local v2, loc:Landroid/location/Location;
    :cond_2
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 802
    if-eqz v2, :cond_3

    .line 803
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 804
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 806
    invoke-virtual {v2}, Landroid/location/Location;->hasAltitude()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 807
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 817
    :goto_1
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 818
    .local v4, utcTimeSeconds:J
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v4, v5}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 822
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "gps-processing-method"

    const-string v8, "Unknown"

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "mot-gps-map-datum"

    const-string v8, "Unknown"

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    .end local v4           #utcTimeSeconds:J
    :cond_3
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 829
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_4

    const-string v6, "MotoCamcorder"

    const-string v7, "stopping smooth zoom before capture"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_4
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->stopSmoothZoom()V

    .line 831
    const v6, 0x7f0d009f

    invoke-virtual {p0, v6}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 832
    .local v1, fl:Landroid/widget/FrameLayout;
    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 833
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v6, v10}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideZoomControlSet(Z)V

    .line 836
    :try_start_0
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/motorola/Camera/View/Control/OnScreenController;->enableVideoSnapshotButton(Z)V

    .line 837
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z

    .line 838
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lcom/motorola/Camera/Camcorder$JpegPictureCallback;

    invoke-direct {v10, p0, v2}, Lcom/motorola/Camera/Camcorder$JpegPictureCallback;-><init>(Lcom/motorola/Camera/Camcorder;Landroid/location/Location;)V

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 839
    :catch_0
    move-exception v0

    .line 840
    .local v0, e:Ljava/lang/RuntimeException;
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_5

    const-string v6, "MotoCamcorder"

    const-string v7, "videoSnapshot() : take picture failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_5
    iput-boolean v11, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z

    .line 842
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v6, v11}, Lcom/motorola/Camera/View/Control/OnScreenController;->enableVideoSnapshotButton(Z)V

    .line 843
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v6}, Lcom/motorola/Camera/View/Control/OnScreenController;->showZoomControlSet()V

    .line 844
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 812
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #fl:Landroid/widget/FrameLayout;
    :cond_6
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto/16 :goto_1
.end method

.method private zoomTo(I)V
    .locals 3
    .parameter "zoom"

    .prologue
    .line 3748
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3766
    :cond_0
    :goto_0
    return-void

    .line 3751
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3754
    :cond_2
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->smoothZoomSupported:Z

    if-eqz v0, :cond_0

    .line 3755
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSmoothZoom() - zoom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3756
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 3757
    iget-boolean v0, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z

    if-eqz v0, :cond_4

    .line 3758
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 3759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z

    .line 3762
    :cond_4
    iget-boolean v0, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorderStopped:Z

    if-eqz v0, :cond_5

    .line 3763
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 3764
    :cond_5
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    const-string v1, "startSmoothZoom() exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method camcordermuteonoff(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 4681
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 4682
    const-string v0, "MotoCamcorder"

    const-string v1, "camcordermuteonoff:called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4684
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 4686
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    .line 4689
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 4690
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    const-string v1, "MUTE"

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 4696
    :cond_2
    :goto_0
    return-void

    .line 4692
    :cond_3
    if-nez p1, :cond_2

    .line 4694
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    const-string v1, "MUTE"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public launchCamera()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1644
    invoke-static {}, Lcom/motorola/Camera/CameraHolder;->instance()Lcom/motorola/Camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CameraHolder;->keep()V

    .line 1645
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/motorola/Camera/Camera;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1646
    .local v0, picCamera:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1649
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->camPremium:Z

    if-eqz v2, :cond_0

    const-string v2, "Camtype"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1651
    :goto_0
    const-string v2, "CameraSensor"

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1652
    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camcorder;->startActivity(Landroid/content/Intent;)V

    .line 1654
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/motorola/Camera/Camcorder;->overridePendingTransition(II)V

    .line 1655
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    .line 1656
    return-void

    .line 1650
    :cond_0
    const-string v2, "Camtype"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1651
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public launchCameraInMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1660
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/motorola/Camera/Camera;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1662
    .local v0, picCamera:Landroid/content/Intent;
    const/high16 v3, 0x1021

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1665
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->camPremium:Z

    if-eqz v3, :cond_0

    const-string v3, "Camtype"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1668
    :goto_0
    const-string v3, "CameraSensor"

    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1669
    const-string v1, "Mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1670
    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camcorder;->startActivity(Landroid/content/Intent;)V

    .line 1671
    invoke-virtual {p0, v2, v2}, Lcom/motorola/Camera/Camcorder;->overridePendingTransition(II)V

    .line 1672
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    .line 1673
    invoke-virtual {p0, v2, v2}, Lcom/motorola/Camera/Camcorder;->overridePendingTransition(II)V

    .line 1674
    return-void

    .line 1666
    :cond_0
    const-string v3, "Camtype"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1668
    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 2425
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2490
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2429
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mLastValidUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2430
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "LaunchMode"

    const-string v3, "camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2433
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camcorder;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2435
    :catch_0
    move-exception v0

    .line 2437
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const v2, 0x7f0b006e

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V

    .line 2439
    const-string v2, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camcorder:onClick:Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mLastValidUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2447
    .end local v0           #ex:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_2
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    .line 2448
    const-string v2, "MotoCamcorder"

    const-string v3, "Camcorder:onClick:!!! enter retake !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    :cond_1
    iget-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v2, :cond_0

    .line 2450
    iget-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z

    if-nez v2, :cond_3

    .line 2451
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_2

    .line 2452
    const-string v2, "MotoCamcorder"

    const-string v3, "Camcorder:onClick:!!! enter retake - is intent mode !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    :cond_2
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2458
    :cond_3
    invoke-direct {p0, v4}, Lcom/motorola/Camera/Camcorder;->hideVideoFrameAndStartPreview(Z)V

    goto :goto_0

    .line 2465
    :pswitch_3
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_4

    .line 2466
    const-string v2, "MotoCamcorder"

    const-string v3, "Camcorder:onClick:!!! enter attach !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    :cond_4
    iget-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v2, :cond_0

    .line 2468
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_5

    .line 2469
    const-string v2, "MotoCamcorder"

    const-string v3, "Camcorder:onClick:!!! enter attach - is intent mode!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    :cond_5
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/motorola/Camera/Camcorder;->doReturnToCaller(Z)V

    goto/16 :goto_0

    .line 2478
    :pswitch_4
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_6

    .line 2479
    const-string v2, "MotoCamcorder"

    const-string v3, "Camcorder:onClick:!!! enter cancel !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    :cond_6
    iget-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v2, :cond_7

    .line 2482
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_7

    .line 2483
    const-string v2, "MotoCamcorder"

    const-string v3, "Camcorder:onClick:!!! enter cancel , is intent mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    :cond_7
    invoke-direct {p0, v4}, Lcom/motorola/Camera/Camcorder;->doReturnToCaller(Z)V

    goto/16 :goto_0

    .line 2425
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00a5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/16 v2, 0x34

    .line 3081
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentAppMode(Landroid/content/Context;I)V

    .line 3084
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3086
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    const-string v1, "onConfigurationChanged() - Restart Preview if the orientation has changed to landscape"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    :cond_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V

    .line 3088
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->startPreview()V

    .line 3089
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3090
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3093
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->setOrientation(I)V

    .line 3095
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3097
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->isWebtopMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3098
    const v0, 0x7f0b0152

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3099
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    .line 3101
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 16
    .parameter "icicle"

    .prologue
    .line 2054
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2056
    sget-boolean v13, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v13, :cond_0

    const-string v13, "MotoCamcorder"

    const-string v14, "onCreate() - Enter"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->isWebtopMode()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2059
    const v13, 0x7f0b0152

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 2060
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    .line 2272
    :cond_1
    :goto_0
    return-void

    .line 2064
    :cond_2
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/motorola/Camera/Camcorder;->setRequestedOrientation(I)V

    .line 2066
    const-string v13, "keyguard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/motorola/Camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/KeyguardManager;

    .line 2067
    .local v9, mKeyGuard:Landroid/app/KeyguardManager;
    invoke-virtual {v9}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 2069
    sget-boolean v13, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v13, :cond_3

    .line 2070
    const-string v13, "MotoCamcorder"

    const-string v14, "Device is locked"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    :cond_3
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/motorola/Camera/Camcorder;->mIsSecurelyLockedModeVideoCaptureIntent:Z

    .line 2076
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    check-cast v13, Lcom/motorola/Camera/Camcorder$MainHandler;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/motorola/Camera/Camcorder$MainHandler;->setActivityReference(Landroid/app/Activity;)V

    .line 2080
    invoke-static/range {p0 .. p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 2083
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 2085
    .local v7, intent:Landroid/content/Intent;
    if-eqz v7, :cond_c

    .line 2086
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2087
    .local v2, data:Landroid/os/Bundle;
    if-eqz v2, :cond_b

    .line 2088
    const-string v13, "CameraSensor"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 2089
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSpecificCamSetting(I)Z

    .line 2101
    .end local v2           #data:Landroid/os/Bundle;
    :goto_1
    const v13, 0x7f03002b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/motorola/Camera/Camcorder;->setContentView(I)V

    .line 2104
    const v13, 0x7f0d0040

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/motorola/Camera/View/CameraView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/Camcorder;->mVideoPreview:Lcom/motorola/Camera/View/CameraView;

    .line 2107
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v14}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentAppMode(Landroid/content/Context;I)V

    .line 2108
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/motorola/Camera/Camcorder;->mCaptureTimeLapse:Z

    .line 2109
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/Camera/Camcorder;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 2110
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentTimeLapse(I)V

    .line 2112
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->isVideoCaptureIntent()Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    .line 2113
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    invoke-virtual {v13, v14}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setServiceMode(Z)V

    .line 2115
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->isSecurelyLockedModeVideoCaptureIntent()Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/motorola/Camera/Camcorder;->mIsSecurelyLockedModeVideoCaptureIntent:Z

    .line 2116
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/motorola/Camera/Camcorder;->mIsSecurelyLockedModeVideoCaptureIntent:Z

    invoke-virtual {v13, v14}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSecurelyLockedMode(Z)V

    .line 2120
    new-instance v12, Ljava/lang/Thread;

    new-instance v13, Lcom/motorola/Camera/Camcorder$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/motorola/Camera/Camcorder$4;-><init>(Lcom/motorola/Camera/Camcorder;)V

    invoke-direct {v12, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2126
    .local v12, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 2129
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    .line 2132
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camcorder;->mVideoPreview:Lcom/motorola/Camera/View/CameraView;

    invoke-virtual {v13}, Lcom/motorola/Camera/View/CameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    .line 2133
    .local v5, holder:Landroid/view/SurfaceHolder;
    move-object/from16 v0, p0

    invoke-interface {v5, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2136
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 2138
    sget-boolean v13, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v13, :cond_5

    const-string v13, "MotoCamcorder"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onCreate() - mIsVideoCaptureIntent is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    .line 2144
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v13, 0x7f0d003f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/motorola/Camera/View/CameraContentView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/Camcorder;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    .line 2145
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/Camera/Camcorder;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    .line 2147
    .local v10, main:Lcom/motorola/Camera/View/CameraContentView;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    .line 2148
    const-string v13, "MotoCamcorder"

    const-string v14, "onCreate about to inflate controller"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/motorola/Camera/SaveHelper;->setContext(Landroid/content/Context;)V

    .line 2152
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/motorola/Camera/SaveHelper;->startService()V

    .line 2157
    const v13, 0x7f03001f

    :try_start_0
    invoke-virtual {v6, v13, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lcom/motorola/Camera/View/CameraContentView;

    move-object v10, v0

    .line 2158
    const v13, 0x7f0d0026

    invoke-virtual {v10, v13}, Lcom/motorola/Camera/View/CameraContentView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    .line 2160
    const v13, 0x7f030011

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainer:Landroid/widget/RelativeLayout;

    .line 2162
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camcorder;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v13, v14}, Lcom/motorola/Camera/View/CameraContentView;->addView(Landroid/view/View;)V

    .line 2163
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainer:Landroid/widget/RelativeLayout;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2185
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->setActivity(Landroid/app/Activity;)V

    .line 2188
    const v13, 0x7f0d0043

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/Camcorder;->mBlackout:Landroid/widget/ImageView;

    .line 2189
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camcorder;->mBlackout:Landroid/widget/ImageView;

    new-instance v14, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v15, -0x100

    invoke-direct {v14, v15}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2190
    const v13, 0x7f0d0046

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/Camcorder;->mPostText:Landroid/widget/TextView;

    .line 2192
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v13, :cond_6

    .line 2197
    const v13, 0x7f03002c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    invoke-virtual {v6, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/motorola/Camera/View/CameraContentView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/Camcorder;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    .line 2200
    const v13, 0x7f0d00a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/Camcorder;->mPostPanel:Landroid/widget/LinearLayout;

    .line 2202
    const v13, 0x7f0d00a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 2203
    .local v11, rl:Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2205
    const v13, 0x7f0d00a9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11           #rl:Landroid/widget/RelativeLayout;
    check-cast v11, Landroid/widget/RelativeLayout;

    .line 2206
    .restart local v11       #rl:Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2208
    const v13, 0x7f0d00a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11           #rl:Landroid/widget/RelativeLayout;
    check-cast v11, Landroid/widget/RelativeLayout;

    .line 2209
    .restart local v11       #rl:Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2211
    const v13, 0x7f0d00a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2212
    .local v1, button:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2215
    .end local v1           #button:Landroid/widget/ImageView;
    .end local v11           #rl:Landroid/widget/RelativeLayout;
    :cond_6
    const v13, 0x7f0d00a2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/Camcorder;->mSavingVideo:Landroid/view/View;

    .line 2216
    const v13, 0x7f0d00a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/Camcorder;->mSavingVideoText:Landroid/widget/TextView;

    .line 2217
    const v13, 0x7f0d00a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/Camcorder;->mSavingProgress:Landroid/widget/ProgressBar;

    .line 2220
    const-string v13, "location"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/motorola/Camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/location/LocationManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/Camcorder;->mLocationManager:Landroid/location/LocationManager;

    .line 2221
    new-instance v13, Lcom/motorola/Camera/LocUtility;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mLocationManager:Landroid/location/LocationManager;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/motorola/Camera/LocUtility;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    .line 2223
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v13}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn()Z

    move-result v8

    .line 2225
    .local v8, locOn:Z
    const/4 v13, 0x1

    if-ne v8, v13, :cond_7

    .line 2227
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13, v14}, Lcom/motorola/Camera/LocUtility;->startReceivingLocationUpdates(Landroid/os/Handler;)V

    .line 2232
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/motorola/Camera/View/Control/OnScreenController;->setParams(Landroid/os/Handler;Lcom/motorola/Camera/FocusManager;)V

    .line 2233
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 2234
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    sget v14, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-virtual {v13, v14}, Lcom/motorola/Camera/View/Control/OnScreenController;->setZoomBarMax(I)V

    .line 2236
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v13}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isCamcorderZoomSupported()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 2237
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v13}, Lcom/motorola/Camera/View/Control/OnScreenController;->showZoomControlSet()V

    .line 2243
    :goto_2
    sget-boolean v13, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v13, :cond_8

    const-string v13, "MotoCamcorder"

    const-string v14, "About to join startpreview thread"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    :cond_8
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2253
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v13, :cond_e

    .line 2255
    sget-boolean v13, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v13, :cond_9

    const-string v13, "MotoCamcorder"

    const-string v14, "onCreate() - startPreview failed, just return"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    :cond_9
    const v13, 0x7f0b0095

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V

    .line 2258
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 2259
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    goto/16 :goto_0

    .line 2091
    .end local v5           #holder:Landroid/view/SurfaceHolder;
    .end local v6           #inflater:Landroid/view/LayoutInflater;
    .end local v8           #locOn:Z
    .end local v10           #main:Lcom/motorola/Camera/View/CameraContentView;
    .end local v12           #startPreviewThread:Ljava/lang/Thread;
    .restart local v2       #data:Landroid/os/Bundle;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSpecificCamSetting(I)Z

    goto/16 :goto_1

    .line 2094
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSpecificCamSetting(I)Z

    goto/16 :goto_1

    .line 2097
    .end local v2           #data:Landroid/os/Bundle;
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSpecificCamSetting(I)Z

    goto/16 :goto_1

    .line 2165
    .restart local v5       #holder:Landroid/view/SurfaceHolder;
    .restart local v6       #inflater:Landroid/view/LayoutInflater;
    .restart local v10       #main:Lcom/motorola/Camera/View/CameraContentView;
    .restart local v12       #startPreviewThread:Ljava/lang/Thread;
    :catch_0
    move-exception v3

    .line 2168
    .local v3, e:Landroid/view/InflateException;
    const-string v13, "MotoCamcorder"

    const-string v14, "onCreate() - InflateException!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    invoke-virtual {v3}, Landroid/view/InflateException;->printStackTrace()V

    .line 2170
    const v13, 0x7f0b0094

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V

    .line 2174
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2179
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 2180
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    goto/16 :goto_0

    .line 2176
    :catch_1
    move-exception v13

    .line 2179
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 2180
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    goto/16 :goto_0

    .line 2179
    :catchall_0
    move-exception v13

    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 2180
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    goto/16 :goto_0

    .line 2240
    .end local v3           #e:Landroid/view/InflateException;
    .restart local v8       #locOn:Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideZoomControlSet(Z)V

    goto/16 :goto_2

    .line 2249
    :catch_2
    move-exception v4

    .line 2250
    .local v4, ex:Ljava/lang/InterruptedException;
    const-string v13, "MotoCamcorder"

    const-string v14, "onCreate() - failed to join preview thread, ignoring..."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2264
    .end local v4           #ex:Ljava/lang/InterruptedException;
    :cond_e
    const/16 v13, 0x64

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/Camera/Camcorder;->batteryLevel:I

    .line 2268
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v13}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 2270
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->resetZoomDefault()V

    .line 2271
    sget-boolean v13, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v13, :cond_1

    const-string v13, "MotoCamcorder"

    const-string v14, "onCreate() - Exit"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 4778
    if-nez p1, :cond_0

    .line 4779
    new-instance v0, Lcom/motorola/Camera/Camcorder$CamcorderDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/motorola/Camera/Camcorder$CamcorderDialog;-><init>(Lcom/motorola/Camera/Camcorder;Landroid/content/Context;I)V

    .line 4783
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 1683
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 1684
    const-string v0, "MotoCamcorder"

    const-string v1, "onCreateOptionsMenu() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1690
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2778
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2780
    const-string v0, "MotoCamcorder"

    const-string v1, "onDestroy() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    if-eqz v0, :cond_1

    .line 2784
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    invoke-virtual {v0}, Lcom/motorola/Camera/LocUtility;->stopReceivingLocationUpdates()V

    .line 2785
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    invoke-virtual {v0}, Lcom/motorola/Camera/LocUtility;->destroy()V

    .line 2786
    iput-object v2, p0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    .line 2789
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0, p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->resetContext(Landroid/content/Context;)V

    .line 2790
    :cond_2
    iput-object v2, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 2792
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mStorageLocationAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 2793
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mStorageLocationAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2794
    iput-object v2, p0, Lcom/motorola/Camera/Camcorder;->mStorageLocationAlert:Landroid/app/AlertDialog;

    .line 2797
    :cond_3
    iput-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    .line 2798
    iput-object v2, p0, Lcom/motorola/Camera/Camcorder;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    .line 2800
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2801
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 2528
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError() callback from  MediaRecorder Error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 2530
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamcorder"

    const-string v1, "onError() stopVideo recording and release mediarecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    :cond_1
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2533
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->stopVideoRecording()V

    .line 2535
    :cond_2
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V

    .line 2538
    :cond_3
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 2542
    const/16 v0, 0x320

    if-ne p2, v0, :cond_2

    .line 2543
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    const-string v1, "Got Info callback from  MediaRecorder MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    :cond_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->stopVideoRecordingAndDisplayDialog()V

    .line 2550
    :cond_1
    :goto_0
    return-void

    .line 2545
    :cond_2
    const/16 v0, 0x321

    if-ne p2, v0, :cond_1

    .line 2547
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCamcorder"

    const-string v1, "Got Info callback from  MediaRecorder MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    :cond_3
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->stopVideoRecordingAndDisplayDialog()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 2831
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoCamcorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyDown: + keyCode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    :cond_0
    iget v3, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 3006
    :cond_1
    :goto_0
    return v2

    .line 2840
    :cond_2
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_3

    .line 2841
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 2844
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 3004
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 2848
    :sswitch_0
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->getSettingSecondaryDialog()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2850
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->closeSettingSecondaryDialog()V

    goto :goto_0

    .line 2854
    :cond_4
    iget-boolean v3, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z

    if-eqz v3, :cond_5

    .line 2856
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v3, :cond_5

    .line 2858
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v3}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 2859
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 2860
    iput-boolean v7, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z

    goto :goto_0

    .line 2865
    :cond_5
    iget-boolean v3, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainerShowing:Z

    if-eqz v3, :cond_6

    .line 2867
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2868
    iput-boolean v7, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainerShowing:Z

    .line 2869
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    goto :goto_0

    .line 2873
    :cond_6
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->isPopupDialogOpen()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2875
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3, v2, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->closePopupDialog(ZZ)V

    .line 2876
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3, v7}, Lcom/motorola/Camera/View/Control/OnScreenController;->setDialogStatus(I)V

    goto :goto_0

    .line 2880
    :cond_7
    iget v3, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_a

    .line 2882
    iget-boolean v3, p0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-nez v3, :cond_8

    .line 2884
    invoke-direct {p0, v2}, Lcom/motorola/Camera/Camcorder;->hideVideoFrameAndStartPreview(Z)V

    goto :goto_0

    .line 2888
    :cond_8
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->getCaptureVideoUriFromIntent()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_9

    .line 2891
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mLastValidFileName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2894
    .local v1, f:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2902
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mLastValidUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2907
    .end local v1           #f:Ljava/io/File;
    :cond_9
    :goto_2
    invoke-direct {p0, v7}, Lcom/motorola/Camera/Camcorder;->doReturnToCaller(Z)V

    goto/16 :goto_0

    .line 2896
    .restart local v1       #f:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2898
    .local v0, e:Ljava/lang/SecurityException;
    const-string v3, "MotoCamcorder"

    const-string v4, "Security exception deleting file!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2903
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 2904
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MotoCamcorder"

    const-string v4, "Camcorder:onClick Back: file Delete failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2913
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #f:Ljava/io/File;
    :cond_a
    iget v3, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    if-ne v3, v2, :cond_b

    .line 2914
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v3, :cond_b

    .line 2916
    :try_start_2
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2921
    :goto_3
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    .line 2922
    iput-boolean v7, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z

    .line 2923
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentExpValue(Ljava/lang/String;)V

    .line 2925
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 2926
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    goto/16 :goto_0

    .line 2931
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2933
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 2935
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->startStopRecording()V

    goto/16 :goto_0

    .line 2939
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 2940
    iget v3, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    if-ne v3, v2, :cond_d

    .line 2941
    iget-wide v3, p0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_c

    .line 2942
    const v3, 0x7f0b0092

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2944
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/motorola/Camera/Camcorder;->mTime2Idle:J

    add-long/2addr v5, v8

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 2948
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->rightSetFadeOut()V

    .line 2949
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->showTopStatusSet()V

    .line 2950
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->startVideoRecording()V

    goto/16 :goto_0

    .line 2952
    :cond_d
    iget v3, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    if-ne v3, v6, :cond_1

    .line 2953
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/motorola/Camera/Camcorder;->mRecordingStartTime:J

    add-long/2addr v5, v8

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 2957
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->stopVideoRecordingAndDisplayDialog()V

    goto/16 :goto_0

    .line 2965
    :sswitch_3
    iget v3, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    if-ne v3, v2, :cond_e

    .line 2967
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->setMenuPress()V

    .line 2969
    :cond_e
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2972
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2974
    :sswitch_4
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVolumeKeySetting()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 2977
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2979
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isCamcorderZoomSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2980
    const-string v3, "MotoCamcorder"

    const-string v4, "onKey Volume down -- zoom out"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2986
    :sswitch_5
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVolumeKeySetting()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 2991
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2993
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isCamcorderZoomSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2994
    const-string v3, "MotoCamcorder"

    const-string v4, "onKey Volume up -- zoom int"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3001
    :sswitch_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 2918
    :catch_2
    move-exception v3

    goto/16 :goto_3

    .line 2844
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x15 -> :sswitch_6
        0x16 -> :sswitch_6
        0x17 -> :sswitch_2
        0x18 -> :sswitch_5
        0x19 -> :sswitch_4
        0x1b -> :sswitch_1
        0x52 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3011
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 3012
    const-string v0, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp: + keyCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 3014
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/Camera/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 3015
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 3016
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3017
    packed-switch p1, :pswitch_data_0

    .line 3031
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 3021
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVolumeKeySetting()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isCamcorderZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3022
    const-string v0, "MotoCamcorder"

    const-string v1, "onKey up -- stop zoom"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3028
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3026
    :cond_3
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->startStopRecording()V

    goto :goto_1

    .line 3017
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 8

    .prologue
    const/16 v7, 0x16

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 2633
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamcorder"

    const-string v3, "onPause() - Enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2638
    iput-boolean v6, p0, Lcom/motorola/Camera/Camcorder;->mPausing:Z

    .line 2640
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainer:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    .line 2642
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2643
    iput-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainerShowing:Z

    .line 2644
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 2647
    :cond_1
    iget-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z

    if-eqz v2, :cond_2

    .line 2649
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v2, :cond_2

    .line 2651
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v2}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 2652
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 2653
    iput-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z

    .line 2666
    :cond_2
    iget-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z

    if-eqz v2, :cond_3

    .line 2668
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v2, :cond_3

    .line 2670
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v2}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 2671
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 2672
    iput-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z

    .line 2677
    :cond_3
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->isPopupDialogOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2678
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2, v4, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->closePopupDialog(ZZ)V

    .line 2682
    :cond_4
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    if-eqz v2, :cond_5

    .line 2684
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    invoke-virtual {v2}, Lcom/motorola/Camera/LocUtility;->stopReceivingLocationUpdates()V

    .line 2688
    :cond_5
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    if-ne v2, v5, :cond_6

    .line 2690
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->stopVideoRecording()V

    .line 2695
    :cond_6
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2698
    :try_start_0
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_7

    const-string v2, "MotoCamcorder"

    const-string v3, "onPause() - Waiting for recording to stop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    :cond_7
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2706
    :cond_8
    :goto_0
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mSavingVideo:Landroid/view/View;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mSavingVideo:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    .line 2708
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mSavingVideo:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2711
    :cond_9
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2712
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_a

    .line 2713
    const-string v2, "MotoCamcorder"

    const-string v3, "onPause(): Pending DISPLAY_VIDEO_POSTVIEW"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    :cond_a
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2715
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 2717
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 2718
    .local v0, broadUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 2727
    .end local v0           #broadUri:Landroid/net/Uri;
    :cond_b
    :goto_1
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V

    .line 2728
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_c

    .line 2729
    iput v6, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    .line 2733
    :cond_c
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->closeCamera()V

    .line 2736
    iget-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mDidRegister:Z

    if-eqz v2, :cond_d

    .line 2738
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camcorder;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2739
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->windReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camcorder;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2740
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->batteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camcorder;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2741
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->disableCallStateListener()V

    .line 2742
    iput-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mDidRegister:Z

    .line 2745
    :cond_d
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2746
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->dismissToast()V

    .line 2749
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->deleteDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->deleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2751
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->deleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 2752
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/Camera/Camcorder;->deleteDialog:Landroid/app/AlertDialog;

    .line 2755
    :cond_e
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideSceneDialog()V

    .line 2757
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->resetFilter()V

    .line 2758
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v2, :cond_f

    .line 2760
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->getToolbarOpenState()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setToolbarOpenStatus(Z)V

    .line 2764
    :cond_f
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v2

    if-nez v2, :cond_10

    .line 2765
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->save()V

    .line 2768
    :cond_10
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->interruptThumbnailThread()V

    .line 2770
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->clearMessageQueue()V

    .line 2772
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_11

    const-string v2, "MotoCamcorder"

    const-string v3, "onPause() - Exit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    :cond_11
    return-void

    .line 2700
    :catch_0
    move-exception v1

    .line 2701
    .local v1, e:Ljava/lang/InterruptedException;
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_12

    const-string v2, "MotoCamcorder"

    const-string v3, "thread join interrupted for mStopRecording thread"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    :cond_12
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 2722
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_13
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_b

    .line 2723
    const-string v2, "MotoCamcorder"

    const-string v3, "onPause: video path is null, will not send the URI to scanner "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 1695
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1697
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 1698
    const-string v0, "MotoCamcorder"

    const-string v1, "onPrepareOptionsMenu() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/16 v10, 0x80

    const/16 v9, 0x34

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2291
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2293
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_0

    const-string v5, "MotoCamcorder"

    const-string v8, "onResume() - Enter"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    :cond_0
    sput-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->mShouldReadFrontParams:Z

    .line 2296
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5, p0, v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentAppMode(Landroid/content/Context;I)V

    .line 2298
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2299
    .local v1, currentConfig:Landroid/content/res/Configuration;
    iget v5, v1, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/motorola/Camera/Camcorder;->mCurrentOrientation:I

    .line 2300
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget v8, p0, Lcom/motorola/Camera/Camcorder;->mCurrentOrientation:I

    invoke-virtual {v5, v8}, Lcom/motorola/Camera/View/Control/OnScreenController;->setOrientation(I)V

    .line 2304
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/motorola/Camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 2305
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_3

    .line 2307
    const v5, 0x7f0b0005

    invoke-virtual {p0, v5}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V

    .line 2308
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_1

    .line 2309
    const-string v5, "MotoCamcorder"

    const-string v6, "onResume() - In call, cancelling launch of Camcorder"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    :cond_1
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 2313
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    .line 2422
    :cond_2
    :goto_0
    return-void

    .line 2318
    :cond_3
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mVideoPreview:Lcom/motorola/Camera/View/CameraView;

    invoke-virtual {v5, v7}, Lcom/motorola/Camera/View/CameraView;->setVisibility(I)V

    .line 2320
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setDefaultZoomValue()V

    .line 2322
    iput-boolean v7, p0, Lcom/motorola/Camera/Camcorder;->mPausing:Z

    .line 2323
    iput-boolean v7, p0, Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z

    .line 2324
    iput-boolean v7, p0, Lcom/motorola/Camera/Camcorder;->mCamSettingsChanging:Z

    .line 2325
    iput-boolean v6, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorderStopped:Z

    .line 2327
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/Window;->addFlags(I)V

    .line 2330
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-static {v5}, Lcom/motorola/Camera/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 2331
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-static {v5}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 2332
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/Window;->addFlags(I)V

    .line 2335
    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2337
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2338
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2339
    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2340
    const-string v5, "file"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2341
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v2}, Lcom/motorola/Camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2343
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v5, Lcom/motorola/Camera/Camcorder;->WIND_NOISE:Ljava/lang/String;

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2344
    .local v0, WindIntent:Landroid/content/IntentFilter;
    sget-object v5, Lcom/motorola/Camera/Camcorder;->WIND_NOISE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2345
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->windReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v0}, Lcom/motorola/Camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2346
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2347
    .local v3, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2348
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->batteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v3}, Lcom/motorola/Camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2350
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->enableCallStateListener()V

    .line 2352
    iput-boolean v6, p0, Lcom/motorola/Camera/Camcorder;->mDidRegister:Z

    .line 2355
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->isVideoCaptureIntent()Z

    move-result v8

    invoke-virtual {v5, v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setServiceMode(Z)V

    .line 2356
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->isSecurelyLockedModeVideoCaptureIntent()Z

    move-result v8

    invoke-virtual {v5, v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSecurelyLockedMode(Z)V

    .line 2358
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    if-eqz v5, :cond_4

    .line 2359
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    iget-object v8, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Lcom/motorola/Camera/LocUtility;->startReceivingLocationUpdates(Landroid/os/Handler;)V

    .line 2363
    :cond_4
    iget-boolean v5, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z

    if-nez v5, :cond_5

    .line 2365
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->startPreview()V

    .line 2368
    :cond_5
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v5, :cond_7

    .line 2369
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_6

    const-string v5, "MotoCamcorder"

    const-string v6, "onResume() - startPreview failed, just return"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    :cond_6
    const v5, 0x7f0b0095

    invoke-virtual {p0, v5}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V

    .line 2372
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 2373
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    goto/16 :goto_0

    .line 2377
    :cond_7
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v5, :cond_8

    .line 2379
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2380
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2383
    :cond_8
    sget-boolean v5, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    if-eqz v5, :cond_9

    .line 2385
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentStorageLocation()I

    move-result v5

    if-eq v5, v6, :cond_c

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/motorola/Camera/Camcorder;->mIsInternalSD:Z

    .line 2386
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSDPlug()Z

    move-result v5

    if-nez v5, :cond_9

    .line 2387
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->checkExternalSDCardFirstTime()V

    .line 2391
    :cond_9
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_a

    const-string v5, "MotoCamcorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onResume() - mStatus is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    :cond_a
    iget v5, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v8, 0x6

    if-eq v5, v8, :cond_b

    .line 2395
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->updateRemainCount()V

    .line 2397
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 2398
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v5, v6}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 2399
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v5, v7}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordButton(Z)V

    .line 2400
    iget-object v8, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget-boolean v5, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorderStopped:Z

    if-nez v5, :cond_d

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->setCaptureResourceClickable(Z)V

    .line 2401
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideVStabImage()V

    .line 2402
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->showTopStatusSet()V

    .line 2403
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    sget v8, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-virtual {v5, v8}, Lcom/motorola/Camera/View/Control/OnScreenController;->setZoomBarMax(I)V

    .line 2405
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v5, :cond_b

    .line 2406
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isCamcorderZoomSupported()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2407
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->showZoomControlSet()V

    .line 2417
    :cond_b
    :goto_3
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->interruptThumbnailThread()V

    .line 2418
    new-instance v5, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6, v7}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;-><init>(Lcom/motorola/Camera/Camcorder;Landroid/graphics/Bitmap;Z)V

    iput-object v5, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    .line 2419
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    invoke-virtual {v5}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->start()V

    .line 2421
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_2

    const-string v5, "MotoCamcorder"

    const-string v6, "onResume() - Exit"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    move v5, v7

    .line 2385
    goto/16 :goto_1

    :cond_d
    move v5, v7

    .line 2400
    goto :goto_2

    .line 2410
    :cond_e
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v5, v6}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideZoomControlSet(Z)V

    goto :goto_3
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 1678
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 2285
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2286
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 2627
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2628
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 3036
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamcorder"

    const-string v2, "Camcorder:onTouchEvent:START"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/motorola/Camera/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 3038
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 3039
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 3041
    iget-boolean v1, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z

    if-eqz v1, :cond_1

    .line 3043
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v1, :cond_1

    .line 3045
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v1}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 3046
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 3047
    iput-boolean v3, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z

    .line 3066
    :goto_0
    return v0

    .line 3052
    :cond_1
    iget-boolean v1, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainerShowing:Z

    if-eqz v1, :cond_2

    .line 3054
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainer:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3055
    iput-boolean v3, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainerShowing:Z

    .line 3056
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    goto :goto_0

    .line 3060
    :cond_2
    iget v1, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    if-ne v1, v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 3062
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->toggleMediaControlsVisibility()V

    goto :goto_0

    .line 3066
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 4764
    if-eqz p1, :cond_0

    .line 4765
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->isSecurelyLockedModeVideoCaptureIntent()Z

    move-result v0

    .line 4766
    .local v0, newLockMode:Z
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/motorola/Camera/Camcorder;->mIsSecurelyLockedModeVideoCaptureIntent:Z

    if-eq v1, v0, :cond_0

    .line 4767
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v2

    .line 4768
    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/Camera/Camcorder;->mIsSecurelyLockedModeVideoCaptureIntent:Z

    .line 4769
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-boolean v3, p0, Lcom/motorola/Camera/Camcorder;->mIsSecurelyLockedModeVideoCaptureIntent:Z

    invoke-virtual {v1, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSecurelyLockedMode(Z)V

    .line 4770
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4771
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->interruptThumbnailThread()V

    .line 4772
    new-instance v1, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;-><init>(Lcom/motorola/Camera/Camcorder;Landroid/graphics/Bitmap;Z)V

    iput-object v1, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    .line 4773
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->start()V

    .line 4776
    .end local v0           #newLockMode:Z
    :cond_0
    return-void

    .line 4770
    .restart local v0       #newLockMode:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setAudioSceneParameter()V
    .locals 6

    .prologue
    .line 1601
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoCamcorder"

    const-string v4, "setAudioSceneParameter() - Enter"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :cond_0
    const-string v2, "motoVideoRecAudioSceneConfig"

    .line 1604
    .local v2, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v3, :cond_1

    .line 1605
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    .line 1608
    :cond_1
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v1

    .line 1609
    .local v1, currentScene:I
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getAudioScenesValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1611
    .local v0, currentAudioScene:Ljava/lang/String;
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_2

    const-string v3, "MotoCamcorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioSceneValues"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    :cond_2
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-nez v3, :cond_3

    .line 1616
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1617
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_3

    const-string v3, "MotoCamcorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Audio Scene Modes : Updating.. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    :cond_3
    return-void
.end method

.method public setAudioZoomParameter(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 1572
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamcorder"

    const-string v2, "setAudioZoomParameter() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    :cond_0
    const-string v0, "motoVideoRecAudioSceneConfig"

    .line 1575
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v1, :cond_1

    .line 1576
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    .line 1579
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v1, :cond_2

    .line 1580
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1581
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudioZoomParameter Mode : Updating.. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    :cond_2
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "MotoCamcorder"

    const-string v2, "setAudioZoomParameter() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    :cond_3
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    const/16 v3, 0x34

    .line 3105
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged() - Enter ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3108
    const-string v0, "MotoCamcorder"

    const-string v1, "surfaceChanged() - getSurface() returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    :cond_1
    :goto_0
    return-void

    .line 3112
    :cond_2
    iget-boolean v0, p0, Lcom/motorola/Camera/Camcorder;->mPausing:Z

    if-nez v0, :cond_1

    .line 3116
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_3

    .line 3118
    const-string v0, "MotoCamcorder"

    const-string v1, "surfaceChanged() - mCameraDevice == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3122
    :cond_3
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 3123
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->stopVideoRecording()V

    .line 3126
    :cond_4
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3127
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 3128
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camcorder;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 3131
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_5

    .line 3132
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 3136
    :cond_5
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3137
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3139
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamcorder"

    const-string v1, "surfaceChanged() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 3144
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    const-string v1, "surfaceCreated() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    :cond_0
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 3148
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamcorder"

    const-string v1, "surfaceCreated() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 3153
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    const-string v1, "surfaceDestroyed() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 3157
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamcorder"

    const-string v1, "surfaceDestroyed() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    :cond_1
    return-void
.end method

.method public updateAudioZoom()V
    .locals 5

    .prologue
    .line 1587
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getZoomNum()I

    move-result v1

    int-to-float v0, v1

    .line 1589
    .local v0, curZoom:F
    float-to-double v1, v0

    const-wide/high16 v3, 0x4008

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 1590
    const-string v1, "MicZoom4"

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camcorder;->setAudioZoomParameter(Ljava/lang/String;)V

    .line 1598
    :goto_0
    return-void

    .line 1591
    :cond_0
    float-to-double v1, v0

    const-wide/high16 v3, 0x4000

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 1592
    const-string v1, "MicZoom3"

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camcorder;->setAudioZoomParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 1593
    :cond_1
    float-to-double v1, v0

    const-wide/high16 v3, 0x3ff0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    .line 1594
    const-string v1, "MicZoom2"

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camcorder;->setAudioZoomParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 1596
    :cond_2
    const-string v1, "MicZoom1"

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camcorder;->setAudioZoomParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateEffects()V
    .locals 4

    .prologue
    .line 1369
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentEffect()I

    move-result v0

    .line 1370
    .local v0, colorEffect:I
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamcorder"

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

    .line 1371
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportEffectsValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1373
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportEffectsValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1375
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamcorder"

    const-string v2, "updateEffects() - ColorEffect is sent to engine"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportEffectsValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 1379
    :cond_2
    return-void
.end method
