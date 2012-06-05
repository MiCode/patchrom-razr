.class public Lcom/motorola/android/graphics/drawable/VectorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/graphics/drawable/VectorDrawable$VectorConstantState;
    }
.end annotation


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mBoundsOnSurface:Landroid/graphics/RectF;

.field private mCache:Landroid/graphics/Bitmap;

.field private final mConsState:Lcom/motorola/android/graphics/drawable/VectorDrawable$VectorConstantState;

.field private final mDpiScale:F

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/motorola/android/graphics/VectorAsset;I)V
    .locals 2
    .parameter "v"
    .parameter "dpi"

    .prologue
    .line 120
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mCache:Landroid/graphics/Bitmap;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mPaint:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mBoundsOnSurface:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mBounds:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 121
    new-instance v0, Lcom/motorola/android/graphics/drawable/VectorDrawable$VectorConstantState;

    invoke-direct {v0, p0, p1}, Lcom/motorola/android/graphics/drawable/VectorDrawable$VectorConstantState;-><init>(Lcom/motorola/android/graphics/drawable/VectorDrawable;Lcom/motorola/android/graphics/VectorAsset;)V

    iput-object v0, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mConsState:Lcom/motorola/android/graphics/drawable/VectorDrawable$VectorConstantState;

    .line 122
    int-to-float v0, p2

    const/high16 v1, 0x4320

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mDpiScale:F

    .line 123
    return-void
.end method

.method public static createFromResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "res"
    .parameter "resID"

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/motorola/android/graphics/drawable/VectorDrawable;->createFromStream(Ljava/io/InputStream;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static createFromStream(Ljava/io/InputStream;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "in"
    .parameter "res"

    .prologue
    const/4 v5, 0x0

    .line 73
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v7, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 76
    .local v7, dpi:I
    invoke-static {p0}, Lcom/motorola/android/graphics/VectorAsset;->createFromStream(Ljava/io/InputStream;)Lcom/motorola/android/graphics/VectorAsset;

    move-result-object v6

    .line 77
    .local v6, asset:Lcom/motorola/android/graphics/VectorAsset;
    if-eqz v6, :cond_1

    .line 79
    invoke-virtual {v6}, Lcom/motorola/android/graphics/VectorAsset;->getNinePatchData()Lcom/motorola/android/graphics/VectorAsset$NinePatchData;

    move-result-object v8

    .line 80
    .local v8, ninePatchData:Lcom/motorola/android/graphics/VectorAsset$NinePatchData;
    if-eqz v8, :cond_0

    .line 82
    invoke-virtual {v6, v7}, Lcom/motorola/android/graphics/VectorAsset;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 84
    .local v2, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v8, v7}, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->getNPTCChunk(I)[B

    move-result-object v3

    .line 86
    .local v3, ninePatchChunk:[B
    invoke-virtual {v8, v7}, Lcom/motorola/android/graphics/VectorAsset$NinePatchData;->getPadding(I)Landroid/graphics/Rect;

    move-result-object v4

    .line 89
    .local v4, padding:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 95
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #ninePatchChunk:[B
    .end local v4           #padding:Landroid/graphics/Rect;
    .end local v8           #ninePatchData:Lcom/motorola/android/graphics/VectorAsset$NinePatchData;
    :goto_0
    return-object v0

    .line 92
    .restart local v8       #ninePatchData:Lcom/motorola/android/graphics/VectorAsset$NinePatchData;
    :cond_0
    new-instance v0, Lcom/motorola/android/graphics/drawable/VectorDrawable;

    invoke-direct {v0, v6, v7}, Lcom/motorola/android/graphics/drawable/VectorDrawable;-><init>(Lcom/motorola/android/graphics/VectorAsset;I)V

    goto :goto_0

    .end local v8           #ninePatchData:Lcom/motorola/android/graphics/VectorAsset$NinePatchData;
    :cond_1
    move-object v0, v5

    .line 95
    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 162
    iget-object v2, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/motorola/android/graphics/drawable/VectorDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 167
    iget-object v2, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 171
    iget-object v2, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 177
    iget-object v2, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mBoundsOnSurface:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 178
    iget-object v2, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mBoundsOnSurface:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 179
    iget-object v2, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mBoundsOnSurface:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v1, v2

    .line 180
    .local v1, physWidth:I
    iget-object v2, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mBoundsOnSurface:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v0, v2

    .line 185
    .local v0, physHeight:I
    iget-object v2, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 188
    iget-object v2, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mCache:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 190
    iget-object v2, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mConsState:Lcom/motorola/android/graphics/drawable/VectorDrawable$VectorConstantState;

    iget-object v2, v2, Lcom/motorola/android/graphics/drawable/VectorDrawable$VectorConstantState;->mAsset:Lcom/motorola/android/graphics/VectorAsset;

    invoke-virtual {v2, v1, v0}, Lcom/motorola/android/graphics/VectorAsset;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mCache:Landroid/graphics/Bitmap;

    .line 199
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mCache:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 201
    iget-object v2, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mCache:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 205
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 206
    return-void

    .line 191
    :cond_2
    iget-object v2, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 194
    :cond_3
    iget-object v2, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 195
    iget-object v2, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mConsState:Lcom/motorola/android/graphics/drawable/VectorDrawable$VectorConstantState;

    iget-object v2, v2, Lcom/motorola/android/graphics/drawable/VectorDrawable$VectorConstantState;->mAsset:Lcom/motorola/android/graphics/VectorAsset;

    invoke-virtual {v2, v1, v0}, Lcom/motorola/android/graphics/VectorAsset;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mCache:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mConsState:Lcom/motorola/android/graphics/drawable/VectorDrawable$VectorConstantState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mConsState:Lcom/motorola/android/graphics/drawable/VectorDrawable$VectorConstantState;

    iget-object v0, v0, Lcom/motorola/android/graphics/drawable/VectorDrawable$VectorConstantState;->mAsset:Lcom/motorola/android/graphics/VectorAsset;

    invoke-virtual {v0}, Lcom/motorola/android/graphics/VectorAsset;->getPicture()Landroid/graphics/Picture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mDpiScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mConsState:Lcom/motorola/android/graphics/drawable/VectorDrawable$VectorConstantState;

    iget-object v0, v0, Lcom/motorola/android/graphics/drawable/VectorDrawable$VectorConstantState;->mAsset:Lcom/motorola/android/graphics/VectorAsset;

    invoke-virtual {v0}, Lcom/motorola/android/graphics/VectorAsset;->getPicture()Landroid/graphics/Picture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mDpiScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getVectorAsset()Lcom/motorola/android/graphics/VectorAsset;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mConsState:Lcom/motorola/android/graphics/drawable/VectorDrawable$VectorConstantState;

    iget-object v0, v0, Lcom/motorola/android/graphics/drawable/VectorDrawable$VectorConstantState;->mAsset:Lcom/motorola/android/graphics/VectorAsset;

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 222
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/motorola/android/graphics/drawable/VectorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 227
    return-void
.end method
