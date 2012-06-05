.class public Landroid/view/animation/AccelerateInterpolator;
.super Ljava/lang/Object;
.source "AccelerateInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mDoubleFactor:D

.field private final mFactor:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    .line 35
    const-wide/high16 v0, 0x4000

    iput-wide v0, p0, Landroid/view/animation/AccelerateInterpolator;->mDoubleFactor:D

    .line 36
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .parameter "factor"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    .line 48
    const/high16 v0, 0x4000

    iget v1, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Landroid/view/animation/AccelerateInterpolator;->mDoubleFactor:D

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v1, Lcom/android/internal/R$styleable;->AccelerateInterpolator:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    .line 56
    const/high16 v1, 0x4000

    iget v2, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    iput-wide v1, p0, Landroid/view/animation/AccelerateInterpolator;->mDoubleFactor:D

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "r"
    .parameter "attrs"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v1, Lcom/android/internal/R$styleable;->AccelerateInterpolator:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    .line 70
    const/high16 v1, 0x4000

    iget v2, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    iput-wide v1, p0, Landroid/view/animation/AccelerateInterpolator;->mDoubleFactor:D

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .parameter "input"

    .prologue
    .line 77
    iget v0, p0, Landroid/view/animation/AccelerateInterpolator;->mFactor:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 78
    mul-float v0, p1, p1

    .line 80
    :goto_0
    return v0

    :cond_0
    float-to-double v0, p1

    iget-wide v2, p0, Landroid/view/animation/AccelerateInterpolator;->mDoubleFactor:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method
