.class public Lcom/motorola/Camera/widget/ZoomControlBar;
.super Lcom/motorola/Camera/widget/ZoomControl;
.source "ZoomControlBar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomControlBar"


# instance fields
.field private final ICON_SPACING:I

.field private mHeight:I

.field private mIconHeight:I

.field private mSliderBar:Lcom/motorola/Camera/widget/SliderBarWidget;

.field private mSliderProgressListener:Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;

.field private mTotalIconHeight:I

.field private sPixelDensity:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/motorola/Camera/widget/ZoomControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/motorola/Camera/widget/ZoomControlBar;->sPixelDensity:F

    .line 81
    new-instance v2, Lcom/motorola/Camera/widget/ZoomControlBar$1;

    invoke-direct {v2, p0}, Lcom/motorola/Camera/widget/ZoomControlBar$1;-><init>(Lcom/motorola/Camera/widget/ZoomControlBar;)V

    iput-object v2, p0, Lcom/motorola/Camera/widget/ZoomControlBar;->mSliderProgressListener:Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;

    .line 28
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 29
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/motorola/Camera/widget/ZoomControlBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 31
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 32
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/motorola/Camera/widget/ZoomControlBar;->sPixelDensity:F

    .line 33
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/motorola/Camera/widget/ZoomControlBar;->dpToPixel(I)I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/widget/ZoomControlBar;->ICON_SPACING:I

    .line 34
    return-void
.end method

.method private dpToPixel(I)I
    .locals 2
    .parameter "dp"

    .prologue
    .line 96
    iget v0, p0, Lcom/motorola/Camera/widget/ZoomControlBar;->sPixelDensity:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 47
    const v0, 0x7f0d003e

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/widget/ZoomControlBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/widget/SliderBarWidget;

    iput-object v0, p0, Lcom/motorola/Camera/widget/ZoomControlBar;->mSliderBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    .line 48
    iget-object v0, p0, Lcom/motorola/Camera/widget/ZoomControlBar;->mSliderBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    iget-object v1, p0, Lcom/motorola/Camera/widget/ZoomControlBar;->mSliderProgressListener:Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/widget/SliderBarWidget;->setProgressChangeListener(Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;)V

    .line 49
    invoke-super {p0}, Lcom/motorola/Camera/widget/ZoomControl;->onFinishInflate()V

    .line 50
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v5, 0x0

    .line 37
    iget v1, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomMax:I

    if-nez v1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 38
    :cond_0
    sub-int v0, p4, p2

    .line 40
    .local v0, width:I
    iget-object v1, p0, Lcom/motorola/Camera/widget/ZoomControlBar;->mSliderBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    iget v2, p0, Lcom/motorola/Camera/widget/ZoomControlBar;->mTotalIconHeight:I

    iget v3, p0, Lcom/motorola/Camera/widget/ZoomControlBar;->mHeight:I

    iget v4, p0, Lcom/motorola/Camera/widget/ZoomControlBar;->mTotalIconHeight:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v5, v2, v0, v3}, Lcom/motorola/Camera/widget/SliderBarWidget;->layout(IIII)V

    .line 41
    iget-object v1, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    iget v2, p0, Lcom/motorola/Camera/widget/ZoomControlBar;->mIconHeight:I

    invoke-virtual {v1, v5, v5, v0, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 42
    iget-object v1, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomOut:Landroid/widget/ImageView;

    iget v2, p0, Lcom/motorola/Camera/widget/ZoomControlBar;->mHeight:I

    iget v3, p0, Lcom/motorola/Camera/widget/ZoomControlBar;->mIconHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/motorola/Camera/widget/ZoomControlBar;->mHeight:I

    invoke-virtual {v1, v5, v2, v0, v3}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 54
    iput p2, p0, Lcom/motorola/Camera/widget/ZoomControlBar;->mHeight:I

    .line 55
    iget-object v0, p0, Lcom/motorola/Camera/widget/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/widget/ZoomControlBar;->mIconHeight:I

    .line 56
    iget v0, p0, Lcom/motorola/Camera/widget/ZoomControlBar;->mIconHeight:I

    iget v1, p0, Lcom/motorola/Camera/widget/ZoomControlBar;->ICON_SPACING:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/widget/ZoomControlBar;->mTotalIconHeight:I

    .line 57
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/motorola/Camera/widget/ZoomControl;->setEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/motorola/Camera/widget/ZoomControlBar;->mSliderBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/widget/SliderBarWidget;->setEnabled(Z)V

    .line 79
    return-void
.end method

.method public setZoomIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/motorola/Camera/widget/ZoomControl;->setZoomIndex(I)V

    .line 71
    iget-object v0, p0, Lcom/motorola/Camera/widget/ZoomControlBar;->mSliderBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/widget/SliderBarWidget;->setSliderPosition(I)V

    .line 72
    invoke-virtual {p0}, Lcom/motorola/Camera/widget/ZoomControlBar;->requestLayout()V

    .line 73
    return-void
.end method

.method public setZoomMax(I)V
    .locals 1
    .parameter "zoomMax"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/motorola/Camera/widget/ZoomControl;->setZoomMax(I)V

    .line 62
    iget-object v0, p0, Lcom/motorola/Camera/widget/ZoomControlBar;->mSliderBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/widget/SliderBarWidget;->setSliderMax(I)V

    .line 65
    invoke-virtual {p0}, Lcom/motorola/Camera/widget/ZoomControlBar;->requestLayout()V

    .line 66
    return-void
.end method
