.class Landroid/media/AudioService$ScoClient;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScoClient"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mCreatorPid:I

.field private mStartcount:I

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .locals 1
    .parameter
    .parameter "cb"

    .prologue
    .line 1463
    iput-object p1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1464
    iput-object p2, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    .line 1465
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Landroid/media/AudioService$ScoClient;->mCreatorPid:I

    .line 1466
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    .line 1467
    return-void
.end method

.method private requestScoState(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 1555
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->checkScoAudioState()V
    invoke-static {v0}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)V

    .line 1556
    invoke-virtual {p0}, Landroid/media/AudioService$ScoClient;->totalCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 1557
    const/16 v0, 0xc

    if-ne p1, v0, :cond_8

    .line 1560
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v1, 0x2

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;I)V

    .line 1563
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/media/AudioService;->access$1000(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1564
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/media/AudioService;->access$1000(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/media/AudioService;->access$1000(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-virtual {v0}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v0

    iget v2, p0, Landroid/media/AudioService$ScoClient;->mCreatorPid:I

    if-ne v0, v2, :cond_7

    :cond_0
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 1568
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v0

    if-nez v0, :cond_6

    .line 1569
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1570
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1572
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x3

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    .line 1587
    :cond_2
    :goto_0
    monitor-exit v1

    .line 1608
    :cond_3
    :goto_1
    return-void

    .line 1574
    :cond_4
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;I)V

    goto :goto_0

    .line 1587
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1577
    :cond_5
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->getBluetoothHeadset()Z
    invoke-static {v0}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1578
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x1

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    goto :goto_0

    .line 1581
    :cond_6
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x3

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    .line 1582
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x1

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;I)V

    goto :goto_0

    .line 1585
    :cond_7
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1588
    :cond_8
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v0

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1591
    :cond_9
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v0

    if-ne v0, v1, :cond_b

    .line 1592
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1593
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1595
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    .line 1596
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;I)V

    goto :goto_1

    .line 1599
    :cond_a
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->getBluetoothHeadset()Z
    invoke-static {v0}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1600
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0, v4}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    goto/16 :goto_1

    .line 1603
    :cond_b
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    .line 1604
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;I)V

    goto/16 :goto_1
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 1470
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 1471
    :try_start_0
    const-string v1, "AudioService"

    const-string v3, "SCO client died"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1473
    .local v0, index:I
    if-gez v0, :cond_0

    .line 1474
    const-string v1, "AudioService"

    const-string/jumbo v3, "unregistered SCO client died"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    :goto_0
    monitor-exit v2

    .line 1480
    return-void

    .line 1476
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/media/AudioService$ScoClient;->clearCount(Z)V

    .line 1477
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1479
    .end local v0           #index:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearCount(Z)V
    .locals 5
    .parameter "stopSco"

    .prologue
    .line 1516
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 1517
    :try_start_0
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1519
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1524
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    .line 1525
    if-eqz p1, :cond_1

    .line 1526
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Landroid/media/AudioService$ScoClient;->requestScoState(I)V

    .line 1528
    :cond_1
    monitor-exit v2

    .line 1529
    return-void

    .line 1520
    :catch_0
    move-exception v0

    .line 1521
    .local v0, e:Ljava/util/NoSuchElementException;
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearCount() mStartcount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != 0 but not registered to binder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1528
    .end local v0           #e:Ljava/util/NoSuchElementException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public decCount()V
    .locals 4

    .prologue
    .line 1498
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 1499
    :try_start_0
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    if-nez v1, :cond_0

    .line 1500
    const-string v1, "AudioService"

    const-string v3, "ScoClient.decCount() already 0"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    :goto_0
    monitor-exit v2

    .line 1513
    return-void

    .line 1502
    :cond_0
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    .line 1503
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 1505
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1510
    :cond_1
    :goto_1
    const/16 v1, 0xa

    :try_start_2
    invoke-direct {p0, v1}, Landroid/media/AudioService$ScoClient;->requestScoState(I)V

    goto :goto_0

    .line 1512
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1506
    :catch_0
    move-exception v0

    .line 1507
    .local v0, e:Ljava/util/NoSuchElementException;
    :try_start_3
    const-string v1, "AudioService"

    const-string v3, "decCount() going to 0 but not registered to binder"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1536
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1532
    iget v0, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    return v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 1540
    iget v0, p0, Landroid/media/AudioService$ScoClient;->mCreatorPid:I

    return v0
.end method

.method public incCount()V
    .locals 5

    .prologue
    .line 1483
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 1484
    const/16 v1, 0xc

    :try_start_0
    invoke-direct {p0, v1}, Landroid/media/AudioService$ScoClient;->requestScoState(I)V

    .line 1485
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1487
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1493
    :cond_0
    :goto_0
    :try_start_2
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    .line 1494
    monitor-exit v2

    .line 1495
    return-void

    .line 1488
    :catch_0
    move-exception v0

    .line 1490
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScoClient  incCount() could not link to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " binder death"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1494
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public totalCount()I
    .locals 5

    .prologue
    .line 1544
    iget-object v3, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 1545
    const/4 v0, 0x0

    .line 1546
    .local v0, count:I
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1547
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1548
    iget-object v3, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$ScoClient;

    invoke-virtual {v3}, Landroid/media/AudioService$ScoClient;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 1547
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1550
    :cond_0
    monitor-exit v4

    return v0

    .line 1551
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
