.class final Lcom/motorola/Camera/Camcorder$MotoCameraErrorCallback;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MotoCameraErrorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/Camcorder;


# direct methods
.method private constructor <init>(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 2492
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder$MotoCameraErrorCallback;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/Camera/Camcorder;Lcom/motorola/Camera/Camcorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2492
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camcorder$MotoCameraErrorCallback;-><init>(Lcom/motorola/Camera/Camcorder;)V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 4
    .parameter "error"
    .parameter "camera"

    .prologue
    const/16 v3, 0x64

    .line 2496
    const-string v0, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotoCameraErrorCallback mStatus is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder$MotoCameraErrorCallback;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mStatus:I
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$1300(Lcom/motorola/Camera/Camcorder;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$MotoCameraErrorCallback;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-virtual {v0}, Lcom/motorola/Camera/Camcorder;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$MotoCameraErrorCallback;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-boolean v0, v0, Lcom/motorola/Camera/Camcorder;->mPausing:Z

    if-eqz v0, :cond_2

    .line 2501
    :cond_0
    const-string v0, "MotoCamcorder"

    const-string v1, "Activity is already pausing/finishing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    :cond_1
    :goto_0
    return-void

    .line 2505
    :cond_2
    if-eq p1, v3, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2509
    :cond_3
    if-ne p1, v3, :cond_4

    .line 2511
    const-string v0, "MotoCamcorder"

    const-string v1, "ERROR: MediaServer Crashed. exiting APP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    :goto_1
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 2521
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$MotoCameraErrorCallback;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-virtual {v0}, Lcom/motorola/Camera/Camcorder;->finish()V

    goto :goto_0

    .line 2515
    :cond_4
    const-string v0, "MotoCamcorder"

    const-string v1, "ERROR: unknown error from camera h/w. exiting APP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
