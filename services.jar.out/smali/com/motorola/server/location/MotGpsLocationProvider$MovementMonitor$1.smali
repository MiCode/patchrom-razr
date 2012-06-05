.class Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;
.super Ljava/lang/Object;
.source "MotGpsLocationProvider.java"

# interfaces
.implements Lcom/motorola/sensorhub/SensorHub$MovementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;


# direct methods
.method constructor <init>(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 2279
    iput-object p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndMovement()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 2325
    const-string v1, "MotGpsLocationProvider"

    const-string v2, "MovementMonitor onEndMovement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2327
    const-string v1, "MotGpsLocationProvider"

    const-string v2, "MovementMonitor onEndMovement when not monitoring!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    :cond_0
    :goto_0
    return-void

    .line 2332
    :cond_1
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mFirstCb:Z
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->access$4600(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mExpectEnd:Z
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->access$4700(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2333
    const-string v1, "MotGpsLocationProvider"

    const-string v2, "MovementMonitor *ignoring* onEndMovement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2337
    :cond_2
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    #setter for: Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mFirstCb:Z
    invoke-static {v1, v3}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->access$4602(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;Z)Z

    .line 2338
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    #setter for: Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mExpectEnd:Z
    invoke-static {v1, v3}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->access$4702(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;Z)Z

    .line 2340
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    #setter for: Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mPropagateTime:J
    invoke-static {v1, v2, v3}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->access$5002(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;J)J

    .line 2344
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    iget-object v2, v1, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    monitor-enter v2

    .line 2346
    :try_start_0
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->updateSavings(ZZ)Z

    move-result v0

    .line 2350
    .local v0, changed:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    iget-object v1, v1, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mLastFixTime:J
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$4500(Lcom/motorola/server/location/MotGpsLocationProvider;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mEndDuration:I
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->access$5100(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)I

    move-result v1

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-gtz v1, :cond_3

    .line 2351
    const-string v1, "MotGpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MovementMonitor hibernate w/ prop interval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mPropInterval:I
    invoke-static {v4}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->access$5200(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    const/4 v3, 0x3

    #setter for: Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mState:I
    invoke-static {v1, v3}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->access$4802(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;I)I

    .line 2353
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    iget-object v1, v1, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    iget-object v3, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mPropInterval:I
    invoke-static {v3}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->access$5200(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)I

    move-result v3

    iget-object v4, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    iget-object v4, v4, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$3800(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v4

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->hibernate_Locked(ILandroid/app/PendingIntent;)V
    invoke-static {v1, v3, v4}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$5300(Lcom/motorola/server/location/MotGpsLocationProvider;ILandroid/app/PendingIntent;)V

    .line 2359
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2362
    if-eqz v0, :cond_0

    .line 2363
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->broadcastSavings(Z)V
    invoke-static {v1, v7}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->access$4900(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;Z)V

    goto/16 :goto_0

    .line 2355
    :cond_3
    :try_start_1
    const-string v1, "MotGpsLocationProvider"

    const-string v3, "MovementMonitor hibernate until sensor hub wakes us"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    const/4 v3, 0x4

    #setter for: Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mState:I
    invoke-static {v1, v3}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->access$4802(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;I)I

    .line 2357
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    iget-object v1, v1, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    const/4 v3, -0x1

    const/4 v4, 0x0

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->hibernate_Locked(ILandroid/app/PendingIntent;)V
    invoke-static {v1, v3, v4}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$5300(Lcom/motorola/server/location/MotGpsLocationProvider;ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 2359
    .end local v0           #changed:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStartMovement()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2282
    const-string v1, "MotGpsLocationProvider"

    const-string v2, "MovementMonitor onStartMovement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2284
    const-string v1, "MotGpsLocationProvider"

    const-string v2, "MovementMonitor onStartMovement when not monitoring!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    :cond_0
    :goto_0
    return-void

    .line 2289
    :cond_1
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mFirstCb:Z
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->access$4600(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mExpectEnd:Z
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->access$4700(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2290
    const-string v1, "MotGpsLocationProvider"

    const-string v2, "MovementMonitor *ignoring* onStartMovement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2294
    :cond_2
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    #setter for: Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mExpectEnd:Z
    invoke-static {v1, v3}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->access$4702(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;Z)Z

    .line 2297
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    iget-object v1, v1, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$3900(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    iget-object v2, v2, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$3800(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2300
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mFirstCb:Z
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->access$4600(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mState:I
    invoke-static {v1}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->access$4800(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 2302
    const-string v1, "MotGpsLocationProvider"

    const-string v2, "onStartMovement(), calling updateNoFix()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->updateNoFix()V

    .line 2307
    :cond_3
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    #setter for: Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->mFirstCb:Z
    invoke-static {v1, v5}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->access$4602(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;Z)Z

    .line 2310
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    iget-object v2, v1, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    monitor-enter v2

    .line 2312
    :try_start_0
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->updateSavings(ZZ)Z

    move-result v0

    .line 2315
    .local v0, changed:Z
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    iget-object v1, v1, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    const/4 v3, 0x0

    const/4 v4, 0x1

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->startNavigating_Locked(ZZ)V
    invoke-static {v1, v3, v4}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$4000(Lcom/motorola/server/location/MotGpsLocationProvider;ZZ)V

    .line 2316
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2319
    if-eqz v0, :cond_0

    .line 2320
    iget-object v1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor$1;->this$1:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->broadcastSavings(Z)V
    invoke-static {v1, v5}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->access$4900(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;Z)V

    goto :goto_0

    .line 2316
    .end local v0           #changed:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
