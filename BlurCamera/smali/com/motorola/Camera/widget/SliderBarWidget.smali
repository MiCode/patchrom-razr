.class public Lcom/motorola/Camera/widget/SliderBarWidget;
.super Landroid/widget/RelativeLayout;
.source "SliderBarWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SliderBar"


# instance fields
.field private final THRESHOLD_FIRST_MOVE:I

.field private mBar:Landroid/view/View;

.field private mHeight:I

.field private mInitialScale:I

.field private mInitialized:Z

.field private mLastPositionedScale:I

.field private mProgressListener:Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;

.field protected mSlider:Landroid/widget/ImageView;

.field private mSliderLength:I

.field private mSliderMax:I

.field private mSliderPosition:I

.field private mStartChanging:Z

.field private sPixelDensity:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/16 v2, 0x64

    iput v2, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderMax:I

    .line 35
    iput v4, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderLength:I

    .line 36
    iput v4, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mHeight:I

    .line 38
    iput-boolean v4, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mInitialized:Z

    .line 40
    iput v4, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderPosition:I

    .line 41
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->sPixelDensity:F

    .line 42
    const/4 v2, -0x1

    iput v2, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mLastPositionedScale:I

    .line 47
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mBar:Landroid/view/View;

    .line 48
    iget-object v2, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mBar:Landroid/view/View;

    const v3, 0x7f0200fa

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 49
    iget-object v2, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 50
    iget-object v2, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mBar:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/widget/SliderBarWidget;->addView(Landroid/view/View;)V

    .line 51
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSlider:Landroid/widget/ImageView;

    .line 52
    iget-object v2, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSlider:Landroid/widget/ImageView;

    const v3, 0x7f0200d1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    iget-object v2, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSlider:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/widget/SliderBarWidget;->addView(Landroid/view/View;)V

    .line 54
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 55
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/motorola/Camera/widget/SliderBarWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 56
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 57
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->sPixelDensity:F

    .line 58
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/motorola/Camera/widget/SliderBarWidget;->dpToPixel(I)I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->THRESHOLD_FIRST_MOVE:I

    .line 59
    return-void
.end method

.method private doMathematicalAdjustment(II)I
    .locals 2
    .parameter "scale"
    .parameter "sliderPosition"

    .prologue
    .line 225
    iget v0, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mLastPositionedScale:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 226
    iget v0, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderMax:I

    iget v1, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderPosition:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderLength:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mLastPositionedScale:I

    .line 228
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mLastPositionedScale:I

    if-ge v0, p1, :cond_1

    .line 229
    add-int/lit8 p2, p2, -0x1

    .line 234
    :goto_0
    return p2

    .line 232
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method private dpToPixel(I)I
    .locals 2
    .parameter "dp"

    .prologue
    .line 78
    iget v0, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->sPixelDensity:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getSliderPosition(I)I
    .locals 3
    .parameter "y"

    .prologue
    .line 168
    iget v1, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mHeight:I

    iget-object v2, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSlider:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int v0, v1, p1

    .line 169
    .local v0, pos:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 170
    :cond_0
    iget v1, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderLength:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderLength:I

    .line 171
    :cond_1
    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/motorola/Camera/widget/SliderBarWidget;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mHeight:I

    if-nez v5, :cond_1

    :cond_0
    move v3, v4

    .line 209
    :goto_0
    return v3

    .line 177
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 179
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 188
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/motorola/Camera/widget/SliderBarWidget;->setActivated(Z)V

    .line 189
    iput-boolean v4, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mStartChanging:Z

    .line 191
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v4}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderPosition(I)I

    move-result v2

    .line 192
    .local v2, pos:I
    iget-boolean v4, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mStartChanging:Z

    if-nez v4, :cond_3

    .line 195
    iget v4, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderPosition:I

    sub-int v1, v4, v2

    .line 196
    .local v1, delta:I
    iget v4, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->THRESHOLD_FIRST_MOVE:I

    if-gt v1, v4, :cond_2

    iget v4, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->THRESHOLD_FIRST_MOVE:I

    neg-int v4, v4

    if-ge v1, v4, :cond_3

    .line 198
    :cond_2
    iput-boolean v3, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mStartChanging:Z

    .line 201
    .end local v1           #delta:I
    :cond_3
    iget-boolean v4, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mStartChanging:Z

    if-eqz v4, :cond_5

    .line 202
    iget-object v4, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mProgressListener:Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;

    if-eqz v4, :cond_4

    .line 203
    iget-object v4, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mProgressListener:Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;

    iget v5, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderMax:I

    mul-int/2addr v5, v2

    iget v6, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderLength:I

    div-int/2addr v5, v6

    invoke-interface {v4, p0, v5}, Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;->onSliderProgressChanged(Lcom/motorola/Camera/widget/SliderBarWidget;I)V

    .line 204
    :cond_4
    iput v2, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderPosition:I

    .line 205
    iget v4, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderMax:I

    iget v5, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderPosition:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderLength:I

    div-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mLastPositionedScale:I

    .line 207
    :cond_5
    invoke-virtual {p0}, Lcom/motorola/Camera/widget/SliderBarWidget;->requestLayout()V

    goto :goto_0

    .line 183
    .end local v2           #pos:I
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/motorola/Camera/widget/SliderBarWidget;->setActivated(Z)V

    .line 184
    iget-object v5, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSlider:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getSliderBarMax()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderMax:I

    return v0
.end method

.method public getSliderPosition()I
    .locals 2

    .prologue
    .line 138
    iget v0, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mLastPositionedScale:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 139
    iget v0, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderMax:I

    iget v1, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderPosition:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderLength:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 142
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mLastPositionedScale:I

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v8, 0x0

    .line 215
    sub-int v3, p4, p2

    .line 216
    .local v3, width:I
    sub-int v0, p5, p3

    .line 217
    .local v0, height:I
    iget-object v4, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSlider:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    .line 218
    .local v2, sliderHeight:I
    iget-object v4, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mBar:Landroid/view/View;

    div-int/lit8 v5, v2, 0x2

    iget v6, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mHeight:I

    div-int/lit8 v7, v2, 0x2

    sub-int/2addr v6, v7

    invoke-virtual {v4, v8, v5, v3, v6}, Landroid/view/View;->layout(IIII)V

    .line 219
    iget-object v4, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderPosition:I

    sub-int v1, v4, v5

    .line 220
    .local v1, pos:I
    iget-object v4, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSlider:Landroid/widget/ImageView;

    div-int/lit8 v5, v2, 0x2

    sub-int v5, v1, v5

    div-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v1

    invoke-virtual {v4, v8, v5, v3, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 222
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 158
    iput p2, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mHeight:I

    .line 159
    iget v0, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mHeight:I

    iget-object v1, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSlider:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderLength:I

    .line 160
    iget-boolean v0, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mInitialized:Z

    if-nez v0, :cond_0

    .line 161
    iget v0, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mInitialScale:I

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/widget/SliderBarWidget;->setSliderPosition(I)V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mInitialized:Z

    .line 164
    :cond_0
    return-void
.end method

.method public setActivated(Z)V
    .locals 1
    .parameter "activated"

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 149
    iget-object v0, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mProgressListener:Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mProgressListener:Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;

    invoke-interface {v0, p1}, Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;->onSliderBarActivated(Z)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 153
    iget-object v0, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSlider:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 154
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 239
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 240
    if-eqz p1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSlider:Landroid/widget/ImageView;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSlider:Landroid/widget/ImageView;

    const/high16 v1, 0x7600

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public setInitialScale(I)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/motorola/Camera/widget/SliderBarWidget;->setSliderPosition(I)V

    .line 103
    return-void
.end method

.method public setProgressChangeListener(Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mProgressListener:Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;

    .line 75
    return-void
.end method

.method public setSliderMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 94
    iput p1, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderMax:I

    .line 95
    return-void
.end method

.method public setSliderPosition(I)V
    .locals 3
    .parameter "scale"

    .prologue
    .line 110
    iget v1, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderLength:I

    if-nez v1, :cond_1

    .line 112
    iput p1, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mInitialScale:I

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget v1, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mLastPositionedScale:I

    if-eq p1, v1, :cond_0

    .line 118
    iget v1, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderLength:I

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderMax:I

    div-int v0, v1, v2

    .line 125
    .local v0, sliderPosition:I
    iget v1, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderPosition:I

    if-ne v1, v0, :cond_2

    .line 126
    iget v1, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mLastPositionedScale:I

    invoke-direct {p0, v1, v0}, Lcom/motorola/Camera/widget/SliderBarWidget;->doMathematicalAdjustment(II)I

    move-result v0

    .line 128
    :cond_2
    iput p1, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mLastPositionedScale:I

    .line 129
    iput v0, p0, Lcom/motorola/Camera/widget/SliderBarWidget;->mSliderPosition:I

    .line 130
    invoke-virtual {p0}, Lcom/motorola/Camera/widget/SliderBarWidget;->requestLayout()V

    goto :goto_0
.end method
