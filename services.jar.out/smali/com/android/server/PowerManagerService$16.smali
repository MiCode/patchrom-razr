.class Lcom/android/server/PowerManagerService$16;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 4721
    iput-object p1, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 4723
    iget-object v0, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 4724
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$8600(Lcom/android/server/PowerManagerService;)I

    move-result v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$8700(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4725
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$8900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4726
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDelayKeyboardBacklightOnTask:brightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPendingLightSensorKeyboardBrightness:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$9200(Lcom/android/server/PowerManagerService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4728
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$10100(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPendingLightSensorKeyboardBrightness:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$9200(Lcom/android/server/PowerManagerService;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 4730
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$8900()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4731
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start mKeyboardBacklightStayOnTask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/PowerManagerService;->access$10200()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms later"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4733
    :cond_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardBacklightStayOnTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$9500(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {}, Lcom/android/server/PowerManagerService;->access$10200()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4734
    iget-object v0, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mKeyboardBacklightStayOnTaskStarted:Z
    invoke-static {v0, v2}, Lcom/android/server/PowerManagerService;->access$8802(Lcom/android/server/PowerManagerService;Z)Z

    .line 4737
    :cond_2
    iget-object v0, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mDelayKeyboardBacklightOnTaskStarted:Z
    invoke-static {v0, v2}, Lcom/android/server/PowerManagerService;->access$9002(Lcom/android/server/PowerManagerService;Z)Z

    .line 4738
    iget-object v0, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPendingLightSensorKeyboardBrightness:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$9200(Lcom/android/server/PowerManagerService;)I

    move-result v0

    if-lez v0, :cond_3

    .line 4739
    iget-object v0, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v2, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPendingLightSensorKeyboardBrightness:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$9200(Lcom/android/server/PowerManagerService;)I

    move-result v2

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I
    invoke-static {v0, v2}, Lcom/android/server/PowerManagerService;->access$9102(Lcom/android/server/PowerManagerService;I)I

    .line 4740
    iget-object v0, p0, Lcom/android/server/PowerManagerService$16;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v2, -0x1

    #setter for: Lcom/android/server/PowerManagerService;->mPendingLightSensorKeyboardBrightness:I
    invoke-static {v0, v2}, Lcom/android/server/PowerManagerService;->access$9202(Lcom/android/server/PowerManagerService;I)I

    .line 4742
    :cond_3
    monitor-exit v1

    .line 4743
    return-void

    .line 4742
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
