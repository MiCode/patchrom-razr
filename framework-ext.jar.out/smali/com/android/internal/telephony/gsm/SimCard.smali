.class public final Lcom/android/internal/telephony/gsm/SimCard;
.super Lcom/android/internal/telephony/IccCard;
.source "SimCard.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 4
    .parameter "phone"
    .parameter "logTag"
    .parameter "dbg"

    .prologue
    const/4 v3, 0x1

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccCard;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 139
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimCard;->activateMe()V

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimCard;->updateStateProperty()V

    .line 142
    new-instance v0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardExt:Lcom/motorola/android/internal/telephony/IccCardExt;

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getLteOnCdmaMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 147
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 3
    .parameter "phone"

    .prologue
    .line 53
    const-string v0, "GSM"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/IccCard;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 55
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimCard;->activateMe()V

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimCard;->updateStateProperty()V

    .line 58
    new-instance v0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardExt:Lcom/motorola/android/internal/telephony/IccCardExt;

    .line 60
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/motorola/android/internal/telephony/IccPhysicalCard;Lcom/android/internal/telephony/IccCardStatus;Lcom/android/internal/telephony/IccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 7
    .parameter "parentCard"
    .parameter "ics"
    .parameter "appStatus"
    .parameter "context"
    .parameter "ci"

    .prologue
    .line 92
    const-string v6, "GSM"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/IccCard;-><init>(Lcom/motorola/android/internal/telephony/IccPhysicalCard;Lcom/android/internal/telephony/IccCardStatus;Lcom/android/internal/telephony/IccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mAid:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p5}, Lcom/android/internal/telephony/gsm/SIMFileHandler;-><init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 96
    new-instance v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct {v0, p0, p4, p5}, Lcom/android/internal/telephony/gsm/SIMRecords;-><init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 97
    new-instance v0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;-><init>(Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardExt:Lcom/motorola/android/internal/telephony/IccCardExt;

    .line 98
    return-void
.end method

.method constructor <init>(ZZLcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 3
    .parameter "isCdmaGsmWorldPhone"
    .parameter "isSwitchedToCdma"
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    .line 106
    const-string v0, "GSM"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p3, v0, v1}, Lcom/android/internal/telephony/IccCard;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 107
    if-nez p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "SimCard, this shouldn\'t be called."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    return-void

    .line 113
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mIsCdmaGsmWorldPhone:Z

    .line 116
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimCard;->activateMe()V

    .line 119
    if-eqz p2, :cond_1

    .line 122
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mIsSwitchedToCdma:Z

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimCard;->switchToCdma()V

    .line 128
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimCard;->updateStateProperty()V

    .line 130
    new-instance v0, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/gsm/SimCardExt;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardExt:Lcom/motorola/android/internal/telephony/IccCardExt;

    goto :goto_0

    .line 125
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mIsSwitchedToCdma:Z

    goto :goto_1
.end method

.method private activateMe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMLockedOrAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 69
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsNewArch:Z

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCardError(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Lcom/android/internal/telephony/IccCard;->activate()V

    .line 154
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimCard;->activateMe()V

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimCard;->updateStateProperty()V

    .line 157
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0}, Lcom/android/internal/telephony/IccCard;->dispose()V

    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMLockedOrAbsent(Landroid/os/Handler;)V

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    .line 198
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsNewArch:Z

    if-eqz v0, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCardError(Landroid/os/Handler;)V

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccStatusChanged(Landroid/os/Handler;)V

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getLteOnCdmaMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccStatusChanged(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public getIccAppIndex()I
    .locals 2

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v0

    .line 305
    .local v0, index:I
    return v0
.end method

.method protected getServicePhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "GSM"

    goto :goto_0
.end method

.method public getServicePhoneType()I
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    .line 279
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 254
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method protected handleSimReadyInCdma()V
    .locals 2

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsNewArch:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsCdmaGsmWorldPhone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsSwitchedToCdma:Z

    if-nez v0, :cond_2

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "handleSimReadyInCdma shouldn\'t be called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 231
    :cond_2
    const-string v0, "READY"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/SimCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsNewArch:Z

    if-nez v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onSimReadyInCdmaMode()V

    goto :goto_0

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->onSimReadyInCdmaMode()V

    goto :goto_0
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 10
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 290
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 297
    return-void
.end method

.method public switchToCdma()V
    .locals 4

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsSwitchedToCdma:Z

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsSwitchedToCdma:Z

    .line 164
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaSubscription()I

    move-result v0

    if-nez v0, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimCard;->dispose()V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNVReady(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public switchToGsm()V
    .locals 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsSwitchedToCdma:Z

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsSwitchedToCdma:Z

    .line 179
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaSubscription()I

    move-result v0

    if-nez v0, :cond_1

    .line 180
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimCard;->activateMe()V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNVReady(Landroid/os/Handler;)V

    goto :goto_0
.end method
