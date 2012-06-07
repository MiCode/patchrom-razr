.class Lcom/motorola/Camera/View/CaptureCluster$1;
.super Ljava/lang/Object;
.source "CaptureCluster.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/View/CaptureCluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/View/CaptureCluster;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/View/CaptureCluster;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/motorola/Camera/View/CaptureCluster$1;->this$0:Lcom/motorola/Camera/View/CaptureCluster;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "_animation"

    .prologue
    .line 203
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster$1;->this$0:Lcom/motorola/Camera/View/CaptureCluster;

    const v2, 0x7f0d000c

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 204
    .local v0, clusterFrame:Landroid/widget/FrameLayout;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 205
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster$1;->this$0:Lcom/motorola/Camera/View/CaptureCluster;

    #getter for: Lcom/motorola/Camera/View/CaptureCluster;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/Camera/View/CaptureCluster;->access$000(Lcom/motorola/Camera/View/CaptureCluster;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "capturecluster hide animation ended"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 209
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 210
    return-void
.end method
