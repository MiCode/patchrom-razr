.class public Landroid/widget/ImageView;
.super Landroid/view/View;
.source "ImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ImageView$1;,
        Landroid/widget/ImageView$CallbackRunnable;,
        Landroid/widget/ImageView$AnimatedGifDecoder;,
        Landroid/widget/ImageView$LoadImageDecoder;,
        Landroid/widget/ImageView$GifFrameAvailable;,
        Landroid/widget/ImageView$ImageDecoderReady;,
        Landroid/widget/ImageView$OnDecoderLoaded;,
        Landroid/widget/ImageView$ScaleType;
    }
.end annotation


# static fields
.field public static final PHOTO_FILL:I = 0x1

.field public static final PHOTO_OFF:I = 0x0

.field public static final PHOTO_ZOOM:I = 0x2

.field private static final sMultiplyPaint:Landroid/graphics/Paint;

.field private static final sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

.field private static final sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private currentAnimationThread:Landroid/widget/ImageView$AnimatedGifDecoder;

.field private mAdjustViewBounds:Z

.field private mAlpha:I

.field private mAlternateImage:Landroid/graphics/Bitmap;

.field private mBaseline:I

.field private mBaselineAlignBottom:Z

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mColorMod:Z

.field private mCropToPadding:Z

.field private mDecoder:Landroid/widget/ImageDecoder;

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableHeight:I

.field private mDrawableWidth:I

.field private mHandler:Landroid/os/Handler;

.field private mHaveFrame:Z

.field private mIsMasked:Z

.field private mLevel:I

.field private mLoadDecoder:Landroid/widget/ImageView$LoadImageDecoder;

.field private mMaskDrawable:Landroid/graphics/drawable/Drawable;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMergeState:Z

.field private mPhotoMode:I

.field private mResource:I

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mState:[I

.field private mStopReceived:Z

.field private mTempDst:Landroid/graphics/RectF;

.field private mTempSrc:Landroid/graphics/RectF;

.field private mUri:Landroid/net/Uri;

.field private mViewAlphaScale:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    .line 661
    new-array v0, v7, [Landroid/graphics/Matrix$ScaleToFit;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v5

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v6

    sput-object v0, Landroid/widget/ImageView;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    .line 1254
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/widget/ImageView;->sMultiplyPaint:Landroid/graphics/Paint;

    .line 1258
    sget-object v0, Landroid/widget/ImageView;->sMultiplyPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1259
    sget-object v0, Landroid/widget/ImageView;->sMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1260
    sget-object v0, Landroid/widget/ImageView;->sMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1261
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const v0, 0x7fffffff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 89
    iput v1, p0, Landroid/widget/ImageView;->mResource:I

    .line 92
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 93
    iput-boolean v1, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    .line 94
    iput v0, p0, Landroid/widget/ImageView;->mMaxWidth:I

    .line 95
    iput v0, p0, Landroid/widget/ImageView;->mMaxHeight:I

    .line 99
    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/ImageView;->mAlpha:I

    .line 100
    const/16 v0, 0x100

    iput v0, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    .line 101
    iput-boolean v1, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 103
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 104
    iput-object v2, p0, Landroid/widget/ImageView;->mState:[I

    .line 105
    iput-boolean v1, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 106
    iput v1, p0, Landroid/widget/ImageView;->mLevel:I

    .line 109
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 112
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    .line 113
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 118
    iput-boolean v1, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 1207
    iput v1, p0, Landroid/widget/ImageView;->mPhotoMode:I

    .line 1248
    iput-object v2, p0, Landroid/widget/ImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    .line 1251
    iput-boolean v1, p0, Landroid/widget/ImageView;->mIsMasked:Z

    .line 1347
    iput-object v2, p0, Landroid/widget/ImageView;->mDecoder:Landroid/widget/ImageDecoder;

    .line 1348
    iput-object v2, p0, Landroid/widget/ImageView;->currentAnimationThread:Landroid/widget/ImageView$AnimatedGifDecoder;

    .line 1349
    iput-object v2, p0, Landroid/widget/ImageView;->mHandler:Landroid/os/Handler;

    .line 1350
    iput-object v2, p0, Landroid/widget/ImageView;->mAlternateImage:Landroid/graphics/Bitmap;

    .line 1351
    iput-boolean v1, p0, Landroid/widget/ImageView;->mStopReceived:Z

    .line 133
    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v10, 0xff

    const/4 v9, -0x1

    const v8, 0x7fffffff

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 141
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    iput v6, p0, Landroid/widget/ImageView;->mResource:I

    .line 92
    iput-boolean v6, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 93
    iput-boolean v6, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    .line 94
    iput v8, p0, Landroid/widget/ImageView;->mMaxWidth:I

    .line 95
    iput v8, p0, Landroid/widget/ImageView;->mMaxHeight:I

    .line 99
    iput v10, p0, Landroid/widget/ImageView;->mAlpha:I

    .line 100
    const/16 v5, 0x100

    iput v5, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    .line 101
    iput-boolean v6, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 103
    iput-object v7, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 104
    iput-object v7, p0, Landroid/widget/ImageView;->mState:[I

    .line 105
    iput-boolean v6, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 106
    iput v6, p0, Landroid/widget/ImageView;->mLevel:I

    .line 109
    iput-object v7, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 112
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    .line 113
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    .line 117
    iput v9, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 118
    iput-boolean v6, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 1207
    iput v6, p0, Landroid/widget/ImageView;->mPhotoMode:I

    .line 1248
    iput-object v7, p0, Landroid/widget/ImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    .line 1251
    iput-boolean v6, p0, Landroid/widget/ImageView;->mIsMasked:Z

    .line 1347
    iput-object v7, p0, Landroid/widget/ImageView;->mDecoder:Landroid/widget/ImageDecoder;

    .line 1348
    iput-object v7, p0, Landroid/widget/ImageView;->currentAnimationThread:Landroid/widget/ImageView$AnimatedGifDecoder;

    .line 1349
    iput-object v7, p0, Landroid/widget/ImageView;->mHandler:Landroid/os/Handler;

    .line 1350
    iput-object v7, p0, Landroid/widget/ImageView;->mAlternateImage:Landroid/graphics/Bitmap;

    .line 1351
    iput-boolean v6, p0, Landroid/widget/ImageView;->mStopReceived:Z

    .line 142
    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    .line 144
    sget-object v5, Lcom/android/internal/R$styleable;->ImageView:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 147
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 148
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    :cond_0
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 155
    const/16 v5, 0x8

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 158
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 162
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 165
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 168
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 169
    .local v3, index:I
    if-ltz v3, :cond_1

    .line 170
    sget-object v5, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    aget-object v5, v5, v3

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 173
    :cond_1
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 174
    .local v4, tint:I
    if-eqz v4, :cond_2

    .line 175
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 178
    :cond_2
    const/16 v5, 0x9

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 179
    .local v1, alpha:I
    if-eq v1, v10, :cond_3

    .line 180
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 183
    :cond_3
    const/4 v5, 0x7

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    .line 186
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 189
    return-void
.end method

.method static synthetic access$1000(Landroid/widget/ImageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/ImageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Landroid/widget/ImageView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/ImageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Landroid/widget/ImageView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/ImageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Landroid/widget/ImageView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/ImageView;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ImageView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/ImageView;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ImageView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/ImageView;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ImageView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/ImageView;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ImageView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/ImageView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/ImageView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/ImageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Landroid/widget/ImageView;->mStopReceived:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/ImageView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/widget/ImageView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ImageView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/widget/ImageView;)Landroid/widget/ImageView$LoadImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ImageView;->mLoadDecoder:Landroid/widget/ImageView$LoadImageDecoder;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ImageView;->mAlternateImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/ImageView;)Landroid/widget/ImageView$AnimatedGifDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ImageView;->currentAnimationThread:Landroid/widget/ImageView$AnimatedGifDecoder;

    return-object v0
.end method

.method static synthetic access$502(Landroid/widget/ImageView;Landroid/widget/ImageView$AnimatedGifDecoder;)Landroid/widget/ImageView$AnimatedGifDecoder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Landroid/widget/ImageView;->currentAnimationThread:Landroid/widget/ImageView$AnimatedGifDecoder;

    return-object p1
.end method

.method static synthetic access$700(Landroid/widget/ImageView;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ImageView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/ImageView;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ImageView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/ImageView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private applyColorMod()V
    .locals 3

    .prologue
    .line 1153
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1155
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1156
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/ImageView;->mAlpha:I

    iget v2, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    mul-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1158
    :cond_0
    return-void
.end method

.method private configureBounds()V
    .locals 19

    .prologue
    .line 814
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/ImageView;->mHaveFrame:Z

    if-nez v14, :cond_1

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 818
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 819
    .local v3, dwidth:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 821
    .local v2, dheight:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ImageView;->mPaddingLeft:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ImageView;->mPaddingRight:I

    sub-int v13, v14, v15

    .line 822
    .local v13, vwidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ImageView;->mPaddingTop:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ImageView;->mPaddingBottom:I

    sub-int v12, v14, v15

    .line 824
    .local v12, vheight:I
    if-ltz v3, :cond_2

    if-ne v13, v3, :cond_5

    :cond_2
    if-ltz v2, :cond_3

    if-ne v12, v2, :cond_5

    :cond_3
    const/4 v6, 0x1

    .line 827
    .local v6, fits:Z
    :goto_1
    if-lez v3, :cond_4

    if-lez v2, :cond_4

    sget-object v14, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v14, v15, :cond_6

    .line 831
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v13, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 832
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_0

    .line 824
    .end local v6           #fits:Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 837
    .restart local v6       #fits:Z
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ImageView;->mPhotoMode:I

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v14, v14, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v14, :cond_a

    .line 840
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 841
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v14}, Landroid/graphics/Matrix;->reset()V

    .line 844
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 850
    const/4 v8, 0x0

    .local v8, left:I
    const/4 v11, 0x0

    .line 852
    .local v11, top:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v14, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 855
    .local v7, img:Landroid/graphics/Bitmap;
    mul-int v14, v3, v12

    mul-int v15, v13, v2

    sub-int v1, v14, v15

    .line 856
    .local v1, aspectDiff:I
    if-lez v1, :cond_8

    .line 858
    int-to-float v14, v12

    int-to-float v15, v2

    div-float v10, v14, v15

    .line 859
    .local v10, scale:F
    int-to-float v14, v3

    int-to-float v15, v13

    div-float/2addr v15, v10

    sub-float/2addr v14, v15

    float-to-int v14, v14

    invoke-static {v7, v14}, Lcom/motorola/android/graphics/SmartCrop;->cropWidth(Landroid/graphics/Bitmap;I)I

    move-result v8

    .line 872
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ImageView;->mPhotoMode:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_7

    const/high16 v14, 0x3f80

    cmpg-float v14, v10, v14

    if-gez v14, :cond_7

    .line 874
    new-instance v9, Landroid/graphics/Rect;

    int-to-float v14, v13

    div-float/2addr v14, v10

    float-to-int v14, v14

    add-int/2addr v14, v8

    int-to-float v15, v12

    div-float/2addr v15, v10

    float-to-int v15, v15

    add-int/2addr v15, v11

    invoke-direct {v9, v8, v11, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 877
    .local v9, r:Landroid/graphics/Rect;
    invoke-static {v7, v9, v13, v12}, Lcom/motorola/android/graphics/SmartCrop;->zoom(Landroid/graphics/Bitmap;Landroid/graphics/Rect;II)V

    .line 879
    int-to-float v14, v13

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    div-float v10, v14, v15

    .line 880
    iget v8, v9, Landroid/graphics/Rect;->left:I

    .line 881
    iget v11, v9, Landroid/graphics/Rect;->top:I

    .line 884
    .end local v9           #r:Landroid/graphics/Rect;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v14, v10, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 885
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    neg-int v15, v8

    int-to-float v15, v15

    neg-int v0, v11

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 893
    invoke-direct/range {p0 .. p0}, Landroid/widget/ImageView;->configureMask()V

    goto/16 :goto_0

    .line 861
    .end local v10           #scale:F
    :cond_8
    if-gez v1, :cond_9

    .line 863
    int-to-float v14, v13

    int-to-float v15, v3

    div-float v10, v14, v15

    .line 864
    .restart local v10       #scale:F
    int-to-float v14, v2

    int-to-float v15, v12

    div-float/2addr v15, v10

    sub-float/2addr v14, v15

    float-to-int v14, v14

    invoke-static {v7, v14}, Lcom/motorola/android/graphics/SmartCrop;->cropHeight(Landroid/graphics/Bitmap;I)I

    move-result v11

    goto :goto_2

    .line 868
    .end local v10           #scale:F
    :cond_9
    int-to-float v14, v13

    int-to-float v15, v3

    div-float v10, v14, v15

    .restart local v10       #scale:F
    goto :goto_2

    .line 899
    .end local v1           #aspectDiff:I
    .end local v7           #img:Landroid/graphics/Bitmap;
    .end local v8           #left:I
    .end local v10           #scale:F
    .end local v11           #top:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 901
    sget-object v14, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v14, v15, :cond_c

    .line 903
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v14}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 904
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto/16 :goto_0

    .line 906
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto/16 :goto_0

    .line 908
    :cond_c
    if-eqz v6, :cond_d

    .line 910
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto/16 :goto_0

    .line 911
    :cond_d
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v14, v15, :cond_e

    .line 913
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 914
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    sub-int v15, v13, v3

    int-to-float v15, v15

    const/high16 v16, 0x3f00

    mul-float v15, v15, v16

    const/high16 v16, 0x3f00

    add-float v15, v15, v16

    float-to-int v15, v15

    int-to-float v15, v15

    sub-int v16, v12, v2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x3f00

    mul-float v16, v16, v17

    const/high16 v17, 0x3f00

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto/16 :goto_0

    .line 916
    :cond_e
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v14, v15, :cond_10

    .line 917
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 920
    const/4 v4, 0x0

    .local v4, dx:F
    const/4 v5, 0x0

    .line 922
    .local v5, dy:F
    mul-int v14, v3, v12

    mul-int v15, v13, v2

    if-le v14, v15, :cond_f

    .line 923
    int-to-float v14, v12

    int-to-float v15, v2

    div-float v10, v14, v15

    .line 924
    .restart local v10       #scale:F
    int-to-float v14, v13

    int-to-float v15, v3

    mul-float/2addr v15, v10

    sub-float/2addr v14, v15

    const/high16 v15, 0x3f00

    mul-float v4, v14, v15

    .line 930
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v14, v10, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 931
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    const/high16 v15, 0x3f00

    add-float/2addr v15, v4

    float-to-int v15, v15

    int-to-float v15, v15

    const/high16 v16, 0x3f00

    add-float v16, v16, v5

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 926
    .end local v10           #scale:F
    :cond_f
    int-to-float v14, v13

    int-to-float v15, v3

    div-float v10, v14, v15

    .line 927
    .restart local v10       #scale:F
    int-to-float v14, v12

    int-to-float v15, v2

    mul-float/2addr v15, v10

    sub-float/2addr v14, v15

    const/high16 v15, 0x3f00

    mul-float v5, v14, v15

    goto :goto_3

    .line 932
    .end local v4           #dx:F
    .end local v5           #dy:F
    .end local v10           #scale:F
    :cond_10
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v14, v15, :cond_12

    .line 933
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 938
    if-gt v3, v13, :cond_11

    if-gt v2, v12, :cond_11

    .line 939
    const/high16 v10, 0x3f80

    .line 945
    .restart local v10       #scale:F
    :goto_4
    int-to-float v14, v13

    int-to-float v15, v3

    mul-float/2addr v15, v10

    sub-float/2addr v14, v15

    const/high16 v15, 0x3f00

    mul-float/2addr v14, v15

    const/high16 v15, 0x3f00

    add-float/2addr v14, v15

    float-to-int v14, v14

    int-to-float v4, v14

    .line 946
    .restart local v4       #dx:F
    int-to-float v14, v12

    int-to-float v15, v2

    mul-float/2addr v15, v10

    sub-float/2addr v14, v15

    const/high16 v15, 0x3f00

    mul-float/2addr v14, v15

    const/high16 v15, 0x3f00

    add-float/2addr v14, v15

    float-to-int v14, v14

    int-to-float v5, v14

    .line 948
    .restart local v5       #dy:F
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v14, v10, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 949
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v14, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 941
    .end local v4           #dx:F
    .end local v5           #dy:F
    .end local v10           #scale:F
    :cond_11
    int-to-float v14, v13

    int-to-float v15, v3

    div-float/2addr v14, v15

    int-to-float v15, v12

    int-to-float v0, v2

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .restart local v10       #scale:F
    goto :goto_4

    .line 952
    .end local v10           #scale:F
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    const/4 v15, 0x0

    const/16 v16, 0x0

    int-to-float v0, v3

    move/from16 v17, v0

    int-to-float v0, v2

    move/from16 v18, v0

    invoke-virtual/range {v14 .. v18}, Landroid/graphics/RectF;->set(FFFF)V

    .line 953
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    const/4 v15, 0x0

    const/16 v16, 0x0

    int-to-float v0, v13

    move/from16 v17, v0

    int-to-float v0, v12

    move/from16 v18, v0

    invoke-virtual/range {v14 .. v18}, Landroid/graphics/RectF;->set(FFFF)V

    .line 955
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 956
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/ImageView;->scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;

    move-result-object v17

    invoke-virtual/range {v14 .. v17}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0
.end method

.method private configureMask()V
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v11, 0x3f00

    .line 1305
    iget-object v6, p0, Landroid/widget/ImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v6, v6, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_1

    .line 1306
    iput-boolean v4, p0, Landroid/widget/ImageView;->mIsMasked:Z

    .line 1309
    const/4 v1, 0x0

    .line 1310
    .local v1, left:I
    const/4 v3, 0x0

    .line 1311
    .local v3, top:I
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1312
    .local v2, right:I
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1314
    .local v0, bottom:I
    iget-object v6, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v6, :cond_0

    .line 1316
    iget-object v6, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    int-to-float v7, v1

    int-to-float v8, v3

    int-to-float v9, v2

    int-to-float v10, v0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1317
    iget-object v6, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1320
    iget-object v6, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v11

    float-to-int v1, v6

    .line 1321
    iget-object v6, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v11

    float-to-int v3, v6

    .line 1322
    iget-object v6, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v11

    float-to-int v2, v6

    .line 1323
    iget-object v6, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v11

    float-to-int v0, v6

    .line 1327
    :cond_0
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1328
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1329
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    iget v7, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/ImageView;->mPaddingRight:I

    sub-int/2addr v6, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1330
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    iget v7, p0, Landroid/widget/ImageView;->mPaddingTop:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/ImageView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1333
    iget-object v6, p0, Landroid/widget/ImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1339
    .end local v0           #bottom:I
    .end local v1           #left:I
    .end local v2           #right:I
    .end local v3           #top:I
    :goto_0
    iget-boolean v6, p0, Landroid/widget/ImageView;->mIsMasked:Z

    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 1340
    iget-boolean v6, p0, Landroid/widget/ImageView;->mIsMasked:Z

    if-nez v6, :cond_2

    :goto_1
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setWillNotCacheDrawing(Z)V

    .line 1341
    const/high16 v4, 0x10

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setDrawingCacheQuality(I)V

    .line 1342
    return-void

    .line 1336
    :cond_1
    iput-boolean v5, p0, Landroid/widget/ImageView;->mIsMasked:Z

    goto :goto_0

    :cond_2
    move v4, v5

    .line 1340
    goto :goto_1
.end method

.method private initImageView()V
    .locals 1

    .prologue
    .line 192
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 193
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 194
    return-void
.end method

.method private resizeFromDrawable()V
    .locals 4

    .prologue
    .line 647
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 648
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 649
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 650
    .local v2, w:I
    if-gez v2, :cond_0

    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 651
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 652
    .local v1, h:I
    if-gez v1, :cond_1

    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 653
    :cond_1
    iget v3, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v2, v3, :cond_2

    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v1, v3, :cond_3

    .line 654
    :cond_2
    iput v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 655
    iput v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 656
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 659
    .end local v1           #h:I
    .end local v2           #w:I
    :cond_3
    return-void
.end method

.method private resolveAdjustedSize(III)I
    .locals 4
    .parameter "desiredSize"
    .parameter "maxSize"
    .parameter "measureSpec"

    .prologue
    .line 781
    move v0, p1

    .line 782
    .local v0, result:I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 783
    .local v1, specMode:I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 784
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 802
    :goto_0
    return v0

    .line 789
    :sswitch_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 790
    goto :goto_0

    .line 795
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 796
    goto :goto_0

    .line 799
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 784
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private resolveUri()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 557
    iget-object v5, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 562
    .local v3, rsrc:Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    .line 566
    const/4 v0, 0x0

    .line 568
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget v5, p0, Landroid/widget/ImageView;->mResource:I

    if-eqz v5, :cond_3

    .line 570
    :try_start_0
    iget v5, p0, Landroid/widget/ImageView;->mResource:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 610
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 571
    :catch_0
    move-exception v1

    .line 572
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "ImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find resource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/ImageView;->mResource:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 574
    iput-object v8, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    goto :goto_1

    .line 576
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v5, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    .line 577
    iget-object v5, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 578
    .local v4, scheme:Ljava/lang/String;
    const-string v5, "android.resource"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 581
    :try_start_1
    iget-object v5, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v2

    .line 583
    .local v2, r:Landroid/content/ContentResolver$OpenResourceIdResult;
    iget-object v5, v2, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v6, v2, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 600
    .end local v2           #r:Landroid/content/ContentResolver$OpenResourceIdResult;
    :goto_2
    if-nez v0, :cond_2

    .line 601
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resolveUri failed on bad bitmap uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 604
    iput-object v8, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    goto :goto_1

    .line 584
    :catch_1
    move-exception v1

    .line 585
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v5, "ImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to open content: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 587
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    const-string v5, "content"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "file"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 590
    :cond_5
    :try_start_2
    iget-object v5, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_2

    .line 593
    :catch_2
    move-exception v1

    .line 594
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v5, "ImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to open content: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 597
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    iget-object v5, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_2
.end method

.method private static scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;
    .locals 2
    .parameter "st"

    .prologue
    .line 670
    sget-object v0, Landroid/widget/ImageView;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    iget v1, p0, Landroid/widget/ImageView$ScaleType;->nativeInt:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private updateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 626
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 628
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 630
    :cond_0
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 631
    if-eqz p1, :cond_2

    .line 632
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 633
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 636
    :cond_1
    iget v0, p0, Landroid/widget/ImageView;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 637
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 638
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 639
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 640
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 644
    :goto_0
    return-void

    .line 642
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    iput v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    goto :goto_0
.end method


# virtual methods
.method public final clearColorFilter()V
    .locals 1

    .prologue
    .line 1121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1122
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 963
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 964
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 965
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 966
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 968
    :cond_0
    return-void
.end method

.method public getBaseline()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 1046
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    if-eqz v0, :cond_0

    .line 1047
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    .line 1049
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/ImageView;->mBaseline:I

    goto :goto_0
.end method

.method public getBaselineAlignBottom()Z
    .locals 1

    .prologue
    .line 1092
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getResolvedLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 1
    .parameter "dr"

    .prologue
    .line 228
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResolvedLayoutDirection()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getResolvedLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    goto :goto_0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "dr"

    .prologue
    .line 209
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 217
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 204
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 205
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1171
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1172
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1173
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1175
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1173
    goto :goto_0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 615
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    if-nez v0, :cond_0

    .line 616
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 620
    :goto_0
    return-object v0

    .line 617
    :cond_0
    iget-boolean v0, p0, Landroid/widget/ImageView;->mMergeState:Z

    if-nez v0, :cond_1

    .line 618
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    goto :goto_0

    .line 620
    :cond_1
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    array-length v0, v0

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ImageView;->mState:[I

    invoke-static {v0, v1}, Landroid/widget/ImageView;->mergeDrawableStates([I[I)[I

    move-result-object v0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1179
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1180
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1183
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    .line 972
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 974
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 1034
    :cond_0
    :goto_0
    return-void

    .line 978
    :cond_1
    iget v3, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eqz v3, :cond_0

    .line 982
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v3, :cond_3

    iget v3, p0, Landroid/widget/ImageView;->mPaddingTop:I

    if-nez v3, :cond_3

    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    if-nez v3, :cond_3

    .line 985
    iget-boolean v3, p0, Landroid/widget/ImageView;->mIsMasked:Z

    if-eqz v3, :cond_2

    .line 987
    iget-object v3, p0, Landroid/widget/ImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 989
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/widget/ImageView;->sMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 993
    :cond_2
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 999
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 1000
    .local v0, saveCount:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1002
    iget-boolean v3, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    if-eqz v3, :cond_4

    .line 1003
    iget v1, p0, Landroid/widget/ImageView;->mScrollX:I

    .line 1004
    .local v1, scrollX:I
    iget v2, p0, Landroid/widget/ImageView;->mScrollY:I

    .line 1005
    .local v2, scrollY:I
    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/ImageView;->mPaddingTop:I

    add-int/2addr v4, v2

    iget v5, p0, Landroid/widget/ImageView;->mRight:I

    add-int/2addr v5, v1

    iget v6, p0, Landroid/widget/ImageView;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ImageView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ImageView;->mBottom:I

    add-int/2addr v6, v2

    iget v7, p0, Landroid/widget/ImageView;->mTop:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/ImageView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1010
    .end local v1           #scrollX:I
    .end local v2           #scrollY:I
    :cond_4
    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/ImageView;->mPaddingTop:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1013
    iget-boolean v3, p0, Landroid/widget/ImageView;->mIsMasked:Z

    if-eqz v3, :cond_6

    .line 1015
    iget-object v3, p0, Landroid/widget/ImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1017
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v3, :cond_5

    .line 1018
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    sget-object v5, Landroid/widget/ImageView;->sMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1032
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 1021
    :cond_5
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/widget/ImageView;->sMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1025
    :cond_6
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v3, :cond_7

    .line 1026
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1028
    :cond_7
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 25
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 675
    invoke-direct/range {p0 .. p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 680
    const/4 v5, 0x0

    .line 683
    .local v5, desiredAspect:F
    const/16 v17, 0x0

    .line 686
    .local v17, resizeWidth:Z
    const/16 v16, 0x0

    .line 688
    .local v16, resizeHeight:Z
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 689
    .local v20, widthSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 691
    .local v9, heightSpecMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-nez v21, :cond_4

    .line 693
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 694
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 695
    const/4 v7, 0x0

    .local v7, h:I
    move/from16 v18, v7

    .line 712
    .local v18, w:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ImageView;->mPaddingLeft:I

    .line 713
    .local v13, pleft:I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ImageView;->mPaddingRight:I

    .line 714
    .local v14, pright:I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ImageView;->mPaddingTop:I

    .line 715
    .local v15, ptop:I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/ImageView;->mPaddingBottom:I

    .line 720
    .local v12, pbottom:I
    if-nez v17, :cond_1

    if-eqz v16, :cond_9

    .line 727
    :cond_1
    add-int v21, v18, v13

    add-int v21, v21, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mMaxWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v19

    .line 730
    .local v19, widthSize:I
    add-int v21, v7, v15

    add-int v21, v21, v12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mMaxHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v8

    .line 732
    .local v8, heightSize:I
    const/16 v21, 0x0

    cmpl-float v21, v5, v21

    if-eqz v21, :cond_3

    .line 734
    sub-int v21, v19, v13

    sub-int v21, v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-int v22, v8, v15

    sub-int v22, v22, v12

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v4, v21, v22

    .line 737
    .local v4, actualAspect:F
    sub-float v21, v4, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide v23, 0x3e7ad7f29abcaf48L

    cmpl-double v21, v21, v23

    if-lez v21, :cond_3

    .line 739
    const/4 v6, 0x0

    .line 742
    .local v6, done:Z
    if-eqz v17, :cond_2

    .line 743
    sub-int v21, v8, v15

    sub-int v21, v21, v12

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v13

    add-int v11, v21, v14

    .line 745
    .local v11, newWidth:I
    move/from16 v0, v19

    if-gt v11, v0, :cond_2

    .line 746
    move/from16 v19, v11

    .line 747
    const/4 v6, 0x1

    .line 752
    .end local v11           #newWidth:I
    :cond_2
    if-nez v6, :cond_3

    if-eqz v16, :cond_3

    .line 753
    sub-int v21, v19, v13

    sub-int v21, v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v15

    add-int v10, v21, v12

    .line 755
    .local v10, newHeight:I
    if-gt v10, v8, :cond_3

    .line 756
    move v8, v10

    .line 776
    .end local v4           #actualAspect:F
    .end local v6           #done:Z
    .end local v10           #newHeight:I
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    .line 777
    return-void

    .line 697
    .end local v7           #h:I
    .end local v8           #heightSize:I
    .end local v12           #pbottom:I
    .end local v13           #pleft:I
    .end local v14           #pright:I
    .end local v15           #ptop:I
    .end local v18           #w:I
    .end local v19           #widthSize:I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mDrawableWidth:I

    move/from16 v18, v0

    .line 698
    .restart local v18       #w:I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 699
    .restart local v7       #h:I
    if-gtz v18, :cond_5

    const/16 v18, 0x1

    .line 700
    :cond_5
    if-gtz v7, :cond_6

    const/4 v7, 0x1

    .line 704
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 705
    const/high16 v21, 0x4000

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    const/16 v17, 0x1

    .line 706
    :goto_2
    const/high16 v21, 0x4000

    move/from16 v0, v21

    if-eq v9, v0, :cond_8

    const/16 v16, 0x1

    .line 708
    :goto_3
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v7

    move/from16 v22, v0

    div-float v5, v21, v22

    goto/16 :goto_0

    .line 705
    :cond_7
    const/16 v17, 0x0

    goto :goto_2

    .line 706
    :cond_8
    const/16 v16, 0x0

    goto :goto_3

    .line 766
    .restart local v12       #pbottom:I
    .restart local v13       #pleft:I
    .restart local v14       #pright:I
    .restart local v15       #ptop:I
    :cond_9
    add-int v21, v13, v14

    add-int v18, v18, v21

    .line 767
    add-int v21, v15, v12

    add-int v7, v7, v21

    .line 769
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getSuggestedMinimumWidth()I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 770
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getSuggestedMinimumHeight()I

    move-result v21

    move/from16 v0, v21

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 772
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/ImageView;->resolveSizeAndState(III)I

    move-result v19

    .line 773
    .restart local v19       #widthSize:I
    const/16 v21, 0x0

    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v7, v0, v1}, Landroid/widget/ImageView;->resolveSizeAndState(III)I

    move-result v8

    .restart local v8       #heightSize:I
    goto :goto_1
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 248
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 249
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 250
    .local v0, contentDescription:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_0
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 3
    .parameter "alpha"

    .prologue
    const/4 v1, 0x1

    .line 234
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 235
    shr-int/lit8 v2, p1, 0x7

    add-int v0, p1, v2

    .line 236
    .local v0, scale:I
    iget v2, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    if-eq v2, v0, :cond_0

    .line 237
    iput v0, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    .line 238
    iput-boolean v1, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 239
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 243
    .end local v0           #scale:I
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAdjustViewBounds(Z)V
    .locals 1
    .parameter "adjustViewBounds"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 265
    iput-boolean p1, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    .line 266
    if-eqz p1, :cond_0

    .line 267
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 269
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1140
    and-int/lit16 p1, p1, 0xff

    .line 1141
    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    if-eq v0, p1, :cond_0

    .line 1142
    iput p1, p0, Landroid/widget/ImageView;->mAlpha:I

    .line 1143
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 1144
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 1145
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1147
    :cond_0
    return-void
.end method

.method public setBaseline(I)V
    .locals 1
    .parameter "baseline"

    .prologue
    .line 1064
    iget v0, p0, Landroid/widget/ImageView;->mBaseline:I

    if-eq v0, p1, :cond_0

    .line 1065
    iput p1, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 1066
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 1068
    :cond_0
    return-void
.end method

.method public setBaselineAlignBottom(Z)V
    .locals 1
    .parameter "aligned"

    .prologue
    .line 1080
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    if-eq v0, p1, :cond_0

    .line 1081
    iput-boolean p1, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 1082
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 1084
    :cond_0
    return-void
.end method

.method public final setColorFilter(I)V
    .locals 1
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1117
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1118
    return-void
.end method

.method public final setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .parameter "color"
    .parameter "mode"

    .prologue
    .line 1105
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1106
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 1130
    iget-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 1131
    iput-object p1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 1132
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 1133
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 1134
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1136
    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 807
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 808
    .local v0, changed:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 809
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 810
    return v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bm"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 405
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "drawable"

    .prologue
    .line 380
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_2

    .line 381
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/ImageView;->mResource:I

    .line 382
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 384
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 385
    .local v1, oldWidth:I
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 387
    .local v0, oldHeight:I
    invoke-direct {p0, p1}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v0, v2, :cond_1

    .line 390
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 392
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 394
    .end local v0           #oldHeight:I
    .end local v1           #oldWidth:I
    :cond_2
    return-void
.end method

.method public setImageLevel(I)V
    .locals 1
    .parameter "level"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 431
    iput p1, p0, Landroid/widget/ImageView;->mLevel:I

    .line 432
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 434
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    .line 436
    :cond_0
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .parameter "matrix"

    .prologue
    .line 543
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    const/4 p1, 0x0

    .line 548
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 550
    :cond_2
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 551
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 552
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 554
    :cond_3
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .parameter "resId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 339
    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/ImageView;->mResource:I

    if-eq v0, p1, :cond_1

    .line 340
    :cond_0
    invoke-direct {p0, v1}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    iput p1, p0, Landroid/widget/ImageView;->mResource:I

    .line 342
    iput-object v1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 343
    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 344
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 345
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 347
    :cond_1
    return-void
.end method

.method public setImageState([IZ)V
    .locals 1
    .parameter "state"
    .parameter "merge"

    .prologue
    .line 409
    iput-object p1, p0, Landroid/widget/ImageView;->mState:[I

    .line 410
    iput-boolean p2, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 411
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {p0}, Landroid/widget/ImageView;->refreshDrawableState()V

    .line 413
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    .line 415
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 362
    iget v0, p0, Landroid/widget/ImageView;->mResource:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 366
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ImageView;->mResource:I

    .line 367
    iput-object p1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 368
    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 369
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 370
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 372
    :cond_1
    return-void
.end method

.method public setMaskResource(I)V
    .locals 2
    .parameter "resId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1276
    if-nez p1, :cond_0

    .line 1278
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    .line 1291
    :goto_0
    invoke-direct {p0}, Landroid/widget/ImageView;->configureMask()V

    .line 1293
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1294
    return-void

    .line 1282
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    .line 1284
    iget-object v0, p0, Landroid/widget/ImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 1285
    iget-object v0, p0, Landroid/widget/ImageView;->mMaskDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1286
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMaxHeight(I)V
    .locals 0
    .parameter "maxHeight"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 314
    iput p1, p0, Landroid/widget/ImageView;->mMaxHeight:I

    .line 315
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .parameter "maxWidth"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 291
    iput p1, p0, Landroid/widget/ImageView;->mMaxWidth:I

    .line 292
    return-void
.end method

.method public setPhotoMode(I)V
    .locals 1
    .parameter "mode"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1231
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 1232
    :cond_0
    const/4 p1, 0x0

    .line 1235
    :cond_1
    iget v0, p0, Landroid/widget/ImageView;->mPhotoMode:I

    if-eq p1, v0, :cond_2

    .line 1236
    iput p1, p0, Landroid/widget/ImageView;->mPhotoMode:I

    .line 1237
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 1238
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1240
    :cond_2
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2
    .parameter "scaleType"

    .prologue
    .line 506
    if-nez p1, :cond_0

    .line 507
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 510
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    .line 511
    iput-object p1, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 513
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setWillNotCacheDrawing(Z)V

    .line 515
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 516
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 518
    :cond_1
    return-void

    .line 513
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 419
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 420
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    .line 421
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1163
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1164
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1165
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1167
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1165
    goto :goto_0
.end method

.method public startAnimation(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 5
    .parameter "uri"
    .parameter "mimeType"
    .parameter "alternateImage"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1386
    const-string v2, "image/gif"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/ImageView;->currentAnimationThread:Landroid/widget/ImageView$AnimatedGifDecoder;

    if-eqz v2, :cond_1

    .line 1389
    :cond_0
    const-string v2, "ImageView"

    const-string v3, "Suports only gif or Earlier animation not stopped"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :goto_0
    return v1

    .line 1393
    :cond_1
    const-string v2, "ImageView"

    const-string v3, "Start animation"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    iput-boolean v1, p0, Landroid/widget/ImageView;->mStopReceived:Z

    .line 1396
    iget-object v1, p0, Landroid/widget/ImageView;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 1397
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/widget/ImageView;->mHandler:Landroid/os/Handler;

    .line 1400
    :cond_2
    iput-object p3, p0, Landroid/widget/ImageView;->mAlternateImage:Landroid/graphics/Bitmap;

    .line 1401
    const/4 v0, 0x0

    .line 1402
    .local v0, callback:Landroid/widget/ImageView$OnDecoderLoaded;
    new-instance v0, Landroid/widget/ImageView$ImageDecoderReady;

    .end local v0           #callback:Landroid/widget/ImageView$OnDecoderLoaded;
    invoke-direct {v0, p0, v4}, Landroid/widget/ImageView$ImageDecoderReady;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView$1;)V

    .line 1406
    .restart local v0       #callback:Landroid/widget/ImageView$OnDecoderLoaded;
    new-instance v1, Landroid/widget/ImageView$LoadImageDecoder;

    invoke-direct {v1, p0, v4}, Landroid/widget/ImageView$LoadImageDecoder;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView$1;)V

    iput-object v1, p0, Landroid/widget/ImageView;->mLoadDecoder:Landroid/widget/ImageView$LoadImageDecoder;

    .line 1407
    iget-object v1, p0, Landroid/widget/ImageView;->mLoadDecoder:Landroid/widget/ImageView$LoadImageDecoder;

    invoke-virtual {v1, p1, v0}, Landroid/widget/ImageView$LoadImageDecoder;->init(Landroid/net/Uri;Landroid/widget/ImageView$OnDecoderLoaded;)V

    .line 1408
    iget-object v1, p0, Landroid/widget/ImageView;->mLoadDecoder:Landroid/widget/ImageView$LoadImageDecoder;

    invoke-virtual {v1}, Landroid/widget/ImageView$LoadImageDecoder;->start()V

    .line 1410
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 1370
    const-string v0, "ImageView"

    const-string v1, "Stop Animation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mStopReceived:Z

    .line 1373
    iget-object v0, p0, Landroid/widget/ImageView;->currentAnimationThread:Landroid/widget/ImageView$AnimatedGifDecoder;

    if-eqz v0, :cond_0

    .line 1374
    iget-object v0, p0, Landroid/widget/ImageView;->currentAnimationThread:Landroid/widget/ImageView$AnimatedGifDecoder;

    invoke-virtual {v0}, Landroid/widget/ImageView$AnimatedGifDecoder;->cancel()V

    .line 1375
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ImageView;->currentAnimationThread:Landroid/widget/ImageView$AnimatedGifDecoder;

    .line 1377
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 198
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

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
