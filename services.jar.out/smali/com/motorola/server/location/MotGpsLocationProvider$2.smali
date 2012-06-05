.class Lcom/motorola/server/location/MotGpsLocationProvider$2;
.super Landroid/content/BroadcastReceiver;
.source "MotGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/location/MotGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/location/MotGpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/motorola/server/location/MotGpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 491
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 496
    const-string v5, "MotGpsLocationProvider"

    const-string v6, "action==null in BroadcastReceiver::onReceive()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    const-string v7, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 503
    const-string v5, "MotGpsLocationProvider"

    const-string v7, "ALARM_WAKEUP"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->startNavigating(ZZ)V
    invoke-static {v5, v6, v6}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$400(Lcom/motorola/server/location/MotGpsLocationProvider;ZZ)V

    goto :goto_0

    .line 505
    :cond_2
    const-string v7, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 506
    const-string v5, "MotGpsLocationProvider"

    const-string v6, "ALARM_TIMEOUT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mFixInterval:I
    invoke-static {v6}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$500(Lcom/motorola/server/location/MotGpsLocationProvider;)I

    move-result v6

    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;
    invoke-static {v7}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$600(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v7

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->hibernate(ILandroid/app/PendingIntent;)V
    invoke-static {v5, v6, v7}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$700(Lcom/motorola/server/location/MotGpsLocationProvider;ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 508
    :cond_3
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 509
    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;
    invoke-static {v7}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$800(Lcom/motorola/server/location/MotGpsLocationProvider;)Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 510
    const-string v7, "plugged"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 511
    .local v2, plugged:I
    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;
    invoke-static {v7}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$800(Lcom/motorola/server/location/MotGpsLocationProvider;)Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    move-result-object v7

    if-eqz v2, :cond_4

    :goto_1
    invoke-virtual {v7, v5}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->updateCharging(Z)V

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_1

    .line 513
    .end local v2           #plugged:I
    :cond_5
    const-string v7, "com.android.internal.location.ALARM_MVMT_MON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 514
    const-string v5, "MotGpsLocationProvider"

    const-string v7, "ALARM_MVMT_MON"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;
    invoke-static {v5}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$800(Lcom/motorola/server/location/MotGpsLocationProvider;)Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 516
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;
    invoke-static {v5}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$800(Lcom/motorola/server/location/MotGpsLocationProvider;)Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->isPropagating()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 517
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;
    invoke-static {v5}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$800(Lcom/motorola/server/location/MotGpsLocationProvider;)Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    move-result-object v5

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->propagate()V
    invoke-static {v5}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->access$900(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)V

    goto/16 :goto_0

    .line 519
    :cond_6
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;
    invoke-static {v5}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$800(Lcom/motorola/server/location/MotGpsLocationProvider;)Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->monitor(Z)V

    goto/16 :goto_0

    .line 522
    :cond_7
    const-string v7, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 523
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$1000(Lcom/motorola/server/location/MotGpsLocationProvider;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 524
    :cond_8
    const-string v7, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 525
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$1100(Lcom/motorola/server/location/MotGpsLocationProvider;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 528
    :cond_9
    const-string v7, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 529
    const-string v5, "state"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 530
    .local v4, state:Ljava/lang/String;
    const-string v5, "apn"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, apnName:Ljava/lang/String;
    const-string v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 533
    .local v3, reason:Ljava/lang/String;
    const-string v5, "MotGpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " apnName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const-string v5, "CONNECTED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a

    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->checkAPNforAGPS()Z
    invoke-static {v5}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$1200(Lcom/motorola/server/location/MotGpsLocationProvider;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 535
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #setter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsApn:Ljava/lang/String;
    invoke-static {v5, v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$1302(Lcom/motorola/server/location/MotGpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 536
    const-string v5, "MotGpsLocationProvider"

    const-string v6, "call native_agps_data_conn_open"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsApn:Ljava/lang/String;
    invoke-static {v6}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$1300(Lcom/motorola/server/location/MotGpsLocationProvider;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$1400(Lcom/motorola/server/location/MotGpsLocationProvider;Ljava/lang/String;)V

    .line 538
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    const/4 v6, 0x2

    #setter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsDataConnectionState:I
    invoke-static {v5, v6}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$1502(Lcom/motorola/server/location/MotGpsLocationProvider;I)I

    goto/16 :goto_0

    .line 540
    :cond_a
    const-string v5, "MotGpsLocationProvider"

    const-string v6, "not connected or not agpn_apn. call native_agps_data_conn_failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v5, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->native_agps_data_conn_failed()V
    invoke-static {v5}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$1600(Lcom/motorola/server/location/MotGpsLocationProvider;)V

    goto/16 :goto_0

    .line 543
    .end local v1           #apnName:Ljava/lang/String;
    .end local v3           #reason:Ljava/lang/String;
    .end local v4           #state:Ljava/lang/String;
    :cond_b
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 544
    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    iget-object v8, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$100(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v5, :cond_c

    :goto_2
    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->PutGPSReady(Z)V
    invoke-static {v7, v6}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$1700(Lcom/motorola/server/location/MotGpsLocationProvider;Z)V

    goto/16 :goto_0

    :cond_c
    move v6, v5

    goto :goto_2
.end method
