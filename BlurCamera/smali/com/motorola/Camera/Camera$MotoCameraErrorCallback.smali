.class final Lcom/motorola/Camera/Camera$MotoCameraErrorCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MotoCameraErrorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/Camera;


# direct methods
.method private constructor <init>(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 5743
    iput-object p1, p0, Lcom/motorola/Camera/Camera$MotoCameraErrorCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5743
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera$MotoCameraErrorCallback;-><init>(Lcom/motorola/Camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 4
    .parameter "error"
    .parameter "camera"

    .prologue
    const/16 v3, 0x64

    .line 5747
    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotoCameraErrorCallback mStatus is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/Camera$MotoCameraErrorCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$1400(Lcom/motorola/Camera/Camera;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5749
    iget-object v0, p0, Lcom/motorola/Camera/Camera$MotoCameraErrorCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v0}, Lcom/motorola/Camera/Camera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camera$MotoCameraErrorCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-boolean v0, v0, Lcom/motorola/Camera/Camera;->mPausing:Z

    if-eqz v0, :cond_2

    .line 5751
    :cond_0
    const-string v0, "MotoCamera"

    const-string v1, "Activity is already pausing/finishing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5777
    :cond_1
    :goto_0
    return-void

    .line 5756
    :cond_2
    if-eq p1, v3, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5759
    :cond_3
    if-ne p1, v3, :cond_5

    .line 5761
    const-string v0, "MotoCamera"

    const-string v1, "ERROR: MediaServer Crashed. exiting APP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5768
    :goto_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera$MotoCameraErrorCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5770
    invoke-static {}, Lcom/motorola/Camera/CameraHolder;->instance()Lcom/motorola/Camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CameraHolder;->release()V

    .line 5771
    iget-object v0, p0, Lcom/motorola/Camera/Camera$MotoCameraErrorCallback;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$4202(Lcom/motorola/Camera/Camera;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 5775
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/Camera$MotoCameraErrorCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v0}, Lcom/motorola/Camera/Camera;->finish()V

    goto :goto_0

    .line 5765
    :cond_5
    const-string v0, "MotoCamera"

    const-string v1, "ERROR: unknown error from camera h/w. exiting APP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
