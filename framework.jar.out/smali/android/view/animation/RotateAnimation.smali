.class public Landroid/view/animation/RotateAnimation;
.super Landroid/view/animation/Animation;
.source "RotateAnimation.java"


# instance fields
.field private mFromDegrees:F

.field private mPivotX:F

.field private mPivotXType:I

.field private mPivotXValue:F

.field private mPivotY:F

.field private mPivotYType:I

.field private mPivotYValue:F

.field private mToDegrees:F


# direct methods
.method public constructor <init>(FF)V
    .locals 2
    .parameter "fromDegrees"
    .parameter "toDegrees"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 35
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 36
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 37
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 38
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 105
    iput p1, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    .line 106
    iput p2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    .line 107
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    .line 108
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    .line 109
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2
    .parameter "fromDegrees"
    .parameter "toDegrees"
    .parameter "pivotX"
    .parameter "pivotY"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 35
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 36
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 37
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 38
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 127
    iput p1, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    .line 128
    iput p2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    .line 130
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 131
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 132
    iput p3, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 133
    iput p4, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 134
    return-void
.end method

.method public constructor <init>(FFIFIF)V
    .locals 2
    .parameter "fromDegrees"
    .parameter "toDegrees"
    .parameter "pivotXType"
    .parameter "pivotXValue"
    .parameter "pivotYType"
    .parameter "pivotYValue"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 35
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 36
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 37
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 38
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 163
    iput p1, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    .line 164
    iput p2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    .line 166
    iput p4, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 167
    iput p3, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 168
    iput p6, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 169
    iput p5, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput v2, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 36
    iput v2, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 37
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 38
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 52
    sget-object v1, Lcom/android/internal/R$styleable;->RotateAnimation:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/view/animation/RotateAnimation;->init(Landroid/content/res/TypedArray;)V

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "r"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/res/Resources;Landroid/util/AttributeSet;)V

    .line 35
    iput v2, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 36
    iput v2, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 37
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 38
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 69
    sget-object v1, Lcom/android/internal/R$styleable;->RotateAnimation:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 71
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/view/animation/RotateAnimation;->init(Landroid/content/res/TypedArray;)V

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    return-void
.end method

.method private init(Landroid/content/res/TypedArray;)V
    .locals 3
    .parameter "a"

    .prologue
    const/4 v2, 0x0

    .line 79
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    .line 81
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    .line 83
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-static {v1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 85
    .local v0, d:Landroid/view/animation/Animation$Description;
    iget v1, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 86
    iget v1, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 88
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-static {v1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 90
    iget v1, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 91
    iget v1, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 92
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v5, 0x0

    .line 174
    iget v2, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    iget v3, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    iget v4, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v0, v2, v3

    .line 175
    .local v0, degrees:F
    invoke-virtual {p0}, Landroid/view/animation/RotateAnimation;->getScaleFactor()F

    move-result v1

    .line 177
    .local v1, scale:F
    iget v2, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    iget v2, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    .line 178
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    mul-float/2addr v3, v1

    iget v4, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    mul-float/2addr v4, v1

    invoke-virtual {v2, v0, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 187
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    iget v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/RotateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    .line 188
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    iget v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/RotateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    .line 189
    return-void
.end method
