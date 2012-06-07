.class public Lcom/motorola/Camera/View/PanoramaIndicatorView;
.super Landroid/view/View;
.source "PanoramaIndicatorView.java"


# static fields
.field private static final COLOR_TEXT:I = -0x1

.field private static final CORRECT_DIRECTION:I = 0x2

.field private static final FULL_BOX_PADDING:F = 10.0f

.field private static final INDICATOR_BOX_PADDING:F = 60.0f

.field private static final INDICATOR_BOX_PADDING_LEFT:F = 55.0f

.field private static final INIT_DIRECTION:I = 0x0

.field private static final MAX_PAN_THUMB_BOX_COUNT:I = 0x6

.field private static final STROKE_WIDTH_BOX:F = 2.0f

.field public static final TAG:Ljava/lang/String; = "PanoramaIndicatorView"

.field private static final TEXT_PADDING:F = 15.0f

.field private static final TEXT_SIZE:F = 20.0f

.field private static final WRONG_DIRECTION:I = 0x1


# instance fields
.field private DISTANCE_BETWEEN_BOXES:F

.field private INDICATOR_BOX_HEIGHT:F

.field private X_DISTANCE_TRANSLATE_REPLACE:F

.field private Y_DISTANCE_TRANSLATE_REPLACE:F

.field private mCurrStitchMode:I

.field private mCurrTick:I

.field private mCurrentDirection:I

.field private mCurrentOverlappingDirection:I

.field private mCurrentSessionFinished:Z

.field private mDirectionArrowBox:Landroid/graphics/RectF;

.field private mDirectionImage:Landroid/graphics/Bitmap;

.field private mFullPosBox:Landroid/graphics/RectF;

.field private mFullSizeRect:Landroid/graphics/RectF;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mInitialPosBox:Landroid/graphics/RectF;

.field private mLastPicture:Landroid/graphics/Bitmap;

.field private mNewPicture:Landroid/graphics/Bitmap;

.field private mNextPosBox:Landroid/graphics/RectF;

.field private mNumShotTaken:I

.field private mPaint:Landroid/graphics/Paint;

.field private mScaleDeltaBottom:F

.field private mScaleDeltaLeft:F

.field private mScaleDeltaRight:F

.field private mScaleDeltaTop:F

.field private mScaleDuration:I

.field private mSurfaceRotation:I

.field private mText:Ljava/lang/String;

.field private mTextCenterPosX:F

.field private mTextCenterPosY:F

.field private mTotalTick:I

.field private mTranslateDeltaOutScreen:F

.field private mTranslateDeltaReplace:F

.field private mTranslateDuration:I

.field private mViewfinderDx:F

.field private mViewfinderDxLastTime:F

.field private mViewfinderDy:F

.field private mViewfinderDyLastTime:F

.field private mViewfinderMatched:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/high16 v5, 0x4120

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 65
    const/high16 v0, 0x43c8

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->INDICATOR_BOX_HEIGHT:F

    .line 66
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->DISTANCE_BETWEEN_BOXES:F

    .line 76
    iput v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->X_DISTANCE_TRANSLATE_REPLACE:F

    .line 77
    iput v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->Y_DISTANCE_TRANSLATE_REPLACE:F

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mText:Ljava/lang/String;

    .line 83
    iput v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTextCenterPosX:F

    iput v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTextCenterPosY:F

    .line 87
    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mWidth:I

    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mHeight:I

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    .line 89
    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    .line 90
    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullPosBox:Landroid/graphics/RectF;

    .line 91
    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    .line 93
    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mDirectionArrowBox:Landroid/graphics/RectF;

    .line 96
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    .line 97
    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNewPicture:Landroid/graphics/Bitmap;

    .line 98
    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mLastPicture:Landroid/graphics/Bitmap;

    .line 99
    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mDirectionImage:Landroid/graphics/Bitmap;

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDuration:I

    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTranslateDuration:I

    .line 101
    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNumShotTaken:I

    .line 102
    iput-boolean v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderMatched:Z

    .line 103
    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrTick:I

    .line 104
    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTotalTick:I

    .line 105
    iput v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrStitchMode:I

    .line 106
    iput-boolean v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentSessionFinished:Z

    .line 112
    iput v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    .line 113
    iput v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentOverlappingDirection:I

    .line 115
    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mSurfaceRotation:I

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v5, 0x4120

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/high16 v0, 0x43c8

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->INDICATOR_BOX_HEIGHT:F

    .line 66
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->DISTANCE_BETWEEN_BOXES:F

    .line 76
    iput v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->X_DISTANCE_TRANSLATE_REPLACE:F

    .line 77
    iput v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->Y_DISTANCE_TRANSLATE_REPLACE:F

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mText:Ljava/lang/String;

    .line 83
    iput v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTextCenterPosX:F

    iput v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTextCenterPosY:F

    .line 87
    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mWidth:I

    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mHeight:I

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    .line 89
    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    .line 90
    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullPosBox:Landroid/graphics/RectF;

    .line 91
    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    .line 93
    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mDirectionArrowBox:Landroid/graphics/RectF;

    .line 96
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    .line 97
    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNewPicture:Landroid/graphics/Bitmap;

    .line 98
    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mLastPicture:Landroid/graphics/Bitmap;

    .line 99
    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mDirectionImage:Landroid/graphics/Bitmap;

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDuration:I

    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTranslateDuration:I

    .line 101
    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNumShotTaken:I

    .line 102
    iput-boolean v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderMatched:Z

    .line 103
    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrTick:I

    .line 104
    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTotalTick:I

    .line 105
    iput v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrStitchMode:I

    .line 106
    iput-boolean v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentSessionFinished:Z

    .line 112
    iput v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    .line 113
    iput v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentOverlappingDirection:I

    .line 115
    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mSurfaceRotation:I

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v5, 0x4120

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const/high16 v0, 0x43c8

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->INDICATOR_BOX_HEIGHT:F

    .line 66
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->DISTANCE_BETWEEN_BOXES:F

    .line 76
    iput v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->X_DISTANCE_TRANSLATE_REPLACE:F

    .line 77
    iput v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->Y_DISTANCE_TRANSLATE_REPLACE:F

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mText:Ljava/lang/String;

    .line 83
    iput v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTextCenterPosX:F

    iput v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTextCenterPosY:F

    .line 87
    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mWidth:I

    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mHeight:I

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    .line 89
    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    .line 90
    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullPosBox:Landroid/graphics/RectF;

    .line 91
    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    .line 93
    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mDirectionArrowBox:Landroid/graphics/RectF;

    .line 96
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    .line 97
    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNewPicture:Landroid/graphics/Bitmap;

    .line 98
    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mLastPicture:Landroid/graphics/Bitmap;

    .line 99
    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mDirectionImage:Landroid/graphics/Bitmap;

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDuration:I

    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTranslateDuration:I

    .line 101
    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNumShotTaken:I

    .line 102
    iput-boolean v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderMatched:Z

    .line 103
    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrTick:I

    .line 104
    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTotalTick:I

    .line 105
    iput v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrStitchMode:I

    .line 106
    iput-boolean v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentSessionFinished:Z

    .line 112
    iput v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    .line 113
    iput v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentOverlappingDirection:I

    .line 115
    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mSurfaceRotation:I

    .line 129
    return-void
.end method

.method private drawDirectionBox(Landroid/graphics/Canvas;ILandroid/graphics/RectF;I)V
    .locals 6
    .parameter "canvas"
    .parameter "direction"
    .parameter "baseBox"
    .parameter "directionMode"

    .prologue
    const/high16 v5, 0x41dc

    const/high16 v4, 0x4000

    .line 518
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 519
    .local v1, tempRect:Landroid/graphics/RectF;
    packed-switch p2, :pswitch_data_0

    .line 565
    :goto_0
    return-void

    .line 523
    :pswitch_0
    iget-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mDirectionArrowBox:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 524
    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    iget v3, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float v0, v2, v5

    .line 525
    .local v0, temp:F
    iget v2, p3, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x425c

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 526
    invoke-virtual {p0}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v3, p4}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->getDirectionArrowId(II)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mDirectionImage:Landroid/graphics/Bitmap;

    .line 527
    iget-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mDirectionImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v2, v1}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->drawDirectionArrow(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 534
    .end local v0           #temp:F
    :pswitch_1
    iget-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mDirectionArrowBox:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 535
    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    iget v3, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float v0, v2, v5

    .line 536
    .restart local v0       #temp:F
    iget v2, p3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 537
    invoke-virtual {p0}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v3, p4}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->getDirectionArrowId(II)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mDirectionImage:Landroid/graphics/Bitmap;

    .line 538
    iget-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mDirectionImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v2, v1}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->drawDirectionArrow(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 545
    .end local v0           #temp:F
    :pswitch_2
    iget-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mDirectionArrowBox:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 546
    iget v2, p3, Landroid/graphics/RectF;->right:F

    iget v3, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    div-float v0, v2, v4

    .line 547
    .restart local v0       #temp:F
    iget v2, p3, Landroid/graphics/RectF;->top:F

    const/high16 v3, 0x4270

    add-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 549
    invoke-virtual {p0}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p0, v3, p4}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->getDirectionArrowId(II)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mDirectionImage:Landroid/graphics/Bitmap;

    .line 550
    iget-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mDirectionImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v2, v1}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->drawDirectionArrow(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 557
    .end local v0           #temp:F
    :pswitch_3
    iget-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mDirectionArrowBox:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 558
    iget v2, p3, Landroid/graphics/RectF;->right:F

    iget v3, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    div-float v0, v2, v4

    .line 559
    .restart local v0       #temp:F
    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    const/high16 v3, 0x42f0

    sub-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 560
    invoke-virtual {p0}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {p0, v3, p4}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->getDirectionArrowId(II)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mDirectionImage:Landroid/graphics/Bitmap;

    .line 561
    iget-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mDirectionImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v2, v1}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->drawDirectionArrow(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    goto/16 :goto_0

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private draw_Normal(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    const v7, -0xff0100

    const/4 v6, -0x1

    const/high16 v5, 0x4080

    const/4 v4, 0x2

    .line 568
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 569
    const-string v1, "PanoramaIndicatorView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "draw_Normal...current Direction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "...mNumShotTaken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNumShotTaken:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 571
    .local v0, tempRect:Landroid/graphics/RectF;
    iget-boolean v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderMatched:Z

    if-eqz v1, :cond_3

    .line 572
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 577
    :goto_0
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 578
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 579
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 580
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNumShotTaken:I

    if-ge v1, v4, :cond_5

    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNumShotTaken:I

    if-lez v1, :cond_5

    .line 582
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 583
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v8, v1, v8}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->drawDirectionBox(Landroid/graphics/Canvas;ILandroid/graphics/RectF;I)V

    .line 584
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v1, v2, v8}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->drawDirectionBox(Landroid/graphics/Canvas;ILandroid/graphics/RectF;I)V

    .line 585
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v1, v2, v8}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->drawDirectionBox(Landroid/graphics/Canvas;ILandroid/graphics/RectF;I)V

    .line 586
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v4, v1, v8}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->drawDirectionBox(Landroid/graphics/Canvas;ILandroid/graphics/RectF;I)V

    .line 587
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    iget-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v1, v2, v4}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->drawDirectionBox(Landroid/graphics/Canvas;ILandroid/graphics/RectF;I)V

    .line 589
    iget-boolean v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderMatched:Z

    if-nez v1, :cond_4

    .line 590
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullPosBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 591
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 592
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 593
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 594
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDx:F

    iget v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDy:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 595
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 698
    :cond_1
    :goto_1
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 699
    const-string v1, "PanoramaIndicatorView"

    const-string v2, "draw_Normal return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_2
    return-void

    .line 574
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 599
    :cond_4
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullPosBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 600
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 601
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 602
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 603
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 606
    :cond_5
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNumShotTaken:I

    if-lt v1, v4, :cond_1

    .line 607
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 608
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 609
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 610
    const-string v1, "PanoramaIndicatorView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "draw_Normal...mViewfinderDx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDx:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "...mViewfinderDy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDy:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "...mCurrentDirection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrStitchMode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 670
    :pswitch_0
    iget-boolean v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderMatched:Z

    if-nez v1, :cond_b

    .line 671
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 672
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 673
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 674
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 675
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDx:F

    iget v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDy:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 676
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 677
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    iget v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrStitchMode:I

    if-ne v1, v2, :cond_a

    .line 678
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    iget-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v1, v2, v4}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->drawDirectionBox(Landroid/graphics/Canvas;ILandroid/graphics/RectF;I)V

    goto/16 :goto_1

    .line 615
    :pswitch_1
    iget-boolean v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderMatched:Z

    if-nez v1, :cond_7

    .line 616
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 617
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 618
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 619
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullPosBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 620
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDx:F

    iget v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDy:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 621
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 622
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    iget v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrStitchMode:I

    if-ne v1, v2, :cond_6

    .line 623
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    iget-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v1, v2, v4}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->drawDirectionBox(Landroid/graphics/Canvas;ILandroid/graphics/RectF;I)V

    goto/16 :goto_1

    .line 626
    :cond_6
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    iget-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->drawDirectionBox(Landroid/graphics/Canvas;ILandroid/graphics/RectF;I)V

    goto/16 :goto_1

    .line 630
    :cond_7
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullPosBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 631
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 632
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 633
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 634
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 635
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrStitchMode:I

    iget-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v1, v2, v4}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->drawDirectionBox(Landroid/graphics/Canvas;ILandroid/graphics/RectF;I)V

    goto/16 :goto_1

    .line 642
    :pswitch_2
    iget-boolean v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderMatched:Z

    if-nez v1, :cond_9

    .line 643
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 644
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 645
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 646
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullPosBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 647
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDx:F

    iget v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDy:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 648
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 649
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    iget v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrStitchMode:I

    if-ne v1, v2, :cond_8

    .line 650
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    iget-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v1, v2, v4}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->drawDirectionBox(Landroid/graphics/Canvas;ILandroid/graphics/RectF;I)V

    goto/16 :goto_1

    .line 653
    :cond_8
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    iget-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->drawDirectionBox(Landroid/graphics/Canvas;ILandroid/graphics/RectF;I)V

    goto/16 :goto_1

    .line 657
    :cond_9
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullPosBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 658
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 659
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 660
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 661
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 662
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrStitchMode:I

    iget-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v1, v2, v4}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->drawDirectionBox(Landroid/graphics/Canvas;ILandroid/graphics/RectF;I)V

    goto/16 :goto_1

    .line 681
    :cond_a
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    iget-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->drawDirectionBox(Landroid/graphics/Canvas;ILandroid/graphics/RectF;I)V

    goto/16 :goto_1

    .line 686
    :cond_b
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullPosBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 687
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 688
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 689
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 690
    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 691
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrStitchMode:I

    iget-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v1, v2, v4}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->drawDirectionBox(Landroid/graphics/Canvas;ILandroid/graphics/RectF;I)V

    goto/16 :goto_1

    .line 612
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private getDirectionArrowId(II)I
    .locals 2
    .parameter "direction"
    .parameter "mode"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 255
    packed-switch p1, :pswitch_data_0

    .line 309
    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 258
    :pswitch_0
    if-nez p2, :cond_1

    .line 259
    const v0, 0x7f0200a3

    goto :goto_0

    .line 261
    :cond_1
    if-ne p2, v1, :cond_2

    .line 262
    const v0, 0x7f0200a1

    goto :goto_0

    .line 264
    :cond_2
    if-ne p2, v0, :cond_0

    .line 265
    const v0, 0x7f0200a2

    goto :goto_0

    .line 271
    :pswitch_1
    if-nez p2, :cond_3

    .line 272
    const v0, 0x7f0200a0

    goto :goto_0

    .line 274
    :cond_3
    if-ne p2, v1, :cond_4

    .line 275
    const v0, 0x7f02009e

    goto :goto_0

    .line 277
    :cond_4
    if-ne p2, v0, :cond_0

    .line 278
    const v0, 0x7f02009f

    goto :goto_0

    .line 284
    :pswitch_2
    if-nez p2, :cond_5

    .line 285
    const v0, 0x7f0200a6

    goto :goto_0

    .line 287
    :cond_5
    if-ne p2, v1, :cond_6

    .line 288
    const v0, 0x7f0200a4

    goto :goto_0

    .line 290
    :cond_6
    if-ne p2, v0, :cond_0

    .line 291
    const v0, 0x7f0200a5

    goto :goto_0

    .line 297
    :pswitch_3
    if-nez p2, :cond_7

    .line 298
    const v0, 0x7f02009d

    goto :goto_0

    .line 300
    :cond_7
    if-ne p2, v1, :cond_8

    .line 301
    const v0, 0x7f02009b

    goto :goto_0

    .line 303
    :cond_8
    if-ne p2, v0, :cond_0

    .line 304
    const v0, 0x7f02009c

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private initPositions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 313
    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrStitchMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrStitchMode:I

    if-ne v0, v4, :cond_2

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->DISTANCE_BETWEEN_BOXES:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 316
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    const/high16 v1, 0x4040

    div-float/2addr v0, v1

    const/high16 v1, 0x4170

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTextCenterPosX:F

    .line 317
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    const/high16 v1, 0x41f0

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTextCenterPosY:F

    .line 327
    :cond_1
    :goto_0
    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrStitchMode:I

    packed-switch v0, :pswitch_data_0

    .line 341
    :goto_1
    return-void

    .line 320
    :cond_2
    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrStitchMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrStitchMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->DISTANCE_BETWEEN_BOXES:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->INDICATOR_BOX_HEIGHT:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 323
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x4234

    add-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTextCenterPosX:F

    .line 324
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->INDICATOR_BOX_HEIGHT:F

    const/4 v2, 0x0

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTextCenterPosY:F

    goto :goto_0

    .line 331
    :pswitch_0
    invoke-direct {p0, v4, v5}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->setTickDurations(II)V

    goto :goto_1

    .line 337
    :pswitch_1
    invoke-direct {p0, v4, v5}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->setTickDurations(II)V

    goto :goto_1

    .line 327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private mapSurfaceRotationToDirection()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 410
    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mSurfaceRotation:I

    if-nez v0, :cond_0

    .line 411
    const-string v0, "PanoramaIndicatorView"

    const-string v1, "mapSurfaceRotationToDirection() : Surface is rotated because of app orientation hard code"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    if-nez v0, :cond_1

    .line 414
    iput v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    .line 415
    iput v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrStitchMode:I

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    if-ne v0, v2, :cond_2

    .line 417
    iput v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    .line 418
    iput v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrStitchMode:I

    goto :goto_0

    .line 419
    :cond_2
    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    if-ne v0, v4, :cond_3

    .line 420
    iput v5, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    .line 421
    iput v5, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrStitchMode:I

    goto :goto_0

    .line 422
    :cond_3
    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    if-ne v0, v3, :cond_0

    .line 423
    iput v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    .line 424
    iput v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrStitchMode:I

    goto :goto_0
.end method

.method private setTickDurations(II)V
    .locals 2
    .parameter "scaleDuration"
    .parameter "translateDuration"

    .prologue
    .line 344
    iput p1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDuration:I

    .line 345
    iput p2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTranslateDuration:I

    .line 346
    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDuration:I

    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTranslateDuration:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrTick:I

    .line 347
    return-void
.end method


# virtual methods
.method public drawDirectionArrow(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .locals 2
    .parameter "canvas"
    .parameter "pic"
    .parameter "tempRectF"

    .prologue
    .line 514
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 515
    return-void
.end method

.method public endAnimation()V
    .locals 2

    .prologue
    .line 703
    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNumShotTaken:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 704
    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDuration:I

    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTranslateDuration:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrTick:I

    .line 709
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTotalTick:I

    .line 710
    return-void

    .line 707
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDuration:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrTick:I

    goto :goto_0
.end method

.method public finishCurrentSession()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentSessionFinished:Z

    .line 237
    return-void
.end method

.method public getTouchAreaStitchModeDialog()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 713
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public init(ILandroid/os/Handler;II)V
    .locals 7
    .parameter "stitchMode"
    .parameter "handler"
    .parameter "surfaceRotation"
    .parameter "screenHeight"

    .prologue
    const/high16 v6, 0x42dc

    const/high16 v5, 0x425c

    const/high16 v4, 0x4120

    const/high16 v3, 0x4270

    .line 174
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "PanoramaIndicatorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " init() ENTER..viewHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    iput p3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mSurfaceRotation:I

    .line 179
    iput-object p2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mHandler:Landroid/os/Handler;

    .line 180
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mWidth:I

    int-to-float v1, v1

    sub-float/2addr v1, v3

    iget v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mHeight:I

    int-to-float v2, v2

    sub-float/2addr v2, v3

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    .line 183
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mWidth:I

    int-to-float v1, v1

    sub-float/2addr v1, v4

    iget v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mHeight:I

    int-to-float v2, v2

    sub-float/2addr v2, v4

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullPosBox:Landroid/graphics/RectF;

    .line 186
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    .line 188
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v5, v5, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mDirectionArrowBox:Landroid/graphics/RectF;

    .line 192
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    const/high16 v1, 0x4040

    div-float/2addr v0, v1

    const/high16 v1, 0x4170

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTextCenterPosX:F

    .line 193
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    const/high16 v1, 0x41f0

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTextCenterPosY:F

    .line 195
    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mWidth:I

    int-to-float v0, v0

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->X_DISTANCE_TRANSLATE_REPLACE:F

    .line 197
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    add-float/2addr v0, v3

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->Y_DISTANCE_TRANSLATE_REPLACE:F

    .line 199
    invoke-virtual {p0}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->reset()V

    .line 201
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "PanoramaIndicatorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " init() EXIT....Y_DISTANCE_TRANSLATE_REPLACE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->Y_DISTANCE_TRANSLATE_REPLACE:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "...X_DISTANCE_TRANSLATE_REPLACE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->X_DISTANCE_TRANSLATE_REPLACE:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 718
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 719
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 720
    const-string v0, "PanoramaIndicatorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw...mTotalTick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTotalTick:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "...mCurrTick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrTick:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentSessionFinished:Z

    if-eqz v0, :cond_2

    .line 760
    :cond_1
    :goto_0
    return-void

    .line 725
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 726
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 727
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 728
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 729
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 730
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mText:Ljava/lang/String;

    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTextCenterPosX:F

    iget v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTextCenterPosY:F

    iget-object v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 732
    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNumShotTaken:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    .line 733
    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDuration:I

    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTranslateDuration:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTotalTick:I

    .line 739
    :goto_1
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 740
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 741
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 743
    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrTick:I

    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTotalTick:I

    if-le v0, v1, :cond_5

    .line 744
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    .line 745
    const-string v0, "PanoramaIndicatorView"

    const-string v1, "onDraw-->calling draw_Normal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_3
    invoke-direct {p0, p1}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->draw_Normal(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 736
    :cond_4
    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDuration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mTotalTick:I

    goto :goto_1

    .line 750
    :cond_5
    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrTick:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrTick:I

    .line 751
    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrTick:I

    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDuration:I

    if-gt v0, v1, :cond_1

    .line 752
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    .line 753
    const-string v0, "PanoramaIndicatorView"

    const-string v1, "onDraw-->mCurrTick == mTotalTick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_6
    invoke-virtual {p0}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->endAnimation()V

    .line 755
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 756
    iput v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDy:F

    iput v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDx:F

    .line 757
    iput v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDyLastTime:F

    iput v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDxLastTime:F

    .line 758
    invoke-virtual {p0}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->invalidate()V

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 133
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "PanoramaIndicatorView"

    const-string v1, " onFinishInflate() ENTER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 138
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 141
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->setWillNotDraw(Z)V

    .line 143
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 144
    const-string v0, "PanoramaIndicatorView"

    const-string v1, " onFinishInflate() EXIT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_2
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 147
    return-void
.end method

.method public onNewPictureTaken(IILandroid/graphics/Bitmap;)V
    .locals 6
    .parameter "direction"
    .parameter "shotNum"
    .parameter "newPic"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 350
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mLastPicture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mLastPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 351
    :cond_0
    iput p2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNumShotTaken:I

    .line 353
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNewPicture:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mLastPicture:Landroid/graphics/Bitmap;

    .line 354
    iput-object p3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNewPicture:Landroid/graphics/Bitmap;

    .line 355
    iput p1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    .line 356
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 357
    const-string v0, "PanoramaIndicatorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNumShotTaken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNumShotTaken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_1
    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNumShotTaken:I

    if-ge v0, v5, :cond_4

    .line 360
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDeltaLeft:F

    .line 361
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDeltaTop:F

    .line 362
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDeltaRight:F

    .line 363
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDeltaBottom:F

    .line 394
    :cond_2
    :goto_0
    iput v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrTick:I

    .line 395
    iget-boolean v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderMatched:Z

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderMatched:Z

    .line 397
    :cond_3
    iput v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDy:F

    iput v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDx:F

    .line 398
    iput v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDyLastTime:F

    iput v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDxLastTime:F

    .line 400
    invoke-virtual {p0}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->invalidate()V

    .line 401
    return-void

    .line 365
    :cond_4
    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNumShotTaken:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    .line 366
    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNumShotTaken:I

    if-ne v0, v5, :cond_5

    .line 367
    iput p1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrStitchMode:I

    .line 368
    invoke-direct {p0}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->initPositions()V

    .line 371
    :cond_5
    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrStitchMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 375
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDeltaLeft:F

    .line 376
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDeltaTop:F

    .line 377
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDeltaRight:F

    .line 378
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNextPosBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDeltaBottom:F

    goto :goto_0

    .line 385
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDeltaLeft:F

    .line 386
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDeltaTop:F

    .line 387
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDeltaRight:F

    .line 388
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mInitialPosBox:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mScaleDeltaBottom:F

    goto/16 :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 150
    iput p1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mWidth:I

    .line 151
    iput p2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mHeight:I

    .line 152
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 157
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 158
    .local v2, y:F
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    .line 159
    const-string v3, "PanoramaIndicatorView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PanoramaIndicatorView Touch Event checking for Panorama"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->getTouchAreaStitchModeDialog()Landroid/graphics/RectF;

    move-result-object v0

    .line 161
    .local v0, validArea:Landroid/graphics/RectF;
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_1

    .line 162
    const-string v3, "PanoramaIndicatorView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Touch Event checking for Panorama 1 Valid area"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_1
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 164
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_2

    .line 165
    const-string v3, "PanoramaIndicatorView"

    const-string v4, "PanoramaIndicatorView Touch Event :  Show Panorama Dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_2
    iget-object v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 167
    const/4 v3, 0x1

    .line 169
    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onViewfinderInfo(IZI)V
    .locals 7
    .parameter "overlapPercent"
    .parameter "matched"
    .parameter "vfdir"

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x42c8

    const/4 v4, 0x0

    .line 430
    iput p3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    .line 435
    invoke-direct {p0}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mapSurfaceRotationToDirection()V

    .line 437
    const-string v1, "PanoramaIndicatorView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onViewfinderInfo...camDirection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "...mNumShotTaken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNumShotTaken:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    if-ltz p1, :cond_0

    const/16 v1, 0x64

    if-le p1, v1, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    rsub-int/lit8 v0, p1, 0x64

    .line 441
    .local v0, movedPercent:I
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDx:F

    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDxLastTime:F

    .line 442
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDy:F

    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDyLastTime:F

    .line 444
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNumShotTaken:I

    if-le v1, v6, :cond_3

    .line 446
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrStitchMode:I

    packed-switch v1, :pswitch_data_0

    .line 503
    :goto_1
    if-eqz p2, :cond_2

    iget-boolean v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderMatched:Z

    if-nez v1, :cond_2

    .line 505
    iput-boolean v6, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderMatched:Z

    .line 508
    :cond_2
    const-string v1, "PanoramaIndicatorView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onViewfinderInfo...camDirection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "...mNumShotTaken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNumShotTaken:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..mViewfinderDx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDx:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..mViewfinderDy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDy:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {p0}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->invalidate()V

    goto :goto_0

    .line 450
    :pswitch_0
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->X_DISTANCE_TRANSLATE_REPLACE:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    neg-float v1, v1

    div-float/2addr v1, v5

    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDx:F

    .line 451
    iput v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDy:F

    goto :goto_1

    .line 456
    :pswitch_1
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->X_DISTANCE_TRANSLATE_REPLACE:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDx:F

    .line 457
    iput v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDy:F

    goto :goto_1

    .line 462
    :pswitch_2
    iput v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDx:F

    .line 463
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->Y_DISTANCE_TRANSLATE_REPLACE:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDy:F

    goto :goto_1

    .line 468
    :pswitch_3
    iput v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDx:F

    .line 469
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->Y_DISTANCE_TRANSLATE_REPLACE:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    neg-float v1, v1

    div-float/2addr v1, v5

    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDy:F

    goto :goto_1

    .line 475
    :cond_3
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentOverlappingDirection:I

    .line 476
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 480
    :pswitch_4
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->X_DISTANCE_TRANSLATE_REPLACE:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    neg-float v1, v1

    div-float/2addr v1, v5

    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDx:F

    .line 481
    iput v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDy:F

    goto/16 :goto_1

    .line 486
    :pswitch_5
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->X_DISTANCE_TRANSLATE_REPLACE:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDx:F

    .line 487
    iput v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDy:F

    goto/16 :goto_1

    .line 492
    :pswitch_6
    iput v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDx:F

    .line 493
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->Y_DISTANCE_TRANSLATE_REPLACE:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDy:F

    goto/16 :goto_1

    .line 498
    :pswitch_7
    iput v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDx:F

    .line 499
    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->Y_DISTANCE_TRANSLATE_REPLACE:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    neg-float v1, v1

    div-float/2addr v1, v5

    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderDy:F

    goto/16 :goto_1

    .line 446
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 476
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 212
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mText:Ljava/lang/String;

    .line 213
    iput v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNumShotTaken:I

    .line 214
    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNewPicture:Landroid/graphics/Bitmap;

    .line 215
    iput-boolean v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentSessionFinished:Z

    .line 216
    iput-boolean v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mViewfinderMatched:Z

    .line 218
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNewPicture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNewPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 220
    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNewPicture:Landroid/graphics/Bitmap;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mLastPicture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mLastPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 225
    iput-object v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mLastPicture:Landroid/graphics/Bitmap;

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->endAnimation()V

    .line 229
    return-void
.end method

.method public setScreenSize(II)V
    .locals 6
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v5, 0x4000

    .line 205
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "PanoramaIndicatorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenSize w, h : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mFullSizeRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mWidth:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mHeight:I

    sub-int/2addr v2, p2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mWidth:I

    sub-int/2addr v3, p1

    int-to-float v3, v3

    div-float/2addr v3, v5

    int-to-float v4, p1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mHeight:I

    sub-int/2addr v4, p2

    int-to-float v4, v4

    div-float/2addr v4, v5

    int-to-float v5, p2

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 209
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mText:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public updateDirection(I)V
    .locals 3
    .parameter "camDirection"

    .prologue
    .line 240
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 241
    const-string v0, "PanoramaIndicatorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenSize...camDirection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "...mNumShotTaken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNumShotTaken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNumShotTaken:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mNumShotTaken:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 252
    :cond_1
    :goto_0
    return-void

    .line 247
    :cond_2
    if-ltz p1, :cond_1

    .line 248
    iput p1, p0, Lcom/motorola/Camera/View/PanoramaIndicatorView;->mCurrentDirection:I

    .line 250
    invoke-virtual {p0}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->invalidate()V

    goto :goto_0
.end method
