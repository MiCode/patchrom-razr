.class Lcom/motorola/Camera/DialogProgressBar$3;
.super Ljava/lang/Object;
.source "DialogProgressBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/DialogProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/DialogProgressBar;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/DialogProgressBar;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/motorola/Camera/DialogProgressBar$3;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/motorola/Camera/DialogProgressBar$3;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v0, v0, Lcom/motorola/Camera/DialogProgressBar;->mLeftIcon:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 167
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/motorola/Camera/DialogProgressBar$3;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v0, v0, Lcom/motorola/Camera/DialogProgressBar;->TAG:Ljava/lang/String;

    const-string v1, "Left clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/DialogProgressBar$3;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v0, v0, Lcom/motorola/Camera/DialogProgressBar;->mSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/widget/SliderBarWidget;->setSliderPosition(I)V

    .line 171
    iget-object v0, p0, Lcom/motorola/Camera/DialogProgressBar$3;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v0, v0, Lcom/motorola/Camera/DialogProgressBar;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    invoke-interface {v0, v4, v2, v3}, Lcom/motorola/Camera/DialogCallbackInterface;->notifyProgressBarChanged(Lcom/motorola/Camera/widget/SliderBarWidget;IZ)V

    .line 172
    iget-object v0, p0, Lcom/motorola/Camera/DialogProgressBar$3;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v1, p0, Lcom/motorola/Camera/DialogProgressBar$3;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v1, v1, Lcom/motorola/Camera/DialogProgressBar;->mSliderBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/RotateLayout;->getLeft()I

    move-result v1

    #setter for: Lcom/motorola/Camera/DialogProgressBar;->mLeftMargin:I
    invoke-static {v0, v1}, Lcom/motorola/Camera/DialogProgressBar;->access$002(Lcom/motorola/Camera/DialogProgressBar;I)I

    .line 173
    iget-object v0, p0, Lcom/motorola/Camera/DialogProgressBar$3;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    invoke-virtual {v0}, Lcom/motorola/Camera/DialogProgressBar;->realignValue()V

    .line 185
    :cond_1
    :goto_0
    return-void

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/DialogProgressBar$3;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v0, v0, Lcom/motorola/Camera/DialogProgressBar;->mRightIcon:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 177
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    .line 178
    iget-object v0, p0, Lcom/motorola/Camera/DialogProgressBar$3;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v0, v0, Lcom/motorola/Camera/DialogProgressBar;->TAG:Ljava/lang/String;

    const-string v1, "Right clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/DialogProgressBar$3;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v0, v0, Lcom/motorola/Camera/DialogProgressBar;->mSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    iget-object v1, p0, Lcom/motorola/Camera/DialogProgressBar$3;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v1, v1, Lcom/motorola/Camera/DialogProgressBar;->mSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderBarMax()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/widget/SliderBarWidget;->setSliderPosition(I)V

    .line 181
    iget-object v0, p0, Lcom/motorola/Camera/DialogProgressBar$3;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v0, v0, Lcom/motorola/Camera/DialogProgressBar;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    iget-object v1, p0, Lcom/motorola/Camera/DialogProgressBar$3;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v1, v1, Lcom/motorola/Camera/DialogProgressBar;->mSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderBarMax()I

    move-result v1

    invoke-interface {v0, v4, v1, v3}, Lcom/motorola/Camera/DialogCallbackInterface;->notifyProgressBarChanged(Lcom/motorola/Camera/widget/SliderBarWidget;IZ)V

    .line 182
    iget-object v0, p0, Lcom/motorola/Camera/DialogProgressBar$3;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v1, p0, Lcom/motorola/Camera/DialogProgressBar$3;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v1, v1, Lcom/motorola/Camera/DialogProgressBar;->mSliderBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/RotateLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/motorola/Camera/DialogProgressBar$3;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v2, v2, Lcom/motorola/Camera/DialogProgressBar;->mSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v2}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderBarMax()I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/motorola/Camera/DialogProgressBar$3;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v2, v2, Lcom/motorola/Camera/DialogProgressBar;->mSliderBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v2}, Lcom/motorola/Camera/widget/RotateLayout;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/motorola/Camera/DialogProgressBar;->mLeftMargin:I
    invoke-static {v0, v1}, Lcom/motorola/Camera/DialogProgressBar;->access$002(Lcom/motorola/Camera/DialogProgressBar;I)I

    .line 183
    iget-object v0, p0, Lcom/motorola/Camera/DialogProgressBar$3;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    invoke-virtual {v0}, Lcom/motorola/Camera/DialogProgressBar;->realignValue()V

    goto :goto_0
.end method
