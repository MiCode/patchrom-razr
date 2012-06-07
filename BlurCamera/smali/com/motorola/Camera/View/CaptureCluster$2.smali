.class Lcom/motorola/Camera/View/CaptureCluster$2;
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
    .line 213
    iput-object p1, p0, Lcom/motorola/Camera/View/CaptureCluster$2;->this$0:Lcom/motorola/Camera/View/CaptureCluster;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter "_animation"

    .prologue
    const/4 v4, 0x0

    .line 216
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster$2;->this$0:Lcom/motorola/Camera/View/CaptureCluster;

    const v3, 0x7f0d000c

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 217
    .local v1, clusterFrame:Landroid/widget/FrameLayout;
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 219
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster$2;->this$0:Lcom/motorola/Camera/View/CaptureCluster;

    const v3, 0x7f0d0012

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 221
    .local v0, captureBtn:Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 224
    :cond_0
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    .line 225
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster$2;->this$0:Lcom/motorola/Camera/View/CaptureCluster;

    #getter for: Lcom/motorola/Camera/View/CaptureCluster;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/Camera/View/CaptureCluster;->access$000(Lcom/motorola/Camera/View/CaptureCluster;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "capturecluster show animation ended"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 228
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 229
    return-void
.end method
