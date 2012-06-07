.class public Lcom/motorola/Camera/View/FocusView;
.super Landroid/view/View;
.source "FocusView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FocusView"


# instance fields
.field protected campabilityChecked:Z

.field private mContext:Landroid/content/Context;

.field protected mFocusArea:Landroid/graphics/RectF;

.field protected mFocusFail:Z

.field protected mFocusFailImage:Landroid/graphics/Bitmap;

.field protected mFocusRegion:Landroid/graphics/RectF;

.field protected mFocused:Z

.field protected mFocusedImage:Landroid/graphics/Bitmap;

.field protected mInitialized:Z

.field protected mIntrinsicHeight:I

.field protected mIntrinsicWeight:I

.field protected mLastLeft:F

.field protected mLastTop:F

.field protected mNonFocusedImage:Landroid/graphics/Bitmap;

.field protected mPaint:Landroid/graphics/Paint;

.field mSelected:Z

.field protected mSelectedFocusImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    iput-boolean v3, p0, Lcom/motorola/Camera/View/FocusView;->mFocused:Z

    .line 44
    iput-boolean v3, p0, Lcom/motorola/Camera/View/FocusView;->mSelected:Z

    .line 45
    iput-boolean v3, p0, Lcom/motorola/Camera/View/FocusView;->mFocusFail:Z

    .line 47
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    .line 48
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/motorola/Camera/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    .line 49
    iput v2, p0, Lcom/motorola/Camera/View/FocusView;->mLastLeft:F

    .line 50
    iput v2, p0, Lcom/motorola/Camera/View/FocusView;->mLastTop:F

    .line 51
    iput-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    .line 52
    iput-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mFocusFailImage:Landroid/graphics/Bitmap;

    .line 53
    iput-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    .line 54
    iput-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    .line 55
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/motorola/Camera/View/FocusView;->mPaint:Landroid/graphics/Paint;

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/Camera/View/FocusView;->campabilityChecked:Z

    .line 60
    iput-boolean v3, p0, Lcom/motorola/Camera/View/FocusView;->mInitialized:Z

    .line 64
    iput-object p1, p0, Lcom/motorola/Camera/View/FocusView;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p0}, Lcom/motorola/Camera/View/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 66
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/View/FocusView;->mIntrinsicHeight:I

    .line 67
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/View/FocusView;->mIntrinsicWeight:I

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-boolean v3, p0, Lcom/motorola/Camera/View/FocusView;->mFocused:Z

    .line 44
    iput-boolean v3, p0, Lcom/motorola/Camera/View/FocusView;->mSelected:Z

    .line 45
    iput-boolean v3, p0, Lcom/motorola/Camera/View/FocusView;->mFocusFail:Z

    .line 47
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    .line 48
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/motorola/Camera/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    .line 49
    iput v2, p0, Lcom/motorola/Camera/View/FocusView;->mLastLeft:F

    .line 50
    iput v2, p0, Lcom/motorola/Camera/View/FocusView;->mLastTop:F

    .line 51
    iput-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    .line 52
    iput-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mFocusFailImage:Landroid/graphics/Bitmap;

    .line 53
    iput-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    .line 54
    iput-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    .line 55
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/motorola/Camera/View/FocusView;->mPaint:Landroid/graphics/Paint;

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/Camera/View/FocusView;->campabilityChecked:Z

    .line 60
    iput-boolean v3, p0, Lcom/motorola/Camera/View/FocusView;->mInitialized:Z

    .line 72
    iput-object p1, p0, Lcom/motorola/Camera/View/FocusView;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p0}, Lcom/motorola/Camera/View/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 74
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/View/FocusView;->mIntrinsicHeight:I

    .line 75
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/View/FocusView;->mIntrinsicWeight:I

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-boolean v3, p0, Lcom/motorola/Camera/View/FocusView;->mFocused:Z

    .line 44
    iput-boolean v3, p0, Lcom/motorola/Camera/View/FocusView;->mSelected:Z

    .line 45
    iput-boolean v3, p0, Lcom/motorola/Camera/View/FocusView;->mFocusFail:Z

    .line 47
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    .line 48
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/motorola/Camera/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    .line 49
    iput v2, p0, Lcom/motorola/Camera/View/FocusView;->mLastLeft:F

    .line 50
    iput v2, p0, Lcom/motorola/Camera/View/FocusView;->mLastTop:F

    .line 51
    iput-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    .line 52
    iput-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mFocusFailImage:Landroid/graphics/Bitmap;

    .line 53
    iput-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    .line 54
    iput-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    .line 55
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/motorola/Camera/View/FocusView;->mPaint:Landroid/graphics/Paint;

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/Camera/View/FocusView;->campabilityChecked:Z

    .line 60
    iput-boolean v3, p0, Lcom/motorola/Camera/View/FocusView;->mInitialized:Z

    .line 80
    iput-object p1, p0, Lcom/motorola/Camera/View/FocusView;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {p0}, Lcom/motorola/Camera/View/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 82
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/View/FocusView;->mIntrinsicHeight:I

    .line 83
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/View/FocusView;->mIntrinsicWeight:I

    .line 84
    return-void
.end method


# virtual methods
.method public getFocusArea()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getFocusRegion()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/Camera/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public initFocusView()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 193
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 195
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 196
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 198
    iget-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 201
    iget-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 202
    iget-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/motorola/Camera/View/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02004d

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    .line 210
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mFocusFailImage:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 213
    invoke-virtual {p0}, Lcom/motorola/Camera/View/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020052

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mFocusFailImage:Landroid/graphics/Bitmap;

    .line 216
    :cond_2
    iget-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 219
    invoke-virtual {p0}, Lcom/motorola/Camera/View/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020050

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    .line 221
    :cond_3
    iget-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    .line 224
    invoke-virtual {p0}, Lcom/motorola/Camera/View/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020051

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    .line 227
    :cond_4
    iput-boolean v1, p0, Lcom/motorola/Camera/View/FocusView;->mInitialized:Z

    .line 229
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_5

    .line 230
    const-string v2, "FocusView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in initFocusView, mFocusedImage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v2, "FocusView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in initFocusView, mFocusFailImage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mFocusFailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v2, "FocusView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in initFocusView, mNonFocusedImage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v2, "FocusView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in initFocusView, mFocusedImage.width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mFocusedImage.height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "hasAlpha = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getConfig = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v2, "FocusView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in initFocusView, mNonFocusedImage.width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mNonFocusedImage.height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "hasAlpha = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getConfig = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v2, "FocusView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in initFocusView, mSelectedFocusImage.width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mSelectedFocusImage.height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "hasAlpha = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getConfig = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_5
    iget-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mFocusFailImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    if-nez v2, :cond_7

    .line 241
    :cond_6
    const/4 v1, 0x0

    .line 243
    :cond_7
    return v1
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/motorola/Camera/View/FocusView;->mInitialized:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v1, 0x1

    .line 250
    iget-object v0, p0, Lcom/motorola/Camera/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/View/FocusView;->mFocusFailImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 252
    iget-boolean v0, p0, Lcom/motorola/Camera/View/FocusView;->mFocused:Z

    if-ne v0, v1, :cond_1

    .line 254
    iget-object v0, p0, Lcom/motorola/Camera/View/FocusView;->mFocusedImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/motorola/Camera/View/FocusView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 269
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 270
    return-void

    .line 256
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/Camera/View/FocusView;->mSelected:Z

    if-ne v0, v1, :cond_2

    .line 258
    iget-object v0, p0, Lcom/motorola/Camera/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/motorola/Camera/View/FocusView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 260
    :cond_2
    iget-boolean v0, p0, Lcom/motorola/Camera/View/FocusView;->mFocusFail:Z

    if-ne v0, v1, :cond_3

    .line 262
    iget-object v0, p0, Lcom/motorola/Camera/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/motorola/Camera/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/motorola/Camera/View/FocusView;->mSelectedFocusImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/motorola/Camera/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/motorola/Camera/View/FocusView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 266
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/View/FocusView;->mNonFocusedImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/motorola/Camera/View/FocusView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 162
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 163
    .local v1, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 165
    .local v0, heightSize:I
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 166
    const-string v2, "FocusView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMeasure width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 172
    return-void
.end method

.method public resetFocusArea()V
    .locals 5

    .prologue
    const/high16 v4, 0x4000

    .line 177
    iget-object v1, p0, Lcom/motorola/Camera/View/FocusView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    .line 179
    .local v0, camSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/motorola/Camera/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFocusViewWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 181
    iget-object v1, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/motorola/Camera/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFocusViewHeight()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 182
    iget-object v1, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFocusViewWidth()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 183
    iget-object v1, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFocusViewHeight()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 184
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 187
    const-string v1, "FocusView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetFocusArea: left = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " top = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " right = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bottom = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    return-void

    .line 184
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setFocusArea(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "focusRect"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/motorola/Camera/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iput-object p1, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    .line 125
    :cond_0
    return-void
.end method

.method public setFocusRegion(Landroid/graphics/RectF;)V
    .locals 5
    .parameter "focusRect"

    .prologue
    const/high16 v4, 0x40a0

    .line 89
    iput-object p1, p0, Lcom/motorola/Camera/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    .line 91
    iget-object v1, p0, Lcom/motorola/Camera/View/FocusView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    .line 93
    .local v0, camSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 94
    const-string v1, "FocusView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFocusRegion FocusView width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/FocusView;->mIntrinsicWeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/FocusView;->mIntrinsicHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    monitor-enter v0

    .line 98
    :try_start_0
    iget v1, p0, Lcom/motorola/Camera/View/FocusView;->mIntrinsicWeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setFocusViewWidth(F)V

    .line 99
    iget v1, p0, Lcom/motorola/Camera/View/FocusView;->mIntrinsicHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setFocusViewHeight(F)V

    .line 100
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object v1, p0, Lcom/motorola/Camera/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    const/high16 v2, 0x43f0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    .line 103
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/Camera/View/FocusView;->campabilityChecked:Z

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 100
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/View/FocusView;->mFocusRegion:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    const/high16 v2, 0x43a0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 108
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/Camera/View/FocusView;->campabilityChecked:Z

    goto :goto_0
.end method

.method public updateFocusArea(ZZZ)Z
    .locals 4
    .parameter "focused"
    .parameter "selected"
    .parameter "focusfail"

    .prologue
    const/high16 v3, 0x4040

    .line 134
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "FocusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFocusArea mLastLeft: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/View/FocusView;->mLastLeft:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLastTop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/View/FocusView;->mLastTop:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFocusArea.left: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFocusArea.top: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFocused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/View/FocusView;->mFocused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " focused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/View/FocusView;->mSelected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFocusFail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/View/FocusView;->mFocusFail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " focusfail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/View/FocusView;->mLastLeft:F

    iget-object v1, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/motorola/Camera/View/FocusView;->mLastTop:F

    iget-object v1, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/Camera/View/FocusView;->mFocused:Z

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/motorola/Camera/View/FocusView;->mSelected:Z

    if-ne v0, p2, :cond_1

    iget-boolean v0, p0, Lcom/motorola/Camera/View/FocusView;->mFocusFail:Z

    if-eq v0, p3, :cond_2

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/motorola/Camera/View/FocusView;->mLastLeft:F

    .line 149
    iget-object v0, p0, Lcom/motorola/Camera/View/FocusView;->mFocusArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/motorola/Camera/View/FocusView;->mLastTop:F

    .line 150
    iput-boolean p1, p0, Lcom/motorola/Camera/View/FocusView;->mFocused:Z

    .line 151
    iput-boolean p2, p0, Lcom/motorola/Camera/View/FocusView;->mSelected:Z

    .line 152
    iput-boolean p3, p0, Lcom/motorola/Camera/View/FocusView;->mFocusFail:Z

    .line 153
    invoke-virtual {p0}, Lcom/motorola/Camera/View/FocusView;->invalidate()V

    .line 154
    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
