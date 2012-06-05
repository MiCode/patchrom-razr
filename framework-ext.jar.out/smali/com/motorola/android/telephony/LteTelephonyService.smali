.class public Lcom/motorola/android/telephony/LteTelephonyService;
.super Lcom/motorola/android/telephony/ILteTelephony$Stub;
.source "LteTelephonyService.java"


# static fields
.field protected static final EVENT_SEND_DEACT_CAUSE_DONE:I = 0x1

.field private static final IMS_FAILURE_403:Ljava/lang/String; = "133"

.field private static final IMS_FAILURE_4XX:Ljava/lang/String; = "129"

.field private static final IMS_FAILURE_5XX:Ljava/lang/String; = "130"

.field private static final IMS_FAILURE_AUTH:Ljava/lang/String; = "132"

.field private static final IMS_FAILURE_REREG_GENERIC:Ljava/lang/String; = "134"

.field private static final IMS_FAILURE_TIMEOUTS:Ljava/lang/String; = "131"

.field private static final PDP_FAIL_IPV6_RS_ERROR:Ljava/lang/String; = "128"

.field private static final TAG:Ljava/lang/String; = "LteTelephonyService"


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field protected final mLock:Ljava/lang/Object;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mSendDeactCauseDone:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/motorola/android/telephony/ILteTelephony$Stub;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/telephony/LteTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/telephony/LteTelephonyService;->mLock:Ljava/lang/Object;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/telephony/LteTelephonyService;->mSendDeactCauseDone:Z

    .line 111
    new-instance v0, Lcom/motorola/android/telephony/LteTelephonyService$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/telephony/LteTelephonyService$1;-><init>(Lcom/motorola/android/telephony/LteTelephonyService;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/LteTelephonyService;->mHandler:Landroid/os/Handler;

    .line 51
    const-string v0, "LteTelephonyService"

    const-string v1, "LteTelephonyService is created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iput-object p1, p0, Lcom/motorola/android/telephony/LteTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 53
    const-string v0, "lteTelSvc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    const-string v0, "LteTelephonyService"

    const-string v1, "LteTelephonyService is published"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v0, "lteTelSvc"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 57
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/motorola/android/telephony/LteTelephonyService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/motorola/android/telephony/LteTelephonyService;->mSendDeactCauseDone:Z

    return p1
.end method

.method private convertImsRegStatusToRilCause(IZ)Ljava/lang/String;
    .locals 4
    .parameter "regStatus"
    .parameter "reReg"

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, ret:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 87
    :goto_0
    const-string v1, "LteTelephonyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMS REG failure cause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-object v0

    .line 64
    :pswitch_0
    if-eqz p2, :cond_0

    .line 65
    const-string v0, "134"

    goto :goto_0

    .line 67
    :cond_0
    const-string v0, "131"

    .line 69
    goto :goto_0

    .line 71
    :pswitch_1
    const-string v0, "133"

    .line 72
    goto :goto_0

    .line 74
    :pswitch_2
    const-string v0, "129"

    .line 75
    goto :goto_0

    .line 77
    :pswitch_3
    const-string v0, "131"

    .line 78
    goto :goto_0

    .line 80
    :pswitch_4
    const-string v0, "128"

    .line 81
    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public setPdnDeactivateCause(IZ)Z
    .locals 6
    .parameter "cause"
    .parameter "reReg"

    .prologue
    const/4 v2, 0x0

    .line 92
    const-string v3, "LteTelephonyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enter setPdnDeactivateCause, cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", reReg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v3, p0, Lcom/motorola/android/telephony/LteTelephonyService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 94
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/motorola/android/telephony/LteTelephonyService;->mSendDeactCauseDone:Z

    .line 95
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    .line 96
    .local v1, strs:[Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "3GSMIMSREGST"

    aput-object v5, v1, v4

    .line 97
    const/4 v4, 0x1

    invoke-direct {p0, p1, p2}, Lcom/motorola/android/telephony/LteTelephonyService;->convertImsRegStatusToRilCause(IZ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 98
    const/4 v4, 0x1

    aget-object v4, v1, v4

    if-nez v4, :cond_0

    .line 99
    monitor-exit v3

    .line 108
    :goto_0
    return v2

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/motorola/android/telephony/LteTelephonyService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, p0, Lcom/motorola/android/telephony/LteTelephonyService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :try_start_1
    iget-object v2, p0, Lcom/motorola/android/telephony/LteTelephonyService;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    iget-boolean v2, p0, Lcom/motorola/android/telephony/LteTelephonyService;->mSendDeactCauseDone:Z

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "LteTelephonyService"

    const-string v4, "interrupted while trying to set IMS REG failure cause"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 107
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #strs:[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method
