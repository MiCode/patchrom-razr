.class final Lcom/motorola/Camera/Camera$MotoCameraAutoFocusCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MotoCameraAutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/Camera;


# direct methods
.method private constructor <init>(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 5661
    iput-object p1, p0, Lcom/motorola/Camera/Camera$MotoCameraAutoFocusCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5661
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera$MotoCameraAutoFocusCallback;-><init>(Lcom/motorola/Camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 3
    .parameter "focused"
    .parameter "camera"

    .prologue
    .line 5666
    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotoCameraAutoFocusCallback - onAutoFocus() - Enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5667
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraKPI"

    const-string v1, "onAutoFocus enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5670
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera$MotoCameraAutoFocusCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5672
    iget-object v0, p0, Lcom/motorola/Camera/Camera$MotoCameraAutoFocusCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-boolean v0, v0, Lcom/motorola/Camera/Camera;->mPausing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/Camera$MotoCameraAutoFocusCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v0}, Lcom/motorola/Camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5674
    :cond_1
    const-string v0, "MotoCamera"

    const-string v1, "MotoCameraAutoFocusCallback - onAutoFocus() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5682
    :cond_2
    :goto_0
    return-void

    .line 5678
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera$MotoCameraAutoFocusCallback;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$4100(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/FocusManager;->onAutoFocus(Z)V

    .line 5680
    const-string v0, "MotoCamera"

    const-string v1, "MotoCameraAutoFocusCallback - onAutoFocus() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5681
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCameraKPI"

    const-string v1, "onAutoFocus exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
