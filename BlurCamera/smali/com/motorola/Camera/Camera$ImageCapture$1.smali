.class Lcom/motorola/Camera/Camera$ImageCapture$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/Camera/Camera$ImageCapture;->storeImage([BLandroid/hardware/Camera;Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/Camera/Camera$ImageCapture;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/Camera$ImageCapture;)V
    .locals 0
    .parameter

    .prologue
    .line 4014
    iput-object p1, p0, Lcom/motorola/Camera/Camera$ImageCapture$1;->this$1:Lcom/motorola/Camera/Camera$ImageCapture;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4016
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture$1;->this$1:Lcom/motorola/Camera/Camera$ImageCapture;

    iget-object v0, v0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$8700(Lcom/motorola/Camera/Camera;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4017
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture$1;->this$1:Lcom/motorola/Camera/Camera$ImageCapture;

    iget-object v0, v0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #calls: Lcom/motorola/Camera/Camera;->initPostPanel()V
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$8800(Lcom/motorola/Camera/Camera;)V

    .line 4018
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture$1;->this$1:Lcom/motorola/Camera/Camera$ImageCapture;

    iget-object v0, v0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4020
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v1, "storeImage: Service mode, show postview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4021
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera$ImageCapture$1;->this$1:Lcom/motorola/Camera/Camera$ImageCapture;

    iget-object v0, v0, Lcom/motorola/Camera/Camera$ImageCapture;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$8700(Lcom/motorola/Camera/Camera;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4023
    :cond_2
    return-void
.end method
