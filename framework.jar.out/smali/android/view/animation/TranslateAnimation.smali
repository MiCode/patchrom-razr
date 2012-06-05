.class public Landroid/view/animation/TranslateAnimation;
.super Landroid/view/animation/Animation;
.source "TranslateAnimation.java"


# instance fields
.field private mFromXDelta:F

.field private mFromXType:I

.field private mFromXValue:F

.field private mFromYDelta:F

.field private mFromYType:I

.field private mFromYValue:F

.field private mToXDelta:F

.field private mToXType:I

.field private mToXValue:F

.field private mToYDelta:F

.field private mToYType:I

.field private mToYValue:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2
    .parameter "fromXDelta"
    .parameter "toXDelta"
    .parameter "fromYDelta"
    .parameter "toYDelta"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 31
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 32
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 34
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 35
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 37
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 38
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 40
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 41
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 120
    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 121
    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 122
    iput p3, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 123
    iput p4, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 125
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 126
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 127
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 128
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 129
    return-void
.end method

.method public constructor <init>(IFIFIFIF)V
    .locals 2
    .parameter "fromXType"
    .parameter "fromXValue"
    .parameter "toXType"
    .parameter "toXValue"
    .parameter "fromYType"
    .parameter "fromYValue"
    .parameter "toYType"
    .parameter "toYValue"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 31
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 32
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 34
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 35
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 37
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 38
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 40
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 41
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 162
    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 163
    iput p4, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 164
    iput p6, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 165
    iput p8, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 167
    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 168
    iput p3, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 169
    iput p5, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 170
    iput p7, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 32
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 34
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 35
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 37
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 38
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 40
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 41
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 57
    sget-object v1, Lcom/android/internal/R$styleable;->TranslateAnimation:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/view/animation/TranslateAnimation;->init(Landroid/content/res/TypedArray;)V

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "r"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/res/Resources;Landroid/util/AttributeSet;)V

    .line 31
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 32
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 34
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 35
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 37
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 38
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 40
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 41
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 74
    sget-object v1, Lcom/android/internal/R$styleable;->TranslateAnimation:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/view/animation/TranslateAnimation;->init(Landroid/content/res/TypedArray;)V

    .line 77
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    return-void
.end method

.method private init(Landroid/content/res/TypedArray;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 85
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-static {v1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 87
    .local v0, d:Landroid/view/animation/Animation$Description;
    iget v1, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 88
    iget v1, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 90
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-static {v1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 92
    iget v1, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 93
    iget v1, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 95
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-static {v1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 97
    iget v1, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 98
    iget v1, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 100
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-static {v1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 102
    iget v1, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 103
    iget v1, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 104
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 176
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    .line 177
    .local v0, dx:F
    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    .line 178
    .local v1, dy:F
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 179
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    iget v4, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v0, v2, v3

    .line 181
    :cond_0
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 182
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    iget v4, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v1, v2, v3

    .line 184
    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 185
    return-void
.end method

.method public initialize(IIII)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 189
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 190
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    .line 191
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    .line 192
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    .line 193
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    .line 194
    return-void
.end method
