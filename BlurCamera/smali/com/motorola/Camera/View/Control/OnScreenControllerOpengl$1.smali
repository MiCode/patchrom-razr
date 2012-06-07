.class Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$1;
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
    .line 301
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$1;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "_animation"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$1;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNewThumbAnimationImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$000(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$1;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNewThumbAnimationImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$000(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$1;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNewThumbAnimationImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$000(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$1;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$100(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$1;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNewThumbAnimationImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$000(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 309
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$1;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNewThumbAnimationImage:Landroid/widget/ImageView;
    invoke-static {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$002(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 310
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$1;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    iget-object v0, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x4b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 312
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 313
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "thumbnail post shot animation ended"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 316
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 317
    return-void
.end method
