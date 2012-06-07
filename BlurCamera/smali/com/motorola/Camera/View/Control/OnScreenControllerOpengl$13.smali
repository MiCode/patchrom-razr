.class Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;
.super Ljava/lang/Object;
.source "OnScreenControllerOpengl.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V
    .locals 0
    .parameter

    .prologue
    .line 2758
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "_animation"

    .prologue
    const/4 v3, 0x0

    .line 2761
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #setter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogCloseInProgress:Z
    invoke-static {v0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$902(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Z)Z

    .line 2762
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;
    invoke-static {v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$200(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2764
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;
    invoke-static {v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$200(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2767
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 2769
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog close animation has ended:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolBarButtonClicked:Z
    invoke-static {v2}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$1000(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;
    invoke-static {v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$200(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2775
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$100(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;
    invoke-static {v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$200(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2776
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$202(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Landroid/view/View;)Landroid/view/View;

    .line 2781
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolBarButtonClicked:Z
    invoke-static {v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$1000(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2783
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #setter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I
    invoke-static {v0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$1102(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;I)I

    .line 2784
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    const/4 v1, -0x1

    #setter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I
    invoke-static {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$1202(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;I)I

    .line 2785
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #setter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolBarButtonClicked:Z
    invoke-static {v0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$1002(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Z)Z

    .line 2787
    :cond_3
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 2789
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 2790
    return-void
.end method
