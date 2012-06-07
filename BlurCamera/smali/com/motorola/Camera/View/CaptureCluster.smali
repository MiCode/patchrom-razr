.class public Lcom/motorola/Camera/View/CaptureCluster;
.super Landroid/widget/FrameLayout;
.source "CaptureCluster.java"

# interfaces
.implements Lcom/motorola/Camera/View/CamcoderSwitch$OnSwitchListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;
    }
.end annotation


# static fields
.field public static final CAMERA_MODE_PANORAMA:I = 0x2

.field public static final CAMERA_MODE_STILL:I = 0x0

.field public static final CAMERA_MODE_VIDEO:I = 0x1

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_SERVICE:I = 0x1

.field public static final TAG_KPI:Ljava/lang/String; = "MotoCameraKPI"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCamcorderSwitch:Lcom/motorola/Camera/View/CamcoderSwitch;

.field private mCameraMode:I

.field private mCaptureClusterButtonHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCaptureClusterHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCaptureClusterShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCleanView:Z

.field private mFrontCameraSwitch:Landroid/widget/ImageButton;

.field private mIsRecording:Z

.field private mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

.field private mMode:I

.field private mMuteAudioButton:Landroid/widget/ImageButton;

.field private mVideoSnapshotButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    .line 58
    iput v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMode:I

    .line 59
    iput v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    .line 60
    iput-boolean v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCleanView:Z

    .line 61
    iput-boolean v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mIsRecording:Z

    .line 62
    const-string v0, "CaptureCluster"

    iput-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->TAG:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mVideoSnapshotButton:Landroid/widget/ImageButton;

    .line 67
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    .line 68
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCamcorderSwitch:Lcom/motorola/Camera/View/CamcoderSwitch;

    .line 69
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    .line 200
    new-instance v0, Lcom/motorola/Camera/View/CaptureCluster$1;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/CaptureCluster$1;-><init>(Lcom/motorola/Camera/View/CaptureCluster;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 213
    new-instance v0, Lcom/motorola/Camera/View/CaptureCluster$2;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/CaptureCluster$2;-><init>(Lcom/motorola/Camera/View/CaptureCluster;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 232
    new-instance v0, Lcom/motorola/Camera/View/CaptureCluster$3;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/CaptureCluster$3;-><init>(Lcom/motorola/Camera/View/CaptureCluster;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterButtonHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    .line 58
    iput v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMode:I

    .line 59
    iput v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    .line 60
    iput-boolean v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCleanView:Z

    .line 61
    iput-boolean v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mIsRecording:Z

    .line 62
    const-string v0, "CaptureCluster"

    iput-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->TAG:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mVideoSnapshotButton:Landroid/widget/ImageButton;

    .line 67
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    .line 68
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCamcorderSwitch:Lcom/motorola/Camera/View/CamcoderSwitch;

    .line 69
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    .line 200
    new-instance v0, Lcom/motorola/Camera/View/CaptureCluster$1;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/CaptureCluster$1;-><init>(Lcom/motorola/Camera/View/CaptureCluster;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 213
    new-instance v0, Lcom/motorola/Camera/View/CaptureCluster$2;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/CaptureCluster$2;-><init>(Lcom/motorola/Camera/View/CaptureCluster;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 232
    new-instance v0, Lcom/motorola/Camera/View/CaptureCluster$3;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/CaptureCluster$3;-><init>(Lcom/motorola/Camera/View/CaptureCluster;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterButtonHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    .line 58
    iput v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMode:I

    .line 59
    iput v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    .line 60
    iput-boolean v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCleanView:Z

    .line 61
    iput-boolean v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mIsRecording:Z

    .line 62
    const-string v0, "CaptureCluster"

    iput-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->TAG:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mVideoSnapshotButton:Landroid/widget/ImageButton;

    .line 67
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    .line 68
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCamcorderSwitch:Lcom/motorola/Camera/View/CamcoderSwitch;

    .line 69
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    .line 200
    new-instance v0, Lcom/motorola/Camera/View/CaptureCluster$1;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/CaptureCluster$1;-><init>(Lcom/motorola/Camera/View/CaptureCluster;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 213
    new-instance v0, Lcom/motorola/Camera/View/CaptureCluster$2;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/CaptureCluster$2;-><init>(Lcom/motorola/Camera/View/CaptureCluster;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 232
    new-instance v0, Lcom/motorola/Camera/View/CaptureCluster$3;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/CaptureCluster$3;-><init>(Lcom/motorola/Camera/View/CaptureCluster;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterButtonHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/Camera/View/CaptureCluster;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private computeCoordinates(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 416
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 418
    .local v0, location:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 420
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 422
    .local v1, viewRect:Landroid/graphics/Rect;
    aget v2, v0, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 423
    aget v2, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 424
    aget v2, v0, v4

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 425
    aget v2, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 427
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "computeCoordinates"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-object v1
.end method

.method private frontCameraSwitch()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    invoke-interface {v0}, Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;->onFrontCameraSwitch()V

    .line 324
    :cond_0
    return-void
.end method


# virtual methods
.method public enableCamcorderSwitch(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCamcorderSwitch:Lcom/motorola/Camera/View/CamcoderSwitch;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/View/CamcoderSwitch;->setEnabled(Z)V

    .line 434
    return-void
.end method

.method public enableFrontCameraSwitch(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 438
    if-eqz p1, :cond_0

    .line 439
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 443
    :goto_0
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    const/high16 v1, 0x7600

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public enableMute(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 457
    return-void
.end method

.method public enableVideoSnapshot(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mVideoSnapshotButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 448
    if-eqz p1, :cond_0

    .line 449
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mVideoSnapshotButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 453
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mVideoSnapshotButton:Landroid/widget/ImageButton;

    const/high16 v1, 0x7600

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public getCameraMode()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMode:I

    return v0
.end method

.method public isCleanView()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCleanView:Z

    return v0
.end method

.method public isVideoRecordingInProgress()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mIsRecording:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 342
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/motorola/Camera/View/CaptureCluster;->TAG:Ljava/lang/String;

    const-string v4, "onClick()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 377
    :cond_1
    :goto_0
    return-void

    .line 346
    :pswitch_0
    iget v3, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    if-nez v3, :cond_4

    .line 347
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    if-eqz v2, :cond_1

    .line 349
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->TAG:Ljava/lang/String;

    const-string v3, "onClick() -- calling onStillCaptureDown"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_2
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_3

    const-string v2, "MotoCameraKPI"

    const-string v3, "captureCluster capture start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_3
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    invoke-interface {v2, v1}, Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;->onStillCaptureDown(Z)V

    goto :goto_0

    .line 354
    :cond_4
    iget v3, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    if-ne v2, v3, :cond_6

    .line 355
    iget-boolean v3, p0, Lcom/motorola/Camera/View/CaptureCluster;->mIsRecording:Z

    if-nez v3, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {p0, v1, v2}, Lcom/motorola/Camera/View/CaptureCluster;->videoCapture(ZZ)V

    goto :goto_0

    .line 356
    :cond_6
    const/4 v3, 0x2

    iget v4, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    if-ne v3, v4, :cond_1

    .line 357
    const v3, 0x7f0d0012

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 358
    .local v0, captureBtn:Landroid/widget/ImageButton;
    const v3, 0x7f02002d

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 360
    iput v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    .line 361
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    if-eqz v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    invoke-interface {v1, v2}, Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;->onStillCaptureDown(Z)V

    goto :goto_0

    .line 367
    .end local v0           #captureBtn:Landroid/widget/ImageButton;
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/Camera/View/CaptureCluster;->frontCameraSwitch()V

    goto :goto_0

    .line 370
    :pswitch_2
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    invoke-interface {v1}, Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;->onVideoSnapshot()V

    goto :goto_0

    .line 373
    :pswitch_3
    iget-object v3, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 374
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;->onMuteToggle(Z)V

    goto :goto_0

    :cond_7
    move v1, v2

    .line 373
    goto :goto_1

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d000f
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    const v1, 0x7f0d0012

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 85
    .local v0, captureBtn:Landroid/widget/ImageButton;
    const v1, 0x7f0d0010

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    .line 87
    const/high16 v1, 0x7f0d

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/Camera/View/CamcoderSwitch;

    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCamcorderSwitch:Lcom/motorola/Camera/View/CamcoderSwitch;

    .line 88
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCamcorderSwitch:Lcom/motorola/Camera/View/CamcoderSwitch;

    invoke-virtual {v1, p0}, Lcom/motorola/Camera/View/CamcoderSwitch;->setOnSwitchListener(Lcom/motorola/Camera/View/CamcoderSwitch$OnSwitchListener;)V

    .line 90
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 92
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v1, 0x7f0d0011

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    .line 96
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 98
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    .line 102
    :cond_0
    const v1, 0x7f0d000f

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mVideoSnapshotButton:Landroid/widget/ImageButton;

    .line 103
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mVideoSnapshotButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mVideoSnapshotButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mVideoSnapshotButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    .line 108
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 109
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 380
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 388
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 382
    :pswitch_0
    iget v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    invoke-interface {v0}, Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;->onStillCaptureFocus()V

    goto :goto_0

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0012
        :pswitch_0
    .end packed-switch
.end method

.method public onSwitch(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 327
    const v3, 0x7f0d0012

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 328
    .local v0, captureBtn:Landroid/widget/ImageButton;
    invoke-virtual {p0, v2, v1}, Lcom/motorola/Camera/View/CaptureCluster;->videoCapture(ZZ)V

    .line 329
    if-nez p1, :cond_1

    .line 330
    const v3, 0x7f02002d

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 331
    iput v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    .line 337
    :goto_0
    iget-object v3, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    if-eqz v3, :cond_0

    .line 338
    iget-object v3, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    if-nez p1, :cond_2

    :goto_1
    invoke-interface {v3, v1}, Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;->onCameraModeSwitch(Z)V

    .line 339
    :cond_0
    return-void

    .line 333
    :cond_1
    const v3, 0x7f02002f

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 334
    iput v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 338
    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "event"

    .prologue
    .line 392
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 393
    .local v1, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 395
    .local v2, y:I
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    .line 396
    iget-object v3, p0, Lcom/motorola/Camera/View/CaptureCluster;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "x:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  y:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 411
    :cond_1
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 400
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/motorola/Camera/View/CaptureCluster;->computeCoordinates(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 404
    .local v0, viewRect:Landroid/graphics/Rect;
    iget v3, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 406
    iget-object v3, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    invoke-interface {v3}, Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;->onStillCaptureUp()V

    goto :goto_0

    .line 398
    :pswitch_data_0
    .packed-switch 0x7f0d0012
        :pswitch_0
    .end packed-switch
.end method

.method public setCameraMode(I)V
    .locals 3
    .parameter "cameraMode"

    .prologue
    .line 245
    iget v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    if-ne v1, p1, :cond_0

    .line 265
    :goto_0
    return-void

    .line 248
    :cond_0
    iput p1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    .line 250
    const v1, 0x7f0d0012

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 251
    .local v0, captureBtn:Landroid/widget/ImageButton;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 253
    :pswitch_0
    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 254
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCamcorderSwitch:Lcom/motorola/Camera/View/CamcoderSwitch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/CamcoderSwitch;->setState(I)V

    goto :goto_0

    .line 258
    :pswitch_1
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCamcorderSwitch:Lcom/motorola/Camera/View/CamcoderSwitch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/CamcoderSwitch;->setState(I)V

    goto :goto_0

    .line 262
    :pswitch_2
    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCameraMode(Z)V
    .locals 2
    .parameter "CameraMode"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 131
    if-eqz p1, :cond_1

    .line 132
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public setCaptureClusterListener(Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    .line 281
    return-void
.end method

.method public setCaptureResourceClickable(Z)V
    .locals 2
    .parameter "setClickable"

    .prologue
    .line 315
    const v1, 0x7f0d0012

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 316
    .local v0, captureBtn:Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 319
    :cond_0
    return-void
.end method

.method public setCleanView(Z)V
    .locals 4
    .parameter "cleanView"

    .prologue
    .line 143
    iget-boolean v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCleanView:Z

    if-ne v2, p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iput-boolean p1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCleanView:Z

    .line 147
    invoke-virtual {p0}, Lcom/motorola/Camera/View/CaptureCluster;->clearAnimation()V

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, a:Landroid/view/animation/Animation;
    if-eqz p1, :cond_2

    .line 150
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mContext:Landroid/content/Context;

    const v3, 0x7f030016

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 151
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 152
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 158
    :goto_1
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 159
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 162
    invoke-virtual {p0}, Lcom/motorola/Camera/View/CaptureCluster;->getCameraMode()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 163
    const v2, 0x7f0d000c

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 164
    .local v1, clusterFrame:Landroid/widget/FrameLayout;
    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 154
    .end local v1           #clusterFrame:Landroid/widget/FrameLayout;
    :cond_2
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mContext:Landroid/content/Context;

    const v3, 0x7f030015

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 155
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1
.end method

.method public setCleanView(ZZ)V
    .locals 4
    .parameter "cleanView"
    .parameter "hideCaptureButton"

    .prologue
    .line 171
    const v2, 0x7f0d0012

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 173
    .local v1, captureBtn:Landroid/widget/ImageButton;
    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    :goto_0
    return-void

    .line 181
    :cond_0
    iput-boolean p1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCleanView:Z

    .line 182
    invoke-virtual {p0}, Lcom/motorola/Camera/View/CaptureCluster;->clearAnimation()V

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, a:Landroid/view/animation/Animation;
    if-eqz p1, :cond_1

    .line 185
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mContext:Landroid/content/Context;

    const v3, 0x7f030016

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 186
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 187
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterButtonHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 193
    :goto_1
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 194
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 196
    invoke-virtual {p0, v0}, Lcom/motorola/Camera/View/CaptureCluster;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mContext:Landroid/content/Context;

    const v3, 0x7f030015

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 190
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1
.end method

.method public setMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 113
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-ne v2, p1, :cond_1

    :cond_0
    iget v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMode:I

    if-ne v2, p1, :cond_2

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    invoke-virtual {p0, v4}, Lcom/motorola/Camera/View/CaptureCluster;->setCleanView(Z)V

    .line 118
    iput p1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMode:I

    .line 120
    const v2, 0x7f0d000e

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 121
    .local v1, twoButtonBckg:Landroid/widget/ImageView;
    const v2, 0x7f0d000d

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 123
    .local v0, threeButtonBckg:Landroid/widget/ImageView;
    if-nez p1, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    if-nez p1, :cond_4

    move v2, v4

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    if-nez p1, :cond_5

    :goto_3
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v2, v4

    .line 123
    goto :goto_1

    :cond_4
    move v2, v3

    .line 124
    goto :goto_2

    :cond_5
    move v4, v3

    .line 125
    goto :goto_3
.end method

.method public videoCapture(ZZ)V
    .locals 5
    .parameter "start"
    .parameter "notifyListeners"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 284
    iget-boolean v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mIsRecording:Z

    if-ne v2, p1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iput-boolean p1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mIsRecording:Z

    .line 288
    const v2, 0x7f0d0012

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 290
    .local v0, captureBtn:Landroid/widget/ImageButton;
    if-eqz p1, :cond_2

    .line 291
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mVideoSnapshotButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 292
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 293
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCamcorderSwitch:Lcom/motorola/Camera/View/CamcoderSwitch;

    invoke-virtual {v2, v4}, Lcom/motorola/Camera/View/CamcoderSwitch;->setVisibility(I)V

    .line 294
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 296
    const v2, 0x7f040009

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 297
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 298
    .local v1, glowing:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 299
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    invoke-interface {v2}, Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;->onVideoRecordingStarted()V

    goto :goto_0

    .line 302
    .end local v1           #glowing:Landroid/graphics/drawable/AnimationDrawable;
    :cond_2
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mVideoSnapshotButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 303
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 304
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCamcorderSwitch:Lcom/motorola/Camera/View/CamcoderSwitch;

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/View/CamcoderSwitch;->setVisibility(I)V

    .line 305
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 306
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 308
    const v2, 0x7f02002f

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 309
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    if-eqz v2, :cond_0

    .line 310
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    invoke-interface {v2}, Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;->onVideoRecordingStopped()V

    goto :goto_0
.end method
