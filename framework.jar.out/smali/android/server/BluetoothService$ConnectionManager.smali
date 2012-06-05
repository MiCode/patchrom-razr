.class Landroid/server/BluetoothService$ConnectionManager;
.super Ljava/lang/Object;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    }
.end annotation


# instance fields
.field private mA2dpAudioActive:Z

.field private mBtPolicyHandle:I

.field private mBtPolicyHandlesAvailable:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mScoAudioActive:Z

.field private mUseWifiForBtTransfers:Z

.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method private constructor <init>(Landroid/server/BluetoothService;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 911
    iput-object p1, p0, Landroid/server/BluetoothService$ConnectionManager;->this$0:Landroid/server/BluetoothService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 912
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mConnectionList:Ljava/util/LinkedList;

    .line 913
    iput-boolean v1, p0, Landroid/server/BluetoothService$ConnectionManager;->mScoAudioActive:Z

    .line 914
    iput-boolean v1, p0, Landroid/server/BluetoothService$ConnectionManager;->mA2dpAudioActive:Z

    .line 915
    iput-boolean v2, p0, Landroid/server/BluetoothService$ConnectionManager;->mUseWifiForBtTransfers:Z

    .line 917
    iput v2, p0, Landroid/server/BluetoothService$ConnectionManager;->mBtPolicyHandle:I

    .line 918
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mBtPolicyHandlesAvailable:Ljava/util/LinkedList;

    .line 920
    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothService;Landroid/server/BluetoothService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 911
    invoke-direct {p0, p1}, Landroid/server/BluetoothService$ConnectionManager;-><init>(Landroid/server/BluetoothService;)V

    return-void
.end method

.method static synthetic access$400(Landroid/server/BluetoothService$ConnectionManager;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 911
    iget-object v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mBtPolicyHandlesAvailable:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$500(Landroid/server/BluetoothService$ConnectionManager;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 911
    invoke-direct {p0, p1}, Landroid/server/BluetoothService$ConnectionManager;->validateAmpPolicy(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/server/BluetoothService$ConnectionManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 911
    iget v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mBtPolicyHandle:I

    return v0
.end method

.method static synthetic access$604(Landroid/server/BluetoothService$ConnectionManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 911
    iget v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mBtPolicyHandle:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mBtPolicyHandle:I

    return v0
.end method

.method private updateConnectionAmpPolicies()Z
    .locals 7

    .prologue
    .line 1041
    const/4 v3, 0x1

    .line 1042
    .local v3, result:Z
    iget-object v5, p0, Landroid/server/BluetoothService$ConnectionManager;->mConnectionList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 1043
    .local v2, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1044
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;

    .line 1045
    .local v4, thisBtPolicyCallback:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    iget v5, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mDesiredAmpPolicy:I

    invoke-virtual {p0, v5}, Landroid/server/BluetoothService$ConnectionManager;->getEffectiveAmpPolicy(I)I

    move-result v0

    .line 1046
    .local v0, allowedPolicy:I
    iget v5, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mCurrentAmpPolicy:I

    if-eq v0, v5, :cond_0

    .line 1048
    :try_start_0
    iget-object v5, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v5, v0}, Landroid/bluetooth/IBluetoothCallback;->onAmpPolicyChange(I)V

    .line 1049
    iput v0, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mCurrentAmpPolicy:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1050
    :catch_0
    move-exception v1

    .line 1051
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "BluetoothService"

    const-string v6, ""

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1052
    const/4 v3, 0x0

    goto :goto_0

    .line 1056
    .end local v0           #allowedPolicy:I
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v4           #thisBtPolicyCallback:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    :cond_1
    return v3
.end method

.method private validateAmpPolicy(I)I
    .locals 1
    .parameter "policy"

    .prologue
    .line 956
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 960
    .end local p1
    :cond_0
    :goto_0
    return p1

    .restart local p1
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized deregisterEl2capConnection(I)V
    .locals 3
    .parameter "handle"

    .prologue
    .line 977
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothService$ConnectionManager;->mConnectionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 978
    .local v0, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 979
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;

    .line 980
    .local v1, thisBtPolicyCallback:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    iget v2, v1, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mHandle:I

    if-ne v2, p1, :cond_0

    .line 981
    invoke-virtual {v1, p1}, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->removeHandle(I)Z

    .line 982
    iget-object v2, p0, Landroid/server/BluetoothService$ConnectionManager;->mConnectionList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    .end local v1           #thisBtPolicyCallback:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    :cond_1
    monitor-exit p0

    return-void

    .line 977
    .end local v0           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getEffectiveAmpPolicy(I)I
    .locals 1
    .parameter "policy"

    .prologue
    .line 964
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mScoAudioActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mA2dpAudioActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mUseWifiForBtTransfers:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 965
    :cond_0
    const/4 v0, 0x0

    .line 967
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Landroid/server/BluetoothService$ConnectionManager;->validateAmpPolicy(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 964
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerEl2capConnection(Landroid/bluetooth/IBluetoothCallback;I)I
    .locals 2
    .parameter "callback"
    .parameter "initialPolicy"

    .prologue
    .line 971
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;

    invoke-direct {v0, p0, p1, p2}, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;-><init>(Landroid/server/BluetoothService$ConnectionManager;Landroid/bluetooth/IBluetoothCallback;I)V

    .line 972
    .local v0, bpc:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    iget-object v1, p0, Landroid/server/BluetoothService$ConnectionManager;->mConnectionList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 973
    invoke-virtual {v0}, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->getHandle()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 971
    .end local v0           #bpc:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setA2dpAudioActive(Z)V
    .locals 3
    .parameter "active"

    .prologue
    .line 1022
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setA2dpAudioActive(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget-boolean v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mA2dpAudioActive:Z

    if-eq v0, p1, :cond_0

    .line 1025
    iput-boolean p1, p0, Landroid/server/BluetoothService$ConnectionManager;->mA2dpAudioActive:Z

    .line 1026
    invoke-direct {p0}, Landroid/server/BluetoothService$ConnectionManager;->updateConnectionAmpPolicies()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1028
    :cond_0
    monitor-exit p0

    return-void

    .line 1022
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDesiredAmpPolicy(II)Z
    .locals 7
    .parameter "handle"
    .parameter "policy"

    .prologue
    .line 989
    monitor-enter p0

    const/4 v3, 0x1

    .line 990
    .local v3, result:Z
    :try_start_0
    iget-object v5, p0, Landroid/server/BluetoothService$ConnectionManager;->mConnectionList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 991
    .local v2, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;>;"
    invoke-direct {p0, p2}, Landroid/server/BluetoothService$ConnectionManager;->validateAmpPolicy(I)I

    move-result p2

    .line 992
    invoke-virtual {p0, p2}, Landroid/server/BluetoothService$ConnectionManager;->getEffectiveAmpPolicy(I)I

    move-result v0

    .line 993
    .local v0, allowedPolicy:I
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 994
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;

    .line 995
    .local v4, thisBtPolicyCallback:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    iget v5, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mHandle:I

    if-ne v5, p1, :cond_0

    .line 996
    iget v5, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mCurrentAmpPolicy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v5, v0, :cond_1

    .line 998
    :try_start_1
    iget-object v5, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v5, v0}, Landroid/bluetooth/IBluetoothCallback;->onAmpPolicyChange(I)V

    .line 999
    iput v0, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mCurrentAmpPolicy:I

    .line 1000
    iput p2, v4, Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;->mDesiredAmpPolicy:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1009
    .end local v4           #thisBtPolicyCallback:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    :cond_1
    :goto_0
    monitor-exit p0

    return v3

    .line 1001
    .restart local v4       #thisBtPolicyCallback:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    :catch_0
    move-exception v1

    .line 1002
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "BluetoothService"

    const-string v6, ""

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1003
    const/4 v3, 0x0

    .line 1004
    goto :goto_0

    .line 989
    .end local v0           #allowedPolicy:I
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;>;"
    .end local v4           #thisBtPolicyCallback:Landroid/server/BluetoothService$ConnectionManager$BtPolicyCallback;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setScoAudioActive(Z)V
    .locals 3
    .parameter "active"

    .prologue
    .line 1013
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScoAudioActive(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-boolean v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mScoAudioActive:Z

    if-eq v0, p1, :cond_0

    .line 1016
    iput-boolean p1, p0, Landroid/server/BluetoothService$ConnectionManager;->mScoAudioActive:Z

    .line 1017
    invoke-direct {p0}, Landroid/server/BluetoothService$ConnectionManager;->updateConnectionAmpPolicies()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1019
    :cond_0
    monitor-exit p0

    return-void

    .line 1013
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseWifiForBtTransfers(Z)V
    .locals 3
    .parameter "useWifi"

    .prologue
    .line 1031
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUseWifiForBtTransfers(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-boolean v0, p0, Landroid/server/BluetoothService$ConnectionManager;->mUseWifiForBtTransfers:Z

    if-eq v0, p1, :cond_0

    .line 1034
    iput-boolean p1, p0, Landroid/server/BluetoothService$ConnectionManager;->mUseWifiForBtTransfers:Z

    .line 1035
    invoke-direct {p0}, Landroid/server/BluetoothService$ConnectionManager;->updateConnectionAmpPolicies()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1037
    :cond_0
    monitor-exit p0

    return-void

    .line 1031
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
