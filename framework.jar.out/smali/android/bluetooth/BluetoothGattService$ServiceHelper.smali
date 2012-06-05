.class Landroid/bluetooth/BluetoothGattService$ServiceHelper;
.super Landroid/bluetooth/IBluetoothGattService$Stub;
.source "BluetoothGattService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothGattService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHelper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothGattService;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothGattService;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGattService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGattService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 391
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;-><init>(Landroid/bluetooth/BluetoothGattService;)V

    return-void
.end method

.method private setDiscoveryState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 394
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discovery State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->discoveryState:I
    invoke-static {v2}, Landroid/bluetooth/BluetoothGattService;->access$100(Landroid/bluetooth/BluetoothGattService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #setter for: Landroid/bluetooth/BluetoothGattService;->discoveryState:I
    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothGattService;->access$102(Landroid/bluetooth/BluetoothGattService;I)I

    .line 396
    return-void
.end method


# virtual methods
.method public declared-synchronized deregisterCharacteristicsWatcher()Z
    .locals 3

    .prologue
    .line 583
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothGattService"

    const-string v2, "deregisterCharacteristicsWatcher: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mService:Landroid/bluetooth/IBluetooth;
    invoke-static {v1}, Landroid/bluetooth/BluetoothGattService;->access$300(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mObjPath:Ljava/lang/String;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGattService;->access$200(Landroid/bluetooth/BluetoothGattService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->deregisterCharacteristicsWatcher(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 587
    :goto_0
    monitor-exit p0

    return v1

    .line 586
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "BluetoothGattService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 587
    const/4 v1, 0x0

    goto :goto_0

    .line 583
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public discoveryDone()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 399
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->discoveryState:I
    invoke-static {v1}, Landroid/bluetooth/BluetoothGattService;->access$100(Landroid/bluetooth/BluetoothGattService;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doDiscovery()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 407
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doDiscovery "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mObjPath:Ljava/lang/String;
    invoke-static {v3}, Landroid/bluetooth/BluetoothGattService;->access$200(Landroid/bluetooth/BluetoothGattService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->discoveryState:I
    invoke-static {v1}, Landroid/bluetooth/BluetoothGattService;->access$100(Landroid/bluetooth/BluetoothGattService;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 410
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Characteristic discovery is already in progress for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mObjPath:Ljava/lang/String;
    invoke-static {v3}, Landroid/bluetooth/BluetoothGattService;->access$200(Landroid/bluetooth/BluetoothGattService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v1, 0x1

    .line 420
    :goto_0
    return v1

    .line 414
    :cond_0
    invoke-direct {p0, v4}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->setDiscoveryState(I)V

    .line 417
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mService:Landroid/bluetooth/IBluetooth;
    invoke-static {v1}, Landroid/bluetooth/BluetoothGattService;->access$300(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mObjPath:Ljava/lang/String;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGattService;->access$200(Landroid/bluetooth/BluetoothGattService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->discoverCharacteristics(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothGattService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized fetchCharValue(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 564
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mService:Landroid/bluetooth/IBluetooth;
    invoke-static {v1}, Landroid/bluetooth/BluetoothGattService;->access$300(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->updateCharacteristicValue(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 567
    :goto_0
    monitor-exit p0

    return v1

    .line 565
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothGattService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 567
    const/4 v1, 0x0

    goto :goto_0

    .line 564
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onCharacteristicValueUpdated(Ljava/lang/String;Z)V
    .locals 3
    .parameter "path"
    .parameter "result"

    .prologue
    .line 547
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mClosed:Z
    invoke-static {v1}, Landroid/bluetooth/BluetoothGattService;->access$500(Landroid/bluetooth/BluetoothGattService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 551
    :cond_1
    if-eqz p2, :cond_2

    .line 552
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #calls: Landroid/bluetooth/BluetoothGattService;->updateCharacteristicPropertyCache(Ljava/lang/String;)V
    invoke-static {v1, p1}, Landroid/bluetooth/BluetoothGattService;->access$1000(Landroid/bluetooth/BluetoothGattService;Ljava/lang/String;)V

    .line 555
    :cond_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->profileCallback:Landroid/bluetooth/IBluetoothGattProfile;
    invoke-static {v1}, Landroid/bluetooth/BluetoothGattService;->access$900(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/IBluetoothGattProfile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 557
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->profileCallback:Landroid/bluetooth/IBluetoothGattProfile;
    invoke-static {v1}, Landroid/bluetooth/BluetoothGattService;->access$900(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/IBluetoothGattProfile;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothGattProfile;->onUpdateCharacteristicValueResult(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 558
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "BluetoothGattService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 547
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onCharacteristicsDiscovered([Ljava/lang/String;Z)V
    .locals 7
    .parameter "paths"
    .parameter "result"

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    const-string v4, "BluetoothGattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCharacteristicsDiscovered: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mClosed:Z
    invoke-static {v4}, Landroid/bluetooth/BluetoothGattService;->access$500(Landroid/bluetooth/BluetoothGattService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 479
    :goto_0
    monitor-exit p0

    return-void

    .line 448
    :cond_0
    if-eqz p1, :cond_2

    .line 450
    :try_start_1
    array-length v0, p1

    .line 452
    .local v0, count:I
    const-string v4, "BluetoothGattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Discovered  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " characteristics for service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mObjPath:Ljava/lang/String;
    invoke-static {v6}, Landroid/bluetooth/BluetoothGattService;->access$200(Landroid/bluetooth/BluetoothGattService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mName:Ljava/lang/String;
    invoke-static {v6}, Landroid/bluetooth/BluetoothGattService;->access$600(Landroid/bluetooth/BluetoothGattService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #setter for: Landroid/bluetooth/BluetoothGattService;->characteristicPaths:[Ljava/lang/String;
    invoke-static {v4, p1}, Landroid/bluetooth/BluetoothGattService;->access$702(Landroid/bluetooth/BluetoothGattService;[Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 458
    const/4 v3, 0x0

    .line 461
    .local v3, properties:[Ljava/lang/String;
    :try_start_2
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mService:Landroid/bluetooth/IBluetooth;
    invoke-static {v4}, Landroid/bluetooth/BluetoothGattService;->access$300(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    aget-object v5, p1, v2

    invoke-interface {v4, v5}, Landroid/bluetooth/IBluetooth;->getCharacteristicProperties(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    .line 464
    :goto_2
    if-eqz v3, :cond_1

    .line 465
    :try_start_3
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    aget-object v5, p1, v2

    #calls: Landroid/bluetooth/BluetoothGattService;->addCharacteristicProperties(Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v4, v5, v3}, Landroid/bluetooth/BluetoothGattService;->access$800(Landroid/bluetooth/BluetoothGattService;Ljava/lang/String;[Ljava/lang/String;)V

    .line 456
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 462
    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "BluetoothGattService"

    const-string v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 440
    .end local v0           #count:I
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #i:I
    .end local v3           #properties:[Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 470
    :cond_2
    const/4 v4, 0x1

    :try_start_4
    invoke-direct {p0, v4}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->setDiscoveryState(I)V

    .line 472
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->profileCallback:Landroid/bluetooth/IBluetoothGattProfile;
    invoke-static {v4}, Landroid/bluetooth/BluetoothGattService;->access$900(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/IBluetoothGattProfile;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_3

    .line 474
    :try_start_5
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->profileCallback:Landroid/bluetooth/IBluetoothGattProfile;
    invoke-static {v4}, Landroid/bluetooth/BluetoothGattService;->access$900(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/IBluetoothGattProfile;

    move-result-object v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mObjPath:Ljava/lang/String;
    invoke-static {v5}, Landroid/bluetooth/BluetoothGattService;->access$200(Landroid/bluetooth/BluetoothGattService;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Landroid/bluetooth/IBluetoothGattProfile;->onDiscoverCharacteristicsResult(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 478
    :cond_3
    :goto_3
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto/16 :goto_0

    .line 475
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v4, "BluetoothGattService"

    const-string v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method public declared-synchronized onSetCharacteristicProperty(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter "path"
    .parameter "property"
    .parameter "result"

    .prologue
    .line 483
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetCharacteristicProperty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mClosed:Z
    invoke-static {v1}, Landroid/bluetooth/BluetoothGattService;->access$500(Landroid/bluetooth/BluetoothGattService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 511
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 489
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 492
    :try_start_1
    const-string v1, "Value"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 494
    if-eqz p3, :cond_2

    .line 495
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #calls: Landroid/bluetooth/BluetoothGattService;->updateCharacteristicPropertyCache(Ljava/lang/String;)V
    invoke-static {v1, p1}, Landroid/bluetooth/BluetoothGattService;->access$1000(Landroid/bluetooth/BluetoothGattService;Ljava/lang/String;)V

    .line 497
    :cond_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->profileCallback:Landroid/bluetooth/IBluetoothGattProfile;
    invoke-static {v1}, Landroid/bluetooth/BluetoothGattService;->access$900(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/IBluetoothGattProfile;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 498
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->profileCallback:Landroid/bluetooth/IBluetoothGattProfile;
    invoke-static {v1}, Landroid/bluetooth/BluetoothGattService;->access$900(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/IBluetoothGattProfile;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Landroid/bluetooth/IBluetoothGattProfile;->onSetCharacteristicValueResult(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 501
    :cond_3
    :goto_1
    :try_start_3
    const-string v1, "ClientConfiguration"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    if-eqz p3, :cond_4

    .line 504
    :try_start_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #calls: Landroid/bluetooth/BluetoothGattService;->updateCharacteristicPropertyCache(Ljava/lang/String;)V
    invoke-static {v1, p1}, Landroid/bluetooth/BluetoothGattService;->access$1000(Landroid/bluetooth/BluetoothGattService;Ljava/lang/String;)V

    .line 506
    :cond_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->profileCallback:Landroid/bluetooth/IBluetoothGattProfile;
    invoke-static {v1}, Landroid/bluetooth/BluetoothGattService;->access$900(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/IBluetoothGattProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->profileCallback:Landroid/bluetooth/IBluetoothGattProfile;
    invoke-static {v1}, Landroid/bluetooth/BluetoothGattService;->access$900(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/IBluetoothGattProfile;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Landroid/bluetooth/IBluetoothGattProfile;->onSetCharacteristicCliConfResult(Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v1, "BluetoothGattService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 483
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 499
    :catch_1
    move-exception v0

    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_6
    const-string v1, "BluetoothGattService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized onValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "path"
    .parameter "value"

    .prologue
    .line 516
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mClosed:Z
    invoke-static {v1}, Landroid/bluetooth/BluetoothGattService;->access$500(Landroid/bluetooth/BluetoothGattService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 532
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 520
    :cond_1
    if-eqz p1, :cond_0

    .line 523
    :try_start_1
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WatcherValueChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->profileCallback:Landroid/bluetooth/IBluetoothGattProfile;
    invoke-static {v1}, Landroid/bluetooth/BluetoothGattService;->access$900(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/IBluetoothGattProfile;

    move-result-object v1

    if-nez v1, :cond_2

    .line 526
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->deregisterCharacteristicsWatcher()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 516
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 530
    :cond_2
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->profileCallback:Landroid/bluetooth/IBluetoothGattProfile;
    invoke-static {v1}, Landroid/bluetooth/BluetoothGattService;->access$900(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/IBluetoothGattProfile;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothGattProfile;->onValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 531
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "BluetoothGattService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized registerCharacteristicsWatcher()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 571
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothGattService"

    const-string v3, "registerCharacteristicsWatcher: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mService:Landroid/bluetooth/IBluetooth;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGattService;->access$300(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mObjPath:Ljava/lang/String;
    invoke-static {v3}, Landroid/bluetooth/BluetoothGattService;->access$200(Landroid/bluetooth/BluetoothGattService;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Landroid/bluetooth/IBluetooth;->registerCharacteristicsWatcher(Ljava/lang/String;Landroid/bluetooth/IBluetoothGattService;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-ne v2, v1, :cond_0

    .line 579
    :goto_0
    monitor-exit p0

    return v1

    .line 577
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "BluetoothGattService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 579
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 571
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setCharacteristicProperty(Ljava/lang/String;Ljava/lang/String;[BZ)Z
    .locals 3
    .parameter "path"
    .parameter "key"
    .parameter "value"
    .parameter "reliable"

    .prologue
    .line 536
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothGattService"

    const-string/jumbo v2, "setCharacteristicProperty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mService:Landroid/bluetooth/IBluetooth;
    invoke-static {v1}, Landroid/bluetooth/BluetoothGattService;->access$300(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/bluetooth/IBluetooth;->setCharacteristicProperty(Ljava/lang/String;Ljava/lang/String;[BZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 541
    :goto_0
    monitor-exit p0

    return v1

    .line 539
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "BluetoothGattService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 541
    const/4 v1, 0x0

    goto :goto_0

    .line 536
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startRemoteGattService()V
    .locals 5

    .prologue
    .line 425
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->setDiscoveryState(I)V

    .line 428
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mService:Landroid/bluetooth/IBluetooth;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGattService;->access$300(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mObjPath:Ljava/lang/String;
    invoke-static {v3}, Landroid/bluetooth/BluetoothGattService;->access$200(Landroid/bluetooth/BluetoothGattService;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Landroid/bluetooth/IBluetooth;->startRemoteGattService(Ljava/lang/String;Landroid/bluetooth/IBluetoothGattService;)Z

    .line 430
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mService:Landroid/bluetooth/IBluetooth;
    invoke-static {v2}, Landroid/bluetooth/BluetoothGattService;->access$300(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/bluetooth/BluetoothGattService;->access$400(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetooth;->getBondState(Ljava/lang/String;)I

    move-result v1

    .line 431
    .local v1, state:I
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bond state of remote device : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->this$0:Landroid/bluetooth/BluetoothGattService;

    #getter for: Landroid/bluetooth/BluetoothGattService;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Landroid/bluetooth/BluetoothGattService;->access$400(Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattService$ServiceHelper;->doDiscovery()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .end local v1           #state:I
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattService"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized waitDiscoveryDone()V
    .locals 3

    .prologue
    .line 593
    monitor-enter p0

    const-wide/32 v1, 0xea60

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    monitor-exit p0

    return-void

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "BluetoothGattService"

    const-string v2, "Characteristics discovery takes too long"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 593
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
