.class public Landroid/graphics/drawable/LiveDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LiveDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/LiveDrawable$LiveState;
    }
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field public final TYPE_ALPHA:I

.field public final TYPE_BOTH:I

.field public final TYPE_IDENTITY:I

.field public final TYPE_MATRIX:I

.field private mAnimation:Landroid/view/animation/Animation;

.field private mBlendEnabled:Z

.field private mCodes:I

.field private mLiveState:Landroid/graphics/drawable/LiveDrawable$LiveState;

.field private mMaskingBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mSrcDrawable:Landroid/graphics/drawable/Drawable;

.field private outTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 41
    const-string v0, "LiveDrawable"

    iput-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->outTransformation:Landroid/view/animation/Transformation;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mPaint:Landroid/graphics/Paint;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/LiveDrawable;->TYPE_IDENTITY:I

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Landroid/graphics/drawable/LiveDrawable;->TYPE_ALPHA:I

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/LiveDrawable;->TYPE_MATRIX:I

    .line 64
    const/4 v0, 0x3

    iput v0, p0, Landroid/graphics/drawable/LiveDrawable;->TYPE_BOTH:I

    .line 70
    new-instance v0, Landroid/graphics/drawable/LiveDrawable$LiveState;

    invoke-direct {v0}, Landroid/graphics/drawable/LiveDrawable$LiveState;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mLiveState:Landroid/graphics/drawable/LiveDrawable$LiveState;

    .line 71
    return-void
.end method

.method private getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 3
    .parameter "codes"

    .prologue
    .line 217
    const/16 v1, 0x10

    new-array v0, v1, [Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    aput-object v2, v0, v1

    .line 235
    .local v0, mode:[Landroid/graphics/PorterDuff$Mode;
    aget-object v1, v0, p1

    return-object v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    const/high16 v13, 0x437f

    const/4 v12, 0x0

    .line 156
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroid/graphics/drawable/LiveDrawable;->outTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 160
    invoke-virtual {p0}, Landroid/graphics/drawable/LiveDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 161
    .local v7, bounds:Landroid/graphics/Rect;
    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v9

    .line 170
    .local v9, sc:I
    iget-boolean v0, p0, Landroid/graphics/drawable/LiveDrawable;->mBlendEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mMaskingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 172
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mSrcDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 173
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mSrcDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 177
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->outTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 191
    :goto_0
    iget-boolean v0, p0, Landroid/graphics/drawable/LiveDrawable;->mBlendEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mMaskingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    iget v2, p0, Landroid/graphics/drawable/LiveDrawable;->mCodes:I

    invoke-direct {p0, v2}, Landroid/graphics/drawable/LiveDrawable;->getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 193
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mMaskingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 194
    .local v11, w:I
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mMaskingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 195
    .local v8, h:I
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v12, v12, v11, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 196
    .local v10, src:Landroid/graphics/Rect;
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mMaskingBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/graphics/drawable/LiveDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 197
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 201
    .end local v8           #h:I
    .end local v10           #src:Landroid/graphics/Rect;
    .end local v11           #w:I
    :goto_1
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 204
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    invoke-virtual {p0}, Landroid/graphics/drawable/LiveDrawable;->invalidateSelf()V

    .line 211
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v9           #sc:I
    :cond_1
    :goto_2
    return-void

    .line 179
    .restart local v7       #bounds:Landroid/graphics/Rect;
    .restart local v9       #sc:I
    :pswitch_0
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mLiveState:Landroid/graphics/drawable/LiveDrawable$LiveState;

    iget-object v0, v0, Landroid/graphics/drawable/LiveDrawable$LiveState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/graphics/drawable/LiveDrawable;->outTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    mul-float/2addr v1, v13

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->outTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 185
    :pswitch_2
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mLiveState:Landroid/graphics/drawable/LiveDrawable$LiveState;

    iget-object v0, v0, Landroid/graphics/drawable/LiveDrawable$LiveState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/graphics/drawable/LiveDrawable;->outTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    mul-float/2addr v1, v13

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 186
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->outTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mLiveState:Landroid/graphics/drawable/LiveDrawable$LiveState;

    iget-object v0, v0, Landroid/graphics/drawable/LiveDrawable$LiveState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 209
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v9           #sc:I
    :cond_3
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mLiveState:Landroid/graphics/drawable/LiveDrawable$LiveState;

    iget-object v0, v0, Landroid/graphics/drawable/LiveDrawable$LiveState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mLiveState:Landroid/graphics/drawable/LiveDrawable$LiveState;

    iget-object v0, v0, Landroid/graphics/drawable/LiveDrawable$LiveState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mLiveState:Landroid/graphics/drawable/LiveDrawable$LiveState;

    iget-object v0, v0, Landroid/graphics/drawable/LiveDrawable$LiveState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mLiveState:Landroid/graphics/drawable/LiveDrawable$LiveState;

    iget-object v0, v0, Landroid/graphics/drawable/LiveDrawable$LiveState;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mLiveState:Landroid/graphics/drawable/LiveDrawable$LiveState;

    iget-object v0, v0, Landroid/graphics/drawable/LiveDrawable$LiveState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "padding"

    .prologue
    .line 118
    iget-boolean v0, p0, Landroid/graphics/drawable/LiveDrawable;->mBlendEnabled:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mSrcDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    .line 120
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mLiveState:Landroid/graphics/drawable/LiveDrawable$LiveState;

    iget-object v0, v0, Landroid/graphics/drawable/LiveDrawable$LiveState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 12
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 361
    invoke-interface {p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v8

    .line 362
    .local v8, numAttrs:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v8, :cond_0

    .line 363
    invoke-interface {p3, v5}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v0

    .line 364
    .local v0, ResId:I
    invoke-interface {p3, v5}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    .line 365
    .local v7, name:Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 362
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 367
    :pswitch_0
    const/4 v10, 0x0

    invoke-interface {p3, v5, v10}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v10

    iput v10, p0, Landroid/graphics/drawable/LiveDrawable;->mCodes:I

    goto :goto_1

    .line 372
    .end local v0           #ResId:I
    .end local v7           #name:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 374
    .local v1, a:Landroid/content/res/TypedArray;
    sget-object v10, Lcom/android/internal/R$styleable;->AnimationDrawableItem:[I

    invoke-virtual {p1, p3, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 375
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 377
    .local v3, drawableRes:I
    if-eqz v3, :cond_1

    .line 378
    iget-object v10, p0, Landroid/graphics/drawable/LiveDrawable;->mLiveState:Landroid/graphics/drawable/LiveDrawable$LiveState;

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v10, Landroid/graphics/drawable/LiveDrawable$LiveState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 380
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 384
    sget-object v10, Lcom/android/internal/R$styleable;->ImageView:[I

    invoke-virtual {p1, p3, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 385
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Landroid/graphics/drawable/LiveDrawable;->mSrcDrawable:Landroid/graphics/drawable/Drawable;

    .line 386
    iget-object v10, p0, Landroid/graphics/drawable/LiveDrawable;->mSrcDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_2

    .line 387
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/graphics/drawable/LiveDrawable;->mBlendEnabled:Z

    .line 389
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 393
    sget-object v10, Lcom/android/internal/R$styleable;->LayoutAnimation:[I

    invoke-virtual {p1, p3, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 394
    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 396
    .local v6, id:I
    if-lez v6, :cond_3

    .line 397
    const/4 v2, 0x0

    .line 399
    .local v2, animation_parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 400
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->createAnimationFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Animation;

    move-result-object v10

    iput-object v10, p0, Landroid/graphics/drawable/LiveDrawable;->mAnimation:Landroid/view/animation/Animation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 415
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 418
    .end local v2           #animation_parser:Landroid/content/res/XmlResourceParser;
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 420
    const/4 v1, 0x0

    .line 421
    return-void

    .line 402
    .restart local v2       #animation_parser:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v4

    .line 403
    .local v4, ex:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t load animation resource ID #0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 406
    .local v9, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v9, v4}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 407
    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    .end local v4           #ex:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v9           #rnf:Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v10

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_4
    throw v10

    .line 408
    :catch_1
    move-exception v4

    .line 409
    .local v4, ex:Ljava/io/IOException;
    :try_start_2
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t load animation resource ID #0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 412
    .restart local v9       #rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v9, v4}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 413
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x1010242
        :pswitch_0
    .end packed-switch
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "who"

    .prologue
    .line 278
    invoke-virtual {p0}, Landroid/graphics/drawable/LiveDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Landroid/graphics/drawable/LiveDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    :cond_0
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 7
    .parameter "bounds"

    .prologue
    const/4 v6, 0x0

    .line 334
    iget-object v1, p0, Landroid/graphics/drawable/LiveDrawable;->mLiveState:Landroid/graphics/drawable/LiveDrawable$LiveState;

    iget-object v1, v1, Landroid/graphics/drawable/LiveDrawable$LiveState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 336
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_1

    .line 337
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/LiveDrawable;->mMaskingBitmap:Landroid/graphics/Bitmap;

    .line 339
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/graphics/drawable/LiveDrawable;->mMaskingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 340
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 341
    iget-object v1, p0, Landroid/graphics/drawable/LiveDrawable;->mLiveState:Landroid/graphics/drawable/LiveDrawable$LiveState;

    iget-object v1, v1, Landroid/graphics/drawable/LiveDrawable$LiveState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 343
    iget-object v1, p0, Landroid/graphics/drawable/LiveDrawable;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Landroid/graphics/drawable/LiveDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 347
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/LiveDrawable;->start()V

    .line 349
    .end local v0           #c:Landroid/graphics/Canvas;
    :cond_1
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 6
    .parameter "state"

    .prologue
    .line 307
    const/4 v1, 0x0

    .line 308
    .local v1, containStateWindowFocused:Z
    move-object v0, p1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v4, v0, v2

    .line 309
    .local v4, s:I
    packed-switch v4, :pswitch_data_0

    .line 308
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    :pswitch_0
    const/4 v1, 0x1

    .line 312
    goto :goto_1

    .line 320
    .end local v4           #s:I
    :cond_0
    if-eqz v1, :cond_1

    .line 321
    invoke-virtual {p0}, Landroid/graphics/drawable/LiveDrawable;->start()V

    .line 325
    :goto_2
    const/4 v5, 0x1

    return v5

    .line 323
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/LiveDrawable;->stop()V

    goto :goto_2

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x101009d
        :pswitch_0
    .end packed-switch
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 287
    invoke-virtual {p0}, Landroid/graphics/drawable/LiveDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Landroid/graphics/drawable/LiveDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 290
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mLiveState:Landroid/graphics/drawable/LiveDrawable$LiveState;

    iget-object v0, v0, Landroid/graphics/drawable/LiveDrawable$LiveState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 80
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mLiveState:Landroid/graphics/drawable/LiveDrawable$LiveState;

    iget-object v0, v0, Landroid/graphics/drawable/LiveDrawable$LiveState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 99
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .parameter "visible"
    .parameter "restart"

    .prologue
    .line 87
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/LiveDrawable;->start()V

    .line 89
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 253
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/LiveDrawable;->invalidateSelf()V

    .line 254
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Landroid/graphics/drawable/LiveDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 264
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "who"
    .parameter "what"

    .prologue
    .line 296
    invoke-virtual {p0}, Landroid/graphics/drawable/LiveDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Landroid/graphics/drawable/LiveDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 299
    :cond_0
    return-void
.end method
