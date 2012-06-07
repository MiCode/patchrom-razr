.class Lcom/motorola/Camera/DialogProgressBar$4;
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
    .line 188
    iput-object p1, p0, Lcom/motorola/Camera/DialogProgressBar$4;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/motorola/Camera/DialogProgressBar$4;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v0, v0, Lcom/motorola/Camera/DialogProgressBar;->mSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    iget-object v1, p0, Lcom/motorola/Camera/DialogProgressBar$4;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v1, v1, Lcom/motorola/Camera/DialogProgressBar;->mSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderBarMax()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/widget/SliderBarWidget;->setSliderPosition(I)V

    .line 194
    iget-object v0, p0, Lcom/motorola/Camera/DialogProgressBar$4;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v0, v0, Lcom/motorola/Camera/DialogProgressBar;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/motorola/Camera/DialogProgressBar$4;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v2, v2, Lcom/motorola/Camera/DialogProgressBar;->mSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v2}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderBarMax()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/motorola/Camera/DialogCallbackInterface;->notifyProgressBarChanged(Lcom/motorola/Camera/widget/SliderBarWidget;IZ)V

    .line 195
    iget-object v0, p0, Lcom/motorola/Camera/DialogProgressBar$4;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v1, p0, Lcom/motorola/Camera/DialogProgressBar$4;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v1, v1, Lcom/motorola/Camera/DialogProgressBar;->mSliderBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/RotateLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/motorola/Camera/DialogProgressBar$4;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v2, v2, Lcom/motorola/Camera/DialogProgressBar;->mSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v2}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderBarMax()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/motorola/Camera/DialogProgressBar$4;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v2, v2, Lcom/motorola/Camera/DialogProgressBar;->mSliderBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v2}, Lcom/motorola/Camera/widget/RotateLayout;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/motorola/Camera/DialogProgressBar;->mLeftMargin:I
    invoke-static {v0, v1}, Lcom/motorola/Camera/DialogProgressBar;->access$002(Lcom/motorola/Camera/DialogProgressBar;I)I

    .line 196
    iget-object v0, p0, Lcom/motorola/Camera/DialogProgressBar$4;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    invoke-virtual {v0}, Lcom/motorola/Camera/DialogProgressBar;->realignValue()V

    .line 197
    return-void
.end method
