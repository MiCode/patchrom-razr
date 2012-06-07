.class public Lcom/motorola/Camera/FocusManager;
.super Ljava/lang/Object;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/FocusManager$1;,
        Lcom/motorola/Camera/FocusManager$MainHandler;,
        Lcom/motorola/Camera/FocusManager$FocusListener;
    }
.end annotation


# static fields
.field private static final RESET_TOUCH_FOCUS:I = 0x0

.field private static final RESET_TOUCH_FOCUS_DELAY:I = 0xfa0

.field private static final STATE_FAIL:I = 0x4

.field private static final STATE_FOCUSING:I = 0x1

.field private static final STATE_FOCUSING_SNAP_ON_FINISH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SUCCESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FocusManager"


# instance fields
.field private mDefaultFocusMode:Ljava/lang/String;

.field private mFocusArea:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusMode:Ljava/lang/String;

.field private mFocusModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusTone:Landroid/media/MediaPlayer;

.field private mFocusView:Lcom/motorola/Camera/View/FocusView;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mListener:Lcom/motorola/Camera/FocusManager$FocusListener;

.field private mLowLight:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreviewFrame:Landroid/view/View;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/motorola/Camera/FocusManager;->mInitialized:Z

    .line 46
    iput v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    .line 64
    iput-boolean v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusAreaSupported:Z

    .line 69
    iput-boolean v0, p0, Lcom/motorola/Camera/FocusManager;->mLowLight:Z

    .line 100
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/motorola/Camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    .line 101
    new-instance v0, Lcom/motorola/Camera/FocusManager$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/Camera/FocusManager$MainHandler;-><init>(Lcom/motorola/Camera/FocusManager;Lcom/motorola/Camera/FocusManager$1;)V

    iput-object v0, p0, Lcom/motorola/Camera/FocusManager;->mHandler:Landroid/os/Handler;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/Camera/FocusManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/motorola/Camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/Camera/FocusManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/motorola/Camera/FocusManager;->cancelAutoFocus()V

    return-void
.end method

.method private autoFocus(Z)V
    .locals 2
    .parameter "snapOnFinish"

    .prologue
    const/4 v1, 0x0

    .line 406
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mListener:Lcom/motorola/Camera/FocusManager$FocusListener;

    invoke-interface {v0}, Lcom/motorola/Camera/FocusManager$FocusListener;->autoFocus()Z

    .line 407
    if-eqz p1, :cond_0

    .line 408
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    .line 412
    :goto_0
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/Camera/View/FocusView;->updateFocusArea(ZZZ)Z

    .line 413
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 414
    return-void

    .line 410
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    goto :goto_0
.end method

.method private calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 10
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "areaMultiple"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "rect"

    .prologue
    .line 426
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 427
    .local v2, areaWidth:I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 428
    .local v1, areaHeight:I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/motorola/Camera/CameraGlobalTools;->clamp(III)I

    move-result v3

    .line 429
    .local v3, left:I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/motorola/Camera/CameraGlobalTools;->clamp(III)I

    move-result v5

    .line 431
    .local v5, top:I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 432
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/motorola/Camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 433
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/motorola/Camera/CameraGlobalTools;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 434
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 397
    invoke-virtual {p0}, Lcom/motorola/Camera/FocusManager;->resetTouchFocus()V

    .line 398
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mListener:Lcom/motorola/Camera/FocusManager$FocusListener;

    invoke-interface {v0}, Lcom/motorola/Camera/FocusManager$FocusListener;->cancelAutoFocus()Z

    .line 399
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mListener:Lcom/motorola/Camera/FocusManager$FocusListener;

    invoke-interface {v0}, Lcom/motorola/Camera/FocusManager$FocusListener;->setFocusParameters()V

    .line 400
    iput v1, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    .line 401
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 403
    return-void
.end method

.method private capture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 417
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mListener:Lcom/motorola/Camera/FocusManager$FocusListener;

    invoke-interface {v0}, Lcom/motorola/Camera/FocusManager$FocusListener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iput v2, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    .line 419
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 422
    :cond_0
    return-void
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
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
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 478
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private needAutoFocusCall()Z
    .locals 2

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/motorola/Camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, focusMode:Ljava/lang/String;
    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static prepareMatrix(Landroid/graphics/Matrix;ZIII)V
    .locals 4
    .parameter "matrix"
    .parameter "mirror"
    .parameter "displayOrientation"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/high16 v3, 0x44fa

    const/high16 v2, 0x4000

    const/high16 v1, 0x3f80

    .line 439
    if-eqz p1, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 441
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 444
    int-to-float v0, p3

    div-float/2addr v0, v3

    int-to-float v1, p4

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 445
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 446
    return-void

    :cond_0
    move v0, v1

    .line 439
    goto :goto_0
.end method

.method private setDefaultFocusMode()V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusModes:Ljava/util/List;

    .line 484
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusModes:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusModes:Ljava/util/List;

    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    const-string v0, "continuous-picture"

    iput-object v0, p0, Lcom/motorola/Camera/FocusManager;->mDefaultFocusMode:Ljava/lang/String;

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusModes:Ljava/util/List;

    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 488
    const-string v0, "auto"

    iput-object v0, p0, Lcom/motorola/Camera/FocusManager;->mDefaultFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 489
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusModes:Ljava/util/List;

    const-string v1, "fixed"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    const-string v0, "fixed"

    iput-object v0, p0, Lcom/motorola/Camera/FocusManager;->mDefaultFocusMode:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 382
    iput-object v1, p0, Lcom/motorola/Camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/FocusManager;->mInitialized:Z

    .line 384
    invoke-virtual {p0}, Lcom/motorola/Camera/FocusManager;->removeMessages()V

    .line 386
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 388
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 389
    iput-object v1, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    .line 391
    :cond_0
    return-void
.end method

.method public doSnap()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 263
    iget-boolean v0, p0, Lcom/motorola/Camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    invoke-direct {p0}, Lcom/motorola/Camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 269
    :cond_2
    invoke-direct {p0}, Lcom/motorola/Camera/FocusManager;->capture()V

    goto :goto_0

    .line 270
    :cond_3
    iget v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    if-ne v0, v2, :cond_4

    .line 274
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    goto :goto_0

    .line 275
    :cond_4
    iget v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    .line 283
    invoke-direct {p0, v2}, Lcom/motorola/Camera/FocusManager;->autoFocus(Z)V

    goto :goto_0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 474
    :goto_0
    return-object v0

    .line 458
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 460
    const-string v0, "auto"

    iput-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 464
    :goto_1
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/Camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/Camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    const-string v0, "auto"

    iget-object v1, p0, Lcom/motorola/Camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/Camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 469
    const-string v0, "auto"

    iput-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 474
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 462
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mDefaultFocusMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 471
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_2
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mMeteringArea:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initialize(Lcom/motorola/Camera/FocusManager$FocusListener;Lcom/motorola/Camera/View/FocusView;Landroid/view/View;ZI)V
    .locals 4
    .parameter "listener"
    .parameter "focusView"
    .parameter "previewFrame"
    .parameter "mirror"
    .parameter "orientation"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/motorola/Camera/FocusManager;->mListener:Lcom/motorola/Camera/FocusManager$FocusListener;

    .line 128
    iput-object p2, p0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    .line 129
    iput-object p3, p0, Lcom/motorola/Camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    .line 131
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 133
    .local v0, matrix:Landroid/graphics/Matrix;
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preview width and height"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "focus view width and height"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/FocusView;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/FocusView;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v0, p4, p5, v1, v2}, Lcom/motorola/Camera/FocusManager;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 139
    iget-object v1, p0, Lcom/motorola/Camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 141
    return-void
.end method

.method public initializeFocusTone(Landroid/content/res/AssetFileDescriptor;)V
    .locals 7
    .parameter "fd"

    .prologue
    .line 502
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "FocusManager"

    const-string v1, "initializeFocusTone() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 507
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    .line 508
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 510
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 511
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "FocusManager"

    const-string v1, "initializeFocusTone() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_2
    return-void

    .line 515
    :catch_0
    move-exception v6

    .line 517
    .local v6, ex:Ljava/io/IOException;
    const-string v0, "FocusManager"

    const-string v1, "initializeFocusTone() - failed to load audio for focus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public initializeParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    const/4 v1, 0x1

    .line 149
    iput-object p1, p0, Lcom/motorola/Camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 151
    invoke-direct {p0}, Lcom/motorola/Camera/FocusManager;->setDefaultFocusMode()V

    .line 153
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "auto"

    iget-object v2, p0, Lcom/motorola/Camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/Camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusAreaSupported:Z

    .line 157
    iput-boolean v1, p0, Lcom/motorola/Camera/FocusManager;->mInitialized:Z

    .line 160
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAutoFocus(Z)V
    .locals 5
    .parameter "focusState"

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 301
    iget v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 302
    if-eqz p1, :cond_1

    .line 303
    iput v2, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    .line 307
    :goto_0
    invoke-direct {p0}, Lcom/motorola/Camera/FocusManager;->capture()V

    .line 332
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0, p1, v3, p1}, Lcom/motorola/Camera/View/FocusView;->updateFocusArea(ZZZ)Z

    .line 333
    return-void

    .line 305
    :cond_1
    iput v4, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    goto :goto_0

    .line 308
    :cond_2
    iget v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 312
    if-eqz p1, :cond_4

    .line 313
    iput v2, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    .line 317
    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance()Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterToneOn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 318
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 325
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 321
    :cond_4
    iput v4, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    goto :goto_2

    .line 328
    :cond_5
    iget v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method public onLowLight(Z)V
    .locals 0
    .parameter "lowlight"

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/motorola/Camera/FocusManager;->mLowLight:Z

    .line 340
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    .line 343
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    .line 347
    invoke-virtual {p0}, Lcom/motorola/Camera/FocusManager;->resetTouchFocus()V

    .line 348
    return-void
.end method

.method public onShutter()V
    .locals 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 293
    return-void
.end method

.method public onShutterDown()V
    .locals 2

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/motorola/Camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-direct {p0}, Lcom/motorola/Camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/FocusManager;->autoFocus(Z)V

    goto :goto_0
.end method

.method public onShutterUp()V
    .locals 2

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/motorola/Camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-direct {p0}, Lcom/motorola/Camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 254
    :cond_2
    invoke-direct {p0}, Lcom/motorola/Camera/FocusManager;->cancelAutoFocus()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 18
    .parameter "e"

    .prologue
    .line 175
    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 232
    :goto_0
    return v1

    .line 177
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/FocusManager;->needAutoFocusCall()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 180
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 182
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/FocusManager;->cancelAutoFocus()V

    .line 186
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 187
    .local v16, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 188
    .local v17, y:I
    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance()Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFocusViewWidth()F

    move-result v13

    .line 189
    .local v13, focusWidth:F
    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance()Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFocusViewHeight()F

    move-result v10

    .line 191
    .local v10, focusHeight:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/FocusView;->getFocusRegion()Landroid/graphics/RectF;

    move-result-object v11

    .line 193
    .local v11, focusRegion:Landroid/graphics/RectF;
    move/from16 v0, v16

    int-to-float v1, v0

    move/from16 v0, v17

    int-to-float v2, v0

    invoke-virtual {v11, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_4

    .line 194
    const/4 v1, 0x0

    goto :goto_0

    .line 198
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 199
    .local v7, previewWidth:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 200
    .local v8, previewHeight:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    if-nez v1, :cond_5

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/Camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    new-instance v2, Landroid/hardware/Camera$Area;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/Camera/FocusManager;->mMeteringArea:Ljava/util/ArrayList;

    .line 204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mMeteringArea:Ljava/util/ArrayList;

    new-instance v2, Landroid/hardware/Camera$Area;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v5, v16, v1

    .line 207
    .local v5, newx:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v6, v17, v1

    .line 212
    .local v6, newy:I
    float-to-int v2, v13

    float-to-int v3, v10

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v9, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/motorola/Camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 213
    float-to-int v2, v13

    float-to-int v3, v10

    const/high16 v4, 0x3fc0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mMeteringArea:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v9, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/motorola/Camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 215
    float-to-int v1, v13

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v16, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v3, v7

    float-to-int v4, v13

    sub-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/motorola/Camera/CameraGlobalTools;->clamp(III)I

    move-result v1

    int-to-float v14, v1

    .line 216
    .local v14, left:F
    float-to-int v1, v10

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v17, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v8

    float-to-int v4, v10

    sub-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/motorola/Camera/CameraGlobalTools;->clamp(III)I

    move-result v1

    int-to-float v15, v1

    .line 217
    .local v15, top:F
    new-instance v12, Landroid/graphics/RectF;

    add-float v1, v14, v13

    add-float v2, v15, v10

    invoke-direct {v12, v14, v15, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 219
    .local v12, focusViewarea:Landroid/graphics/RectF;
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_6

    const-string v2, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HAL"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v1, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v1, v12}, Lcom/motorola/Camera/View/FocusView;->setFocusArea(Landroid/graphics/RectF;)V

    .line 221
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_7

    const-string v1, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v12, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v12, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v12, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/Camera/View/FocusView;->updateFocusArea(ZZZ)Z

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 227
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/motorola/Camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mListener:Lcom/motorola/Camera/FocusManager$FocusListener;

    invoke-interface {v1}, Lcom/motorola/Camera/FocusManager$FocusListener;->setFocusParameters()V

    .line 229
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/motorola/Camera/FocusManager;->autoFocus(Z)V

    .line 232
    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 496
    iput-object p1, p0, Lcom/motorola/Camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 497
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 379
    return-void
.end method

.method public resetTouchFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 364
    iget-boolean v0, p0, Lcom/motorola/Camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 366
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "FocusManager"

    const-string v1, "resetTouchFocus enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/FocusView;->resetFocusArea()V

    .line 368
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0, v2, v2, v2}, Lcom/motorola/Camera/View/FocusView;->updateFocusArea(ZZZ)Z

    .line 369
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 370
    iput-object v3, p0, Lcom/motorola/Camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    .line 371
    iput-object v3, p0, Lcom/motorola/Camera/FocusManager;->mMeteringArea:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setFocusParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/motorola/Camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 164
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "auto"

    iget-object v1, p0, Lcom/motorola/Camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/Camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusAreaSupported:Z

    .line 168
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowCafStatus()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/motorola/Camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    iget-boolean v2, p0, Lcom/motorola/Camera/FocusManager;->mLowLight:Z

    if-eqz v2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 109
    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/Camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "continuous-picture"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 114
    goto :goto_0
.end method
