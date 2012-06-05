.class public Landroid/view/animation/AlphaAnimation;
.super Landroid/view/animation/Animation;
.source "AlphaAnimation.java"


# instance fields
.field private mFromAlpha:F

.field private mToAlpha:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .parameter "fromAlpha"
    .parameter "toAlpha"

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 84
    iput p1, p0, Landroid/view/animation/AlphaAnimation;->mFromAlpha:F

    .line 85
    iput p2, p0, Landroid/view/animation/AlphaAnimation;->mToAlpha:F

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    sget-object v1, Lcom/android/internal/R$styleable;->AlphaAnimation:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/view/animation/AlphaAnimation;->init(Landroid/content/res/TypedArray;)V

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "r"
    .parameter "attrs"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/res/Resources;Landroid/util/AttributeSet;)V

    .line 60
    sget-object v1, Lcom/android/internal/R$styleable;->AlphaAnimation:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/view/animation/AlphaAnimation;->init(Landroid/content/res/TypedArray;)V

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void
.end method

.method private init(Landroid/content/res/TypedArray;)V
    .locals 2
    .parameter "a"

    .prologue
    const/high16 v1, 0x3f80

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/view/animation/AlphaAnimation;->mFromAlpha:F

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/view/animation/AlphaAnimation;->mToAlpha:F

    .line 73
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 93
    iget v0, p0, Landroid/view/animation/AlphaAnimation;->mFromAlpha:F

    .line 94
    .local v0, alpha:F
    iget v1, p0, Landroid/view/animation/AlphaAnimation;->mToAlpha:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 95
    return-void
.end method

.method public hasAlpha()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method
