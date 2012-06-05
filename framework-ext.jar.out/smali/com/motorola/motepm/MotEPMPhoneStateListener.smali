.class public Lcom/motorola/motepm/MotEPMPhoneStateListener;
.super Ljava/lang/Object;
.source "MotEPMPhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/motepm/MotEPMPhoneStateListener$1;,
        Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;,
        Lcom/motorola/motepm/MotEPMPhoneStateListener$ListenerThread;
    }
.end annotation


# static fields
.field public static final ACTION_BACKGROUND_DATA_SETTING_UPDATE_CONDITION_CHANGED:Ljava/lang/String; = "com.motorola.android.datamanager.service.backgound_data_update_condition_action"

.field public static final TAG:Ljava/lang/String; = "MotEPMPhoneStateListener"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

.field private mLooper:Landroid/os/Looper;

.field private mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;

.field private mPolicyService:Landroid/net/INetworkPolicyManager;

.field private mRoaming:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThread:Lcom/motorola/motepm/MotEPMPhoneStateListener$ListenerThread;

.field private mValueOfBeforeChanged:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mRoaming:Z

    .line 58
    iput-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;

    .line 59
    iput-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 61
    iput-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mLooper:Landroid/os/Looper;

    .line 62
    iput-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mThread:Lcom/motorola/motepm/MotEPMPhoneStateListener$ListenerThread;

    .line 83
    iput-object p1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mContext:Landroid/content/Context;

    .line 84
    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mContext:Landroid/content/Context;

    const-string v1, "mot_device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/MotDevicePolicyManager;

    iput-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    .line 85
    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    if-nez v0, :cond_0

    .line 86
    const-string v0, "MotEPMPhoneStateListener"

    const-string v1, "Can\'t get EPM service!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    const-string v0, "netpolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mPolicyService:Landroid/net/INetworkPolicyManager;

    .line 90
    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mPolicyService:Landroid/net/INetworkPolicyManager;

    if-nez v0, :cond_1

    .line 91
    const-string v0, "MotEPMPhoneStateListener"

    const-string v1, "Can\'t get NetworkPolicyManager service!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/motorola/motepm/MotEPMPhoneStateListener;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$100(Lcom/motorola/motepm/MotEPMPhoneStateListener;)Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/motorola/motepm/MotEPMPhoneStateListener;Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;)Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/motorola/motepm/MotEPMPhoneStateListener;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/motorola/motepm/MotEPMPhoneStateListener;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/motorola/motepm/MotEPMPhoneStateListener;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/motepm/MotEPMPhoneStateListener;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->handleServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private getRestrictBackground()Z
    .locals 4

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 140
    :goto_0
    return v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MotEPMPhoneStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "serviceState"

    .prologue
    .line 96
    iget-boolean v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mRoaming:Z

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 97
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mRoaming:Z

    .line 98
    const-string v1, "MotEPMPhoneStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roaming state changed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mRoaming:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, ismanualsync:Z
    iget-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/motepm/MotDevicePolicyManager;->getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z

    move-result v0

    .line 103
    :cond_0
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->changeBackgroundDataValue(Z)V

    .line 105
    .end local v0           #ismanualsync:Z
    :cond_1
    return-void
.end method

.method private setRestrictBackground(Z)V
    .locals 4
    .parameter "restrictBackground"

    .prologue
    .line 145
    const-string v1, "MotEPMPhoneStateListener"

    const-string v2, "setRestrictBackground()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MotEPMPhoneStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public changeBackgroundDataValue(Z)V
    .locals 6
    .parameter "ismanualsync"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 116
    iget-object v3, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "back_ground_data_backup_by_datamanager"

    invoke-static {v3, v4, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 118
    .local v0, mBackGroundData:I
    const-string v3, "MotEPMPhoneStateListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeBackgroundDataValue: mRoaming="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mRoaming:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ismanualsync="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-boolean v3, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mRoaming:Z

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 120
    invoke-direct {p0}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->getRestrictBackground()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    iput v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mValueOfBeforeChanged:I

    .line 121
    const-string v1, "MotEPMPhoneStateListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before mValueOfBeforeChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mValueOfBeforeChanged:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mValueOfBeforeChanged:I

    if-nez v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "back_ground_data_backup_by_datamanager"

    invoke-static {v1, v3, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    invoke-direct {p0, v2}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->setRestrictBackground(Z)V

    .line 126
    const-string v1, "MotEPMPhoneStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mValueOfBeforeChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->getRestrictBackground()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_1
    :goto_0
    return-void

    .line 129
    :cond_2
    if-ne v0, v2, :cond_1

    .line 130
    invoke-direct {p0, v1}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->setRestrictBackground(Z)V

    goto :goto_0
.end method

.method public registerForPhoneStateIntents()V
    .locals 1

    .prologue
    .line 154
    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mThread:Lcom/motorola/motepm/MotEPMPhoneStateListener$ListenerThread;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lcom/motorola/motepm/MotEPMPhoneStateListener$ListenerThread;

    invoke-direct {v0, p0}, Lcom/motorola/motepm/MotEPMPhoneStateListener$ListenerThread;-><init>(Lcom/motorola/motepm/MotEPMPhoneStateListener;)V

    iput-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mThread:Lcom/motorola/motepm/MotEPMPhoneStateListener$ListenerThread;

    .line 157
    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mThread:Lcom/motorola/motepm/MotEPMPhoneStateListener$ListenerThread;

    invoke-virtual {v0}, Lcom/motorola/motepm/MotEPMPhoneStateListener$ListenerThread;->start()V

    .line 159
    :cond_0
    monitor-exit p0

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unRegisterPhoneStateIntents()V
    .locals 4

    .prologue
    .line 163
    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mLooper:Landroid/os/Looper;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mThread:Lcom/motorola/motepm/MotEPMPhoneStateListener$ListenerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 169
    :try_start_1
    iget-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mThread:Lcom/motorola/motepm/MotEPMPhoneStateListener$ListenerThread;

    invoke-virtual {v1}, Lcom/motorola/motepm/MotEPMPhoneStateListener$ListenerThread;->join()V

    .line 170
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mThread:Lcom/motorola/motepm/MotEPMPhoneStateListener$ListenerThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_2

    .line 178
    iget-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 181
    :cond_2
    iget-object v1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener;->mPhoneStateListener:Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 182
    monitor-exit p0

    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "MotEPMPhoneStateListener"

    const-string v2, "mThread.join interruption"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
