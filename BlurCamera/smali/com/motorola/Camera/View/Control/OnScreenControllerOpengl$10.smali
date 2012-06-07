.class Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$10;
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
    .line 2384
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$10;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "_animation"

    .prologue
    .line 2387
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$10;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$700(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2389
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$10;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$700(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 2390
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$10;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$700(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2392
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 2393
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "location tags fadein animation ended"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 2396
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 2397
    return-void
.end method
