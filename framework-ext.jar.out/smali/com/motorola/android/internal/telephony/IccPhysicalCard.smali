.class public Lcom/motorola/android/internal/telephony/IccPhysicalCard;
.super Ljava/lang/Object;
.source "IccPhysicalCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/IccPhysicalCard$3;,
        Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;
    }
.end annotation


# static fields
.field private static final EVENT_CARD_ADDED:I = 0x2

.field private static final EVENT_CARD_REMOVED:I = 0x1


# instance fields
.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field private mCardParent:Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mHandler:Landroid/os/Handler;

.field private mIccCardApplications:[Lcom/android/internal/telephony/IccCard;

.field private mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

.field private mIccCardType:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

.field private mIccChangedRegistrants:Landroid/os/RegistrantList;

.field private mLogTag:Ljava/lang/String;

.field private mStkService:Lcom/android/internal/telephony/cat/CatService;

.field private mUnavailableRegistrants:Landroid/os/RegistrantList;

.field private mUniqueSlotId:I


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;Lcom/android/internal/telephony/IccCardStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 1
    .parameter "parent"
    .parameter "cardStatus"
    .parameter "c"
    .parameter "ci"
    .parameter "uniqueSlotId"

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "RIL_IccPhysicalCard"

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mLogTag:Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    .line 70
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    .line 71
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mDestroyed:Z

    .line 77
    sget-object v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;->ICCCARDTYPE_UNKNOWN:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardType:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    .line 178
    new-instance v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/IccPhysicalCard$1;-><init>(Lcom/motorola/android/internal/telephony/IccPhysicalCard;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mHandler:Landroid/os/Handler;

    .line 86
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mCardParent:Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;

    .line 87
    iput-object p3, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mContext:Landroid/content/Context;

    .line 88
    iput-object p4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 89
    iput p5, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mUniqueSlotId:I

    .line 90
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/IccCard;

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardApplications:[Lcom/android/internal/telephony/IccCard;

    .line 92
    invoke-virtual {p0, p2}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->update(Lcom/android/internal/telephony/IccCardStatus;)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/internal/telephony/IccPhysicalCard;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->onIccSwap(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/android/internal/telephony/IccPhysicalCard;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mLogTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/android/internal/telephony/IccPhysicalCard;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private areAppTypesCompatible(Lcom/android/internal/telephony/IccCardApplication$AppType;Lcom/android/internal/telephony/IccCardApplication$AppType;)Z
    .locals 2
    .parameter "appType1"
    .parameter "appType2"

    .prologue
    const/4 v0, 0x1

    .line 293
    if-ne p1, p2, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v0

    .line 297
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne p1, v1, :cond_3

    :cond_2
    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq p2, v1, :cond_0

    .line 301
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq p1, v1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne p1, v1, :cond_5

    :cond_4
    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq p2, v1, :cond_0

    .line 307
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createIccCard(Lcom/android/internal/telephony/IccCardStatus;Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccCard;
    .locals 7
    .parameter "ics"
    .parameter "appType"

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, iccCard:Lcom/android/internal/telephony/IccCard;
    const/4 v6, -0x1

    .line 313
    .local v6, appIdx:I
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createIccCard appType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    sget-object v1, Lcom/motorola/android/internal/telephony/IccPhysicalCard$3;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 330
    :goto_0
    return-object v0

    .line 318
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v6

    .line 319
    new-instance v0, Lcom/android/internal/telephony/gsm/SimCard;

    .end local v0           #iccCard:Lcom/android/internal/telephony/IccCard;
    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SimCard;-><init>(Lcom/motorola/android/internal/telephony/IccPhysicalCard;Lcom/android/internal/telephony/IccCardStatus;Lcom/android/internal/telephony/IccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 320
    .restart local v0       #iccCard:Lcom/android/internal/telephony/IccCard;
    goto :goto_0

    .line 323
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v6

    .line 324
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimCard;

    .end local v0           #iccCard:Lcom/android/internal/telephony/IccCard;
    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/RuimCard;-><init>(Lcom/motorola/android/internal/telephony/IccPhysicalCard;Lcom/android/internal/telephony/IccCardStatus;Lcom/android/internal/telephony/IccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 325
    .restart local v0       #iccCard:Lcom/android/internal/telephony/IccCard;
    goto :goto_0

    .line 315
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mLogTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void
.end method

.method private onIccSwap(Z)V
    .locals 8
    .parameter "isAdded"

    .prologue
    .line 199
    const/4 v2, 0x0

    .line 205
    .local v2, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/motorola/android/internal/telephony/IccPhysicalCard$2;

    .end local v2           #listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v2, p0}, Lcom/motorola/android/internal/telephony/IccPhysicalCard$2;-><init>(Lcom/motorola/android/internal/telephony/IccPhysicalCard;)V

    .line 218
    .restart local v2       #listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 220
    .local v4, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    const v6, 0x1040401

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, title:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    const v6, 0x1040402

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, message:Ljava/lang/String;
    :goto_1
    const v6, 0x1040403

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, buttonTxt:Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 231
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 232
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 233
    return-void

    .line 220
    .end local v0           #buttonTxt:Ljava/lang/String;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v3           #message:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    :cond_0
    const v6, 0x10403fe

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 222
    .restart local v5       #title:Ljava/lang/String;
    :cond_1
    const v6, 0x10403ff

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private updateCardType(Lcom/android/internal/telephony/IccCardStatus;)V
    .locals 4
    .parameter "ics"

    .prologue
    .line 265
    sget-object v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;->ICCCARDTYPE_UNKNOWN:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    .line 266
    .local v0, cardType:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v1, v2, :cond_0

    .line 289
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 271
    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/IccCardStatus;->containApplication(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 272
    sget-object v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;->ICCCARDTYPE_SIM_ONLY:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    .line 287
    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardType:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    .line 288
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIccCardType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardType:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/IccCardStatus;->containApplication(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 274
    sget-object v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;->ICCCARDTYPE_RUIM_ONLY:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    goto :goto_1

    .line 275
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/IccCardStatus;->containApplication(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    sget-object v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;->ICCCARDTYPE_USIM_ONLY:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    goto :goto_1

    .line 279
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/IccCardStatus;->containApplication(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/IccCardStatus;->containApplication(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 281
    sget-object v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;->ICCCARDTYPE_RUIM:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    goto :goto_1

    .line 282
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/IccCardStatus;->containApplication(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/IccCardStatus;->containApplication(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    sget-object v0, Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;->ICCCARDTYPE_UICC:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 5

    .prologue
    .line 334
    monitor-enter p0

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mDestroyed:Z

    .line 336
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v4, :cond_0

    .line 337
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 339
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mStkService:Lcom/android/internal/telephony/cat/CatService;

    .line 340
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardApplications:[Lcom/android/internal/telephony/IccCard;

    .local v1, arr$:[Lcom/android/internal/telephony/IccCard;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 341
    .local v0, app:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_1

    .line 342
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->dispose()V

    .line 340
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 345
    .end local v0           #app:Lcom/android/internal/telephony/IccCard;
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardApplications:[Lcom/android/internal/telephony/IccCard;

    .line 346
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    .line 334
    .end local v1           #arr$:[Lcom/android/internal/telephony/IccCard;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mLogTag:Ljava/lang/String;

    const-string v1, "IccPhysicalCard finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-void
.end method

.method public getAppOperatorNumeric(Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;
    .locals 2
    .parameter "appType"

    .prologue
    .line 246
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardApplications:[Lcom/android/internal/telephony/IccCard;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardApplications:[Lcom/android/internal/telephony/IccCard;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardApplications:[Lcom/android/internal/telephony/IccCard;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getAppType()Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardApplications:[Lcom/android/internal/telephony/IccCard;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getAppOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 252
    :goto_1
    return-object v1

    .line 246
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getApplicationTypes()[Lcom/android/internal/telephony/IccCardApplication$AppType;
    .locals 4

    .prologue
    .line 405
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v1

    .line 406
    .local v1, nums:I
    :goto_0
    if-gtz v1, :cond_2

    .line 407
    const/4 v2, 0x0

    .line 413
    :cond_0
    return-object v2

    .line 405
    .end local v1           #nums:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 409
    .restart local v1       #nums:I
    :cond_2
    new-array v2, v1, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 410
    .local v2, ret:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 411
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v2, v0

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    goto :goto_0
.end method

.method public getCardType()Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardType:Lcom/motorola/android/internal/telephony/IccPhysicalCard$IccCardType;

    return-object v0
.end method

.method public getCdmaSubscriptionAppIndex()I
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v0

    return v0
.end method

.method public getGsmUmtsSubscriptionAppIndex()I
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getIccCardApplication(I)Lcom/android/internal/telephony/IccCard;
    .locals 2
    .parameter "appIndex"

    .prologue
    const/4 v0, 0x0

    .line 363
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 370
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 367
    :cond_1
    if-ltz p1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardApplications:[Lcom/android/internal/telephony/IccCard;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardApplications:[Lcom/android/internal/telephony/IccCard;

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIccCardStatus()Lcom/android/internal/telephony/IccCardStatus;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    return-object v0
.end method

.method public getNumApplications()I
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v0

    return v0
.end method

.method public getUniqueSlotId()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mUniqueSlotId:I

    return v0
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z
    .locals 5
    .parameter "type"

    .prologue
    .line 395
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardApplications:[Lcom/android/internal/telephony/IccCard;

    .local v1, arr$:[Lcom/android/internal/telephony/IccCard;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 396
    .local v0, a:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getAppType()Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 397
    const/4 v4, 0x1

    .line 400
    .end local v0           #a:Lcom/android/internal/telephony/IccCard;
    :goto_1
    return v4

    .line 395
    .restart local v0       #a:Lcom/android/internal/telephony/IccCard;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 400
    .end local v0           #a:Lcom/android/internal/telephony/IccCard;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 418
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 420
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 422
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v1, v2, :cond_0

    .line 423
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 425
    :cond_0
    return-void
.end method

.method public declared-synchronized registerForUnavailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 385
    :goto_0
    monitor-exit p0

    return-void

    .line 383
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 384
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 379
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public triggerIccStatusChange(Ljava/lang/Object;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mCardParent:Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/IccCardManager$OwnerModemCardAssociation;->triggerIccStatusChange(Ljava/lang/Object;)V

    .line 238
    return-void
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 429
    return-void
.end method

.method public declared-synchronized unregisterForUnavailable(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    monitor-exit p0

    return-void

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public update(Lcom/android/internal/telephony/IccCardStatus;)V
    .locals 7
    .parameter "ics"

    .prologue
    const/4 v0, 0x0

    .line 96
    iget-boolean v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mDestroyed:Z

    if-eqz v4, :cond_0

    .line 97
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mLogTag:Ljava/lang/String;

    const-string v5, "Updated after destroyed! Fix me!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mLogTag:Ljava/lang/String;

    const-string v5, "IccPhysicalCard Updated"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->updateCardType(Lcom/android/internal/telephony/IccCardStatus;)V

    .line 106
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v4, v5, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v4, v5, :cond_1

    .line 109
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 113
    :cond_1
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-eqz v4, :cond_2

    .line 114
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v4, v5, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v4, v5, :cond_4

    .line 120
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mLogTag:Ljava/lang/String;

    const-string v5, "EVENT_CARD_REMOVED, do we support hot-swap? "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v4, v5, :cond_5

    const/4 v3, 0x1

    .line 133
    .local v3, isCardError:Z
    :goto_2
    if-eqz v3, :cond_6

    .line 136
    .local v0, appNum_ics:I
    :goto_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardApplications:[Lcom/android/internal/telephony/IccCard;

    array-length v4, v4

    if-ge v1, v4, :cond_a

    .line 137
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardApplications:[Lcom/android/internal/telephony/IccCard;

    aget-object v4, v4, v1

    if-nez v4, :cond_7

    .line 139
    if-ge v1, v0, :cond_3

    .line 140
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-direct {p0, p1, v4}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->createIccCard(Lcom/android/internal/telephony/IccCardStatus;Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    .line 142
    .local v2, iccCard:Lcom/android/internal/telephony/IccCard;
    if-eqz v2, :cond_3

    .line 143
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardApplications:[Lcom/android/internal/telephony/IccCard;

    aput-object v2, v4, v1

    .line 144
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Lcom/android/internal/telephony/IccCard;->update(Lcom/android/internal/telephony/IccCardStatus;Lcom/android/internal/telephony/IccCardApplication;)V

    .line 136
    .end local v2           #iccCard:Lcom/android/internal/telephony/IccCard;
    :cond_3
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 122
    .end local v0           #appNum_ics:I
    .end local v1           #i:I
    .end local v3           #isCardError:Z
    :cond_4
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v4, v5, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v4, v5, :cond_2

    .line 124
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mLogTag:Ljava/lang/String;

    const-string v5, "EVENT_CARD_ADDED, do we support hot-swap? "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    move v3, v0

    .line 131
    goto :goto_2

    .line 133
    .restart local v3       #isCardError:Z
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v0

    goto :goto_3

    .line 148
    .restart local v0       #appNum_ics:I
    .restart local v1       #i:I
    :cond_7
    if-lt v1, v0, :cond_8

    .line 149
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mLogTag:Ljava/lang/String;

    const-string v5, "Delete removed applications"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lcom/motorola/android/internal/telephony/IccCardManager;->getInstance()Lcom/motorola/android/internal/telephony/IccCardManager;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardApplications:[Lcom/android/internal/telephony/IccCard;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCard;->getServicePhoneType()I

    move-result v5

    iget v6, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mUniqueSlotId:I

    invoke-virtual {v4, v5, v6}, Lcom/motorola/android/internal/telephony/IccCardManager;->removeClientRadioCardAssociation(II)V

    .line 156
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardApplications:[Lcom/android/internal/telephony/IccCard;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    goto :goto_5

    .line 158
    :cond_8
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mLogTag:Ljava/lang/String;

    const-string v5, "Update the rest"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    iget-object v5, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardApplications:[Lcom/android/internal/telephony/IccCard;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCard;->getAppType()Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->areAppTypesCompatible(Lcom/android/internal/telephony/IccCardApplication$AppType;Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 160
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardApplications:[Lcom/android/internal/telephony/IccCard;

    aget-object v4, v4, v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/android/internal/telephony/IccCard;->update(Lcom/android/internal/telephony/IccCardStatus;Lcom/android/internal/telephony/IccCardApplication;)V

    goto :goto_5

    .line 162
    :cond_9
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mLogTag:Ljava/lang/String;

    const-string v5, "dispose current and create new one"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Lcom/motorola/android/internal/telephony/IccCardManager;->getInstance()Lcom/motorola/android/internal/telephony/IccCardManager;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardApplications:[Lcom/android/internal/telephony/IccCard;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCard;->getServicePhoneType()I

    move-result v5

    iget v6, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mUniqueSlotId:I

    invoke-virtual {v4, v5, v6}, Lcom/motorola/android/internal/telephony/IccCardManager;->removeClientRadioCardAssociation(II)V

    .line 168
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardApplications:[Lcom/android/internal/telephony/IccCard;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-direct {p0, p1, v5}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->createIccCard(Lcom/android/internal/telephony/IccCardStatus;Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    aput-object v5, v4, v1

    goto/16 :goto_5

    .line 173
    :cond_a
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    goto/16 :goto_0
.end method
