.class public final Lcom/android/internal/telephony/cdma/RuimCard;
.super Lcom/android/internal/telephony/IccCard;
.source "RuimCard.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 55
    const-string v0, "CDMA"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/cdma/RuimCard;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Ljava/lang/String;Z)V

    .line 56
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Ljava/lang/String;Z)V
    .locals 3
    .parameter "phone"
    .parameter "LOG_TAG"
    .parameter "dbg"

    .prologue
    .line 44
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/IccCard;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 46
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimCard;->activateMe()V

    .line 47
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimCard;->updateStateProperty()V

    .line 50
    new-instance v0, Lcom/motorola/android/internal/telephony/cdma/RuimCardExt;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/cdma/RuimCardExt;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardExt:Lcom/motorola/android/internal/telephony/IccCardExt;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/motorola/android/internal/telephony/IccPhysicalCard;Lcom/android/internal/telephony/IccCardStatus;Lcom/android/internal/telephony/IccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8
    .parameter "parentCard"
    .parameter "ics"
    .parameter "appStatus"
    .parameter "context"
    .parameter "ci"

    .prologue
    .line 78
    const-string v6, "CDMA"

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/IccCard;-><init>(Lcom/motorola/android/internal/telephony/IccPhysicalCard;Lcom/android/internal/telephony/IccCardStatus;Lcom/android/internal/telephony/IccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 81
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mAid:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p5}, Lcom/android/internal/telephony/cdma/RuimFileHandler;-><init>(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 82
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-direct {v0, p0, p4, p5}, Lcom/android/internal/telephony/cdma/RuimRecords;-><init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 83
    new-instance v0, Lcom/motorola/android/internal/telephony/cdma/RuimCardExt;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/cdma/RuimCardExt;-><init>(Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardExt:Lcom/motorola/android/internal/telephony/IccCardExt;

    .line 84
    return-void
.end method

.method public constructor <init>(ZZLcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 3
    .parameter "isCdmaGsmWorldPhone"
    .parameter "isSwitchedToCdma"
    .parameter "phone"

    .prologue
    .line 97
    const-string v0, "CDMA"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p3, v0, v1}, Lcom/android/internal/telephony/IccCard;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 98
    if-nez p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "RuimCard, this shouldn\'t be called."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    return-void

    .line 102
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mIsCdmaGsmWorldPhone:Z

    .line 103
    if-eqz p2, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimCard;->switchToCdma()V

    .line 109
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimCard;->updateStateProperty()V

    .line 110
    new-instance v0, Lcom/motorola/android/internal/telephony/cdma/RuimCardExt;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/cdma/RuimCardExt;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardExt:Lcom/motorola/android/internal/telephony/IccCardExt;

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimCard;->switchToGsm()V

    goto :goto_1
.end method

.method private activateMe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRUIMLockedOrAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRUIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 63
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsNewArch:Z

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaSubscription()I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 70
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
    .line 88
    invoke-super {p0}, Lcom/android/internal/telephony/IccCard;->activate()V

    .line 90
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimCard;->activateMe()V

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimCard;->updateStateProperty()V

    .line 92
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/internal/telephony/IccCard;->dispose()V

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRUIMLockedOrAbsent(Landroid/os/Handler;)V

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRUIMReady(Landroid/os/Handler;)V

    .line 137
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsNewArch:Z

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaSubscription()I

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccStatusChanged(Landroid/os/Handler;)V

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public getIccAppIndex()I
    .locals 2

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v0

    .line 191
    .local v0, index:I
    return v0
.end method

.method protected getServicePhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "CDMA"

    goto :goto_0
.end method

.method public getServicePhoneType()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public switchToCdma()V
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsSwitchedToCdma:Z

    if-eqz v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsSwitchedToCdma:Z

    .line 118
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimCard;->activateMe()V

    goto :goto_0
.end method

.method public switchToGsm()V
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsSwitchedToCdma:Z

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsSwitchedToCdma:Z

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimCard;->dispose()V

    goto :goto_0
.end method
