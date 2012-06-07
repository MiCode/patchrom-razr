.class Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$14;
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
    .line 3609
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$14;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "_animation"

    .prologue
    .line 3612
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$14;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    const/4 v1, 0x1

    #setter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarFaded:Z
    invoke-static {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$1302(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Z)Z

    .line 3613
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$14;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;
    invoke-static {v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$1400(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Lcom/motorola/Camera/CustomSlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3615
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$14;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;
    invoke-static {v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$1400(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Lcom/motorola/Camera/CustomSlidingDrawer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CustomSlidingDrawer;->setVisibility(I)V

    .line 3617
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$14;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarHideAnimationInProgress:Z
    invoke-static {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$1502(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Z)Z

    .line 3618
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 3619
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "toolbar fadeout animation ended"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3621
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 3622
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 3623
    return-void
.end method
