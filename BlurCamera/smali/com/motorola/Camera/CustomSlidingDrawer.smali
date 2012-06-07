.class public Lcom/motorola/Camera/CustomSlidingDrawer;
.super Landroid/view/ViewGroup;
.source "CustomSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/CustomSlidingDrawer$1;,
        Lcom/motorola/Camera/CustomSlidingDrawer$SlidingHandler;,
        Lcom/motorola/Camera/CustomSlidingDrawer$DrawerToggler;,
        Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerScrollListener;,
        Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerCloseListener;,
        Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerOpenListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final EXPANDED_FULL_OPEN:I = -0x2711

.field private static final MAXIMUM_ACCELERATION:F = 1100.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAXIMUM_TAP_VELOCITY:F = 100.0f

.field private static final MSG_ANIMATE:I = 0x3e8

.field private static final OPEN_BUTTON1:I = -0x2713

.field private static final OPEN_BUTTON2:I = -0x2714

.field private static final OPEN_BUTTON3:I = -0x2715

.field private static final OPEN_BUTTON4:I = -0x2716

.field private static final OPEN_BUTTON5:I = -0x2717

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAP_THRESHOLD:I = 0x6

.field private static final USER_THRESHOLD:I = 0xa

.field private static final VELOCITY_UNITS:I = 0x3e8

.field private static final VIBRATE_DURATION:I = 0x32


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAllowSingleTap:Z

.field private mAnimateOnClick:Z

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBottomOffset:I

.field private mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

.field private mContent:Landroid/view/View;

.field private final mContentId:I

.field private mCurrentAnimationTime:J

.field private mExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mHandle:Landroid/view/View;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private mHandleOpen:Z

.field private mHandleWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mLocked:Z

.field private final mMaximumAcceleration:I

.field private final mMaximumMajorVelocity:I

.field private final mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnDrawerCloseListener:Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerScrollListener;

.field private mScale:F

.field private mSliderRestore:Z

.field private final mTapThreshold:I

.field private mTopOffset:I

.field private mTouchDelta:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVertical:Z

.field private mVib:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/Camera/CustomSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x3f00

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 217
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 114
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 131
    new-instance v5, Lcom/motorola/Camera/CustomSlidingDrawer$SlidingHandler;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/motorola/Camera/CustomSlidingDrawer$SlidingHandler;-><init>(Lcom/motorola/Camera/CustomSlidingDrawer;Lcom/motorola/Camera/CustomSlidingDrawer$1;)V

    iput-object v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandler:Landroid/os/Handler;

    .line 151
    const-string v5, "CustomSlidingDrawer"

    iput-object v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->TAG:Ljava/lang/String;

    .line 152
    iput-boolean v6, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandleOpen:Z

    .line 153
    iput-boolean v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mSliderRestore:Z

    .line 218
    sget-object v5, Landroid/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v5, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 220
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 221
    .local v4, orientation:I
    if-ne v4, v6, :cond_0

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVertical:Z

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mScale:F

    .line 223
    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mBottomOffset:I

    .line 224
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTopOffset:I

    .line 225
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAllowSingleTap:Z

    .line 226
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimateOnClick:Z

    .line 228
    const/16 v5, 0x96

    iput v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTopOffset:I

    .line 232
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 233
    .local v3, handleId:I
    if-nez v3, :cond_1

    .line 234
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3           #handleId:I
    :cond_0
    move v5, v7

    .line 221
    goto :goto_0

    .line 238
    .restart local v3       #handleId:I
    :cond_1
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 239
    .local v1, contentId:I
    if-nez v1, :cond_2

    .line 240
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 244
    :cond_2
    if-ne v3, v1, :cond_3

    .line 245
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content and handle attributes must refer to different children."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 249
    :cond_3
    iput v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandleId:I

    .line 250
    iput v1, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContentId:I

    .line 252
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 253
    .local v2, density:F
    const/high16 v5, 0x40c0

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTapThreshold:I

    .line 254
    const/high16 v5, 0x42c8

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mMaximumTapVelocity:I

    .line 255
    const/high16 v5, 0x4316

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mMaximumMinorVelocity:I

    .line 256
    const/high16 v5, 0x4348

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mMaximumMajorVelocity:I

    .line 257
    const v5, 0x44898000

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mMaximumAcceleration:I

    .line 258
    const/high16 v5, 0x447a

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVelocityUnits:I

    .line 260
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 262
    const-string v5, "vibrator"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    iput-object v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVib:Landroid/os/Vibrator;

    .line 264
    invoke-virtual {p0, v7}, Lcom/motorola/Camera/CustomSlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 265
    return-void
.end method

.method static synthetic access$200(Lcom/motorola/Camera/CustomSlidingDrawer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mLocked:Z

    return v0
.end method

.method static synthetic access$300(Lcom/motorola/Camera/CustomSlidingDrawer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimateOnClick:Z

    return v0
.end method

.method static synthetic access$400(Lcom/motorola/Camera/CustomSlidingDrawer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->doAnimation()V

    return-void
.end method

.method private animateClose(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 577
    invoke-direct {p0, p1}, Lcom/motorola/Camera/CustomSlidingDrawer;->prepareTracking(I)V

    .line 579
    iget v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/motorola/Camera/CustomSlidingDrawer;->performFling(IFZ)V

    .line 580
    return-void
.end method

.method private animateOpen(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 584
    invoke-direct {p0, p1}, Lcom/motorola/Camera/CustomSlidingDrawer;->prepareTracking(I)V

    .line 586
    iget v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/motorola/Camera/CustomSlidingDrawer;->performFling(IFZ)V

    .line 587
    return-void
.end method

.method private closeDrawer()V
    .locals 2

    .prologue
    .line 1064
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/motorola/Camera/CustomSlidingDrawer;->moveHandle(I)V

    .line 1065
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1066
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 1069
    iget-boolean v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_1

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 1073
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mExpanded:Z

    .line 1074
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mOnDrawerCloseListener:Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mOnDrawerCloseListener:Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v0}, Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    goto :goto_0
.end method

.method private doAnimation()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 848
    iget-boolean v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimating:Z

    if-eqz v2, :cond_3

    .line 849
    invoke-direct {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->incrementAnimation()V

    .line 850
    const/4 v0, 0x0

    .line 853
    .local v0, initialPosition:I
    iget-boolean v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandleOpen:Z

    if-eqz v2, :cond_0

    .line 855
    iget v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v0, v2

    .line 858
    :cond_0
    iget v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimationPosition:F

    iget-boolean v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_1

    move v0, v1

    .end local v0           #initialPosition:I
    :cond_1
    iget v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mBottomOffset:I

    sub-int v3, v0, v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_4

    .line 859
    iput-boolean v1, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimating:Z

    .line 860
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 861
    const-string v1, "CustomSlidingDrawer"

    const-string v2, "Do Animation: closeDrawer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_2
    invoke-direct {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->closeDrawer()V

    .line 879
    :cond_3
    :goto_0
    return-void

    .line 865
    :cond_4
    iget v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimationPosition:F

    iget-boolean v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTopOffset:I

    sub-int/2addr v2, v4

    :goto_1
    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_7

    .line 867
    iput-boolean v1, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimating:Z

    .line 868
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_5

    .line 869
    const-string v1, "CustomSlidingDrawer"

    const-string v2, "Do Animation: openDrawer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_5
    invoke-direct {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->openDrawer()V

    goto :goto_0

    .line 865
    :cond_6
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->getWidth()I

    move-result v2

    iget v4, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTopOffset:I

    sub-int/2addr v2, v4

    goto :goto_1

    .line 873
    :cond_7
    iget v1, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimationPosition:F

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/motorola/Camera/CustomSlidingDrawer;->moveHandle(I)V

    .line 874
    iget-wide v1, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mCurrentAnimationTime:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mCurrentAnimationTime:J

    .line 875
    iget-object v1, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private incrementAnimation()V
    .locals 9

    .prologue
    .line 882
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 883
    .local v1, now:J
    iget-wide v6, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimationLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float v4, v6, v7

    .line 884
    .local v4, t:F
    iget v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimationPosition:F

    .line 885
    .local v3, position:F
    iget v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimatedVelocity:F

    .line 886
    .local v5, v:F
    iget v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimatedAcceleration:F

    .line 887
    .local v0, a:F
    mul-float v6, v5, v4

    add-float/2addr v6, v3

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimationPosition:F

    .line 888
    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimatedVelocity:F

    .line 889
    iput-wide v1, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimationLastTime:J

    .line 890
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_0

    .line 891
    const-string v6, "CustomSlidingDrawer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "incrementAnimation:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimationPosition:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_0
    return-void
.end method

.method private moveHandle(I)V
    .locals 12
    .parameter "position"

    .prologue
    const/16 v9, -0x2711

    const/16 v8, -0x2712

    const/4 v11, 0x0

    .line 701
    iget-object v4, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    .line 703
    .local v4, handle:Landroid/view/View;
    iget-boolean v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_4

    .line 704
    if-ne p1, v9, :cond_0

    .line 706
    iget v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mBottom:I

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTop:I

    sub-int/2addr v7, v8

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTopOffset:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 707
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->invalidate()V

    .line 795
    :goto_0
    return-void

    .line 708
    :cond_0
    if-ne p1, v8, :cond_1

    .line 710
    iget v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTop:I

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mBottomOffset:I

    add-int/2addr v7, v8

    invoke-virtual {v4, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 711
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->invalidate()V

    goto :goto_0

    .line 714
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 715
    .local v0, bottom:I
    sub-int v2, p1, v0

    .line 716
    .local v2, deltaY:I
    iget v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mBottom:I

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTopOffset:I

    sub-int/2addr v7, v8

    if-le p1, v7, :cond_3

    .line 717
    iget v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mBottom:I

    sub-int/2addr v7, v0

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTopOffset:I

    sub-int v2, v7, v8

    .line 722
    :cond_2
    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 724
    iget-object v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 725
    .local v3, frame:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 727
    .local v5, region:Landroid/graphics/Rect;
    invoke-virtual {v4, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 728
    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 730
    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v2

    iget v9, v3, Landroid/graphics/Rect;->right:I

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v2

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 731
    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v2

    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->getWidth()I

    move-result v8

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v2

    iget-object v10, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v11, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 735
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mBottom:I

    iget v9, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTop:I

    sub-int/2addr v8, v9

    invoke-virtual {v5, v11, v11, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 737
    invoke-virtual {p0, v5}, Lcom/motorola/Camera/CustomSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 718
    .end local v3           #frame:Landroid/graphics/Rect;
    .end local v5           #region:Landroid/graphics/Rect;
    :cond_3
    iget v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTop:I

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mBottom:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandleWidth:I

    add-int/2addr v7, v8

    add-int/2addr v7, v0

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mBottomOffset:I

    sub-int/2addr v7, v8

    if-ge v2, v7, :cond_2

    .line 719
    iget v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTop:I

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mBottom:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v0

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandleWidth:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mBottomOffset:I

    sub-int v2, v7, v8

    goto :goto_1

    .line 740
    .end local v0           #bottom:I
    .end local v2           #deltaY:I
    :cond_4
    if-ne p1, v9, :cond_6

    .line 741
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_5

    .line 742
    const-string v7, "CustomSlidingDrawer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FULL OPEN:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_5
    iget v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mRight:I

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mLeft:I

    sub-int/2addr v7, v8

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTopOffset:I

    sub-int/2addr v7, v8

    invoke-virtual {v4, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 746
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->invalidate()V

    .line 748
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->requestLayout()V

    goto/16 :goto_0

    .line 749
    :cond_6
    if-ne p1, v8, :cond_9

    .line 750
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_7

    .line 751
    const-string v7, "CustomSlidingDrawer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FULL CLOSED:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_7
    iget-boolean v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandleOpen:Z

    if-eqz v7, :cond_8

    .line 756
    iget v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mLeft:I

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mBottomOffset:I

    add-int/2addr v7, v8

    invoke-virtual {v4, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 762
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->invalidate()V

    goto/16 :goto_0

    .line 760
    :cond_8
    iget v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mLeft:I

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mBottomOffset:I

    add-int/2addr v7, v8

    invoke-virtual {v4, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_2

    .line 765
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    .line 766
    .local v6, right:I
    sub-int v1, p1, v6

    .line 767
    .local v1, deltaX:I
    iget v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mRight:I

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTopOffset:I

    sub-int/2addr v7, v8

    if-le p1, v7, :cond_b

    .line 768
    iget v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mRight:I

    sub-int/2addr v7, v6

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v8

    .line 773
    :cond_a
    :goto_3
    invoke-virtual {v4, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 775
    iget-object v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 776
    .restart local v3       #frame:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 778
    .restart local v5       #region:Landroid/graphics/Rect;
    invoke-virtual {v4, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 779
    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 781
    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v1

    iget v8, v3, Landroid/graphics/Rect;->top:I

    iget v9, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v1

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 782
    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v1

    iget v8, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v1

    iget-object v9, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->getHeight()I

    move-result v9

    invoke-virtual {v5, v7, v11, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 786
    iget v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mRight:I

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mLeft:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->getHeight()I

    move-result v8

    invoke-virtual {v5, v11, v11, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 789
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->ShowHandle()V

    .line 790
    iget-object v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 792
    invoke-virtual {p0, v5}, Lcom/motorola/Camera/CustomSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 770
    .end local v3           #frame:Landroid/graphics/Rect;
    .end local v5           #region:Landroid/graphics/Rect;
    :cond_b
    iget v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mLeft:I

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandleWidth:I

    add-int/2addr v7, v8

    add-int/2addr v7, v6

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mBottomOffset:I

    sub-int/2addr v7, v8

    if-ge v1, v7, :cond_a

    .line 771
    iget v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mLeft:I

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mRight:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v6

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandleWidth:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mBottomOffset:I

    sub-int v1, v7, v8

    goto :goto_3
.end method

.method private openDrawer()V
    .locals 2

    .prologue
    .line 1080
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/motorola/Camera/CustomSlidingDrawer;->moveHandle(I)V

    .line 1081
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    iget-boolean v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1088
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mExpanded:Z

    .line 1090
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mOnDrawerOpenListener:Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mOnDrawerOpenListener:Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    goto :goto_0
.end method

.method private performFling(IFZ)V
    .locals 8
    .parameter "position"
    .parameter "velocity"
    .parameter "always"

    .prologue
    const/16 v7, 0x3e8

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 590
    int-to-float v2, p1

    iput v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimationPosition:F

    .line 591
    iput p2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimatedVelocity:F

    .line 593
    iget-boolean v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mExpanded:Z

    if-eqz v2, :cond_7

    .line 595
    if-nez p3, :cond_0

    iget v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_0

    iget-boolean v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTopOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v2, v3

    :goto_0
    if-ge p1, v2, :cond_4

    iget v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_4

    .line 599
    :cond_0
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    .line 602
    const-string v2, "CustomSlidingDrawer"

    const-string v3, "Perfrom fling 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_1
    iget v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimatedAcceleration:F

    .line 606
    cmpl-float v2, p2, v4

    if-lez v2, :cond_2

    .line 607
    iput v4, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimatedVelocity:F

    .line 609
    :cond_2
    iget-object v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    invoke-interface {v2, v5}, Lcom/motorola/Camera/DialogCallbackInterface;->notifyDrawerStatus(Z)V

    .line 656
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 657
    .local v0, now:J
    iput-wide v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimationLastTime:J

    .line 658
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mCurrentAnimationTime:J

    .line 659
    iput-boolean v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimating:Z

    .line 660
    iget-object v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 661
    iget-object v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 662
    invoke-direct {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->stopTracking()V

    .line 663
    return-void

    .line 595
    .end local v0           #now:J
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTopOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 611
    :cond_4
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_5

    .line 614
    const-string v2, "CustomSlidingDrawer"

    const-string v3, "Perfrom fling 2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_5
    iget v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimatedAcceleration:F

    .line 619
    cmpg-float v2, p2, v4

    if-gez v2, :cond_6

    .line 620
    iput v4, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimatedVelocity:F

    .line 622
    :cond_6
    iget-object v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    invoke-interface {v2, v6}, Lcom/motorola/Camera/DialogCallbackInterface;->notifyDrawerStatus(Z)V

    goto :goto_1

    .line 629
    :cond_7
    if-nez p3, :cond_c

    iget v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_8

    iget-boolean v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->getHeight()I

    move-result v2

    :goto_2
    div-int/lit8 v2, v2, 0x2

    if-ge p1, v2, :cond_c

    iget v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_c

    .line 632
    :cond_8
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_9

    .line 633
    const-string v2, "CustomSlidingDrawer"

    const-string v3, "Perfrom fling 3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_9
    iget v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimatedAcceleration:F

    .line 637
    cmpl-float v2, p2, v4

    if-lez v2, :cond_a

    .line 638
    iput v4, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimatedVelocity:F

    .line 640
    :cond_a
    iget-object v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    invoke-interface {v2, v5}, Lcom/motorola/Camera/DialogCallbackInterface;->notifyDrawerStatus(Z)V

    goto/16 :goto_1

    .line 629
    :cond_b
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->getWidth()I

    move-result v2

    goto :goto_2

    .line 642
    :cond_c
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_d

    .line 645
    const-string v2, "CustomSlidingDrawer"

    const-string v3, "Perfrom fling 4"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_d
    iget v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimatedAcceleration:F

    .line 649
    cmpg-float v2, p2, v4

    if-gez v2, :cond_e

    .line 650
    iput v4, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimatedVelocity:F

    .line 652
    :cond_e
    iget-object v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    invoke-interface {v2, v6}, Lcom/motorola/Camera/DialogCallbackInterface;->notifyDrawerStatus(Z)V

    goto/16 :goto_1
.end method

.method private prepareContent()V
    .locals 2

    .prologue
    .line 798
    iget-boolean v1, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimating:Z

    if-eqz v1, :cond_0

    .line 831
    :goto_0
    return-void

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    .line 827
    .local v0, content:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 828
    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 830
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private prepareTracking(I)V
    .locals 9
    .parameter "position"

    .prologue
    const/16 v8, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 666
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_0

    .line 667
    const-string v5, "CustomSlidingDrawer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prepareTracking:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_0
    iput-boolean v4, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTracking:Z

    .line 670
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 671
    iget-boolean v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mExpanded:Z

    if-nez v5, :cond_2

    move v2, v4

    .line 672
    .local v2, opening:Z
    :goto_0
    if-eqz v2, :cond_4

    .line 673
    iget v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v3, v3

    iput v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimatedAcceleration:F

    .line 674
    iget v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v3, v3

    iput v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimatedVelocity:F

    .line 675
    iget v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mBottomOffset:I

    iget-boolean v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandleHeight:I

    :goto_1
    add-int/2addr v3, v5

    int-to-float v3, v3

    iput v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimationPosition:F

    .line 678
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_1

    .line 679
    const-string v3, "CustomSlidingDrawer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareTracking:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimationPosition:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_1
    iget v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimationPosition:F

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/motorola/Camera/CustomSlidingDrawer;->moveHandle(I)V

    .line 682
    iput-boolean v4, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimating:Z

    .line 683
    iget-object v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 684
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 685
    .local v0, now:J
    iput-wide v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimationLastTime:J

    .line 686
    const-wide/16 v5, 0x10

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mCurrentAnimationTime:J

    .line 687
    iput-boolean v4, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimating:Z

    .line 698
    .end local v0           #now:J
    :goto_2
    return-void

    .end local v2           #opening:Z
    :cond_2
    move v2, v3

    .line 671
    goto :goto_0

    .line 675
    .restart local v2       #opening:Z
    :cond_3
    iget v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandleWidth:I

    goto :goto_1

    .line 689
    :cond_4
    iget-boolean v4, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_5

    .line 690
    iput-boolean v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimating:Z

    .line 691
    iget-object v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 693
    :cond_5
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_6

    .line 694
    const-string v3, "CustomSlidingDrawer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_6
    invoke-direct {p0, p1}, Lcom/motorola/Camera/CustomSlidingDrawer;->moveHandle(I)V

    goto :goto_2
.end method

.method private stopTracking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 834
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 835
    iput-boolean v1, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTracking:Z

    .line 837
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mOnDrawerScrollListener:Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mOnDrawerScrollListener:Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 842
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 843
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 845
    :cond_1
    return-void
.end method


# virtual methods
.method public HideContent()V
    .locals 2

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1240
    :cond_0
    return-void
.end method

.method public HideHandle()V
    .locals 2

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1232
    :cond_0
    return-void
.end method

.method public ShowHandle()V
    .locals 2

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1224
    :cond_0
    return-void
.end method

.method public animateClose()V
    .locals 2

    .prologue
    .line 969
    invoke-direct {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->prepareContent()V

    .line 970
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mOnDrawerScrollListener:Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerScrollListener;

    .line 971
    .local v0, scrollListener:Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 972
    invoke-interface {v0}, Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 975
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/motorola/Camera/CustomSlidingDrawer;->animateClose(I)V

    .line 977
    if-eqz v0, :cond_1

    .line 978
    invoke-interface {v0}, Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 980
    :cond_1
    return-void

    .line 975
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    goto :goto_0
.end method

.method public animateClose(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1016
    iput-boolean p1, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandleOpen:Z

    .line 1017
    iget-boolean v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 1019
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->animateClose()V

    .line 1027
    :cond_0
    :goto_0
    return-void

    .line 1021
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandleOpen:Z

    if-nez v0, :cond_0

    .line 1024
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->requestLayout()V

    .line 1025
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->invalidate()V

    goto :goto_0
.end method

.method public animateOpen()V
    .locals 2

    .prologue
    .line 992
    invoke-direct {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->prepareContent()V

    .line 993
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mOnDrawerScrollListener:Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerScrollListener;

    .line 994
    .local v0, scrollListener:Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 995
    invoke-interface {v0}, Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 997
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/motorola/Camera/CustomSlidingDrawer;->animateOpen(I)V

    .line 999
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/CustomSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 1001
    if-eqz v0, :cond_1

    .line 1002
    invoke-interface {v0}, Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 1004
    :cond_1
    return-void

    .line 997
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateOpen(Z)V
    .locals 1
    .parameter "handleFlag"

    .prologue
    .line 1040
    iput-boolean p1, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandleOpen:Z

    .line 1041
    iget-boolean v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mSliderRestore:Z

    if-eqz v0, :cond_1

    .line 1043
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->animateOpen()V

    .line 1052
    :cond_0
    :goto_0
    return-void

    .line 1045
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mSliderRestore:Z

    if-nez v0, :cond_0

    .line 1047
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->requestLayout()V

    .line 1048
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->invalidate()V

    .line 1050
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->ShowHandle()V

    goto :goto_0
.end method

.method public animateToggle()V
    .locals 1

    .prologue
    .line 924
    iget-boolean v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 925
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->animateOpen()V

    .line 929
    :goto_0
    return-void

    .line 927
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->animateClose()V

    goto :goto_0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 954
    invoke-direct {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->closeDrawer()V

    .line 955
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->invalidate()V

    .line 956
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->requestLayout()V

    .line 957
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 316
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->getDrawingTime()J

    move-result-wide v1

    .line 317
    .local v1, drawingTime:J
    iget-object v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    .line 318
    .local v3, handle:Landroid/view/View;
    iget-boolean v4, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVertical:Z

    .line 320
    .local v4, isVertical:Z
    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/motorola/Camera/CustomSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 322
    iget-boolean v6, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTracking:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimating:Z

    if-eqz v6, :cond_a

    .line 323
    :cond_0
    iget-object v6, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 324
    .local v0, cache:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    .line 325
    if-eqz v4, :cond_4

    .line 327
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 328
    if-eqz v4, :cond_3

    move v6, v5

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    :cond_1
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 330
    iget-object v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/motorola/Camera/CustomSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 331
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 351
    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    return-void

    .line 328
    .restart local v0       #cache:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    goto :goto_0

    .line 333
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 335
    if-eqz v4, :cond_6

    move v6, v5

    :goto_2
    if-eqz v4, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    iget v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    :cond_5
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 337
    iget-object v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/motorola/Camera/CustomSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 338
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 335
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    goto :goto_2

    .line 341
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 343
    if-eqz v4, :cond_9

    move v6, v5

    :goto_3
    if-eqz v4, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mBottom:I

    sub-int/2addr v5, v7

    iget v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    :cond_8
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 345
    iget-object v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/motorola/Camera/CustomSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 346
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 343
    :cond_9
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    goto :goto_3

    .line 348
    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_a
    iget-boolean v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mExpanded:Z

    if-eqz v5, :cond_2

    .line 349
    iget-object v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/motorola/Camera/CustomSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1
.end method

.method public drawWithoutAnimation()V
    .locals 2

    .prologue
    .line 1245
    invoke-direct {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->openDrawer()V

    .line 1246
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/motorola/Camera/DialogCallbackInterface;->notifyDrawerStatus(Z)V

    .line 1247
    return-void
.end method

.method public getCompleteHeight()I
    .locals 2

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCompleteWidth()I
    .locals 2

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 1187
    iget-boolean v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 1178
    iget-boolean v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 1169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mLocked:Z

    .line 1170
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 270
    iget v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/CustomSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    .line 271
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    new-instance v1, Lcom/motorola/Camera/CustomSlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/Camera/CustomSlidingDrawer$DrawerToggler;-><init>(Lcom/motorola/Camera/CustomSlidingDrawer;Lcom/motorola/Camera/CustomSlidingDrawer$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/CustomSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    .line 278
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    .line 279
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/high16 v13, 0x4120

    .line 408
    iget-boolean v10, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mLocked:Z

    if-eqz v10, :cond_1

    .line 464
    :cond_0
    :goto_0
    return v8

    .line 412
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 414
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 415
    .local v6, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 417
    .local v7, y:F
    iget-object v2, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 418
    .local v2, frame:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    .line 420
    .local v3, handle:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 421
    .local v4, parent:Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 423
    sget-boolean v10, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v10, :cond_2

    .line 424
    const-string v10, "CustomSlidingDrawer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "x:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " y:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_2
    iget v10, v2, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    iget v11, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mScale:F

    mul-float/2addr v11, v13

    sub-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v2, Landroid/graphics/Rect;->left:I

    .line 427
    iget v10, v2, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    iget v11, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mScale:F

    mul-float/2addr v11, v13

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v2, Landroid/graphics/Rect;->right:I

    .line 428
    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    iget v11, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mScale:F

    mul-float/2addr v11, v13

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v2, Landroid/graphics/Rect;->bottom:I

    .line 429
    iget v10, v2, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    iget v11, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mScale:F

    mul-float/2addr v11, v13

    sub-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v2, Landroid/graphics/Rect;->top:I

    .line 430
    new-instance v10, Landroid/view/TouchDelegate;

    invoke-direct {v10, v2, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 433
    iget-boolean v10, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTracking:Z

    if-nez v10, :cond_3

    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {v2, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 437
    :cond_3
    if-nez v0, :cond_5

    .line 438
    iput-boolean v9, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTracking:Z

    .line 440
    iget-object v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVib:Landroid/os/Vibrator;

    const-wide/16 v10, 0x32

    invoke-virtual {v8, v10, v11}, Landroid/os/Vibrator;->vibrate(J)V

    .line 441
    invoke-virtual {v3, v9}, Landroid/view/View;->setPressed(Z)V

    .line 443
    invoke-direct {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->prepareContent()V

    .line 446
    iget-object v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mOnDrawerScrollListener:Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerScrollListener;

    if-eqz v8, :cond_4

    .line 447
    iget-object v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mOnDrawerScrollListener:Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v8}, Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 450
    :cond_4
    iget-boolean v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_6

    .line 452
    iget-object v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 453
    .local v1, bottom:I
    float-to-int v8, v7

    sub-int v8, v1, v8

    iput v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTouchDelta:I

    .line 454
    invoke-direct {p0, v1}, Lcom/motorola/Camera/CustomSlidingDrawer;->prepareTracking(I)V

    .line 461
    .end local v1           #bottom:I
    :goto_1
    iget-object v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_5
    move v8, v9

    .line 464
    goto/16 :goto_0

    .line 457
    :cond_6
    iget-object v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v5

    .line 458
    .local v5, right:I
    float-to-int v8, v6

    sub-int v8, v5, v8

    iput v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTouchDelta:I

    .line 459
    invoke-direct {p0, v5}, Lcom/motorola/Camera/CustomSlidingDrawer;->prepareTracking(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 355
    iget-boolean v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTracking:Z

    if-eqz v8, :cond_0

    .line 404
    :goto_0
    return-void

    .line 359
    :cond_0
    sub-int v7, p4, p2

    .line 360
    .local v7, width:I
    sub-int v6, p5, p3

    .line 362
    .local v6, height:I
    iget-object v5, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    .line 364
    .local v5, handle:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 365
    .local v3, childWidth:I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 370
    .local v0, childHeight:I
    iget-object v4, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    .line 372
    .local v4, content:Landroid/view/View;
    iget-boolean v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_2

    .line 373
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 375
    .local v1, childLeft:I
    iget-boolean v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_1

    sub-int v8, v6, v0

    iget v9, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTopOffset:I

    sub-int v2, v8, v9

    .line 378
    .local v2, childTop:I
    :goto_1
    const/4 v8, 0x0

    iget v9, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTopOffset:I

    sub-int v9, v6, v9

    sub-int/2addr v9, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTopOffset:I

    sub-int v11, v6, v11

    sub-int/2addr v11, v0

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 394
    :goto_2
    iget-boolean v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandleOpen:Z

    if-eqz v8, :cond_4

    .line 396
    add-int v8, v1, v3

    add-int v9, v2, v0

    invoke-virtual {v5, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 402
    :goto_3
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandleHeight:I

    .line 403
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandleWidth:I

    goto :goto_0

    .line 375
    .end local v2           #childTop:I
    :cond_1
    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mBottomOffset:I

    rsub-int/lit8 v2, v8, 0x0

    goto :goto_1

    .line 384
    .end local v1           #childLeft:I
    :cond_2
    iget-boolean v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_3

    sub-int v8, v7, v3

    iget v9, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTopOffset:I

    sub-int v1, v8, v9

    .line 386
    .restart local v1       #childLeft:I
    :goto_4
    sub-int v8, v6, v0

    div-int/lit8 v2, v8, 0x2

    .line 389
    .restart local v2       #childTop:I
    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTopOffset:I

    sub-int v8, v7, v8

    sub-int/2addr v8, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    iget v10, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTopOffset:I

    sub-int v10, v7, v10

    sub-int/2addr v10, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 384
    .end local v1           #childLeft:I
    .end local v2           #childTop:I
    :cond_3
    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mBottomOffset:I

    rsub-int/lit8 v1, v8, 0x0

    goto :goto_4

    .line 400
    .restart local v1       #childLeft:I
    .restart local v2       #childTop:I
    :cond_4
    sub-int v8, v1, v3

    add-int v9, v2, v0

    invoke-virtual {v5, v8, v2, v1, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    .line 288
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 289
    .local v5, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 291
    .local v6, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 292
    .local v2, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 294
    .local v3, heightSpecSize:I
    if-eqz v5, :cond_0

    if-nez v2, :cond_0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    .line 299
    .local v0, handle:Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lcom/motorola/Camera/CustomSlidingDrawer;->measureChild(Landroid/view/View;II)V

    .line 301
    iget-boolean v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_1

    .line 302
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v3, v7

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v8

    .line 303
    .local v1, height:I
    iget-object v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 311
    .end local v1           #height:I
    :goto_0
    invoke-virtual {p0, v6, v3}, Lcom/motorola/Camera/CustomSlidingDrawer;->setMeasuredDimension(II)V

    .line 312
    return-void

    .line 306
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    iget v8, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTopOffset:I

    sub-int v4, v7, v8

    .line 307
    .local v4, width:I
    iget-object v7, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .parameter "event"

    .prologue
    .line 469
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mLocked:Z

    if-eqz v12, :cond_0

    .line 470
    const/4 v12, 0x1

    .line 572
    :goto_0
    return v12

    .line 473
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTracking:Z

    if-eqz v12, :cond_1

    .line 474
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 476
    .local v1, action:I
    packed-switch v1, :pswitch_data_0

    .line 572
    .end local v1           #action:I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTracking:Z

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAnimating:Z

    if-nez v12, :cond_2

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_19

    :cond_2
    const/4 v12, 0x1

    goto :goto_0

    .line 479
    .restart local v1       #action:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVertical:Z

    if-eqz v12, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTouchDelta:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    :goto_2
    float-to-int v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTouchDelta:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/motorola/Camera/CustomSlidingDrawer;->moveHandle(I)V

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    goto :goto_2

    .line 483
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 484
    .local v8, velocityTracker:Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v8, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 486
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v11

    .line 487
    .local v11, yVelocity:F
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v10

    .line 490
    .local v10, xVelocity:F
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mVertical:Z

    .line 491
    .local v9, vertical:Z
    if-eqz v9, :cond_b

    .line 492
    const/4 v12, 0x0

    cmpg-float v12, v11, v12

    if-gez v12, :cond_a

    const/4 v4, 0x1

    .line 493
    .local v4, negative:Z
    :goto_3
    const/4 v12, 0x0

    cmpg-float v12, v10, v12

    if-gez v12, :cond_4

    .line 494
    neg-float v10, v10

    .line 496
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v12, v12

    cmpl-float v12, v10, v12

    if-lez v12, :cond_5

    .line 497
    move-object/from16 v0, p0

    iget v12, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v10, v12

    .line 509
    :cond_5
    :goto_4
    float-to-double v12, v10

    float-to-double v14, v11

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    double-to-float v7, v12

    .line 510
    .local v7, velocity:F
    if-eqz v4, :cond_6

    .line 511
    neg-float v7, v7

    .line 514
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v6

    .line 515
    .local v6, top:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 517
    .local v3, left:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v5

    .line 518
    .local v5, right:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 523
    .local v2, bottom:I
    if-eqz v9, :cond_e

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mExpanded:Z

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mBottom:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTop:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTapThreshold:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTopOffset:I

    sub-int/2addr v12, v13

    if-gt v2, v12, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mExpanded:Z

    if-nez v12, :cond_10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mBottomOffset:I

    neg-int v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandleHeight:I

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTapThreshold:I

    add-int/2addr v12, v13

    if-ge v2, v12, :cond_10

    .line 531
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mAllowSingleTap:Z

    if-eqz v12, :cond_16

    .line 532
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/motorola/Camera/CustomSlidingDrawer;->playSoundEffect(I)V

    .line 534
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mExpanded:Z

    if-eqz v12, :cond_13

    .line 535
    sget-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v12, :cond_9

    .line 536
    const-string v12, "CustomSlidingDrawer"

    const-string v13, "log 1"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_9
    if-eqz v9, :cond_12

    .end local v2           #bottom:I
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/motorola/Camera/CustomSlidingDrawer;->animateClose(I)V

    goto/16 :goto_1

    .line 492
    .end local v3           #left:I
    .end local v4           #negative:Z
    .end local v5           #right:I
    .end local v6           #top:I
    .end local v7           #velocity:F
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 500
    :cond_b
    const/4 v12, 0x0

    cmpg-float v12, v10, v12

    if-gez v12, :cond_d

    const/4 v4, 0x1

    .line 501
    .restart local v4       #negative:Z
    :goto_6
    const/4 v12, 0x0

    cmpg-float v12, v11, v12

    if-gez v12, :cond_c

    .line 502
    neg-float v11, v11

    .line 504
    :cond_c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v12, v12

    cmpl-float v12, v11, v12

    if-lez v12, :cond_5

    .line 505
    move-object/from16 v0, p0

    iget v12, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v11, v12

    goto/16 :goto_4

    .line 500
    .end local v4           #negative:Z
    :cond_d
    const/4 v4, 0x0

    goto :goto_6

    .line 523
    .restart local v2       #bottom:I
    .restart local v3       #left:I
    .restart local v4       #negative:Z
    .restart local v5       #right:I
    .restart local v6       #top:I
    .restart local v7       #velocity:F
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mExpanded:Z

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget v12, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mRight:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mLeft:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTapThreshold:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTopOffset:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v12, v13

    if-gt v5, v12, :cond_8

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mExpanded:Z

    if-nez v12, :cond_10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mBottomOffset:I

    neg-int v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mHandleWidth:I

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/Camera/CustomSlidingDrawer;->mTapThreshold:I

    add-int/2addr v12, v13

    if-lt v5, v12, :cond_8

    .line 555
    :cond_10
    sget-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v12, :cond_11

    .line 556
    const-string v12, "CustomSlidingDrawer"

    const-string v13, "log 4"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_11
    if-eqz v9, :cond_18

    .end local v2           #bottom:I
    :goto_7
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7, v12}, Lcom/motorola/Camera/CustomSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v2       #bottom:I
    :cond_12
    move v2, v5

    .line 539
    goto :goto_5

    .line 541
    :cond_13
    sget-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v12, :cond_14

    const-string v12, "CustomSlidingDrawer"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 544
    const-string v12, "CustomSlidingDrawer"

    const-string v13, "log 2"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_14
    if-eqz v9, :cond_15

    .end local v2           #bottom:I
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/motorola/Camera/CustomSlidingDrawer;->animateOpen(I)V

    goto/16 :goto_1

    .restart local v2       #bottom:I
    :cond_15
    move v2, v5

    goto :goto_8

    .line 551
    :cond_16
    if-eqz v9, :cond_17

    .end local v2           #bottom:I
    :goto_9
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7, v12}, Lcom/motorola/Camera/CustomSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v2       #bottom:I
    :cond_17
    move v2, v5

    goto :goto_9

    :cond_18
    move v2, v5

    .line 559
    goto :goto_7

    .line 572
    .end local v1           #action:I
    .end local v2           #bottom:I
    .end local v3           #left:I
    .end local v4           #negative:Z
    .end local v5           #right:I
    .end local v6           #top:I
    .end local v7           #velocity:F
    .end local v8           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v9           #vertical:Z
    .end local v10           #xVelocity:F
    .end local v11           #yVelocity:F
    :cond_19
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public open()V
    .locals 1

    .prologue
    .line 939
    invoke-direct {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->openDrawer()V

    .line 940
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->invalidate()V

    .line 941
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->requestLayout()V

    .line 943
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/CustomSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 944
    return-void
.end method

.method public setCallbackInterface(Lcom/motorola/Camera/DialogCallbackInterface;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    .line 197
    return-void
.end method

.method public setOnDrawerCloseListener(Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerCloseListener;)V
    .locals 0
    .parameter "onDrawerCloseListener"

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mOnDrawerCloseListener:Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerCloseListener;

    .line 1120
    return-void
.end method

.method public setOnDrawerOpenListener(Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerOpenListener;)V
    .locals 0
    .parameter "onDrawerOpenListener"

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mOnDrawerOpenListener:Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerOpenListener;

    .line 1111
    return-void
.end method

.method public setOnDrawerScrollListener(Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerScrollListener;)V
    .locals 0
    .parameter "onDrawerScrollListener"

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mOnDrawerScrollListener:Lcom/motorola/Camera/CustomSlidingDrawer$OnDrawerScrollListener;

    .line 1132
    return-void
.end method

.method public setSliderRestoreState(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1060
    iput-boolean p1, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mSliderRestore:Z

    .line 1061
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 905
    iget-boolean v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 906
    invoke-direct {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->openDrawer()V

    .line 910
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->invalidate()V

    .line 911
    invoke-virtual {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->requestLayout()V

    .line 912
    return-void

    .line 908
    :cond_0
    invoke-direct {p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->closeDrawer()V

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 1160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/CustomSlidingDrawer;->mLocked:Z

    .line 1161
    return-void
.end method
