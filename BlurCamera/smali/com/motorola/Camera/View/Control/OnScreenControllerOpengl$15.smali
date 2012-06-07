.class Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$15;
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
    .line 3655
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$15;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "_animation"

    .prologue
    const/4 v1, 0x0

    .line 3658
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$15;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #setter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarFaded:Z
    invoke-static {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$1302(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Z)Z

    .line 3659
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$15;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;
    invoke-static {v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$1400(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Lcom/motorola/Camera/CustomSlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3661
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$15;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;
    invoke-static {v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$1400(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Lcom/motorola/Camera/CustomSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CustomSlidingDrawer;->setVisibility(I)V

    .line 3663
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$15;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #setter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarShowAnimationInProgress:Z
    invoke-static {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$1602(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Z)Z

    .line 3664
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 3665
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "toolbar fadein animation ended"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 3668
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 3669
    return-void
.end method
