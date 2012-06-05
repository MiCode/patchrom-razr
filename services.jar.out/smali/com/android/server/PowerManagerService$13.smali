.class Lcom/android/server/PowerManagerService$13;
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
    .line 4156
    iput-object p1, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 4221
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 16
    .parameter "event"

    .prologue
    .line 4158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 4159
    .local v4, milliseconds:J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v10

    monitor-enter v10

    .line 4160
    :try_start_0
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x0

    aget v2, v9, v11

    .line 4161
    .local v2, distance:F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J
    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$7500(Lcom/android/server/PowerManagerService;)J

    move-result-wide v11

    sub-long v7, v4, v11

    .line 4162
    .local v7, timeSinceLastEvent:J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #setter for: Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J
    invoke-static {v9, v4, v5}, Lcom/android/server/PowerManagerService;->access$7502(Lcom/android/server/PowerManagerService;J)J

    .line 4163
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$7600(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4164
    const/4 v6, 0x0

    .line 4167
    .local v6, proximityTaskQueued:Z
    float-to-double v11, v2

    const-wide/16 v13, 0x0

    cmpl-double v9, v11, v13

    if-ltz v9, :cond_3

    const/high16 v9, 0x40a0

    cmpg-float v9, v2, v9

    if-gez v9, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$7700(Lcom/android/server/PowerManagerService;)Landroid/hardware/Sensor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v9

    cmpg-float v9, v2, v9

    if-gez v9, :cond_3

    const/4 v1, 0x1

    .line 4170
    .local v1, active:Z
    :goto_0
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$6600()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4174
    const-string v9, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mProximityListener.onSensorChanged active:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " timeSinceLastEvent="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4179
    :cond_0
    const-wide/16 v11, 0x3e8

    cmp-long v9, v7, v11

    if-gez v9, :cond_5

    .line 4181
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    if-eqz v1, :cond_4

    const/4 v9, 0x1

    :goto_1
    #setter for: Lcom/android/server/PowerManagerService;->mProximityPendingValue:I
    invoke-static {v11, v9}, Lcom/android/server/PowerManagerService;->access$6702(Lcom/android/server/PowerManagerService;I)I

    .line 4186
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$6600()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4187
    const-string v9, "PowerManagerService"

    const-string v11, "postDelayed for PROXIMITY_SENSOR_DELAY"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4188
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$7600(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v11

    const-wide/16 v12, 0x3e8

    invoke-static {}, Lcom/android/server/PowerManagerService;->access$7800()J

    move-result-wide v14

    add-long/2addr v12, v14

    sub-long/2addr v12, v7

    invoke-virtual {v9, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4190
    const/4 v6, 0x1

    .line 4209
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$6900(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->isHeld()Z

    move-result v3

    .line 4210
    .local v3, held:Z
    if-nez v3, :cond_8

    if-eqz v6, :cond_8

    .line 4212
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$6900(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 4216
    :cond_2
    :goto_3
    monitor-exit v10

    .line 4217
    return-void

    .line 4167
    .end local v1           #active:Z
    .end local v3           #held:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 4181
    .restart local v1       #active:Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 4192
    :cond_5
    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/server/PowerManagerService;->access$7800()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v9, v11, v13

    if-lez v9, :cond_7

    .line 4193
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v11, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mProximityPendingValue:I
    invoke-static {v9, v11}, Lcom/android/server/PowerManagerService;->access$6702(Lcom/android/server/PowerManagerService;I)I

    .line 4195
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$6600()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 4196
    const-string v9, "PowerManagerService"

    const-string v11, "postDelayed for PROXIMITY_SCREENOFF_DEPLAY"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4197
    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$7600(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v11

    invoke-static {}, Lcom/android/server/PowerManagerService;->access$7800()J

    move-result-wide v12

    invoke-virtual {v9, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4198
    const/4 v6, 0x1

    goto :goto_2

    .line 4204
    :cond_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v11, -0x1

    #setter for: Lcom/android/server/PowerManagerService;->mProximityPendingValue:I
    invoke-static {v9, v11}, Lcom/android/server/PowerManagerService;->access$6702(Lcom/android/server/PowerManagerService;I)I

    .line 4205
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->proximityChangedLocked(Z)V
    invoke-static {v9, v1}, Lcom/android/server/PowerManagerService;->access$6800(Lcom/android/server/PowerManagerService;Z)V

    goto :goto_2

    .line 4216
    .end local v1           #active:Z
    .end local v2           #distance:F
    .end local v6           #proximityTaskQueued:Z
    .end local v7           #timeSinceLastEvent:J
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 4213
    .restart local v1       #active:Z
    .restart local v2       #distance:F
    .restart local v3       #held:Z
    .restart local v6       #proximityTaskQueued:Z
    .restart local v7       #timeSinceLastEvent:J
    :cond_8
    if-eqz v3, :cond_2

    if-nez v6, :cond_2

    .line 4214
    :try_start_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$6900(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method
