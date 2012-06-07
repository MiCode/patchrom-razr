.class Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$5;
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
    .line 2126
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$5;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "_animation"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 2129
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$5;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$400(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$5;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$400(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 2132
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 2133
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "Zoom is not supported!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$5;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;
    invoke-static {v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$300(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Lcom/motorola/Camera/widget/ZoomControlBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/widget/ZoomControlBar;->setVisibility(I)V

    .line 2147
    :cond_2
    :goto_0
    return-void

    .line 2139
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$5;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;
    invoke-static {v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$300(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Lcom/motorola/Camera/widget/ZoomControlBar;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$5;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;
    invoke-static {v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$300(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Lcom/motorola/Camera/widget/ZoomControlBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/widget/ZoomControlBar;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 2141
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$5;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;
    invoke-static {v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$300(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Lcom/motorola/Camera/widget/ZoomControlBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/widget/ZoomControlBar;->setVisibility(I)V

    .line 2142
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$5;->this$0:Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    #getter for: Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;
    invoke-static {v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->access$300(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Lcom/motorola/Camera/widget/ZoomControlBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/widget/ZoomControlBar;->setEnabled(Z)V

    .line 2144
    :cond_4
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 2145
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "zoombar fadein animation ended"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 2148
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 2149
    return-void
.end method
