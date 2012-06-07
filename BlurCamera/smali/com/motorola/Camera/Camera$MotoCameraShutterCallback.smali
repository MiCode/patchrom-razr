.class final Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MotoCameraShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/Camera;


# direct methods
.method private constructor <init>(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 4994
    iput-object p1, p0, Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4994
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;-><init>(Lcom/motorola/Camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 5

    .prologue
    .line 5000
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraKPI"

    const-string v1, "onShutter enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5001
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;->this$0:Lcom/motorola/Camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/motorola/Camera/Camera;->mShutterCallbackTime:J

    .line 5002
    iget-object v0, p0, Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-object v1, p0, Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-wide v1, v1, Lcom/motorola/Camera/Camera;->mShutterCallbackTime:J

    iget-object v3, p0, Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-wide v3, v3, Lcom/motorola/Camera/Camera;->mCaptureStartTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/motorola/Camera/Camera;->mShutterLag:J

    .line 5003
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KPI: mShutterLag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;->this$0:Lcom/motorola/Camera/Camera;

    iget-wide v2, v2, Lcom/motorola/Camera/Camera;->mShutterLag:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5006
    :cond_1
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCameraKPI"

    const-string v1, "onShutter exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5007
    :cond_2
    return-void
.end method
