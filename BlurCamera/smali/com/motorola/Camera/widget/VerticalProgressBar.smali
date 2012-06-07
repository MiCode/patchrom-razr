.class public Lcom/motorola/Camera/widget/VerticalProgressBar;
.super Landroid/view/View;
.source "VerticalProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/widget/VerticalProgressBar$1;,
        Lcom/motorola/Camera/widget/VerticalProgressBar$SavedState;,
        Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710


# instance fields
.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mInDrawing:Z

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field private mNoInvalidate:Z

.field protected mParent:Landroid/view/ViewParent;

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mRefreshProgressRunnable:Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;

.field mSampleTile:Landroid/graphics/Bitmap;

.field protected mScrollX:I

.field protected mScrollY:I

.field private mSecondaryProgress:I

.field private mUiThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/Camera/widget/VerticalProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/Camera/widget/VerticalProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mUiThreadId:J

    .line 72
    invoke-direct {p0}, Lcom/motorola/Camera/widget/VerticalProgressBar;->initProgressBar()V

    .line 74
    sget-object v2, Landroid/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, a:Landroid/content/res/TypedArray;
    iput-boolean v5, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mNoInvalidate:Z

    .line 78
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 79
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 80
    invoke-direct {p0, v1, v4}, Lcom/motorola/Camera/widget/VerticalProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 83
    invoke-virtual {p0, v1}, Lcom/motorola/Camera/widget/VerticalProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_0
    const/16 v2, 0xb

    iget v3, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMinWidth:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMinWidth:I

    .line 87
    iget v2, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMaxWidth:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMaxWidth:I

    .line 88
    const/16 v2, 0xc

    iget v3, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMinHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMinHeight:I

    .line 89
    iget v2, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMaxHeight:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMaxHeight:I

    .line 91
    const/4 v2, 0x2

    iget v3, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMax:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/widget/VerticalProgressBar;->setMax(I)V

    .line 93
    const/4 v2, 0x3

    iget v3, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mProgress:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/widget/VerticalProgressBar;->setProgress(I)V

    .line 95
    const/4 v2, 0x4

    iget v3, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mSecondaryProgress:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/widget/VerticalProgressBar;->setSecondaryProgress(I)V

    .line 97
    iput-boolean v4, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mNoInvalidate:Z

    .line 99
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/Camera/widget/VerticalProgressBar;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/Camera/widget/VerticalProgressBar;->doRefreshProgress(IIZ)V

    return-void
.end method

.method static synthetic access$102(Lcom/motorola/Camera/widget/VerticalProgressBar;Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;)Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mRefreshProgressRunnable:Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;

    return-object p1
.end method

.method private declared-synchronized doRefreshProgress(IIZ)V
    .locals 7
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget v5, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMax:I

    if-lez v5, :cond_2

    int-to-float v5, p2

    iget v6, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMax:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 256
    .local v4, scale:F
    :goto_0
    iget-object v1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 257
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 258
    const/4 v3, 0x0

    .line 260
    .local v3, progressDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_0

    .line 261
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v5, v0

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 264
    :cond_0
    const v5, 0x461c4000

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 265
    .local v2, level:I
    if-eqz v3, :cond_3

    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 270
    .end local v2           #level:I
    :goto_2
    const v5, 0x102000d

    if-ne p1, v5, :cond_1

    .line 271
    invoke-virtual {p0, v4, p3}, Lcom/motorola/Camera/widget/VerticalProgressBar;->onProgressRefresh(FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :cond_1
    monitor-exit p0

    return-void

    .line 255
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #level:I
    .restart local v3       #progressDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #scale:F
    :cond_3
    move-object v3, v1

    .line 265
    goto :goto_1

    .line 267
    .end local v2           #level:I
    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/Camera/widget/VerticalProgressBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 255
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private initProgressBar()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    const/16 v2, 0x18

    const/4 v1, 0x0

    .line 165
    const/16 v0, 0x64

    iput v0, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMax:I

    .line 166
    iput v1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mProgress:I

    .line 167
    iput v1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mSecondaryProgress:I

    .line 168
    iput v2, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMinWidth:I

    .line 169
    iput v3, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMaxWidth:I

    .line 170
    iput v2, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMinHeight:I

    .line 171
    iput v3, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMaxHeight:I

    .line 172
    return-void
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .locals 5
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 280
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/Camera/widget/VerticalProgressBar;->doRefreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :goto_0
    monitor-exit p0

    return-void

    .line 283
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mRefreshProgressRunnable:Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;

    if-eqz v1, :cond_1

    .line 285
    iget-object v0, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mRefreshProgressRunnable:Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;

    .line 287
    .local v0, r:Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mRefreshProgressRunnable:Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;

    .line 288
    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;->setup(IIZ)V

    .line 293
    :goto_1
    invoke-virtual {p0, v0}, Lcom/motorola/Camera/widget/VerticalProgressBar;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 279
    .end local v0           #r:Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 291
    :cond_1
    :try_start_2
    new-instance v0, Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;-><init>(Lcom/motorola/Camera/widget/VerticalProgressBar;IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0       #r:Lcom/motorola/Camera/widget/VerticalProgressBar$RefreshProgressRunnable;
    goto :goto_1
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 13
    .parameter "drawable"
    .parameter "clip"

    .prologue
    const/4 v11, 0x1

    .line 108
    instance-of v10, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v10, :cond_3

    move-object v1, p1

    .line 109
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 110
    .local v1, background:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    .line 111
    .local v0, N:I
    new-array v7, v0, [Landroid/graphics/drawable/Drawable;

    .line 113
    .local v7, outDrawables:[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 114
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v3

    .line 115
    .local v3, id:I
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const v10, 0x102000d

    if-eq v3, v10, :cond_0

    const v10, 0x102000f

    if-ne v3, v10, :cond_1

    :cond_0
    move v10, v11

    :goto_1
    invoke-direct {p0, v12, v10}, Lcom/motorola/Camera/widget/VerticalProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v7, v2

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 119
    .end local v3           #id:I
    :cond_2
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 121
    .local v5, newBg:Landroid/graphics/drawable/LayerDrawable;
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_4

    .line 122
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v10

    invoke-virtual {v5, v2, v10}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 127
    .end local v0           #N:I
    .end local v1           #background:Landroid/graphics/drawable/LayerDrawable;
    .end local v2           #i:I
    .end local v5           #newBg:Landroid/graphics/drawable/LayerDrawable;
    .end local v7           #outDrawables:[Landroid/graphics/drawable/Drawable;
    :cond_3
    instance-of v10, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v10, :cond_5

    move-object v4, p1

    .line 128
    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    .line 129
    .local v4, in:Landroid/graphics/drawable/StateListDrawable;
    new-instance v6, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .local v6, out:Landroid/graphics/drawable/StateListDrawable;
    move-object v5, v6

    .line 147
    .end local v4           #in:Landroid/graphics/drawable/StateListDrawable;
    .end local v6           #out:Landroid/graphics/drawable/StateListDrawable;
    .end local p1
    :cond_4
    :goto_3
    return-object v5

    .line 136
    .restart local p1
    :cond_5
    instance-of v10, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v10, :cond_8

    .line 137
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 138
    .local v9, tileBitmap:Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    if-nez v10, :cond_6

    .line 139
    iput-object v9, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    .line 142
    :cond_6
    new-instance v8, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0}, Lcom/motorola/Camera/widget/VerticalProgressBar;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 143
    .local v8, shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    if-eqz p2, :cond_7

    new-instance v10, Landroid/graphics/drawable/ClipDrawable;

    const/4 v12, 0x3

    invoke-direct {v10, v8, v12, v11}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v8, v10

    .end local v8           #shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    :cond_7
    move-object v5, v8

    goto :goto_3

    .end local v9           #tileBitmap:Landroid/graphics/Bitmap;
    .restart local p1
    :cond_8
    move-object v5, p1

    .line 147
    goto :goto_3
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 504
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 506
    invoke-virtual {p0}, Lcom/motorola/Camera/widget/VerticalProgressBar;->getDrawableState()[I

    move-result-object v0

    .line 508
    .local v0, state:[I
    iget-object v1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 511
    :cond_0
    return-void
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 151
    const/16 v1, 0x8

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 152
    .local v0, roundedCorners:[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    .line 151
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 359
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mSecondaryProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementProgressBy(I)V
    .locals 1
    .parameter "diff"

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/widget/VerticalProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    monitor-exit p0

    return-void

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementSecondaryProgressBy(I)V
    .locals 1
    .parameter "diff"

    .prologue
    .line 433
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/widget/VerticalProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    monitor-exit p0

    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "dr"

    .prologue
    .line 445
    iget-boolean v3, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mInDrawing:Z

    if-nez v3, :cond_0

    .line 446
    invoke-virtual {p0, p1}, Lcom/motorola/Camera/widget/VerticalProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 447
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 448
    .local v0, dirty:Landroid/graphics/Rect;
    iget v3, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mScrollX:I

    iget v4, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mPaddingLeft:I

    add-int v1, v3, v4

    .line 449
    .local v1, scrollX:I
    iget v3, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mScrollY:I

    iget v4, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mPaddingTop:I

    add-int v2, v3, v4

    .line 451
    .local v2, scrollY:I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/motorola/Camera/widget/VerticalProgressBar;->invalidate(IIII)V

    .line 457
    .end local v0           #dirty:Landroid/graphics/Rect;
    .end local v1           #scrollX:I
    .end local v2           #scrollY:I
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 472
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 474
    iget-object v0, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 475
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 479
    iget v1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 480
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 481
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    :cond_0
    monitor-exit p0

    return-void

    .line 472
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 487
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 489
    .local v0, d:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 490
    .local v2, dw:I
    const/4 v1, 0x0

    .line 491
    .local v1, dh:I
    if-eqz v0, :cond_0

    .line 492
    iget v3, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMinWidth:I

    iget v4, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 493
    iget v3, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMinHeight:I

    iget v4, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 495
    :cond_0
    iget v3, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mPaddingLeft:I

    iget v4, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mPaddingRight:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 496
    iget v3, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mPaddingTop:I

    iget v4, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 498
    invoke-static {v2, p1}, Lcom/motorola/Camera/widget/VerticalProgressBar;->resolveSize(II)I

    move-result v3

    invoke-static {v1, p2}, Lcom/motorola/Camera/widget/VerticalProgressBar;->resolveSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/motorola/Camera/widget/VerticalProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    monitor-exit p0

    return-void

    .line 487
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #dh:I
    .end local v2           #dw:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method onProgressRefresh(FZ)V
    .locals 0
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 276
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 566
    move-object v0, p1

    check-cast v0, Lcom/motorola/Camera/widget/VerticalProgressBar$SavedState;

    .line 567
    .local v0, ss:Lcom/motorola/Camera/widget/VerticalProgressBar$SavedState;
    invoke-virtual {v0}, Lcom/motorola/Camera/widget/VerticalProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 569
    iget v1, v0, Lcom/motorola/Camera/widget/VerticalProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/widget/VerticalProgressBar;->setProgress(I)V

    .line 570
    iget v1, v0, Lcom/motorola/Camera/widget/VerticalProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/widget/VerticalProgressBar;->setSecondaryProgress(I)V

    .line 571
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 555
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 556
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/motorola/Camera/widget/VerticalProgressBar$SavedState;

    invoke-direct {v0, v1}, Lcom/motorola/Camera/widget/VerticalProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 558
    .local v0, ss:Lcom/motorola/Camera/widget/VerticalProgressBar$SavedState;
    iget v2, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mProgress:I

    iput v2, v0, Lcom/motorola/Camera/widget/VerticalProgressBar$SavedState;->progress:I

    .line 559
    iget v2, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mSecondaryProgress:I

    iput v2, v0, Lcom/motorola/Camera/widget/VerticalProgressBar$SavedState;->secondaryProgress:I

    .line 561
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v4, 0x0

    .line 462
    iget v2, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mPaddingRight:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mPaddingLeft:I

    sub-int v1, v2, v3

    .line 463
    .local v1, right:I
    iget v2, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mPaddingTop:I

    sub-int v0, v2, v3

    .line 465
    .local v0, bottom:I
    iget-object v2, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 466
    iget-object v2, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 468
    :cond_0
    return-void
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_0

    .line 224
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 226
    :cond_0
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .parameter "max"

    .prologue
    .line 400
    monitor-enter p0

    if-gez p1, :cond_0

    .line 401
    const/4 p1, 0x0

    .line 403
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMax:I

    if-eq p1, v0, :cond_1

    .line 404
    iput p1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMax:I

    .line 405
    invoke-virtual {p0}, Lcom/motorola/Camera/widget/VerticalProgressBar;->postInvalidate()V

    .line 407
    iget v0, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    .line 408
    iput p1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mProgress:I

    .line 409
    const v0, 0x102000d

    iget v1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/Camera/widget/VerticalProgressBar;->refreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :cond_1
    monitor-exit p0

    return-void

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 306
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/motorola/Camera/widget/VerticalProgressBar;->setProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgress(IZ)V
    .locals 2
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 310
    monitor-enter p0

    if-gez p1, :cond_0

    .line 311
    const/4 p1, 0x0

    .line 314
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMax:I

    if-le p1, v0, :cond_1

    .line 315
    iget p1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMax:I

    .line 318
    :cond_1
    iget v0, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 319
    iput p1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mProgress:I

    .line 320
    const v0, 0x102000d

    iget v1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mProgress:I

    invoke-direct {p0, v0, v1, p2}, Lcom/motorola/Camera/widget/VerticalProgressBar;->refreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :cond_2
    monitor-exit p0

    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 195
    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 198
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 199
    .local v0, drawableHeight:I
    iget v1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMaxHeight:I

    if-ge v1, v0, :cond_0

    .line 200
    iput v0, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMaxHeight:I

    .line 201
    invoke-virtual {p0}, Lcom/motorola/Camera/widget/VerticalProgressBar;->requestLayout()V

    .line 204
    .end local v0           #drawableHeight:I
    :cond_0
    iput-object p1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 205
    iput-object p1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 206
    invoke-virtual {p0}, Lcom/motorola/Camera/widget/VerticalProgressBar;->postInvalidate()V

    .line 207
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 3
    .parameter "secondaryProgress"

    .prologue
    .line 334
    monitor-enter p0

    if-gez p1, :cond_0

    .line 335
    const/4 p1, 0x0

    .line 338
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMax:I

    if-le p1, v0, :cond_1

    .line 339
    iget p1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mMax:I

    .line 342
    :cond_1
    iget v0, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_2

    .line 343
    iput p1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mSecondaryProgress:I

    .line 344
    const v0, 0x102000f

    iget v1, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mSecondaryProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/Camera/widget/VerticalProgressBar;->refreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :cond_2
    monitor-exit p0

    return-void

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/motorola/Camera/widget/VerticalProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 439
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 441
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/motorola/Camera/widget/VerticalProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
