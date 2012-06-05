.class public Lcom/motorola/aui/MultiTouchGestureDetector;
.super Ljava/lang/Object;
.source "MultiTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/aui/MultiTouchGestureDetector$TwoUpDetector;,
        Lcom/motorola/aui/MultiTouchGestureDetector$TwoDownDetector;,
        Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;,
        Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;,
        Lcom/motorola/aui/MultiTouchGestureDetector$PinchGestureDetector;,
        Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;,
        Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;,
        Lcom/motorola/aui/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;,
        Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;
    }
.end annotation


# static fields
.field private static final LOCAL_LOG:Z = false

.field private static final MAX_FINGER_ID:I = 0x1

.field private static final MESSAGE_TOUCH_HOLD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MultiTouchGestureDetector"


# instance fields
.field private FLICK_VELOCITY:F

.field private GESTURE_LOCK_RATIO:F

.field private TAP_SLOP_SQUARE:J

.field private TOUCH_HOLD_TIME:J

.field private TWO_DOWN_TIME_DELTA:J

.field private TWO_UP_TIME_DELTA:J

.field private VELOCITY_TIME_DELTA:J

.field private final detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

.field private mDown:[Z

.field private mDownPoint:[Landroid/graphics/Point;

.field private mEventTime:J

.field private mEventsToSkip:I

.field private mFingerPoint:[Landroid/graphics/Point;

.field private mFlickable:Z

.field mGlideGestureDetector:Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;

.field private mGlideVelocityX:F

.field private mGlideVelocityY:F

.field private final mHandler:Landroid/os/Handler;

.field private mInMultiTouchState:Z

.field private mLastEventTime:J

.field private mLastNumFingers:I

.field private final mListener:Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;

.field private mLockoutIndex:I

.field private mLockoutOccurred:Z

.field private mMoved:[Z

.field mPinchGestureDetector:Lcom/motorola/aui/MultiTouchGestureDetector$PinchGestureDetector;

.field private mTappable:Z

.field mTwistGestureDetector:Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;

.field mTwoDownDetector:Lcom/motorola/aui/MultiTouchGestureDetector$TwoDownDetector;

.field mTwoUpDetector:Lcom/motorola/aui/MultiTouchGestureDetector$TwoUpDetector;


# direct methods
.method public constructor <init>(Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;)V
    .locals 8
    .parameter "listener"

    .prologue
    const-wide/16 v6, 0x64

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 185
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const v0, 0x3da3d70a

    iput v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->GESTURE_LOCK_RATIO:F

    .line 213
    const-wide/16 v0, 0x271

    iput-wide v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->TAP_SLOP_SQUARE:J

    .line 214
    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->TOUCH_HOLD_TIME:J

    .line 215
    iput-wide v6, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->TWO_DOWN_TIME_DELTA:J

    .line 216
    iput-wide v6, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->TWO_UP_TIME_DELTA:J

    .line 217
    iput-wide v6, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->VELOCITY_TIME_DELTA:J

    .line 218
    const/high16 v0, 0x43c8

    iput v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->FLICK_VELOCITY:F

    .line 241
    new-instance v0, Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;

    invoke-direct {v0, p0, v4}, Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;-><init>(Lcom/motorola/aui/MultiTouchGestureDetector;Lcom/motorola/aui/MultiTouchGestureDetector$1;)V

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mTwistGestureDetector:Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;

    .line 242
    new-instance v0, Lcom/motorola/aui/MultiTouchGestureDetector$PinchGestureDetector;

    invoke-direct {v0, p0, v4}, Lcom/motorola/aui/MultiTouchGestureDetector$PinchGestureDetector;-><init>(Lcom/motorola/aui/MultiTouchGestureDetector;Lcom/motorola/aui/MultiTouchGestureDetector$1;)V

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mPinchGestureDetector:Lcom/motorola/aui/MultiTouchGestureDetector$PinchGestureDetector;

    .line 243
    new-instance v0, Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;

    invoke-direct {v0, p0, v4}, Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;-><init>(Lcom/motorola/aui/MultiTouchGestureDetector;Lcom/motorola/aui/MultiTouchGestureDetector$1;)V

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideGestureDetector:Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;

    .line 244
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mTwistGestureDetector:Lcom/motorola/aui/MultiTouchGestureDetector$TwistGestureDetector;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mPinchGestureDetector:Lcom/motorola/aui/MultiTouchGestureDetector$PinchGestureDetector;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideGestureDetector:Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    .line 247
    new-instance v0, Lcom/motorola/aui/MultiTouchGestureDetector$TwoDownDetector;

    invoke-direct {v0, p0, v4}, Lcom/motorola/aui/MultiTouchGestureDetector$TwoDownDetector;-><init>(Lcom/motorola/aui/MultiTouchGestureDetector;Lcom/motorola/aui/MultiTouchGestureDetector$1;)V

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mTwoDownDetector:Lcom/motorola/aui/MultiTouchGestureDetector$TwoDownDetector;

    .line 248
    new-instance v0, Lcom/motorola/aui/MultiTouchGestureDetector$TwoUpDetector;

    invoke-direct {v0, p0, v4}, Lcom/motorola/aui/MultiTouchGestureDetector$TwoUpDetector;-><init>(Lcom/motorola/aui/MultiTouchGestureDetector;Lcom/motorola/aui/MultiTouchGestureDetector$1;)V

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mTwoUpDetector:Lcom/motorola/aui/MultiTouchGestureDetector$TwoUpDetector;

    .line 255
    iput-boolean v2, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mTappable:Z

    .line 256
    iput-boolean v2, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFlickable:Z

    .line 258
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityX:F

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityY:F

    .line 260
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLastEventTime:J

    .line 261
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventTime:J

    .line 264
    new-array v0, v3, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDownPoint:[Landroid/graphics/Point;

    .line 265
    new-array v0, v3, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFingerPoint:[Landroid/graphics/Point;

    .line 266
    new-array v0, v3, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDown:[Z

    .line 267
    new-array v0, v3, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mMoved:[Z

    .line 268
    iput-boolean v2, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mInMultiTouchState:Z

    .line 269
    iput-boolean v2, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLockoutOccurred:Z

    .line 271
    iput v2, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventsToSkip:I

    .line 272
    iput v2, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLastNumFingers:I

    .line 186
    iput-object p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mListener:Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;

    .line 187
    iget-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mListener:Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OnMultiTouchGestureListener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    new-instance v0, Lcom/motorola/aui/MultiTouchGestureDetector$1;

    invoke-direct {v0, p0}, Lcom/motorola/aui/MultiTouchGestureDetector$1;-><init>(Lcom/motorola/aui/MultiTouchGestureDetector;)V

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    .line 200
    return-void

    .line 266
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 267
    nop

    :array_1
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/motorola/aui/MultiTouchGestureDetector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mTappable:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/motorola/aui/MultiTouchGestureDetector;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/motorola/aui/MultiTouchGestureDetector;->calculateVelocity(FF)V

    return-void
.end method

.method static synthetic access$1200(Lcom/motorola/aui/MultiTouchGestureDetector;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->TWO_DOWN_TIME_DELTA:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/motorola/aui/MultiTouchGestureDetector;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->TWO_UP_TIME_DELTA:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/motorola/aui/MultiTouchGestureDetector;)Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mListener:Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;

    return-object v0
.end method

.method static synthetic access$802(Lcom/motorola/aui/MultiTouchGestureDetector;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityX:F

    return p1
.end method

.method static synthetic access$902(Lcom/motorola/aui/MultiTouchGestureDetector;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityY:F

    return p1
.end method

.method private calculateVelocity(FF)V
    .locals 10
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/high16 v9, 0x447a

    const/high16 v8, 0x3f80

    .line 711
    mul-float v3, p1, v9

    iget-wide v4, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventTime:J

    iget-wide v6, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLastEventTime:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    div-float v0, v3, v4

    .line 712
    .local v0, vx:F
    mul-float v3, p2, v9

    iget-wide v4, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventTime:J

    iget-wide v6, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLastEventTime:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    div-float v1, v3, v4

    .line 713
    .local v1, vy:F
    iget-wide v3, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventTime:J

    iget-wide v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLastEventTime:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->VELOCITY_TIME_DELTA:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-float v3, v3

    iget-wide v4, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->VELOCITY_TIME_DELTA:J

    long-to-float v4, v4

    div-float v2, v3, v4

    .line 715
    .local v2, weight:F
    mul-float v3, v0, v2

    sub-float v4, v8, v2

    iget v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityX:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityX:F

    .line 716
    mul-float v3, v1, v2

    sub-float v4, v8, v2

    iget v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityY:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityY:F

    .line 717
    return-void
.end method

.method private countFingers(Landroid/view/MotionEvent;)I
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 658
    const/4 v0, 0x0

    .line 662
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 663
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 664
    .local v1, fingerId:I
    if-gt v1, v7, :cond_2

    .line 665
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v3, v5

    .line 666
    .local v3, x:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v4, v5

    .line 667
    .local v4, y:I
    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFingerPoint:[Landroid/graphics/Point;

    aget-object v5, v5, v1

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-ne v3, v5, :cond_0

    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFingerPoint:[Landroid/graphics/Point;

    aget-object v5, v5, v1

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-eq v4, v5, :cond_1

    .line 668
    :cond_0
    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mMoved:[Z

    aput-boolean v7, v5, v1

    .line 670
    :cond_1
    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFingerPoint:[Landroid/graphics/Point;

    aget-object v5, v5, v1

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 671
    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDown:[Z

    aget-boolean v5, v5, v1

    if-nez v5, :cond_2

    .line 672
    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDown:[Z

    aput-boolean v7, v5, v1

    .line 673
    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDownPoint:[Landroid/graphics/Point;

    aget-object v5, v5, v1

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 662
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 678
    .end local v1           #fingerId:I
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v7, v5, :cond_4

    .line 679
    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDown:[Z

    aput-boolean v8, v5, v8

    .line 680
    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDown:[Z

    aput-boolean v8, v5, v7

    .line 681
    :cond_4
    const/4 v5, 0x6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v5, v6, :cond_7

    .line 682
    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDown:[Z

    aput-boolean v8, v5, v8

    .line 687
    :cond_5
    :goto_1
    const/4 v1, 0x0

    .restart local v1       #fingerId:I
    :goto_2
    if-gt v1, v7, :cond_8

    .line 688
    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDown:[Z

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_6

    .line 689
    add-int/lit8 v0, v0, 0x1

    .line 687
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 683
    .end local v1           #fingerId:I
    :cond_7
    const/16 v5, 0x106

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 684
    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDown:[Z

    aput-boolean v8, v5, v7

    goto :goto_1

    .line 692
    .restart local v1       #fingerId:I
    :cond_8
    return v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .parameter "ev"

    .prologue
    .line 747
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mInMultiTouchState:Z

    .line 750
    .local v9, wasMultiTouch:Z
    invoke-direct/range {p0 .. p1}, Lcom/motorola/aui/MultiTouchGestureDetector;->countFingers(Landroid/view/MotionEvent;)I

    move-result v7

    .line 752
    .local v7, numFingers:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventTime:J

    .line 754
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mTwoDownDetector:Lcom/motorola/aui/MultiTouchGestureDetector$TwoDownDetector;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDown:[Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-virtual {v10, v11, v12, v13}, Lcom/motorola/aui/MultiTouchGestureDetector$TwoDownDetector;->update([ZJ)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 755
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mTappable:Z

    .line 756
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 757
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->TOUCH_HOLD_TIME:J

    add-long/2addr v12, v14

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 760
    :cond_0
    const/4 v2, 0x0

    .local v2, fingerId:I
    :goto_0
    const/4 v10, 0x1

    if-gt v2, v10, :cond_2

    .line 761
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDown:[Z

    aget-boolean v10, v10, v2

    if-eqz v10, :cond_1

    .line 762
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->TAP_SLOP_SQUARE:J

    long-to-double v10, v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDownPoint:[Landroid/graphics/Point;

    aget-object v12, v12, v2

    iget v12, v12, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFingerPoint:[Landroid/graphics/Point;

    aget-object v13, v13, v2

    iget v13, v13, Landroid/graphics/Point;->x:I

    sub-int/2addr v12, v13

    int-to-double v12, v12

    const-wide/high16 v14, 0x4000

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDownPoint:[Landroid/graphics/Point;

    aget-object v14, v14, v2

    iget v14, v14, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFingerPoint:[Landroid/graphics/Point;

    aget-object v15, v15, v2

    iget v15, v15, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v15

    int-to-double v14, v14

    const-wide/high16 v16, 0x4000

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    cmpg-double v10, v10, v12

    if-gez v10, :cond_1

    .line 765
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mTappable:Z

    .line 760
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 770
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mTwoUpDetector:Lcom/motorola/aui/MultiTouchGestureDetector$TwoUpDetector;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mDown:[Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-virtual {v10, v11, v12, v13}, Lcom/motorola/aui/MultiTouchGestureDetector$TwoUpDetector;->update([ZJ)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 772
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mTappable:Z

    if-eqz v10, :cond_3

    .line 773
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mListener:Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;

    invoke-interface {v10}, Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;->onTapUp()V

    .line 777
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFlickable:Z

    if-eqz v10, :cond_4

    .line 778
    const-string v10, "MultiTouchGestureDetector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "vy  = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityY:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/motorola/aui/MultiTouchGestureDetector;->calculateVelocity(FF)V

    .line 781
    const-string v10, "MultiTouchGestureDetector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "vy\' = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityY:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    move-object/from16 v0, p0

    iget v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityY:F

    float-to-double v10, v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityX:F

    float-to-double v12, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->FLICK_VELOCITY:F

    float-to-double v12, v12

    cmpl-double v10, v10, v12

    if-lez v10, :cond_4

    .line 783
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mListener:Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityY:F

    invoke-interface {v10, v11, v12}, Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;->onFlick(FF)V

    .line 788
    :cond_4
    const/4 v10, 0x2

    if-ne v7, v10, :cond_8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLastNumFingers:I

    const/4 v11, 0x2

    if-ge v10, v11, :cond_8

    .line 792
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mInMultiTouchState:Z

    .line 793
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mListener:Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;

    invoke-interface {v10}, Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;->beginMultiTouch()V

    .line 794
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFlickable:Z

    .line 795
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventTime:J

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLastEventTime:J

    .line 800
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLockoutOccurred:Z

    .line 801
    const/4 v3, 0x0

    .local v3, index:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    array-length v10, v10

    if-ge v3, v10, :cond_5

    .line 802
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    aget-object v10, v10, v3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFingerPoint:[Landroid/graphics/Point;

    invoke-virtual {v10, v11}, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->initialize([Landroid/graphics/Point;)V

    .line 801
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 810
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mMoved:[Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-boolean v12, v10, v11

    .line 811
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mMoved:[Z

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-boolean v12, v10, v11

    .line 812
    const/4 v10, 0x2

    move-object/from16 v0, p0

    iput v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventsToSkip:I

    .line 874
    .end local v3           #index:I
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iput v7, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLastNumFingers:I

    .line 875
    if-nez v9, :cond_7

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mInMultiTouchState:Z

    if-eqz v10, :cond_11

    :cond_7
    const/4 v10, 0x1

    :goto_3
    return v10

    .line 813
    :cond_8
    const/4 v10, 0x2

    if-ne v7, v10, :cond_f

    .line 814
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mMoved:[Z

    const/4 v11, 0x0

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mMoved:[Z

    const/4 v11, 0x1

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_9

    .line 815
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventsToSkip:I

    .line 817
    :cond_9
    move-object/from16 v0, p0

    iget v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventsToSkip:I

    if-lez v10, :cond_a

    .line 818
    move-object/from16 v0, p0

    iget v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventsToSkip:I

    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventsToSkip:I

    goto :goto_2

    .line 820
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLockoutOccurred:Z

    if-nez v10, :cond_e

    .line 826
    const/4 v5, 0x0

    .line 827
    .local v5, maxDelta:F
    const/4 v8, 0x0

    .line 828
    .local v8, secondDelta:F
    const/4 v6, 0x0

    .line 830
    .local v6, maxDeltaIndex:I
    const/4 v4, 0x0

    .local v4, lockoutIndex:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    array-length v10, v10

    if-ge v4, v10, :cond_d

    .line 831
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    aget-object v10, v10, v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFingerPoint:[Landroid/graphics/Point;

    invoke-virtual {v10, v11}, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->getDelta([Landroid/graphics/Point;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 835
    .local v1, delta:F
    cmpl-float v10, v1, v5

    if-lez v10, :cond_c

    .line 836
    move v8, v5

    .line 837
    move v5, v1

    .line 838
    move v6, v4

    .line 830
    :cond_b
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 839
    :cond_c
    cmpl-float v10, v1, v8

    if-lez v10, :cond_b

    .line 840
    move v8, v1

    goto :goto_5

    .line 843
    .end local v1           #delta:F
    :cond_d
    sub-float v10, v5, v8

    move-object/from16 v0, p0

    iget v11, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->GESTURE_LOCK_RATIO:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_6

    .line 845
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 846
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mTappable:Z

    .line 847
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    aget-object v10, v10, v6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideGestureDetector:Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFlickable:Z

    .line 848
    move-object/from16 v0, p0

    iput v6, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLockoutIndex:I

    .line 849
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLockoutOccurred:Z

    .line 850
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLockoutIndex:I

    aget-object v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFingerPoint:[Landroid/graphics/Point;

    const/high16 v12, 0x3f80

    div-float v13, v8, v5

    sub-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->report([Landroid/graphics/Point;F)V

    .line 851
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventTime:J

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLastEventTime:J

    goto/16 :goto_2

    .line 855
    .end local v4           #lockoutIndex:I
    .end local v5           #maxDelta:F
    .end local v6           #maxDeltaIndex:I
    .end local v8           #secondDelta:F
    :cond_e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->detectors:[Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLockoutIndex:I

    aget-object v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFingerPoint:[Landroid/graphics/Point;

    const/high16 v12, 0x3f80

    invoke-virtual {v10, v11, v12}, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->report([Landroid/graphics/Point;F)V

    .line 856
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mEventTime:J

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mLastEventTime:J

    goto/16 :goto_2

    .line 859
    :cond_f
    const/4 v10, 0x1

    if-ne v7, v10, :cond_10

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mInMultiTouchState:Z

    if-eqz v10, :cond_10

    .line 860
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_2

    .line 861
    :cond_10
    if-nez v7, :cond_6

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mInMultiTouchState:Z

    if-eqz v10, :cond_6

    .line 868
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mTappable:Z

    .line 869
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mFlickable:Z

    .line 870
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mInMultiTouchState:Z

    .line 871
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/motorola/aui/MultiTouchGestureDetector;->mListener:Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;

    invoke-interface {v10}, Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;->endMultiTouch()V

    goto/16 :goto_2

    .line 875
    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_3
.end method

.method public setFlickVelocity(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 237
    iput p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->FLICK_VELOCITY:F

    .line 238
    return-void
.end method

.method public setThreshold(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 209
    iput p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->GESTURE_LOCK_RATIO:F

    .line 210
    return-void
.end method

.method public setTouchHoldTime(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 221
    iput-wide p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->TOUCH_HOLD_TIME:J

    .line 222
    return-void
.end method

.method public setTwoDownTimeDelta(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 225
    iput-wide p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->TWO_DOWN_TIME_DELTA:J

    .line 226
    return-void
.end method

.method public setTwoUpTimeDelta(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 229
    iput-wide p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->TWO_UP_TIME_DELTA:J

    .line 230
    return-void
.end method

.method public setVelocityTimeDelta(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 233
    iput-wide p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector;->VELOCITY_TIME_DELTA:J

    .line 234
    return-void
.end method
