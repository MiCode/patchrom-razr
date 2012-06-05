.class Lcom/android/server/PowerManagerService$14;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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
    .line 4224
    iput-object p1, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 4327
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4226
    iget-object v5, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v6

    monitor-enter v6

    .line 4231
    :try_start_0
    iget-object v5, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$7900(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$8000(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4235
    :cond_0
    monitor-exit v6

    .line 4323
    :goto_0
    return-void

    .line 4238
    :cond_1
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x0

    aget v5, v5, v7

    float-to-int v2, v5

    .line 4239
    .local v2, value:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4240
    .local v0, milliseconds:J
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$8100()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4241
    const-string v5, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSensorChanged: light value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4243
    :cond_2
    iget-object v5, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)F

    move-result v5

    const/high16 v7, -0x4080

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$8200(Lcom/android/server/PowerManagerService;)J

    move-result-wide v7

    iget-object v5, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorWarmupTime:I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$8300(Lcom/android/server/PowerManagerService;)I

    move-result v5

    int-to-long v9, v5

    add-long/2addr v7, v9

    cmp-long v5, v0, v7

    if-gez v5, :cond_5

    .line 4246
    :cond_3
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$8400(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4247
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$7002(Lcom/android/server/PowerManagerService;Z)Z

    .line 4248
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$7102(Lcom/android/server/PowerManagerService;Z)Z

    .line 4249
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V
    invoke-static {v3, v2}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;I)V

    .line 4322
    :cond_4
    :goto_1
    monitor-exit v6

    goto :goto_0

    .end local v0           #milliseconds:J
    .end local v2           #value:I
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4251
    .restart local v0       #milliseconds:J
    .restart local v2       #value:I
    :cond_5
    int-to-float v5, v2

    :try_start_1
    iget-object v7, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)F

    move-result v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_6

    iget-object v5, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_6
    int-to-float v5, v2

    iget-object v7, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)F

    move-result v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_7

    iget-object v5, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$7100(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    int-to-float v5, v2

    iget-object v7, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)F

    move-result v7

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$7100(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 4256
    :cond_8
    iget-object v5, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$8400(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4257
    iget-object v7, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v5, v2

    iget-object v8, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)F

    move-result v8

    cmpg-float v5, v5, v8

    if-gez v5, :cond_b

    move v5, v3

    :goto_2
    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v7, v5}, Lcom/android/server/PowerManagerService;->access$7002(Lcom/android/server/PowerManagerService;Z)Z

    .line 4258
    iget-object v5, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v7, v2

    iget-object v8, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_c

    :goto_3
    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v5, v3}, Lcom/android/server/PowerManagerService;->access$7102(Lcom/android/server/PowerManagerService;Z)Z

    .line 4259
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$7100(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 4260
    :cond_9
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v4, v2

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F
    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$7202(Lcom/android/server/PowerManagerService;F)F

    .line 4261
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$8400(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v7, 0x7d0

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4269
    :cond_a
    :goto_4
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardBacklightOnSensorValue:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$8500(Lcom/android/server/PowerManagerService;)I

    move-result v3

    if-lez v3, :cond_4

    .line 4270
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$8600(Lcom/android/server/PowerManagerService;)I

    move-result v3

    if-gez v3, :cond_12

    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$8700(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 4271
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardBacklightStayOnTaskStarted:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$8800(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 4272
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$8900()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4273
    const-string v3, "PowerManagerService"

    const-string v4, "mKeyboardBacklightStayOnTask started, do nothing"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    move v5, v4

    .line 4257
    goto :goto_2

    :cond_c
    move v3, v4

    .line 4258
    goto :goto_3

    .line 4264
    :cond_d
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v4, v2

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F
    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$7202(Lcom/android/server/PowerManagerService;F)F

    goto :goto_4

    .line 4274
    :cond_e
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardBacklightOnSensorValue:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$8500(Lcom/android/server/PowerManagerService;)I

    move-result v3

    if-le v2, v3, :cond_10

    .line 4275
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDelayKeyboardBacklightOnTaskStarted:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$9000(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4276
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$8900()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 4277
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop mDelayKeyboardBacklightOnTask, brightness:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$9100(Lcom/android/server/PowerManagerService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPendingLightSensorKeyboardBrightness:I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$9200(Lcom/android/server/PowerManagerService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4280
    :cond_f
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDelayKeyboardBacklightOnTask:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$9300(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4281
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mDelayKeyboardBacklightOnTaskStarted:Z
    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$9002(Lcom/android/server/PowerManagerService;Z)Z

    .line 4282
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPendingLightSensorKeyboardBrightness:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$9200(Lcom/android/server/PowerManagerService;)I

    move-result v3

    if-lez v3, :cond_4

    .line 4283
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPendingLightSensorKeyboardBrightness:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$9200(Lcom/android/server/PowerManagerService;)I

    move-result v4

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I
    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$9102(Lcom/android/server/PowerManagerService;I)I

    .line 4285
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, -0x1

    #setter for: Lcom/android/server/PowerManagerService;->mPendingLightSensorKeyboardBrightness:I
    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$9202(Lcom/android/server/PowerManagerService;I)I

    goto/16 :goto_1

    .line 4288
    :cond_10
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDelayKeyboardBacklightOnTaskStarted:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$9000(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 4289
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$8900()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 4290
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start mDelayKeyboardBacklightOnTask "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/server/PowerManagerService;->access$9400()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms later"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4292
    :cond_11
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDelayKeyboardBacklightOnTask:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$9300(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-static {}, Lcom/android/server/PowerManagerService;->access$9400()J

    move-result-wide v7

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4294
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mDelayKeyboardBacklightOnTaskStarted:Z
    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$9002(Lcom/android/server/PowerManagerService;Z)Z

    goto/16 :goto_1

    .line 4297
    :cond_12
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$8900()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 4298
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mButtonBrightnessOverride="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$8600(Lcom/android/server/PowerManagerService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mKeyboardVisible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$8700(Lcom/android/server/PowerManagerService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4301
    :cond_13
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDelayKeyboardBacklightOnTaskStarted:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$9000(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 4302
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$8900()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 4303
    const-string v3, "PowerManagerService"

    const-string v4, "Stop mDelayKeyboardBacklightOnTask"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4304
    :cond_14
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDelayKeyboardBacklightOnTask:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$9300(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4305
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mDelayKeyboardBacklightOnTaskStarted:Z
    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$9002(Lcom/android/server/PowerManagerService;Z)Z

    .line 4307
    :cond_15
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardBacklightStayOnTaskStarted:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$8800(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 4308
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$8900()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 4309
    const-string v3, "PowerManagerService"

    const-string v4, "Stop mKeyboardBacklightStayOnTask"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4310
    :cond_16
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardBacklightStayOnTask:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$9500(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4311
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mKeyboardBacklightStayOnTaskStarted:Z
    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$8802(Lcom/android/server/PowerManagerService;Z)Z

    .line 4313
    :cond_17
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPendingLightSensorKeyboardBrightness:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$9200(Lcom/android/server/PowerManagerService;)I

    move-result v3

    if-lez v3, :cond_4

    .line 4314
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPendingLightSensorKeyboardBrightness:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$9200(Lcom/android/server/PowerManagerService;)I

    move-result v4

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I
    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$9102(Lcom/android/server/PowerManagerService;I)I

    .line 4316
    iget-object v3, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, -0x1

    #setter for: Lcom/android/server/PowerManagerService;->mPendingLightSensorKeyboardBrightness:I
    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$9202(Lcom/android/server/PowerManagerService;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method
