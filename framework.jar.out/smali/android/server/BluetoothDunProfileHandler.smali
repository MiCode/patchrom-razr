.class public Landroid/server/BluetoothDunProfileHandler;
.super Ljava/lang/Object;
.source "BluetoothDunProfileHandler.java"


# static fields
.field private static final ATCMD_DUN_DOWN:Ljava/lang/String; = "com.motorola.intent.action.ATCMD_DUN_DOWN"

.field private static final ATCMD_DUN_UP:Ljava/lang/String; = "com.motorola.intent.action.ATCMD_DUN_UP"

.field public static final BLUETOOTH_DUN_SERVICE:Ljava/lang/String; = "bluetooth_dun"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final BT_ATCMD_SERVICE_START_INTENT:Ljava/lang/String; = "com.motorola.intent.action.BT_ATCMD_SERVICE_START"

.field private static final BT_ATCMD_STOP_OR_CLOSEDEV_INTENT:Ljava/lang/String; = "com.motorola.intent.action.BT_ATCMD_SERVICE_STOP_OR_CLOSEDEV"

.field private static final BT_INCOMING_DUN_CONNECTION_INTENT:Ljava/lang/String; = "com.motorola.intent.action.INCOMING_DUN_CONNECTION"

.field private static final BT_INCOMING_DUN_CONNECTION_RELEASED_INTENT:Ljava/lang/String; = "com.motorola.intent.action.INCOMING_DUN_CONNECTION_RELEASED"

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothDunProfileHandler"

.field private static mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

.field public static sInstance:Landroid/server/BluetoothDunProfileHandler;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothDUNEnabled:Z

.field private mBluetoothService:Landroid/server/BluetoothService;

.field private mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mPolicyAllowDun:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mRfcommDevicePath:Ljava/lang/String;

.field private mState:I

.field private mUsbDunConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    :try_start_0
    const-string v1, "/system/lib/libmot_bluetooth_jni.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 69
    const-string v1, "BluetoothDunProfileHandler"

    const-string v2, "libmot_bluetooth_jni.so loaded success"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {}, Landroid/server/BluetoothDunProfileHandler;->classInitNative()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 71
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 72
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "BluetoothDunProfileHandler"

    const-string v2, "libmot_bluetooth_jni.so loaded failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .locals 4
    .parameter "context"
    .parameter "service"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v2, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    .line 58
    iput-boolean v2, p0, Landroid/server/BluetoothDunProfileHandler;->mUsbDunConnected:Z

    .line 59
    iput-boolean v2, p0, Landroid/server/BluetoothDunProfileHandler;->mBluetoothDUNEnabled:Z

    .line 61
    iput-object v3, p0, Landroid/server/BluetoothDunProfileHandler;->mRfcommDevicePath:Ljava/lang/String;

    .line 62
    iput-object v3, p0, Landroid/server/BluetoothDunProfileHandler;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 189
    new-instance v0, Landroid/server/BluetoothDunProfileHandler$1;

    invoke-direct {v0, p0}, Landroid/server/BluetoothDunProfileHandler$1;-><init>(Landroid/server/BluetoothDunProfileHandler;)V

    iput-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    iput-object p1, p0, Landroid/server/BluetoothDunProfileHandler;->mContext:Landroid/content/Context;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/server/BluetoothDunProfileHandler;->mPolicyAllowDun:Z

    .line 80
    iput-object p2, p0, Landroid/server/BluetoothDunProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    .line 82
    const-string v0, "ro.mot.btdun.disable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/server/BluetoothDunProfileHandler;->mBluetoothDUNEnabled:Z

    .line 89
    :goto_0
    iget-boolean v0, p0, Landroid/server/BluetoothDunProfileHandler;->mBluetoothDUNEnabled:Z

    if-eqz v0, :cond_2

    .line 90
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->initDunNative()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not init BluetoothDunService"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    const-string v0, "BluetoothDunProfileHandler"

    const-string v1, "DUN disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iput-boolean v2, p0, Landroid/server/BluetoothDunProfileHandler;->mBluetoothDUNEnabled:Z

    goto :goto_0

    .line 93
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 94
    iget-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.motorola.intent.action.ATCMD_DUN_UP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.motorola.intent.action.ATCMD_DUN_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.motorola.app.action.INTERNET_SHARING_ALLOWED_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/server/BluetoothDunProfileHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/server/BluetoothDunProfileHandler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    :goto_1
    return-void

    .line 101
    :cond_2
    iput-object v3, p0, Landroid/server/BluetoothDunProfileHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 102
    iput-object v3, p0, Landroid/server/BluetoothDunProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    .line 103
    iput-object v3, p0, Landroid/server/BluetoothDunProfileHandler;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    goto :goto_1
.end method

.method static synthetic access$002(Landroid/server/BluetoothDunProfileHandler;Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Landroid/server/BluetoothDunProfileHandler;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p1
.end method

.method static synthetic access$100(Landroid/server/BluetoothDunProfileHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->onBluetoothEnable()V

    return-void
.end method

.method static synthetic access$200(Landroid/server/BluetoothDunProfileHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->onBluetoothDisable()V

    return-void
.end method

.method static synthetic access$302(Landroid/server/BluetoothDunProfileHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Landroid/server/BluetoothDunProfileHandler;->mUsbDunConnected:Z

    return p1
.end method

.method static synthetic access$400(Landroid/server/BluetoothDunProfileHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/server/BluetoothDunProfileHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->stopAtCmdService()V

    return-void
.end method

.method static synthetic access$600()Lcom/motorola/motepm/MotDevicePolicyManager;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Landroid/server/BluetoothDunProfileHandler;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    return-object v0
.end method

.method static synthetic access$700(Landroid/server/BluetoothDunProfileHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Landroid/server/BluetoothDunProfileHandler;->mPolicyAllowDun:Z

    return v0
.end method

.method static synthetic access$702(Landroid/server/BluetoothDunProfileHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Landroid/server/BluetoothDunProfileHandler;->mPolicyAllowDun:Z

    return p1
.end method

.method static synthetic access$800(Landroid/server/BluetoothDunProfileHandler;)Landroid/server/BluetoothService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    return-object v0
.end method

.method static synthetic access$900(Landroid/server/BluetoothDunProfileHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->onDunDisconnected()V

    return-void
.end method

.method private cancelWaitingForUserAuth()V
    .locals 3

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.intent.action.INCOMING_DUN_CONNECTION_RELEASED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "DevType"

    const-string v2, "BTDUN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send out the intent to end the user confirmation dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Landroid/server/BluetoothDunProfileHandler;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupDunNative()V
.end method

.method private native connectDunNative()Z
.end method

.method private native disconnectDunNative()Z
.end method

.method public static getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothDunProfileHandler;
    .locals 1
    .parameter "context"
    .parameter "service"

    .prologue
    .line 109
    sget-object v0, Landroid/server/BluetoothDunProfileHandler;->sInstance:Landroid/server/BluetoothDunProfileHandler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/server/BluetoothDunProfileHandler;

    invoke-direct {v0, p0, p1}, Landroid/server/BluetoothDunProfileHandler;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V

    sput-object v0, Landroid/server/BluetoothDunProfileHandler;->sInstance:Landroid/server/BluetoothDunProfileHandler;

    .line 110
    :cond_0
    sget-object v0, Landroid/server/BluetoothDunProfileHandler;->sInstance:Landroid/server/BluetoothDunProfileHandler;

    return-object v0
.end method

.method private native initDunNative()Z
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 344
    const-string v0, "BluetoothDunProfileHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string v0, "BluetoothDunProfileHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", usb connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/server/BluetoothDunProfileHandler;->mUsbDunConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rfcomm path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/server/BluetoothDunProfileHandler;->mRfcommDevicePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remote device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/server/BluetoothDunProfileHandler;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-void
.end method

.method private declared-synchronized onBluetoothDisable()V
    .locals 2

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 141
    :cond_0
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->onDunDisconnected()V

    .line 143
    :cond_1
    const-string v0, "ctl.stop"

    const-string v1, "dund_dialup"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onBluetoothEnable()V
    .locals 3

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    const-string v0, "Start dun daemon ..."

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mContext:Landroid/content/Context;

    const-string v1, "mot_device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/MotDevicePolicyManager;

    sput-object v0, Landroid/server/BluetoothDunProfileHandler;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    .line 128
    sget-object v0, Landroid/server/BluetoothDunProfileHandler;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Landroid/server/BluetoothDunProfileHandler;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/motorola/motepm/MotDevicePolicyManager;->isPolicyAllowed(Landroid/content/ComponentName;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/server/BluetoothDunProfileHandler;->mPolicyAllowDun:Z

    .line 131
    :cond_0
    iget-boolean v0, p0, Landroid/server/BluetoothDunProfileHandler;->mPolicyAllowDun:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 136
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    :cond_1
    :try_start_1
    const-string v0, "ctl.start"

    const-string v1, "dund_dialup"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onDunDisconnected()V
    .locals 2

    .prologue
    .line 311
    const-string v0, "Bluetooth DUN Disconnected"

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V

    .line 312
    iget v0, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 313
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->cancelWaitingForUserAuth()V

    .line 317
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mRfcommDevicePath:Ljava/lang/String;

    .line 318
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunProfileHandler;->updateState(I)V

    .line 319
    return-void

    .line 314
    :cond_1
    iget v0, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 315
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->stopAtCmdService()V

    goto :goto_0
.end method

.method private startAtCmdService()V
    .locals 3

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.intent.action.BT_ATCMD_SERVICE_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "DEVPATH"

    iget-object v2, p0, Landroid/server/BluetoothDunProfileHandler;->mRfcommDevicePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start at command service intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Landroid/server/BluetoothDunProfileHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 180
    return-void
.end method

.method private stopAtCmdService()V
    .locals 3

    .prologue
    .line 184
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.intent.action.BT_ATCMD_SERVICE_STOP_OR_CLOSEDEV"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop at command service intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Landroid/server/BluetoothDunProfileHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 187
    return-void
.end method

.method private updateState(I)V
    .locals 6
    .parameter "newState"

    .prologue
    .line 162
    iget v1, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    .line 163
    .local v1, prevState:I
    iput p1, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.dun.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothDunProfileHandler;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 167
    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    iget-object v2, p0, Landroid/server/BluetoothDunProfileHandler;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Landroid/server/BluetoothDunProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    iget-object v3, p0, Landroid/server/BluetoothDunProfileHandler;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v4, 0x8

    iget v5, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/server/BluetoothService;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    .line 172
    return-void
.end method

.method private waitForUserAuth()V
    .locals 3

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.intent.action.INCOMING_DUN_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "DevType"

    const-string v2, "BTDUN"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send out intent to trigger the user confirmation dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Landroid/server/BluetoothDunProfileHandler;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 151
    return-void
.end method


# virtual methods
.method public declared-synchronized acceptDunConnection()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 264
    monitor-enter p0

    :try_start_0
    const-string v2, "connectDunClient"

    invoke-direct {p0, v2}, Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V

    .line 265
    iget v2, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    if-ne v2, v0, :cond_1

    .line 266
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->connectDunNative()Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/server/BluetoothDunProfileHandler;->updateState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move v0, v1

    .line 271
    goto :goto_0

    :cond_1
    move v0, v1

    .line 275
    goto :goto_0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectActiveDunClient()Z
    .locals 1

    .prologue
    .line 298
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Landroid/server/BluetoothDunProfileHandler;->disconnectDunClient(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectDunClient(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 280
    monitor-enter p0

    :try_start_0
    const-string v2, "disconnectDunClient"

    invoke-direct {p0, v2}, Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V

    .line 281
    iget v2, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    if-ne v2, v1, :cond_1

    .line 283
    :cond_0
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Landroid/server/BluetoothDunProfileHandler;->updateState(I)V

    .line 285
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->disconnectDunNative()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunProfileHandler;->updateState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 294
    :cond_1
    monitor-exit p0

    return v0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    iget-boolean v0, p0, Landroid/server/BluetoothDunProfileHandler;->mBluetoothDUNEnabled:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->cleanupDunNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 122
    return-void

    .line 120
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public declared-synchronized getActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 258
    const/4 v0, 0x0

    .line 260
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDunConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, state:I
    iget v1, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Landroid/server/BluetoothDunProfileHandler;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iget v0, p0, Landroid/server/BluetoothDunProfileHandler;->mState:I

    .line 253
    :cond_0
    return v0
.end method

.method public onDunConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "rfcommDevicePath"
    .parameter "addr"

    .prologue
    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bluetooth DUN Connected, path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 305
    iput-object p1, p0, Landroid/server/BluetoothDunProfileHandler;->mRfcommDevicePath:Ljava/lang/String;

    .line 306
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunProfileHandler;->updateState(I)V

    .line 307
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->startAtCmdService()V

    .line 308
    return-void
.end method

.method public onDunConnecting(Ljava/lang/String;)V
    .locals 2
    .parameter "addr"

    .prologue
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incoming Bluetooth DUN Connection, address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunProfileHandler;->log(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 325
    iget-boolean v0, p0, Landroid/server/BluetoothDunProfileHandler;->mUsbDunConnected:Z

    if-eqz v0, :cond_1

    .line 327
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->disconnectDunNative()Z

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunProfileHandler;->updateState(I)V

    .line 331
    iget-object v0, p0, Landroid/server/BluetoothDunProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1}, Landroid/server/BluetoothService;->getTrustState(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 332
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->waitForUserAuth()V

    goto :goto_0

    .line 335
    :cond_2
    invoke-direct {p0}, Landroid/server/BluetoothDunProfileHandler;->connectDunNative()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/server/BluetoothDunProfileHandler;->updateState(I)V

    goto :goto_0
.end method
