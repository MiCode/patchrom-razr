.class Lcom/motorola/Camera/View/CaptureCluster$3;
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
    .line 232
    iput-object p1, p0, Lcom/motorola/Camera/View/CaptureCluster$3;->this$0:Lcom/motorola/Camera/View/CaptureCluster;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "_animation"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster$3;->this$0:Lcom/motorola/Camera/View/CaptureCluster;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/CaptureCluster;->setVisibility(I)V

    .line 236
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster$3;->this$0:Lcom/motorola/Camera/View/CaptureCluster;

    #getter for: Lcom/motorola/Camera/View/CaptureCluster;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/motorola/Camera/View/CaptureCluster;->access$000(Lcom/motorola/Camera/View/CaptureCluster;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "capturecluster button hide animation ended"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 240
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "_animation"

    .prologue
    .line 241
    return-void
.end method
