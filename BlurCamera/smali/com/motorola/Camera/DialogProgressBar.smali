.class public Lcom/motorola/Camera/DialogProgressBar;
.super Ljava/lang/Object;
.source "DialogProgressBar.java"


# instance fields
.field TAG:Ljava/lang/String;

.field fadeOutBrightnessValue:Landroid/view/animation/Animation$AnimationListener;

.field mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

.field mContext:Landroid/content/Context;

.field mLeftIcon:Landroid/widget/ImageView;

.field private mLeftMargin:I

.field mParentView:Landroid/view/ViewGroup;

.field mProgressText:Landroid/widget/TextView;

.field mRightIcon:Landroid/widget/ImageView;

.field mSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

.field mSliderBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

.field mSliderProgressListener:Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;

.field mTrackingText:Landroid/widget/TextView;

.field mTriangle:Landroid/widget/ImageView;

.field mValue:Landroid/widget/TextView;

.field mViewContainer:Landroid/widget/RelativeLayout;

.field progressBarButtonListener:Landroid/view/View$OnClickListener;

.field progressBarTouchListener:Landroid/view/View$OnTouchListener;

.field resetListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/motorola/Camera/DialogCallbackInterface;)V
    .locals 4
    .parameter "context"
    .parameter "v"
    .parameter "interfaceParam"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v2, "DialogProgressBar"

    iput-object v2, p0, Lcom/motorola/Camera/DialogProgressBar;->TAG:Ljava/lang/String;

    .line 121
    new-instance v2, Lcom/motorola/Camera/DialogProgressBar$1;

    invoke-direct {v2, p0}, Lcom/motorola/Camera/DialogProgressBar$1;-><init>(Lcom/motorola/Camera/DialogProgressBar;)V

    iput-object v2, p0, Lcom/motorola/Camera/DialogProgressBar;->mSliderProgressListener:Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;

    .line 140
    new-instance v2, Lcom/motorola/Camera/DialogProgressBar$2;

    invoke-direct {v2, p0}, Lcom/motorola/Camera/DialogProgressBar$2;-><init>(Lcom/motorola/Camera/DialogProgressBar;)V

    iput-object v2, p0, Lcom/motorola/Camera/DialogProgressBar;->fadeOutBrightnessValue:Landroid/view/animation/Animation$AnimationListener;

    .line 162
    new-instance v2, Lcom/motorola/Camera/DialogProgressBar$3;

    invoke-direct {v2, p0}, Lcom/motorola/Camera/DialogProgressBar$3;-><init>(Lcom/motorola/Camera/DialogProgressBar;)V

    iput-object v2, p0, Lcom/motorola/Camera/DialogProgressBar;->progressBarButtonListener:Landroid/view/View$OnClickListener;

    .line 188
    new-instance v2, Lcom/motorola/Camera/DialogProgressBar$4;

    invoke-direct {v2, p0}, Lcom/motorola/Camera/DialogProgressBar$4;-><init>(Lcom/motorola/Camera/DialogProgressBar;)V

    iput-object v2, p0, Lcom/motorola/Camera/DialogProgressBar;->resetListener:Landroid/view/View$OnClickListener;

    .line 201
    new-instance v2, Lcom/motorola/Camera/DialogProgressBar$5;

    invoke-direct {v2, p0}, Lcom/motorola/Camera/DialogProgressBar$5;-><init>(Lcom/motorola/Camera/DialogProgressBar;)V

    iput-object v2, p0, Lcom/motorola/Camera/DialogProgressBar;->progressBarTouchListener:Landroid/view/View$OnTouchListener;

    .line 51
    iput-object p1, p0, Lcom/motorola/Camera/DialogProgressBar;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/motorola/Camera/DialogProgressBar;->mParentView:Landroid/view/ViewGroup;

    .line 54
    iput-object p3, p0, Lcom/motorola/Camera/DialogProgressBar;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    .line 57
    iget-object v2, p0, Lcom/motorola/Camera/DialogProgressBar;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 58
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030022

    iget-object v3, p0, Lcom/motorola/Camera/DialogProgressBar;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 59
    .local v1, viewLayout:Landroid/view/View;
    const v2, 0x7f0d0053

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/Camera/widget/SliderBarWidget;

    iput-object v2, p0, Lcom/motorola/Camera/DialogProgressBar;->mSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    .line 60
    const v2, 0x7f0d0052

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/Camera/widget/RotateLayout;

    iput-object v2, p0, Lcom/motorola/Camera/DialogProgressBar;->mSliderBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    .line 61
    iget-object v2, p0, Lcom/motorola/Camera/DialogProgressBar;->mSliderBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    const/16 v3, 0x10e

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/widget/RotateLayout;->setOrientation(I)V

    .line 63
    const v2, 0x7f0d0050

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/motorola/Camera/DialogProgressBar;->mLeftIcon:Landroid/widget/ImageView;

    .line 64
    const v2, 0x7f0d0051

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/motorola/Camera/DialogProgressBar;->mRightIcon:Landroid/widget/ImageView;

    .line 65
    const v2, 0x7f0d0054

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/motorola/Camera/DialogProgressBar;->mValue:Landroid/widget/TextView;

    .line 66
    const v2, 0x7f0d0055

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/motorola/Camera/DialogProgressBar;->mTriangle:Landroid/widget/ImageView;

    .line 68
    iget-object v2, p0, Lcom/motorola/Camera/DialogProgressBar;->mSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    iget-object v3, p0, Lcom/motorola/Camera/DialogProgressBar;->mSliderProgressListener:Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/widget/SliderBarWidget;->setProgressChangeListener(Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;)V

    .line 70
    iget-object v2, p0, Lcom/motorola/Camera/DialogProgressBar;->mLeftIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/motorola/Camera/DialogProgressBar;->progressBarButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v2, p0, Lcom/motorola/Camera/DialogProgressBar;->mRightIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/motorola/Camera/DialogProgressBar;->progressBarButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v2, p0, Lcom/motorola/Camera/DialogProgressBar;->mLeftIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/motorola/Camera/DialogProgressBar;->progressBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    iget-object v2, p0, Lcom/motorola/Camera/DialogProgressBar;->mRightIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/motorola/Camera/DialogProgressBar;->progressBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 75
    const v2, 0x7f0d004e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/motorola/Camera/DialogProgressBar;->mViewContainer:Landroid/widget/RelativeLayout;

    .line 76
    iget-object v2, p0, Lcom/motorola/Camera/DialogProgressBar;->mTriangle:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/motorola/Camera/DialogProgressBar;->resetListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v2, p0, Lcom/motorola/Camera/DialogProgressBar;->mSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v2}, Lcom/motorola/Camera/widget/SliderBarWidget;->getLeft()I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/DialogProgressBar;->mLeftMargin:I

    .line 79
    invoke-virtual {p0}, Lcom/motorola/Camera/DialogProgressBar;->realignValue()V

    .line 80
    return-void
.end method

.method static synthetic access$002(Lcom/motorola/Camera/DialogProgressBar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/motorola/Camera/DialogProgressBar;->mLeftMargin:I

    return p1
.end method


# virtual methods
.method public getChildWidth()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/motorola/Camera/DialogProgressBar;->mViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getSliderProgress()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/motorola/Camera/DialogProgressBar;->mSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v0}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderPosition()I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/motorola/Camera/DialogProgressBar;->mViewContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public realignValue()V
    .locals 5

    .prologue
    .line 113
    iget-object v1, p0, Lcom/motorola/Camera/DialogProgressBar;->mValue:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 114
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/motorola/Camera/DialogProgressBar;->mLeftMargin:I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 115
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/motorola/Camera/DialogProgressBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Realigned Left MArgin - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/DialogProgressBar;->mLeftMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/DialogProgressBar;->mValue:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    return-void
.end method

.method public setIcon(II)V
    .locals 1
    .parameter "leftResId"
    .parameter "rightResId"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/motorola/Camera/DialogProgressBar;->mLeftIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 106
    iget-object v0, p0, Lcom/motorola/Camera/DialogProgressBar;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 107
    return-void
.end method

.method public setSliderProgress(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/motorola/Camera/DialogProgressBar;->mSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/widget/SliderBarWidget;->setSliderPosition(I)V

    .line 95
    iget-object v0, p0, Lcom/motorola/Camera/DialogProgressBar;->mSliderBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v0}, Lcom/motorola/Camera/widget/RotateLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    mul-int/2addr v0, p1

    iget-object v1, p0, Lcom/motorola/Camera/DialogProgressBar;->mSliderBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/RotateLayout;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/Camera/DialogProgressBar;->mLeftMargin:I

    .line 96
    invoke-virtual {p0}, Lcom/motorola/Camera/DialogProgressBar;->realignValue()V

    .line 97
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/motorola/Camera/DialogProgressBar;->mValue:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method
