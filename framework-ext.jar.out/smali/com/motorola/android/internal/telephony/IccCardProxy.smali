.class public Lcom/motorola/android/internal/telephony/IccCardProxy;
.super Lcom/android/internal/telephony/IccCard;
.source "IccCardProxy.java"


# static fields
.field private static final EVENT_APP_READY:I = 0x6

.field private static final EVENT_ICC_ABSENT:I = 0x4

.field private static final EVENT_ICC_CHANGED:I = 0x3

.field private static final EVENT_ICC_LOCKED:I = 0x5

.field private static final EVENT_IMSI_READY:I = 0x8

.field private static final EVENT_NETWORK_LOCKED:I = 0x9

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x1

.field private static final EVENT_RADIO_ON:I = 0x2

.field private static final EVENT_RECORDS_LOADED:I = 0x7

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_IccCardProxy"


# instance fields
.field private mActivePhoneType:I

.field private mAppRecords:Lcom/android/internal/telephony/IccRecords;

.field private mApplication:Lcom/android/internal/telephony/IccCard;

.field mHandler:Landroid/os/Handler;

.field private mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

.field private mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

.field private mModemId:I

.field private mQuietMode:Z

.field private mRadioOn:Z

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 9
    .parameter "mContext"
    .parameter "cm"
    .parameter "modemId"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 77
    const-string v6, "IccCardProxy"

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/IccCard;-><init>(Lcom/motorola/android/internal/telephony/IccPhysicalCard;Lcom/android/internal/telephony/IccCardStatus;Lcom/android/internal/telephony/IccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;)V

    .line 63
    iput-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    .line 64
    iput-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    .line 65
    iput-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    .line 66
    iput-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/IccRecords;

    .line 68
    iput-boolean v7, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    .line 69
    iput-boolean v7, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    .line 71
    iput-boolean v7, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mRegistered:Z

    .line 156
    new-instance v0, Lcom/motorola/android/internal/telephony/IccCardProxy$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/IccCardProxy$1;-><init>(Lcom/motorola/android/internal/telephony/IccCardProxy;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    .line 78
    iput p3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mModemId:I

    .line 79
    iput-boolean v8, p0, Lcom/android/internal/telephony/IccCard;->mIsAssigned:Z

    .line 81
    iput-boolean v8, p0, Lcom/android/internal/telephony/IccCard;->mIsActivated:Z

    .line 87
    const-string v0, "NOT_READY"

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method static synthetic access$002(Lcom/motorola/android/internal/telephony/IccCardProxy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/motorola/android/internal/telephony/IccCardProxy;)Landroid/os/RegistrantList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/android/internal/telephony/IccCardProxy;)Landroid/os/RegistrantList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/internal/telephony/IccCardProxy;)Landroid/os/RegistrantList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method private activateMe()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 94
    :cond_0
    iput-boolean v4, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mRegistered:Z

    .line 95
    invoke-static {}, Lcom/motorola/android/internal/telephony/IccCardManager;->getInstance()Lcom/motorola/android/internal/telephony/IccCardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    .line 96
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    if-nez v0, :cond_1

    .line 97
    const-string v0, "RIL_IccCardProxy"

    const-string v1, "IccCardManager is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/IccCardManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private handleNoApplication()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 192
    const-string v1, "RIL_IccCardProxy"

    const-string v2, "there is no application assigned"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    iget v2, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mModemId:I

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/telephony/IccCardManager;->getDefaultPhysicalCard(I)Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    move-result-object v0

    .line 195
    .local v0, newPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eq v1, v0, :cond_1

    .line 196
    const-string v1, "RIL_IccCardProxy"

    const-string v2, "physical card changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eqz v1, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->unregisterPhysicalCardEvents()V

    .line 200
    :cond_0
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    .line 201
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eqz v1, :cond_4

    .line 202
    iget-boolean v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    if-eqz v1, :cond_3

    .line 203
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v1, v2, :cond_2

    .line 204
    const-string v1, "ERROR"

    invoke-virtual {p0, v1, v3}, Lcom/motorola/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->registerPhysicalCardEvents()V

    .line 216
    :cond_1
    :goto_1
    return-void

    .line 206
    :cond_2
    const-string v1, "ABSENT"

    invoke-virtual {p0, v1, v3}, Lcom/motorola/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_3
    const-string v1, "NOT_READY"

    invoke-virtual {p0, v1, v3}, Lcom/motorola/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_4
    const-string v1, "RIL_IccCardProxy"

    const-string v2, "there is no card slot with the modem"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private registerAppEvents()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 288
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCard;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 291
    return-void
.end method

.method private registerPhysicalCardEvents()V
    .locals 4

    .prologue
    .line 283
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 284
    return-void
.end method

.method private unregisterAppEvents()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->unregisterForLocked(Landroid/os/Handler;)V

    .line 278
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->unregisterForNetworkLocked(Landroid/os/Handler;)V

    .line 280
    return-void
.end method

.method private unregisterPhysicalCardEvents()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->unregisterForAbsent(Landroid/os/Handler;)V

    .line 273
    return-void
.end method

.method private updateQuietMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 144
    const-string v1, "RIL_IccCardProxy"

    const-string v2, "Updating quiet mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mActivePhoneType:I

    if-ne v1, v3, :cond_1

    .line 146
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-static {}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getInstance()Lcom/motorola/android/internal/telephony/ModemConfigManager;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mModemId:I

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    move-result-object v0

    .line 149
    .local v0, m:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->isCdmaOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getCdmaSubscriptionSource()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 151
    iput-boolean v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->activateMe()V

    .line 108
    return-void
.end method

.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 312
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/IccCard;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    if-eqz p3, :cond_0

    .line 315
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 317
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 323
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_1

    .line 324
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    if-eqz p3, :cond_0

    .line 326
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 328
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->dispose()V

    .line 112
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mRegistered:Z

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mRegistered:Z

    .line 119
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/IccCardManager;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public getActiveApplicationTypeInIccCard()Lcom/android/internal/telephony/IccCardApplication$AppType;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getActiveApplicationTypeInIccCard()Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    goto :goto_0
.end method

.method public getAppOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getAppOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 598
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppOperatorNumeric(Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;
    .locals 1
    .parameter "appType"

    .prologue
    .line 602
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getAppOperatorNumeric(Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v0

    .line 605
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppType()Lcom/android/internal/telephony/IccCardApplication$AppType;
    .locals 2

    .prologue
    .line 450
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getAppType()Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v0

    .line 452
    .local v0, retValue:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :goto_0
    return-object v0

    .line 450
    .end local v0           #retValue:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    goto :goto_0
.end method

.method public getApplicationRecords()Lcom/android/internal/telephony/IccRecords;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getApplicationRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplicationTypesInIccCard()[Lcom/android/internal/telephony/IccCardApplication$AppType;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getApplicationTypesInIccCard()[Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v0

    .line 471
    :goto_0
    return-object v0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getApplicationTypes()[Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v0

    goto :goto_0

    .line 471
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCard()Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    return-object v0
.end method

.method public getIccAppIndex()I
    .locals 2

    .prologue
    .line 612
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccAppIndex()I

    move-result v0

    .line 613
    .local v0, retValue:I
    :goto_0
    return v0

    .line 612
    .end local v0           #retValue:I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIccCardState()Lcom/android/internal/telephony/IccCard$State;
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-nez v0, :cond_0

    .line 337
    const-string v0, "RIL_IccCardProxy"

    const-string v1, "IccPhysicalCard is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .line 356
    :goto_0
    return-object v0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getIccCardStatus()Lcom/android/internal/telephony/IccCardStatus;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 343
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardPresent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ERROR:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 347
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v0, :cond_3

    .line 351
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    goto :goto_0

    .line 353
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->MISSING:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 356
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method public getIccCardSubsidyLockState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getIccCardStatus()Lcom/android/internal/telephony/IccCardStatus;

    move-result-object v0

    if-nez v0, :cond_1

    .line 373
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .line 375
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccCardSubsidyLockState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    goto :goto_0
.end method

.method public getIccFdnEnabled()Z
    .locals 2

    .prologue
    .line 382
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 383
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 382
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccLockEnabled()Z
    .locals 2

    .prologue
    .line 388
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 389
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 388
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getIccLockRetryAttemps(ILandroid/os/Message;)V
    .locals 3
    .parameter "type"
    .parameter "result"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccCard;->getIccLockRetryAttemps(ILandroid/os/Message;)V

    .line 447
    :goto_0
    return-void

    .line 442
    :cond_0
    const-string v0, "RIL_IccCardProxy"

    const-string v1, "icc card is absent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 445
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public getIccNetworkLockEnabled()Z
    .locals 2

    .prologue
    .line 401
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccNetworkLockEnabled()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 402
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 401
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getSSTPinDisableAllow()Z
    .locals 2

    .prologue
    .line 434
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getSSTPinDisableAllow()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 435
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 434
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected getServicePhoneName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 580
    iget v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mActivePhoneType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 581
    const-string v0, "CDMA"

    .line 584
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "GSM"

    goto :goto_0
.end method

.method public getServicePhoneType()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mActivePhoneType:I

    return v0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 407
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, retValue:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 407
    .end local v0           #retValue:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getIccCardStatus()Lcom/android/internal/telephony/IccCardStatus;

    move-result-object v0

    if-nez v0, :cond_1

    .line 364
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .line 366
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-nez v0, :cond_2

    invoke-super {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    goto :goto_0
.end method

.method public hasIccCard()Z
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v0, v1, :cond_0

    .line 413
    const/4 v0, 0x1

    .line 415
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 419
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-virtual {v1, p1}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 420
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 419
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setActivePhoneType(I)V
    .locals 3
    .parameter "phoneType"

    .prologue
    .line 129
    const-string v0, "RIL_IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mActivePhoneType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iput p1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mActivePhoneType:I

    .line 131
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->updateQuietMode()V

    .line 133
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->activateMe()V

    .line 134
    return-void
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 482
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_1

    .line 483
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/IccCard;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    if-eqz p3, :cond_0

    .line 485
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 486
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 487
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 494
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_1

    .line 495
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    if-eqz p3, :cond_0

    .line 497
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 498
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 499
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setIccNetworkLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 507
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_1

    .line 508
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/IccCard;->setIccNetworkLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    if-eqz p3, :cond_0

    .line 510
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 511
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 512
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setSSTPinDisableAllow(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccCard;->setSSTPinDisableAllow(Z)V

    .line 430
    :goto_0
    return-void

    .line 428
    :cond_0
    const-string v0, "RIL_IccCardProxy"

    const-string v1, "setSSTPinDisableAllow, sim care is absend"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 522
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_1

    .line 523
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/IccCard;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    if-eqz p2, :cond_0

    .line 525
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CommandsInterface is not set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 526
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 527
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 533
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_1

    .line 534
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/IccCard;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    if-eqz p2, :cond_0

    .line 536
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 537
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 538
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 544
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_1

    .line 545
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/IccCard;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    if-eqz p2, :cond_0

    .line 547
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 548
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 549
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "puk"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    .line 555
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_1

    .line 556
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/IccCard;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    if-eqz p3, :cond_0

    .line 558
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 559
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 560
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "onComplete"

    .prologue
    .line 566
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_1

    .line 568
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    if-eqz p3, :cond_0

    .line 570
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 571
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 572
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public update(Lcom/android/internal/telephony/IccCardStatus;Lcom/android/internal/telephony/IccCardApplication;)V
    .locals 2
    .parameter "ics"
    .parameter "appStatus"

    .prologue
    .line 137
    const-string v0, "RIL_IccCardProxy"

    const-string v1, "update shouldn\'t be called in icccardproxy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method updateIccAvailability()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 221
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    iget v4, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mModemId:I

    iget v5, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mActivePhoneType:I

    invoke-virtual {v3, v4, v5}, Lcom/motorola/android/internal/telephony/IccCardManager;->getApplication(II)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 225
    .local v1, newApplication:Lcom/android/internal/telephony/IccCard;
    invoke-static {}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getInstance()Lcom/motorola/android/internal/telephony/ModemConfigManager;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mModemId:I

    invoke-virtual {v3, v4}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    move-result-object v0

    .line 226
    .local v0, modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    iget v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mActivePhoneType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    if-eqz v3, :cond_0

    .line 228
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    iget v4, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mModemId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/motorola/android/internal/telephony/IccCardManager;->getApplication(II)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 229
    const-string v3, "RIL_IccCardProxy"

    const-string v4, "get SIMCard from IccCardProxy for CDMALTEPhone"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    const-string v3, "RIL_IccCardProxy"

    const-string v4, "updateIccAvailability "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-nez v1, :cond_1

    iget-boolean v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    if-nez v3, :cond_1

    .line 236
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->handleNoApplication()V

    .line 239
    :cond_1
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eq v3, v1, :cond_6

    iget-boolean v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    if-nez v3, :cond_6

    .line 240
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v3, :cond_3

    .line 242
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->unregisterAppEvents()V

    .line 243
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->deactivate()V

    .line 245
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eqz v3, :cond_2

    .line 246
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->unregisterPhysicalCardEvents()V

    .line 247
    iput-object v6, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    .line 250
    :cond_2
    iput-object v6, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/IccRecords;

    .line 251
    iput-object v6, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    .line 253
    :cond_3
    if-eqz v1, :cond_6

    .line 254
    iput-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    .line 256
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getCard()Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    move-result-object v2

    .line 257
    .local v2, newPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eq v3, v2, :cond_5

    .line 258
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eqz v3, :cond_4

    .line 259
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->unregisterPhysicalCardEvents()V

    .line 261
    :cond_4
    iput-object v2, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    .line 262
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->registerPhysicalCardEvents()V

    .line 264
    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getApplicationRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/IccRecords;

    .line 265
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->registerAppEvents()V

    .line 269
    .end local v2           #newPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    :cond_6
    return-void
.end method

.method protected updateStateProperty()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-nez v0, :cond_1

    .line 296
    const-string v0, "gsm.sim.state"

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v0, v1, :cond_2

    .line 300
    const-string v0, "gsm.sim.state"

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ERROR:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-nez v0, :cond_0

    .line 304
    const-string v0, "gsm.sim.state"

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
