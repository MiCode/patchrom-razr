.class public Lcom/motorola/android/internal/telephony/gsm/CFUHandler;
.super Landroid/os/Handler;
.source "CFUHandler.java"


# static fields
.field private static final CHECK_CFU_POWERON:Ljava/lang/String; = "check_cfu_poweron"

.field private static final EVENT_GET_CFU:I = 0x64

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x65


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCheckCFUDone:Z

.field private mNeed2CheckCFU:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mQueryCFUInProcess:Z

.field private mServiceState:Landroid/telephony/ServiceState;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 31
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 20
    const-string v2, "GSM"

    iput-object v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->TAG:Ljava/lang/String;

    .line 23
    new-instance v2, Landroid/telephony/ServiceState;

    invoke-direct {v2}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mServiceState:Landroid/telephony/ServiceState;

    .line 24
    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mCheckCFUDone:Z

    .line 25
    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mNeed2CheckCFU:Z

    .line 26
    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mQueryCFUInProcess:Z

    .line 32
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 33
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "check_cfu_poweron"

    invoke-static {v2, v3, v0}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mNeed2CheckCFU:Z

    .line 36
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mNeed2CheckCFU:Z

    if-eqz v0, :cond_0

    .line 37
    const/16 v0, 0x65

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, v1}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 39
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 33
    goto :goto_0
.end method

.method private checkCFU(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mNeed2CheckCFU:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mCheckCFUDone:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mQueryCFUInProcess:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "GSM"

    const-string v1, "CFUHandler: start query CFU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mQueryCFUInProcess:Z

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 56
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 59
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ServiceState;

    .line 60
    .local v1, serviceState:Landroid/telephony/ServiceState;
    invoke-direct {p0, v1}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->checkCFU(Landroid/telephony/ServiceState;)V

    .line 61
    iput-object v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mServiceState:Landroid/telephony/ServiceState;

    goto :goto_0

    .line 64
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #serviceState:Landroid/telephony/ServiceState;
    :pswitch_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mQueryCFUInProcess:Z

    .line 65
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 66
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 68
    const-string v2, "GSM"

    const-string v3, "CFUHandler: query CFU done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mCheckCFUDone:Z

    .line 70
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
