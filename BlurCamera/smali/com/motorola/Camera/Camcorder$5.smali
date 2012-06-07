.class Lcom/motorola/Camera/Camcorder$5;
.super Landroid/telephony/PhoneStateListener;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 2565
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder$5;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 2569
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$5;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-boolean v0, v0, Lcom/motorola/Camera/Camcorder;->mPausing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$5;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-virtual {v0}, Lcom/motorola/Camera/Camcorder;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2571
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamcorder"

    const-string v1, "exiting app"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    :cond_1
    :goto_0
    return-void

    .line 2575
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$5;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$5;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2577
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamcorder"

    const-string v1, "Recording being stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2581
    :cond_3
    const-string v0, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callStateListener - state - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2583
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCamcorder"

    const-string v1, "callStateListener - in CALL_STATE_RINGING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$5;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$1300(Lcom/motorola/Camera/Camcorder;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2585
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$5;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->stopVideoRecording()V
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$5600(Lcom/motorola/Camera/Camcorder;)V

    goto :goto_0
.end method
