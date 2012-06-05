.class public final Landroid/bluetooth/BluetoothDun;
.super Ljava/lang/Object;
.source "BluetoothDun.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.dun.profile.action.CONNECTION_STATE_CHANGED"

.field private static final DBG:Z = false

.field public static final DUN_CONNECT_FAILED_ALREADY_CONNECTED:I = 0x3e9

.field public static final DUN_CONNECT_FAILED_ATTEMPT_FAILED:I = 0x3ea

.field public static final DUN_DISCONNECT_FAILED_NOT_CONNECTED:I = 0x3e8

.field public static final DUN_OPERATION_GENERIC_FAILURE:I = 0x3eb

.field public static final DUN_OPERATION_SUCCESS:I = 0x3ec

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothDun"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mService:Landroid/bluetooth/IBluetooth;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 3
    .parameter "mContext"
    .parameter "l"

    .prologue
    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const-string v1, "bluetooth"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 100
    .local v0, b:Landroid/os/IBinder;
    iput-object p2, p0, Landroid/bluetooth/BluetoothDun;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 101
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothDun;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 102
    if-eqz v0, :cond_1

    .line 103
    invoke-static {v0}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetooth;

    .line 104
    iget-object v1, p0, Landroid/bluetooth/BluetoothDun;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Landroid/bluetooth/BluetoothDun;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v2, 0x8

    invoke-interface {v1, v2, p0}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    const-string v1, "BluetoothDun"

    const-string v2, "Bluetooth Service not available!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetooth;

    goto :goto_0
.end method

.method private getActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 140
    :goto_0
    return-object v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isEnabled()Z
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    const/4 v0, 0x0

    .line 193
    if-nez p1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v0

    .line 195
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 230
    const-string v0, "BluetoothDun"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method


# virtual methods
.method public acceptDunConnection()Z
    .locals 4

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 118
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->acceptDunConnection()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 125
    :goto_0
    return v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "BluetoothDun"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    throw v2
.end method

.method public disconnectActiveDunClient()Z
    .locals 2

    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->disconnectActiveDunClient()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 132
    :goto_0
    return v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnectDunClient(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 155
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetooth;->disconnectDunClient(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 162
    :goto_0
    return v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "BluetoothDun"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 158
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    throw v2
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 216
    iget-object v2, p0, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothDun;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDun;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetooth;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 226
    :cond_0
    :goto_0
    return v1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothDun"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothDun;->mService:Landroid/bluetooth/IBluetooth;

    if-nez v2, :cond_0

    const-string v2, "BluetoothDun"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 1
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getRemoteDeviceAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, addr:Ljava/lang/String;
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDun;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 168
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 172
    :cond_0
    return-object v0
.end method

.method public getRemoteDeviceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, name:Ljava/lang/String;
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDun;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 184
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 188
    :cond_0
    return-object v1
.end method
