.class abstract Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;
.super Ljava/lang/Object;
.source "MultiTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/aui/MultiTouchGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SubGestureDetector"
.end annotation


# instance fields
.field public mEventTime:[J

.field public mState:[Z

.field public mTransitionOccurred:[Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 582
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 584
    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mState:[Z

    .line 585
    new-array v0, v1, [J

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mEventTime:[J

    .line 586
    new-array v0, v1, [Z

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mTransitionOccurred:[Z

    return-void

    .line 584
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 585
    nop

    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 586
    :array_2
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/motorola/aui/MultiTouchGestureDetector$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;-><init>()V

    return-void
.end method


# virtual methods
.method public update([ZJ)Z
    .locals 5
    .parameter "state"
    .parameter "eventTime"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 589
    const/4 v0, 0x0

    .line 590
    .local v0, ret:Z
    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mState:[Z

    aget-boolean v1, v1, v4

    aget-boolean v2, p1, v4

    if-eq v1, v2, :cond_0

    .line 591
    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mState:[Z

    aget-boolean v2, p1, v4

    aput-boolean v2, v1, v4

    .line 592
    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mTransitionOccurred:[Z

    aput-boolean v3, v1, v4

    .line 593
    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mEventTime:[J

    aput-wide p2, v1, v4

    .line 594
    const/4 v0, 0x1

    .line 596
    :cond_0
    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mState:[Z

    aget-boolean v1, v1, v3

    aget-boolean v2, p1, v3

    if-eq v1, v2, :cond_1

    .line 597
    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mState:[Z

    aget-boolean v2, p1, v3

    aput-boolean v2, v1, v3

    .line 598
    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mTransitionOccurred:[Z

    aput-boolean v3, v1, v3

    .line 599
    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mEventTime:[J

    aput-wide p2, v1, v3

    .line 600
    const/4 v0, 0x1

    .line 602
    :cond_1
    return v0
.end method
