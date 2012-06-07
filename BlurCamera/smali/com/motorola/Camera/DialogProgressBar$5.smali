.class Lcom/motorola/Camera/DialogProgressBar$5;
.super Ljava/lang/Object;
.source "DialogProgressBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 201
    iput-object p1, p0, Lcom/motorola/Camera/DialogProgressBar$5;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "event"

    .prologue
    .line 204
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 205
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 206
    .local v1, vId:I
    const-wide/16 v4, 0x0

    .line 207
    .local v4, xPrevious:J
    const-wide/16 v2, 0x0

    .line 209
    .local v2, xCurrent:J
    if-nez v0, :cond_1

    .line 211
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 244
    :cond_0
    :goto_0
    const/4 v6, 0x1

    return v6

    .line 214
    :cond_1
    const/4 v6, 0x2

    if-eq v0, v6, :cond_2

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    .line 216
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 218
    const/4 v6, 0x1

    if-ne v0, v6, :cond_3

    sub-long v6, v2, v4

    const-wide/16 v8, 0xc8

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    :cond_3
    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    sub-long v6, v2, v4

    const-wide/16 v8, 0xc8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 221
    :cond_4
    move-wide v4, v2

    .line 222
    const v6, 0x7f0d0050

    if-ne v1, v6, :cond_6

    .line 224
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_5

    .line 225
    iget-object v6, p0, Lcom/motorola/Camera/DialogProgressBar$5;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v6, v6, Lcom/motorola/Camera/DialogProgressBar;->TAG:Ljava/lang/String;

    const-string v7, "Left continous clicked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_5
    iget-object v6, p0, Lcom/motorola/Camera/DialogProgressBar$5;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v6, v6, Lcom/motorola/Camera/DialogProgressBar;->mSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/motorola/Camera/widget/SliderBarWidget;->setSliderPosition(I)V

    .line 228
    iget-object v6, p0, Lcom/motorola/Camera/DialogProgressBar$5;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v6, v6, Lcom/motorola/Camera/DialogProgressBar;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-interface {v6, v7, v8, v9}, Lcom/motorola/Camera/DialogCallbackInterface;->notifyProgressBarChanged(Lcom/motorola/Camera/widget/SliderBarWidget;IZ)V

    .line 229
    iget-object v6, p0, Lcom/motorola/Camera/DialogProgressBar$5;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v7, p0, Lcom/motorola/Camera/DialogProgressBar$5;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v7, v7, Lcom/motorola/Camera/DialogProgressBar;->mSliderBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v7}, Lcom/motorola/Camera/widget/RotateLayout;->getLeft()I

    move-result v7

    #setter for: Lcom/motorola/Camera/DialogProgressBar;->mLeftMargin:I
    invoke-static {v6, v7}, Lcom/motorola/Camera/DialogProgressBar;->access$002(Lcom/motorola/Camera/DialogProgressBar;I)I

    .line 230
    iget-object v6, p0, Lcom/motorola/Camera/DialogProgressBar$5;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    invoke-virtual {v6}, Lcom/motorola/Camera/DialogProgressBar;->realignValue()V

    goto :goto_0

    .line 232
    :cond_6
    const v6, 0x7f0d0051

    if-ne v1, v6, :cond_0

    .line 234
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_7

    .line 235
    iget-object v6, p0, Lcom/motorola/Camera/DialogProgressBar$5;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v6, v6, Lcom/motorola/Camera/DialogProgressBar;->TAG:Ljava/lang/String;

    const-string v7, "Right continous clicked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_7
    iget-object v6, p0, Lcom/motorola/Camera/DialogProgressBar$5;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v6, v6, Lcom/motorola/Camera/DialogProgressBar;->mSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    iget-object v7, p0, Lcom/motorola/Camera/DialogProgressBar$5;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v7, v7, Lcom/motorola/Camera/DialogProgressBar;->mSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v7}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderBarMax()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/motorola/Camera/widget/SliderBarWidget;->setSliderPosition(I)V

    .line 238
    iget-object v6, p0, Lcom/motorola/Camera/DialogProgressBar$5;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v6, v6, Lcom/motorola/Camera/DialogProgressBar;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/motorola/Camera/DialogProgressBar$5;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v8, v8, Lcom/motorola/Camera/DialogProgressBar;->mSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v8}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderBarMax()I

    move-result v8

    const/4 v9, 0x1

    invoke-interface {v6, v7, v8, v9}, Lcom/motorola/Camera/DialogCallbackInterface;->notifyProgressBarChanged(Lcom/motorola/Camera/widget/SliderBarWidget;IZ)V

    .line 239
    iget-object v6, p0, Lcom/motorola/Camera/DialogProgressBar$5;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v7, p0, Lcom/motorola/Camera/DialogProgressBar$5;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v7, v7, Lcom/motorola/Camera/DialogProgressBar;->mSliderBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v7}, Lcom/motorola/Camera/widget/RotateLayout;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x64

    iget-object v8, p0, Lcom/motorola/Camera/DialogProgressBar$5;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v8, v8, Lcom/motorola/Camera/DialogProgressBar;->mSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v8}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderBarMax()I

    move-result v8

    mul-int/2addr v7, v8

    iget-object v8, p0, Lcom/motorola/Camera/DialogProgressBar$5;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    iget-object v8, v8, Lcom/motorola/Camera/DialogProgressBar;->mSliderBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v8}, Lcom/motorola/Camera/widget/RotateLayout;->getLeft()I

    move-result v8

    add-int/2addr v7, v8

    #setter for: Lcom/motorola/Camera/DialogProgressBar;->mLeftMargin:I
    invoke-static {v6, v7}, Lcom/motorola/Camera/DialogProgressBar;->access$002(Lcom/motorola/Camera/DialogProgressBar;I)I

    .line 240
    iget-object v6, p0, Lcom/motorola/Camera/DialogProgressBar$5;->this$0:Lcom/motorola/Camera/DialogProgressBar;

    invoke-virtual {v6}, Lcom/motorola/Camera/DialogProgressBar;->realignValue()V

    goto/16 :goto_0
.end method
